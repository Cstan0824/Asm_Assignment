.model small
.stack 100h
.data
    YEAR db "2024$" 
    DATE_DELIMETER DB '/'          
    TEN DB 10
    DATE DB 11 DUP('$')
    date_msg db "Current Date: $"
    RET_DATE_ARRAY DB "01/09/2024$", "02/09/2024$","03/09/2024$","04/09/2024$","05/09/2024$","06/09/2024$","07/09/2024$", "08/09/2024$","09/09/2024$","10/09/2024$"
    SELECTED_BOOK_ID DB 2
    DATE_SIZE DB 11
    NL DB 0DH,0AH,"$"
.code
main:
    MOV AX, @data
    MOV DS, AX
    
    ;Get current date
    MOV AH, 04H      
    INT 1AH  

    
    LEA SI, DATE      
    
    ;Store Day
    MOV AX, 0
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
    MOV AX, 0
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
    LEA DI, year
    MOV CX, 4
    STORE_YEAR_TO_DATE:
        MOV AL , [DI]
        MOV [SI] , AL
        INC SI
        INC DI
    LOOP STORE_YEAR_TO_DATE

    ;Display current date
    MOV AH, 09H
    LEA DX, date_msg
    INT 21H

    MOV AH, 09H
    LEA DX, DATE
    INT 21H

    MOV AH,09H
    LEA DX, NL
    INT 21H

    ;assume that user want to return the second book
    DEC SELECTED_BOOK_ID

    LEA SI, RET_DATE_ARRAY
    ;move to selected book's return date
    ;new SI = old SI +(selected Index * sizeOf(value))
    MOV AX, 0
    MOV AL, SELECTED_BOOK_ID
    MUL DATE_SIZE

    ADD SI, AX

    MOV AH,09H
    LEA DX, [SI]
    INT 21H


    mov ah, 4Ch       ; Exit program
    int 21h
end main
