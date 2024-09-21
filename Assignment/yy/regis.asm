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
                    DB " | 2. Register Account", 18 DUP(" "), "|"
                    DB " | 3. Back to Menu", 22 DUP(" "), "|"
                    DB "$"
            

    NL DB 0AH,0DH,"$"
	LINE DB 0AH,0DH,"  ====================================== ",0DH, 0AH,"$"
	DISPLAY_WELCOME_MAINPAGE DB 0DH, 0AH,"Welcome to our library system!",0DH, 0AH,"$"

	;---Admin Menu
	DISPLAY_WELCOME_ADMINPAGE DB 0DH, 0AH,"Welcome to Admin page!",0DH, 0AH,"$"
	;---User Menu
	DISPLAY_WELCOME_USERPAGE DB 0DH, 0AH,"Welcome to User page!",0DH, 0AH,"$"

	;---login page displays
	DISPLAY_LOGIN DB 0DH, 0AH,"LOGIN$"
	DISPLAY_ENTER_USERNAME DB 0DH, 0AH," Please enter your username: $"
	DISPLAY_ENTER_PASSWORD DB 0DH, 0AH," Please enter your password: $"
	DISPLAY_LOGINFAIL DB 0DH, 0AH," The username or password u entered might be wrong, please try again!",0DH, 0AH,"$"
	DISPLAY_LOGINS DB 0DH, 0AH," Login Successfull!",0DH, 0AH,"$"

	

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
        DB "Fyodor Dostoevsky$", 11 DUP('$')
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
    BORROW_BY_ARRAY DB 40 DUP("$")
        DB "CSTAN$", 34 DUP('$');
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
    
    CURR_USER_ID DB "CSTAN$", 34 DUP('$')

    ;DATE
    DATE DB 11 DUP('$')
    RET_DATE_ARRAY DB 11 DUP("$")
                    DB "05/09/2024$"
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

    PROMPT_BOOK_IS_NOT_OVERTIME DB "Book is not overtime, cannot delete!$"

    ;Admin Login
    ADMIN_USERNAME DB "admin$"
	ADMIN_PASSWORD DB "admin123$"

	ADMIN_INPUT_USERNAME LABEL BYTE
	ADMIN_USERNAME_MAXN DB 40
	ADMIN_USERNAME_ACTN DB ?
	ADMIN_OUTPUT_USERNAME DB 40 DUP('$')

	ADMIN_INPUT_PASSWORD LABEL BYTE
	ADMIN_INPUT_PASSWORD_MAXN DB 12
	ADMIN_INPUT_PASSWORD_ACTN DB ?
	ADMIN_OUTPUT_PASSWORD DB 12 DUP('$')
    
    ;User Login
    USER_USERNAME DB "user$"
	USER_PASSWORD DB "user123$"

	USER_INPUT_USERNAME LABEL BYTE
	USER_USERNAME_MAXN DB 40
	USER_USERNAME_ACTN DB ?
	USER_OUTPUT_USERNAME DB 40 DUP("$")

	USER_INPUT_PASSWORD LABEL BYTE
	USER_INPUT_PASSWORD_MAXN DB 12
	USER_INPUT_PASSWORD_ACTN DB ?
	USER_OUTPUT_PASSWORD DB 12 DUP("$")
.CODE 
    MAIN PROC
        MOV AX,@DATA
        MOV DS,AX

        MOV AH,4C00H 
        INT 21H 
    MAIN ENDP 

       CREATE_USER_ACCOUNT PROC 
        ;check if the user_id_array is full - if full, display message and return
        ;check from first index of user_id_array
        MOV CX, 0
        CHECK_USER_AVAILABILITY:
            XOR AX, AX
            MOV BX, CX 
            DEC BX 
            MOV AL, USER_ID_SIZE 
            MUL BX 
            MOV BX, AX

            CMP USER_ID_ARRAY[BX], '$'
            JE START_INPUT_USER_DET ;if the user_id_array is not full, continue to input user details

            CMP CX, 20
            JE END_CHECK_USER_AVAILABILITY ; end the loop if the no empty slot is founded in the array
            INC CX 

        JMP CHECK_USER_AVAILABILITY
        END_CHECK_USER_AVAILABILITY:
            ;if the user_id_array is full, display message and return
            MOV AH, 09H
            LEA DX, DISPLAY_ARRAYFULL
            INT 21H
            RET

        START_INPUT_USER_DET:
        
        PUSH CX ;store the empty slo's index of the array to stack
        ;check with user_id_array if the username already exist - if exist, display message and return
        MOV AH, 09H
        LEA DX, DISPLAY_REGISTER
        INT 21H

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
        INC BX
        MOV USER_OUTPUT_USERNAME[BX], '$' ; clear '0DH' from the end of the string

        MOV AH, 09H 
        LEA DX, USER_OUTPUT_USERNAME
        INT 21H

        mov ah, 02H
        mov dl, 30H
        add dl, USER_USERNAME_ACTN
        int 21h 

        

        ;check if the username is already exist`
        ;if exist, display message and return
        ;if not exist, continue to register the user
        XOR BX, BX ; clear BX register - set to 0
        MOV BL, USER_USERNAME_ACTN
        INC BL
        MOV USER_OUTPUT_USERNAME[BX], '$' ; clear '0DH' from the end of the string

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
        CALL SYSTEM_PAUSE 
        CALL CLEAR_SCREEN

        JMP START_INPUT_USER_DET
        CONTINUE_INPUT_PASSWORD: ; continue input password if user id is not founded inside the user id array
        ; Display prompt to enter a new password
        MOV AH, 09H
        LEA DX, DISPLAY_ENTER_PASSWORD
        INT 21H

        ; Input new password
        MOV AH, 0AH
        LEA DX, USER_INPUT_PASSWORD
        INT 21H

        CMP USER_INPUT_PASSWORD_ACTN, 4
        JAE  STORE_REGIS_USER_DET_TO_ARRAY ; user only allowed to enter from 4 to 11 characters for password
        CMP USER_INPUT_PASSWORD_ACTN, 11
        JBE  STORE_REGIS_USER_DET_TO_ARRAY

        

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

        ;user id and password is inputed successfully
        STORE_REGIS_USER_DET_TO_ARRAY:
            XOR BX, BX ; clear BX register - set to 0

            

            MOV BL, USER_INPUT_PASSWORD_ACTN
            INC BX 
            MOV USER_OUTPUT_PASSWORD[BX], '$' ; clear '0DH' from the end of the string

            POP CX ;get the empty slot's index of the array from stack
            LEA SI, USER_ID_ARRAY        
            LEA DI, USER_OUTPUT_USERNAME

            XOR AX, AX ;clear AX register - set to 0
            MOV BX, CX
            DEC BX
            MOV Al, USER_ID_SIZE
            MUL BX

            PUSH CX ;push the empty slot's index of the array to stack for later use - store password to array

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
            DEC BX
            MOV AX, 12 ; size of password
            MUL BX

            MOV CX, 12 ; copy the password to the user_password_array
            COPY_USER_PASSWORD:
                MOV AL, [DI]
                MOV [SI], AL
                INC SI
                INC DI 
            LOOP COPY_USER_PASSWORD

            CALL CLEAR_SCREEN
            MOV AH, 09H
            LEA DX, DISPLAY_REGISTRATION_SUCCESS
            INT 21H

            CALL NEW_LINE
            CALL SYSTEM_PAUSE
            CALL CLEAR_SCREEN
        RET
    CREATE_USER_ACCOUNT ENDP 

END MAIN 