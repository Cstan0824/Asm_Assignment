.MODEL SMALL
.STACK 100

.DATA
    ;MESSAGE
    NL DB 0DH, 0AH, '$'
    CHOICE_MSG DB "Enter your choice: $"
    INVALID_INPUT DB "Invalid Input! Please try again. $"
    COLOR_REMARK_MSG DB "Green: Book is not available to borrow$"
    OVERTIME_COLOR_REMARK_MSG DB "Red: Book has not been returned more than 30 days from return date$"
    SYSTEM_PAUSE_MSG DB "Press any key to continue...$"
    AVALIABLE_MSG DB "Available$"

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
    PENALTY_CHARGE_MSG DB "Enter the new penalty charge (RM 1 - RM 5): $"
    PENALTY_EXTRA_CHARGE_RATE_MSG DB "Enter the new penalty extra charge rate (extra 1% - 10%): $"
    PENALTY_MAXIMUM_CHARGE_MSG DB "Enter the new penalty maximum charge (RM 80 - RM 100): $"

    CURR_PENALTY_CHARGE_MSG DB "Current penalty charge (RM/DAY): RM $"
    CURR_PENALTY_EXTRA_CHARGE_RATE_MSG DB "Penalty extra rate after 14 days (%): extra $"
    CURR_PENALTY_MAXIMUM_CHARGE_MSG DB "Current penalty maximum charge: RM $"


    PENALTY_CHARGE DB 5
    HAS_PENALTY_CHARGE DB 0 ; 0 - no penalty charge, 1 - has penalty charge
	PENALTY_EXTRA_RATE DB 10 ; extra 10% charge if the diff days exceed 14 days
    MAX_PENALTY_CHARGE DB 100
	PENALTY DB 7 DUP("$") ; stores the penalty charge - 100.00 (maximum)


