.model small
.stack 100h
.data
    year dw 0         
    month db 0        
    day db 0    
    TEN DB 10    
.code
main:
    mov ah, 04h       ; Function 04h - Get Date
    int 1Ah           ; Call BIOS interrupt

    mov year, cx      ; Store year in memory

    mov month, dh     ; Store month in memory

    mov day, dl       ; Store day in memory

    mov ah, 02h       ; Function 02h - Display character
    mov dl, day       ; Display day
    add dl, 30h       ; Convert to ASCII
    int 21h

    mov ah, 02h       ; Function 02h - Display character
    mov dl, '/'       ; Display '/'
    int 21h


    mov ah, 02h       ; Function 02h - Display character
    mov dl, month     ; Display month
    add dl, 30h       ; Convert to ASCII

    int 21h

    mov ah, 02h       ; Function 02h - Display character
    mov dl, '/'       ; Display '/'
    int 21H

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
