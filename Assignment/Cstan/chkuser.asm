                    .MODEL SMALL
.STACK 100

.DATA
    CURR_USER_ID DB "JAY_CHOU$", 41 DUP("$")

    NL DB 0DH,0AH,'$'

    USER_ID_ARRAY DB "ALI_BABA$", 41 DUP('$')
        DB "THE_BEST_DOGGAN$", 34 DUP('$')
        DB "ABG_CHIN$", 41 DUP('$')
        DB "ASSIGNMENT_HELPER_SAM$", 28 DUP('$')
        DB "CSTANTAN$", 41 DUP('$')
        DB "CSTAN$", 44 DUP('$')
        DB "LIM_ZHI_PING$", 37 DUP('$')
        DB "G.E.M.$", 43 DUP('$')
        DB "JAY_CHOU$", 41 DUP('$')
        DB "COLDPLAY$", 41 DUP('$')
    
    USER_ID_SIZE DB 50

.CODE
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX

        ;Point to array
        LEA SI, USER_ID_ARRAY
        LEA DI, CURR_USER_ID

        MOV CX, 0
        CHECK_USER_ID_EXISTENCE:

            MOV BX, CX ;store CX => BX temporary for loop process
            MOV CX, 0
            COMPARE_USER_ID: 
                
                MOV AL, [SI]
                MOV AH, [DI]
                CMP AH, AL
                JNE WRONG_USER_ID

                CMP AH, '$' ; both char is '$'
                JE MATCH_USER_ID

                INC SI
                INC DI
                INC CX
            JMP COMPARE_USER_ID

            WRONG_USER_ID:
            SUB SI, CX
            SUB DI, CX

            MOV CX, BX

            XOR BX, BX
            MOV BL, USER_ID_SIZE
            ADD SI, BX ;JUMP TO NEXT USER_ID

            INC CX 
            CMP CX, 9
            JA USER_ID_NOT_EXISTS

        JMP CHECK_USER_ID_EXISTENCE


        MATCH_USER_ID: 
            ;Point back to current value
            SUB SI, CX
            SUB DI, CX

            MOV AH, 09H
            MOV DX, SI 
            INT 21H


        USER_ID_NOT_EXISTS:

        MOV AX, 4C00H
        INT 21H

    MAIN ENDP
END MAIN