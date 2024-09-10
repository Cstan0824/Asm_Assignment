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
            JMP REDIRECT_TO_ADMIN_MODULES
        LOGIN_AS_USER:
            ;USER LOGIN - YY PART
            JMP REDIRECT_TO_USER_MODULES
        

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
            CALL VIEW_BOOK
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
    VIEW_BOOK PROC 
        RET
    VIEW_BOOK ENDP


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