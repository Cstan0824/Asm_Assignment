.MODEL SMALL
.STACK 100
.DATA
 
    STR DB "ENTER THE BOOK ID YOU WANT TO BORROW : $"
    INPUTBUFFER DB 10, 0               ; Buffer: Max 10 characters, 0 characters entered initially
    BUFFERSPACE DB 10 DUP('$')         ; Space to store user input (10 bytes)  
    NEWLINE DB 13, 10, '$'   
    BOOKNOTFOUND DB "Book ID not found!$"
    BOOKFOUND DB "Book ID found!$"
    BORROW_CONFIRMATION DB "Do you want to borrow this book? (Y/N): $"
    BORROW_CHOICE DB ?
    AVAILABLE DB "AVAILABLE$"
    BOOK_STATUS_NOT_AVAILABLE DB "The book is not available for borrowing.$"
    USER_NAME DB "USER$"
    BOOK_STATUS_AVAILABLE DB "The book is available for borrowing.$"
    INVALIDINPUT DB "Invalid input!$"



    NL DB 0DH,0AH,'$'
    TEN DB 10
    BOOK_CATELOG_HEADER DB " ID | Book Name | Autohr $"
    TABLE_LINE DB "===============================================$"
	BOOK_ID_ARRAY DB 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
    BOOK_ID_COUNT DW ?
    BOOK_STATUS_ARRAY DB "AVAILABLE", "AVAILABLE", "AVAILABLE", "AVAILABLE", "AVAILABLE", "AVAILABLE", "AVAILABLE", "AVAILABLE", "AVAILABLE", "AVAILABLE "

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


.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    CALL PRINTBOOK

    ; NEWLINE
    MOV AH, 09H
    LEA DX  ,NEWLINE
    INT 21H

    ; DISPLAY INPUT 
    MOV AH, 09H
    LEA DX, STR
    INT 21H 

    ; READ INPUT
    LEA DX, inputBuffer
    MOV AH, 0AH
    INT 21H

    ;VALIDATION FOR THE INPUT 
    CALL VALIDATION_FOR_INPUT
           

    ;READ THE BOOK ID ARRAY
    MOV CX ,10 
    MOV SI , 0     

    SEARCH_BOOK_ID:
        CMP BL , BOOK_ID_ARRAY[SI]      ;COMPARE THE INPUT WITH THE BOOK ID ARRAY           
        JE BOOK_FOUND                             

        INC SI                          
        LOOP SEARCH_BOOK_ID             ;LOOP UNTIL THE BOOK ID IS FOUND

        ;NEWLINE
        MOV AH ,09H 
        LEA DX , NEWLINE    
        INT 21H

        ;BOOK ID NOT FOUND
        MOV AH , 09H
        LEA DX , BOOKNOTFOUND
        INT 21H
        JMP EXIT_PROGRAM

    ;CHECK IF THE BOOK IS AVAILABLE
    BOOK_FOUND: 
        MOV AX, SI                        ;MOV TO AX BECAUSE MUL
        MOV BL, 9                         ;MULTIPLY THE INDEX BY 9 TO GET THE BOOK STATUS ARRAY INDEX                  
        MUL BL                           
        LEA SI, BOOK_STATUS_ARRAY         ;BOOK STATUS ARRAY ADDRESS   
        ADD SI, AX                        ;ADD THE INDEX TO THE ADDRESS

        MOV CX , 9
        LEA DI , AVAILABLE

        COMPARE_AVAILABLE:
            MOV AL , [SI]                  ;GET STATUS FROM BOOK STATUS ARRAY
            CMP AL , [DI]                  ;COMPARE WITH AVAILABLE STRING 
            JNE BOOK_NOT_AVAILABLE
            INC SI
            INC DI
        LOOP COMPARE_AVAILABLE

        ;NEWLINE
        MOV AH, 09H
        LEA DX, NEWLINE
        INT 21H

        ;DISPLAY BOOK STATUS
        MOV AH, 09H
        LEA DX, BOOK_STATUS_AVAILABLE   
        INT 21H

        ;NEWLINE 
        MOV AH, 09H
        LEA DX, NEWLINE
        INT 21H

        ;ASK FOR CONFIRMATION TO BORROW THE BOOK
        MOV AH, 09H
        LEA DX, BORROW_CONFIRMATION
        INT 21H

        MOV AH, 01H                  
        INT 21H
        CMP AL, 'Y'
        JE BORROW_BOOK               


        JMP EXIT_PROGRAM

        BOOK_NOT_AVAILABLE:
        MOV AH, 09H
        LEA DX, BOOK_STATUS_NOT_AVAILABLE
        INT 21H
        JMP EXIT_PROGRAM

    BORROW_BOOK:
        LEA DI , USER_NAME          ;POINT TO THE USER NAME 

        MOV CX , 9
    COPY_USER_NAME:
        MOV AL , [DI]
        MOV [SI], AL
        INC SI
        INC DI
        LOOP COPY_USER_NAME

        MOV AH, 09H
        LEA DX, NEWLINE
        INT 21H

        MOV SI ,  90 

        MOV 



    JMP EXIT_PROGRAM




MAIN ENDP

PRINTBOOK PROC 
        LEA SI , BOOK_NAME_ARRAY
        LEA DI , BOOK_AUTHORS

        MOV CX, 10
        MOV BX, 0
        DISPLAY_BOOKS:
            MOV BOOK_ID_COUNT, BX
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

            MOV AH, 02H
            MOV DL, '|'
            INT 21H

            ;Book_Name
            MOV AH, 09H
            LEA DX, [SI]
            INT 21H

            MOV AH, 02H
            MOV DL, '|'
            INT 21H

            ;Author
            MOV AH, 09H
            LEA DX, [DI]
            INT 21H

            MOV BX, BOOk_ID_COUNT
            INC BX
            ADD SI, 50
            ADD DI, 50

            ;NEW LINE
            MOV AH, 09H
            LEA DX, NL
            INT 21H
        LOOP DISPLAY_BOOKS
    RET
PRINTBOOK ENDP


VALIDATION_FOR_INPUT PROC

    MOV BL, [INPUTBUFFER + 2] 
    CMP BL, '0'
    JE INVALID_INPUT

    SUB BL, '0'
    RET

INVALID_INPUT:

        ;NEWLINE 
        MOV AH ,09H
        LEA DX , NEWLINE
        INT 21H

        MOV AH, 09H
        LEA DX, INVALIDINPUT
        INT 21H

        ;NEWLINE 
        MOV AH, 09H
        LEA DX, NEWLINE
        INT 21H
        
    JMP MAIN
VALIDATION_FOR_INPUT ENDP


EXIT_PROGRAM:
        MOV AX, 4C00H
        INT 21H                      





END MAIN