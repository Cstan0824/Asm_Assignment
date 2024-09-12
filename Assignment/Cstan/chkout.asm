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
    
    CURR_USER_ID DB "CSTAN$", 44 DUP('$')

    DATA_SIZE DB 50
    DATE_SIZE DB 11

    NL DB 0DH,0AH,'$'
    TEN DB 10
    INVALID_INPUT DB "Invalid Input$"
    USER_NOT_FOUND DB "User not found$"
    

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
	DIFF_DAY DW 0

    PENALTY_RATE DB 5
    PENALTY_CHARGE Dw 0
    PAYMENT_MSG DB "Do you want to proceed payment",63," (Y/N): $"
    PAYMENT_COMPLETE DB "Payment Complete$"
    PAYMENT_FAILED DB "Payment Failed$"
.CODE
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX
        
        MOV BX , 3
        CALL UPDATE_BORROW_STATUS

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
            MOV AH, 09H 
            LEA DX, USER_NOT_FOUND
            INT 21H
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
        MUL DATE_SIZE

        ADD SI, AX  

        MOV AH, 09H
        MOV DX, SI
        INT 21H

        ;new line
        MOV AH, 09H
        LEA DX, NL
        INT 21H

        ;Current Date
        PUSH BX ;move BX to stack temporary
        CALL GET_DATE ; uses BX for receiving current date
        POP BX ;move back to BX 

        MOV AH, 09H
        LEA DX, CURR_DATE
        INT 21H

        MOV AH, 09H
        LEA DX, DATE
        INT 21H
        PUSH BX ;store BX to stack temporary
        CALL CALCULATE_PENALTY
        POP BX ;move back to BX

        CMP PENALTY_CHARGE, 0 ; no penalty charge if true
        JE SET_BORROW_STATUS  ; update status - _UPDATE

        ;proceed payment if exceeds return date
        MOV AH, 09H
        LEA DX, NL 
        INT 21H

        MOV AH, 09H 
        LEA DX, PAYMENT_MSG
        INT 21H 

        PUSH BX ;store BX to stack temporary
        CALL GET_CONFIRMATION
        ;result stores in BX
        CMP BL, 'N'
        JE FAILED_TO_PAY_PENALTY ;doesnt proceed payment

        ;continue payment 
        MOV AH, 09H
        LEA DX, PAYMENT_COMPLETE
        INT 21H 

        ; set the borrow status if the book is return successfully
        SET_BORROW_STATUS:
            POP BX ;move back to BX
            CALL UPDATE_BORROW_STATUS
        JMP FIN
        
        FAILED_TO_PAY_PENALTY:
            ;doesnt proceed payment 
            POP BX ;clear stack - _REMOVE
            MOV AH, 09H
            LEA DX, PAYMENT_FAILED
            INT 21H

        FIN:
        MOV AX, 4C00H
        INT 21H

    MAIN ENDP

    GET_CONFIRMATION PROC
        XOR BX, BX
        GET_INPUT:
            MOV AH, 01H
            INT 21H 

            XOR AH, AH
            MOV BX, AX

            ; AL == 'Y' && AL == 'N'
            CMP BL, 'Y'
            JE VALID_INPUT
            CMP BL, 'N'
            JE VALID_INPUT

            ;invalid input
            MOV AH, 09H
            LEA DX, INVALID_INPUT
            INT 21H

            MOV AH, 09H
            LEA DX, NL
            INT 21H
        JMP GET_INPUT

        VALID_INPUT:

        RET
    GET_CONFIRMATION ENDP

    GET_DATE PROC
        ;Get current date
        ;DL - day
        ;DH - month
        MOV AH, 04H      
        INT 1AH  
        ;MOV DL, 2 ; TESTING
        ;MOV DH, 9 ; TESTING
        MOV CURR_MONTH, DH
        MOV CURR_DAY, DL

        LEA SI, DATE      

        ;Store Day
        XOR AX, AX
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
        XOR AX, AX
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

    CALCULATE_PENALTY PROC
        LEA SI, RET_DATE_ARRAY

        ;move to selected book's return date
        ;new SI = old SI + (selected Index * sizeOf(value))
        XOR AX, AX
        MOV AL, BL ;get BX - user currently borrowed book
        MUL DATE_SIZE
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
        ;count the diff days
        LEA SI, DAY_OF_MONTH
        MOV BL, CURR_DAY

        MOV CL, CURR_MONTH
        DEC CX
        COUNT_CURR_DAY_OF_MONTHS:
            ADD BL, [SI]
        LOOP COUNT_CURR_DAY_OF_MONTHS

        LEA SI, DAY_OF_MONTH
        SUB BL, RET_DAY
        MOV CL, RET_MONTH
        DEC CX

        COUNT_RET_DAY_OF_MONTHS:
            SUB BL, [SI]
            CMP BL, 0
            JS END_CALCULATE_PENALTY ; check if the sign flag is 1:Negative value
        LOOP COUNT_RET_DAY_OF_MONTHS

        ;INC BX ;include the current day - maybe no need _REMOVE

        XOR CX, CX
        MOV DIFF_DAY, BX
        MOV AX, BX

        READ_DIFF_DAY:
            INC CX
            DIV TEN 
            MOV BX, AX 

            XOR AL, AL ; remove the integral part
            PUSH AX ;save value to the stack

            CMP BL, 0
            JE END_READ_DIFF_DAY

            XOR BH, BH ; remove remainder part
            MOV AX, BX 
        JMP READ_DIFF_DAY

        END_READ_DIFF_DAY:

        DISPLAY_DIFF_DAY:
            POP BX ; get the value from stack
            MOV AH, 02H 
            MOV DL, BH 
            ADD DL, 30H 
            INT 21H	
        LOOP DISPLAY_DIFF_DAY

        CMP DIFF_DAY, 0
        JBE CHECK_OUT_PENALTY ;calculate penalty if current date exceeds return date

        MOV AX, DIFF_DAY
        MUL PENALTY_RATE

        CMP AX, 100
        JBE NOT_MAXIMUM_CHARGE_PENALTY
        MOV PENALTY_CHARGE, 100
        JMP CHECK_OUT_PENALTY

        NOT_MAXIMUM_CHARGE_PENALTY:
        MOV PENALTY_CHARGE, AX

        CHECK_OUT_PENALTY:

        MOV AH, 09H
        LEA DX, NL
        INT 21H

        ;DISPLAY PENALTY CHARGE AMOUNT
        XOR BX, BX
        XOR CX, CX
        MOV AX, PENALTY_CHARGE
        READ_PENALTY:
            INC CX
            DIV TEN 
            MOV BX, AX 

            XOR AL, AL
            PUSH AX ; save the value to stack

            CMP BL, 0
        JE END_READ_PENALTY

        XOR BH, BH ; remove remainder part
        MOV AX, BX 
        JMP READ_PENALTY 

        END_READ_PENALTY:

        DISPLAY_PENALTY:
            POP BX ; get the value from stack

            MOV AH, 02H 
            MOV DL, BH 
            ADD DL, 30H 
            INT 21H
        LOOP DISPLAY_PENALTY

        END_CALCULATE_PENALTY:	
        RET
    CALCULATE_PENALTY ENDP 
    ; NEED TO BUAT DOUBLE TESTING FOR THIS FUNCTION
    UPDATE_BORROW_STATUS PROC
        ;set all the 40 bytes to '$'
        LEA SI, BORROW_BY_ARRAY

        MOV AX, BX
        MUL DATA_SIZE
        INC AX ; _REMOVE
        ADD SI, AX

        MOV AL, '$'
        MOV CX, 40
        CLEAR_BORROW_STATUS:
            MOV [SI], AL
            INC SI
        LOOP CLEAR_BORROW_STATUS

        RET
    UPDATE_BORROW_STATUS ENDP
END MAIN