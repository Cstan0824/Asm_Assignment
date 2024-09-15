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

    ;Borrow, Return Book
    AVALIABLE_MSG DB "Available$"
    NOT_AVALIABLE_MSG DB "Book Not Available to borrow$"
    BOOK_RETURNED_MSG DB "Book Returned Successfully$"
    BOOK_RETURN_FAILED DB "Book Return Failed$"
    RETURN_BOOK_MSG DB "Do you want to return the book", 63, " (Y/N): $"
    USER_NOT_AVALIABLE_MSG DB "User not available to borrow!$"
    BORROW_RECORED_NOT_FOUND_MSG DB "Borrow Record not found!$"
    BOOK_ID_NOT_EXISTS_MSG DB "Book ID not Exists$"

    ;Penalty Payment
    PAYMENT_MSG DB "Do you want to proceed payment", 63, " (Y/N): $"
    PAYMENT_COMPLETE DB "Payment Complete$"
    PAYMENT_FAILED DB "Payment Failed$"
    PENALTY_CHARGE_MSG DB "Penalty Charge = $" 
    PENALTY_CHARGE_FORMAT DB "               = $"
    PENALTY_BASIC_RATE_INFO DB " (Penalty Basic Rate) $"
    ;exp:  PENALTY CHARGE: RM 5.00 (Penalty Basic Rate) x 10 (Exceed Days) x 110% = RM 55.00 (Penalty Charge, MAX: RM 100.00)
    PENALTY_RATE_INFO DB " (Penalty Rate) $"
    DIFF_DAY_INFO DB " (Exceed Days) $"
    RM DB "RM $"
    ROUNDED_DECIMAL DB ".00$"
    PENALTY_CHARGE_INFO DB " (Penalty Charge, MAX: RM 100.00) $"


    BOOK_NAME DB "Book: $"
    AUTHOR DB "Author: $"
    RET_DATE DB  "Return Date : $"
    CURR_DATE DB "Current Date: $"
    YEAR DB "2024$"
    DATE_DELIMETER DB '/'

    TEN DB 10
	HUNDRED DB 100
    BOOK_SIZE DB 30
    USER_ID_SIZE DB 40
    DATE_SIZE DB 11

    ;TABLE HDR
    BOOK_CATALOG_HEADER DB "| ID | Book Name", 20 DUP(" "), " | Author $"
    BORROW_RECORD_HEADER DB "| ID | Book Name", 20 DUP(" "), " | Author",23 DUP(" ")," | Borrow By $"
	BORROW_RECORD_LINE DB 90 DUP("=") , "$"
    BOOK_CATALOG_LINE DB 70 DUP("=") , "$"

    ;Book ID
    BOOK_COUNT DW 0
    BOOK_ID_ARRAY DB 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20

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
                    DB 30 DUP('$')
                    DB 30 DUP('$')
                    DB 30 DUP('$')
                    DB 30 DUP('$')
                    DB 30 DUP('$')
                    DB 30 DUP('$')
                    DB 30 DUP('$')
                    DB 30 DUP('$')
                    DB 30 DUP('$')
                    DB 30 DUP('$')

	;Author
	BOOK_AUTHORS    DB "Harper Lee$", 19 DUP('$')
	                DB "George Orwell$", 16 DUP('$')
	                DB "Jane Austen$", 18 DUP('$')
	                DB "F. Scott Fitzgerald$", 10 DUP('$')
	                DB "Herman Melville$", 14 DUP('$')
	                DB "J.D. Salinger$", 16 DUP('$')
	                DB "J.R.R. Tolkien$", 15 DUP('$')
	                DB "Paulo Coelho$", 17 DUP('$')
	                DB "Yuval Noah Harari$", 12 DUP('$')
	                DB "Dan Brown$", 20 DUP('$')
                    DB 30 DUP('$')
                    DB 30 DUP('$')
                    DB 30 DUP('$')
                    DB 30 DUP('$')
                    DB 30 DUP('$')
                    DB 30 DUP('$')
                    DB 30 DUP('$')
                    DB 30 DUP('$')
                    DB 30 DUP('$')
                    DB 30 DUP('$')

    ;User Details
    USER_ID_ARRAY   DB "ALI_BABA$", 31 DUP('$')
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
     ;Borrow Status
    BORROW_BY_ARRAY DB 40 DUP("$")
                    DB "CSTAN$", 34 DUP('$')
                    DB "ASSIGNMENT_HELPER_SAM$", 18 DUP('$')
                    DB 40 DUP("$")
                    DB 40 DUP("$")
                    DB 40 DUP("$")
                    DB "THE_BEST_DOGGAN$", 44 DUP('$')
                    DB 40 DUP("$")
                    DB 40 DUP("$")
                    DB 40 DUP("$")
                    DB 40 DUP("$")
                    DB 40 DUP("$")
                    DB 40 DUP("$")
                    DB 40 DUP("$")
                    DB 40 DUP("$")
                    DB 40 DUP("$")
                    DB 40 DUP("$")
                    DB 40 DUP("$")
                    DB 40 DUP("$")
                    DB 40 DUP("$")
        
    CURR_USER_ID DB "CSTAN$", 34 DUP('$')

    ;DATE
    DATE DB 11 DUP('$')
    RET_DATE_ARRAY DB 11 DUP("$")
                   DB "29/08/2024$"
                   DB "03/09/2024$"
                   DB 11 DUP("$")
                   DB 11 DUP("$")
                   DB 11 DUP("$")
                   DB "07/09/2024$"
                   DB 11 DUP("$") 
                   DB 11 DUP("$")
                   DB 11 DUP("$")
                   DB 11 DUP("$")
                   DB 11 DUP("$")
                   DB 11 DUP("$")
                   DB 11 DUP("$")
                   DB 11 DUP("$")
                   DB 11 DUP("$")
                   DB 11 DUP("$")
                   DB 11 DUP("$")
                   DB 11 DUP("$")
                   DB 11 DUP("$")
	DAY_OF_MONTH DB 31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31

	;current date
	CURR_MONTH DB 0
	CURR_DAY DB 0
    CURR_YEAR DW 0

    ;return date
	RET_MONTH DB 0
	RET_DAY DB 0
    RET_YEAR DW 0
    ;diff day
	DIFF_DAY DW 0


    PENALTY_RATE DB 5
    HAS_PENALTY_CHARGE DB 0 ; 0 - no penalty charge, 1 - has penalty charge
	PENALTY_EXTRA_RATE DB 10 ; extra 10% charge if the diff days exceed 14 days
    MAX_PENALTY_CHARGE DB 100
	PENALTY DB 7 DUP("$") ; stores the penalty charge - 100.00 (maximum)
