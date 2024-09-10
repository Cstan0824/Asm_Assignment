.MODEL SMALL
.STACK 100

.DATA

    BOOK_CATELOG_HEADER DB "| ID | Book Name", 40 DUP(" "), " | Author $"
	TABLE_LINE DB 80 DUP("="), "$"
	BOOK_ID_ARRAY DB 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
	BOOK_ID_COUNT DW ?
    
    BOOK_NAME_ARRAY DB "To Kill a Mockingbird$", 28 DUP('$')
	    DB "1984$", 45 DUP('$')
	    DB "Pride and Prejudice$", 30 DUP('$')
	    DB "The Great Gatsby$", 33 DUP('$')
	    DB "Moby - Dick$", 38 DUP('$')
	    DB "The Catcher in the Rye$", 27 DUP('$')
	    DB "The Lord of the Rings$", 28 DUP('$')
	    DB "The Alchemist$", 36 DUP('$')
	    DB "Sapiens$", 42 DUP('$')
	    DB "The Da Vinci Code$", 32 DUP('$')
	
	BOOK_AUTHORS DB "Harper Lee$", 39 DUP('$')
	    DB "George Orwell$", 36 DUP('$')
	    DB "Jane Austen$", 38 DUP('$')
	    DB "F. Scott Fitzgerald$", 30 DUP('$')
	    DB "Herman Melville$", 34 DUP('$')
	    DB "J.D. Salinger$", 36 DUP('$')
	    DB "J.R.R. Tolkien$", 35 DUP('$')
	    DB "Paulo Coelho$", 37 DUP('$')
	    DB "Yuval Noah Harari$", 32 DUP('$')
	    DB "Dan Brown$", 40 DUP('$')

    USER_ID_ARRAY DB "ALI_BABA$", 41 DUP('$')
        DB "THE_BEST_DOGGAN$", 34 DUP('$')
        DB "ABG_CHIN$", 41 DUP('$')
        DB "ASSIGNMENT_HELPER_SAM$", 28 DUP('$')
        DB "CSTANTAN$", 41 DUP('$')
        DB "CSTAN$", 44 DUP('$')
        DB "LIM_ZHI_PING$", 37 DUP('$')
        DB "G.E.M.$", 43 DUP('$')
        DB "JAY_CHOU$", 41 DUP('$')
        DB "COLDPLAY$", 41 DUP('$')
    
    BORROW_BY_ARRAY DB 50 DUP("$")
        DB 50 DUP("$")
        DB "CSTAN$", 44 DUP('$')
        DB 50 DUP("$")
        DB 50 DUP("$")
        DB 50 DUP("$")
        DB "THE_BEST_DOGGAN$", 34 DUP('$')
        DB 50 DUP("$")
        DB 50 DUP("$")
        DB 50 DUP("$")
    
    CURR_USER_ID DB "CSTAN$", 44 DUP('$')

    DATA_SIZE DB 50
    DATE_SIZE DB 11

    NL DB 0DH,0AH,'$'
    TEN DB 10
    INVALID_INPUT DB "Invalid Input$"
    

    BOOK_NAME DB "Book: $"
    AUTHOR DB "Author: $"
    RET_DATE DB "Return Date: $"
    CURR_DATE DB "Current Date: $"

    DATE_DELIMETER DB '/'
    DATE DB 11 DUP('$')
    YEAR DB "2024$"
    
    RET_DATE_ARRAY DB "01/09/2024$", "02/09/2024$","03/09/2024$","04/09/2024$","05/09/2024$","06/09/2024$","07/09/2024$", "08/09/2024$","09/09/2024$","10/09/2024$"
	DAY_OF_MONTH DB 31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31
	
	CURR_MONTH DB 0
	CURR_DAY DB 0
	RET_MONTH DB 0
	RET_DAY DB 0

    COLOR_REMARK_MSG DB "Red: Book is not available to borrow$"


.CODE
   MAIN PROC
        MOV AX, @DATA
        MOV DS, AX

        CALL BORROW_RECORD

        MOV AX, 4C00H
        INT 21H
    MAIN ENDP

    BORROW_RECORD PROC

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

            ;Check if book is available to borrow
            MOV AX, BX 
            MUL DATA_SIZE 
            MOV BX, AX
            INC BX
            CMP BORROW_BY_ARRAY[BX], '$'   ;Book available to borrow if this return true
            JE BOOK_AVAILABLE_TO_BORROW
            
            PUSH CX ;store the value of CX to stack temporarily

            ;Display Read is not available - ez chatgpt
            mov ah, 09h          ; BIOS function to write character and attributes
            mov al, ' '          ; Character to display
            mov bh, 0            ; Page number (usually 0)
            mov bl, 04h          ; Attribute byte (foreground: yellow, background: black)
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

            
            
            MOV BX, 49 ;suspose to be 50 but 1 is for delimeter - from copilot
            
            ;Count the string length
            COUNT_BOOK_NAME_SPACES:
                CMP BYTE PTR [SI], '$'
                JE DONE_BOOK_NAME_SPACES
                DEC BX
                INC SI
            JMP COUNT_BOOK_NAME_SPACES
            DONE_BOOK_NAME_SPACES:
                MOV AH, 02H
                ;EXP: SI(original SI) = SI(currnet SI) - (49(total length) - BX(space length))
                ADD SI, BX 
                SUB SI, 49

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

            ;NEW LINE
            MOV AH, 09H
            LEA DX, NL
            INT 21H

            ;jmp to next value
            MOV BX, BOOk_ID_COUNT
            INC BX
            ADD SI, 50
            ADD DI, 50
            DEC CX

            CMP CX, 0
            JE END_DISPLAY_BOOKS
        JMP DISPLAY_BOOKS

        END_DISPLAY_BOOKS:

        ;NEW LINE
        MOV AH, 09H
        LEA DX, NL
        INT 21H

        ;Display red
        MOV AH,09H 
        MOV AL, ' ' 
        MOV BH, 0
        MOV BL, 04H 
        MOV CX, 3 
        INT 10H
        
        
        MOV AH, 09H 
        LEA DX, COLOR_REMARK_MSG
        INT 21H

        RET
    BORROW_RECORD ENDP
END MAIN