.MODEL SMALL
.STACK 100

.DATA
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
        START_MENU:;main menu

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
            JMP START_MENU

        MOV AX, 4C00H
        INT 21H
    MAIN ENDP

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
        RET_CHOICE:
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