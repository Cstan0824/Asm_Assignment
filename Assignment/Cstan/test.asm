.model small
.stack 100h
.data
    TEN DB 10    
.code
main:
    ;TEST PUSH and POP
    ;PUSH - save the value to stack with SP
    ;POP - get the value from the stack with SP
    MOV AX, @DATA
    MOV DS, AX

    MOV BX, 0
    MOV CX, 0
    MOV AX, 2024 
    READ_YEAR:
        INC CX
        DIV TEN
        MOV BX, AX

        MOV AL, 0
        PUSH AX 

        CMP BL, 0
        JE END_READ_YEAR

        MOV BH, 0
        MOV AX, BX 
    JMP READ_YEAR

    END_READ_YEAR:

        
    DISPLAY_YEAR:
        POP BX
        
        MOV AH, 02H
        MOV DL, BH
        ADD DL, 30H
        INT 21H

    LOOP DISPLAY_YEAR

    mov ah, 4Ch       ; Exit program
    int 21h
end main
