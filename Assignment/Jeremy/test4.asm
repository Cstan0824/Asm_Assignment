EXCEED_RET_DATE DB "Exceed Return Date: $"
DAYS DB "days $"

ADMIN_MENU  DB "1. Add Book ", 0DH, 0AH
            DB "2. Edit Book ", 0DH, 0AH
            DB "3. Delete Book ", 0DH, 0AH
            DB "4. View Book[Borrow Record] ", 0DH, 0AH
            DB "5. Delete Overtime Book ", 0DH, 0AH
            DB "6. Penalty Management ", 0DH, 0AH
            DB "7. Logout ", 0DH, 0AH
            DB "$"

OVERTIME_COLOR_REMARK_MSG DB "Red: Book has not been returned more than 30 days from return date$"

;Borrow Status
BORROW_BY_ARRAY DB 40 DUP("$")
    DB "CSTAN$", 34 DUP('$')
    DB "LIM_ZHI_PING$", 27 DUP('$')
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


RET_DATE_ARRAY DB 11 DUP("$")
                DB "18/09/2024$"
                DB "03/05/2024$"
                DB 11 DUP("$")
                DB 11 DUP("$")
                DB 11 DUP("$")
                DB "07/06/2024$"
                DB 11 DUP("$") 
                DB 11 DUP("$")
                DB 11 DUP("$")
                DB 11 DUP("$")
                DB 11 DUP("$")
                DB 11 DUP("$")
                DB 11 DUP("$")
                DB 11 DUP("$")
                DB 11 DUP("$")
                DB 11 DUP("$")
                DB 11 DUP("$")
                DB 11 DUP("$")
                DB 11 DUP("$")
                
