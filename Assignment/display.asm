	.MODEL SMALL
	.STACK 100
	.DATA
	NL DB 0DH, 0AH, '$'
	TEN DB 10
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
	
	
	.CODE
	MAIN PROC
	MOV AX, @DATA
	MOV DS, AX
	
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
	MOV BX, 0
DISPLAY_BOOKS:
	MOV BOOk_ID_COUNT, BX

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

    
	
	MOV BX, 49
	
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
	
	;DISPLAY LINE
	MOV AH, 09H
	LEA DX, TABLE_LINE
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

	LOOP DISPLAY_BOOKS
	
	MOV AX, 4C00H
	INT 21H
	MAIN ENDP
END MAIN
