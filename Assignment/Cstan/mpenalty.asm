.MODEL SMALL
.STACK 100

.DATA 
        USER_MENU   DB "1. Borrow Book ", 0DH, 0AH
                DB "2. Return Book ", 0DH, 0AH
                DB "3. Logout ", 0DH, 0AH
                DB "$"
        PENALTY_MENU_MSG DB "1. Change Penalty Charge ", 0DH, 0AH
                DB "2. Change Penalty Extra Charge Rate ", 0DH, 0AH
                DB "3. Change Penalty Maximum Charge ", 0DH, 0AH
                DB "4. Back ", 0DH, 0AH
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


    PENALTY_CHARGE DB 5
    HAS_PENALTY_CHARGE DB 0 ; 0 - no penalty charge, 1 - has penalty charge
	PENALTY_EXTRA_RATE DB 10 ; extra 10% charge if the diff days exceed 14 days
    MAX_PENALTY_CHARGE DB 100
	PENALTY DB 7 DUP("$") ; stores the penalty charge - 100.00 (maximum)
.CODE

    MAIN PROC
        MOV AX, @DATA 
        MOV DX, AX
        CALL GET_DATE 
        MOV BX, 2
        PUSH BX 
        CALL CALCULATE_PENALTY 
        CALL DISPLAY_PENALTY_DET
        POP BX

        CALL PENALTY_MENU 
        

        CALL CALCULATE_PENALTY 
        CALL DISPLAY_PENALTY_DET
        
        

        MOV AX, 4C00H
        INT 21H 
    MAIN ENDP

    PENALTY_MENU PROC
        MOV AH, 09H
        LEA DX, PENALTY_MENU_MSG
        INT 21H
        RET
    PENALTY_MENU ENDP
    NEW_LINE PROC 
        MOV AH, 09H
        LEA DX, NL
        INT 21H
        RET 
    NEW_LINE ENDP
    SPACE PROC 
        MOV AH, 02H
        MOV DL, ' '
        INT 21H
        RET
    SPACE ENDP

    SYSTEM_PAUSE PROC
        MOV AH, 07H 

        INT 21H 
        MOV AH, 02H 
        MOV DL, 'T'
        INT 21H 
        RET 
    SYSTEM_PAUSE ENDP

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
        ; PENALTY_EXTRA_RATE (10) / PENALTY_CHARGE (5) = 2 ( diff_day * 2 = PENALTY_EXTRA_RATE (10))
        XOR AX, AX
        MOV AL, PENALTY_EXTRA_RATE
        DIV PENALTY_CHARGE
        XOR AH, AH 
        
        MOV BX, AX   
        ; MAX_PENALTY_CHARGE (100) / PENALTY_CHARGE (5) = 20 ( diff_day * 20 = 100)
        MOV AL, MAX_PENALTY_CHARGE 
        DIV PENALTY_CHARGE
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
            MOV BL, PENALTY_CHARGE
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
        MOV AL, PENALTY_CHARGE
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