USER_ID_ARRAY DB "ALI_BABA$", 31 DUP('$')
DB "THE_BEST_DOGGAN$", 24 DUP('$')
DB "ABG_CHIN$", 31 DUP('$')
DB "ASSIGNMENT_HELPER_SAM$", 18 DUP('$')
DB "CSTANTAN$", 31 DUP('$')
DB "CSTAN$", 34 DUP('$')
DB "LIM_ZHI_PING$", 27 DUP('$')
DB "G.E.M.$", 33 DUP('$')
DB "JAY_CHOU$", 31 DUP('$')
DB "COLDPLAY$", 31 DUP('$')

    ;login as admin 
    ADMIN_MODULES PROC
        START_ADMIN_MENU:
        CALL DISPLAY_ADMIN_MENU

        MOV BX, '7'   ;Maximum value for user input
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
        JE DELETE_OVERTIME_BOOK_FROM_CATALOG
        CMP BX , 6
        JE CHANGE_PENALTY_DETAILS
        CMP BX , 7
        JE ADMIN_BACK_TO_MAIN_MENU



        ADD_BOOK_TO_CATALOG:
            CALL CLEAR_SCREEN
            CALL ADD_BOOK
            CALL CLEAR_SCREEN
            JMP START_ADMIN_MENU

        EDIT_BOOK_FROM_CATALOG:
            CALL CLEAR_SCREEN
            CALL EDIT_BOOK
            CALL CLEAR_SCREEN
            JMP START_ADMIN_MENU

        DELETE_BOOK_FROM_CATALOG:
            CALL CLEAR_SCREEN
            CALL REMOVE_BOOK
            CALL CLEAR_SCREEN
            JMP START_ADMIN_MENU

        VIEW_BOOK_FROM_CATALOG:
            CALL CLEAR_SCREEN
            CALL VIEW_BORROW_RECORD
            CALL CLEAR_SCREEN
            JMP START_ADMIN_MENU

        DELETE_OVERTIME_BOOK_FROM_CATALOG:
            CALL CLEAR_SCREEN
            CALL REMOVE_OVERTIME_BOOK
            CALL CLEAR_SCREEN
            JMP START_ADMIN_MENU

        CHANGE_PENALTY_DETAILS:
            CALL CLEAR_SCREEN
            CALL PENALTY_MANAGEMENT
            CALL CLEAR_SCREEN
            JMP START_ADMIN_MENU

        ADMIN_BACK_TO_MAIN_MENU:
            CALL CLEAR_SCREEN
            RET
    ADMIN_MODULES ENDP

    CALCULATE_OVERTIME_DIFF_DAY PROC
        MOV DIFF_DAY, 0

        ;move to selected book's return date
        ;new SI = old SI + (selected Index * sizeOf(value))
        XOR AX, AX
        MOV AL, BOOK_ID_POSITION
        DEC AL
        MUL DATE_SIZE
        LEA SI, RET_DATE_ARRAY
        ADD SI, AX  

        ;get return day
        MOV AL, [SI]
        SUB AL, 30H
        MUL TEN
        MOV RET_DAY, AL

        INC SI

        MOV AL, [SI]
        SUB AL, 30H
        ADD RET_DAY, AL

        ADD SI, 2

        ;get return month
        MOV AL, [SI]
        SUB AL, 30H
        MUL TEN
        MOV RET_MONTH, AL

        INC SI

        MOV AL, [SI]
        SUB AL, 30H
        ADD RET_MONTH, AL

        XOR BX, BX
        XOR CX, CX  
        XOR AX, AX

        ;Count Difference Day
        LEA SI, DAY_OF_MONTH
        MOV BL, CURR_DAY

        MOV CL, CURR_MONTH
        DEC CX 
        CMP CX, 0 ;add day only if January
        JE END_COUNTOVERTIME_CURR_DAY_OF_MONTHS   
        COUNTOVERTIME_CURR_DAY_OF_MONTHS:
            MOV AL, [SI]  
            ADD BX, AX
            INC SI
        LOOP COUNTOVERTIME_CURR_DAY_OF_MONTHS   
        END_COUNTOVERTIME_CURR_DAY_OF_MONTHS:

        LEA SI, DAY_OF_MONTH
        MOV AL, RET_DAY
        SUB BX, AX
        MOV CL, RET_MONTH
        DEC CX
        CMP CX, 0 ;add day only if January
        JE END_COUNTOVERTIME_RET_DAY_OF_MONTHS
        COUNTOVERTIME_RET_DAY_OF_MONTHS:
            MOV AL, [SI]
            SUB BX, AX
            CMP BX, 0
            JS NOT_EXCEED_RET_DATE_OVERTIME    
            INC SI
        LOOP COUNTOVERTIME_RET_DAY_OF_MONTHS

        END_COUNTOVERTIME_RET_DAY_OF_MONTHS:
            ;store the difference day to DIFF_DAY
            XOR CX, CX
            MOV DIFF_DAY, BX

        NOT_EXCEED_RET_DATE_OVERTIME:
        RET
    CALCULATE_OVERTIME_DIFF_DAY ENDP

    ;JEREMY PART
    DISPLAY_OVERTIME_BOOK PROC

        CALL GET_DATE
    
        ;Point to array
        LEA SI, BOOK_NAME_ARRAY
        LEA DI, BORROW_BY_ARRAY

        CALL NEW_LINE
        
        ;DISPLAY HEADER
        MOV AH, 09H
        LEA DX, BORROW_RECORD_HEADER    
        INT 21H

        CALL NEW_LINE
        
        ;DISPLAY LINE
        MOV AH, 09H
        LEA DX, BORROW_RECORD_LINE
        INT 21H

        CALL NEW_LINE
        
        XOR BX, BX
        MOV BOOK_ID_POSITION, 1
        MOV CX, 20
        DISPLAY_OVERTIME_RECORD:
            CMP CX, 0
            JZ TEMP_END_DISPLAY_OVERTIME_RECORD
            JMP PROCEED_LOOP

            TEMP_END_DISPLAY_OVERTIME_RECORD:
                JMP END_DISPLAY_OVERTIME_RECORD

            PROCEED_LOOP:
            CMP byte ptr [DI], '$' ; Check if this book is not borrowed (indicated by '$')
            JE TEMP_SKIP_BOOK ; Skip this book if it is not borrowed
            JMP CURRENT_OVERTIME_RECORD

            TEMP_SKIP_BOOK:
                JMP SKIP_BOOK
            CURRENT_OVERTIME_RECORD:
                PUSH BX
                PUSH CX
                PUSH SI

                CALL CALCULATE_OVERTIME_DIFF_DAY
                
                POP SI
                POP CX
                CMP DIFF_DAY, 30
                JB BOOK_NOT_OVERTIME

                ;Display red
                PUSH CX ;store the value of CX to stack temporarily
                ;Display Read is not available - ez chatgpt
                MOV AH, 09H        ; BIOS function to write character and attributes
                MOV AL, ' '        ; Character to display (e.g., space or any other character)
                MOV BH, 0          ; Page number (usually 0)
                MOV BL, 0Ch        ; Attribute byte: Foreground red (4), background black (0Fh)
                MOV CX, 80          ; Number of times to print the character (5 spaces)
                INT 10H            ; Call BIOS interrupt to print with attributes

                POP CX ; get back the cx value from stack
            
            BOOK_NOT_OVERTIME: 
            POP BX ; get back the value of BX[index] from stack 
            PUSH BX ; store the value of BX to stack again for future use temporarily 
            
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
            MOV AL, BOOK_ID_POSITION
            DEC AL
            XOR BX, BX
            MOV BX , AX
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
            COUNTOVERTIME_BOOK_NAME_SPACES_1:
                CMP BYTE PTR [SI], '$' ; apa ini
                JE DONEOVERTIME_BOOK_NAME_SPACES_1
                DEC BX
                INC SI
                JMP COUNTOVERTIME_BOOK_NAME_SPACES_1
            DONEOVERTIME_BOOK_NAME_SPACES_1:
                MOV AH, 02H
                ;EXP: SI(original SI) = SI(currnet SI) - (29(total length) - BX(space length))
                ADD SI, BX 
                SUB SI, 29

            ADDOVERTIME_SPACES_AFTER_NAME_1:
                CMP BX, 0
                JE DONE_ADDOVERTIME_BOOK_NAME_SPACES_1
                MOV DL, ' '
                INT 21H
                DEC BX

                JMP ADDOVERTIME_SPACES_AFTER_NAME_1

            DONE_ADDOVERTIME_BOOK_NAME_SPACES_1:
            
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

                ;BX * 30 = BOOK AUTHOR POSITION
                XOR AX, AX
                MOV AL, BOOK_ID_POSITION
                DEC AL      
                MUL BOOK_SIZE
                MOV BX, AX
                ;Author
                XOR AX, AX
                MOV AH, 09H
                LEA DX, BOOK_AUTHORS[BX]
                INT 21H 

            PUSH CX

                MOV CX, 20 ;should use 29 but since not enough space for borrow by user so i use 20 instead
                ;suspose to be 30 but 1 is for delimeter - from copilot
                ;MOVE THE BOOK AUTHOR POSITION TO BX
                XOR AX, AX
                MOV AL, BOOK_ID_POSITION
                DEC AL
                MUL BOOK_SIZE
                MOV BX, AX
                XOR AX, AX
            ;Count the string length
            COUNTOVERTIME_AUTHOR_SPACES:
                CMP BOOK_AUTHORS[BX], '$' ; apa ini
                JE DONEOVERTIME_AUTHOR_SPACES
                DEC CX
                INC BX
                JMP COUNTOVERTIME_AUTHOR_SPACES
            DONEOVERTIME_AUTHOR_SPACES:
                MOV AH, 02H
                ADD BX, CX
                SUB BX, 20

            ADDOVERTIME_SPACES_AFTER_AUTHOR:
                CMP CX, 0
                JE DONE_ADDOVERTIME_AUTHOR_SPACES
                MOV DL, ' '
                INT 21H
                DEC CX
                JMP ADDOVERTIME_SPACES_AFTER_AUTHOR

            DONE_ADDOVERTIME_AUTHOR_SPACES:
            POP CX ; get back the value of CX from stack
                ;Delimeter
                MOV AH, 02H
                MOV DL, '|'
                INT 21H

                ;Space
                MOV AH, 02H
                MOV DL, ' '
                INT 21H

                ;Borrow By
                MOV AX, 0
                MOV AL, BOOK_ID_POSITION
                DEC AL
                MUL USER_ID_SIZE
                XOR BX, BX
                MOV BX , AX
                MOV AH, 09H
                LEA DX, BORROW_BY_ARRAY[BX]
                INT 21H
            
            CALL NEW_LINE

            ;jmp to next value
            POP BX ; get back the value of BX from stack
            INC BOOK_COUNT
            SKIP_BOOK:

                XOR AX, AX
                MOV AL, BOOK_SIZE
                ADD SI, AX
                ADD DI, 40

                INC BOOK_ID_POSITION
                INC BX
                DEC CX

            JMP DISPLAY_OVERTIME_RECORD

        END_DISPLAY_OVERTIME_RECORD:

            CALL NEW_LINE

            ;Display red
            MOV AH, 09H        ; BIOS function to write character and attributes
            MOV AL, ' '        ; Character to display (e.g., space or any other character)
            MOV BH, 0          ; Page number (usually 0)
            MOV BL, 0Ch        ; Attribute byte: Foreground red (4), background black (0Fh)
            MOV CX, 5          ; Number of times to print the character (5 spaces)
            INT 10H            ; Call BIOS interrupt to print with attributes
            
            
            MOV AH, 09H 
            LEA DX, OVERTIME_COLOR_REMARK_MSG
            INT 21H
            
            CALL NEW_LINE
            CALL NEW_LINE
            

        RET
    DISPLAY_OVERTIME_BOOK ENDP

    ;JEREMY PART
    REMOVE_OVERTIME_BOOK PROC

        CALL DISPLAY_OVERTIME_BOOK
        CALL NEW_LINE

        get_overtime_book_id:
            ; Prompt user to enter Book ID
            mov ah, 09h
            lea dx, PROMPT_INPUT_DELETE_OVERTIME_BOOKID
            int 21h

            mov ah, 0Ah
            lea dx, DELETE_OVERTIME_BOOKID_INPUTBUFFER
            int 21H

        process_overtime_input:

            lea si, DELETE_OVERTIME_BOOKID_BUFFER
            xor ax, ax

            mov al, byte ptr [si]               ; Get the first digit  
            cmp al, 0Dh                         ; Check if Enter was pressed
            je temp_invalid_overtime_input       ; If Enter was pressed too early, it's invalid input
            sub al, 30H                         ; Convert ASCII '0'-'9' to 0-9
            mov bl, al                          ; Store the first digit

            inc si                              ; Move to the next character
            mov al, byte ptr [si]               ; Get the next character (second digit or Enter)
            cmp al, 0Dh                         ; Check if Enter was pressed for single digit
            je one_digit_overtime_book_id       ; If Enter, we have a single-digit input

            sub al, 30H                         ; Convert ASCII '0'-'9' to 0-9
            mov bh, al                          ; Store the second digit in bh

            ; Combine the digits into a two-digit number
            xor ax, ax
            mov al, bl
            mul TEN
            add al, bh                          ; Combine the digits into a two-digit number
            jmp process_overtime_input_into_bookid        ; Skip the single digit case

        one_digit_overtime_book_id:
            ; If it's a single digit, store it in al
            xor ax, ax                      ; Clear ax
            mov al, bl                      ; Store the single digit in al

        process_overtime_input_into_bookid:
            ; Validate the range (1-20)
            cmp al, 1                           ; Check if Book ID is at least 1
            jl temp_invalid_overtime_input       ; Invalid if less than 1
            cmp al, 20                          ; Check if Book ID is less than or equal to 20
            jg temp_invalid_overtime_input       ; Invalid if greater than 20
            
            mov BOOK_ID_POSITION, al            ; Store the valid Book ID
            jmp check_overtime_book_availability         ; Continue to check the availability of the book

        temp_invalid_overtime_input:
            ; If invalid input, jump to invalid input handler
            jmp invalid_overtime_bookid_input

        ;if valid input, check if book is borrowed
        check_overtime_book_availability:
            ;check if the book is borrowed
            check_overtime_book_name:
            mov al, BOOK_ID_POSITION
            dec al                  ; Book ID starts at 1, so subtract 1 to get the correct index
            mov cl, USER_ID_SIZE       ; 30 bytes for each book name
            mul cl                  ; al = al * 30
            lea SI, BORROW_BY_ARRAY     
            add SI, ax              ; Point to the correct book name

            cmp byte ptr [SI], '$'
            je temp_no_overtime_book_found ; If borrow by is empty, the book is not borrowed
            jmp check_overtime_borrow_status

            temp_no_overtime_book_found:
                jmp no_overtime_book_found

            ; Check if the book is borrowed overtime
            check_overtime_borrow_status:
            CALL CALCULATE_OVERTIME_DIFF_DAY
            CMP DIFF_DAY, 30
            jb temp_book_borrowed_not_overtime       ; If the book is borrowed, display error message
            jmp display_overtime_book_information
            
            temp_book_borrowed_not_overtime:
            jmp book_borrowed_not_overtime
            

        display_overtime_book_information:
            call new_line
            CALL NEW_LINE

            ; Display book name
            mov ah, 09h
            lea dx, BOOK_NAME
            int 21h

            call space

            mov al, BOOK_ID_POSITION
            dec al
            mov cl, 30        ; 30 bytes for each book name/author
            mul cl            ; al = al * 30
            lea SI, BOOK_NAME_ARRAY
            add SI, ax        ; Point to the correct book name
            
            mov cx, 30
            display_overtime_book_name:
                mov ah, 02H
                cmp byte ptr[SI], '$'
                je skip_next_overtime_bn
                mov dl, byte ptr[SI]
                int 21H
                skip_next_overtime_bn:
                    inc SI
            loop display_overtime_book_name

            call new_line

            ; Display book author

            mov ah, 09h
            lea dx, AUTHOR
            int 21h

            call space

            mov al, BOOK_ID_POSITION
            dec al
            mov cl, 30
            mul cl
            lea SI, BOOK_AUTHORS
            add SI, ax        ; Point to the correct author

            mov cx, 30
            display_overtime_book_author:
                mov ah, 02H
                cmp byte ptr[SI], '$'
                je skip_next_overtime_ba
                mov dl, byte ptr[SI]
                int 21H
                skip_next_overtime_ba:
                    inc SI
            loop display_overtime_book_author

            call new_line

            ;display return date
            mov ah, 09h
            lea dx, RET_DATE
            int 21h

            call space

            mov al, BOOK_ID_POSITION
            dec al
            mov cl, 11
            mul cl
            lea SI, RET_DATE_ARRAY
            add SI, ax

            mov cx, 11
            display_return_date:
                mov ah, 02H
                cmp byte ptr[SI], '$'
                je skip_next_return_date
                mov dl, byte ptr[SI]
                int 21H
                skip_next_return_date:
                    inc SI
            loop display_return_date

            call new_line

            ;display current date
            mov ah, 09h
            lea dx, CURR_DATE
            int 21h

            call space

            mov ah, 09H
            lea dx, date
            int 21h

            call new_line

            ;display overdue days
            MOV AH, 09H 
            LEA DX, EXCEED_RET_DATE 
            INT 21H 

            call space

            ;Display Exceed Days
            MOV AX, DIFF_DAY 
            XOR CX, CX

            READ_OVERTIME_DIFF_DAY:
            INC CX
            DIV TEN 
            MOV BX, AX 

            XOR AL, AL ; remove the integral part
            PUSH AX ;save value to the stack

            CMP BL, 0
            JE END_READ_OVERTIME_DIFF_DAY

            XOR BH, BH ; remove remainder part
            MOV AX, BX 
            JMP READ_OVERTIME_DIFF_DAY

            END_READ_OVERTIME_DIFF_DAY:

            DISPLAY_OVERTIME_DIFF_DAY:
            POP BX ; get the value from stack
            MOV AH, 02H 
            MOV DL, BH 
            ADD DL, 30H 
            INT 21H	
            LOOP DISPLAY_OVERTIME_DIFF_DAY

            call space

            MOV AH, 09H
            LEA DX, DAYS
            INT 21H

            call new_line
            CALL NEW_LINE

            jmp delete_overtime_confirmation

        delete_overtime_confirmation:
            ; Prompt user to confirm deletion
            lea dx, PROMPT_DELETE_BOOK_CONFIRMATION

            ; Get user input
            CALL GET_CONFIRMATION ; only accept Y or N - ignore cases

            cmp al, 'Y'
            je execute_delete_overtime
            cmp al, 'y'
            je execute_delete_overtime
            RET ; terminate this function and return back to menu if user enter 'N' or 'n'

        execute_delete_overtime:
            CALL NEW_LINE
            CALL NEW_LINE

            ; Delete book: replace book name and author with '$'

            mov al, BOOK_ID_POSITION
            dec al
            mov cl, 30        ; 30 bytes for each book name/author
            mul cl            ; al = al * 30
            lea SI, BOOK_NAME_ARRAY
            add SI, ax        ; Point to the correct book name

            ; Replace book name with '$'
            mov cx, 30
            del_overtime_name:
                mov ah, 02H
                cmp byte ptr[SI], '$'
                je delete_next_alphabet
                mov dl, byte ptr[SI]
                int 21H
                delete_next_alphabet:
                    mov byte ptr [SI], '$'
                    inc SI
            loop del_overtime_name

            ;print written by
            mov ah, 02h
            mov dl, 20h                 ; Print a space
            int 21h

            mov ah, 09h
            lea dx, WRITTEN_BY          ; Print "written by"
            int 21h

            ; Replace author with '$'
            mov al, BOOK_ID_POSITION
            dec al
            mov cl, 30
            mul cl
            lea SI, BOOK_AUTHORS
            add SI, ax        ; Point to the correct author

            mov cx, 30
            del_overtime_author:
                mov ah, 02H
                cmp byte ptr[SI], '$'
                je delete_next_alphabet1
                mov dl, byte ptr[SI]
                int 21H
                delete_next_alphabet1:
                    mov byte ptr [SI], '$'
                    inc SI
            loop del_overtime_author

            ; Replace borrow by with '$'
            mov al, BOOK_ID_POSITION
            dec al
            mov cl, 40
            mul cl
            lea SI, BORROW_BY_ARRAY
            add SI, ax        ; Point to the correct borrow by

            mov cx, 40
            del_overtime_borrow_by:
                mov byte ptr [SI], '$'
                inc SI
            loop del_overtime_borrow_by

            ;replace return date with '$'
            mov al, BOOK_ID_POSITION
            dec al
            mov cl, 11
            mul cl
            lea SI, RET_DATE_ARRAY
            add SI, ax

            mov cx, 11
            del_return_date:
                mov byte ptr [SI], '$'
                inc SI
            loop del_return_date

            ; Print success message
            lea dx, PROMPT_BOOK_ISDELETED
            mov ah, 09h
            int 21h

            ; Print new line
            CALL NEW_LINE
            CALL SYSTEM_PAUSE
            jmp end_delete_overtime_book

        no_overtime_book_found:
            ; Print error message if book is not found
            lea dx, PROMPT_BOOK_NOT_FOUND
            mov ah, 09h
            int 21h

            ; Print new line
            CALL NEW_LINE
            CALL SYSTEM_PAUSE
            CALL NEW_LINE
            jmp get_overtime_book_id

        book_borrowed_not_overtime:
            ; Print error message if book not yet overdue
            lea dx, PROMPT_BOOK_IS_NOT_OVERTIME
            mov ah, 09h
            int 21h

            ; Print new line
            CALL NEW_LINE
            CALL SYSTEM_PAUSE
            jmp end_delete_overtime_book

        invalid_overtime_bookid_input:

            ; Print error message for invalid input
            mov ah, 09h
            lea dx, PROMPT_BOOKID_ERROR
            int 21h

            ; Print new line
            CAll NEW_LINE
            CALL SYSTEM_PAUSE
            CALL NEW_LINE
            jmp get_overtime_book_id

        end_delete_overtime_book:
        RET
    REMOVE_OVERTIME_BOOK ENDP

        