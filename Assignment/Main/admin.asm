.MODEL SMALL
.STACK 100

.DATA
    ;MESSAGE
    NL DB 0DH, 0AH, '$'
    CHOICE_MSG DB "Enter your choice: $"
    INVALID_INPUT DB "Invalid Input! Please try again. $"
    COLOR_REMARK_MSG DB "Green: Book is not available to borrow$"
    SYSTEM_PAUSE_MSG DB "Press any key to continue...$"
    AVALIABLE_MSG DB "Available$"

    BOOK_NAME DB "Book: $"
    AUTHOR DB "Author: $"
    RET_DATE DB "Return Date: $"
    CURR_DATE DB "Current Date: $"
    YEAR DB "2024$"
    DATE_DELIMETER DB '/'

    TEN DB 10
    BOOK_SIZE DB 30
    USER_ID_SIZE DB 40
    DATE_SIZE DB 11

    ;MENU
    ADMIN_MENU  DB "1. Add Book ", 0DH, 0AH
                DB "2. Edit Book ", 0DH, 0AH
                DB "3. Delete Book ", 0DH, 0AH
                DB "4. View Book[Borrow Record] ", 0DH, 0AH
                DB "5. Logout ", 0DH, 0AH
                DB "$"

    ;TABLE HDR
    BORROW_RECORD_HEADER DB "| ID | Book Name", 20 DUP(" "), " | Author",23 DUP(" ")," | Borrow By $"
	TABLE_LINE DB 90 DUP("="), "$"
    
    ;DATA
    ;Book Details
	BOOK_COUNT DW 0

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

    
    CURR_USER_ID DB "CSTAN$", 34 DUP('$')

    ;DATE
    DATE DB 11 DUP('$')
    RET_DATE_ARRAY DB "01/09/2024$", "02/09/2024$","03/09/2024$","04/09/2024$","05/09/2024$","06/09/2024$","07/09/2024$", "08/09/2024$","09/09/2024$","10/09/2024$"
	DAY_OF_MONTH DB 31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31
	
	CURR_MONTH DB 0
	CURR_DAY DB 0
	RET_MONTH DB 0
	RET_DAY DB 0

    ;ADD_BOOK VARIABLES
    ADD_UNAVAILABLE DB "No more slot available to add new books. $"

    PROMPT_INPUT_BOOKNAME DB "Enter new book name: $"
    PROMPT_INPUT_BOOKAUTHOR DB "Enter book author for the new book: $"
    PROMPT_NEW_BOOKNAME DB "New Book Name: $"
    PROMPT_NEW_BOOKAUTHOR DB "New Book Author: $"
    PROMPT_ADDED_BOOK DB "New book has been added to the catalog. $"


    NEW_BOOKNAME_INPUT LABEL BYTE                   ;STRING INPUT
    MAX_BOOKNAME_SIZE DB 30                         ;MAXIMUM BOOKNAME SIZE
    INPUT_BOOKNAME_SIZE DB ?                        ;BOOKNAME ACTUAL INPUT SIZE
    NEW_BOOKNAME DB 30 DUP('$')                     ;STORE BOOKNAME VARIABLE

    NEW_BOOKAUTHORS_INPUT LABEL BYTE                ;STRING INPUT
    MAX_BOOKAUTHORS_SIZE DB 40                      ;MAXIMUM BOOKAUTHORS SIZE
    INPUT_BOOKAUTHORS_SIZE DB ?                     ;BOOKAUTHORS ACTUAL INPUT SIZE
    NEW_BOOKAUTHORS DB 40 DUP('$')                  ;STORE BOOKAUTHORS VARIABLE


