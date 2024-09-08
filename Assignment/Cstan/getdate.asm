	.model small
	.stack 100h
	.data
	YEAR db "2024$"
	DATE_DELIMETER DB ' / '
	
date_msg db "Current Date: $"
	RET_DATE_ARRAY DB "01/09/2024$", "02/09/2024$", "03/09/2024$", "04/09/2024$", "05/09/2024$", "06/09/2024$", "07/09/2024$", "08/09/2024$", "09/09/2024$", "10/09/2024$"
	SELECTED_BOOK_ID DB 2
	DATE_SIZE DB 11
	DAY_OF_MONTH DB 31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31
	
	CURR_MONTH DB ?
	CURR_DAY DB ?
	RET_MONTH DB ?
	RET_DAY DB ?
	DIFF_DAY DB 0
	
	NL DB 0DH, 0AH, "$"
	TEN DB 10
    CORRECT DB "Correct Date$"
    INCORRECT DB "Incorrect Date$"
	.code
main:
	MOV AX, @data
	MOV DS, AX
	
	;assume that user want to return the second book
	DEC SELECTED_BOOK_ID
	LEA SI, RET_DATE_ARRAY
	
	;move to selected book's return date
	;new SI = old SI + (selected Index * sizeOf(value))
	MOV AX, 0
	MOV AL, SELECTED_BOOK_ID
	MUL DATE_SIZE
	
	ADD SI, AX
	
	MOV AH, 09H
	LEA DX, [SI]
	INT 21H
	
	;get return day
	MOV AL, [SI]
	SUB AL, 30H
	MUL TEN
	MOV RET_DAY, AL
	
	INC SI
	
	MOV AL, [SI]
	SUB AL, 30H
	ADD RET_DAY, AL
	
	INC SI
	
	;get return month
	MOV AL, [SI]
	SUB AL, 30H
	MUL TEN
	MOV RET_MONTH, AL
	
	INC SI
	
	MOV AL, [SI]
	SUB AL, 30H
	ADD RET_MONTH, AL

	;Get current date
	MOV AH, 04H
	INT 1AH
	MOV CURR_MONTH, DH
	MOV CURR_DAY, DL

    MOV BL, RET_DAY 
    CMP BL, CURR_DAY
    JNE XSAME
    MOV BL, RET_MONTH
    CMP BL, CURR_MONTH
    JNE XSAME

    MOV AH, 09H
    LEA DX, CORRECT
    INT 21H

    JMP FIN

    XSAME:
        MOV AH, 09H
        LEA DX, INCORRECT
        INT 21H


	
	
	
	
	FIN:
	mov ah, 4Ch                  ; Exit program
	int 21h
end main
