.model small
.stack 100h
.data
     THOUSAND DW 1000
     HUNDRED DB 100
     TEN DB 10 
     PRICE DW 65
     RATE DW 10

    OUT_PRICE DB  6 DUP("$")
.code
main:
    MOV AX, @DATA
    MOV DS, AX 

    LEA SI, OUT_PRICE

    MOV AX , PRICE
    MOV BX , RATE 
    ADD BL , HUNDRED 
    MUL BX 
    
    PUSH AX 
    DIV HUNDRED
    XOR AH,AH ; get only integral part 
    XOR CX, CX
    READ_PRICE:  
        INC CX
      
        DIV TEN
        MOV BX, AX
        MOV AL, 0
        PUSH AX
        
        CMP BL, 0
        JE END_READ_PRICE
        
        MOv BH, 0
        MOV AX, BX
        
    
    JMP READ_PRICE  
      END_READ_PRICE:
    STORE_PRICE: 
        POP BX
        MOV [SI], BH
        ADD [SI], 30H
        INC SI
    LOOP STORE_PRICE
    
    MOV [SI], '.'
    INC SI 
    
    POP AX
    CMP AH, 0
    JNE HAS_DECIMAL
        
    MOV [SI], '0'
    INC SI
    MOV [SI], '0'
    INC SI

    JMP DISPLAY_PRICE
    HAS_DECIMAL:
    
    ;CALCULATE DECIMAL
    ;get the remainder for decimal calculation
    MOV BL, HUNDRED
    DIV BL ; AX = AX / 100 
    
    MOV CX, 2 ; take only 2 decimal places
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

    DISPLAY_PRICE:
        MOV AH, 09H
        LEA DX, OUT_PRICE
        INT 21H

    mov ah, 4Ch       
    int 21h
end main