.MODEL SMALL
.STACK 100

.DATA
    ;Animation
    START_BOOK_FRAME db "   |____________________________________________________|", 0DH, 0AH
    db "   | __     __   ____   ___ ||  ____    ____     _  __  |", 0DH, 0AH
    db "  ||  |__ |--|_| || |_|   |||_|**|*|__|+|+||___| ||  | |", 0DH, 0AH
    db "  ||==|^^||--| |=||=| |=*=||| |~~|~|  |=|=|| | |~||==| |", 0DH, 0AH
    db "  ||  |##||  | | || | |JRO|||-|  | |==|+|+||-|-|~||__| |", 0DH, 0AH
    db "  ||__|__||__|_|_||_|_|___|||_|__|_|__|_|_||_|_|_||__|_|", 0DH, 0AH
    db "  ||_______________________||__________________________|", 0DH, 0AH
    db "  | _____________________  ||      __   __  _  __    _ |", 0DH, 0AH
    db "  ||=|=|=|=|=|=|=|=|=|=|=| __..\/ |  |_|  ||#||==|  / /|", 0DH, 0AH
    db "  || | | | | | | | | | | |/\ \  \\|++|=|  || ||==| / / |", 0DH, 0AH
    db "  ||_|_|_|_|_|_|_|_|_|_|_/_/\_.___\__|_|__||_||__|/_/__|", 0DH, 0AH
    db "  |___________________ /\~(",1,")/(",1,")~//\ _________________|", 0DH, 0AH
    db "  | __   __    _  _     \_  (_ .  _/ _    ___     _____|", 0DH, 0AH
    db "  ||~~|_|..|__| || |_ _   \ //\\ /  |=|__|~|~|___| | | |", 0DH, 0AH
    db "  ||--|+|^^|==|1||2| | |__/\ __ /\__| |==|x|x|+|+|=|=|=|", 0DH, 0AH
    db "  ||__|_|__|__|_||_|_| /  \ \  / /  \_|__|_|_|_|_|_|_|_|", 0DH, 0AH
    db "  |_________________ _/    \/\/\/    \_ _______________|", 0DH, 0AH
    db "  | _____   _   __  |/      \../      \|  __   __   ___|", 0DH, 0AH
    db "  ||_____|_| |_|##|_||   |   \/ __|   ||_|==|_|++|_|-|||", 0DH, 0AH
    db "  ||______||=|#|--| |\   \   o    /   /| |  |~|  | | |||", 0DH, 0AH
    db "  ||______||_|_|__|_|_\   \  o   /   /_|_|__|_|__|_|_|||", 0DH, 0AH
    db "  |_________ __________\___\____/___/___________ ______|", 0DH, 0AH
    db "  |__   _    /    WELCOME TO             c[_]   / _ _ _|", 0DH, 0AH
    db "  |__    _  /    ________     ______           /| _ _ _|", 0DH, 0AH
    db "  |\ \  |=|/   //    /| //   /  /  / |        / ||%|%|%|", 0DH, 0AH
    db "  | \/\ |*/  .//____//.//   /__/__/ (_)      /  ||=|=|=|", 0DH, 0AH
    db "__|  \/\|/   /(____|/ //    LIBARY SYSTEM ",1," /  /||~|~|~|__", 0DH, 0AH
    db "  |___\_/   /________//   ________         /  / ||_|_|_|", 0DH, 0AH
    db "  |___ /   (|________/   |\_______\       /  /| |______|", 0DH, 0AH
    db "      / ",169,"ASCII ART","       \|________)     /  / | ", "$"

    END_BOOK_FRAME db "   |____________________________________________________|", 0DH, 0AH
    db "   | __     __   ____   ___ ||  ____    ____     _  __  |", 0DH, 0AH
    db "  ||  |__ |--|_| || |_|   |||_|**|*|__|+|+||___| ||  | |", 0DH, 0AH
    db "  ||==|^^||--| |=||=| |=*=||| |~~|~|  |=|=|| | |~||==| |", 0DH, 0AH
    db "  ||  |##||  | | || | |JRO|||-|  | |==|+|+||-|-|~||__| |", 0DH, 0AH
    db "  ||__|__||__|_|_||_|_|___|||_|__|_|__|_|_||_|_|_||__|_|", 0DH, 0AH
    db "  ||_______________________||__________________________|", 0DH, 0AH
    db "  | _____________________  ||      __   __  _  __    _ |", 0DH, 0AH
    db "  ||=|=|=|=|=|=|=|=|=|=|=| __..\/ |  |_|  ||#||==|  / /|", 0DH, 0AH
    db "  || | | | | | | | | | | |/\ \  \\|++|=|  || ||==| / / |", 0DH, 0AH
    db "  ||_|_|_|_|_|_|_|_|_|_|_/_/\_____\__|_|__||_||__|/_/__|", 0DH, 0AH
    db "  |____________________________________________________|", 0DH, 0AH
    db "  | __   __    _  _     ____    _         ___     _____|", 0DH, 0AH
    db "  ||~~|_|..|__| || |_ _|SEJ |__| |__|=|__|~|~|___| | | |", 0DH, 0AH
    db "  ||--|+|^^|==|1||2| | |ARAH|  |_|  | |==|x|x|+|+|=|=|=|", 0DH, 0AH
    db "  ||__|_|__|__|_||_|_|_|____|__|_|__|_|__|_|_|_|_|_|_|_|", 0DH, 0AH
    db "  |____________________________________________________|", 0DH, 0AH
    db "  | _____   _   __   __   ___   __   __   __   __   ___|", 0DH, 0AH
    db "  ||_____|_| |_|##|_|~~| | @=|_|  | |  |_|==|_|++|_|-|||", 0DH, 0AH
    db "  ||______||=|#|--| |  | | @ | |  |_|  | |  |~|  | | |||", 0DH, 0AH
    db "  ||______||_|_|__|_|__|_|___|_|__|_|__|_|__|_|__|_|_|||", 0DH, 0AH
    db "  |_________ _______________________ ___________ ______|", 0DH, 0AH
    db "  |__   _    /    BYE BYE !!             c[_]   / _ _ _|", 0DH, 0AH
    db "  |__    _  /    ________     ______           /| _ _ _|", 0DH, 0AH
    db "  |\ \  |=|/   //    /| //   /  /  / |        / ||%|%|%|", 0DH, 0AH
    db "  | \/\ |*/  .//____//.//   /__/__/ (_)      /  ||=|=|=|", 0DH, 0AH
    db "__|  \/\|/   /(____|/ // C U NEXT TIME ",1,"/  /||~|~|~|__", 0DH, 0AH
    db "  |___\_/   /________//   ________         /  / ||_|_|_|", 0DH, 0AH
    db "  |___ /   (|________/   |\_______\       /  /| |______|", 0DH, 0AH
    db "      / ",169,"ASCII ART","       \|________)     /  / | ", "$"

    ;MENU
    MAIN_MENU   DB " | 1. ADMIN ", 28 DUP(" ") , "|", 0DH, 0AH
                DB " | 2. USER ", 29 DUP(" ") , "|", 0DH, 0AH
                DB " | 3. EXIT ", 29 DUP(" ") , "|"
                DB "$"

    ADMIN_MENU  DB " | 1. Add Book ", 25 DUP(" ") , "|", 0DH, 0AH
                DB " | 2. Edit Book ", 24 DUP(" ") , "|", 0DH, 0AH
                DB " | 3. Delete Book ", 22 DUP(" ") , "|", 0DH, 0AH
                DB " | 4. View Book[Borrow Record] ", 9 DUP(" ") , "|", 0DH, 0AH
                DB " | 5. Delete Overtime Book ", 13 DUP(" ") , "|", 0DH, 0AH
                DB " | 6. Penalty Management ", 15 DUP(" ") , "|", 0DH, 0AH
                DB " | 7. Logout ", 27 DUP(" "), "|"
                DB "$"

    USER_MENU   DB " | 1. Borrow Book ",22 DUP(" "), "|", 0DH, 0AH
                DB " | 2. Return Book ",22 DUP(" "), "|", 0DH, 0AH
                DB " | 3. Logout ", 27 DUP(" "), "|"
                DB "$"

    PENALTY_MENU    DB " | 1. Change Penalty Charge ", 12 DUP(" "), "|", 0DH, 0AH
                    DB " | 2. Change Penalty Extra Charge Rate ", 1 DUP(" "), "|", 0DH, 0AH
                    DB " | 3. Change Penalty Maximum Charge ", 4 DUP(" "), "|", 0DH, 0AH
                    DB " | 4. Back ", 29 DUP(" ") , "|"
                    DB "$"

    LOGIN_MENU  DB " | 1. LOGIN", 29 DUP(" "), "|", 0DH, 0AH
                DB " | 2. Back to Menu", 22 DUP(" "), "|"
                DB "$"

    ADMIN_LOGIN_MENU DB " | 1. LOGIN", 29 DUP(" "), "|", 0DH, 0AH
                    DB " | 2. Back to Menu", 22 DUP(" "), "|"
                    DB "$"

    USER_LOGIN_MENU DB " | 1. LOGIN", 29 DUP(" "), "|", 0DH, 0AH
                    DB " | 2. Register Account", 18 DUP(" "), "|",0DH, 0AH
                    DB " | 3. Back to Menu", 22 DUP(" "), "|"
                    DB "$"
            

    NL DB 0AH,0DH,"$"
	LINE DB 0AH,0DH,"  ====================================== ",0DH, 0AH,"$"
	DISPLAY_WELCOME_MAINPAGE DB 0DH, 0AH,"  Welcome to our library system!",0DH, 0AH,"$"

	;---Admin Menu
	DISPLAY_WELCOME_ADMINPAGE DB 0DH, 0AH," Welcome to Admin page!",0DH, 0AH,"$"
	;---User Menu
	DISPLAY_WELCOME_USERPAGE DB 0DH, 0AH,"  Welcome to User page!",0DH, 0AH,"$"

	;---login page displays
	DISPLAY_LOGIN DB 0DH, 0AH,"LOGIN$"
	DISPLAY_ENTER_USERNAME DB 0DH, 0AH,"  Please enter your username: $"
	DISPLAY_ENTER_PASSWORD DB 0DH, 0AH,"  Please enter your password: $"
	DISPLAY_LOGINFAIL DB 0DH, 0AH,"  The username or password u entered might be wrong, please try again!",0DH, 0AH,"$"
	DISPLAY_LOGINS DB 0DH, 0AH,"  Login Successfull!",0DH, 0AH,"$"

	

    ;MESSAGE
    CHOICE_MSG DB " Enter your choice: $"
    INVALID_INPUT DB " Invalid Input! Please try again. $"
    COLOR_REMARK_MSG DB " Green: Book is not available to borrow$"
    OVERTIME_COLOR_REMARK_MSG DB " Red: Book has not been returned more than 30 days from return date$"
    SYSTEM_PAUSE_MSG DB " Press any key to continue...$"
    AVALIABLE_MSG DB "Available$"
    ;---exit
	DISPLAY_EXIT DB 0DH, 0AH," Thank you, see you next time.$"
    INVALIDSELECTION_MSG DB 0DH, 0AH," Invalid Selection. Try Again",0DH, 0AH,"$"

    ;Borrow, Return Book
    NOT_AVALIABLE_MSG DB " Book Not Available to borrow$"
    BOOK_RETURNED_MSG DB " Book Returned Successfully$"
    BOOK_RETURN_FAILED DB " Book Return Failed$"
    RETURN_BOOK_MSG DB " Do you want to return the book", 63, " (Y/N): $"
    USER_NOT_AVALIABLE_MSG DB " User not available to borrow!$"
    BORROW_RECORED_NOT_FOUND_MSG DB " Borrow Record not found!$"
    BOOK_ID_NOT_EXISTS_MSG DB " Book ID not Exists$"

    ;Penalty Payment
    PAYMENT_MSG DB " Do you want to proceed payment", 63, " (Y/N): $"
    PAYMENT_COMPLETE DB " Payment Complete$"
    PAYMENT_FAILED DB " Payment Failed$"
    PENALTY_CHARGE_MSG DB " Penalty Charge = $" 
    PENALTY_CHARGE_FORMAT DB "                = $"
    PENALTY_BASIC_RATE_INFO DB " (Penalty Basic Rate) $"
    ;exp:  PENALTY CHARGE: RM 5.00 (Penalty Basic Rate) x 10 (Exceed Days) x 110% = RM 55.00 (Penalty Charge, MAX: RM 100.00)
    PENALTY_RATE_INFO DB " (Penalty Rate) $"
    DIFF_DAY_INFO DB " (Exceed Days) $"
    RM DB "RM $"
    ROUNDED_DECIMAL DB ".00$"       ;for rounded decimal
    PENALTY_CHARGE_INFO DB " (Penalty Charge, MAX: RM  $"

    BOOK_NAME DB       "  Book               : $"
    AUTHOR DB          "  Author             : $"
    RET_DATE DB        "  Return Date        : $"
    CURR_DATE DB       "  Current Date       : $"
    EXCEED_RET_DATE DB "  Exceed Return Date : $"
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
        DB "War and Peace$", 16 DUP('$')
        DB "Brave New World$", 14 DUP('$')
        DB "The Hobbit$", 19 DUP('$')
        DB "Crime and Punishment$", 9 DUP('$')
        DB "The Picture of Dorian Gray$", 3 DUP('$')
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
        DB "Leo Tolstoy$", 18 DUP('$')
        DB "Aldous Huxley$", 16 DUP('$')
        DB "J.R.R. Tolkien$", 15 DUP('$')
        DB "Fyodor Dostoevsky$", 12 DUP('$')
        DB "Oscar Wilde$", 18 DUP('$')
        DB 30 DUP('$')
        DB 30 DUP('$')
        DB 30 DUP('$')
        DB 30 DUP('$')
        DB 30 DUP('$')


    ;User Details
    USER_ID_ARRAY DB "ALI_BABA$", 31 DUP('$')
        DB "THE_BEST_DOGGAN$", 24 DUP('$')
        DB "ABG_CHIN$", 31 DUP('$')
        DB "SAMSAM_CLOWN$", 27 DUP('$')
        DB "CSTANTAN$", 31 DUP('$')
        DB "LEONGYY$", 32 DUP('$')
        DB "LIM_ZHI_PING$", 27 DUP('$')
        DB "G.E.M.$", 33 DUP('$')
        DB "JAY_CHOU$", 31 DUP('$')
        DB "COLDPLAY$", 31 DUP('$')
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
        
    ;User password
    USER_PASSWORD_ARRAY DB "12345678910$"
        DB "12345$", 6 DUP('$')
        DB "ezpass$", 5 DUP('$')
        DB "password$", 3 DUP('$')
        DB "user1234$", 3 DUP('$')
        DB "123456$", 5 DUP('$')
        DB "testpass$", 3 DUP('$')
        DB "gem123$", 5 DUP('$')
        DB "jay123$", 5 DUP('$')
        DB "coldplay123$"
        DB 12 DUP('$')
        DB 12 DUP('$')
        DB 12 DUP('$')
        DB 12 DUP('$')
        DB 12 DUP('$')
        DB 12 DUP('$')
        DB 12 DUP('$')
        DB 12 DUP('$')
        DB 12 DUP('$')
        DB 12 DUP('$')

    ;Borrow Status
    BORROW_BY_ARRAY DB "CSTANTAN$", 31 DUP('$')
        DB 40 DUP("$")
        DB "LIM_ZHI_PING$", 27 DUP('$');
        DB 40 DUP("$")
        DB "SAMSAM_CLOWN$", 27 DUP('$');
        DB 40 DUP("$")
        DB "THE_BEST_DOGGAN$", 24 DUP('$');
        DB 40 DUP("$")
        DB 40 DUP("$")
        DB "ABG_CHIN$", 31 DUP('$');
        DB 40 DUP('$')
        DB 40 DUP('$')
        DB 40 DUP('$')
        DB "LEONGYY$", 32 DUP('$');
        DB 40 DUP('$')
        DB 40 DUP('$')
        DB 40 DUP('$')
        DB 40 DUP('$')
        DB 40 DUP('$')
        DB 40 DUP('$')
    
    CURR_USER_ID DB 40 DUP('$')

    ;DATE
    DATE DB 11 DUP('$')
    RET_DATE_ARRAY  DB "05/09/2024$"
                    DB 11 DUP("$")             
                    DB "03/05/2024$"
                    DB 11 DUP("$")
                    DB "24/08/2024$"
                    DB 11 DUP("$")
                    DB "07/06/2024$"
                    DB 11 DUP("$") 
                    DB 11 DUP("$")
                    DB "10/09/2024$"
                    DB 11 DUP("$")
                    DB 11 DUP("$")
                    DB 11 DUP("$")
                    DB "11/08/2024$"
                    DB 11 DUP("$")
                    DB 11 DUP("$")
                    DB 11 DUP("$")
                    DB 11 DUP("$")
                    DB 11 DUP("$")
                    DB 11 DUP("$")

	DAY_OF_MONTH DB 31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31

    DAYS DB "days $"
	
	CURR_MONTH DB 0
	CURR_DAY DB 0
    CURR_YEAR DW 0

    ;return date
	RET_MONTH DB 0
	RET_DAY DB 0
    RET_YEAR DW 0
    ;diff day
	DIFF_DAY DW 0

    SELECT_BOOK_ID_TO_BORROW_MSG DB " Select the book ID you want to borrow: $"

    ;ADD_BOOK VARIABLES
    ADD_UNAVAILABLE DB " No more slot available to add new books. $"
    PROMPT_INPUT_BOOKNAME_P1 DB " Enter new book name (cannot input '$"
    PROMPT_INPUT_BOOKNAME_P2 DB "')                : $"
    PROMPT_INPUT_BOOKAUTHOR_P1 DB " Enter book author for the new book (cannot input '$"
    PROMPT_INPUT_BOOKAUTHOR_P2 DB "') : $"
    PROMPT_NEW_BOOKNAME DB   " New Book Name   : $"
    PROMPT_NEW_BOOKAUTHOR DB " New Book Author : $"
    PROMPT_ADDED_BOOK DB " New book has been added to the catalog. $"


    ;EDIT_BOOK VARIABLES
    PROMPT_INPUT_BOOKID DB " ENTER THE BOOK ID YOU WANT TO EDIT: $"
    PROMPT_EDIT_BOOKNAME DB " Enter the new Book Name : $"
    PROMPT_EDIT_AUTHOR DB " Enter the new Author Name : $"
    PROMPT_BOOK_EDITED DB " Book edited successfully!$"  
    EDIT_FIELD_PROMPT DB " Do you want to edit the Name (N) or Author (A): $"
    EDIT_FIELD_CHOICE DB 0
    EDIT_UNAVAILABLE_CHOICE DB " Invalid choice! Please enter N or A.$"
    BOOKNOTFOUND DB " BOOK NOT FOUND $"


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
    PROMPT_INPUT_DELETE_BOOKID DB " Enter the book ID to delete: $"
    DELETE_BOOKID_INPUTBUFFER LABEL BYTE             
    MAX_DELETE_BUFFER DB 3                      
    ACTUAL_DELETE_BUFFER DB 0                
    DELETE_BOOKID_BUFFER DB 3 DUP(0)                  
    
    DELETE_MULTIPLICANT DW ?
    BOOK_ID_POSITION DB 0
    
    WRITTEN_BY DB "written by $"
    PROMPT_BOOKID_ERROR DB " Invalid book ID. Please try again. $"
    PROMPT_BOOK_ISDELETED DB " is deleted successfully! $"
    PROMPT_BOOK_NOT_AVAILABLE DB " Book is currently borrowed, cannot delete!$"
    PROMPT_BOOK_NOT_FOUND DB " Book not found! Please try again. $"
    PROMPT_DELETE_BOOK_CONFIRMATION DB " Are you sure you want to delete this book? (Y/N) $"
    INTEGER DW 0

    ;PENALTY MANAGEMENT VARIABLES
    GET_INTEGER_STRING LABEL BYTE 
    MAXN_DIGIT DB 5 
    ACTN_DIGIT DB 0
    INTEGER_STRING DB 5 DUP("$")
    CHANGE_PENALTY_CHARGE_MSG DB         " Enter the new penalty charge (RM 1 - RM 5)               : $"
    CHANGE_PENALTY_EXTRA_RATE_MSG DB     " Enter the new penalty extra charge rate (extra 1% - 10%) : $"
    CHANGE_PENALTY_MAXIMUM_CHARGE_MSG DB " Enter the new penalty maximum charge (RM 80 - RM 100)    : $"

    CURR_PENALTY_CHARGE_MSG DB            "  Current penalty charge (RM/DAY)      : RM $"
    CURR_PENALTY_EXTRA_CHARGE_RATE_MSG DB "  Penalty extra rate after 14 days (%) : extra $"
    CURR_PENALTY_MAXIMUM_CHARGE_MSG DB    "  Current penalty maximum charge       : RM $"
    PENALTY_CAUTION_MSG DB " ===================== CAUTION ====================== $"
    PENALTY_LINE DB " " ,52 DUP("="), " $"
    BOOK_LINE DB " " ,52 DUP("="), " $"
    PENALTY_CHARGE_LINE DB " " , 70 DUP("="), " $"

    PENALTY_CHARGE DB 5
    HAS_PENALTY_CHARGE DB 0 ; 0 - no penalty charge, 1 - has penalty charge
	PENALTY_EXTRA_RATE DB 10 ; extra 10% charge if the diff days exceed 14 days
    MAX_PENALTY_CHARGE DB 100
	PENALTY DB 7 DUP("$") ; stores the penalty charge - 100.00 (maximum)

    ;REMOVE OVERTIME BOOK VARIABLES
    PROMPT_INPUT_DELETE_OVERTIME_BOOKID DB " Enter the book ID to delete: $"
    DELETE_OVERTIME_BOOKID_INPUTBUFFER LABEL BYTE             
    MAX_DELETE_OVERTIME_BUFFER DB 3                      
    ACTUAL_DELETE_OVERTIME_BUFFER DB 0                
    DELETE_OVERTIME_BOOKID_BUFFER DB 3 DUP(0)

    PROMPT_BOOK_IS_NOT_OVERTIME DB " Book is not overtime, cannot delete!$"

    ;Admin Login
    ADMIN_USERNAME DB "admin$"
	ADMIN_PASSWORD DB "admin123$"
    ADMIN_LOGIN_TITLE DB "  Admin Login$"

	ADMIN_INPUT_USERNAME LABEL BYTE
	ADMIN_USERNAME_MAXN DB 40
	ADMIN_USERNAME_ACTN DB ?
	ADMIN_OUTPUT_USERNAME DB 40 DUP('$')

	ADMIN_INPUT_PASSWORD LABEL BYTE
	ADMIN_INPUT_PASSWORD_MAXN DB 12
	ADMIN_INPUT_PASSWORD_ACTN DB ?
	ADMIN_OUTPUT_PASSWORD DB 12 DUP('$')

    ;User Login
    USER_LOGIN_TITLE DB "  User Login$"

	USER_INPUT_USERNAME LABEL BYTE
	USER_USERNAME_MAXN DB 40
	USER_USERNAME_ACTN DB 0
	USER_OUTPUT_USERNAME DB 40 DUP("$")

	USER_INPUT_PASSWORD LABEL BYTE
	USER_INPUT_PASSWORD_MAXN DB 12
	USER_INPUT_PASSWORD_ACTN DB 0
	USER_OUTPUT_PASSWORD DB 12 DUP("$")

    ;Register
    DISPLAY_ARRAYFULL DB 0DH, 0AH," Number of users is full. Please try again later. ",0DH, 0AH,"$"
	DISPLAY_REGISTER DB 0DH, 0AH,"  ACCOUNT REGISTRATION$"
	DISPLAY_REGISTRATION_SUCCESS DB 0DH, 0AH,"  Registration Successfull!$"
    DISPLAY_USER_EXISTS DB " User already exists, Please try again another ID$"
    INVALID_PASSWORD_RANGE DB " Password must be between 4 to 11 characters$"

    ;logout
    LOGOUT_MSG DB "  Logout Successfully$"

