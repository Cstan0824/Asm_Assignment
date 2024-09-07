.MODEL SMALL
.STACK 100

.DATA
    BOOK_ID DB 1,2,3,4,5,6,7,8,9,10
    BOOK_NAME DB "BOOK1$","BOOK2$","BOOK3$","BOOK4$","BOOK5$","BOOK6$","BOOK7$","BOOK8$","BOOK9$","BOOK10$"
    BOOK_AUTHOR DB "AUTHOR1$","AUTHOR2$","AUTHOR3$","AUTHOR4$","AUTHOR5$","AUTHOR6$","AUTHOR7$","AUTHOR8$","AUTHOR9$","AUTHOR10$"
    BOOK_DESC DB "DESC1$","DESC2$","DESC3$","DESC4$","DESC5$","DESC6$","DESC7$","DESC8$","DESC9$","DESC10$"
    BOOK_CATEGORY DB "CATEGORY1$", "CATEGORY2$", "CATEGORY3$"
    BOOK_PUBLISH_YEAR DW 2000,2001,2002,2003,2004,2005,2006,2007,2008,2009
    BOOK_IsBorrowed DB 0,1,0,1,0,1,0,1,0,1
    BORROWED DB "Borrowed$"
    NOT_BORROWED DB "Not Borrowed$"
    NL DB 0DH,0AH,'$'
.CODE

    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX

        CALL READ_BOOK_CATEGORY

        CALL WRITE_BOOK_CATEGORY

        CALL EDIT_BOOK_CATEGORY

        MOV AX, 4C00H
        INT 21H

    MAIN ENDP

    READ_BOOK_CATEGORY PROC
        MOV CX, 11
        MOV SI, 0   

        READ_CATEGORY:
            ;Print Book_ID
            MOV AH,02H
            MOV DL , [BOOK_ID + SI]
            
            INT 21H

            ;Print Book_Name
            MOV AH, 09H
            LEA DX, [BOOK_NAME + SI]
            INT 21H

            ;Print Book_Author
            MOV AH, 09H
            LEA DX, [BOOK_AUTHOR + SI]
            INT 21H

            ;Print Book_Desc
            MOV AH, 09H
            LEA DX, [BOOK_DESC + SI]
            INT 21H

            ;Print Book_Category
            MOV AH, 09H
            LEA DX, [BOOK_CATEGORY + SI]
            INT 21H

            ;Print Book_Publish_Year
            MOV AH,02H
            MOV DX, [BOOK_PUBLISH_YEAR + SI]
            ADD DX,30H
            INT 21H

            ;Print Book_IsBorrowed
            MOV AL, [BOOK_IsBorrowed + SI]
            CMP AL, 0
            JE PRINT_NOT_BORROWED
            
            ;Print "Borrowed"
            MOV AH, 09H
            LEA DX, BORROWED
            INT 21H
            JMP END_PRINT

            ;Print "Not Borrowed"
            PRINT_NOT_BORROWED:
                MOV AH, 09H
                LEA DX, NOT_BORROWED
                INT 21H


            END_PRINT:

            INC SI
        LOOP READ_CATEGORY


    READ_BOOK_CATEGORY ENDP



    WRITE_BOOK_CATEGORY PROC

    WRITE_BOOK_CATEGORY ENDP



    EDIT_BOOK_CATEGORY PROC 

    EDIT_BOOK_CATEGORY ENDP 

    REMOVE_BOOK_CATEGORY PROC

    REMOVE_BOOK_CATEGORY ENDP 

END MAIN