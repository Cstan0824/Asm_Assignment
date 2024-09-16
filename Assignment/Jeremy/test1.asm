.model small
.stack 100h

.data
    PROMPT_MSG DB 'Enter Book ID to delete (1-20): $'
    DELETE_MSG DB 'Book deleted successfully!$'
    NOT_AVAILABLE_MSG DB 'Book is currently borrowed, cannot delete!$'
    INVALID_INPUT_MSG DB 'Invalid Book ID! Please enter a valid Book ID between 1 and 20.$'
    NL DB 0Dh, 0Ah, '$'    ; New line

     ;Book ID
    BOOK_ID_ARRAY DB 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20
    ;Book Name
    BOOK_NAME_ARRAY DB "To Kill a Mockingbird$", 8 DUP('$')
	    DB "1984$", 25 DUP('$')
	    DB "Pride and Prejudice$", 10 DUP('$')
	    DB "The Great Gatsby$", 13 DUP('$')
	    DB "Moby - Dick$", 18 DUP('$')
	    DB "The Catcher in the Rye$", 7 DUP('$')
	    DB "The Lord of the Rings$", 8 DUP('$')
	    DB "The Alchemist$", 16 DUP('$')
	    DB "Sapiens$", 22 DUP('$')
	    DB "The Da Vinci Code$", 12 DUP('$')
        DB 30 DUP('$')
        DB 30 DUP('$')
        DB 30 DUP('$')
        DB 30 DUP('$')
        DB 30 DUP('$')
        DB 30 DUP('$')
        DB 30 DUP('$')
        DB 30 DUP('$')
        DB 30 DUP('$')
        DB 30 DUP('$')
	;Author
	BOOK_AUTHORS DB "Harper Lee$", 19 DUP('$')
	    DB "George Orwell$", 16 DUP('$')
	    DB "Jane Austen$", 18 DUP('$')
	    DB "F. Scott Fitzgerald$", 10 DUP('$')
	    DB "Herman Melville$", 14 DUP('$')
	    DB "J.D. Salinger$", 16 DUP('$')
	    DB "J.R.R. Tolkien$", 15 DUP('$')
	    DB "Paulo Coelho$", 17 DUP('$')
	    DB "Yuval Noah Harari$", 12 DUP('$')
	    DB "Dan Brown$", 20 DUP('$')
        DB 40 DUP('$')
        DB 40 DUP('$')
        DB 40 DUP('$')
        DB 40 DUP('$')
        DB 40 DUP('$')
        DB 40 DUP('$')
        DB 40 DUP('$')
        DB 40 DUP('$')
        DB 40 DUP('$')
        DB 40 DUP('$')


    ;User Details
    USER_ID_ARRAY DB "ALI_BABA$", 31 DUP('$')
        DB "THE_BEST_DOGGAN$", 24 DUP('$')
        DB "ABG_CHIN$", 31 DUP('$')
        DB "ASSIGNMENT_HELPER_SAM$", 18 DUP('$')
        DB "CSTANTAN$", 31 DUP('$')
        DB "CSTAN$", 34 DUP('$')
        DB "LIM_ZHI_PING$", 37 DUP('$')
        DB "G.E.M.$", 33 DUP('$')
        DB "JAY_CHOU$", 31 DUP('$')
        DB "COLDPLAY$", 31 DUP('$')
        
    ;Borrow Status
    BORROW_BY_ARRAY DB 40 DUP("$")
        DB 40 DUP("$")
        DB "CSTAN$", 34 DUP('$')
        DB 40 DUP("$")
        DB 40 DUP("$")
        DB 40 DUP("$")
        DB "THE_BEST_DOGGAN$", 24 DUP('$')
        DB 40 DUP("$")
        DB 40 DUP("$")
        DB 40 DUP("$")
        DB 40 DUP('$')
        DB 40 DUP('$')
        DB 40 DUP('$')
        DB 40 DUP('$')
        DB 40 DUP('$')
        DB 40 DUP('$')
        DB 40 DUP('$')
        DB 40 DUP('$')
        DB 40 DUP('$')
        DB 40 DUP('$')

    BOOK_ID_RES DB 0   ; Store user input (Book ID)
    multiplicant dw ?
    USER_ID_SIZE DB 40

