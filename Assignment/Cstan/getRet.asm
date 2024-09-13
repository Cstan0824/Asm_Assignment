.MODEL SMALL
.STACK 100
.DATA
;current date
	CURR_MONTH DB 0
	CURR_DAY DB 0
    CURR_YEAR DW 0
    ;return date
	RET_MONTH DB 0
	RET_DAY DB 0
    RET_YEAR DW 0

    DATE DB 11 DUP('$')
    TEN DB 10
    DATE_DELIMETER DB '/'

.CODE 

MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    CALL GET_DATE
    MOV AH, 09H
    LEA DX, DATE 
    INT 21H

    MOV AH, 4CH
    INT 21H
MAIN ENDP

    GET_DATE PROC
        ;Get current date
        ;DL - day
        ;DH - month
        MOV AH, 04H      
        INT 1AH  
        ;MOV DL, 2 ; TESTING
        ;MOV DH, 9 ; TESTING   
        ;MOV CX, 2024    
        MOV CURR_MONTH, DH
        MOV CURR_DAY, DL
        MOV CURR_YEAR, CX

        LEA SI, DATE      

        ;Store Day
        XOR AX, AX
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
        XOR AX, AX
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
        XOR BX, BX
        MOV AX, CX
        XOR CX, CX
        READ_CURR_YEAR:
            INC CX
            DIV TEN
            MOV BX, AX

            XOR AL, AL ; clear integral part and push remainder only to stack
            PUSH AX 

            CMP BL, 0
            JE END_READ_CURR_YEAR

            XOR BH, BH ; clear remainder part and calculate only integral part
            MOV AX, BX 
        JMP READ_CURR_YEAR

        END_READ_CURR_YEAR:

        STORE_CURR_YEAR:
            POP BX
            ADD BH, 30H
            MOV [SI], BH 
            INC SI
        LOOP STORE_CURR_YEAR
        RET
    GET_DATE ENDP
END MAIN