.model small
.stack 100h
.data
    TEN DB 10   
    HELLO DB 'HELLO WORLD$' 
    NL DB 0DH, 0AH, '$'
.code
main:
    MOV AX, @DATA
    MOV DS, AX

    mov ah, 09h          ; BIOS function to write character and attributes
    mov al, ' '          ; Character to display
    mov bh, 0            ; Page number (usually 0)
    mov bl, 04h          ; Attribute byte (foreground: yellow, background: black)
    mov cx, 1000H        ; Number of times to print the character - for that row only
    int 10h              ; Call BIOS interrupt

    MOV AH, 09h
    LEA DX, HELLO
    INT 21H

    MOV AH, 09h
    LEA DX, NL
    INT 21h

   
    MOV AH, 09h
    LEA DX, HELLO
    INT 21H

    mov ah, 4Ch       
    int 21h
end main