.CODE
    ;login as admin or user
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX

        CALL START_LIBARY_SYSTEM

        START_MAIN_MENU:
            CALL CLEAR_SCREEN
            CALL DISPLAY_MAIN_MENU
            MOV BX, '3'   ;Maximum value for user input
            CALL GET_CHOICE

            CMP AX, 1
            JE ADMIN_LOGIN_PAGE 
            CMP AX, 2
            JE USER_LOGIN_PAGE
            CMP AX, 3
            JE TEMP_EXIT_PROGRAM

        TEMP_EXIT_PROGRAM:
            JMP EXIT_PROGRAM

        ADMIN_LOGIN_PAGE:
            ;ADMIN LOGIN - YY PART
            CALL CLEAR_SCREEN
            CALL DISPLAY_ADMIN_LOGIN_MENU

            MOV BX, '2'   ;Maximum value for user input
            CALL GET_CHOICE
            CMP AX, 1
            JE LOGIN_AS_ADMIN
            CMP AX, 2
            JE START_MAIN_MENU
        
        USER_LOGIN_PAGE:
            ;USER LOGIN - YY PART
            CALL CLEAR_SCREEN
            CALL DISPLAY_USER_LOGIN_MENU

            MOV BX, '3'   ;Maximum value for user input
            CALL GET_CHOICE
            CMP AX, 1
            JE LOGIN_AS_USER
            CMP AX, 2
            JE REGISTER_USER_ACC 
            CMP AX, 3
            JE START_MAIN_MENU 

        LOGIN_AS_ADMIN:
            ;ADMIN LOGIN - YY PART
            CALL CLEAR_SCREEN

            CALL ADMIN_LOGIN
            CMP BX, 0
            JE ADMIN_LOGIN_PAGE
            CALL LOGINSUCCESS
            CALL NEW_LINE
            CALL SYSTEM_PAUSE 
            CALL CLEAR_SCREEN

            JMP REDIRECT_TO_ADMIN_MODULES ; JUMP TO ADMIN MODULES if login is successful
        
        LOGIN_AS_USER:
            ;USER LOGIN - YY PART
            CALL CLEAR_SCREEN

            CALL USER_LOGIN
            CMP BX, 0
            JE USER_LOGIN_PAGE
            CALL LOGINSUCCESS
            ;store current user to session if the login is successful

            CALL NEW_LINE
            CALL SYSTEM_PAUSE 
            CALL CLEAR_SCREEN

            JMP REDIRECT_TO_USER_MODULES ; JUMP TO USER MODULES if login is successful

        REGISTER_USER_ACC:
            CALL CLEAR_SCREEN
            CALL CREATE_USER_ACCOUNT ;register new account
            
            JMP USER_LOGIN_PAGE  
        REDIRECT_TO_ADMIN_MODULES:
            CALL CLEAR_SCREEN
            CALL ADMIN_MODULES

            JMP START_MAIN_MENU
        REDIRECT_TO_USER_MODULES:
            CALL CLEAR_SCREEN
            CALL USER_MODULES

            JMP START_MAIN_MENU

        EXIT_PROGRAM:

        CALL END_LIBARY_SYSTEM

        MOV AX, 4C00H
        INT 21H
    MAIN ENDP

    ;animation for start of the program
    START_LIBARY_SYSTEM PROC
        MOV AH, 09H 
        LEA DX, START_BOOK_FRAME
        INT 21H

        CALL NEW_LINE
        CALL SYSTEM_PAUSE

        RET
    START_LIBARY_SYSTEM ENDP

    ;animation for end of the program
    END_LIBARY_SYSTEM PROC 
        MOV AH, 09H 
        LEA DX, END_BOOK_FRAME
        INT 21H

        CALL NEW_LINE
        CALL NEW_LINE
        CALL SYSTEM_PAUSE

        RET 
    END_LIBARY_SYSTEM ENDP

    ;Display Main Menu - Role Selection 
    DISPLAY_MAIN_MENU PROC
        CALL BORDER 
        MOV AH, 09H
        LEA DX, MAIN_MENU
        INT 21H
        CALL BORDER 
        RET
    DISPLAY_MAIN_MENU ENDP

    DISPLAY_ADMIN_LOGIN_MENU PROC
        MOV AH,09H
        LEA DX, DISPLAY_WELCOME_ADMINPAGE
        INT 21H

        CALL BORDER
            
        ;-----login
        MOV AH,09H
        LEA DX, ADMIN_LOGIN_MENU
        INT 21H 
        CALL BORDER
        RET
    DISPLAY_ADMIN_LOGIN_MENU ENDP

    DISPLAY_USER_LOGIN_MENU PROC
        MOV AH,09H
        LEA DX, DISPLAY_WELCOME_USERPAGE
        INT 21H
        CALL BORDER
            
        ;-----login
        MOV AH,09H
        LEA DX, USER_LOGIN_MENU
        INT 21H 

        CALL BORDER
        RET
    DISPLAY_USER_LOGIN_MENU ENDP

    ;USER REGISTER ACCOUNT
    ;user are not allowed to enter '$' in the username and password
    CREATE_USER_ACCOUNT PROC 
        ;check if the user_id_array is full - if full, display message and return
        ;check from first index of user_id_array
        MOV CX, 0
        CHECK_USER_AVAILABILITY:
            XOR AX, AX
            MOV BX, CX
            MOV AL, USER_ID_SIZE 
            MUL BX 
            MOV BX, AX 

            CMP USER_ID_ARRAY[BX], '$'
            JE START_INPUT_USER_DET ;if the user_id_array is not full, continue to input user details

            INC CX 
            CMP CX, 20
            JE END_CHECK_USER_AVAILABILITY ; end the loop if the no empty slot is founded in the array
        JMP CHECK_USER_AVAILABILITY

        END_CHECK_USER_AVAILABILITY:
            ;if the user_id_array is full, display message and return
            CALL NEW_LINE

            MOV AH, 09H
            LEA DX, DISPLAY_ARRAYFULL
            INT 21H

            JMP END_CREATE_USER_ACCOUNT

        START_INPUT_USER_DET:
        PUSH CX ;store the empty slot's index of the array to stack
        ;check with user_id_array if the username already exist - if exist, display message and return
        MOV AH, 09H
        LEA DX, DISPLAY_REGISTER
        INT 21H

        mov ah, 09H
        lea dx, line
        int 21H

        ;clear admin username input buffer
        MOV USER_USERNAME_ACTN, 0
        MOV USER_INPUT_PASSWORD_ACTN, 0

        LEA SI, USER_OUTPUT_USERNAME
        MOV CX, 40
        MOV AL, "$"
        CLEAR_REGIS_USER_INPUT_USERNAME:
            MOV [SI], AL
            INC SI 
        LOOP CLEAR_REGIS_USER_INPUT_USERNAME

        ;clear admin password input buffer
        LEA SI, USER_OUTPUT_PASSWORD
        MOV CX, 12
        MOV AL, "$"
        CLEAR_REGIS_USER_INPUT_PASSWORD:
            MOV [SI], AL
            INC SI 
        LOOP CLEAR_REGIS_USER_INPUT_PASSWORD

        
        ; Display prompt to enter a new username
        MOV AH, 09H
        LEA DX, DISPLAY_ENTER_USERNAME
        INT 21H

        ; Input new username
        MOV AH, 0AH
        LEA DX, USER_INPUT_USERNAME
        INT 21H

        XOR BX, BX ; clear BX register - set to 0
        MOV BL, USER_USERNAME_ACTN
        MOV USER_OUTPUT_USERNAME[BX], '$' ; clear '0DH' from the end of the string

        ; IF NOT, PROCEED TO VALIDATE THE INPUT
        LEA SI, USER_OUTPUT_USERNAME
        MOV CL, USER_USERNAME_ACTN
        CMP CL, 0 
        JE TEMP_CREATEUSER_INVALID_INPUT
        VALIDATE_CREATEUSER_USERNAME_INPUT:
            MOV AL, [SI]
            CMP AL, '$'
            JE TEMP_CREATEUSER_INVALID_INPUT
            INC SI
        LOOP VALIDATE_CREATEUSER_USERNAME_INPUT
        
        ;CHECK IF USER_OUTPUT_USERNAME exist in USER_ID_ARRAY if true return the index of user id to BX else return BX = -1
        LEA SI, USER_ID_ARRAY
        LEA DI, USER_OUTPUT_USERNAME
        CALL CHECK_USER_EXISTENCE ;user are not allowed to enter the same username 
        CMP BX, 0
        JS CONTINUE_INPUT_PASSWORD ; ask user to enter password if user id is not founded inside the user id array 

        CALL NEW_LINE
        MOV AH, 09H
        LEA DX, DISPLAY_USER_EXISTS 
        INT 21H 
        CALL NEW_LINE
        CALL NEW_LINE 
        CALL SYSTEM_PAUSE 
        CALL CLEAR_SCREEN

        JMP START_INPUT_USER_DET

        CONTINUE_INPUT_PASSWORD: ; continue input password if user id is not founded inside the user id array
        ; Display prompt to enter a new password
        MOV AH, 09H
        LEA DX, DISPLAY_ENTER_PASSWORD
        INT 21H

        ; Input new password
        LEA DI, USER_INPUT_PASSWORD
        CALL GET_PASSWORD                   ; enter password with hidden characters
        XOR BX, BX                          ; clear BX register - set to 0
        MOV BL, USER_INPUT_PASSWORD_ACTN
        MOV USER_OUTPUT_PASSWORD[BX], '$'   ; clear '0DH' from the end of the string

        ; IF NOT, PROCEED TO VALIDATE THE INPUT
        LEA SI, USER_OUTPUT_PASSWORD
        MOV CL, USER_INPUT_PASSWORD_ACTN
        CMP CL, 0 
        JE TEMP_CREATEUSER_INVALID_INPUT
        VALIDATE_CREATEUSER_PASSWORD_INPUT:
            MOV AL, [SI]
            CMP AL, '$'
            JE TEMP_CREATEUSER_INVALID_INPUT
            INC SI
        LOOP VALIDATE_CREATEUSER_PASSWORD_INPUT

        JMP CONTINUE_CHECK_PASSWORD

        TEMP_CREATEUSER_INVALID_INPUT:
            JMP CREATEUSER_INVALID_INPUT

        CONTINUE_CHECK_PASSWORD:
        
        CMP USER_INPUT_PASSWORD_ACTN, 4
        JB  DISPLAY_INVALID_PASSWORD_RANGE ; user only allowed to enter from 4 to 11 characters for password
        CMP USER_INPUT_PASSWORD_ACTN, 11
        JA  DISPLAY_INVALID_PASSWORD_RANGE

        JMP STORE_REGIS_USER_DET_TO_ARRAY

        DISPLAY_INVALID_PASSWORD_RANGE:

        ;user will asked to enter password again if the password is not in the range of 4 to 11 characters
        CALL NEW_LINE 
        MOV AH, 09H
        LEA DX, INVALID_PASSWORD_RANGE
        INT 21H
        CALL NEW_LINE

        ;clear admin password input buffer
        MOV USER_INPUT_PASSWORD_ACTN, 0
        LEA SI, USER_OUTPUT_PASSWORD
        MOV CX, 12
        MOV AL, "$"
        CLEAR_INPUT_PASSWORD:
            MOV [SI], AL
            INC SI 
        LOOP CLEAR_INPUT_PASSWORD
        
        JMP CONTINUE_INPUT_PASSWORD

        CREATEUSER_INVALID_INPUT:
            CALL NEW_LINE

            MOV AH, 09H
            LEA DX, INVALID_INPUT
            INT 21H

            JMP END_CREATE_USER_ACCOUNT

        ;user id and password is inputed successfully
        STORE_REGIS_USER_DET_TO_ARRAY:
        
            

            POP CX ;get the empty slot's index of the array from stack
            LEA SI, USER_ID_ARRAY        
            LEA DI, USER_OUTPUT_USERNAME

            XOR AX, AX ;clear AX register - set to 0
            MOV BX, CX
            MOV Al, USER_ID_SIZE
            MUL BX
            ADD SI, AX

            PUSH CX ;push the empty slot's index to stack for later use - store password to array

            MOV CX, 40 ; copy the username to the user_id_array
            COPY_USER_ID:
                MOV AL, [DI]
                MOV [SI], AL
                INC SI
                INC DI 
            LOOP COPY_USER_ID

            POP CX ;get the empty slot's index of the array from stack
            LEA SI, USER_PASSWORD_ARRAY
            LEA DI, USER_OUTPUT_PASSWORD

            MOV BX, CX
            MOV AX, 12 ; size of password
            MUL BX
            ADD SI, AX

            MOV CX, 12 ; copy the password to the user_password_array
            COPY_USER_PASSWORD:
                MOV AL, [DI]
                MOV [SI], AL
                INC SI
                INC DI 
            LOOP COPY_USER_PASSWORD

            CALL NEW_LINE 

            MOV AH, 09H
            LEA DX, DISPLAY_REGISTRATION_SUCCESS
            INT 21H
        
        END_CREATE_USER_ACCOUNT:
            CALL NEW_LINE 
            CALL NEW_LINE
            CALL SYSTEM_PAUSE
            CALL CLEAR_SCREEN          ; Ensure screen is cleared
            JMP USER_LOGIN_PAGE         ; Return to the main menu after user creation
        RET
    CREATE_USER_ACCOUNT ENDP 

    ;ADMIN LOGIN
    ; if login success, BX = 1 else BX = 0
    ; username: admin
    ; password: admin123
    ADMIN_LOGIN PROC

        mov ah, 09H
        lea dx, ADMIN_LOGIN_TITLE
        int 21H

        mov ah, 09H
        lea dx, line
        int 21H

        ;clear admin username input buffer
        MOV ADMIN_INPUT_USERNAME[1], 0
        MOV ADMIN_INPUT_PASSWORD[1], 0

        LEA SI, ADMIN_OUTPUT_USERNAME
        MOV CX, 40
        MOV AL, "$"
        CLEAR_ADMIN_INPUT_USERNAME:
            MOV [SI], AL
            INC SI 
        LOOP CLEAR_ADMIN_INPUT_USERNAME

        ;clear admin password input buffer
        LEA SI, ADMIN_OUTPUT_PASSWORD
        MOV CX, 12
        MOV AL, "$"
        CLEAR_ADMIN_INPUT_PASSWORD:
            MOV [SI], AL
            INC SI 
        LOOP CLEAR_ADMIN_INPUT_PASSWORD

        ;----ask to enter username
		MOV AH, 09H
		LEA DX, DISPLAY_ENTER_USERNAME
		INT 21H
		
		;---input username STRING
		MOV AH, 0AH
		LEA DX, ADMIN_INPUT_USERNAME
		INT 21H

        ; CHECK IF THE FIRST INPUT CHARACTER IS ENTER KEY
        LEA SI, ADMIN_OUTPUT_USERNAME
        CMP BYTE PTR [SI], 0DH
        JE TEMP_ADMIN_LOGIN_INVALID_INPUT

        ; IF NOT, PROCEED TO VALIDATE THE INPUT
        MOV CL, ADMIN_USERNAME_ACTN
        VALIDATE_ADMIN_USERNAME_INPUT:
            MOV AL, [SI]
            CMP AL, '$'
            JE TEMP_ADMIN_LOGIN_INVALID_INPUT
            INC SI
        LOOP VALIDATE_ADMIN_USERNAME_INPUT

        ; IF THE INPUT IS VALID, PROCEED TO ENTER PASSWORD

		;-----ask to enter password
		MOV AH, 09H
		LEA DX, DISPLAY_ENTER_PASSWORD
		INT 21H
		
		;-----input password STRING
        LEA DI, ADMIN_INPUT_PASSWORD
        CALL GET_PASSWORD


        ; CHECK IF THE FIRST INPUT CHARACTER IS ENTER KEY
        LEA SI, ADMIN_OUTPUT_PASSWORD
        CMP BYTE PTR [SI], 0DH
        JE TEMP_ADMIN_LOGIN_INVALID_INPUT

        ; IF NOT, PROCEED TO VALIDATE THE INPUT
        MOV CL, ADMIN_INPUT_PASSWORD_ACTN
        VALIDATE_ADMIN_PASSWORD_INPUT:
            MOV AL, [SI]
            CMP AL, '$'
            JE ADMIN_LOGIN_INVALID_INPUT
            INC SI
        LOOP VALIDATE_ADMIN_PASSWORD_INPUT

        JMP PROCEED_CHECK_ADMIN_LOGIN

        TEMP_ADMIN_LOGIN_INVALID_INPUT:
            JMP ADMIN_LOGIN_INVALID_INPUT

        PROCEED_CHECK_ADMIN_LOGIN:
		;---actual number of username
        MOV SI, 0
		MOV CL, ADMIN_INPUT_USERNAME[1]
		MOV SI, 2
		MOV DI, OFFSET ADMIN_USERNAME

		;-----validate username
		ADMINUSERNAME:

			MOV BL,ADMIN_INPUT_USERNAME[SI]
			CMP BL,[DI]
			JNE ADMIN_LOGIN_FAILED
	
			INC SI
			INC DI
		LOOP ADMINUSERNAME
		
		; Validate if the input username has been fully matched
		CMP BYTE PTR [DI], '$'                
		JNE ADMIN_LOGIN_FAILED
		
		;-----validate password
		MOV CL, ADMIN_INPUT_PASSWORD[1]       ; Get the length of the password input
		MOV SI, 2                             ; Start comparing from the second byte of the buffer
		MOV DI, OFFSET ADMIN_PASSWORD         ; Point to the stored password

		ADMINPASSWORD:
			MOV BL, ADMIN_INPUT_PASSWORD[SI]  ; Get the next input character
			CMP BL, [DI]                      ; Compare with the stored password character
			JNE ADMIN_LOGIN_FAILED          ; If not equal, jump to invalid password

			INC SI
			INC DI
		LOOP ADMINPASSWORD                ; Continue looping through the length of the input password

		; Validate if the input password has been fully matched
		CMP BYTE PTR [DI], '$'                ; Check if we reached the end of the stored password
		JNE ADMIN_LOGIN_FAILED              ; If not, jump to invalid password

		JMP PASSADMINLOGIN

        ADMIN_LOGIN_INVALID_INPUT:
            CALL CLEAR_SCREEN

            CALL NEW_LINE
            MOV AH, 09H
            LEA DX, INVALID_INPUT
            INT 21H
            
            CALL NEW_LINE
            CALL SYSTEM_PAUSE
            CALL CLEAR_SCREEN

            MOV BX, 0 ;login failed
            RET    
        ADMIN_LOGIN_FAILED:
            CALL CLEAR_SCREEN

            CALL NEW_LINE
            MOV AH, 09H
            LEA DX, DISPLAY_LOGINFAIL
            INT 21H
            
            CALL NEW_LINE
            CALL SYSTEM_PAUSE
            CALL CLEAR_SCREEN
            MOV BX, 0 ;login failed
            RET
        PASSADMINLOGIN:
            MOV BX, 1 ;login success
            RET
    ADMIN_LOGIN ENDP

    ;USER LOGIN
    ; if login success, BX = 1 else BX = 0
    USER_LOGIN PROC 

        mov ah, 09H
        lea dx, user_login_title
        int 21H

        mov ah, 09H
        lea dx, line
        int 21H
        
        ;clear admin username input buffer
        MOV USER_USERNAME_ACTN, 0
        MOV USER_INPUT_PASSWORD_ACTN, 0

        LEA SI, USER_OUTPUT_USERNAME
        MOV CX, 40
        MOV AL, "$"
        CLEAR_USER_INPUT_USERNAME:
            MOV [SI], AL
            INC SI 
        LOOP CLEAR_USER_INPUT_USERNAME

        ;clear admin password input buffer
        LEA SI, USER_OUTPUT_PASSWORD
        MOV CX, 12
        MOV AL, "$"
        CLEAR_USER_INPUT_PASSWORD:
            MOV [SI], AL
            INC SI 
        LOOP CLEAR_USER_INPUT_PASSWORD

        ;----ask to enter username
        MOV AH, 09H
        LEA DX, DISPLAY_ENTER_USERNAME
        INT 21H
        
        ;---input username STRING
        MOV AH, 0AH
        LEA DX, USER_INPUT_USERNAME
        INT 21H

        ; CHECK IF THE FIRST INPUT CHARACTER IS ENTER KEY
        LEA SI, USER_OUTPUT_USERNAME
        CMP BYTE PTR [SI], 0DH
        JE TEMP_USER_LOGIN_INVALID_INPUT

        ; IF NOT, PROCEED TO VALIDATE THE INPUT
        MOV CL, USER_USERNAME_ACTN
        VALIDATE_USER_USERNAME_INPUT:
            MOV AL, [SI]
            CMP AL, '$'
            JE TEMP_USER_LOGIN_INVALID_INPUT
            INC SI
        LOOP VALIDATE_USER_USERNAME_INPUT

        ; IF THE INPUT IS VALID, PROCEED TO ENTER PASSWORD
        
        XOR BX, BX ; clear BX register - set to 0
        MOV BL, USER_USERNAME_ACTN
        MOV USER_OUTPUT_USERNAME[BX], '$' ; clear '0DH' from the end of the string

        ;-----ask to enter password
        MOV AH, 09H
        LEA DX, DISPLAY_ENTER_PASSWORD
        INT 21H
        
        ;-----input password STRING with masking
        LEA DI, USER_INPUT_PASSWORD
        CALL GET_PASSWORD

        ; CHECK IF THE FIRST INPUT CHARACTER IS ENTER KEY
        LEA SI, USER_OUTPUT_PASSWORD
        CMP BYTE PTR [SI], 0DH
        JE TEMP_USER_LOGIN_INVALID_INPUT

        ; IF NOT, PROCEED TO VALIDATE THE INPUT
        MOV CL, USER_INPUT_PASSWORD_ACTN
        VALIDATE_USER_PASSWORD_INPUT:
            MOV AL, [SI]
            CMP AL, '$'
            JE TEMP_USER_LOGIN_INVALID_INPUT
            INC SI
        LOOP VALIDATE_USER_PASSWORD_INPUT

        JMP PROCEED_CHECK_USER_LOGIN

        TEMP_USER_LOGIN_INVALID_INPUT:
            JMP USER_LOGIN_INVALID_INPUT

        PROCEED_CHECK_USER_LOGIN:

        LEA SI, USER_ID_ARRAY
        LEA DI, USER_PASSWORD_ARRAY 

        MOV CX, 0
        NEXT_USER:

            INC CX ; increase user count

            CMP CX, 20            ;compare if alr out of bounds - only 20 user at max
            JE USER_LOGIN_FAILED  ; If out of bounds, fail login

            PUSH CX ;push number of user to stack
            ;---validate username
            MOV CX, 0
            MOV CL, USER_USERNAME_ACTN      ; CX = length of the input username (second byte of buffer)
            MOV BX, 0                           ; BX points to start of input username (skip length byte)
    
        COMPARE_USERNAME:
            MOV AL, USER_OUTPUT_USERNAME[BX]        ; Load input username character
            CMP AL, [SI]                        ; Compare with current character in USER_ID_ARRAY
            JNE USERNAME_MISMATCH               ; If not equal, go to the next user
            INC BX                              ; Move to the next input character
            INC SI                              ; Move to the next stored username character
            CMP BYTE PTR [SI], "$"              ; Check if we"ve reached the end of stored username
            JE USERNAME_MATCH                   ; If reached end of stored username, match is successful
        LOOP COMPARE_USERNAME                   ; Continue comparing until CX becomes zero

        USERNAME_MISMATCH:
            ; Skip the rest of the current username and move to the next one
            MOV CX, 40                          ; Assume max username length is 40 bytes
            SUB CX, BX      ; Subtract the BX to know how many byte left to move to next index
            SKIP_USERNAME:
                INC SI                              ; Move to the next character
            LOOP SKIP_USERNAME                       ; Continue until delimiter or max length reached
            MOV BX, 0 ;move to next user password
            JMP PASSWORD_MISMATCH         ; jmp to PASSWORD_MISMATCH instead of NEXT_USER to clear move the pointer of array for USER_PASSWORD_ARRAY to next index

        USERNAME_MATCH:
            ; If username matches, check the password
            MOV CX, 0
            MOV CL, USER_INPUT_PASSWORD_ACTN      ; CX = length of input password (second byte of buffer) 
            MOV BX, 0                           ; DI points to start of input password 

        COMPARE_PASSWORD:
            MOV AL, USER_OUTPUT_PASSWORD[BX]        ; Load input password character
            CMP AL, [DI]                        ; Compare with current password character
            JNE PASSWORD_MISMATCH               ; If not equal, go to the next user
            INC BX                              ; Move to the next input character
            INC DI                              ; Move to the next stored password character
            CMP BYTE PTR [DI], "$"              ; Check if we"ve reached the end of stored password
            JE PASSWORD_MATCH                   ; If reached end of stored password, match is successful
        LOOP COMPARE_PASSWORD                   ; Continue comparing until CX becomes zero
        MOV BX, 0
        JMP USERNAME_MISMATCH ;jump to next username index also 
        PASSWORD_MISMATCH:
            ; Skip the current password to go to the next password
            MOV CX, 12                          ; Assume max password length is 12 bytes
            SUB CX, BX      ; Substract the BX to know how many byte left to move to next index 
            SKIP_PASSWORD:
                INC DI
            LOOP SKIP_PASSWORD                   ; Continue until delimiter or max length reached
            POP CX ;get the number of user from stack for further process
            JMP NEXT_USER               ; If password mismatches, check the next user

        PASSWORD_MATCH:
            ; If both username and password are valid, proceed to success

            MOV CX, 40 
            LEA SI, USER_OUTPUT_USERNAME
            LEA DI, CURR_USER_ID
            SAVE_CURRENT_USER_ID:
                MOV AL, [SI]
                MOV [DI], AL
                INC SI
                INC DI
            LOOP SAVE_CURRENT_USER_ID

            POP CX ; clear value from stack
            MOV BX, 1
            RET

        USER_LOGIN_FAILED:
            ;Display login failed
            CALL UDISPLAY_LOGINFAILED           
            MOV BX, 0
            RET

        USER_LOGIN_INVALID_INPUT:
            CALL CLEAR_SCREEN

            CALL NEW_LINE
            MOV AH, 09H
            LEA DX, INVALID_INPUT
            INT 21H
            
            CALL NEW_LINE
            CALL SYSTEM_PAUSE
            CALL CLEAR_SCREEN

            MOV BX, 0 ;login failed
            RET
    USER_LOGIN ENDP 

    USER_LOGOUT PROC 
        LEA SI, CURR_USER_ID
        MOV CX, 40
        MOV AL, "$"
        CLEAR_CURR_USER_ID:
            MOV [SI], AL
            INC SI 
        LOOP CLEAR_CURR_USER_ID

        CALL NEW_LINE 
        MOV AH, 09H
        LEA DX, LOGOUT_MSG
        INT 21H

        CALL NEW_LINE   
        CALL NEW_LINE
        CALL SYSTEM_PAUSE
        RET
    USER_LOGOUT ENDP 

    ; DI points to the password input buffer
    GET_PASSWORD PROC
        ;-----input password STRING with masking
        MOV SI, DI ;store the memory address of DI to SI temp 
        ;LEA DI, USER_OUTPUT_PASSWORD       ;
        MOV CX, 0                           ; CX will count password length (up to 12)
        ADD DI, 2                           ; Skip the length byte
        PASSWORD_INPUT_LOOP:
            MOV AH, 08H                         ; DOS interrupt to read a character without displaying it
            INT 21H                             ; all the characters are stored in AL

            CMP AL, 0DH                         ; check if enter which is check the empty input 
            JE DONE_PASSWORD_INPUT              ; If Enter is pressed, end input

            CMP AL, 08H                         ; backspace is consider as a character ,  have to handle it
            JE BACKSPACE                        ; If Backspace is pressed, handle it

            ; if not backspace , save it in the buffer which is DI 
            MOV [DI], AL                        ; Store typed character in ADMIN_OUTPUT_PASSWORD buffer
            INC DI                              ; Move to the next buffer position
            INC CX                              ; Increase password length counter
            CMP CX, 12                          ; Check if password is too long
            JGE PASSWORD_INPUT_LOOP             ; If password length exceeds, continue input

            ; Display '*' for each typed character
            MOV AH, 02H
            MOV DL, '*'
            INT 21H

            JMP PASSWORD_INPUT_LOOP             ; Continue to capture more characters

            BACKSPACE:
                CMP CX, 0                           ; Check if there's something to delete
                JZ PASSWORD_INPUT_LOOP              ; If nothing to delete, skip backspace

                ; Move cursor back, overwrite last '*', move back again
                DEC CX                              ; Reduce password length counter
                DEC DI                              ; Move DI back to delete last character

                MOV AH, 02H
                MOV DL, 08H                         ; Backspace character
                INT 21H

                MOV DL, ' '                         ; Overwrite last '*'
                INT 21H
                
                MOV DL, 08H                         ; Move cursor back again
                INT 21H

                JMP PASSWORD_INPUT_LOOP

            DONE_PASSWORD_INPUT:
             ; Store actual length of the entered password into the admin input buffer, because the 08H are taking character one by one , they dont have the 0ah ,
                ; so it wont automatically set the length to the input buffer 
                MOV [SI + 1], CL   ;store the actual length of the password to the second byte of the buffer
                RET
    GET_PASSWORD ENDP

    UDISPLAY_LOGINFAILED PROC
    ;-----invalid username or password

        CALL NEW_LINE

        MOV AH, 09H
        LEA DX, DISPLAY_LOGINFAIL
        INT 21H

        CALL NEW_LINE
        CALL NEW_LINE 
        CALL SYSTEM_PAUSE
        RET
    UDISPLAY_LOGINFAILED ENDP

    LOGINSUCCESS PROC

        CALL NEW_LINE
        MOV AH, 09H
        LEA DX, DISPLAY_LOGINS
        INT 21H

        CALL NEW_LINE

        RET
    LOGINSUCCESS ENDP

    ;login as admin 
    ADMIN_MODULES PROC
        START_ADMIN_MENU:
        CALL DISPLAY_ADMIN_MENU

        MOV BX, '7'   ;Maximum value for user input
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
        JE DELETE_OVERTIME_BOOK
        CMP BX , 6
        JE CHANGE_PENALTY_DETAILS
        CMP BX , 7
        JE ADMIN_BACK_TO_MAIN_MENU



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

        DELETE_OVERTIME_BOOK:
            CALL CLEAR_SCREEN
            CALL REMOVE_OVERTIME_BOOK
            CALL CLEAR_SCREEN
            JMP START_ADMIN_MENU

        CHANGE_PENALTY_DETAILS:
            CALL CLEAR_SCREEN
            CALL PENALTY_MANAGEMENT
            CALL CLEAR_SCREEN
            JMP START_ADMIN_MENU

        ADMIN_BACK_TO_MAIN_MENU:

            CALL CLEAR_SCREEN
            RET
    ADMIN_MODULES ENDP

    ;Admin Modules
    DISPLAY_ADMIN_MENU PROC 
        CALL BORDER
        MOV AH, 09H
        LEA DX, ADMIN_MENU
        INT 21H
        CALL BORDER
        RET
    DISPLAY_ADMIN_MENU ENDP

    ;Penalty Management
    DISPLAY_PENALTY_MENU PROC
        CALL BORDER
        MOV AH, 09H
        LEA DX, PENALTY_MENU
        INT 21H
        CALL BORDER
        RET
    DISPLAY_PENALTY_MENU ENDP


    PENALTY_MANAGEMENT PROC 
        START_PENALTY_MANAGEMENT:
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
        JE CHANGE_PENALTY_EXTRA_RATE
        CMP BX, 3
        JE REDIRECT_TO_CHANGE_PENALTY_MAXIMUM_CHARGE
        ;CMP BX, 4
        ;JE END_PENALTY_MANAGEMENT - resolve jmp out of range - use RET to terminate the function instead
        RET 

        REDIRECT_TO_CHANGE_PENALTY_MAXIMUM_CHARGE:
            JMP CHANGE_PENALTY_MAXIMUM_CHARGE ; resolve jmp out of range

        CHANGE_PENALTY_CHARGE:
            START_CHANGE_PENALTY_CHARGE:
                ;only between 1 to 5
                CALL CLEAR_SCREEN 
                CALL DISPLAY_CURR_PENALTY_DET
                CALL NEW_LINE
                CALL NEW_LINE

                MOV AH, 09H 
                LEA DX, CHANGE_PENALTY_CHARGE_MSG
                INT 21H
                CALL GET_INTEGER
                
                CMP INTEGER, 0 
                JBE INVALID_PENALTY_CHARGE_RANGE
                CMP INTEGER, 5
                JA INVALID_PENALTY_CHARGE_RANGE 
                JMP END_CHANGE_PENALTY_CHARGE 
                
                INVALID_PENALTY_CHARGE_RANGE:
                    CALL NEW_LINE 
                    MOV AH, 09H 
                    LEA DX, INVALID_INPUT
                    INT 21H
                    CALL NEW_LINE
                    CALL NEW_LINE
                    CALL SYSTEM_PAUSE 

            JMP START_CHANGE_PENALTY_CHARGE

            END_CHANGE_PENALTY_CHARGE:
                ;store the value to PENALTY_CHARGE
                MOV BX, INTEGER 
                MOV PENALTY_CHARGE, BL
                CALL CLEAR_SCREEN
                JMP START_PENALTY_MANAGEMENT
        
        CHANGE_PENALTY_EXTRA_RATE:
            START_CHANGE_PENALTY_EXTRA_RATE:
                ; only between 1 to 10
                CALL CLEAR_SCREEN 
                CALL DISPLAY_CURR_PENALTY_DET
                CALL NEW_LINE
                CALL NEW_LINE

                MOV AH, 09H 
                LEA DX, CHANGE_PENALTY_EXTRA_RATE_MSG
                INT 21H
                CALL GET_INTEGER  

                CMP INTEGER, 0
                JBE INVALID_PENALTY_EXTRA_RATE
                CMP INTEGER, 10
                JA INVALID_PENALTY_EXTRA_RATE 
                
                JMP END_CHANGE_PENALTY_EXTRA_RATE
                
                INVALID_PENALTY_EXTRA_RATE:
                    CALL NEW_LINE 
                    MOV AH, 09H 
                    LEA DX, INVALID_INPUT
                    INT 21H
                    CALL NEW_LINE
                    CALL NEW_LINE
                    CALL SYSTEM_PAUSE 
            JMP START_CHANGE_PENALTY_EXTRA_RATE

            END_CHANGE_PENALTY_EXTRA_RATE:
                ;store the value to PENALTY_EXTRA_RATE
                MOV BX, INTEGER 
                MOV PENALTY_EXTRA_RATE, BL
                CALL CLEAR_SCREEN
                JMP START_PENALTY_MANAGEMENT

        CHANGE_PENALTY_MAXIMUM_CHARGE:
            START_CHANGE_PENALTY_MAXIMUM_CHARGE:
                ;only between 80 - 100
                CALL CLEAR_SCREEN 
                CALL DISPLAY_CURR_PENALTY_DET
                CALL NEW_LINE
                CALL NEW_LINE

                MOV AH, 09H 
                LEA DX, CHANGE_PENALTY_MAXIMUM_CHARGE_MSG
                INT 21H
                CALL GET_INTEGER 

                CMP INTEGER, 80
                JB INVALID_PENALTY_MAXIMUM_CHARGE
                CMP INTEGER, 100
                JA   INVALID_PENALTY_MAXIMUM_CHARGE
                JMP END_CHANGE_PENALTY_MAXIMUM_CHARGE

                INVALID_PENALTY_MAXIMUM_CHARGE:
                    CALL NEW_LINE 
                    MOV AH, 09H 
                    LEA DX, INVALID_INPUT
                    INT 21H
                    CALL NEW_LINE
                    CALL NEW_LINE
                    CALL SYSTEM_PAUSE
            JMP START_CHANGE_PENALTY_MAXIMUM_CHARGE

            END_CHANGE_PENALTY_MAXIMUM_CHARGE:
                ;store the value to MAX_PENALTY_CHARGE
                MOV BX, INTEGER
                MOV MAX_PENALTY_CHARGE, BL
                CALL CLEAR_SCREEN
                JMP START_PENALTY_MANAGEMENT
            END_PENALTY_MANAGEMENT:
        RET 
    PENALTY_MANAGEMENT ENDP

    ;Display Current Penalty Details
    DISPLAY_CURR_PENALTY_DET PROC 
        CALL NEW_LINE
        MOV AH, 09H 
        LEA DX, PENALTY_CAUTION_MSG
        INT 21H
        CALL NEW_LINE
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

        CALL NEW_LINE

        MOV AH, 09H 
        LEA DX, PENALTY_LINE
        INT 21H 

        RET
    DISPLAY_CURR_PENALTY_DET ENDP

    ;JEREMY PART
    ADD_BOOK PROC
        ;Point to array
        LEA SI, BOOK_NAME_ARRAY                         ;point to book name array
        LEA DI, BOOK_AUTHORS                            ;point to book name array

        ;CHECK IF THERES EMPTY SLOT
        MOV CX, 20                                      ;loop 20 books
        MOV BOOK_ID_POSITION, 1                         ;start from first book
        XOR BX, BX                                      ;reset BX
            
        CHECK_EMPTY_SLOT:
            CMP byte ptr [SI], '$'                      ;check if book name is empty
            JNE SKIP_CHECK_NEXT                         ;if not empty, skip to next slot
            CMP byte ptr [DI], '$'                      ;check if book author is empty
            JE ADD_BOOK_DETAILS                         ;if empty, add new book details
    
            SKIP_CHECK_NEXT:
            XOR AX, AX                                  ;reset AX
            MOV AL, BOOK_SIZE                           
            ADD SI, AX                                  ;move to next book name index
            ADD DI, AX                                  ;move to next book author index
            INC BOOK_ID_POSITION                        ;next book
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

                LEA BX, NEW_BOOKNAME                    ;point to new book name input by user

                ;check if the input is empty
                MOV AL, byte ptr [BX]
                CMP AL, 0DH                             ;first input of the book name != enter key
                JE TEMP_NEW_NAME_ERROR                  ;if it is enter key, prompt error message
            
                XOR CX, CX                              ;reset CX
                XOR AX, AX                              ;reset AX
                MOV CL, INPUT_BOOKNAME_SIZE             ;store the actual input size to CL
                VALIDATE_BOOKNAME_INPUT:                
                    MOV AL, BYTE PTR [BX]
                    CMP AL, '$'                         ;check if there is '$' in user input
                    JE TEMP_NEW_NAME_ERROR              ;if yes, prompt error message
                    INC BX                              ;next character
                LOOP VALIDATE_BOOKNAME_INPUT            ;loop with the actual input size

                ;IF NO ERRORS
                LEA BX, NEW_BOOKNAME                    ;point bx to starting of user input
                XOR CX, CX                              ;reset cx
                MOV CL, INPUT_BOOKNAME_SIZE             
                SAVE_TO_BOOKNAME_ARRAY:
                    MOV AL, byte ptr [BX]       
                    MOV [SI], AL                        ;store the input to BOOK_NAME_ARRAY
                    INC SI                              ;next char in book_name_array
                    INC BX                              ;next char in user input
                LOOP SAVE_TO_BOOKNAME_ARRAY             ;loop with the actual input size
        
            CALL NEW_LINE                               ;print new line

            INPUT_NEW_BOOKAUTHORS:
                
                MOV AH, 09H                             
                LEA DX, PROMPT_INPUT_BOOKAUTHOR_P1      ;prompt user to input new book author
                INT 21H

                MOV AH, 02h
                MOV DL, '$'
                INT 21H

                MOV AH, 09H
                LEA DX, PROMPT_INPUT_BOOKAUTHOR_P2    
                int 21h

                MOV AH, 0AH
                LEA DX, NEW_BOOKAUTHORS_INPUT           ;store user input to NEW_BOOKAUTHORS_INPUT
                INT 21H

                LEA BX, NEW_BOOKAUTHORS                 ;point bx to user input (book author)

                ;check if the input is empty
                MOV AL, byte ptr [BX]
                CMP AL, 0DH                             ;compare the first input != enter
                JE TEMP_NEW_NAME_ERROR                  ;if yes, prompt error message

                MOV CX, 0                               ;reset CX
                MOV CL, INPUT_BOOKAUTHORS_SIZE          ;store the actual input size to CL

                VALIDATE_BOOKAUTHORS_INPUT:
                    MOV AL, BYTE PTR [BX]               
                    CMP AL, '$'                         ;check if there is '$' in user input
                    JE TEMP_NEW_NAME_ERROR              ;if yes, prompt error message
                    INC BX
                LOOP VALIDATE_BOOKAUTHORS_INPUT         ;loop through actual user input size

                ;IF NO ERRORS
                LEA BX, NEW_BOOKAUTHORS                 ;point back to starting point of user input
                XOR CX, CX                              ;reset cx
                MOV CL, INPUT_BOOKAUTHORS_SIZE
                SAVE_TO_BOOKAUTHORS_ARRAY:
                    MOV AL, byte ptr [BX]               
                    MOV [DI], AL                        ;store the input to BOOK_AUTHORS
                    INC DI                              ;next char in BOOK_AUTHORS
                    INC BX                              ;next char in user input
                LOOP SAVE_TO_BOOKAUTHORS_ARRAY          ;loop through actual size of user input
            
            CALL NEW_LINE
            CALL NEW_LINE                               ;print new line
            CALL NEW_LINE
            
            JMP DISPLAY_NEW_BOOK                        ;proceed to display new book

            TEMP_NEW_NAME_ERROR:
                JMP NEW_NAME_ERROR                      ;to avoid jump out of range

            DISPLAY_NEW_BOOK:
                CALL NEW_LINE                           ;print new line
                MOV AH, 09H
                LEA DX, BOOK_LINE                       ;print line for UI
                INT 21H 
                CALL NEW_LINE                           ;print new line

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
                MOV AH, 09H
                LEA DX, BOOK_LINE                       ;print line for UI
                INT 21H 
                CALL NEW_LINE 

                LEA DX, PROMPT_ADDED_BOOK               ;display message: new book added to catalog
                INT 21H
                CALL NEW_LINE
                CALL NEW_LINE 
                
                ;to prevent the second time when user input less character, and the system cannot read until the string terminator, reset the input buffer is needed
                MOV CX, 30
                XOR AX, AX
                LEA SI, NEW_BOOKNAME
                LEA DI, NEW_BOOKAUTHORS
                RESET_INPUT_BUFFER:
                    MOV AL, '$'
                    MOV byte ptr [SI], AL               ;reset the book name input buffer
                    MOV byte ptr [DI], AL               ;reset the book author input buffer
                    INC SI
                    INC DI
                LOOP RESET_INPUT_BUFFER

            CALL SYSTEM_PAUSE
            JMP QUIT_ADD_BOOK

        FULL_ERROR_MSG:
            CALL NEW_LINE
            MOV AH, 09H
            LEA DX, ADD_UNAVAILABLE                     ;display error msg - no slot for new book
            INT 21H
            CALL NEW_LINE
            CALL NEW_LINE
            CALL SYSTEM_PAUSE
            JMP QUIT_ADD_BOOK                           ;quit module

        NEW_NAME_ERROR:                                 ;if user input contain enter key / '$'
            XOR AX, AX
            MOV AL, BOOK_ID_POSITION                    
            DEC AL
            MOV CL, BOOK_SIZE                           
            MUL CL
            LEA SI, BOOK_NAME_ARRAY                     ;point to the new book name array
            ADD SI, AX

            MOV CX, 30
            REMOVE_ADDED_NEW_BOOKNAME:                  ;clear the book name
                MOV AL, '$'
                MOV [SI], AL                            ;replace the input with '$'
                INC SI
            LOOP REMOVE_ADDED_NEW_BOOKNAME

            XOR AX, AX
            MOV AL, BOOK_ID_POSITION
            DEC AL
            MOV CL, BOOK_SIZE
            MUL CL
            LEA SI, BOOK_AUTHORS                        ;point to the new book author array
            ADD SI, AX

            MOV CX, 30
            REMOVE_ADDED_NEW_BOOKAUTHOR:                ;clear the new book author
                MOV AL, '$'
                MOV [SI], AL                            ;replace the input with '$'
                INC SI
            LOOP REMOVE_ADDED_NEW_BOOKAUTHOR

            CALL NEW_LINE
            MOV AH, 09H
            LEA DX, INVALID_INPUT                       ;prompt error message
            INT 21H
            CALL NEW_LINE
            CALL NEW_LINE   
            CALL SYSTEM_PAUSE

            

        QUIT_ADD_BOOK:
            RET                                         ;back to admin menu
    ADD_BOOK ENDP

    ;JEREMY PART
    REMOVE_BOOK PROC
        CALL DISPLAY_BOOK_CATALOG                       ;display book catalog
        CALL NEW_LINE

        get_book_id:
            mov ah, 09h
            lea dx, PROMPT_INPUT_DELETE_BOOKID          ; Prompt user to enter Book ID
            int 21h

            mov ah, 0Ah
            lea dx, DELETE_BOOKID_INPUTBUFFER           ;receive user input bookid (string)
            int 21H                                     ;only accepts 2 character + 1 enter key

            
        process_input:
            lea si, DELETE_BOOKID_BUFFER        ;point to user input (book id)
            xor ax, ax

            mov al, byte ptr [si]               ; Get the first digit  
            cmp al, 0Dh                         ; Check if Enter was pressed at first char
            je temp_invalid_input               ; If yes, it's invalid input
            sub al, 30H                         ; Convert ASCII '0'-'9' to 0-9
            mov bl, al                          ; Store the first digit to bl

            inc si                              ; Move to the next character of user input
            mov al, byte ptr [si]               ; access to the next character
            cmp al, 0Dh                         ; Check if Enter was pressed after single digit
            je one_digit_book_id                ; if yes, the book id is a single digit input

            sub al, 30H                         ; if not, convert second digit ASCII '0'-'9' to 0-9
            mov bh, al                          ; Store the second digit in bh

            ; Combine the digits into a two-digit number
            xor ax, ax
            mov al, bl
            mul TEN                             ; multiply 10 to the first digit - shift left
            add al, bh                          ; Combine the second digit into al (2 digit bookid)
            jmp process_input_into_bookid       ; Skip the single digit case, proceed to process

        one_digit_book_id:
            ; If it's a single digit, store it in al
            xor ax, ax                      ; Clear ax
            mov al, bl                      ; Store the single digit in al

        process_input_into_bookid:
            ; Validate the range of book id (only 1-20)
            cmp al, 1                           ; Check if Book ID is at least 1
            jl temp_invalid_input               ; Invalid if less than 1
            cmp al, 20                          ; Check if Book ID is less than or equal to 20
            jg temp_invalid_input               ; Invalid if greater than 20
            
            mov BOOK_ID_POSITION, al            ; Store the valid Book ID
            jmp check_book_availability         ; proceed to further process


        temp_invalid_input:                     ; If invalid input, jump to invalid input handler
            jmp invalid_bookid_input            ;to avoid jump out of range

        check_book_availability:                ;if valid input, check if book is borrowed
            
            check_book_name:                    ;check if the book name is not empty
            mov al, BOOK_ID_POSITION
            dec al                      ; Book ID starts at 1, so subtract 1 to get the correct index
            mov cl, BOOK_SIZE           ; 30 bytes for each book name
            mul cl                      ; al = al * 30
            lea SI, BOOK_NAME_ARRAY     
            add SI, ax              ; Point to the correct book name

            cmp byte ptr [SI], '$'
            je temp_no_book_found        ; If book name is empty, the book does not exist
            jmp check_borrow_status      ; if book name is not empty, the book exist

            temp_no_book_found:
                jmp no_book_found        ; to avoid jump out of range

            
            check_borrow_status:        ; Check if the book is borrowed if book is exist
            mov al, BOOK_ID_POSITION
            dec al                      ; Book ID starts at 1, so subtract 1 to get the correct index
            mov cl, USER_ID_SIZE        ; 40 bytes for each borrow status (user id)
            mul cl                      ; al = al * 40
            lea SI, BORROW_BY_ARRAY
            add SI, ax                  ; Point to the correct borrow status

            cmp byte ptr [SI], '$'          ; Check the first character of the borrow status
            jne temp_book_borrowed          ; If the book is borrowed, display error message
            jmp display_book_information    ; If book is not borrowed, delete is granted

        temp_book_borrowed:
            jmp book_borrowed               ; To avoid jump out of range

        display_book_information:           ; Display validated book (exist, available for delete)
            CALL NEW_LINE 
            CALL NEW_LINE

            MOV AH, 09H 
            LEA DX, BOOK_LINE 
            INT 21H 
            
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
            mov cl, 30                      ; 30 bytes for each book name/author
            mul cl                          ; al = al * 30
            lea SI, BOOK_NAME_ARRAY
            add SI, ax                      ; Point to the correct book name

            mov ah, 09H
            lea dx, [SI]                    ; print book name until string terminator '$'
            int 21h        

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
            add SI, ax                      ; Point to the correct author

            mov ah, 09H 
            lea dx, [SI]                    ; print author name until string terminator '$'
            int 21h

            ; Display new line
            CALL NEW_LINE

            MOV AH, 09H 
            LEA DX, BOOK_LINE
            INT 21H 
            CALL NEW_LINE

            jmp delete_confirmation

        delete_confirmation:
            ; Print confirmation message
            LEA DX, PROMPT_DELETE_BOOK_CONFIRMATION
            ; Get user input
            CALL GET_CONFIRMATION           ; only accept Y or N - ignore cases

            cmp al, 'Y'
            je execute_delete
            cmp al, 'y'
            je execute_delete
            RET        ; terminate this function and return back to menu if user enter 'N' or 'n'

        execute_delete:
            CALL NEW_LINE
            CALL NEW_LINE
            ; Delete book: replace book name and author with '$'
            mov al, BOOK_ID_POSITION
            dec al
            mov cl, 30                      ; 30 bytes for each book name/author
            mul cl                          ; al = al * 30
            lea SI, BOOK_NAME_ARRAY
            add SI, ax                      ; Point to the correct book name

            ; Replace book name with '$'
            mov cx, 30
            del_name:
                mov ah, 02H
                cmp byte ptr[SI], '$'
                je delete_next_alphabet
                mov dl, byte ptr[SI]        ;print book name char by char
                int 21H
                delete_next_alphabet:
                    mov byte ptr [SI], '$'  ; replace with '$'
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
            add SI, ax                  ; Point to the correct author

            mov cx, 30
            del_author:
                mov ah, 02H
                cmp byte ptr[SI], '$'
                je delete_next_alphabet1
                mov dl, byte ptr[SI]       ;print author name char by char
                int 21H
                delete_next_alphabet1:
                    mov byte ptr [SI], '$'  ;replace with '$'
                    inc SI
            loop del_author

            ; Print success message
            lea dx, PROMPT_BOOK_ISDELETED       ;prompt delete message
            mov ah, 09h
            int 21h

            ; Print new line
            CALL NEW_LINE
            CALL NEW_LINE
            CALL SYSTEM_PAUSE
            jmp end_delete_book

        no_book_found:                              ; when book id is (1-20) but no book is found
            
            lea dx, PROMPT_BOOK_NOT_FOUND           ; Print error message
            mov ah, 09h
            int 21h

            ; Print new line
            CALL NEW_LINE
            CALL NEW_LINE
            CALL SYSTEM_PAUSE
            CALL NEW_LINE
            jmp GET_BOOK_ID                         ; ask user input book id again

        book_borrowed:
            ; Print error message if book is borrowed
            lea dx, PROMPT_BOOK_NOT_AVAILABLE       ; prompt user book is unavailable to delete
            mov ah, 09h
            int 21h

            ; Print new line
            CALL NEW_LINE
            CALL NEW_LINE
            CALL SYSTEM_PAUSE
            jmp end_delete_book                     ;quit module

        invalid_bookid_input:
            ; Print error message for invalid input
            mov ah, 09h
            lea dx, PROMPT_BOOKID_ERROR             ;book id out of range (not 1-20)
            int 21h

            ; Print new line
            CAll NEW_LINE
            CALL NEW_LINE
            CALL SYSTEM_PAUSE
            CALL NEW_LINE
            jmp get_book_id

        end_delete_book:
            RET
    REMOVE_BOOK ENDP

    ;JEREMY PART
    DISPLAY_OVERTIME_BOOK PROC              

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
        MOV BOOK_ID_POSITION, 1                             ;start from first book
        MOV CX, 20
        DISPLAY_OVERTIME_RECORD:           ; looping is done manually, because loop out of range
            CMP CX, 0                      ; check if all books have been looped                 
            JZ TEMP_END_DISPLAY_OVERTIME_RECORD     ; if yes, end the display
            JMP PROCEED_LOOP                        ; if not, proceed to next book

            TEMP_END_DISPLAY_OVERTIME_RECORD:
                JMP END_DISPLAY_OVERTIME_RECORD         ; to avoid jump out of range

            PROCEED_LOOP:
            CMP byte ptr [DI], '$'            ; Check if this book is not borrowed (indicated by '$')
            JE TEMP_SKIP_BOOK                 ; Skip this book if it is not borrowed
            JMP CURRENT_OVERTIME_RECORD       ; Proceed to display the book

            TEMP_SKIP_BOOK:
                JMP SKIP_BOOK                 ; to avoid jump out of range
            CURRENT_OVERTIME_RECORD:
                PUSH BX                       ; store the value of BX to stack temporarily
                PUSH CX                       ; store the value of CX to stack temporarily
                PUSH SI                       ; store the value of SI to stack temporarily

                ; because calculate overtime diff day will change the value of BX, CX, and SI

                CALL CALCULATE_OVERTIME_DIFF_DAY        ; Calculate the difference in days between the current date and the assigned return date, and the difference is stored in DIFF_DAY
                
                POP SI                         ; get back the value of SI from stack
                POP CX                         ; get back the value of CX from stack
                CMP DIFF_DAY, 30               ; Check if the book is overdue >= 30 days)
                JB BOOK_NOT_OVERTIME           ; If not, skip to the next book

                ;if yes, Display red
                PUSH CX                        ;store the value of CX to stack temporarily
                
                MOV AH, 09H        ; BIOS function to write character and attributes
                MOV AL, ' '        ; Character to display (e.g., space or any other character)
                MOV BH, 0          ; Page number (usually 0)
                MOV BL, 0Ch        ; Attribute byte: Foreground light red (CH), background black (0H)
                MOV CX, 80         ; Number of times to print the character (80 spaces)
                INT 10H            ; Call BIOS interrupt to print with attributes

                POP CX             ; get back the cx value from stack
            
            BOOK_NOT_OVERTIME:    ; diff day < 30, no display in red colour
            POP BX                ; get back the value of BX[index] from stack 
            PUSH BX               ; store the value of BX to stack again for future use temporarily 
            
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
            MOV AL, BOOK_ID_ARRAY[BX]       ; Get the book id from the array
            DIV TEN
            MOV BX, AX
            
            MOV AH, 02H
            MOV DL, BL                      ; Print the first digit of the book id
            ADD DL, 30H
            INT 21H
            
            MOV AH, 02H
            MOV DL, BH                      ; Print the second digit of the book id
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
            LEA DX, [SI]                    ; Print the book name until string terminator '$'
            INT 21H

            
            
            MOV BX, 29 ;suspose to be 30 but 1 is for delimeter
            
            ;Count the string length
            COUNTOVERTIME_BOOK_NAME_SPACES_1:
                CMP BYTE PTR [SI], '$'                      ;CHECK IF THE STRING IS FINISHED
                JE DONEOVERTIME_BOOK_NAME_SPACES_1          ;IF YES PROCEED
                DEC BX                                      ;IF NOT, DECREMENT BX
                INC SI                                      ;INCREMENT SI
                JMP COUNTOVERTIME_BOOK_NAME_SPACES_1        ;LOOP UNTIL THE STRING IS FINISHED
            DONEOVERTIME_BOOK_NAME_SPACES_1:
                MOV AH, 02H
                ;EXP: SI(original SI) = SI(current SI) - (29(total length) - BX(space length))
                ADD SI, BX 
                SUB SI, 29

            ADDOVERTIME_SPACES_AFTER_NAME_1:                ;ADD SPACE AFTER BOOK NAME
                CMP BX, 0                                   ;CHECK IF BX = 0
                JE DONE_ADDOVERTIME_BOOK_NAME_SPACES_1      ;IF YES, PROCEED
                MOV DL, ' '
                INT 21H
                DEC BX                                      ;DECREMENT BX

                JMP ADDOVERTIME_SPACES_AFTER_NAME_1         ;LOOP UNTIL BX = 0

            DONE_ADDOVERTIME_BOOK_NAME_SPACES_1:            ;DONE ADDING SPACE AFTER BOOK NAME
            
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

                XOR AX, AX
                MOV AL, BOOK_ID_POSITION                ; Get the book id
                DEC AL                ; Book ID starts at 1, so subtract 1 to get the correct index
                MUL BOOK_SIZE                           ; Multiply by 30 to get the correct index
                MOV BX, AX
                ;Author
                XOR AX, AX
                MOV AH, 09H
                LEA DX, BOOK_AUTHORS[BX]      ; Print the author name until string terminator '$'
                INT 21H 

            PUSH CX

                MOV CX, 20 ;should use 29 but since not enough space for borrow by user so i use 20 instead
                ;suspose to be 30 but 1 is for delimeter
                ;MOVE THE BOOK AUTHOR POSITION TO BX
                XOR AX, AX
                MOV AL, BOOK_ID_POSITION
                DEC AL
                MUL BOOK_SIZE
                MOV BX, AX
                XOR AX, AX
            ;Count the string length
            COUNTOVERTIME_AUTHOR_SPACES:
                CMP BOOK_AUTHORS[BX], '$'                     ;CHECK IF THE STRING IS FINISHED
                JE DONEOVERTIME_AUTHOR_SPACES                 ;IF YES PROCEED
                DEC CX                                        ;IF NOT, DECREMENT CX 
                INC BX                                        ;INCREMENT BX   
                JMP COUNTOVERTIME_AUTHOR_SPACES
            DONEOVERTIME_AUTHOR_SPACES:                       ;DONE COUNTING THE STRING LENGTH
                MOV AH, 02H
                ADD BX, CX
                SUB BX, 20

            ADDOVERTIME_SPACES_AFTER_AUTHOR:            ;cx is the number of spaces needed to add
                CMP CX, 0
                JE DONE_ADDOVERTIME_AUTHOR_SPACES           ;IF YES, PROCEED
                MOV DL, ' '
                INT 21H
                DEC CX
                JMP ADDOVERTIME_SPACES_AFTER_AUTHOR         ;LOOP UNTIL CX = 0

            DONE_ADDOVERTIME_AUTHOR_SPACES:
            POP CX                          ; get back the value of CX from stack
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
                MOV BX , AX                     ; Get the book id from the array
                MOV AH, 09H
                LEA DX, BORROW_BY_ARRAY[BX]         ; Print the user id who borrowed the book until string terminator '$'
                INT 21H
            
            CALL NEW_LINE

            ;jmp to next value
            POP BX ; get back the value of BX from stack
            INC BOOK_COUNT
            SKIP_BOOK:                      ; move to the next book

                XOR AX, AX
                MOV AL, BOOK_SIZE           
                ADD SI, AX                  ; Move to the next book name index
                ADD DI, 40                  ; Move to the next book author index

                INC BOOK_ID_POSITION        ; Move to the next book id
                INC BX                      ; Move to the next book id
                DEC CX                      ; Decrement the loop counter

            JMP DISPLAY_OVERTIME_RECORD     ; Loop to the next book

        END_DISPLAY_OVERTIME_RECORD:        ; End of the display
        
            ;DISPLAY LINE
            MOV AH, 09H
            LEA DX, BORROW_RECORD_LINE
            INT 21H

            CALL NEW_LINE

            ;DISPLAY FOOTER
            ;Display red color 
            MOV AH, 09H        ; BIOS function to write character and attributes
            MOV AL, ' '        ; Character to display (e.g., space or any other character)
            MOV BH, 0          ; Page number (usually 0)
            MOV BL, 0Ch        ; Attribute byte: Foreground red (4), background black (0Fh)
            MOV CX, 5          ; Number of times to print the character (5 spaces)
            INT 10H            ; Call BIOS interrupt to print with attributes
            
            
            MOV AH, 09H 
            LEA DX, OVERTIME_COLOR_REMARK_MSG       ; Print the remark message in red color
            INT 21H
            
            CALL NEW_LINE
            

        RET
    DISPLAY_OVERTIME_BOOK ENDP

    ;JEREMY PART
    REMOVE_OVERTIME_BOOK PROC

        CALL DISPLAY_OVERTIME_BOOK          ; Display the book catalog
        CALL NEW_LINE

        get_overtime_book_id:
            ; Prompt user to enter Book ID
            mov ah, 09h
            lea dx, PROMPT_INPUT_DELETE_OVERTIME_BOOKID     
            int 21h

            mov ah, 0Ah
            lea dx, DELETE_OVERTIME_BOOKID_INPUTBUFFER      ; Receive user input bookid (string)
            int 21H

        process_overtime_input:

            lea si, DELETE_OVERTIME_BOOKID_BUFFER     ; Point to user input (book id)
            xor ax, ax

            mov al, byte ptr [si]               ; Get the first digit  
            cmp al, 0Dh                         ; Check if Enter was pressed in the first character
            je temp_invalid_overtime_input       ; If Enter was pressed, it's invalid input
            sub al, 30H                         ; Convert ASCII '0'-'9' to 0-9
            mov bl, al                          ; Store the first digit

            inc si                              ; Move to the next character
            mov al, byte ptr [si]               ; Get the next character (second digit or Enter)
            cmp al, 0Dh                         ; Check if Enter was pressed
            je one_digit_overtime_book_id       ; If Enter, the book id is a single digit input

            ;if not, proceed to the next character
            sub al, 30H                         ; Convert ASCII '0'-'9' to 0-9
            mov bh, al                          ; Store the second digit in bh

            ; Combine the digits into a two-digit number
            xor ax, ax
            mov al, bl
            mul TEN
            add al, bh                          ; Combine the digits into a two-digit number
            jmp process_overtime_input_into_bookid        ; Skip the single digit case

        one_digit_overtime_book_id:
            ; If it's a single digit, store it in al
            xor ax, ax                      ; Clear ax
            mov al, bl                      ; Store the single digit in al

        process_overtime_input_into_bookid:
            ; Validate the range (1-20)
            cmp al, 1                           ; Check if Book ID is at least 1
            jl temp_invalid_overtime_input       ; Invalid if less than 1
            cmp al, 20                          ; Check if Book ID is less than or equal to 20
            jg temp_invalid_overtime_input       ; Invalid if greater than 20
            
            mov BOOK_ID_POSITION, al              ; Store the valid Book ID
            jmp check_overtime_book_availability  ; Continue to check the availability of the book

        temp_invalid_overtime_input:
            ; If invalid input, jump to invalid input handler
            jmp invalid_overtime_bookid_input

        ;if valid input, check if book is borrowed
        check_overtime_book_availability:
            ;check if the book is borrowed
            check_overtime_book_name:
            mov al, BOOK_ID_POSITION
            dec al                  ; Book ID starts at 1, so subtract 1 to get the correct index
            mov cl, USER_ID_SIZE       ; 30 bytes for each book name
            mul cl                  ; al = al * 30
            lea SI, BORROW_BY_ARRAY     
            add SI, ax              ; Point to the correct book name

            cmp byte ptr [SI], '$'
            je temp_no_overtime_book_found  ; If borrow by is empty, the book is not borrowed
            jmp check_overtime_borrow_status    ; the book is borrowed, check if it is overtime

            temp_no_overtime_book_found:
                jmp no_overtime_book_found          ; to avoid jump out of range

            ; Check if the book is borrowed overtime
            check_overtime_borrow_status:
            CALL CALCULATE_OVERTIME_DIFF_DAY
            CMP DIFF_DAY, 30
            jb temp_book_borrowed_not_overtime       ; If the book is borrowed but not overtime, display error message
            jmp display_overtime_book_information     ; If the book is borrowed overtime, proceed to display the book
            
            temp_book_borrowed_not_overtime:
            jmp book_borrowed_not_overtime          ; to avoid jump out of range
            

        display_overtime_book_information:
            call new_line
            CALL NEW_LINE

            MOV AH, 09H 
            LEA DX, BOOK_LINE                       
            INT 21H 
            CALL NEW_LINE 

            ; Display book name
            mov ah, 09h
            lea dx, BOOK_NAME
            int 21h

            call space

            mov al, BOOK_ID_POSITION
            dec al
            mov cl, 30                          ; 30 bytes for each book name/author
            mul cl                              ; al = al * 30
            lea SI, BOOK_NAME_ARRAY
            add SI, ax                          ; Point to the correct book name
            
            mov ah, 09H
            lea dx, [SI]                        ; print book name until string terminator '$'
            int 21h

            call new_line

            ; Display book author

            mov ah, 09h
            lea dx, AUTHOR                  
            int 21h

            call space

            mov al, BOOK_ID_POSITION
            dec al
            mov cl, 30
            mul cl
            lea SI, BOOK_AUTHORS
            add SI, ax                              ; Point to the correct author

            mov ah, 09H
            lea dx, [SI]                            ; print author name until string terminator '$'
            int 21h
            

            call new_line

            ;display return date
            mov ah, 09h
            lea dx, RET_DATE                        ; Print "Return Date"
            int 21h

            call space

            mov al, BOOK_ID_POSITION
            dec al
            mov cl, 11
            mul cl
            lea SI, RET_DATE_ARRAY
            add SI, ax

            mov cx, 11
            display_return_date:                    ; print return date char by char
                mov ah, 02H
                cmp byte ptr[SI], '$'
                je skip_next_return_date     ; If the return date is empty, proceed next character
                mov dl, byte ptr[SI]
                int 21H
                skip_next_return_date:
                    inc SI                  ; Move to the next character
            loop display_return_date

            call new_line

            ;display current date
            mov ah, 09h
            lea dx, CURR_DATE
            int 21h

            call space

            mov ah, 09H
            lea dx, date                    ; Print current date
            int 21h

            call new_line

            ;display overdue days
            MOV AH, 09H 
            LEA DX, EXCEED_RET_DATE         
            INT 21H 

            call space

            ;Display Exceed Days
            MOV AX, DIFF_DAY                
            XOR CX, CX

            READ_OVERTIME_DIFF_DAY:         ; convert the difference day to string
            INC CX                          ; Increment the counter for display
            DIV TEN 
            MOV BX, AX 

            XOR AL, AL                      ; remove the quotient part
            PUSH AX                         ; save remainder to the stack

            CMP BL, 0                       ; Check if the quotient is 0
            JE END_READ_OVERTIME_DIFF_DAY   ; If yes, proceed to display the remainder

            XOR BH, BH                      ; remove remainder part
            MOV AX, BX                      ; get the quotient part
            JMP READ_OVERTIME_DIFF_DAY      ; Loop to the next digit until the quotient is 0

            END_READ_OVERTIME_DIFF_DAY:

                DISPLAY_OVERTIME_DIFF_DAY:
                POP BX                      ; get the value from stack
                MOV AH, 02H                 ; print the remainder
                MOV DL, BH                  
                ADD DL, 30H                 ; convert to ASCII
                INT 21H	
                LOOP DISPLAY_OVERTIME_DIFF_DAY      ; loop until the remainder is displayed

                call space

                MOV AH, 09H
                LEA DX, DAYS                ; Print "days"
                INT 21H

                CALL NEW_LINE
                MOV AH, 09H 
                LEA DX, BOOK_LINE
                INT 21H 

                CALL NEW_LINE
                CALL NEW_LINE
                jmp delete_overtime_confirmation        ; Proceed to delete the book

        delete_overtime_confirmation:
            ; Prompt user to confirm deletion
            lea dx, PROMPT_DELETE_BOOK_CONFIRMATION

            ; Get user input
            CALL GET_CONFIRMATION ; only accept Y or N - ignore cases

            cmp al, 'Y'
            je execute_delete_overtime
            cmp al, 'y'
            je execute_delete_overtime
            RET ; terminate this function and return back to menu if user enter 'N' or 'n'

        execute_delete_overtime:
            CALL NEW_LINE
            CALL NEW_LINE

            ; Delete book: replace book name and author with '$'

            mov al, BOOK_ID_POSITION
            dec al
            mov cl, 30        ; 30 bytes for each book name/author
            mul cl            ; al = al * 30
            lea SI, BOOK_NAME_ARRAY
            add SI, ax        ; Point to the correct book name

            call space
            
            ; Replace book name with '$'
            mov cx, 30
            del_overtime_name:
                mov ah, 02H
                cmp byte ptr[SI], '$'               ; Check if the char is '$'
                je delete_overtime_next_alphabet    
                mov dl, byte ptr[SI]                ; Print book name char by char
                int 21H
                delete_overtime_next_alphabet:
                    mov byte ptr [SI], '$'          ; Replace with '$'
                    inc SI
            loop del_overtime_name

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
            add SI, ax                  ; Point to the correct author

            mov cx, 30
            del_overtime_author:
                mov ah, 02H
                cmp byte ptr[SI], '$'               ; Check if the char is '$'
                je delete_overtime_next_alphabet1
                mov dl, byte ptr[SI]                ; Print author name char by char
                int 21H
                delete_overtime_next_alphabet1:
                    mov byte ptr [SI], '$'          ; Replace with '$'
                    inc SI
            loop del_overtime_author

            ; Replace borrow by with '$'
            mov al, BOOK_ID_POSITION
            dec al
            mov cl, 40
            mul cl
            lea SI, BORROW_BY_ARRAY
            add SI, ax                          ; Point to the correct borrow by

            mov cx, 40
            del_overtime_borrow_by:
                mov byte ptr [SI], '$'          ; Replace with '$'
                inc SI
            loop del_overtime_borrow_by         

            ;replace return date with '$'
            mov al, BOOK_ID_POSITION
            dec al
            mov cl, 11
            mul cl
            lea SI, RET_DATE_ARRAY              
            add SI, ax                          ; Point to the correct return date

            mov cx, 11
            del_return_date:
                mov byte ptr [SI], '$'          ; Replace with '$'
                inc SI
            loop del_return_date

            ; Print success message
            lea dx, PROMPT_BOOK_ISDELETED           
            mov ah, 09h
            int 21h

            ; Print new line
            CALL NEW_LINE
            CALL NEW_LINE
            CALL SYSTEM_PAUSE
            jmp end_delete_overtime_book         ; quit module

        no_overtime_book_found:                 ; book is not in borrow list                    
            lea dx, PROMPT_BOOK_NOT_FOUND       ; Print error message if book is not found
            mov ah, 09h
            int 21h

            ; Print new line
            CALL NEW_LINE
            CALL NEW_LINE
            CALL SYSTEM_PAUSE           
            CALL NEW_LINE
            jmp get_overtime_book_id    ; ask user input book id again

        book_borrowed_not_overtime:
            lea dx, PROMPT_BOOK_IS_NOT_OVERTIME    ; Print error message if book not yet overdue
            mov ah, 09h
            int 21h

            ; Print new line
            CALL NEW_LINE
            CALL NEW_LINE
            CALL SYSTEM_PAUSE
            jmp end_delete_overtime_book        ; quit module

        invalid_overtime_bookid_input:

            mov ah, 09h
            lea dx, PROMPT_BOOKID_ERROR         ; Print error message for invalid input
            int 21h

            ; Print new line
            CAll NEW_LINE
            CALL NEW_LINE
            CALL SYSTEM_PAUSE
            CALL NEW_LINE
            jmp get_overtime_book_id            ; ask user to input book id again

        end_delete_overtime_book:               ; end of the module
        RET
    REMOVE_OVERTIME_BOOK ENDP

    ;GAN PART
    EDIT_BOOK PROC

        EDIT_BOOK_START:
            ;Select Book from list
            CALL DISPLAY_BOOK_CATALOG
            CALL NEW_LINE

            MOV AH, 09H
            LEA DX, PROMPT_INPUT_BOOKID
            INT 21H

            MOV AH, 0AH
            LEA DX, EDIT_BOOKID_INPUT
            INT 21H

            MOV AL , EDIT_BOOKID_INPUT[1] ; get the Actual length of the input
            ;check the number of digit input
            CMP AL , 1 
            JE SINGLE_BOOK_ID ;one digit

            CMP AL , 2
            JE DOUBLE_BOOK_ID ;two digit

            CALL NEW_LINE 
            MOV AH, 09H 
            LEA DX, INVALID_INPUT 
            INT 21H 
            CALL NEW_LINE
            CALL NEW_LINE
            CALL SYSTEM_PAUSE 
            CALL CLEAR_SCREEN 
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
                ;compare the book id with the array
                CMP BOOK_ID_ARRAY[SI] , BL
                JE BOOK_FOUND
                INC SI
            LOOP SEARCH_BOOK

                CALL NEW_LINE 
                MOV AH, 09H
                LEA DX, BOOKNOTFOUND
                INT 21H
                CALL NEW_LINE
                CALL NEW_LINE
                CALL SYSTEM_PAUSE 
                CALL CLEAR_SCREEN 

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
                
                ;Select field to edit
                MOV AH, 01H
                INT 21H
                MOV EDIT_FIELD_CHOICE, AL

                CMP EDIT_FIELD_CHOICE, 'N'
                JE EDIT_BOOK_NAME ; Edit book name
                CMP EDIT_FIELD_CHOICE, 'n'
                JE EDIT_BOOK_NAME ; Edit book name

                CMP EDIT_FIELD_CHOICE, 'A'
                JE HOLD_EDIT_BOOK_AUTHOR ; Edit book author
                CMP EDIT_FIELD_CHOICE, 'a'
                JE HOLD_EDIT_BOOK_AUTHOR ; Edit book author

                CALL NEW_LINE 

                MOV AH, 09H
                LEA DX, EDIT_UNAVAILABLE_CHOICE
                INT 21H

                JMP BOOK_FOUND            ;CAN ALSO RETURN TO BOOK FOUND

            HOLD_EDIT_BOOK_AUTHOR:
                JMP EDIT_BOOK_AUTHOR    

            BOOK_NOT_EXISTED_YET:

                MOV AH, 09H
                LEA DX, BOOK_ID_NOT_EXISTS_MSG
                INT 21H

                CALL NEW_LINE
                CALL NEW_LINE
                CALL SYSTEM_PAUSE
                CALL CLEAR_SCREEN

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

    ;CSTAN PART - View Borrow Details
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

            ;DISPLAY LINE
            MOV AH, 09H
            LEA DX, BORROW_RECORD_LINE
            INT 21H

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
        JE USER_BACK_TO_MAIN_MENU

        BORROW_BOOK_FROM_CATALOG:
            CALL CLEAR_SCREEN
            CALL BORROW_BOOK
            CALL CLEAR_SCREEN
            JMP START_USER_MENU
        
        RETURN_BOOK_TO_CATALOG:
            CALL CLEAR_SCREEN
            CALL RETURN_BOOK
            CALL CLEAR_SCREEN
            JMP START_USER_MENU
        
        USER_BACK_TO_MAIN_MENU:
            CALL USER_LOGOUT
            CALL CLEAR_SCREEN
            RET
    USER_MODULES ENDP
    
    ;user modules
    DISPLAY_USER_MENU PROC
        CALL BORDER
        MOV AH, 09H
        LEA DX, USER_MENU
        INT 21H
        CALL BORDER
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
        LEA SI, BORROW_BY_ARRAY        
        LEA DI, CURR_USER_ID
        CALL CHECK_USER_EXISTENCE
        CMP BX, 0
        JS USER_AVAILABLE_TO_BORROW ; display the details if user is not founded inside the borrow by array 
            ;User founded
            MOV AH, 09H
            LEA DX, USER_NOT_AVALIABLE_MSG
            INT 21H
            CALL NEW_LINE
            CALL NEW_LINE
            CALL SYSTEM_PAUSE
            CALL CLEAR_SCREEN
            RET
        USER_AVAILABLE_TO_BORROW:
        ;DISPLAY BOOK CATALOG
        START_BORROW_BOOK:
            CALL CLEAR_SCREEN 
            CALL DISPLAY_BOOK_CATALOG
            CALL NEW_LINE 

            ;select book from list
            MOV BX, BOOK_COUNT 

            MOV AH, 09H 
            LEA DX, SELECT_BOOK_ID_TO_BORROW_MSG
            INT 21H 
            CALL GET_INTEGER
            
            CMP INTEGER, 0
            JA CHECK_BOOK_EXISTENCE
            CMP INTEGER, BX
            JBE CHECK_BOOK_EXISTENCE

            CALL NEW_LINE

            MOV AH, 09H
            LEA DX, INVALID_INPUT
            INT 21H

            CALL NEW_LINE
            CALL NEW_LINE
            CALL SYSTEM_PAUSE
            CALL CLEAR_SCREEN

        JMP START_BORROW_BOOK

        CHECK_BOOK_EXISTENCE:
            MOV BX, INTEGER 
            DEC BX ; decrement by 1 to get the correct index
            PUSH BX ; store index to stack temp
            ;Check if the book exists (not empty/not deleted)
            MOV AX, BX
            MUL BOOK_SIZE
            MOV BX , AX 
            CMP BOOK_NAME_ARRAY[BX], '$'
            JNE CHECK_AVAILABILITY ;Book not available to borrow if true
            POP BX ; get back value from stack
            
            CALL NEW_LINE 
            MOV AH, 09H 
            LEA DX, BOOK_ID_NOT_EXISTS_MSG
            INT 21H

            CALL NEW_LINE
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
            JE BOOK_AVAILABLE_BORROW ;Book Available to borrow if true
            ;Book not available to borrow
            POP BX ; clear stack

            CALL NEW_LINE
            MOV AH, 09H 
            LEA DX, NOT_AVALIABLE_MSG
            INT 21H
            CALL NEW_LINE
            CALL NEW_LINE
            CALL SYSTEM_PAUSE
            CALL CLEAR_SCREEN
            JMP START_BORROW_BOOK

        BOOK_AVAILABLE_BORROW:
            CALL CLEAR_SCREEN
            POP BX ; get index from stack
            CALL SET_BORROW_STATUS
            PUSH BX ; store index to stack temp
            CALL GENERATE_RET_DATE
            POP BX ; get index from stack
            CALL DISPLAY_BOOK_DETAILS

            CALL NEW_LINE

            

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
    ; 1. check if user has borrowed book before proceed to return book, _CHECK_USER_EXISTENCE
    ; 2. confirm with user to return the book, continue the process if Yes, GET_CONFIRMATION
    ; 3. calculate the difference between return date and current date, CALCULATE_PENALTY
    ; 4. if results in positive, calculate the panalty and ask user to proceed payment
    ; 5. if results in negative, proceed to update the borrow status(CLEAR_BORROW_STATUS)
    RETURN_BOOK PROC
        LEA SI, BORROW_BY_ARRAY
        LEA DI, CURR_USER_ID
        CALL CHECK_USER_EXISTENCE
        CMP BX, 0
        JNS USER_FOUNDED ; display the details if user is founded inside the borrow by array 
            ;User not found            
            MOV AH, 09H
            LEA DX, BORROW_RECORED_NOT_FOUND_MSG
            INT 21H
            CALL NEW_LINE
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
        JE UPDATE_BORROW_STATUS  ; update status -

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
            ;Clear the date in RET_DATE_ARRAY also _OPTIONAL 
            CALL CLEAR_SCREEN

            CALL NEW_LINE

            MOV AH, 09H
            LEA DX, BOOK_RETURNED_MSG
            INT 21H

            CALL NEW_LINE
            CALL NEW_LINE
            CALL SYSTEM_PAUSE
            RET
        
        FAILED_TO_PAY_PENALTY:
            ;doesnt proceed payment 
            POP BX ;clear stack
            CALL CLEAR_SCREEN

            CALL NEW_LINE

            MOV AH, 09H
            LEA DX, PAYMENT_FAILED
            INT 21H

            CALL NEW_LINE
            CALL NEW_LINE
            CALL SYSTEM_PAUSE
            RET
        FAILED_TO_RETURN_BOOK:
            POP BX ;clear stack 
            CALL CLEAR_SCREEN

            CALL NEW_LINE

            MOV AH, 09H
            LEA DX, BOOK_RETURN_FAILED
            INT 21H

            CALL NEW_LINE
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
        CALL NEW_LINE
        MOV AH, 09H
        LEA DX, BOOK_LINE 
        INT 21H 
        CALL NEW_LINE

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
        CALL GET_DATE 
        POP BX ;move back to BX 

        MOV AH, 09H
        LEA DX, CURR_DATE
        INT 21H

        MOV AH, 09H
        LEA DX, DATE
        INT 21H

        CALL NEW_LINE
        MOV AH, 09H
        LEA DX, BOOK_LINE 
        INT 21H 
        CALL NEW_LINE

        RET 
    DISPLAY_BOOK_DETAILS ENDP

    ;return value to BX
    ;BX - negative if user not found in BORROW_BY_ARRAY else positive
    ;SI - point to BORROW_BY_ARRAY or USER_ID_ARRAY, is passed by caller pass array of user id
    ;DI - point to CURR_USER_ID, is passed by caller - pass a single user id
    CHECK_USER_EXISTENCE PROC
        ;Point to array

        MOV CX, 0
        CHECK_USER_ID_EXISTENCE:

            MOV BX, CX ;store CX => BX temporary for loop process
            MOV CX, 0
            COMPARE_USER_ID: 
                
                MOV AL, [SI]
                MOV AH, [DI]
                CMP AH, AL
                JNE WRONG_USER_ID ;if the char is not same then jump to WRONG_USER_ID

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
            CMP CX, 19 ;MAX BOOK COUNT - 1
            JA USER_ID_NOT_EXISTS

        JMP CHECK_USER_ID_EXISTENCE

        USER_ID_NOT_EXISTS:                    
            MOV BX, -1 ; set to -1 if user not found

        MATCH_USER_ID:
        ;return the index of the user at BORROW_BY_ARRAY
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
        CALL CALCULATE_DIFF_DAY
        
        CMP DIFF_DAY, 0 ; if does not exceed the return date will not stores the difference day to DIFF_DAY
        JA CALC_PENALTY_CHARGE ;calculate penalty if current date exceeds return date
        
        JMP NO_PENALTY_CHARGE
        
        CALC_PENALTY_CHARGE:
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
            CALL DISPLAY_PENALTY_CHARGE_DET   
            MOV HAS_PENALTY_CHARGE, 1
        NO_PENALTY_CHARGE:	
        RET
    CALCULATE_PENALTY ENDP

    ;Calculate the difference between return date and current date
    ; CURRENT = Calculate the total days from 1/1 to current date
    ; RETURN = Calculate the total days from 1/1 to return date
    ; DIFF_DAY = MAX(CURRENT - RETURN, 0) - indicate that if the DIFF_DAY will be overplaced by 0 if the value is negative
    CALCULATE_DIFF_DAY PROC
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
        ;CURRENT = get the total days from 1/1 to current date
        LEA SI, DAY_OF_MONTH
        MOV BL, CURR_DAY ;add day

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

        ;RETURN = get the total days from 1/1 to return date
        LEA SI, DAY_OF_MONTH
        MOV AL, RET_DAY
        SUB BX, AX
        MOV CL, RET_MONTH
        DEC CX
        CMP CX, 0 ;add day only if January
        JE END_COUNT_RET_DAY_OF_MONTHS
        ;subtract the total days from 1/1 to return date 
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

    CALCULATE_OVERTIME_DIFF_DAY PROC
        MOV DIFF_DAY, 0                 ; clear DIFF_DAY

        ;move to selected book's return date
        ;new SI = old SI + (selected Index * sizeOf(value))
        XOR AX, AX
        MOV AL, BOOK_ID_POSITION
        DEC AL
        MUL DATE_SIZE                   ; get the position of the book id
        LEA SI, RET_DATE_ARRAY          
        ADD SI, AX                      ; move to the selected book's return date

        ;get return day
        MOV AL, [SI]                    ; get the first digit of the return day
        SUB AL, 30H
        MUL TEN                         ; multiply the first digit by 10 to get the actual value
        MOV RET_DAY, AL                 ; store the actual value to RET_DAY

        INC SI                          ; move to the second digit of the return day

        MOV AL, [SI]                    ; get the second digit of the return day
        SUB AL, 30H     
        ADD RET_DAY, AL                 ; add the second digit to the actual value

        ADD SI, 2                       ; move to the return month

        ;get return month
        MOV AL, [SI]
        SUB AL, 30H
        MUL TEN                         ; multiply the first digit by 10 to get the actual value
        MOV RET_MONTH, AL               ; store the actual value to RET_MONTH

        INC SI                          ; move to the second digit of the return month

        MOV AL, [SI]
        SUB AL, 30H
        ADD RET_MONTH, AL               ; add the second digit to the actual value

        XOR BX, BX                      ; clear BX
        XOR CX, CX                      ; clear CX
        XOR AX, AX                      ; clear AX

        ; Count Difference Day between 1/1 to current date
        LEA SI, DAY_OF_MONTH            ; point to the first total day of months
        MOV BL, CURR_DAY                ; get the current day

        MOV CL, CURR_MONTH              ; get the current month
        DEC CX 
        CMP CX, 0                       ; add day only if January  
        JE END_COUNTOVERTIME_CURR_DAY_OF_MONTHS   
        COUNTOVERTIME_CURR_DAY_OF_MONTHS:
            MOV AL, [SI]                ; get the total day of the month (starts from january = 31)
            ADD BX, AX                  ; add the total day of the month to BX
            INC SI                      ; move to the next total day of month
        LOOP COUNTOVERTIME_CURR_DAY_OF_MONTHS      ; loop until the current month
        END_COUNTOVERTIME_CURR_DAY_OF_MONTHS:

        ; Currently BX is holding the total days from 1/1 to current date

        ; Count Difference Day between 1/1 to return date
        LEA SI, DAY_OF_MONTH            ; point to the first total day of months
        MOV AL, RET_DAY                 ; get the return day
        SUB BX, AX                      ; subtract the return day from BX
        MOV CL, RET_MONTH               ; get the return month
        DEC CX                          
        CMP CX, 0                       ; add day only if January  
        JE END_COUNTOVERTIME_RET_DAY_OF_MONTHS  ; if the return month is January, skip the loop
        COUNTOVERTIME_RET_DAY_OF_MONTHS:
            MOV AL, [SI]                ; get the total day of the month (starts from january = 31)
            SUB BX, AX                  ; subtract the total day of the month from BX
            CMP BX, 0                   ; check if BX is negative
            JS NOT_EXCEED_RET_DATE_OVERTIME    ; if BX is negative, not exceed the return date
            INC SI                      ; move to the next total day of month
        LOOP COUNTOVERTIME_RET_DAY_OF_MONTHS    ; loop until the return month

        END_COUNTOVERTIME_RET_DAY_OF_MONTHS:
            ;store the difference day to DIFF_DAY
            XOR CX, CX
            MOV DIFF_DAY, BX            ; store the difference day to DIFF_DAY

        NOT_EXCEED_RET_DATE_OVERTIME:   ; if BX is negative, diff day is 0
        RET                             
    CALCULATE_OVERTIME_DIFF_DAY ENDP    

    ;Display Penalty Charge Details
    ;Show how the penalty charge is calculated 
    ;Show the amount that the user needs to pay 
    DISPLAY_PENALTY_CHARGE_DET PROC 
        ;PENALTY CHARGE: RM 5.00 (Penalty Basic Rate) x 10 (Exceed Days) x 110% = RM 55.00 (Penalty Charge, MAX: RM 100.00)
        ;CALL NEW_LINE
        ;MOV AH, 09H
        ;LEA DX, PENALTY_CHARGE_LINE 
        ;INT 21H 
        ;CALL NEW_LINE

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

        ;display maximum charge
        XOR AX, AX 
        MOV AL, MAX_PENALTY_CHARGE
        XOR CX , CX 
        READ_MAX_PENALTY_CHARGE:
            INC CX 
            
            DIV TEN
            MOV BX, AX

            XOR AL, AL
            PUSH AX

            CMP BL, 0
            JE END_READ_MAX_PENALTY_CHARGE

            XOR BH, BH
            MOV AX, BX

        JMP READ_MAX_PENALTY_CHARGE

        END_READ_MAX_PENALTY_CHARGE:

        DISPLAY_MAX_PENALTY_CHARGE:
            POP BX
            MOV AH, 02H
            MOV DL, BH
            ADD DL, 30H
            INT 21H

        LOOP DISPLAY_MAX_PENALTY_CHARGE

        MOV AH, 09H
        LEA DX, ROUNDED_DECIMAL
        INT 21H

        MOV AH, 02H 
        MOV DL, ")"
        INT 21H 

        ;CALL NEW_LINE
        ;MOV AH, 09H
        ;LEA DX, PENALTY_CHARGE_LINE 
        ;INT 21H 
        CALL NEW_LINE

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

            
            ;format book name with spaces
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

           
            POP BX ; get back the value of BX from stack
            INC BOOK_COUNT ; count the number of books
            NEXT_BOOK:
                ;jmp to next value
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

        ;DISPLAY LINE
        MOV AH, 09H
        LEA DX, BOOK_CATALOG_LINE
        INT 21H

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

        ;VALIDATE - ensure only input digit
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

    ;---display border line
    BORDER PROC
        MOV AH,09H
        LEA DX,LINE
        INT 21H
        RET
    BORDER ENDP
END MAIN