.CODE
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX
        JMP START_ADMIN_MENU
        START_MENU: 
            ;MAIN MENU
            JMP FIN 
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
            JMP START_MENU

        FIN:
        MOV AX, 4C00H
        INT 21H
    MAIN ENDP


    DISPLAY_ADMIN_MENU PROC 
        MOV AH, 09H
        LEA DX, ADMIN_MENU
        INT 21H
        RET
    DISPLAY_ADMIN_MENU ENDP

    DISPLAY_PENALTY_MENU PROC
        MOV AH, 09H
        LEA DX, PENALTY_MENU
        INT 21H
        RET
    DISPLAY_PENALTY_MENU ENDP

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
        ;Point to array
        LEA SI, BOOK_NAME_ARRAY
        LEA DI, BOOK_AUTHORS

        ;CHECK IF THERES EMPTY SLOT
        MOV CX, 20                                      ;loop 20 books
        MOV BOOK_ID_POSITION, 1
        XOR BX, BX                                      ;reset BX
            
        CHECK_EMPTY_SLOT:
            CMP byte ptr [SI], '$'                      ;check if book name is empty
            JNE SKIP_CHECK_NEXT                         ;if not empty, skip to next slot
            CMP byte ptr [DI], '$'                      ;check if book author is empty
            JE ADD_BOOK_DETAILS                         ;if empty, add new book details
    
            SKIP_CHECK_NEXT:
            MOV AX, 0                                   ;reset AX
            MOV AL, BOOK_SIZE                           
            ADD SI, AX                                  ;move to next book name
            ADD DI, AX                                  ;move to next book author
            INC BOOK_ID_POSITION
        LOOP CHECK_EMPTY_SLOT

        JMP FULL_ERROR_MSG

        ADD_BOOK_DETAILS:
            INPUT_NEW_BOOKNAME:
                CALL NEW_LINE
                MOV AH, 09H
                LEA DX, PROMPT_INPUT_BOOKNAME_P1             ;prompt user to input new book name
                INT 21H

                MOV AH, 02h
                MOV DL, '$'
                INT 21H

                MOV AH, 09H
                LEA DX, PROMPT_INPUT_BOOKNAME_P2
                int 21h             

                MOV AH, 0AH
                LEA DX, NEW_BOOKNAME_INPUT              ;store user input to NEW_BOOKNAME_INPUT
                INT 21H

                LEA BX, NEW_BOOKNAME

                ;check if the input is empty
                MOV AL, byte ptr [BX]
                CMP AL, 0DH
                JE TEMP_NEW_NAME_ERROR
            
                MOV CX, 0                               ;reset CX
                XOR AX, AX
                MOV CL, INPUT_BOOKNAME_SIZE             ;store the actual input size to CL
                VALIDATE_BOOKNAME_INPUT:
                    MOV AL, BYTE PTR [BX]
                    CMP AL, '$'
                    JE TEMP_NEW_NAME_ERROR
                    INC BX
                LOOP VALIDATE_BOOKNAME_INPUT

                ;IF NO ERRORS
                LEA BX, NEW_BOOKNAME
                MOV CX, 0 
                MOV CL, INPUT_BOOKNAME_SIZE 
                SAVE_TO_BOOKNAME_ARRAY:
                    MOV AL, byte ptr [BX]       
                    MOV [SI], AL                        ;store the input to BOOK_NAME_ARRAY
                    INC SI
                    INC BX
                LOOP SAVE_TO_BOOKNAME_ARRAY
        
            CALL NEW_LINE

            INPUT_NEW_BOOKAUTHORS:
                
                MOV AH, 09H
                LEA DX, PROMPT_INPUT_BOOKAUTHOR_P1          ;prompt user to input new book author
                INT 21H

                MOV AH, 02h
                MOV DL, '$'
                INT 21H

                MOV AH, 09H
                LEA DX, PROMPT_INPUT_BOOKNAME_P2    
                int 21h

                MOV AH, 0AH
                LEA DX, NEW_BOOKAUTHORS_INPUT           ;store user input to NEW_BOOKAUTHORS_INPUT
                INT 21H

                LEA BX, NEW_BOOKAUTHORS 

                ;check if the input is empty
                MOV AL, byte ptr [BX]
                CMP AL, 0DH
                JE TEMP_NEW_NAME_ERROR

                MOV CX, 0                               ;reset CX
                MOV CL, INPUT_BOOKAUTHORS_SIZE          ;store the actual input size to CL

                VALIDATE_BOOKAUTHORS_INPUT:
                    MOV AL, BYTE PTR [BX]
                    CMP AL, '$'
                    JE TEMP_NEW_NAME_ERROR
                    INC BX
                LOOP VALIDATE_BOOKAUTHORS_INPUT

                ;IF NO ERRORS
                LEA BX, NEW_BOOKAUTHORS
                MOV CX, 0
                MOV CL, INPUT_BOOKAUTHORS_SIZE
                SAVE_TO_BOOKAUTHORS_ARRAY:
                    MOV AL, byte ptr [BX]       
                    MOV [DI], AL                        ;store the input to BOOK_AUTHORS
                    INC DI
                    INC BX
                LOOP SAVE_TO_BOOKAUTHORS_ARRAY
            CALL NEW_LINE
            CALL NEW_LINE
            CALL NEW_LINE
            JMP DISPLAY_NEW_BOOK

            TEMP_NEW_NAME_ERROR:
                JMP NEW_NAME_ERROR

            DISPLAY_NEW_BOOK:
                MOV AH, 09H
                LEA DX, PROMPT_NEW_BOOKNAME             ;display new book name  
                INT 21H
                MOV AH, 09H
                LEA DX, NEW_BOOKNAME
                INT 21H
                
                CALL NEW_LINE

                MOV AH, 09H
                LEA DX, PROMPT_NEW_BOOKAUTHOR           ;display new book author
                INT 21H
                MOV AH, 09H
                LEA DX, NEW_BOOKAUTHORS
                INT 21H

                CALL NEW_LINE
                CALL NEW_LINE
                LEA DX, PROMPT_ADDED_BOOK               ;display new book added to catalog
                INT 21H

            CALL NEW_LINE
            CALL NEW_LINE
            CALL SYSTEM_PAUSE
            JMP QUIT_ADD_BOOK

        FULL_ERROR_MSG:
            CALL NEW_LINE
            MOV AH, 09H
            LEA DX, ADD_UNAVAILABLE                          ;display error message
            INT 21H
            CALL NEW_LINE
            CALL SYSTEM_PAUSE
            JMP QUIT_ADD_BOOK

        NEW_NAME_ERROR:
            XOR AX, AX
            MOV AL, BOOK_ID_POSITION
            DEC AL
            MOV CL, BOOK_SIZE
            MUL CL
            LEA SI, BOOK_NAME_ARRAY
            ADD SI, AX

            MOV CX, 30
            REMOVE_ADDED_NEW_BOOKNAME:
                MOV AL, '$'
                MOV [SI], AL
                INC SI
            LOOP REMOVE_ADDED_NEW_BOOKNAME

            XOR AX, AX
            MOV AL, BOOK_ID_POSITION
            DEC AL
            MOV CL, BOOK_SIZE
            MUL CL
            LEA SI, BOOK_AUTHORS
            ADD SI, AX

            MOV CX, 30
            REMOVE_ADDED_NEW_BOOKAUTHOR:
                MOV AL, '$'
                MOV [SI], AL
                INC SI
            LOOP REMOVE_ADDED_NEW_BOOKAUTHOR

            CALL NEW_LINE
            MOV AH, 09H
            LEA DX, INVALID_INPUT
            INT 21H
            CALL NEW_LINE
            CALL SYSTEM_PAUSE

            JMP QUIT_ADD_BOOK

        QUIT_ADD_BOOK:
            RET
    ADD_BOOK ENDP

    ;JEREMY PART
    REMOVE_BOOK PROC

        CALL DISPLAY_BOOK_CATALOG
        CALL NEW_LINE

        get_book_id:
            ; Prompt user to enter Book ID
            mov ah, 09h
            lea dx, PROMPT_INPUT_DELETE_BOOKID
            int 21h

            mov ah, 0Ah
            lea dx, DELETE_BOOKID_INPUTBUFFER
            int 21H

            
        process_input:
            lea si, DELETE_BOOKID_BUFFER
            xor ax, ax

            mov al, byte ptr [si]               ; Get the first digit  
            cmp al, 0Dh                         ; Check if Enter was pressed
            je temp_invalid_input               ; If Enter was pressed too early, it's invalid input
            sub al, 30H                         ; Convert ASCII '0'-'9' to 0-9
            mov bl, al                          ; Store the first digit

            inc si                              ; Move to the next character
            mov al, byte ptr [si]               ; Get the next character (second digit or Enter)
            cmp al, 0Dh                         ; Check if Enter was pressed for single digit
            je one_digit_book_id                ; If Enter, we have a single-digit input

            sub al, 30H                         ; Convert ASCII '0'-'9' to 0-9
            mov bh, al                          ; Store the second digit in bh

            ; Combine the digits into a two-digit number
            xor ax, ax
            mov al, bl
            mul TEN
            add al, bh                          ; Combine the digits into a two-digit number
            jmp process_input_into_bookid        ; Skip the single digit case

        one_digit_book_id:
            ; If it's a single digit, store it in al
            xor ax, ax                      ; Clear ax
            mov al, bl                      ; Store the single digit in al

        process_input_into_bookid:
            ; Validate the range (1-20)
            cmp al, 1                           ; Check if Book ID is at least 1
            jl temp_invalid_input               ; Invalid if less than 1
            cmp al, 20                          ; Check if Book ID is less than or equal to 20
            jg temp_invalid_input               ; Invalid if greater than 20
            
            mov BOOK_ID_POSITION, al            ; Store the valid Book ID
            jmp check_book_availability         ; Continue to check the availability of the book


        temp_invalid_input:
            ; If invalid input, jump to invalid input handler
            jmp invalid_bookid_input

        ;if valid input, check if book is borrowed
        check_book_availability:
            ;check if the book name is not empty
            check_book_name:
            mov al, BOOK_ID_POSITION
            dec al                  ; Book ID starts at 1, so subtract 1 to get the correct index
            mov cl, BOOK_SIZE       ; 30 bytes for each book name
            mul cl                  ; al = al * 30
            lea SI, BOOK_NAME_ARRAY     
            add SI, ax              ; Point to the correct book name

            cmp byte ptr [SI], '$'
            je temp_no_book_found        ; If book name is empty, the book does not exist
            jmp check_borrow_status

            temp_no_book_found:
                jmp no_book_found

            ; Check if the book is borrowed
            check_borrow_status:
            mov al, BOOK_ID_POSITION
            dec al                  ; Book ID starts at 1, so subtract 1 to get the correct index
            mov cl, USER_ID_SIZE    ; 40 bytes for each borrow status
            mul cl                  ; al = al * 40
            lea SI, BORROW_BY_ARRAY
            add SI, ax              ; Point to the correct borrow status

            cmp byte ptr [SI], '$'
            jne temp_book_borrowed       ; If the book is borrowed, display error message
            jmp display_book_information

        temp_book_borrowed:
            jmp book_borrowed

        display_book_information:
            call new_line
            CALL NEW_LINE

            ; Display book name
            mov ah, 09h
            lea dx, BOOK_NAME
            int 21h

            ;display space
            mov ah, 02h
            mov dl, 20h
            int 21h

            mov al, BOOK_ID_POSITION
            dec al
            mov cl, 30        ; 30 bytes for each book name/author
            mul cl            ; al = al * 30
            lea SI, BOOK_NAME_ARRAY
            add SI, ax        ; Point to the correct book name

            mov cx, 30
            display_book_name:
                mov ah, 02H
                cmp byte ptr[SI], '$'
                je skip_next_bn
                mov dl, byte ptr[SI]
                int 21H
                skip_next_bn:
                    inc SI
            loop display_book_name

            call new_line

            ; Display book author
            mov ah, 09h
            lea dx, AUTHOR
            int 21h

            ;display space
            mov ah, 02h
            mov dl, 20h
            int 21h

            mov al, BOOK_ID_POSITION
            dec al
            mov cl, 30
            mul cl
            lea SI, BOOK_AUTHORS
            add SI, ax        ; Point to the correct author

            mov cx, 30
            display_book_author:
                mov ah, 02H
                cmp byte ptr[SI], '$'
                je skip_next_ba
                mov dl, byte ptr[SI]
                int 21H
                skip_next_ba:
                    inc SI
            loop display_book_author

            ; Display new line
            CALL NEW_LINE
            CALL NEW_LINE

            jmp delete_confirmation

        delete_confirmation:
            ; Print confirmation message
            mov ah, 09h
            lea dx, PROMPT_DELETE_BOOK_CONFIRMATION
            int 21h

            ; Get user input
            mov ah, 01h
            int 21h

            cmp al, 'Y'
            je execute_delete
            cmp al, 'y'
            je execute_delete
            cmp al, 'N'
            jmp end_delete_book
            cmp al, 'n'
            jmp end_delete_book

            CALL NEW_LINE
            mov ah, 09h
            lea dx, INVALID_INPUT
            jmp delete_confirmation

        execute_delete:
            CALL NEW_LINE
            CALL NEW_LINE
            ; Delete book: replace book name and author with '$'
            mov al, BOOK_ID_POSITION
            dec al
            mov cl, 30        ; 30 bytes for each book name/author
            mul cl            ; al = al * 30
            lea SI, BOOK_NAME_ARRAY
            add SI, ax        ; Point to the correct book name

            ; Replace book name with '$'
            mov cx, 30
            del_name:
                mov ah, 02H
                cmp byte ptr[SI], '$'
                je delete_next_alphabet
                mov dl, byte ptr[SI]
                int 21H
                delete_next_alphabet:
                    mov byte ptr [SI], '$'
                    inc SI
            loop del_name

            ;print written by
            mov ah, 02h
            mov dl, 20h                 ; Print a space
            int 21h

            mov ah, 09h
            lea dx, WRITTEN_BY          ; Print "written by"
            int 21h

            ; Replace author with '$'
            mov al, BOOK_ID_POSITION
            dec al
            mov cl, 30
            mul cl
            lea SI, BOOK_AUTHORS
            add SI, ax        ; Point to the correct author

            mov cx, 30
            del_author:
                mov ah, 02H
                cmp byte ptr[SI], '$'
                je delete_next_alphabet1
                mov dl, byte ptr[SI]
                int 21H
                delete_next_alphabet1:
                    mov byte ptr [SI], '$'
                    inc SI
            loop del_author

            ; Print success message
            lea dx, PROMPT_BOOK_ISDELETED
            mov ah, 09h
            int 21h

            ; Print new line
            CALL NEW_LINE
            CALL SYSTEM_PAUSE
            jmp end_delete_book

        no_book_found:
            ; Print error message if book is not found
            lea dx, PROMPT_BOOK_NOT_FOUND
            mov ah, 09h
            int 21h

            ; Print new line
            CALL NEW_LINE
            CALL SYSTEM_PAUSE
            CALL NEW_LINE
            jmp GET_BOOK_ID

        book_borrowed:
            ; Print error message if book is borrowed
            lea dx, PROMPT_BOOK_NOT_AVAILABLE
            mov ah, 09h
            int 21h

            ; Print new line
            CALL NEW_LINE
            CALL SYSTEM_PAUSE
            jmp end_delete_book

        invalid_bookid_input:
            ; Print error message for invalid input
            mov ah, 09h
            lea dx, PROMPT_BOOKID_ERROR
            int 21h

            ; Print new line
            CAll NEW_LINE
            CALL SYSTEM_PAUSE
            CALL NEW_LINE
            jmp get_book_id

        end_delete_book:
            RET
    REMOVE_BOOK ENDP

    ;JEREMY PART
    REMOVE_OVERTIME_BOOK PROC

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

        RET
    REMOVE_OVERTIME_BOOK ENDP

    ;GAN PART
    EDIT_BOOK PROC

        EDIT_BOOK_START:

            CALL DISPLAY_BOOK_CATALOG
            CALL NEW_LINE

            MOV AH, 09H
            LEA DX, PROMPT_INPUT_BOOKID
            INT 21H

            MOV AH, 0AH
            LEA DX, EDIT_BOOKID_INPUT
            INT 21H

            MOV AL , EDIT_BOOKID_INPUT[1]

            CMP AL , 1 
            JE SINGLE_BOOK_ID

            CMP AL , 2
            JE DOUBLE_BOOK_ID

            JMP EDIT_BOOK_START

            SINGLE_BOOK_ID:
                MOV BL , EDIT_BOOKID_INPUT[2]         ;GET THE FIRST DIGIT 
                SUB BL , "0"                          ;CONVERT ASCII TO INTEGER
                JMP PROCESS_EDIT_BOOK                 ;JUMP TO PROCESS_EDIT_BOOK

            DOUBLE_BOOK_ID:
                MOV AL , EDIT_BOOKID_INPUT[2]        ; Get the first digit
                SUB AL, '0'                          ; Convert ASCII to integer
                MOV BL, AL                           ; Store first digit in BL

                MOV AL,  EDIT_BOOKID_INPUT[3]       ; Get the second digit
                SUB AL, '0'                         ; Convert ASCII to integer
                MOV BH, AL                          ; Store second digit in BH

                ;COBINATION OF TWO DIGIT    
                MOV AL, BL                          ; Move the first digit to AL
                MOV CX, 10                          ; Move 10 to CX
                MUL CX                              ; Multiply AL by CX, MULTIPLY BECAUSE WE WANT TO GET THE ACTUAL VALUE
                ADD AL, BH                          ; Add BH to AL
                MOV BL, AL                          ; Store the result in BL

                JMP PROCESS_EDIT_BOOK   

        PROCESS_EDIT_BOOK:
            MOV SI , 0 
            MOV CX , 20

        SEARCH_BOOK:
            CMP BOOK_ID_ARRAY[SI] , BL
            JE BOOK_FOUND
            INC SI
        LOOP SEARCH_BOOK

                CALL NEW_LINE 

                MOV AH, 09H
                LEA DX, BOOKNOTFOUND
                INT 21H

                JMP EDIT_BOOK_START

            BOOK_FOUND:
                CALL NEW_LINE

                ;CHECK WHETHER THE BOOK IS AVAILABLE TO EDIT AVOID ANY NOT YET ADDED BOOK CAN BE EDIT
                LEA DI , BOOK_NAME_ARRAY
                MOV AX , SI
                MUL BOOK_SIZE
                ADD DI , AX

                CMP BYTE PTR [DI] , '$'
                JE BOOK_NOT_EXISTED_YET

                MOV AH, 09H
                LEA DX, EDIT_FIELD_PROMPT
                INT 21H

                MOV AH, 01H
                INT 21H
                MOV EDIT_FIELD_CHOICE, AL

                CMP EDIT_FIELD_CHOICE, 'N'
                JE EDIT_BOOK_NAME

                CMP EDIT_FIELD_CHOICE, 'A'
                JE HOLD_EDIT_BOOK_AUTHOR

                CALL NEW_LINE 

                MOV AH, 09H
                LEA DX, EDIT_UNAVAILABLE_CHOICE
                INT 21H

                JMP BOOK_FOUND            ;CAN ALSO RETURN TO BOOK FOUND

            HOLD_EDIT_BOOK_AUTHOR:
                JMP EDIT_BOOK_AUTHOR    

            BOOK_NOT_EXISTED_YET:
                CALL NEW_LINE

                MOV AH, 09H
                LEA DX, BOOKNOTFOUND
                INT 21H

                JMP EDIT_BOOK_START
            
            EDIT_BOOK_NAME:
                CALL NEW_LINE

                MOV AH, 09H
                LEA DX, PROMPT_EDIT_BOOKNAME
                INT 21H

                MOV AH, 0AH
                LEA DX, EDITED_NEW_BOOKNAME
                INT 21H

                MOV AL, EDITED_NEW_BOOKNAME[1]   ; Length of the entered string
                CMP AL, 0                        ; Check if the length is 0
                JE INVALID_BOOK_NAME_EDIT             ; If 0, jump to the error handler

                LEA BX  , EDITED_NEW_BOOKNAME[2]
                MOV CL , EDITED_NEW_BOOKNAME[1]

                VALIDATE_BOOK_NAME:
                    MOV AL , [BX]
                    CMP AL , '$'
                    JE INVALID_BOOK_NAME_EDIT
                    INC BX
                    DEC CL 
                JNZ VALIDATE_BOOK_NAME



                MOV AX , SI 
                MUL BOOK_SIZE      

                LEA DI , BOOK_NAME_ARRAY
                ADD DI , AX

                ;CLEAR THE BOOK NAME 
                MOV CX , 30
                CLEAR_BOOKNAME:
                    MOV BYTE PTR [DI] , '$'
                    INC DI
                LOOP CLEAR_BOOKNAME

                ;TO GET BACK THE ORIGINAL PLACE FOR EDIT
                SUB DI , 30

                ;PERFORM EDIT BOOK NAME
                LEA SI , EDITED_NEW_BOOKNAME[2]

                XOR CX , CX
                MOV CL , EDITED_NEW_BOOKNAME[1]
                REPLACE_BOOKNAME:
                    MOV AL , [SI]
                    MOV [DI] , AL
                    INC SI
                    INC DI
                LOOP REPLACE_BOOKNAME

                RET

            INVALID_BOOK_NAME_EDIT:
                ; Handle invalid book name (empty or contains '$')
                CALL NEW_LINE
                MOV AH, 09H
                LEA DX, INVALID_INPUT
                INT 21H
                JMP EDIT_BOOK_NAME                ; Re-prompt the user to enter a valid name

            EDIT_BOOK_AUTHOR:
                CALL NEW_LINE

                MOV AH, 09H
                LEA DX, PROMPT_EDIT_AUTHOR
                INT 21H

                MOV AH, 0AH
                LEA DX, EDITED_NEW_AUTHOR
                INT 21H

                MOV AL, EDITED_NEW_AUTHOR[1]   ; Length of the entered string
                CMP AL, 0                        ; Check if the length is 0
                JE INVALID_AUTHOR_EDIT             ; If 0, jump to the error handler

                LEA BX  , EDITED_NEW_AUTHOR[2]
                MOV CL , EDITED_NEW_AUTHOR[1]

                VALIDATE_AUTHOR:
                    MOV AL , [BX]
                    CMP AL , '$'
                    JE INVALID_AUTHOR_EDIT
                    INC BX
                    DEC CL
                JNZ VALIDATE_AUTHOR



                MOV AX , SI
                MUL BOOK_SIZE

                LEA DI , BOOK_AUTHORS
                ADD DI , AX

                ;CLEAR THE BOOK AUTHOR
                MOV CX , 30
                CLEAR_BOOKAUTHOR:
                    MOV BYTE PTR [DI] , '$'
                    INC DI
                LOOP CLEAR_BOOKAUTHOR

                ;TO GET BACK THE ORIGINAL PLACE FOR EDIT
                SUB DI , 30

                ;PERFORM EDIT BOOK AUTHOR
                LEA SI , EDITED_NEW_AUTHOR[2]

                XOR CX , CX
                MOV CL , EDITED_NEW_AUTHOR[1]
                REPLACE_BOOK_AUTHOR:
                    MOV AL , [SI]
                    MOV [DI] , AL
                    INC SI
                    INC DI
                LOOP REPLACE_BOOK_AUTHOR

                RET

                INVALID_AUTHOR_EDIT:
                CALL NEW_LINE

                MOV AH, 09H
                LEA DX, INVALID_INPUT
                INT 21H

                JMP EDIT_BOOK_AUTHOR              ; Re-prompt the user to enter a valid author name

    EDIT_BOOK ENDP

    ;TESTING
    FINISH PROC
        MOV AH  , 4CH
        INT 21H
    FINISH ENDP

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