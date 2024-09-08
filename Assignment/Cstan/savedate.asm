.model small
.stack 100h
.data
    YEAR db "2024$" 
    DATE_DELIMETER DB '/'        
    month db 0        
    day db 0    
    TEN DB 10
    DATE DB 11 DUP('$')
    date_msg db "Current Date: $"
    RETURN_DATE_ARRAY DB "01/09/2024$", "02/09/2024$","03/09/2024$","04/09/2024$","05/09/2024$","06/09/2024$","07/09/2024$", "08/09/2024$","09/09/2024$","10/09/2024$"
.code
main:
    MOV AX, @data
    MOV DS, AX
    
    ;Get current date
    mov ah, 04h       
    int 1Ah  

    LEA SI, DATE      
    
    ;Display Day
    MOV AX, 0
    MOV AL, DL 
    DIV TEN
    MOV BX, AX
    
    MOV AH,02h
    MOV DL, BL
    ADD DL, 30h
    INT 21h

    ADD BL, 30H
    MOV [SI], BL
    INC SI

    MOV AH, 02H
    MOV DL, BH
    ADD DL, 30h
    INT 21h

    ADD BH, 30H
    MOV [SI], BH
    INC SI

    ; Display '/'
    mov ah, 02h       
    mov dl, '/'      
    int 21h

    MOV BL, DATE_DELIMETER
    MOV [SI], BL
    INC SI

    ; Display month
    MOV AX, 0
    MOV AL, DH
    DIV TEN
    MOV BX, AX 

    MOV AH, 02h
    MOV DL, BL
    ADD DL, 30h
    INT 21h

    ADD BL, 30H
    MOV [SI], BL
    INC SI

    MOV AH, 02H
    MOV DL, BH
    ADD DL, 30h
    INT 21h

    ADD BH, 30H
    MOV [SI], BH
    INC SI

    ; Display '/'
    mov ah, 02h       
    mov dl, '/'       
    int 21H

    MOV BL, DATE_DELIMETER
    MOV [SI], BL
    INC SI

    ;Display year
    MOV AH, 09H
    LEA DX, YEAR
    INT 21H

    LEA DI, year
    MOV CX, 4
    STORE_YEAR_TO_DATE:
        MOV AL , [DI]
        MOV [SI] , AL
        INC SI
        INC DI
    LOOP STORE_YEAR_TO_DATE

    LEA DX, date_msg
    MOV AH, 09H
    INT 21H

    LEA DX, DATE
    MOV AH, 09H
    INT 21H

    mov ah, 4Ch       ; Exit program
    int 21h
end main
