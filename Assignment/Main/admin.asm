.MODEL SMALL
.STACK 100

.DATA
    ADMIN_MENU  DB "1. Add Book ", 0DH, 0AH
                DB "2. Edit Book ", 0DH, 0AH
                DB "3. Delete Book ", 0DH, 0AH
                DB "4. View Book ", 0DH, 0AH
                DB "5. Logout ", 0DH, 0AH
                DB "$"

    CHOICE_MSG DB "Enter your choice: $"
    NL DB 0DH, 0AH, '$'
    INVALID_INPUT DB "Invalid Input! Please try again. $"
.CODE
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX
        START_MENU: 
            ;MAIN MENU

        
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
            JMP START_MENU


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

    ;New Line
    NEW_LINE PROC
        MOV AH, 09H
        LEA DX, NL
        INT 21H
        RET
    NEW_LINE ENDP
END MAIN