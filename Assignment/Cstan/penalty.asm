                                             	.model small
	.stack 100h
	.data
	YEAR db "2024$"
	DATE_DELIMETER DB '/'
	
	date_msg db "Current Date: $"
	RET_DATE_ARRAY DB "01/09/2024$", "28/08/2024$", "03/09/2024$", "04/09/2024$", "05/09/2024$", "06/09/2024$", "07/09/2024$", "08/09/2024$", "09/09/2024$", "10/09/2024$"
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
	HUNDRED DB 100
    CORRECT DB "Correct Date$"
    INCORRECT DB "Incorrect Date$"

    PENALTY_RATE DB 5
    PENALTY_CHARGE DW 0
	PENALTY_EXTRA_RATE DB 10 ; extra 10% charge if the diff days exceed 14 days
    MAX_PENALTY_CHARGE DB 100
	PENALTY DB 6 DUP("$")
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
	;MOV AH, 04H
	;INT 1AH
	MOV DH, 9
	MOV DL, 14
	MOV CURR_MONTH, DH
	MOV CURR_DAY, DL


    MOV BX, 0  
    MOV CX, 0
    ;count the diff days
    LEA SI, DAY_OF_MONTH
    MOV BL, CURR_DAY

    MOV CL, CURR_MONTH
    DEC CX 
    CMP CX, 0
    JE END_COUNT_CURR_DAY_OF_MONTHS   
    COUNT_CURR_DAY_OF_MONTHS:
        MOV AL, [SI]  
        ADD BX, AX
        INC SI
    LOOP COUNT_CURR_DAY_OF_MONTHS   
    END_COUNT_CURR_DAY_OF_MONTHS:

    LEA SI, DAY_OF_MONTH 
    MOV AL, RET_DAY
    SUB BX, AX
    MOV CL, RET_MONTH
    DEC CX 
    CMP CX, 0
    JE END_COUNT_RET_DAY_OF_MONTHS
    COUNT_RET_DAY_OF_MONTHS:
        MOV AL, [SI]
        SUB BX, AX
        CMP BX, 0
        JS NO_PENALTY_CHARGE:    
        INC SI
    LOOP COUNT_RET_DAY_OF_MONTHS  
    END_COUNT_RET_DAY_OF_MONTHS:

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
    JE NO_PENALTY_CHARGE ;calculate penalty if current date exceeds return date
	; PENALTY_EXTRA_RATE (10) / PENALTY_RATE (5) = 2 ( diff_day * 2 = PENALTY_EXTRA_RATE (10))
    XOR AX, AX
    MOV AL, PENALTY_EXTRA_RATE
    DIV PENALTY_RATE
    XOR AH, AH 
    
    MOV BX, AX   
    ; MAX_PENALTY_CHARGE (100) / PENALTY_RATE (5) = 20 ( diff_day * 20 = 100)
    MOV AL, MAX_PENALTY_CHARGE 
    DIV PENALTY_RATE
    XOR AH, AH 
    SUB AL, BL 
	; 20 - 2 (diff_day * 20 - diff_day * 2 = THRESHOLD_DAY)
    ; 18 - if more than 18 days then its considered as max penalty charge
	; 18 * 5 * 110% = 99
	; 19 * 5 * 110% = 104.5 -> 100
	; 20 * 5 * 110% = 110 -> 100
    CMP DIFF_DAY, AX 
    JLE IS_NOT_MAX_PENALTY_CHARGE

	XOR AH, AH
	MOV AL, MAX_PENALTY_CHARGE; PENALTY(AX) = 100

	JMP NO_EXTRA_PENALTY_CHARGE ; since the penalty is already max penalty charge
	
	IS_NOT_MAX_PENALTY_CHARGE:
	
		MOV AX, DIFF_DAY   
		XOR BX, BX
		MOV BL, PENALTY_RATE
		MUL BX 

		CMP DIFF_DAY, 14
		JL NO_EXTRA_PENALTY_CHARGE
		; PENALTY(AX) = PENALTY(AX) * 110% (BX)
		MOV BL , PENALTY_EXTRA_RATE
		ADD BL, HUNDRED
		MUL BX
		
		; Divide the 16-bit value in AX by 100.
		; The quotient is stored in AX (2 bytes), and the remainder is stored in DL.
		; Since the maximum 4-digit value (9999) divided by 100 fits within 2 bytes (99 max quotient), 
		; both AX and DL can store the result safely using only 2 bytes each.
		MOV BL, HUNDRED
		DIV BX ; AX = AX / 100 
		CMP DL, 0
		JE SKIP_REMAINDER_STORE   
		    MOV AH, DL
		SKIP_REMAINDER_STORE:
		

	NO_EXTRA_PENALTY_CHARGE:
	PUSH AX ; store the value to stack temp - since need to use AX for read and store penalty
	
	LEA SI, PENALTY
	XOR AH,AH ; get only integral part 
    XOR CX, CX
    READ_PENALTY:  
        INC CX
      
        DIV TEN
        MOV BX, AX
        MOV AL, 0
        PUSH AX
        
        CMP BL, 0
        JE END_READ_PENALTY
        
        MOv BH, 0
        MOV AX, BX
        
    
    JMP READ_PENALTY  

    END_READ_PENALTY:

    STORE_PENALTY: 
        POP BX
        MOV [SI], BH
        ADD [SI], 30H
        INC SI
    LOOP STORE_PENALTY


	MOV [SI], '.'
    INC SI 
    ;
	POP AX
    CMP AH, 0
    JNE HAS_DECIMAL
        
    MOV [SI], '0'
    INC SI
    MOV [SI], '0'
    INC SI

    JMP DISPLAY_PENALTY
    HAS_DECIMAL:

	MOV CX, 2 ; only take 2 decimal places
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

    DISPLAY_PENALTY:

		MOV AH, 09h
		LEA DX, NL
		INT 21h
		
        MOV AH, 09H
        LEA DX, PENALTY
        INT 21H

	NO_PENALTY_CHARGE:	

	mov ah, 4Ch                  ; Exit program
	int 21h
end main
