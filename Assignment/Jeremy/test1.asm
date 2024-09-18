.MODEL SMALL
.STACK 100

.DATA

    MAIN_MENU   DB "1. Admin ", 0DH, 0AH
                DB "2. User ", 0DH, 0AH
                DB "3. Exit ", 0DH, 0AH
                DB "$"

    ;MENU
    ADMIN_MENU  DB "1. Add Book ", 0DH, 0AH
                DB "2. Edit Book ", 0DH, 0AH
                DB "3. Delete Book ", 0DH, 0AH
                DB "4. View Book[Borrow Record] ", 0DH, 0AH
                DB "5. Penalty Management ", 0DH, 0AH
                DB "6. Logout ", 0DH, 0AH
                DB "$"

    USER_MENU   DB "1. Borrow Book ", 0DH, 0AH
                DB "2. Return Book ", 0DH, 0AH
                DB "3. Logout ", 0DH, 0AH
                DB "$"

    PENALTY_MENU DB "1. Change Penalty Charge ", 0DH, 0AH
    DB "2. Change Penalty Extra Charge Rate ", 0DH, 0AH
    DB "3. Change Penalty Maximum Charge ", 0DH, 0AH
    DB "4. Back ", 0DH, 0AH
    DB "$"
            

    NL DB 0DH, 0AH, '$'

    ;MESSAGE
    CHOICE_MSG DB "Enter your choice: $"
    INVALID_INPUT DB "Invalid Input! Please try again. $"
    COLOR_REMARK_MSG DB "Green: Book is not available to borrow$"
    OVERTIME_COLOR_REMARK_MSG DB "Red: Book has not been returned more than 30 days from return date$"
    SYSTEM_PAUSE_MSG DB "Press any key to continue...$"
    AVALIABLE_MSG DB "Available$"
    ;---exit
	DISPLAY_EXIT DB 0DH, 0AH,"Thank you, see you next time.$"

    ;Borrow, Return Book
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
    RET_DATE DB "Return Date: $"
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
    BORROW_RECORD_HEADER DB "| ID | Book Name", 20 DUP(" "), " | Author",13 DUP(" ")," | Borrow By$"
	BORROW_RECORD_LINE DB 79 DUP("=") , "$"
    BOOK_CATALOG_LINE DB 70 DUP("=") , "$"
    
    ;DATA
    ;Book Details
	BOOK_COUNT DW 0

    ;Book ID
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
        DB "THE_BEST_DOGGAN$", 24 DUP('$')
        DB "CSTAN$", 34 DUP('$')
        DB 40 DUP("$")
        DB 40 DUP("$")
        DB 40 DUP("$")
        DB "ASSIGNMENT_HELPER_SAM$", 18 DUP('$')
        DB 40 DUP("$")
        DB 40 DUP("$")
        DB 40 DUP("$")
        DB 40 DUP('$')
        DB 40 DUP('$')
        DB 40 DUP('$')
        DB 40 DUP('$')
        DB 40 DUP('$')
        DB 40 DUP('$')
        DB 40 DUP('$')
        DB 40 DUP('$')
        DB 40 DUP('$')
        DB 40 DUP('$')

    
    CURR_USER_ID DB "CSTAN$", 34 DUP('$')

    ;DATE
    DATE DB 11 DUP('$')
    RET_DATE_ARRAY DB 11 DUP("$")
                   DB "18/09/2024$"
                   DB "03/05/2024$"
                   DB 11 DUP("$")
                   DB 11 DUP("$")
                   DB 11 DUP("$")
                   DB "07/06/2024$"
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
	
	CURR_MONTH DB 0
	CURR_DAY DB 0
    CURR_YEAR DW 0

    ;return date
	RET_MONTH DB 0
	RET_DAY DB 0
    RET_YEAR DW 0
    ;diff day
	DIFF_DAY DW 0

    SELECT_BOOK_ID_TO_BORROW_MSG DB "Select the book ID you want to borrow: $"

    ;ADD_BOOK VARIABLES
    ADD_UNAVAILABLE DB "No more slot available to add new books. $"
    PROMPT_INPUT_BOOKNAME_P1 DB "Enter new book name (cannot input '$"
    PROMPT_INPUT_BOOKNAME_P2 DB "'): $"
    PROMPT_INPUT_BOOKAUTHOR_P1 DB "Enter book author for the new book (cannot input '$"
    PROMPT_INPUT_BOOKAUTHOR_P2 DB "'): $"
    PROMPT_NEW_BOOKNAME DB "New Book Name: $"
    PROMPT_NEW_BOOKAUTHOR DB "New Book Author: $"
    PROMPT_ADDED_BOOK DB "New book has been added to the catalog. $"


    ;EDIT_BOOK VARIABLES
    PROMPT_INPUT_BOOKID DB "ENTER THE BOOK ID YOU WANT TO EDIT: $"
    PROMPT_EDIT_BOOKNAME DB "ENTER THE NEW BOOK NAME : $"
    PROMPT_EDIT_AUTHOR DB "ENTER THE NEW AUTHOR NAME : $"
    PROMPT_BOOK_EDITED DB "Book edited successfully!$"  
    EDIT_FIELD_PROMPT DB "Do you want to edit the Name (N) or Author (A): $"
    EDIT_FIELD_CHOICE DB 0
    EDIT_UNAVAILABLE_CHOICE DB "Invalid choice! Please enter N or A.$"
    BOOKNOTFOUND DB "BOOK NOT FOUND $"


    ;NEW_BOOK INPUT_STRING 
    NEW_BOOKNAME_INPUT LABEL BYTE                   ;STRING INPUT
    MAX_BOOKNAME_SIZE DB 30                         ;MAXIMUM BOOKNAME SIZE
    INPUT_BOOKNAME_SIZE DB ?                        ;BOOKNAME ACTUAL INPUT SIZE
    NEW_BOOKNAME DB 30 DUP('$')                     ;STORE BOOKNAME VARIABLE

    NEW_BOOKAUTHORS_INPUT LABEL BYTE                ;STRING INPUT
    MAX_BOOKAUTHORS_SIZE DB 30                      ;MAXIMUM BOOKAUTHORS SIZE
    INPUT_BOOKAUTHORS_SIZE DB ?                     ;BOOKAUTHORS ACTUAL INPUT SIZE
    NEW_BOOKAUTHORS DB 30 DUP('$')                  ;STORE BOOKAUTHORS VARIABLE

    ;EDIT_BOOK INPUT_STRING
    EDIT_BOOKID_INPUT LABEL BYTE                   ;STRING INPUT
    AXN DB 5
    ACTN DB 0
    OUTPUT DB 5 DUP("$")

    EDITED_NEW_BOOKNAME LABEL BYTE
    MAXN_BOOKNAME DB 30
    ACTN_BOOKNAME DB 0
    EDITEDBOOKNAME DB 50 DUP("$")

    EDITED_NEW_AUTHOR LABEL BYTE
    MAXN_AUTHOR DB 30
    ACTN_AUTHOR DB 0 
    EDITEDAUTHOR DB 30 DUP("$")

    ;DELETE_BOOK VARIABLES
    AVAILABLE_BOOKID_ARRAY DB 20 DUP(0)      ; Array to store indices of valid books
    ;PENALTY MANAGEMENT VARIABLES
    GET_INTEGER_STRING LABEL BYTE 
    MAXN_DIGIT DB 5 
    ACTN_DIGIT DB 0
    INTEGER_STRING DB 5 DUP("$")

    PROMPT_INPUT_DELETE_BOOKID DB "Enter the book ID to delete: $"
    DELETE_BOOKID_INPUTBUFFER LABEL BYTE             
    MAX_DELETE_BUFFER DB 3                      
    ACTUAL_DELETE_BUFFER DB 0                
    DELETE_BOOKID_BUFFER DB 3 DUP(0)                  
    
    DELETE_MULTIPLICANT DW ?
    BOOK_ID_POSITION DB 0
    
    WRITTEN_BY DB "written by $"
    PROMPT_BOOKID_ERROR DB "Invalid book ID. Please try again. $"
    PROMPT_BOOK_ISDELETED DB " is deleted successfully! $"
    PROMPT_BOOK_NOT_AVAILABLE DB "Book is currently borrowed, cannot delete!$"
    PROMPT_BOOK_NOT_FOUND DB "Book not found! Please try again. $"
    PROMPT_DELETE_BOOK_CONFIRMATION DB "Are you sure you want to delete this book? (Y/N) $"
    INTEGER DW 0

    ;PENALTY MANAGEMENT VARIABLES
    CHANGE_PENALTY_CHARGE_MSG DB "Enter the new penalty charge (RM 1 - RM 5): $"
    CHANGE_PENALTY_EXTRA_RATE_MSG DB "Enter the new penalty extra charge rate (extra 1% - 10%): $"
    CHANGE_PENALTY_MAXIMUM_CHARGE_MSG DB "Enter the new penalty maximum charge (RM 80 - RM 100): $"

    CURR_PENALTY_CHARGE_MSG DB "Current penalty charge (RM/DAY): RM $"
    CURR_PENALTY_EXTRA_CHARGE_RATE_MSG DB "Penalty extra rate after 14 days (%): extra $"
    CURR_PENALTY_MAXIMUM_CHARGE_MSG DB "Current penalty maximum charge: RM $"
    PENALTY_CAUTION_MSG DB "==================== CAUTION ===================== $"


    PENALTY_CHARGE DB 5
    HAS_PENALTY_CHARGE DB 0 ; 0 - no penalty charge, 1 - has penalty charge
	PENALTY_EXTRA_RATE DB 10 ; extra 10% charge if the diff days exceed 14 days
    MAX_PENALTY_CHARGE DB 100
	PENALTY DB 7 DUP("$") ; stores the penalty charge - 100.00 (maximum)