.code
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    get_book_id:
        ; Prompt user to enter Book ID
        lea dx, PROMPT_MSG
        mov ah, 09h
        int 21h

        ; Get user input (max 2 digits)
        mov ah, 01h
        int 21h
        sub al, '0'       ; Convert ASCII to numeric
        mov bl, al        ; Store the first digit

        mov ah, 01h
        int 21h
        cmp al, 0Dh       ; Check if Enter was pressed after one digit
        je one_digit      ; If yes, it's a 1-digit input

        sub al, '0'
        mov bh, al        ; Store the second digit
        jmp process_input

    one_digit:
        xor bh, bh        ; If Enter was pressed, the second digit is 0

    process_input:
    ; Combine bl and bh to get the full number (Book ID)
        mov multiplicant, bx
        mov ax, 10
        mul bh
        add ax, multiplicant  ; Compute Book ID

        cmp ax, 1         ; Check if Book ID is in the valid range (1-20)
        jl temp_invalid_input
        cmp ax, 20
        jg temp_invalid_input
        jmp check_book_availability

    temp_invalid_input:
        jmp invalid_input

    ;if valid input, check if book is borrowed
    check_book_availability:
        mov BOOK_ID_RES, al

        ; Check if the book is borrowed
        mov al, BOOK_ID_RES
        dec al            ; Book ID starts at 1, so subtract 1 to get the correct index
        mov cl, USER_ID_SIZE        ; 40 bytes for each borrow status
        mul cl            ; al = al * 40
        lea SI, BORROW_BY_ARRAY
        add SI, ax        ; Point to the correct borrow status

        cmp byte ptr [SI], '$'
        jne book_borrowed

    execute_delete:
        ; Delete book: replace book name and author with '$'
        mov al, BOOK_ID_RES
        dec al
        mov cl, 30        ; 30 bytes for each book name/author
        mul cl            ; al = al * 30
        lea SI, BOOK_NAME_ARRAY
        add SI, ax        ; Point to the correct book name

        ; Replace book name with '$'
        mov cx, 30
            del_name:
                mov ah, 02H
                cmp byte ptr[SI], '$'
                je delete_next_alphabet
                mov dl, byte ptr[SI]
                int 21H
                delete_next_alphabet:
                    mov byte ptr [SI], '$'
                    inc SI
                loop del_name

            ;print a space
            mov dl, 20h
            mov ah, 02h
            int 21h

        ; Replace author with '$'
        mov al, BOOK_ID_RES
        dec al
        mov cl, 30
        mul cl
        lea SI, BOOK_AUTHORS
        add dx, ax        ; Point to the correct author

        mov cx, 30
            del_author:
                mov ah, 02H
                cmp byte ptr[SI], '$'
                je delete_next_alphabet1
                mov dl, byte ptr[SI]
                int 21H
                delete_next_alphabet1:
                    mov byte ptr [SI], '$'
                    inc SI
                loop del_author

            ;print a space
            mov dl, 20h
            mov ah, 02h
            int 21h

                ; Print success message
                lea dx, DELETE_MSG
                mov ah, 09h
                int 21h

                ; Print new line
                lea dx, NL
                mov ah, 09h
                int 21h
                jmp end_program

book_borrowed:
    ; Print error message if book is borrowed
    lea dx, NOT_AVAILABLE_MSG
    mov ah, 09h
    int 21h

    ; Print new line
    lea dx, NL
    mov ah, 09h
    int 21h
    jmp get_book_id


invalid_input:
    ; Print error message for invalid input
    lea dx, INVALID_INPUT_MSG
    mov ah, 09h
    int 21h

    ; Print new line
    lea dx, NL
    mov ah, 09h
    int 21h
    jmp get_book_id

end_program:
    mov ax, 4C00h
    int 21h
MAIN endp
END MAIN

