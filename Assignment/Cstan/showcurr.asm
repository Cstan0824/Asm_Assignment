.MODEL SMALL
.STACK 100

.DATA
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

    RET_DATE_ARRAY DB "01/09/2024$", "02/09/2024$","03/09/2024$","04/09/2024$","05/09/2024$","06/09/2024$","07/09/2024$", "08/09/2024$","09/09/2024$","10/09/2024$"

    CURR_USER_ID DB "CSTAN$", 44 DUP('$')

    DATA_SIZE DB 50
    DATE_SIZE DB 11

    NL DB 0DH,0AH,'$'
    TEN DB 10

    BOOK_NAME DB "Book: $"
    AUTHOR DB "Author: $"
    RET_DATE DB "Return Date: $"
    CURR_DATE DB "Current Date: $"

    DATE_DELIMETER DB '/'
    DATE DB 11 DUP('$')
    YEAR DB "2024$"
.CODE
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX

        ;Point to array
        LEA SI, BORROW_BY_ARRAY
        LEA DI, CURR_USER_ID

        MOV CX, 0
        CHECK_USER_ID_EXISTENCE:

            MOV BX, CX ;store CX => BX temporary for loop process
            MOV CX, 0
            COMPARE_USER_ID: 
                
                MOV AL, [SI]
                MOV AH, [DI]
                CMP AH, AL
                JNE WRONG_USER_ID

                CMP AH, '$' ; both char is '$'
                JE MATCH_USER_ID

                INC SI
                INC DI
                INC CX
            JMP COMPARE_USER_ID

            WRONG_USER_ID:
            SUB SI, CX
            SUB DI, CX

            MOV CX, BX

            XOR BX, BX
            MOV BL, DATA_SIZE
            ADD SI, BX ;JUMP TO NEXT USER_ID

            INC CX 
            CMP CX, 9
            JA USER_ID_NOT_EXISTS

        JMP CHECK_USER_ID_EXISTENCE


        MATCH_USER_ID: 
            JMP SHOW_CURR_BORROWED

        USER_ID_NOT_EXISTS:
            JMP FIN

        SHOW_CURR_BORROWED:
            LEA SI, BOOK_NAME_ARRAY
	        LEA DI, BOOK_AUTHORS

            ;index is stored at BX
            MOV AX, BX
            MUL DATA_SIZE

            ADD SI, AX 
            ADD DI, AX 
            ;Display Current Borrowed Book

            ;Book Name
            MOV AH, 09H
            LEA DX, BOOK_NAME
            INT 21H 
            
            MOV AH, 09H
            MOV DX, SI
            INT 21H 

            ;new line
            MOV AH, 09H
            LEA DX, NL
            INT 21H

            ;Author
            MOV AH, 09H
            LEA DX, AUTHOR
            INT 21H 

            MOV AH, 09H
            MOV DX, DI 
            INT 21H 

            ;new line
            MOV AH, 09H
            LEA DX, NL
            INT 21H

            ;Return Date
            MOV AH, 09H
            LEA DX, RET_DATE
            INT 21H

            ;get return date from list
            LEA SI , RET_DATE_ARRAY
            XOR AX, AX
            MOV AX, BX 
            MUL DATA_SIZE

            ADD SI, AX  
            DEC SI ; idk why need this but it works

            MOV AH, 09H
            MOV DX, SI
            INT 21H

            ;new line
            MOV AH, 09H
            LEA DX, NL
            INT 21H

            ;Current Date
            CALL GET_DATE

            MOV AH, 09H
            LEA DX, CURR_DATE
            INT 21H

            MOV AH, 09H
            LEA DX, DATE
            INT 21H

        FIN:
        MOV AX, 4C00H
        INT 21H

    MAIN ENDP

    GET_DATE PROC
        ;Get current date
        ;DL - day
        ;DH - month
        MOV AH, 04H      
        INT 1AH  
        ;MOV DL, 9 ; TESTING
        ;MOV DH, 9 ; TESTING

        LEA SI, DATE      

        ;Store Day
        MOV AX, 0
        MOV AL, DL
        DIV TEN
        MOV BX, AX

        ADD BL, 30H
        MOV [SI], BL
        INC SI

        ADD BH, 30H
        MOV [SI], BH
        INC SI

        ; Store '/'
        MOV BL, DATE_DELIMETER
        MOV [SI], BL
        INC SI

        ;Store month
        MOV AX, 0
        MOV AL, DH
        DIV TEN
        MOV BX, AX 

        ADD BL, 30H
        MOV [SI], BL
        INC SI

        ADD BH, 30H
        MOV [SI], BH
        INC SI

        ;Store '/'
        MOV BL, DATE_DELIMETER
        MOV [SI], BL
        INC SI

        ;Store year
        LEA DI, year
        MOV CX, 4
        STORE_YEAR_TO_DATE:
            MOV AL , [DI]
            MOV [SI] , AL
            INC SI
            INC DI
        LOOP STORE_YEAR_TO_DATE
        RET
    GET_DATE ENDP
END MAIN