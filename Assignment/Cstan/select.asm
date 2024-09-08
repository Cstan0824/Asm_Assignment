.MODEL SMALL
.STACK 100
.DATA
	BOOK_ID_ARRAY DB 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
    ;BOOK_NAME_ARRAY DB 10 DUP(50 DUP('$'))
    INVALID_BOOK_ID_MSG DB "Invalid book id$"
    INPUT_BUFFER DB 100 DUP("$")
    NL DB 0DH, 0AH, '$'
    
.CODE
	MAIN PROC
	    MOV AX, @DATA
	    MOV DS, AX

        INPUT_BOOK_ID:
	        MOV AH, 01H
	        INT 21H
            SUB AL, 30H

            MOV AH, 0H
            MOV BX, AX

            MOV AH, 09H
            LEA DX, NL
            INT 21H

	        CALL CHECK_BOOK_ID

            CMP AX, 0
            JE INVALID_BOOK_ID
            JMP FIN

        INVALID_BOOK_ID:
            ;print error message
            MOV AH, 09H
            LEA DX, INVALID_BOOK_ID_MSG
            INT 21H

        FIN:
        
	    MOV AX, 4C00H
	    INT 21H
	MAIN ENDP
	
	CHECK_BOOK_ID PROC
	    CMP BL, 0  
	    JBE WRONG_BOOK_ID ;RETURN FALSE IF VALUE IS LESS THAN 0

	    LEA SI, BOOK_ID_ARRAY
        MOV CX, 10

        ;CHECK IF THE BOOK ID EXISTS
        CHECK_BOOK_ID_EXISTENCE:
            CMP [SI], BL 
            JE CORRECT_BOOK_ID
            INC SI
        LOOP CHECK_BOOK_ID_EXISTENCE

        WRONG_BOOK_ID:
            MOV AX, 0
	        ;RETURN 0 if wrong book id
            RET

        CORRECT_BOOK_ID:
            ;RETURN book id if true 
            RET
	CHECK_BOOK_ID ENDP
END MAIN