.CODE
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX

        JMP START_USER_MENU
        START_MENU:;main menu
            JMP FIN

        START_USER_MENU:
        CALL CLEAR_SCREEN
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
            CALL CLEAR_SCREEN
            CALL BORROW_BOOK
            ; display which book is borrowed
            JMP START_USER_MENU
        
        RETURN_BOOK_TO_CATALOG:
            CALL CLEAR_SCREEN
            CALL RETURN_BOOK
            JMP START_USER_MENU
        
        BACK_TO_MAIN_MENU:
            JMP START_MENU

        FIN:
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
        ;Ensure user didnt borrow any book
        CALL CHECK_USER_EXISTENCE
        CMP BX, 0
        JS USER_AVAILABLE_TO_BORROW ; display the details if user is not founded inside the borrow by array 
            ;User founded
            MOV AH, 09H
            LEA DX, USER_NOT_AVALIABLE_MSG
            INT 21H
            CALL NEW_LINE
            CALL SYSTEM_PAUSE
            CALL CLEAR_SCREEN
            RET
        USER_AVAILABLE_TO_BORROW:
        ;DISPLAY BOOK CATALOG
        START_BORROW_BOOK:
        CALL DISPLAY_BOOK_CATALOG
        CALL NEW_LINE

        MOV BX, BOOK_COUNT 
        ADD BX, 30H
        CALL GET_CHOICE 
        MOV BX, AX 
        DEC BX

        PUSH BX ; store index to stack temp
        ;Check if the book exists (not empty/not deleted)
        MOV AX, BX
        MUL BOOK_SIZE
        MOV BX , AX 
        CMP BOOK_NAME_ARRAY[BX], '$'
        JNE CHECK_AVAILABILITY ;Book not available to borrow if true
        POP BX ; get back value from stack
        
        MOV AH, 09H 
        LEA DX, BOOK_ID_NOT_EXISTS_MSG
        INT 21H

        CALL NEW_LINE
        CALL SYSTEM_PAUSE
        CALL CLEAR_SCREEN
        JMP START_BORROW_BOOK
        
        CHECK_AVAILABILITY:
        POP BX ; get index from stack 
        PUSH BX ; store index to stack temp
        ;Check if the book is available to borrow
        MOV AX, BX 
        MUL USER_ID_SIZE 
        MOV BX, AX
        CMP BORROW_BY_ARRAY[BX], '$'
        JE BOOK_AVAILABLE_TO_BORROW ;Book Available to borrow if true
        ;Book not available to borrow
        POP BX ; clear stack

        MOV AH, 09H 
        LEA DX, NOT_AVALIABLE_MSG
        INT 21H
        CALL NEW_LINE
        CALL SYSTEM_PAUSE
        CALL CLEAR_SCREEN
        JMP START_BORROW_BOOK

        BOOK_AVAILABLE_TO_BORROW:
            CALL CLEAR_SCREEN
            POP BX ; get index from stack
            CALL SET_BORROW_STATUS
            PUSH BX ; store index to stack temp
            CALL GENERATE_RET_DATE
            POP BX ; get index from stack
            CALL DISPLAY_BOOK_DETAILS

            CALL NEW_LINE
            CALL SYSTEM_PAUSE
            CALL CLEAR_SCREEN
        RET
    BORROW_BOOK ENDP

    ;SET User ID to Borrow By Array
    SET_BORROW_STATUS PROC 
        LEA SI, BORROW_BY_ARRAY
        LEA DI, CURR_USER_ID

        MOV AX, BX
        MUL USER_ID_SIZE
        ADD SI, AX

        MOV CX, 40
        UPDATE_STATUS:
            MOV AL, [DI]
            MOV AH, [SI]
            MOV [SI], AL
            INC SI
            INC DI 
        LOOP UPDATE_STATUS

        RET
    SET_BORROW_STATUS ENDP

    DISPLAY_BOOK_CATALOG PROC
        ;Point to array
        LEA SI, BOOK_NAME_ARRAY
        LEA DI, BOOK_AUTHORS

        CALL NEW_LINE
        
        ;DISPLAY HEADER
        MOV AH, 09H
        LEA DX, BOOK_CATALOG_HEADER    
        INT 21H

        CALL NEW_LINE

        ;DISPLAY LINE
        MOV AH, 09H
        LEA DX, BOOK_CATALOG_LINE
        INT 21H

        CALL NEW_LINE
        
        MOV CX, 20
        XOR BX, BX
        MOV BOOK_COUNT, 0
        DISPLAY_BOOKS:
            CMP BYTE PTR [SI], '$' ; check if the book name exists
            JNE CURRENT_BOOK

            JMP NEXT_BOOK
            CURRENT_BOOK:
                PUSH BX ; store the value of BX to stack temporarily
                ;Check if book is available to borrow
                MOV AX, BX 
                MUL USER_ID_SIZE 
                MOV BX, AX
                CMP BORROW_BY_ARRAY[BX], '$'   ;Book available to borrow if this return true
                JE BOOK_AVAILABLE
                PUSH CX ;store the value of CX to stack temporarily

                ;Display Read is not available - ez chatgpt
                MOV AH, 09H          ; BIOS function to write character and attributes
                MOV AL, ' '          ; Character to display
                MOV BH, 0            ; Page number (usually 0)
                MOV BL, 02H          ; Attribute byte (foreground: green, background: black)
                MOV CX, 80           ; Number of times to print the character
                INT 10H              ; Call BIOS interrupt

                POP CX ; get back the cx value from stack
            BOOK_AVAILABLE:

            POP BX ; get back the value of BX[index] from stack 
            PUSH BX ; store the value of BX to stack again for future use temporarily  

            ;Delimeter
            MOV AH, 02H
            MOV DL, '|'
            INT 21H
            
            ;Space
            CALL SPACE
            
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
            CALL SPACE
            
            ;Delimeter
            MOV AH, 02H
            MOV DL, '|'
            INT 21H

            ;Space
            CALL SPACE
            
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
            CALL SPACE
            
            ;Delimeter
            MOV AH, 02H
            MOV DL, '|'
            INT 21H

            ;Space
            CALL SPACE
            
            ;Author
            MOV AH, 09H
            LEA DX, [DI]
            INT 21H 

            CALL NEW_LINE

            ;jmp to next value
            POP BX ; get back the value of BX from stack
            INC BOOK_COUNT
            NEXT_BOOK:

                XOR AX, AX
                MOV AL, BOOK_SIZE
                ADD SI, AX
                ADD DI, AX

                INC BX

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
        MOV BL, 02H 
        MOV CX, 5 
        INT 10H
        
        MOV AH, 09H 
        LEA DX, COLOR_REMARK_MSG
        INT 21H
        
        RET
    DISPLAY_BOOK_CATALOG ENDP

    ;create return date - current_date + 7 day
    GENERATE_RET_DATE PROC
        PUSH BX  ;store the index to stack temp 
        CALL GET_DATE
        POP BX    ;get the index from stack
        LEA SI, RET_DATE_ARRAY
        LEA DI, DAY_OF_MONTH
        XOR AX, AX
        MOV AL, DATE_SIZE
        MUL BX 
        ADD SI, AX 
        
      

        XOR AX, AX
        MOV AL, CURR_MONTH
        ADD DI, AX
        DEC DI

        ;add 7 day to current date 
        MOV AX, CURR_YEAR
        MOV RET_YEAR, AX
        
        MOV AL, CURR_MONTH
        MOV RET_MONTH, AL 
        
        MOV AL, CURR_DAY 
        ADD AL, 7
        MOV RET_DAY, AL
        
        CMP AL, [DI]
        JBE STORE_TO_RET_DATE

        ;add month if day exceeds DAY_OF_MONTH
        SUB AL, [DI]
        INC RET_MONTH
        MOV RET_DAY, AL

        MOV AL, RET_MONTH
        CMP AL, 12 
        JBE STORE_TO_RET_DATE

        ;add year if month exceeds 12
        SUB AL, 12
        MOV RET_MONTH, AL
        INC RET_YEAR
        ;store to RET_DATE_ARRAY
        STORE_TO_RET_DATE:
            ;Store Day
            XOR AX, AX
            MOV AL, RET_DAY
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
            MOV AL, RET_MONTH
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
            XOR BX, BX
            XOR CX, CX
            MOV AX, RET_YEAR
            READ_RET_YEAR:
                INC CX
                DIV TEN
                MOV BX, AX

                XOR AL, AL ; clear integral part and push remainder only to stack
                PUSH AX 

                CMP BL, 0
                JE END_READ_RET_YEAR

                XOR BH, BH ; clear remainder part and calculate only integral part
                MOV AX, BX 
            JMP READ_RET_YEAR

            END_READ_RET_YEAR:

            STORE_RET_YEAR:
                POP BX
                ADD BH, 30H
                MOV [SI], BH 
                INC SI
            LOOP STORE_RET_YEAR
        RET
    GENERATE_RET_DATE ENDP 

    ;CSTAN PART
    RETURN_BOOK PROC
        CALL CHECK_USER_EXISTENCE
        CMP BX, 0
        JNS USER_FOUNDED ; display the details if user is founded inside the borrow by array 
            ;User not found            
            MOV AH, 09H
            LEA DX, BORROW_RECORED_NOT_FOUND_MSG
            INT 21H
            CALL NEW_LINE
            CALL SYSTEM_PAUSE 
            RET
        USER_FOUNDED:    

        CALL DISPLAY_BOOK_DETAILS

        ;calculate penalty charge if exceeds return date
        PUSH BX ;store BX to stack temporary
        CALL CALCULATE_PENALTY  
        POP BX ;move back to BX

        ;confirm with user to return the book
        CALL NEW_LINE
        PUSH BX ;store BX to stack temporary
        LEA DX, RETURN_BOOK_MSG
        CALL GET_CONFIRMATION
        CMP BL, 'N'
        JE FAILED_TO_RETURN_BOOK 
        CMP BL, 'n'
        JE FAILED_TO_RETURN_BOOK ;doesnt return book

        POP BX ; get back the index from stack
        CMP HAS_PENALTY_CHARGE, 0 ; no penalty charge if true
        JE UPDATE_BORROW_STATUS  ; update status - _UPDATE

        ;proceed payment if exceeds return date
        CALL NEW_LINE


        PUSH BX ;store BX to stack temporary
        LEA DX, PAYMENT_MSG
        CALL GET_CONFIRMATION
        ;result stores in y
        CMP BL, 'N'
        JE FAILED_TO_PAY_PENALTY 
        CMP BL, 'n'
        JE FAILED_TO_PAY_PENALTY ;doesnt proceed payment

        POP BX ; get back the index from stack
        ;continue payment 
        CALL NEW_LINE
        MOV AH, 09H
        LEA DX, PAYMENT_COMPLETE
        INT 21H 

        ; set the borrow status if the book is return successfully
        UPDATE_BORROW_STATUS:
            CALL CLEAR_BORROW_STATUS
            CALL CLEAR_SCREEN

            MOV AH, 09H
            LEA DX, BOOK_RETURNED_MSG
            INT 21H

            CALL NEW_LINE
            CALL SYSTEM_PAUSE
            RET
        
        FAILED_TO_PAY_PENALTY:
            ;doesnt proceed payment 
            POP BX ;clear stack
            CALL NEW_LINE

            MOV AH, 09H
            LEA DX, PAYMENT_FAILED
            INT 21H

            CALL NEW_LINE
            CALL SYSTEM_PAUSE
            RET
        
        FAILED_TO_RETURN_BOOK:
            POP BX ;clear stack 
            CALL NEW_LINE

            MOV AH, 09H
            LEA DX, BOOK_RETURN_FAILED
            INT 21H

            CALL NEW_LINE
            CALL SYSTEM_PAUSE
            RET
    RETURN_BOOK ENDP

    DISPLAY_BOOK_DETAILS PROC
        LEA SI, BOOK_NAME_ARRAY
        LEA DI, BOOK_AUTHORS

        ;index is stored at BX
        MOV AX, BX
        MUL BOOK_SIZE

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
        CALL NEW_LINE

        ;Author
        MOV AH, 09H
        LEA DX, AUTHOR
        INT 21H 

        MOV AH, 09H
        MOV DX, DI 
        INT 21H 

        ;new line
        CALL NEW_LINE


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

        CALL NEW_LINE


        ;Current Date
        PUSH BX ;move BX to stack temporary
        CALL GET_DATE ;
        POP BX ;move back to BX 

        MOV AH, 09H
        LEA DX, CURR_DATE
        INT 21H

        MOV AH, 09H
        LEA DX, DATE
        INT 21H
    DISPLAY_BOOK_DETAILS ENDP

    ;return value to BX - negative if user not found else positive
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
            MOV BL, USER_ID_SIZE
            ADD SI, BX ;JUMP TO NEXT USER_ID

            INC CX 
            CMP CX, 9
            JA USER_ID_NOT_EXISTS

        JMP CHECK_USER_ID_EXISTENCE

        USER_ID_NOT_EXISTS:                    
            MOV BX, -1 ; set to -1 if user not found

        MATCH_USER_ID:
        RET
    CHECK_USER_EXISTENCE ENDP

    ;Get Y or N
    GET_CONFIRMATION PROC
        XOR BX, BX
        GET_INPUT:

            MOV AH, 09H
            INT 21H
            PUSH DX ; stock input msg temp to stack

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
            JE VALID_INPUT

            ;invalid input
            CALL NEW_LINE
            MOV AH, 09H
            LEA DX, INVALID_INPUT
            INT 21H
            CALL NEW_LINE
            POP DX ; get input msg from stack
        JMP GET_INPUT
        
        VALID_INPUT:
        POP DX

        RET
    GET_CONFIRMATION ENDP

    ;get current date and store it to DATE
    GET_DATE PROC
        ;Get current date
        ;DL - day
        ;DH - month
        MOV AH, 2Ah
        INT 21h 
        ;MOV DL, 14 ; TESTING
        ;MOV DH, 9 ; TESTING
        MOV CURR_MONTH, DH
        MOV CURR_DAY, DL
        MOV CURR_YEAR, CX



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
        XOR BX, BX
        MOV AX, CURR_YEAR
        XOR CX, CX
        READ_CURR_YEAR:
            INC CX
            DIV TEN
            MOV BX, AX

            XOR AL, AL ; clear integral part and push remainder only to stack
            PUSH AX 

            CMP BL, 0
            JE END_READ_CURR_YEAR

            XOR BH, BH ; clear remainder part and calculate only integral part
            MOV AX, BX 
        JMP READ_CURR_YEAR

        END_READ_CURR_YEAR:

        STORE_CURR_YEAR:
            POP BX
            ADD BH, 30H
            MOV [SI], BH 
            INC SI
        LOOP STORE_CURR_YEAR
        RET
    GET_DATE ENDP

    CALCULATE_PENALTY PROC
        MOV HAS_PENALTY_CHARGE, 0
        MOV DIFF_DAY, 0
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
        XOR AX, AX

        ;Count Difference Day
        LEA SI, DAY_OF_MONTH
        MOV BL, CURR_DAY

        MOV CL, CURR_MONTH
        DEC CX 
        CMP CX, 0 ;add day only if January
        JE END_COUNT_CURR_DAY_OF_MONTHS   
        COUNT_CURR_DAY_OF_MONTHS:
            MOV AL, [SI]  
            ADD BX, AX
            INC SI
        LOOP COUNT_CURR_DAY_OF_MONTHS   
        END_COUNT_CURR_DAY_OF_MONTHS:

        LEA SI, DAY_OF_MONTH
        MOV AL, RET_DAY
        SUB BX, AX
        MOV CL, RET_MONTH
        DEC CX
        CMP CX, 0 ;add day only if January
        JE END_COUNT_RET_DAY_OF_MONTHS
        COUNT_RET_DAY_OF_MONTHS:
            MOV AL, [SI]
            SUB BX, AX
            CMP BX, 0
            JS NOT_EXCEED_RET_DATE    
            INC SI
        LOOP COUNT_RET_DAY_OF_MONTHS
        JMP END_COUNT_RET_DAY_OF_MONTHS
        NOT_EXCEED_RET_DATE:
            JMP NO_PENALTY_CHARGE  
        END_COUNT_RET_DAY_OF_MONTHS:

        ;store the difference day to DIFF_DAY
        XOR CX, CX
        MOV DIFF_DAY, BX
        
        CMP DIFF_DAY, 0 ; if does not exceed the return date will not stores the difference day to DIFF_DAY
        JE NOT_EXCEED_RET_DATE ;calculate penalty if current date exceeds return date
        ; PENALTY_EXTRA_RATE (10) / PENALTY_RATE (5) = 2 ( diff_day * 2 = PENALTY_EXTRA_RATE (10))
        XOR AX, AX
        MOV AL, PENALTY_EXTRA_RATE
        DIV PENALTY_RATE
        XOR AH, AH 
        
        MOV BX, AX   
        ; MAX_PENALTY_CHARGE (100) / PENALTY_RATE (5) = 20 ( diff_day * 20 = 100)
        MOV AL, MAX_PENALTY_CHARGE 
        DIV PENALTY_RATE
        XOR AH, AH 
        SUB AL, BL 
        ; 20 - 2 (diff_day * 20 - diff_day * 2 = THRESHOLD_DAY)
        ; 18 - if more than 18 days then its considered as max penalty charge
        ; 18 * 5 * 110% = 99
        ; 19 * 5 * 110% = 104.5 -> 100
        ; 20 * 5 * 110% = 110 -> 100
        CMP DIFF_DAY, AX 
        JLE IS_NOT_MAX_PENALTY_CHARGE

        XOR AH, AH
        MOV AL, MAX_PENALTY_CHARGE; PENALTY(AX) = 100

        JMP NO_EXTRA_PENALTY_CHARGE ; since the penalty is already max penalty charge
        
        IS_NOT_MAX_PENALTY_CHARGE:
        
            MOV AX, DIFF_DAY   
            XOR BX, BX
            MOV BL, PENALTY_RATE
            MUL BX 

            CMP DIFF_DAY, 14
            JL NO_EXTRA_PENALTY_CHARGE
            ; PENALTY(AX) = PENALTY(AX) * 110% (BX)
            MOV BL , PENALTY_EXTRA_RATE
            ADD BL, HUNDRED
            MUL BX
            
            ; Divide the 16-bit value in AX by 100.
            ; The quotient is stored in AX (2 bytes), and the remainder is stored in DL.
            ; Since the maximum 4-digit value (9999) divided by 100 fits within 2 bytes (99 max quotient), 
            ; both AX and DL can store the result safely using only 2 bytes each.
            MOV BL, HUNDRED
            DIV BX ; AX = AX / 100 
            CMP DL, 0
            JE SKIP_REMAINDER_STORE   
                MOV AH, DL
            SKIP_REMAINDER_STORE:
            

        NO_EXTRA_PENALTY_CHARGE:
        PUSH AX ; store the value to stack temp - since need to use AX for read and store penalty
        
        LEA SI, PENALTY
        XOR AH,AH ; get only integral part 
        XOR CX, CX
        READ_PENALTY:  
            INC CX
        
            DIV TEN
            MOV BX, AX
            MOV AL, 0
            PUSH AX
            
            CMP BL, 0
            JE END_READ_PENALTY
            
            MOv BH, 0
            MOV AX, BX
            
        
        JMP READ_PENALTY  

        END_READ_PENALTY:

        STORE_PENALTY: 
            POP BX
            ADD BH, 30H
            MOV [SI], BH
            
            INC SI
        LOOP STORE_PENALTY


        MOV BYTE PTR [SI], '.'
        INC SI 
        
        POP AX
        CMP AH, 0
        JNE HAS_DECIMAL
            
        MOV BYTE PTR [SI], '0'
        INC SI
        MOV BYTE PTR [SI], '0'
        INC SI

        JMP DISPLAY_PENALTY
        HAS_DECIMAL:

        MOV CX, 2 ; only take 2 decimal places
        CALCULATE_DECIMAL:
            MOV AL, AH ; get the remainder and continue calculate the decimal part
            XOR AH, AH
            MUL TEN 

            MOV BL, HUNDRED
            DIV BL ; AX = AX / 100
            ADD AL, 30H
            MOV [SI], AL
            INC SI
        LOOP CALCULATE_DECIMAL 

        DISPLAY_PENALTY:
            CALL NEW_LINE
            CALL DISPLAY_PENALTY_DET   
            MOV HAS_PENALTY_CHARGE, 1
        NO_PENALTY_CHARGE:	
        RET
    CALCULATE_PENALTY ENDP 

    DISPLAY_PENALTY_DET PROC 
        ;PENALTY CHARGE: RM 5.00 (Penalty Basic Rate) x 10 (Exceed Days) x 110% = RM 55.00 (Penalty Charge, MAX: RM 100.00)
        MOV AH, 09H 
        LEA DX, PENALTY_CHARGE_MSG
        INT 21H 

        ;Penalty Rate details
        MOV AH, 09H 
        LEA DX, RM
        INT 21H 

        XOR AH, AH
        MOV AL, PENALTY_RATE
        XOR CX, CX
        READ_PENALTY_RATE:
            INC CX  
            DIV TEN
            MOV BX, AX
            XOR AL, AL 
            PUSH AX

            CMP BL, 0
            JE END_READ_PENALTY_RATE

            XOR BH, BH
            MOV AX, BX
        JMP READ_PENALTY_RATE 

        END_READ_PENALTY_RATE:

        DISPLAY_PENALTY_RATE:
            POP BX
            MOV AH, 02H
            MOV DL, BH
            ADD DL, 30H
            INT 21H
        LOOP DISPLAY_PENALTY_RATE

        MOV AH, 09H 
        LEA DX, ROUNDED_DECIMAL 
        INT 21H 

        MOV AH, 09H 
        LEA DX, PENALTY_BASIC_RATE_INFO 
        INT 21H 

        MOV AH, 02H 
        MOV DL, 'X'
        INT 21H 

        CALL SPACE

        ;Display Exceed Days
        MOV AX, DIFF_DAY 
        XOR CX, CX

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

        MOV AH, 09H 
        LEA DX, DIFF_DAY_INFO 
        INT 21H 

        CMP DIFF_DAY, 14
        JL SKIP_DISPLAY_EXTRA_RATE ; skip display extra rate if less than 14 days

        MOV AH, 02H 
        MOV DL, 'X'
        INT 21H 

        CALL SPACE

        ;Display Extra Rate 
        XOR AX, AX
        ADD AL, PENALTY_EXTRA_RATE
        ADD AL, HUNDRED
        XOR CX, CX
        READ_PENALTY_EXTRA_RATE:
            INC CX 
            DIV TEN
            MOV BX, AX

            XOR AL, AL
            PUSH AX

            CMP BL, 0
            JE END_READ_PENALTY_EXTRA_RATE

            XOR BH, BH
            MOV AX, BX
        JMP READ_PENALTY_EXTRA_RATE

        END_READ_PENALTY_EXTRA_RATE:

        DISPLAY_PENALTY_EXTRA_RATE:
            POP BX
            MOV AH, 02H
            MOV DL, BH
            ADD DL, 30H
            INT 21H
        LOOP DISPLAY_PENALTY_EXTRA_RATE

        MOV AH, 02H
        MOV DL, '%'
        INT 21H 

        SKIP_DISPLAY_EXTRA_RATE:

        CALL NEW_LINE 
        ;Display Calculated Penalty & Details
        MOV AH, 09H 
        LEA DX, PENALTY_CHARGE_FORMAT
        INT 21H 

        MOV AH, 09H 
        LEA DX, RM 
        INT 21H 
        
        MOV AH, 09H
        LEA DX, PENALTY
        INT 21H
        
        MOV AH, 09H 
        LEA DX, PENALTY_CHARGE_INFO
        INT 21H 
        RET
    DISPLAY_PENALTY_DET ENDP
    
    ;set all the 40 bytes to '$'
    CLEAR_BORROW_STATUS PROC
        LEA SI, BORROW_BY_ARRAY

        MOV AX, BX
        MUL USER_ID_SIZE
        ADD SI, AX

        MOV AL, '$'
        MOV CX, 40
        CLEAR_STATUS:
            MOV [SI], AL
            INC SI
        LOOP CLEAR_STATUS

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
            MOV BX, AX 

            CALL NEW_LINE
            MOV AX, BX
        RET 
    GET_CHOICE ENDP

    ;New Line
    NEW_LINE PROC
        MOV AH, 09H
        LEA DX, NL
        INT 21H
        RET
    NEW_LINE ENDP

    ;cls
    CLEAR_SCREEN PROC 
        MOV AX, 0003H
        INT 10H
        RET
    CLEAR_SCREEN ENDP

    SYSTEM_PAUSE PROC
        MOV AH, 09H 
        LEA DX, SYSTEM_PAUSE_MSG
        INT 21H

        MOV AH,07H
        INT 21H
        RET
    SYSTEM_PAUSE ENDP

    SPACE PROC 
        MOV AH, 02H
        MOV DL, ' '
        INT 21H
        RET 
    SPACE ENDP
END MAIN