.CODE
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX
        JMP START_ADMIN_MENU
        START_MENU: 
            ;MAIN MENU
            JMP FIN

        
        START_ADMIN_MENU:
        CALL DISPLAY_ADMIN_MENU

        MOV BX, '5'   ;Maximum value for user input
        CALL GET_CHOICE
        MOV BX, AX 
        CALL NEW_LINE

        ;the length will only be in between 1 to 5
        CMP BX , 1
        JE ADD_BOOK_TO_CATALOG
        CMP BX , 2
        JE EDIT_BOOK_FROM_CATALOG
        CMP BX , 3
        JE DELETE_BOOK_FROM_CATALOG
        CMP BX , 4
        JE VIEW_BOOK_FROM_CATALOG
        CMP BX , 5
        JE BACK_TO_MAIN_MENU



        ADD_BOOK_TO_CATALOG:
            CALL ADD_BOOK
            JMP START_ADMIN_MENU

        EDIT_BOOK_FROM_CATALOG:
            CALL EDIT_BOOK
            JMP START_ADMIN_MENU

        DELETE_BOOK_FROM_CATALOG:
            CALL REMOVE_BOOK
            JMP START_ADMIN_MENU

        VIEW_BOOK_FROM_CATALOG:
            CALL VIEW_BORROW_RECORD
            JMP START_ADMIN_MENU

        BACK_TO_MAIN_MENU:
            JMP START_MENU

        FIN:
        MOV AX, 4C00H
        INT 21H
    MAIN ENDP


    DISPLAY_ADMIN_MENU PROC 
        MOV AH, 09H
        LEA DX, ADMIN_MENU
        INT 21H
        RET
    DISPLAY_ADMIN_MENU ENDP

    GET_CHOICE PROC 
        INPUT_CHOICE:
            MOV AH, 09H
            LEA DX, CHOICE_MSG
            INT 21H

            MOV AH, 01H 
            INT 21H

            CMP AL, '1'
            JB INVALID_CHOICE
            CMP AL, BL ; maximum value is stored in BX
            JA INVALID_CHOICE

            JMP RET_CHOICE

        INVALID_CHOICE:
            CALL NEW_LINE

            MOV AH, 09H
            LEA DX, INVALID_INPUT
            INT 21H

            CALL NEW_LINE
            JMP INPUT_CHOICE
        RET_CHOICE:
            XOR AH, AH
            SUB AL, 30H
        RET 
    GET_CHOICE ENDP

   ;JEREMY PART
    ADD_BOOK PROC

        ;Point to array
        LEA SI, BOOK_NAME_ARRAY
        LEA DI, BOOK_AUTHORS

        ;CHECK IF THERES EMPTY SLOT
        MOV CX, 20                                      ;loop 20 books
        XOR BX, BX                                      ;reset BX
            
        CHECK_EMPTY_SLOT:
            CMP byte ptr [SI], '$'                      ;check if book name is empty
            JNE SKIP_CHECK_NEXT                         ;if not empty, skip to next slot
            CMP byte ptr [DI], '$'                      ;check if book author is empty
            JE ADD_BOOK_DETAILS                         ;if empty, add new book details
    
            SKIP_CHECK_NEXT:
            MOV AX, 0                                   ;reset AX
            MOV AL, BOOK_SIZE                           
            ADD SI, AX                                  ;move to next book name
            ADD DI, AX                                  ;move to next book author
        LOOP CHECK_EMPTY_SLOT

        JMP FULL_ERROR_MSG

        ADD_BOOK_DETAILS:
            INPUT_NEW_BOOKNAME:
                CALL NEW_LINE
                MOV AH, 09H
                LEA DX, PROMPT_INPUT_BOOKNAME             ;prompt user to input new book name
                INT 21H

                MOV AH, 0AH
                LEA DX, NEW_BOOKNAME_INPUT              ;store user input to NEW_BOOKNAME_INPUT
                INT 21H
            
                MOV CX, 0                               ;reset CX
                MOV CL, INPUT_BOOKNAME_SIZE             ;store the actual input size to CL
                SAVE_TO_BOOKNAME_ARRAY:
                    MOV AL, NEW_BOOKNAME[BX]            
                    MOV [SI], AL                        ;store the input to BOOK_NAME_ARRAY
                    INC SI
                    INC BX
                LOOP SAVE_TO_BOOKNAME_ARRAY
        
            CALL NEW_LINE

            INPUT_NEW_BOOKAUTHORS:
                
                MOV AH, 09H
                LEA DX, PROMPT_INPUT_BOOKAUTHOR          ;prompt user to input new book author
                INT 21H

                MOV AH, 0AH
                LEA DX, NEW_BOOKAUTHORS_INPUT           ;store user input to NEW_BOOKAUTHORS_INPUT
                INT 21H

                MOV CX, 0                               ;reset CX
                MOV CL, INPUT_BOOKAUTHORS_SIZE          ;store the actual input size to CL
                XOR BX,BX
                SAVE_TO_BOOKAUTHORS_ARRAY:
                    MOV AL, NEW_BOOKAUTHORS[BX]         
                    MOV [DI], AL                        ;store the input to BOOK_AUTHORS
                    INC DI
                    INC BX
                LOOP SAVE_TO_BOOKAUTHORS_ARRAY
            CALL NEW_LINE
            CALL NEW_LINE
            CALL NEW_LINE

            DISPLAY_NEW_BOOK:
                MOV AH, 09H
                LEA DX, PROMPT_NEW_BOOKNAME             ;display new book name  
                INT 21H
                LEA DX, NEW_BOOKNAME
                INT 21H
                
                CALL NEW_LINE

                LEA DX, PROMPT_NEW_BOOKAUTHOR           ;display new book author
                INT 21H
                LEA DX, NEW_BOOKAUTHORS
                INT 21H

                CALL NEW_LINE
                LEA DX, PROMPT_ADDED_BOOK               ;display new book added to catalog
                INT 21H

            CALL NEW_LINE
            CALL NEW_LINE
            JMP QUIT_ADD_BOOK

        FULL_ERROR_MSG:
            CALL NEW_LINE
            MOV AH, 09H
            LEA DX, ADD_UNAVAILABLE                          ;display error message
            INT 21H
            CALL NEW_LINE

        QUIT_ADD_BOOK:
            RET
    ADD_BOOK ENDP

    ;JEREMY PART
    REMOVE_BOOK PROC 
        RET
    REMOVE_BOOK ENDP

    ;GAN PART
    EDIT_BOOK PROC
        RET
    EDIT_BOOK ENDP

    ;CSTAN PART - View Borrow Details , buat pagination kalau ada masa 
    VIEW_BORROW_RECORD PROC 
        ;Point to array
        LEA SI, BOOK_NAME_ARRAY
        LEA DI, BOOK_AUTHORS
        
        ;DISPLAY HEADER
        MOV AH, 09H
        LEA DX, BORROW_RECORD_HEADER    
        INT 21H

        ;NEW LINE
        MOV AH, 09H
        LEA DX, NL
        INT 21H
        
        ;DISPLAY LINE
        MOV AH, 09H
        LEA DX, TABLE_LINE
        INT 21H

        ;NEW LINE
        MOV AH, 09H
        LEA DX, NL
        INT 21H
        
        MOV CX, 20
        XOR BX, BX
        DISPLAY_BOOKS:
            MOV BOOK_COUNT, BX
            CMP BOOK_ID_ARRAY[BX], 0
            JNS CURRENT_BOOK

            JMP NEXT_BOOK
            CURRENT_BOOK:

                ;Check if book is available to borrow
                MOV AX, BX 
                MUL USER_ID_SIZE 
                MOV BX, AX
                INC BX ; idk why need this but it works
                CMP BORROW_BY_ARRAY[BX], '$'   ;Book available to borrow if this return true
                JE BOOK_AVAILABLE_TO_BORROW
                PUSH CX ;store the value of CX to stack temporarily
                ;Display Read is not available - ez chatgpt
                mov ah, 09h          ; BIOS function to write character and attributes
                mov al, ' '          ; Character to display
                mov bh, 0            ; Page number (usually 0)
                mov bl, 02h          ; Attribute byte (foreground: yellow, background: black)
                mov CX, 100          ; Number of times to print the character
                int 10h              ; Call BIOS interrupt

                POP CX ; get back the cx value from stack
            BOOK_AVAILABLE_TO_BORROW:

                MOV BX, BOOK_COUNT
                
                ;Delimeter
                MOV AH, 02H
                MOV DL, '|'
                INT 21H
                
                ;Space
                MOV AH, 02H
                MOV DL, ' '
                INT 21H
                
                ;Book_ID
                MOV AX, 0
                MOV AL, BOOK_ID_ARRAY[BX]
                DIV TEN
                MOV BX, AX
                
                MOV AH, 02H
                MOV DL, BL
                ADD DL, 30H
                INT 21H
                
                MOV AH, 02H
                MOV DL, BH
                ADD DL, 30H
                INT 21H
                
                ;Space
                MOV AH, 02H
                MOV DL, ' '
                INT 21H
                
                ;Delimeter
                MOV AH, 02H
                MOV DL, '|'
                INT 21H

                ;Space
                MOV AH, 02H
                MOV DL, ' '
                INT 21H
                
                ;Book_Name
                MOV AH, 09H
                LEA DX, [SI]
                INT 21H

                
                
                MOV BX, 29 ;suspose to be 30 but 1 is for delimeter - from copilot
            
            ;Count the string length
            COUNT_BOOK_NAME_SPACES:
                CMP BYTE PTR [SI], '$' ; apa ini
                JE DONE_BOOK_NAME_SPACES
                DEC BX
                INC SI
                JMP COUNT_BOOK_NAME_SPACES
            DONE_BOOK_NAME_SPACES:
                MOV AH, 02H
                ;EXP: SI(original SI) = SI(currnet SI) - (29(total length) - BX(space length))
                ADD SI, BX 
                SUB SI, 29

            ADD_SPACES_AFTER_NAME:
                CMP BX, 0
                JE DONE_ADD_BOOK_NAME_SPACES
                MOV DL, ' '
                INT 21H
                DEC BX
            
                JMP ADD_SPACES_AFTER_NAME

            DONE_ADD_BOOK_NAME_SPACES:
            
            
                ;Space
                MOV AH, 02H
                MOV DL, ' '
                INT 21H
                
                ;Delimeter
                MOV AH, 02H
                MOV DL, '|'
                INT 21H

                ;Space
                MOV AH, 02H
                MOV DL, ' '
                INT 21H
                
                ;Author
                MOV AH, 09H
                LEA DX, [DI]
                INT 21H 

                MOV BX, 29 ;suspose to be 30 but 1 is for delimeter - from copilot
                
            ;Count the string length
            COUNT_AUTHOR_SPACES:
                CMP BYTE PTR [DI], '$' ; apa ini
                JE DONE_AUTHOR_SPACES
                DEC BX
                INC DI
                JMP COUNT_AUTHOR_SPACES
            DONE_AUTHOR_SPACES:
                MOV AH, 02H
                ;EXP: DI(original DI) = DI(currnet DI) - (29(total length) - BX(space length))
                ADD DI, BX 
                SUB DI, 29

            ADD_SPACES_AFTER_AUTHOR:
                CMP BX, 0
                JE DONE_ADD_AUTHOR_SPACES
                MOV DL, ' '
                INT 21H
                DEC BX
                JMP ADD_SPACES_AFTER_AUTHOR

            DONE_ADD_AUTHOR_SPACES:

                ;Delimeter
                MOV AH, 02H
                MOV DL, '|'
                INT 21H

                ;Space
                MOV AH, 02H
                MOV DL, ' '
                INT 21H

                ;Borrow By
                MOV AX, BOOK_COUNT
                MUL USER_ID_SIZE
                MOV BX , AX
                MOV AL , BORROW_BY_ARRAY[BX]
                CMP AL , '$'
                JE AVAILABLE_TO_BORROW

                MOV AH, 09H
                LEA DX, BORROW_BY_ARRAY[BX]
                INT 21H

                JMP DONE_DISPLAY_BORROW_STATUS


            AVAILABLE_TO_BORROW:
                MOV AH, 09H
                LEA DX, AVALIABLE_MSG
                INT 21H

            DONE_DISPLAY_BORROW_STATUS:
            
                CALL NEW_LINE

                ;jmp to next value
                MOV BX, BOOK_COUNT
                INC BX
                XOR AX, AX
                MOV AL, BOOK_SIZE
                ADD SI, AX
                ADD DI, AX

                NEXT_BOOK:
                DEC CX
                CMP CX, 0
                JE END_DISPLAY_BOOKS

                JMP DISPLAY_BOOKS

            END_DISPLAY_BOOKS:

                CALL NEW_LINE

                ;Display red
                MOV AH,09H 
                MOV AL, ' ' 
                MOV BH, 0
                MOV BL, 02H 
                MOV CX, 5 
                INT 10H
                
                
                MOV AH, 09H 
                LEA DX, COLOR_REMARK_MSG
                INT 21H
                
                CALL NEW_LINE

                MOV AH, 09H 
                LEA DX, SYSTEM_PAUSE_MSG
                INT 21H

                MOV AH,07H
                INT 21H

                CALL NEW_LINE
                RET
    VIEW_BORROW_RECORD ENDP

    ;New Line
    NEW_LINE PROC
        MOV AH, 09H
        LEA DX, NL
        INT 21H
        RET
    NEW_LINE ENDP
END MAIN