.model small
.stack 100h
.data
    TEN DB 10    
.code
main:
    MOV CX, 4
    MOV AX, 2024 ; JUST HARD CODE LAHHHH BABI - Pttt
    DISPLAY_YEAR:
        DIV TEN
        MOV BX, AX

        MOV AH, 02H
        MOV DL, BH
        ADD DL, 30H
        INT 21H

        MOV AX, BX 
        MOV AH, 0H

    LOOP DISPLAY_YEAR

    mov ah, 4Ch       ; Exit program
    int 21h
end main
