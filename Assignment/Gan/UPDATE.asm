.MODEL SMALL
.STACK 100
.DATA


    INPUTBUFFER LABEL BYTE 
    MAXN DB 5
    ACTN DB 0
    OUTPUT DB 5 DUP("$")

    NEWBOOKNAME LABEL BYTE
    MAXN_BOOKNAME DB 30
    ACTN_BOOKNAME DB 0
    EDITEDBOOKNAME DB 50 DUP("$")

    NEWAUTHORNAME LABEL BYTE 
        MAXN_AUTHOR DB 30
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
    INVALID_INPUT DB "Invalid input! Please enter a number between 1 and 20.$"
    EMPTYINPUT DB "NO EMPTY INPUT ARE ALLOWED !!! $"
    LENGTHINPUT DB "INVALID INPUT! THE LENGTH OF THE INPUT IS TOO LONG $"

 
   


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

    ;DISPLAY INPUT
    MOV AH, 09H
    LEA DX, STR
    INT 21H

    ;READ INPUT
    LEA DX , INPUTBUFFER
    MOV AH, 0AH
    INT 21H

    CALL BOOK_ID_VALIDATION     ; CAN ONLY ACCEPT 1 TO 10  


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

    ; VALIDATION FOR THE EDIT_FIELD_CHOICE
    MOV AH, 09H
    LEA DX, INVALID_CHOICE
    INT 21H

    JMP BOOK_FOUND 


EDIT_NAME: 
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H

    ;DISPLAY INPUT
    MOV AH ,09H 
    LEA DX , EDIT_BOOKNAME
    INT 21H

    ;READ INPUT
    LEA DX, NEWBOOKNAME
    MOV AH, 0AH
    INT 21H

    

    

    CALL INPUT_VALIDATION_LENGHT_EMPTY

    ;CALCUATE THE INDEX OF THE BOOK NAME  
    MOV AX, SI              ;MOV TO AX BECAUSE MUL
    MOV CX , 50
    MUL CX

    LEA DI , BOOK_NAME_ARRAY
    ADD DI , AX
    MOV CX, 50  


    ;set all to $
    CLEAR_BOOK_NAME:
        MOV AL, '$'
        MOV [DI], AL
        INC DI
    LOOP CLEAR_BOOK_NAME

    ;MOVE BACK TO THE BOOK NAME IN ORDER TO PRINT 
    SUB DI, 50

    LEA SI , EDITEDBOOKNAME 
    
    ;clear <enter> character   
    XOR AX, AX     
    MOV AL, ACTN_BOOKNAME
    ADD SI, AX
    MOV AH, '$'
    MOV [SI], AH   
    ;point to starting point of value
    XOR AH, AH      
    SUB SI, AX

    MOV CL , ACTN_BOOKNAME

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

    JMP EXIT_PROGRAM



EDIT_AUTHOR:
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H

    MOV AH, 09H
    LEA DX, EDITAUTHOR
    INT 21H

    LEA DX, NEWAUTHORNAME
    MOV AH, 0AH
    INT 21H

    CALL INPUT_VALIDATION_LENGHT_EMPTY

    ;CALCULATE THE INDEX OF THE AUTHOR IN THE BOOK_AUTHOR ARRAY
    MOV AX, SI
    MOV CX, 50
    MUL CX

    LEA DI, BOOK_AUTHORS
    ADD DI, AX

    MOV CX, 50
    ; Set all previous author name characters to '$'
    CLEAR_AUTHOR_NAME:
        MOV AL, '$'
        MOV [DI], AL
        INC DI
    LOOP CLEAR_AUTHOR_NAME
    SUB DI, 50

    LEA SI, EDITEDAUTHOR
    
    ; Clear <enter> character from input
    XOR AX, AX
    MOV AL, ACTN_AUTHOR
    ADD SI, AX
    MOV AH, '$'
    MOV [SI], AH

    ; Point back to the start of the edited author name
    XOR AH, AH
    SUB SI, AX

    MOV CL, ACTN_AUTHOR

    ; REPLACE AUTHOR NAME
    REPLACE_AUTHOR_NAME:
        MOV AL, [SI]
        MOV [DI], AL
        INC SI
        INC DI
    LOOP REPLACE_AUTHOR_NAME

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
            MOV DX, SI
            INT 21H

            MOV AH, 02H
            MOV DL, '|'
            INT 21H

            ;Author
            MOV AH, 09H
            MOV DX, DI
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

BOOK_ID_VALIDATION PROC

    CMP INPUTBUFFER[1], 1
    JE CHECK_ONE_CHARACTER

    CMP INPUTBUFFER[1], 2
    JE CHECK_TWO_CHARACTER

    JMP INVALID_INPUT_BOOK_ID

CHECK_ONE_CHARACTER:
    CMP INPUTBUFFER[2], "1"         ; OUTPUT[0]
    JL INVALID_INPUT_BOOK_ID

    CMP INPUTBUFFER[2], "9"         ; OUTPUT[0]
    JG INVALID_INPUT_BOOK_ID

    RET

CHECK_TWO_CHARACTER: 

    CMP INPUTBUFFER[2], "1"         ;OUTPUT[0]
    JE CHECK_10_TO_19

    CMP INPUTBUFFER[2], "2"         ;OUTPUT[0]
    JE CHECK_20 

    JMP INVALID_INPUT_BOOK_ID


CHECK_10_TO_19:
    CMP INPUTBUFFER[3], "0"         ;OUTPUT[1]
    JL INVALID_INPUT_BOOK_ID

    CMP INPUTBUFFER[3], "9"         ;OUTPUT[1]
    JG INVALID_INPUT_BOOK_ID

    RET

CHECK_20:
    CMP INPUTBUFFER[3], "0"         ;OUTPUT[1]
    JE VALID_INPUT

    JMP INVALID_INPUT_BOOK_ID

VALID_INPUT:
    RET

INVALID_INPUT_BOOK_ID: 

    MOV AH ,09H 
    LEA DX , NEWLINE 
    INT 21H 

    MOV AH , 09H
    LEA DX , INVALID_INPUT
    INT 21H

    JMP EXIT_PROGRAM   ; CAN CHANGE WHERE TO LEAD TO

BOOK_ID_VALIDATION ENDP

INPUT_VALIDATION_LENGHT_EMPTY PROC
    CMP NEWBOOKNAME[2] , 0DH  
    JE EMPTY_INPUT_HANDLE

    MOV AL , MAXN_BOOKNAME
    CMP ACTN_BOOKNAME , AL
    JG LENGTH_INPUT_HANDLE

    CMP NEWAUTHORNAME[2] , 0DH 
    JE EMPTY_INPUT_HANDLE

    MOV AL , MAXN_AUTHOR
    CMP ACTN_AUTHOR , AL
    JG LENGTH_INPUT_HANDLE

    RET

EMPTY_INPUT_HANDLE:

    MOV AH , 09H 
    LEA DX ,  NEWLINE 
    INT 21H

    MOV AH , 09H
    LEA DX , EMPTYINPUT
    INT 21H
    
    JMP EXIT_PROGRAM  ; SEE WHERE TO LEAD TO

LENGTH_INPUT_HANDLE:

    MOV AH , 09H
    LEA DX , NEWLINE
    INT 21H

    MOV AH , 09H
    LEA DX , LENGTHINPUT
    INT 21H

    JMP EXIT_PROGRAM  ; SEE WHERE TO LEAD TO

INPUT_VALIDATION_LENGHT_EMPTY ENDP

END MAIN