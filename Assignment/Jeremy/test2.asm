.MODEL SMALL
.STACK 100
.DATA
    SALARYARRAY DW 2000, 2000, 2000, 2000, 2000
    TEN DB 10
    NEWLINE DB 0AH, 0DH, "$"
.CODE
MAIN PROC

    MOV AX, @DATA 
    MOV DS, AX 

    ;push is to store the value of the register to the stack
    ;pop is to get the value of the register from the stack

    ;but push is like card stacking, you will pop the most recent card you stack
    ;so if you push 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
    ;and you pop 10, 9, 8, 7, 6, 5, 4, 3, 2, 1

    LEA SI, SALARYARRAY
    ; U HAVE 5 SALARIES THIS IS FOR OUTER LOOP
    MOV CX, 5
    READ_SALARY_ARRAY:
        MOV BX, 0
        MOV AX, 0
        PUSH CX ;STORE CX INTO STACK, SO THAT WE CAN USE IT LATER (2nd time will be pushing cx = 4)
        MOV AX, [SI]
        MOV CX, 0
            GET_SALARY_ARRAY:
                INC CX          ; 1, 2, 3, 4 (cx = 5 is pushed to stack to store the number of arrays) (so now cx = 0)
                DIV TEN         ;imagine 2024, 2024/10 = 202, 202/10 = 20, 20/10 = 2, 2/10 = 0
                MOV BX, AX      ;store the result into bx to refer later

                MOV AL, 0       ;REMOVE QUOTIENT PART ONLY PUSH REMAINDER TO STACK remainder is (4, 2, 0, 2)
                PUSH AX         ;PUSH REMAINDER TO STACK (store 4, 2, 0, 2) into stack

                CMP BL, 0                       ;check if there is no more quotient (202, 20, 2, 0)
                JE DISPLAY_SALARY_ARRAY         ;IF NO MORE QUOTIENT THEN DISPLAY SALARY

                MOV BH, 0               ;CLEAR REMAINDER TO CALCULATE THE REMAINING QUOTIENT
                MOV AX, BX      
                JMP GET_SALARY_ARRAY    ;LOOP UNTIL NO MORE QUOTIENT

            DISPLAY_SALARY_ARRAY:
                POP BX
                ADD BH, 30H     ;CONVERT TO ASCII
                MOV AH, 02H     ;DISPLAY CHAR
                MOV DL, BH      ;MOVE TO DL
                INT 21H         ;DISPLAY
            LOOP DISPLAY_SALARY_ARRAY  ;LOOP from cx in get_salary_array (if 4 digits means cx = 4)

            ;print new line
            MOV AH, 09H
            LEA DX, NEWLINE
            INT 21H

        POP CX ;RESTORE CX = 5 FROM STACK (restore the number of arrays)
        ADD SI, 2 ;MOVE TO NEXT SALARY because 2 bytes per salary (dw)
    LOOP READ_SALARY_ARRAY     ;LOOP from cx = 5 that was previously pushed to stack

    MOV AX, 4C00H
    INT 21H
MAIN ENDP
END MAIN