.CODE

    MAIN PROC

        MOV AX, @DATA
        MOV DS, AX

        CALL GET_DATE
    
        ;Point to array
        LEA SI, BOOK_NAME_ARRAY
        LEA DI, BORROW_BY_ARRAY

        CALL NEW_LINE
        
        ;DISPLAY HEADER
        MOV AH, 09H
        LEA DX, BORROW_RECORD_HEADER    
        INT 21H

        CALL NEW_LINE
        
        ;DISPLAY LINE
        MOV AH, 09H
        LEA DX, BORROW_RECORD_LINE
        INT 21H

        CALL NEW_LINE
        
        XOR BX, BX
        MOV BOOK_ID_POSITION, 1
        MOV CX, 20
        DISPLAY_OVERTIME_RECORD:
            CMP CX, 0
            JZ TEMP_END_DISPLAY_OVERTIME_RECORD
            JMP PROCEED_LOOP

            TEMP_END_DISPLAY_OVERTIME_RECORD:
                JMP END_DISPLAY_OVERTIME_RECORD

            PROCEED_LOOP:
            CMP byte ptr [DI], '$' ; Check if this book is not borrowed (indicated by '$')
            JE TEMP_SKIP_BOOK ; Skip this book if it is not borrowed
            JMP CURRENT_OVERTIME_RECORD

            TEMP_SKIP_BOOK:
                JMP SKIP_BOOK
            CURRENT_OVERTIME_RECORD:
                PUSH BX
                PUSH CX
                PUSH SI

                CALL CALCULATE_OVERTIME_DIFF_DAY
                
                POP SI
                POP CX
                CMP DIFF_DAY, 30
                JB BOOK_NOT_OVERTIME

                ;Display red
                PUSH CX ;store the value of CX to stack temporarily
                ;Display Read is not available - ez chatgpt
                MOV AH, 09H        ; BIOS function to write character and attributes
                MOV AL, ' '        ; Character to display (e.g., space or any other character)
                MOV BH, 0          ; Page number (usually 0)
                MOV BL, 0Ch        ; Attribute byte: Foreground red (4), background black (0Fh)
                MOV CX, 80          ; Number of times to print the character (5 spaces)
                INT 10H            ; Call BIOS interrupt to print with attributes

                POP CX ; get back the cx value from stack
            
            BOOK_NOT_OVERTIME: 
            POP BX ; get back the value of BX[index] from stack 
            PUSH BX ; store the value of BX to stack again for future use temporarily 
            
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
            MOV AL, BOOK_ID_POSITION
            DEC AL
            XOR BX, BX
            MOV BX , AX
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
            COUNTOVERTIME_BOOK_NAME_SPACES_1:
                CMP BYTE PTR [SI], '$' ; apa ini
                JE DONEOVERTIME_BOOK_NAME_SPACES_1
                DEC BX
                INC SI
                JMP COUNTOVERTIME_BOOK_NAME_SPACES_1
            DONEOVERTIME_BOOK_NAME_SPACES_1:
                MOV AH, 02H
                ;EXP: SI(original SI) = SI(currnet SI) - (29(total length) - BX(space length))
                ADD SI, BX 
                SUB SI, 29

            ADDOVERTIME_SPACES_AFTER_NAME_1:
                CMP BX, 0
                JE DONE_ADDOVERTIME_BOOK_NAME_SPACES_1
                MOV DL, ' '
                INT 21H
                DEC BX

                JMP ADDOVERTIME_SPACES_AFTER_NAME_1

            DONE_ADDOVERTIME_BOOK_NAME_SPACES_1:
            
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

                ;BX * 30 = BOOK AUTHOR POSITION
                XOR AX, AX
                MOV AL, BOOK_ID_POSITION
                DEC AL      
                MUL BOOK_SIZE
                MOV BX, AX
                ;Author
                XOR AX, AX
                MOV AH, 09H
                LEA DX, BOOK_AUTHORS[BX]
                INT 21H 

            PUSH CX

                MOV CX, 20 ;should use 29 but since not enough space for borrow by user so i use 20 instead
                ;suspose to be 30 but 1 is for delimeter - from copilot
                ;MOVE THE BOOK AUTHOR POSITION TO BX
                XOR AX, AX
                MOV AL, BOOK_ID_POSITION
                DEC AL
                MUL BOOK_SIZE
                MOV BX, AX
                XOR AX, AX
            ;Count the string length
            COUNTOVERTIME_AUTHOR_SPACES:
                CMP BOOK_AUTHORS[BX], '$' ; apa ini
                JE DONEOVERTIME_AUTHOR_SPACES
                DEC CX
                INC BX
                JMP COUNTOVERTIME_AUTHOR_SPACES
            DONEOVERTIME_AUTHOR_SPACES:
                MOV AH, 02H
                ADD BX, CX
                SUB BX, 20

            ADDOVERTIME_SPACES_AFTER_AUTHOR:
                CMP CX, 0
                JE DONE_ADDOVERTIME_AUTHOR_SPACES
                MOV DL, ' '
                INT 21H
                DEC CX
                JMP ADDOVERTIME_SPACES_AFTER_AUTHOR

            DONE_ADDOVERTIME_AUTHOR_SPACES:
            POP CX ; get back the value of CX from stack
                ;Delimeter
                MOV AH, 02H
                MOV DL, '|'
                INT 21H

                ;Space
                MOV AH, 02H
                MOV DL, ' '
                INT 21H

                ;Borrow By
                MOV AX, 0
                MOV AL, BOOK_ID_POSITION
                DEC AL
                MUL USER_ID_SIZE
                XOR BX, BX
                MOV BX , AX
                MOV AH, 09H
                LEA DX, BORROW_BY_ARRAY[BX]
                INT 21H
            
            CALL NEW_LINE

            ;jmp to next value
            POP BX ; get back the value of BX from stack
            INC BOOK_COUNT
            SKIP_BOOK:

                XOR AX, AX
                MOV AL, BOOK_SIZE
                ADD SI, AX
                ADD DI, 40

                INC BOOK_ID_POSITION
                INC BX
                DEC CX
            JMP DISPLAY_OVERTIME_RECORD

        END_DISPLAY_OVERTIME_RECORD:

            CALL NEW_LINE

            ;Display red
            MOV AH, 09H        ; BIOS function to write character and attributes
            MOV AL, ' '        ; Character to display (e.g., space or any other character)
            MOV BH, 0          ; Page number (usually 0)
            MOV BL, 0Ch        ; Attribute byte: Foreground red (4), background black (0Fh)
            MOV CX, 5          ; Number of times to print the character (5 spaces)
            INT 10H            ; Call BIOS interrupt to print with attributes
            
            
            MOV AH, 09H 
            LEA DX, OVERTIME_COLOR_REMARK_MSG
            INT 21H
            
            CALL NEW_LINE
            CALL SYSTEM_PAUSE
            

        FIN:
            MOV AX, 4C00H
            INT 21H
    MAIN ENDP


    ;new line
    NEW_LINE PROC
        MOV AH, 09H
        LEA DX, NL
        INT 21H
        RET
    NEW_LINE ENDP

    ;clear screen
    CLEAR_SCREEN PROC 
        MOV AX, 0003H
        INT 10H
        RET
    CLEAR_SCREEN ENDP

    ;system pause
    SYSTEM_PAUSE PROC
        MOV AH, 09H 
        LEA DX, SYSTEM_PAUSE_MSG
        INT 21H

        MOV AH,07H
        INT 21H
        RET
    SYSTEM_PAUSE ENDP

    ;space
    SPACE PROC 
        MOV AH, 02H
        MOV DL, ' '
        INT 21H
        RET 
    SPACE ENDP

    CALCULATE_OVERTIME_DIFF_DAY PROC
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
        JE END_COUNTOVERTIME_CURR_DAY_OF_MONTHS   
        COUNTOVERTIME_CURR_DAY_OF_MONTHS:
            MOV AL, [SI]  
            ADD BX, AX
            INC SI
        LOOP COUNTOVERTIME_CURR_DAY_OF_MONTHS   
        END_COUNTOVERTIME_CURR_DAY_OF_MONTHS:

        LEA SI, DAY_OF_MONTH
        MOV AL, RET_DAY
        SUB BX, AX
        MOV CL, RET_MONTH
        DEC CX
        CMP CX, 0 ;add day only if January
        JE END_COUNTOVERTIME_RET_DAY_OF_MONTHS
        COUNTOVERTIME_RET_DAY_OF_MONTHS:
            MOV AL, [SI]
            SUB BX, AX
            CMP BX, 0
            JS NOT_EXCEED_RET_DATE_OVERTIME    
            INC SI
        LOOP COUNTOVERTIME_RET_DAY_OF_MONTHS

        END_COUNTOVERTIME_RET_DAY_OF_MONTHS:
            ;store the difference day to DIFF_DAY
            XOR CX, CX
            MOV DIFF_DAY, BX

        NOT_EXCEED_RET_DATE_OVERTIME:
        RET
    CALCULATE_OVERTIME_DIFF_DAY ENDP

    ;Get current date and store it to DATE, CURR_DAY, CURR_MONTH, CURR_YEAR
    ;DATE is stored as string, DATE format: DD/MM/YYYY
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