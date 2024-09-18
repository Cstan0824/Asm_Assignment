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
    overtime_msg db "Overtime!$"
    not_overtime_msg db "Not Overtime!$"

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
                   DB "19/09/2024$"
                   DB "30/06/2024$"
                   DB 11 DUP("$")
                   DB 11 DUP("$")
                   DB 11 DUP("$")
                   DB "30/05/2024$"
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


    PENALTY_CHARGE DB 5
    HAS_PENALTY_CHARGE DB 0 ; 0 - no penalty charge, 1 - has penalty charge
	PENALTY_EXTRA_RATE DB 10 ; extra 10% charge if the diff days exceed 14 days
    MAX_PENALTY_CHARGE DB 100
	PENALTY DB 7 DUP("$") ; stores the penalty charge - 100.00 (maximum)

    ;PENALTY MANAGEMENT VARIABLES
    PENALTY_EXTRA_CHARGE_RATE_MSG DB "Enter the new penalty extra charge rate (extra 1% - 10%): $"
    PENALTY_MAXIMUM_CHARGE_MSG DB "Enter the new penalty maximum charge (RM 80 - RM 100): $"

    CURR_PENALTY_CHARGE_MSG DB "Current penalty charge (RM/DAY): RM $"
    CURR_PENALTY_EXTRA_CHARGE_RATE_MSG DB "Penalty extra rate after 14 days (%): extra $"
    CURR_PENALTY_MAXIMUM_CHARGE_MSG DB "Current penalty maximum charge: RM $"
    PENALTY_CAUTION_MSG DB "==================== CAUTION ===================== $"

    BOOK_ID_POSITION DB 0
    REMAINDER DB ?
    QUOTIENT DB ?
.CODE

    MAIN PROC

        MOV AX, @DATA
        MOV DS, AX

        CALL GET_DATE

        ;display date
        LEA DX, DATE
        MOV AH, 09H
        INT 21H

        CALL NEW_LINE

        LEA DI, BORROW_BY_ARRAY
        

        XOR BX, BX
        MOV BOOK_ID_POSITION, 1
        MOV CX, 20

        DISPLAY_BORROWED_BOOK:
            CMP byte ptr [DI], '$' ; Check if this book is not borrowed (indicated by '$')
            JE SKIP_BOOK           ; If not borrowed, skip to the next book

            ;DISPLAY BOOK ID POSITION 2 DIGITS
            XOR AX, AX
            MOV AL, BOOK_ID_POSITION
            DIV TEN
            MOV QUOTIENT, AL
            MOV REMAINDER, AH

            MOV AH, 02H
            MOV DL, QUOTIENT
            ADD DL, 30H
            INT 21H

            MOV DL, REMAINDER
            ADD DL, 30H
            INT 21H

            CALL NEW_LINE

            ; Preserve CX before calling CALCULATE_DIFF_DAY
            PUSH CX
            ; If the book is borrowed, calculate the difference in days
            CALL CALCULATE_DIFF_DAY

            ; Restore CX after function returns
            POP CX

            ; Compare the difference in days to 30
            CMP DIFF_DAY, 30
            JG DISPLAY_OVERTIME     ; If the difference is greater than 30, display "Overtime"

            ; Book is not overdue
            MOV AH, 09H
            LEA DX, not_overtime_msg
            INT 21H
            JMP DISPLAY_NEXT_BOOK

            DISPLAY_OVERTIME:
                MOV AH, 09H
                LEA DX, overtime_msg
                INT 21H

            DISPLAY_NEXT_BOOK:
                CALL NEW_LINE           ; Print a new line for separation

            SKIP_BOOK:
                ADD DI, 40              ; Move to the next borrow status (40 bytes per entry)
                INC BOOK_ID_POSITION    ; Increment the book ID position
        LOOP DISPLAY_BORROWED_BOOK


        FIN:
        MOV AX, 4C00H
        INT 21H

    MAIN ENDP

    ;New Line
    NEW_LINE PROC
        MOV AH, 09H
        LEA DX, NL
        INT 21H
        RET
    NEW_LINE ENDP

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

    CALCULATE_DIFF_DAY PROC
        MOV DIFF_DAY, 0

        ;move to selected book's return date
        ;new SI = old SI + (selected Index * sizeOf(value))
        XOR AX, AX
        MOV AL, BOOK_ID_POSITION
        DEC AL
        MUL DATE_SIZE
        LEA SI, RET_DATE_ARRAY
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

        END_COUNT_RET_DAY_OF_MONTHS:
            ;store the difference day to DIFF_DAY
            XOR CX, CX
            MOV DIFF_DAY, BX

        NOT_EXCEED_RET_DATE:
        RET
    CALCULATE_DIFF_DAY ENDP

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


END MAIN