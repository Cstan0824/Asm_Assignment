	.model small
	.stack 100h
	.data
	YEAR db "2024$"
	DATE_DELIMETER DB '/'
	
	date_msg db "Current Date: $"
	RET_DATE_ARRAY DB "01/09/2024$", "02/09/2024$", "03/09/2024$", "04 / 09 / 2024$", "05 / 09 / 2024$", "06 / 09 / 2024$", "07 / 09 / 2024$", "08 / 09 / 2024$", "09 / 09 / 2024$", "10 / 09 / 2024$"
	SELECTED_BOOK_ID DB 2
	DATE_SIZE DB 11
	DAY_OF_MONTH DB 31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31
	
	CURR_MONTH DB 0
	CURR_DAY DB 0
	RET_MONTH DB 0
	RET_DAY DB 0
	DIFF_DAY DW 0
	
	NL DB 0DH, 0AH, "$"
	TEN DB 10
    CORRECT DB "Correct Date$"
    INCORRECT DB "Incorrect Date$"

    PENALTY_RATE DB 5
    PENALTY_CHARGE Dw 0

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
	
	ADD SI, 2
	
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


    MOV BX, 0  
    MOV CX, 0
    ;count the diff days
    LEA SI, DAY_OF_MONTH
    MOV BL, CURR_DAY

    MOV CL, CURR_MONTH
    DEC CX
    COUNT_CURR_DAY_OF_MONTHS:
        ADD BL, [SI]
    LOOP COUNT_CURR_DAY_OF_MONTHS

    LEA SI, DAY_OF_MONTH
    SUB BL, RET_DAY
    MOV CL, RET_MONTH
    DEC CX
    COUNT_RET_DAY_OF_MONTHS:
        SUB BL, [SI]
    LOOP COUNT_RET_DAY_OF_MONTHS

	INC BX ;include the current day

	MOV CX, 0
    MOV DIFF_DAY, BX
    MOV AX, BX

	;ADA MASALAH DI SINI
    READ_DIFF_DAY:
		INC CX
        DIV TEN 
        MOV BX, AX 

		MOV AL, 0 ; remove the integral part
        PUSH AX ;save value to the stack

        CMP BL, 0
        JE END_READ_DIFF_DAY

		MOV BH, 0 ; remove remainder part
		MOV AX, BX 
    JMP READ_DIFF_DAY

    END_READ_DIFF_DAY:

	DISPLAY_DIFF_DAY:
		POP BX ; get the value from stack

		MOV AH, 02H 
		MOV DL, BH 
		ADD DL, 30H 
		INT 21H	
	LOOP DISPLAY_DIFF_DAY

    CMP DIFF_DAY, 0
    JBE CHECK_OUT_PENALTY ;calculate penalty if current date exceeds return date

	MOV AX, DIFF_DAY
	MUL PENALTY_RATE

	CMP AX, 100
	JBE NOT_MAXIMUM_CHARGE_PENALTY
	MOV PENALTY_CHARGE, 100
	JMP CHECK_OUT_PENALTY

	NOT_MAXIMUM_CHARGE_PENALTY:
		MOV PENALTY_CHARGE, AX

    CHECK_OUT_PENALTY:

	MOV AH, 09H
	LEA DX, NL
	INT 21H

	;DISPLAY PENALTY CHARGE AMOUNT
	MOV BX, 0
	MOV CX, 0
	MOV AX, PENALTY_CHARGE
	READ_PENALTY:
		INC CX
		DIV TEN 
        MOV BX, AX 

		MOV AL, 0
		PUSH AX ; save the value to stack

        CMP BL, 0
        JE END_READ_PENALTY

		MOV BH, 0 ; remove remainder part
		MOV AX, BX 
	JMP READ_PENALTY 

	END_READ_PENALTY:

	DISPLAY_PENALTY:
		POP BX ; get the value from stack

		MOV AH, 02H 
		MOV DL, BH 
		ADD DL, 30H 
		INT 21H
	LOOP DISPLAY_PENALTY		

	mov ah, 4Ch                  ; Exit program
	int 21h
end main
