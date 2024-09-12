.MODEL SMALL
.STACK 100

.DATA

    MAIN_MENU   DB "1. Admin ", 0DH, 0AH
                DB "2. User ", 0DH, 0AH
                DB "3. Exit ", 0DH, 0AH
                DB "$"

    ADMIN_MENU  DB "1. Add Book ", 0DH, 0AH
                DB "2. Edit Book ", 0DH, 0AH
                DB "3. Delete Book ", 0DH, 0AH
                DB "4. View Book ", 0DH, 0AH
                DB "5. Logout ", 0DH, 0AH
                DB "$"

    USER_MENU   DB "1. Borrow Book ", 0DH, 0AH
                DB "2. Return Book ", 0DH, 0AH
                DB "3. Logout ", 0DH, 0AH
                DB "$"
            
    CHOICE_MSG DB "Enter your choice: $"

    NL DB 0DH, 0AH, '$'
    INVALID_INPUT DB "Invalid Input! Please try again. $"
.CODE

    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX

        START_MAIN_MENU:
        CALL DISPLAY_MAIN_MENU
        CALL GET_CHOICE

        CMP AX, 1
        JE LOGIN_AS_ADMIN
        CMP AX, 2
        JE LOGIN_AS_USER
        CMP AX, 3
        JE EXIT_PROGRAM

        LOGIN_AS_ADMIN:
            ;ADMIN LOGIN - YY PART
            JMP REDIRECT_TO_ADMIN_MODULES ; JUMP TO ADMIN MODULES if login is successful
        LOGIN_AS_USER:
            ;USER LOGIN - YY PART
            JMP REDIRECT_TO_USER_MODULES ; JUMP TO USER MODULES if login is successful
        

        REDIRECT_TO_ADMIN_MODULES:
            ;LOGIN
            CALL ADMIN_MODULES
            JMP START_MAIN_MENU
        REDIRECT_TO_USER_MODULES:
            CALL USER_MODULES
            JMP START_MAIN_MENU

        EXIT_PROGRAM:
        MOV AX, 4C00H
        INT 21H
    MAIN ENDP

    DISPLAY_MAIN_MENU PROC
        MOV AH, 09H
        LEA DX, MAIN_MENU
        INT 21H
        RET
    DISPLAY_MAIN_MENU ENDP

    ADMIN_MODULES PROC
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
            RET
    ADMIN_MODULES ENDP

    DISPLAY_ADMIN_MENU PROC 
        MOV AH, 09H
        LEA DX, ADMIN_MENU
        INT 21H
        RET
    DISPLAY_ADMIN_MENU ENDP

    ;JEREMY PART
    ADD_BOOK PROC
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

    ;CSTAN PART
   VIEW_BORROW_RECORD PROC 
        ;Point to array
        LEA SI, BOOK_NAME_ARRAY
        LEA DI, BOOK_AUTHORS
        
        ;DISPLAY HEADER
        MOV AH, 09H
        LEA DX, BOOK_CATELOG_HEADER    
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
        
        MOV CX, 10
        XOR BX, BX
        DISPLAY_BOOKS:
            MOV BOOk_ID_COUNT, BX
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

            MOV BX, BOOK_ID_COUNT
            
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
            MOV AX, BOOK_ID_COUNT
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
            MOV BX, BOOk_ID_COUNT
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

    USER_MODULES PROC
        START_USER_MENU:
        CALL DISPLAY_USER_MENU

        MOV BX, '3'   ;Maximum value for user input
        CALL GET_CHOICE
        MOV BX, AX

        CMP BX, 1
        JE BORROW_BOOK_FROM_CATALOG
        CMP BX, 2
        JE RETURN_BOOK_TO_CATALOG
        CMP BX, 3
        JE BACK_TO_MAIN_MENU

        BORROW_BOOK_FROM_CATALOG:
            CALL BORROW_BOOK
            JMP START_USER_MENU
        
        RETURN_BOOK_TO_CATALOG:
            CALL RETURN_BOOK
            JMP START_USER_MENU
        
        BACK_TO_MAIN_MENU:
            RET
    USER_MODULES ENDP
    
    DISPLAY_USER_MENU PROC
        MOV AH, 09H
        LEA DX, USER_MENU
        INT 21H
        RET
    DISPLAY_USER_MENU ENDP

    ;CSTAN/GAN PART
    BORROW_BOOK PROC
        RET
    BORROW_BOOK ENDP
    
    ;CSTAN PART
    RETURN_BOOK PROC
        RET
    RETURN_BOOK ENDP

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
        RET_CHOICE: ; RETURN VALUE TO AX
            XOR AH, AH
            SUB AL, 30H
        RET 
    GET_CHOICE ENDP

    ;New Line
    NEW_LINE PROC
        MOV AH, 09H
        LEA DX, NL
        INT 21H
        RET
    NEW_LINE ENDP

END MAIN