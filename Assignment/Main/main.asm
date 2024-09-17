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
            
    CHOICE_MSG DB "Enter your choice: $"

    NL DB 0DH, 0AH, '$'

    ;MESSAGE
    CHOICE_MSG DB "Enter your choice: $"
    INVALID_INPUT DB "Invalid Input! Please try again. $"
    COLOR_REMARK_MSG DB "Green: Book is not available to borrow$"
    SYSTEM_PAUSE_MSG DB "Press any key to continue...$"
    AVALIABLE_MSG DB "Available$"

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
    RET_DATE DB "Return Date: $"
    CURR_DATE DB "Current Date: $"
    YEAR DB "2024$"
    DATE_DELIMETER DB '/'

    TEN DB 10
    HUNDRED DB 100
    BOOK_SIZE DB 30
    USER_ID_SIZE DB 40
    DATE_SIZE DB 11

    ;MENU
    ADMIN_MENU  DB "1. Add Book ", 0DH, 0AH
                DB "2. Edit Book ", 0DH, 0AH
                DB "3. Delete Book ", 0DH, 0AH
                DB "4. View Book[Borrow Record] ", 0DH, 0AH
                DB "5. Penalty Management ", 0DH, 0AH
                DB "6. Logout ", 0DH, 0AH
                DB "$"

    PENALTY_MENU DB "1. Change Penalty Charge ", 0DH, 0AH
                DB "2. Change Penalty Extra Charge Rate ", 0DH, 0AH
                DB "3. Change Penalty Maximum Charge ", 0DH, 0AH
                DB "4. Back ", 0DH, 0AH
                DB "$"

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
        DB 40 DUP("$")
        DB "CSTAN$", 34 DUP('$')
        DB 40 DUP("$")
        DB 40 DUP("$")
        DB 40 DUP("$")
        DB "THE_BEST_DOGGAN$", 24 DUP('$')
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
    RET_DATE_ARRAY DB "01/09/2024$", "02/09/2024$","03/09/2024$","04/09/2024$","05/09/2024$","06/09/2024$","07/09/2024$", "08/09/2024$","09/09/2024$","10/09/2024$"
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

    

    ;ADD_BOOK VARIABLES
    ADD_UNAVAILABLE DB "No more slot available to add new books. $"
    PROMPT_INPUT_BOOKNAME DB "Enter new book name: $"
    PROMPT_INPUT_BOOKAUTHOR DB "Enter book author for the new book: $"
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
    PENALTY_CHARGE_MSG DB "Enter the new penalty charge (RM 1 - RM 5): $"
    PENALTY_EXTRA_CHARGE_RATE_MSG DB "Enter the new penalty extra charge rate (extra 1% - 10%): $"
    PENALTY_MAXIMUM_CHARGE_MSG DB "Enter the new penalty maximum charge (RM 80 - RM 100): $"

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
    ;login as admin or user
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX

        START_MAIN_MENU:
        CALL DISPLAY_MAIN_MENU
        CALL GET_CHOICE

        CMP AX, 1
        JE LOGIN_AS_ADMIN
        CMP AX, 2
        JE LOGIN_AS_USER
        CMP AX, 3
        JE EXIT_PROGRAM

        LOGIN_AS_ADMIN:
            ;ADMIN LOGIN - YY PART
            JMP REDIRECT_TO_ADMIN_MODULES ; JUMP TO ADMIN MODULES if login is successful
        LOGIN_AS_USER:
            ;USER LOGIN - YY PART
            JMP REDIRECT_TO_USER_MODULES ; JUMP TO USER MODULES if login is successful
        

        REDIRECT_TO_ADMIN_MODULES:
            ;LOGIN
            CALL ADMIN_MODULES
            JMP START_MAIN_MENU
        REDIRECT_TO_USER_MODULES:
            CALL USER_MODULES
            JMP START_MAIN_MENU

        EXIT_PROGRAM:
        MOV AX, 4C00H
        INT 21H
    MAIN ENDP

    ;Display Main Menu - Role Selection - yy part
    DISPLAY_MAIN_MENU PROC
        MOV AH, 09H
        LEA DX, MAIN_MENU
        INT 21H
        RET
    DISPLAY_MAIN_MENU ENDP

    ;login as admin 
    ADMIN_MODULES PROC
        START_ADMIN_MENU:
        CALL DISPLAY_ADMIN_MENU

        MOV BX, '6'   ;Maximum value for user input
        CALL GET_CHOICE
        MOV BX, AX 
        CALL NEW_LINE

        ;the length will only be in between 1 to 5
        CMP BX , 1
        JE ADD_BOOK_TO_CATALOG
        CMP BX , 2
        JE EDIT_BOOK_FROM_CATALOG
        CMP BX , 3
        JE DELETE_BOOK_FROM_CATALOG
        CMP BX , 4
        JE VIEW_BOOK_FROM_CATALOG
        CMP BX , 5
        JE CHANGE_PENALTY_DETAILS
        CMP BX , 6
        JE BACK_TO_MAIN_MENU



        ADD_BOOK_TO_CATALOG:
            CALL CLEAR_SCREEN
            CALL ADD_BOOK
            CALL CLEAR_SCREEN
            JMP START_ADMIN_MENU

        EDIT_BOOK_FROM_CATALOG:
            CALL CLEAR_SCREEN
            CALL EDIT_BOOK
            CALL CLEAR_SCREEN
            JMP START_ADMIN_MENU

        DELETE_BOOK_FROM_CATALOG:
            CALL CLEAR_SCREEN
            CALL REMOVE_BOOK
            CALL CLEAR_SCREEN
            JMP START_ADMIN_MENU

        VIEW_BOOK_FROM_CATALOG:
            CALL CLEAR_SCREEN
            CALL VIEW_BORROW_RECORD
            CALL CLEAR_SCREEN
            JMP START_ADMIN_MENU

        CHANGE_PENALTY_DETAILS:
            CALL CLEAR_SCREEN
            CALL PENALTY_MANAGEMENT
            CALL CLEAR_SCREEN
            JMP START_ADMIN_MENU

        BACK_TO_MAIN_MENU:
            RET
    ADMIN_MODULES ENDP

    ;Admin Modules
    DISPLAY_ADMIN_MENU PROC 
        MOV AH, 09H
        LEA DX, ADMIN_MENU
        INT 21H
        RET
    DISPLAY_ADMIN_MENU ENDP

    ;Penalty Management
    DISPLAY_PENALTY_MENU PROC
        MOV AH, 09H
        LEA DX, PENALTY_MENU
        INT 21H
        RET
    DISPLAY_PENALTY_MENU ENDP


    PENALTY_MANAGEMENT PROC 
        CALL DISPLAY_CURR_PENALTY_DET
        CALL NEW_LINE
        CALL NEW_LINE
        CALL DISPLAY_PENALTY_MENU

        MOV BX, '4'
        CALL GET_CHOICE
        MOV BX, AX ; 1 to 5

        CMP BX, 1
        JE CHANGE_PENALTY_CHARGE
        CMP BX, 2
        JE CHANGE_PENALTY_EXTRA_CHARGE_RATE
        CMP BX, 3
        JE REDIRECT_TO_CHANGE_PENALTY_MAXIMUM_CHARGE
        ;CMP BX, 4
        RET ; return back to main menu

        REDIRECT_TO_CHANGE_PENALTY_MAXIMUM_CHARGE:
            JMP CHANGE_PENALTY_MAXIMUM_CHARGE ; resolve jmp out of range

        CHANGE_PENALTY_CHARGE:
            START_CHANGE_PENALTY_CHARGE:

                ;only between 1 to 5
                CALL CLEAR_SCREEN 

                MOV AH, 09H 
                LEA DX, PENALTY_CHARGE_MSG
                INT 21H
                CALL GET_INTEGER
                
                CMP INTEGER, 0 
                JBE INVALID_PENALTY_CHARGE_RANGE
                CMP INTEGER, 5
                JA INVALID_PENALTY_CHARGE_RANGE 
                JMP END_CHANGE_PENALTY_CHARGE 
                
                INVALID_PENALTY_CHARGE_RANGE:
                MOV AH, 09H 
                LEA DX, INVALID_INPUT
                INT 21H
                CALL NEW_LINE
                CALL SYSTEM_PAUSE 

            JMP START_CHANGE_PENALTY_CHARGE

            END_CHANGE_PENALTY_CHARGE:
                MOV BX, INTEGER 
                MOV PENALTY_CHARGE, BL
                JMP END_PENALTY_MANAGEMENT
        
        CHANGE_PENALTY_EXTRA_CHARGE_RATE:
            START_CHANGE_PENALTY_EXTRA_RATE:
                ; only between 1 to 10
                CALL CLEAR_SCREEN 
                MOV AH, 09H 
                LEA DX, PENALTY_EXTRA_CHARGE_RATE_MSG
                INT 21H

                CALL GET_INTEGER  
                CMP INTEGER, 0
                JBE INVALID_PENALTY_EXTRA_RATE
                CMP INTEGER, 10
                JA INVALID_PENALTY_EXTRA_RATE 
                
                JMP END_CHANGE_PENALTY_EXTRA_RATE
                
                INVALID_PENALTY_EXTRA_RATE:
                MOV AH, 09H 
                LEA DX, INVALID_INPUT
                INT 21H
                CALL NEW_LINE
                CALL SYSTEM_PAUSE 
            JMP START_CHANGE_PENALTY_EXTRA_RATE

            END_CHANGE_PENALTY_EXTRA_RATE:
                MOV BX, INTEGER 
                MOV PENALTY_EXTRA_RATE, BL
                JMP END_PENALTY_MANAGEMENT

        CHANGE_PENALTY_MAXIMUM_CHARGE:
            START_CHANGE_PENALTY_MAXIMUM_CHARGE:
                ;only between 80 - 100
                CALL CLEAR_SCREEN 

                MOV AH, 09H 
                LEA DX, PENALTY_MAXIMUM_CHARGE_MSG
                INT 21H
                
                CALL GET_INTEGER 
                CMP INTEGER, 80
                JB INVALID_PENALTY_MAXIMUM_CHARGE
                CMP INTEGER, 100
                JA   INVALID_PENALTY_MAXIMUM_CHARGE
                JMP END_CHANGE_PENALTY_MAXIMUM_CHARGE

                INVALID_PENALTY_MAXIMUM_CHARGE:
                    MOV AH, 09H 
                    LEA DX, INVALID_INPUT
                    INT 21H
                    CALL NEW_LINE
                    CALL SYSTEM_PAUSE
            JMP START_CHANGE_PENALTY_MAXIMUM_CHARGE

            END_CHANGE_PENALTY_MAXIMUM_CHARGE:
                MOV BX, INTEGER
                MOV MAX_PENALTY_CHARGE, BL
                JMP END_PENALTY_MANAGEMENT
        END_PENALTY_MANAGEMENT:
        RET 
    PENALTY_MANAGEMENT ENDP

    ;Display Current Penalty Details
    DISPLAY_CURR_PENALTY_DET PROC 

        ;Display Penalty Charge
        MOV AH, 09H 
        LEA DX, CURR_PENALTY_CHARGE_MSG
        INT 21H

        XOR AH, AH
        MOV AL, PENALTY_CHARGE
        XOR CX, CX
        READ_CURR_PENALTY_CHARGE:
            INC CX  
            DIV TEN
            MOV BX, AX
            XOR AL, AL 
            PUSH AX

            CMP BL, 0
            JE END_READ_CURR_PENALTY_CHARGE

            XOR BH, BH
            MOV AX, BX
        JMP READ_CURR_PENALTY_CHARGE 

        END_READ_CURR_PENALTY_CHARGE:

        DISPLAY_CURR_PENALTY_CHARGE:
            POP BX
            MOV AH, 02H
            MOV DL, BH
            ADD DL, 30H
            INT 21H
        LOOP DISPLAY_CURR_PENALTY_CHARGE

        CALL NEW_LINE
        ;Display Penalty Extra Charge Rate
        MOV AH, 09H
        LEA DX, CURR_PENALTY_EXTRA_CHARGE_RATE_MSG
        INT 21H

        ;Display Extra Rate 
        XOR AX, AX
        ADD AL, PENALTY_EXTRA_RATE
        XOR CX, CX
        READ_CURR_PENALTY_EXTRA_RATE:
            INC CX 
            DIV TEN
            MOV BX, AX

            XOR AL, AL
            PUSH AX

            CMP BL, 0
            JE END_READ_CURR_PENALTY_EXTRA_RATE

            XOR BH, BH
            MOV AX, BX
        JMP READ_CURR_PENALTY_EXTRA_RATE

        END_READ_CURR_PENALTY_EXTRA_RATE:

        DISPLAY_CURR_PENALTY_EXTRA_RATE:
            POP BX
            MOV AH, 02H
            MOV DL, BH
            ADD DL, 30H
            INT 21H
        LOOP DISPLAY_CURR_PENALTY_EXTRA_RATE

        MOV AH, 02H
        MOV DL, '%'
        INT 21H 

        CALL NEW_LINE
        ;Display Penalty Maximum Charge
        MOV AH, 09h
        LEA DX, CURR_PENALTY_MAXIMUM_CHARGE_MSG
        INT 21H
        

        XOR CX, CX
        XOR AX, AX
        MOV AL, MAX_PENALTY_CHARGE
        READ_CURR_MAX_PENALTY_CHARGE:
            INC CX 
            DIV TEN
            MOV BX, AX

            XOR AL, AL
            PUSH AX

            CMP BL, 0
            JE END_READ_CURR_MAX_PENALTY_CHARGE

            XOR BH, BH
            MOV AX, BX
        JMP READ_CURR_MAX_PENALTY_CHARGE

        END_READ_CURR_MAX_PENALTY_CHARGE:

        DISPLAY_CURR_MAX_PENALTY_CHARGE:
            POP BX
            MOV AH, 02H
            MOV DL, BH
            ADD DL, 30H
            INT 21H
        LOOP DISPLAY_CURR_MAX_PENALTY_CHARGE

        RET
    DISPLAY_CURR_PENALTY_DET ENDP

    ;JEREMY PART
    ADD_BOOK PROC
        RET
    ADD_BOOK ENDP

    ;JEREMY PART
    REMOVE_BOOK PROC
        RET
    REMOVE_BOOK ENDP

    ;GAN PART
    EDIT_BOOK PROC
        RET
    EDIT_BOOK ENDP

    ;CSTAN PART - View Borrow Details , buat pagination kalau ada masa 
    VIEW_BORROW_RECORD PROC 
        ;Point to array
        LEA SI, BOOK_NAME_ARRAY
        LEA DI, BOOK_AUTHORS

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
        
        MOV CX, 20
        XOR BX, BX
        MOV BOOK_COUNT, 0
        DISPLAY_BORROW_RECORD:
            CMP BYTE PTR [SI], '$' ; check if the book name exists
            JNE CURRENT_BORROW_RECORD 

            JMP NEXT_BORROW_RECORD
            CURRENT_BORROW_RECORD:
                PUSH BX
                ;Check if book is available to borrow
                MOV AX, BX 
                MUL USER_ID_SIZE 
                MOV BX, AX
                INC BX ; idk why need this but it works
                CMP BORROW_BY_ARRAY[BX], '$'   ;Book available to borrow if this return true
                JE BOOK_AVAILABLE_TO_BORROW
                PUSH CX ;store the value of CX to stack temporarily
                ;Display Read is not available - ez chatgpt
                mov ah, 09h          ; BIOS function to write character and attributes
                mov al, ' '          ; Character to display
                mov bh, 0            ; Page number (usually 0)
                mov bl, 02h          ; Attribute byte (foreground: yellow, background: black)
                mov CX, 80          ; Number of times to print the character
                int 10h              ; Call BIOS interrupt

                POP CX ; get back the cx value from stack
            BOOK_AVAILABLE_TO_BORROW:
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
            COUNT_BOOK_NAME_SPACES_1:
                CMP BYTE PTR [SI], '$' ; apa ini
                JE DONE_BOOK_NAME_SPACES_1
                DEC BX
                INC SI
                JMP COUNT_BOOK_NAME_SPACES_1
            DONE_BOOK_NAME_SPACES_1:
                MOV AH, 02H
                ;EXP: SI(original SI) = SI(currnet SI) - (29(total length) - BX(space length))
                ADD SI, BX 
                SUB SI, 29

            ADD_SPACES_AFTER_NAME_1:
                CMP BX, 0
                JE DONE_ADD_BOOK_NAME_SPACES_1
                MOV DL, ' '
                INT 21H
                DEC BX
            
                JMP ADD_SPACES_AFTER_NAME_1

            DONE_ADD_BOOK_NAME_SPACES_1:
            
            
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

                MOV BX, 20 ;should use 29 but since not enough space for borrow by user so i use 20 instead
                ;suspose to be 30 but 1 is for delimeter - from copilot
                
            ;Count the string length
            COUNT_AUTHOR_SPACES:
                CMP BYTE PTR [DI], '$' ; apa ini
                JE DONE_AUTHOR_SPACES
                DEC BX
                INC DI
                JMP COUNT_AUTHOR_SPACES
            DONE_AUTHOR_SPACES:
                MOV AH, 02H
                ;EXP: DI(original DI) = DI(currnet DI) - (29(total length) - BX(space length))
                ADD DI, BX 
                SUB DI, 20

            ADD_SPACES_AFTER_AUTHOR:
                CMP BX, 0
                JE DONE_ADD_AUTHOR_SPACES
                MOV DL, ' '
                INT 21H
                DEC BX
                JMP ADD_SPACES_AFTER_AUTHOR

            DONE_ADD_AUTHOR_SPACES:

                ;Delimeter
                MOV AH, 02H
                MOV DL, '|'
                INT 21H

                ;Space
                MOV AH, 02H
                MOV DL, ' '
                INT 21H

                ;Borrow By
                MOV AX, BOOK_COUNT
                MUL USER_ID_SIZE
                MOV BX , AX
                MOV AL , BORROW_BY_ARRAY[BX]
                CMP AL , '$'
                JE AVAILABLE_TO_BORROW

                MOV AH, 09H
                LEA DX, BORROW_BY_ARRAY[BX]
                INT 21H

                JMP DONE_DISPLAY_BORROW_STATUS


            AVAILABLE_TO_BORROW:
                MOV AH, 09H
                LEA DX, AVALIABLE_MSG
                INT 21H

            DONE_DISPLAY_BORROW_STATUS:
            
            CALL NEW_LINE

            ;jmp to next value
            POP BX ; get back the value of BX from stack
            INC BOOK_COUNT
            NEXT_BORROW_RECORD:

                XOR AX, AX
                MOV AL, BOOK_SIZE
                ADD SI, AX
                ADD DI, AX

                INC BX

                DEC CX
                CMP CX, 0
            JE END_DISPLAY_BORROW_RECORD

        JMP DISPLAY_BORROW_RECORD

        END_DISPLAY_BORROW_RECORD:

            CALL NEW_LINE

            ;Display red
            MOV AH,09H 
            MOV AL, ' ' 
            MOV BH, 0
            MOV BL, 02H 
            MOV CX, 5 
            INT 10H
            
            
            MOV AH, 09H 
            LEA DX, COLOR_REMARK_MSG
            INT 21H
            
            CALL NEW_LINE
            CALL SYSTEM_PAUSE
            CALL CLEAR_SCREEN
            RET
    VIEW_BORROW_RECORD ENDP

    ;Login as user
    USER_MODULES PROC
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
            RET
    USER_MODULES ENDP
    
    ;user modules
    DISPLAY_USER_MENU PROC
        MOV AH, 09H
        LEA DX, USER_MENU
        INT 21H
        RET
    DISPLAY_USER_MENU ENDP

    ;CSTAN/GAN PART
    ; 1. check if user is available to borrow, each user only allowed to borrow 1 book at a time
    ; 2. display book catalog and user choose the book to borrow, DISPLAY_BOOK_CATALOG
    ; 3. check if the book is available to borrow, book is not borrowed by other users
    ; 4. set the borrow status of the book to the user, SET_BORROW_STATUS 
    ; 5. generate the return date for the borrowed book and store it into RET_DATE_ARRAY with selected book's index(BX), GENERATE_RET_DATE
    ; 6. display the book details, return date and penalty caution message, (DISPLAY_BOOK_DETAILS, PENALTY_CAUTION_MSG)
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

            MOV AH, 09H 
            LEA DX, PENALTY_CAUTION_MSG
            INT 21h

            CALL NEW_LINE 
            CALL DISPLAY_CURR_PENALTY_DET
            CALL NEW_LINE 

            CALL NEW_LINE
            CALL SYSTEM_PAUSE
            CALL CLEAR_SCREEN
        RET
    BORROW_BOOK ENDP

    ;generate the return date for the borrowed book 
    ;return date = current date + 7 days
    ;store the return date into RET_DATE_ARRAY with format DD/MM/YYYY
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

    ;SET CURR_USER_ID to BORROW_BY_ARRAY wth specific index(selected Book, BX)
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
    
    ;CSTAN PART
    ; 1. check if user has borrowed book before proceed to return book, CHECK_USER_EXISTENCE
    ; 2. confirm with user to return the book, continue the process if Yes, GET_CONFIRMATION
    ; 3. calculate the difference between return date and current date, CALCULATE_PENALTY
    ; 4. if results in positive, calculate the panalty and ask user to proceed payment
    ; 5. if results in negative, proceed to update the borrow status(CLEAR_BORROW_STATUS)
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
            ;Clear the date in RET_DATE_ARRAY also _OPTIONAL _UPDATE
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

    ;Display selected Book's Details including return date
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

    ;return value to BX
    ;BX - negative if user not found in BORROW_BY_ARRAY else positive
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

    ;set all the 40 bytes to '$' with the given index(CURR_USER_ID, BX) in BORROW_BY_ARRAY
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

    ;Calculate the penalty based on user's returned date and system defined return date
    ;Final Penalty Charge = PENALTY_CHARGE * DIFF_DAY * [100 + PENALTY_EXTRA_RATE(if DIFF_DAY exceeds 14 day)]%
    ;Final Penalty Charge becomes 0 if the current date does not exceed the return date, DIFF_DAY is 0 at the same time
    ;the final result will be stored in PENALTY as string with 2 decimal places
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
        ;need to clear PENALTY before store the new value - _UPDATE
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
            CALL DISPLAY_PENALTY_CHARGE_DET   
            MOV HAS_PENALTY_CHARGE, 1
        NO_PENALTY_CHARGE:	
        RET
    CALCULATE_PENALTY ENDP 

    ;Display Penalty Charge Details
    ;Show how the penalty charge is calculated 
    ;Show the amount that the user needs to pay 
    DISPLAY_PENALTY_CHARGE_DET PROC 
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
        READ_PENALTY_CHARGE:
            INC CX  
            DIV TEN
            MOV BX, AX
            XOR AL, AL 
            PUSH AX

            CMP BL, 0
            JE END_READ_PENALTY_CHARGE

            XOR BH, BH
            MOV AX, BX
        JMP READ_PENALTY_CHARGE 

        END_READ_PENALTY_CHARGE:

        DISPLAY_PENALTY_CHARGE:
            POP BX
            MOV AH, 02H
            MOV DL, BH
            ADD DL, 30H
            INT 21H
        LOOP DISPLAY_PENALTY_CHARGE

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
    DISPLAY_PENALTY_CHARGE_DET ENDP

    ;Display list of books in the catalog
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

    ;UTILITY FUNCTIONS

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

    ;get integer
    GET_INTEGER PROC
        START_GET_INTEGER: 
        LEA SI, INTEGER_STRING
        ;CLEAR INTEGER BUFFER
        MOV ACTN_DIGIT, 0
        MOV INTEGER, 0
        XOR CX, CX 
        MOV CL, MAXN_DIGIT
        CLEAR_INTEGER_BUFFER:
            MOV AL, '$'
            MOV [SI], AL
            INC SI
        LOOP CLEAR_INTEGER_BUFFER 

        XOR AX, AX
        MOV AL, MAXN_DIGIT
        SUB SI, AX

        ;GET INTEGER
        MOV AH, 0AH
        LEA DX, GET_INTEGER_STRING
        INT 21H

        ;VALIDATE
        XOR AX, AX
        MOV CL, ACTN_DIGIT
        CHECK_INTEGER:
            MOV AL, [SI]
            CMP AL, '0'
            JB INVALID_INTEGER
            CMP AL, '9'
            JA INVALID_INTEGER
            INC SI 
        LOOP CHECK_INTEGER

        XOR AX, AX
        MOV AL, ACTN_DIGIT

        SUB SI, AX

        XOR BX, BX  
        XOR CX, CX
        MOV CL, ACTN_DIGIT 
        READ_INTEGER:
            XOR AX, AX 
            MOV AL, [SI]
            SUB AL, 30H
            DIV TEN
            MOV BX, AX

            XOR AL, AL ; clear integral part and push remainder only to stack
            PUSH AX 
            INC SI
        LOOP READ_INTEGER
        
        END_READ_INTEGER:


        ;CONVERT TO INTEGER
        MOV BX, 1
        MOV CL, ACTN_DIGIT
        CONVERT_TO_INTEGER: 
            POP AX  
            MOV AL, AH
            XOR AH, AH
            

            MUL BX
            ADD INTEGER, AX

            MOV AX, BX 
            MUL TEN 
            MOV BX, AX 
        LOOP CONVERT_TO_INTEGER
        RET

        INVALID_INTEGER: 
            CALL NEW_LINE 
            MOV AH, 09H 
            LEA DX, INVALID_INPUT
            INT 21H 
            CALL NEW_LINE 
            JMP START_GET_INTEGER

    GET_INTEGER ENDP 

    ;for menu choice
    ;User BX to set the integer range (from 1 to BX)
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

    ;Get Y or N
    ;Return value to BL
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

END MAIN