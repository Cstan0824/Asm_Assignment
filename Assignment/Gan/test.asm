                           .MODEL SMALL
.STACK 100
.DATA


    INPUTBUFFER LABEL BYTE 
        MAXN DB 5
        ACTN DB 0
        OUTPUT DB 5 DUP("$")

    NEWBOOKNAME LABEL BYTE
        MAXN_BOOKNAME DB 50
        ACTN_BOOKNAME DB 0
    EDITEDBOOKNAME DB 50 DUP("$")

    NEWAUTHORNAME LABEL BYTE 
        MAXN_AUTHOR DB 50
        ACTN_AUTHOR DB 0
    EDITEDAUTHOR DB 50 DUP("$")

                  
    STR DB "ENTER THE BOOK ID YOU WANT TO EDIT: $"
    NEWLINE DB 0DH,0AH,'$'
    BOOKNOTFOUND DB "BOOK NOT FOUND $"
    EDIT_BOOKNAME DB "ENTER THE NEW BOOK NAME : $"
    EDITAUTHOR DB "ENTER THE NEW AUTHOR NAME : $"
    EDIT_FIELD_PROMPT DB "Do you want to edit the Name (N) or Author (A): $"
    EDIT_FIELD_CHOICE DB 0
    INVALID_CHOICE DB "Invalid choice! Please enter N or A.$"
    BOOKEDITED DB "Book edited successfully!$"  

 
   


    NL DB 0DH,0AH,'$'
    TEN DB 10
    BOOK_CATELOG_HEADER DB " ID | Book Name | Author $"
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
    MOV AH , 09H
    LEA DX , NEWLINE
    INT 21H

    ;DISPPLAY INPUT
    MOV AH, 09H
    LEA DX, STR
    INT 21H

    ;READ INPUT
    LEA DX , INPUTBUFFER
    MOV AH, 0AH
    INT 21H

    MOV BL, OUTPUT[0]
    SUB BL, '0'

    ;SEARCH FOR THE BOOK EXISTENCE
    MOV SI , 0 
    MOV CX ,10 

    SEARCH_BOOK:
        CMP BL, BOOK_ID_ARRAY[SI]
        JE BOOK_FOUND

        INC SI
    LOOP SEARCH_BOOK

    MOV AH, 09H
    LEA DX, BOOKNOTFOUND
    INT 21H

    JMP EXIT_PROGRAM


    ;GO TO THE INDEX NUMBER OF THE BOOK , THEN READ THE BOOK NAME AND AUTHOR WHICH IS 2 ARRAY ,  FIND FOR THE $ SIGN AND REPLACE IT WITH THE NEW NAME AND AUTHOR
    BOOK_FOUND: 

    ;NEWLINE
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H

    MOV AH , 09H
    LEA DX , EDIT_FIELD_PROMPT
    INT 21H

    MOV AH, 01H
    INT 21H
    MOV EDIT_FIELD_CHOICE, AL

    CMP EDIT_FIELD_CHOICE, 'N'
    JE EDIT_NAME

    CMP EDIT_FIELD_CHOICE, 'A'
    JE EDIT_AUTHOR

    MOV AH, 09H
    LEA DX, INVALID_CHOICE
    INT 21H

    JMP EXIT_PROGRAM


EDIT_NAME: 
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H

    MOV AH ,09H 
    LEA DX , EDIT_BOOKNAME
    INT 21H

    LEA DX, NEWBOOKNAME
    MOV AH, 0AH
    INT 21H

    ;CALCUATE THE INDEX OF THE BOOK NAME  
    MOV AX, SI              ;MOV TO AX BECAUSE MUL
    MOV CX , 50
    MUL CX

    LEA DI , BOOK_NAME_ARRAY
    ADD DI , AX
    MOV CX, 50
    CLEAR_BOOK_NAME:
        MOV [DI], '$'
        INC DI
    LOOP CLEAR_BOOK_NAME
    SUB DI, 50


    LEA SI , EDITEDBOOKNAME

    XOR AX, AX  
    MOV AL, ACTN_BOOKNAME
    ADD SI, AX
    INC SI
    MOV [SI], '$' ;clear <enter> character

    MOV CX , 50

    ;REPLACE THE BOOK NAME
    REPLACE_BOOK_NAME:
        MOV AL , [SI]
        MOV [DI] , AL
        INC SI
        INC DI
    LOOP REPLACE_BOOK_NAME   
    MOV AH, 09h
    LEA DX, NL
    INT 21H
    CALL PRINTBOOK

    JMP EDIT_DONE


EDIT_AUTHOR:
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H

    MOV AH ,09H
    LEA DX , EDITAUTHOR
    INT 21H

    LEA DX, NEWAUTHORNAME
    MOV AH, 0AH
    INT 21H

    ;CALCUATE THE INDEX OF THE BOOK AUTHOR
    MOV AX, SI              ;MOV TO AX BECAUSE MUL
    MOV CX , 50
    MUL CX
    LEA DI , BOOK_AUTHORS
    ADD DI , AX

    LEA SI , EDITEDAUTHOR
    MOV CX , 50

    ;REPLACE THE AUTHOR NAME
    REPLACE_AUTHOR_NAME:
        

        MOV AL , [SI]
        MOV [DI], AL
        INC SI
        INC DI
    LOOP REPLACE_AUTHOR_NAME

    EDIT_DONE:
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H

    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H

    MOV AH, 09H
    LEA DX, BOOKEDITED
    INT 21H

    ;NEWLINE 
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H
    

    CALL PRINTBOOK

    JMP EXIT_PROGRAM


    


EXIT_PROGRAM:
    MOV AX, 4C00H   
    INT 21H   
MAIN ENDP

PRINTBOOK PROC 
        LEA SI , BOOK_NAME_ARRAY
        LEA DI , BOOK_AUTHORS

        MOV CX, 10
        MOV BX, 0
        DISPLAY_BOOKS:
            MOV BOOK_ID_COUNT, BX
            MOV AH, 02H
            MOV DL, '|'
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

            MOV AH, 02H
            MOV DL, '|'
            INT 21H

            ;Book_Name
            MOV AH, 09H
            LEA DX, SI
            INT 21H

            MOV AH, 02H
            MOV DL, '|'
            INT 21H

            ;Author
            MOV AH, 09H
            LEA DX, DI
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

END MAIN