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
    COLOR_REMARK_MSG DB "Green: Book is not available to borrow$"
    SYSTEM_PAUSE_MSG DB "Press any key to continue...$"
    AVALIABLE_MSG DB "Available$"
    NOT_AVALIABLE_MSG DB "Book Not Available to borrow$"
    USER_NOT_FOUND_MSG DB "User not found!$"
    BORROW_RECORED_NOT_FOUND_MSG DB "Borrow Record not found!$"

    BOOK_NAME DB "Book: $"
    AUTHOR DB "Author: $"
    RET_DATE DB "Return Date: $"
    CURR_DATE DB "Current Date: $"
    YEAR DB "2024$"
    DATE_DELIMETER DB '/'

    TEN DB 10
    BOOK_SIZE DB 30
    USER_ID_SIZE DB 40
    DATE_SIZE DB 11

    ;TABLE HDR
    BOOK_CATALOG_HEADER DB "| ID | Book Name", 20 DUP(" "), " | Author $"
    BORROW_RECORD_HEADER DB "| ID | Book Name", 20 DUP(" "), " | Author",23 DUP(" ")," | Borrow By $"
	TABLE_LINE DB 90 DUP("="), "$"

    ;Book ID
    BOOK_COUNT DW 0
    BOOK_ID_ARRAY DB 1, 2, 3, 4, 5, 6, 7, 8, 9, 10

    ;Book Name
    BOOK_NAME_ARRAY DB "To Kill a Mockingbird$", 8 DUP('$')
	    DB "1984$", 25 DUP('$')
	    DB "Pride and Prejudice$", 10 DUP('$')
	    DB "The Great Gatsby$", 13 DUP('$')
	    DB "Moby - Dick$", 18 DUP('$')
	    DB "The Catcher in the Rye$", 7 DUP('$')
	    DB "The Lord of the Rings$", 8 DUP('$')
	    DB "The Alchemist$", 16 DUP('$')
	    DB "Sapiens$", 22 DUP('$')
	    DB "The Da Vinci Code$", 12 DUP('$')

	;Author
	BOOK_AUTHORS DB "Harper Lee$", 19 DUP('$')
	    DB "George Orwell$", 16 DUP('$')
	    DB "Jane Austen$", 18 DUP('$')
	    DB "F. Scott Fitzgerald$", 10 DUP('$')
	    DB "Herman Melville$", 14 DUP('$')
	    DB "J.D. Salinger$", 16 DUP('$')
	    DB "J.R.R. Tolkien$", 15 DUP('$')
	    DB "Paulo Coelho$", 17 DUP('$')
	    DB "Yuval Noah Harari$", 12 DUP('$')
	    DB "Dan Brown$", 20 DUP('$')

    ;User Details
    USER_ID_ARRAY DB "ALI_BABA$", 31 DUP('$')
        DB "THE_BEST_DOGGAN$", 24 DUP('$')
        DB "ABG_CHIN$", 31 DUP('$')
        DB "ASSIGNMENT_HELPER_SAM$", 18 DUP('$')
        DB "CSTANTAN$", 31 DUP('$')
        DB "CSTAN$", 34 DUP('$')
        DB "LIM_ZHI_PING$", 37 DUP('$')
        DB "G.E.M.$", 33 DUP('$')
        DB "JAY_CHOU$", 31 DUP('$')
        DB "COLDPLAY$", 31 DUP('$')

    ;Borrow Status
    BORROW_BY_ARRAY DB 40 DUP("$")
        DB 40 DUP("$")
        DB "CSTAN$", 34 DUP('$')
        DB 40 DUP("$")
        DB 40 DUP("$")
        DB 40 DUP("$")
        DB "THE_BEST_DOGGAN$", 44 DUP('$')
        DB 40 DUP("$")
        DB 40 DUP("$")
        DB 40 DUP("$")
    
    BORROW_STATUS_ARRAY DB 0, 0, 1, 0, 0, 0, 1, 0, 0, 0 ;0 = available, 1 = not available
    
    CURR_USER_ID DB "CSTAN$", 34 DUP('$')

    ;DATE
    DATE DB 11 DUP('$')
    RET_DATE_ARRAY DB "01/09/2024$", "02/09/2024$","03/09/2024$","04/09/2024$","05/09/2024$","06/09/2024$","07/09/2024$", "08/09/2024$","09/09/2024$","10/09/2024$"
	DAY_OF_MONTH DB 31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31
	
	CURR_MONTH DB 0
	CURR_DAY DB 0
	RET_MONTH DB 0
	RET_DAY DB 0
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
        ;DISPLAY BOOK CATALOG
        START_BORROW_BOOK:
        CALL DISPLAY_BOOK_CATALOG
        CALL NEW_LINE

        MOV BX, BOOK_COUNT 
        ADD BX, 30H
        CALL GET_CHOICE 
        MOV BX, AX 

        LEA SI, BORROW_STATUS_ARRAY
        MOV AL, [SI+BX]
        CMP AL, 1
        JNE BOOK_AVAILABLE_TO_BORROW ;Book Available to borrow if true
        ;Book not available to borrow
        CALL NEW_LINE
        MOV AH, 09H 
        LEA DX, NOT_AVALIABLE_MSG
        INT 21H

        JMP START_BORROW_BOOK


        BOOK_AVAILABLE_TO_BORROW:
            CALL SET_BORROW_STATUS
        RET
    BORROW_BOOK ENDP

    ;SET User ID to Borrow By Array
    SET_BORROW_STATUS PROC 
        LEA SI, BORROW_BY_ARRAY
        LEA DI, CURR_USER_ID

        MOV AX, BX
        MUL USER_ID_SIZE
        INC AX ; _REMOVE
        ADD SI, AX

        MOV CX, 40
        UPDATE_STATUS:
            MOV AL, [DI]
            MOV [SI], AL
            INC SI
            INC DI 
        LOOP UPDATE_STATUS

        LEA SI, BORROW_STATUS_ARRAY
        MOV AL, 1
        MOV [SI+BX], AL

        RET
    SET_BORROW_STATUS ENDP

    DISPLAY_BOOK_CATALOG PROC
        ;Point to array
        LEA SI, BOOK_NAME_ARRAY
        LEA DI, BOOK_AUTHORS
        
        ;DISPLAY HEADER
        MOV AH, 09H
        LEA DX, BOOK_CATALOG_HEADER    
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
            JS NEXT_BOOK

            ;Check if book is available to borrow
            MOV AX, BX 
            MUL USER_ID_SIZE 
            MOV BX, AX
            INC BX
            CMP BORROW_BY_ARRAY[BX], '$'   ;Book available to borrow if this return true
            JE BOOK_AVAILABLE_TO_BORROW
            PUSH CX ;store the value of CX to stack temporarily
            ;Display Read is not available - ez chatgpt
            MOV AH, 09H          ; BIOS function to write character and attributes
            MOV AL, ' '          ; Character to display
            MOV BH, 0            ; Page number (usually 0)
            MOV BL, 04H          ; Attribute byte (foreground: green, background: black)
            MOV CX, 100          ; Number of times to print the character
            INT 10H              ; Call BIOS interrupt

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

            CALL NEW_LINE

            ;jmp to next value
            MOV BX, BOOk_ID_COUNT
            INC BX
            ADD SI, BOOK_SIZE
            ADD DI, BOOK_SIZE

            NEXT_BOOK:
            DEC CX
            CMP CX, 0
            JE END_DISPLAY_BOOKS

        JMP DISPLAY_BOOKS

        END_DISPLAY_BOOKS:

        CALL NEW_LINE

        ;Display green
        MOV AH,09H 
        MOV AL, ' ' 
        MOV BH, 0
        MOV BL, 04H 
        MOV CX, 5 
        INT 10H
        
        MOV AH, 09H 
        LEA DX, COLOR_REMARK_MSG
        INT 21H
        
        RET
    DISPLAY_BOOK_CATALOG ENDP

    ;CSTAN PART
    RETURN_BOOK PROC
        CALL CHECK_USER_EXISTENCE
        CMP BX, 0
        JS USER_FOUNDED ; display the details if user is founded inside the borrow by array 
            ;User not found
            CALL NEW_LINE
            
            MOV AH, 09H
            LEA DX, BORROW_RECORED_NOT_FOUND_MSG
            INT 21H

            CALL NEW_LINE
            RET
        USER_FOUNDED:    

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
        RET
    RETURN_BOOK ENDP

    ;return value to BX
    CHECK_USER_EXISTENCE PROC
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

        USER_ID_NOT_EXISTS:
            MOV AH, 09H 
            LEA DX, USER_NOT_FOUND_MSG
            INT 21H
            
            MOV BX, -1 ; set to -1 if user not found

        MATCH_USER_ID:
        RET
    CHECK_USER_EXISTENCE ENDP

    ;Get Y or N
    GET_CONFIRMATION PROC
        XOR BX, BX
        GET_INPUT:
            MOV AH, 01H
            INT 21H 

            XOR AH, AH
            MOV BX, AX

            ; AL == 'Y' && AL == 'N' - ignore case
            CMP BL, 'Y'
            JE VALID_INPUT
            CMP BL, 'N'
            JE VALID_INPUT
            CMP BL, 'y'
            JE VALID_INPUT
            CMP BL, 'n'

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
    
    ;set all the 40 bytes to '$'
    CLEAR_BORROW_STATUS PROC
        LEA SI, BORROW_BY_ARRAY

        MOV AX, BX
        MUL USER_ID_SIZE
        INC AX ; _REMOVE
        ADD SI, AX

        MOV AL, '$'
        MOV CX, 40
        CLEAR_STATUS:
            MOV [SI], AL
            INC SI
        LOOP CLEAR_STATUS

        LEA SI, BORROW_STATUS_ARRAY
        MOV AL, 0
        MOV [SI+BX], AL

        RET
    CLEAR_BORROW_STATUS ENDP

    ;return value to AX
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