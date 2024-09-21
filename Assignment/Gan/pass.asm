.MODEL SMALL
.STACK 100 
.DATA 

.CODE 

MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
     
    MOV AX, 4C00H 
    INT 21H 
MAIN ENDP 

    ADMINLOGIN PROC
        ;----ask to enter username
        MOV AH, 09H
        LEA DX, DISPLAY_ENTER_USERNAME
        INT 21H

        ;---input username STRING
        MOV AH, 0AH
        LEA DX, ADMIN_INPUT_USERNAME
        INT 21H

        ;-----ask to enter password
        MOV AH, 09H
        LEA DX, DISPLAY_ENTER_PASSWORD
        INT 21H

        ;-----input password STRING with masking
        LEA DI, ADMIN_OUTPUT_PASSWORD       ; DI points to the password output buffer
        MOV CX, 0                           ; CX will count password length (up to 12)

        PASSWORD_INPUT_LOOP:
            MOV AH, 08H                         ; DOS interrupt to read a character without displaying it
            INT 21H                             ; all the characters are stored in AL

            CMP AL, 0DH                         ; check if enter which is check the empty input 
            JE DONE_PASSWORD_INPUT              ; If Enter is pressed, end input

            CMP AL, 08H                         ; backspace is consider as a character ,  have to handle it
            JE BACKSPACE                        ; If Backspace is pressed, handle it

            ; if not backspace , save it in the buffer which is DI 
            MOV [DI], AL                        ; Store typed character in ADMIN_OUTPUT_PASSWORD buffer
            INC DI                              ; Move to the next buffer position
            INC CX                              ; Increase password length counter
            CMP CX, 12                          ; Check if password is too long
            JGE PASSWORD_INPUT_LOOP             ; If password length exceeds, continue input

            ; Display '*' for each typed character
            MOV AH, 02H
            MOV DL, '*'
            INT 21H

            JMP PASSWORD_INPUT_LOOP             ; Continue to capture more characters

            BACKSPACE:
                CMP CX, 0                           ; Check if there's something to delete
                JZ PASSWORD_INPUT_LOOP              ; If nothing to delete, skip backspace

                ; Move cursor back, overwrite last '*', move back again
                DEC CX                              ; Reduce password length counter
                DEC DI                              ; Move DI back to delete last character

                MOV AH, 02H
                MOV DL, 08H                         ; Backspace character
                INT 21H

                MOV DL, ' '                         ; Overwrite last '*'
                INT 21H
                
                MOV DL, 08H                         ; Move cursor back again
                INT 21H

                JMP PASSWORD_INPUT_LOOP

            DONE_PASSWORD_INPUT:
             ; Store actual length of the entered password into the admin input buffer, because the 08H are taking character one by one , they dont have the 0ah ,
                ; so it wont automatically set the length to the input buffer 
                MOV ADMIN_INPUT_PASSWORD[1], CL    






            ; Proceed with the rest of your login validation logic
            ;---actual number of username
            MOV CL, ADMIN_INPUT_USERNAME[1]
            MOV SI, 2
            MOV DI, OFFSET ADMIN_USERNAME

            ;-----validate username
            ADMINUSERNAME:
                MOV BL, ADMIN_INPUT_USERNAME[SI]
                CMP BL, [DI]
                JNE INVALIDADMINUSERNAME

                INC SI
                INC DI
            LOOP ADMINUSERNAME

        
            CMP BYTE PTR [DI], '$'                
            JNE INVALIDADMINUSERNAME

            ;-----validate password
            MOV CL, ADMIN_INPUT_PASSWORD[1]       ; Get the length of the entered password
            MOV SI, 2                             ; Start comparing from the second byte of the buffer
            MOV DI, OFFSET ADMIN_PASSWORD         ; Point to the stored password

            ADMINPASSWORD:
                MOV BL, ADMIN_INPUT_PASSWORD[SI]  ; Get the next input character
                CMP BL, [DI]                      ; Compare with the stored password character
                JNE INVALIDADMINPASSWORD          ; If not equal, jump to invalid password

                INC SI
                INC DI
                LOOP ADMINPASSWORD                ; Continue looping through the length of the input password

        
            CMP BYTE PTR [DI], '$'                ; Check if we reached the end of the stored password
            JNE INVALIDADMINPASSWORD              ; If not, jump to invalid password

            JMP PASSADMINLOGIN

        INVALIDADMINUSERNAME:
        INVALIDADMINPASSWORD:
            CALL ADISPLAY_LOGINFAILED
            JMP ALOGIN

        PASSADMINLOGIN:
            JMP AMENU
            RETN
    ADMINLOGIN ENDP
END MAIN 