.MODEL
.STACK 100
.DATA
	;---V = variables
	VSROLE DB ?

	;---admin login
	;---A = Admin
	ADMIN_USERNAME DB 'admin$'
	ADMIN_PASSWORD DB 'admin123$'

	ADMIN_INPUT_USERNAME LABEL BYTE
	ADMIN_USERNAME_MAXN DB 40
	ADMIN_USERNAME_ACTN DB ?
	ADMIN_OUTPUT_USERNAME DB 40 DUP('$')

	ADMIN_INPUT_PASSWORD LABEL BYTE
	ADMIN_INPUT_PASSWORD_MAXN DB 12
	ADMIN_INPUT_PASSWORD_ACTN DB ?
	ADMIN_OUTPUT_PASSWORD DB 12 DUP('$')
	
	;---UI = user input
	USER_USERNAME DB 'user$'
	USER_PASSWORD DB 'user123$'

	USER_INPUT_USERNAME LABEL BYTE
	USER_USERNAME_MAXN DB 40
	USER_USERNAME_ACTN DB ?
	USER_OUTPUT_USERNAME DB 40 DUP('$')

	USER_INPUT_PASSWORD LABEL BYTE
	USER_INPUT_PASSWORD_MAXN DB 12
	USER_INPUT_PASSWORD_ACTN DB ?
	USER_OUTPUT_PASSWORD DB 12 DUP('$')

	;---user
    USER_ID_ARRAY   DB "ALI_BABA$", 31 DUP('$')
                    DB "THE_BEST_DOGGAN$", 24 DUP('$')
                    DB "ABG_CHIN$", 31 DUP('$')
                    DB "ASSIGNMENT_HELPER_SAM$", 18 DUP('$')
                    DB "CSTANTAN$", 31 DUP('$')
                    DB "CSTAN$", 34 DUP('$')
                    DB 40 DUP('$')
                    DB 40 DUP('$')
                    DB 40 DUP('$')
                    DB 40 DUP('$')
					
	USER_PASSWORD_ARRAY DB '123456$', 6 DUP('$')
						DB '123456$', 6 DUP('$')
						DB '123456$', 6 DUP('$')
						DB '123456$', 6 DUP('$')
						DB '123456$', 6 DUP('$')
						DB '123456$', 6 DUP('$')
						DB 12 DUP('$')
						DB 12 DUP('$')
						DB 12 DUP('$')
						DB 12 DUP('$')

	;---Main Menu Displays
	;---D = Display
	NL DB 0AH,0DH,'$'
	LINE DB 10,13,'===============================================',10,13,'$'
	DISPLAY_WELCOME_MAINPAGE DB 10,13,'Welcome to our library system!',10,13,'$'


	DISPLAY_ROLE_MAINPAGE DB '1. Admin',10,13,'2. User',10,13,'3. Exit',10,13,'$'
	DISPLAY_SELECTION DB 10,13,'Enter selection: $'

	;---Admin Menu
	DISPLAY_WELCOME_ADMINPAGE DB 10,13,'Welcome to Admin page!',10,13,'$'
	DISPLAY_ROLE_ADMINPAGE DB '1. Login',10,13,'2. Back to Menu',10,13,'3. Exit',10,13,'$'
	CHOICE_ADMINPAGE DB ?
	
	;---login page displays
	DISPLAY_LOGIN DB 10,13,'LOGIN$'
	DISPLAY_ENTER_USERNAME DB 10,13,'Please enter your username: $'
	DISPLAY_ENTER_PASSWORD DB 10,13,'Please enter your password: $'
	DISPLAY_LOGINFAIL DB 10,13,'The username or password u entered might be wrong, please try again!',10,13,'$'
	DISPLAY_LOGINS DB 10,13,'Login Successfull!',10,13,'$'

	;---admin login success
	DISPLAY_LOGINSUCCESS_ADMINPAGE DB 'Welcome! $'
	DISPLAY_ADMINROLE DB '1. Display',10,13,'2. Back to Menu',10,13,'3. Exit$'


	;---User Menu
	DISPLAY_WELCOME_USERPAGE DB 10,13,'Welcome to User page!',10,13,'$'
	DISPLAY_ROLE_USERPAGE DB '1. Login',10,13,'2. Back to Menu',10,13,'3. Exit',10,13,'$'
	CHOICE_USERPAGE DB ?

	;---user login page
	

	;---user login success
	DISPLAY_LOGINSUCCESS_USERPAGE DB 'Welcome! $'
	DISPLAY_USERROLE DB '1. Display',10,13,'2. Back to Menu',10,13,'3. Exit$'

	;---user register



	;---exit
	DISPLAY_EXIT DB 10,13,'Thank you, see you next time.$'

	;---invalid selection
	INVALIDSELECTION_MSG DB 10,13,'Invalid Selection. Try Again',10,13,'$'
	

	
	
.CODE
MAIN PROC
	MOV AX, @DATA
	MOV DS,AX

;-----main menu
	MENU:

		CALL BORDER

		CALL MAINMENU

;-----select admin or user
	SELECTR:
		CALL SELECTROLE

;-----admin page
	ADMIN:
		CALL BORDER
		
		CALL ADMINPAGE
		
	
	AROLE:
		CALL ADMINSELECT
	
;---admin login	
	ALOGIN:
		;-----admin menu
		CALL BORDER

		CALL ADMINLOGIN

		AMENU:
			;---show login successful
			CALL LOGINSUCCESS

			CALL BORDER
			
			CALL ADMINMENU


		
		DISPLAYBOOKS:
			;---function

;-----user page
	USER:
		
		CALL BORDER
	
		CALL USERPAGE

	UROLE:
		CALL USERSELECTROLE
		
	ULOGIN:
		CALL BORDER
		
		CALL USERLOGIN
		
		UMENU:
			CALL LOGINSUCCESS
			
			CALL BORDER
		
			CALL USERMENU


	
	UDISPLAYBOOKS:
		;---functions

	FIN:
	
	;-----exit	
	MOV AH,09H
	LEA DX, DISPLAY_EXIT
	INT 21H
		
	MOV AX,4C00H
	INT 21H

MAIN ENDP


;-----functions
;=========================================================================
;---display border line
BORDER PROC
MOV AH,09H
LEA DX,LINE
INT 21H
RETN
BORDER ENDP

;=========================================================================
;---menu
MAINMENU PROC
;-----display menu
MOV AH,09H
LEA DX, DISPLAY_WELCOME_MAINPAGE
INT 21H
	
;-----display role
MOV AH,09H
LEA DX, DISPLAY_ROLE_MAINPAGE
INT 21H

RETN
MAINMENU ENDP

;=========================================================================
SELECTROLE PROC
;-----select role
MOV AH,09H
LEA DX, DISPLAY_SELECTION
INT 21H

MOV AH,01H;---input
INT 21H
SUB AL,30H
MOV VSROLE,AL

CALL BORDER

;---define
;-----admin
CALL CMPADMIN
		
;-----user	
CALL CMPUSER

;-----exit
CALL CMPEXIT

;ERROR MSG
CALL INVALIDSELECTION
;-----other
JMP SELECTR

RETN
SELECTROLE ENDP

;=========================================================================
ADMINPAGE PROC

MOV AH,09H
LEA DX, DISPLAY_WELCOME_ADMINPAGE
INT 21H
	
;-----login
MOV AH,09H
LEA DX, DISPLAY_ROLE_ADMINPAGE
INT 21H 	

RETN 	
ADMINPAGE ENDP

ADMINSELECT PROC
;-----select role
MOV AH,09H
LEA DX, DISPLAY_SELECTION
INT 21H

;-----input
MOV AH,01H
INT 21H
SUB AL,30H
MOV CHOICE_ADMINPAGE, AL
		
CALL ACMPLOGIN

CALL ACMPMENU
	
CALL ACMPEXIT

;ERROR MSG
CALL INVALIDSELECTION

;-----others
JMP AROLE

RETN
ADMINSELECT ENDP

;=========================================================================
ADISPLAY_LOGINFAILED PROC
;-----invalid username or password
MOV AH, 09H
LEA DX, DISPLAY_LOGINFAIL
INT 21H

RETN
ADISPLAY_LOGINFAILED ENDP

UDISPLAY_LOGINFAILED PROC
;-----invalid username or password
MOV AH, 09H
LEA DX, DISPLAY_LOGINFAIL
INT 21H
JMP USERLOGIN

RETN
UDISPLAY_LOGINFAILED ENDP

;=========================================================================
LOGINSUCCESS PROC
MOV AH, 09H
LEA DX, DISPLAY_LOGINS
INT 21H

RETN
LOGINSUCCESS ENDP

;=========================================================================
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
		
		;-----input password STRING
		MOV AH, 0AH
		LEA DX, ADMIN_INPUT_PASSWORD
		INT 21H

		;---actual number of username
		MOV CL,ADMIN_INPUT_USERNAME[1]
		MOV SI,2
		MOV DI, OFFSET ADMIN_USERNAME

		;-----validate username
		ADMINUSERNAME:

			MOV BL,ADMIN_INPUT_USERNAME[SI]
			CMP BL,[DI]
			JNE INVALIDADMINUSERNAME
	
			INC SI
			INC DI
		LOOP ADMINUSERNAME
		
		; Validate if the input username has been fully matched
		CMP BYTE PTR [DI], '$'                
		JNE INVALIDADMINUSERNAME
		
		;-----validate password
		MOV CL, ADMIN_INPUT_PASSWORD[1]       ; Get the length of the password input
		MOV SI, 2                             ; Start comparing from the second byte of the buffer
		MOV DI, OFFSET ADMIN_PASSWORD         ; Point to the stored password

		ADMINPASSWORD:
			MOV BL, ADMIN_INPUT_PASSWORD[SI]  ; Get the next input character
			CMP BL, [DI]                      ; Compare with the stored password character
			JNE INVALIDADMINPASSWORD          ; If not equal, jump to invalid password

			INC SI
			INC DI
			LOOP ADMINPASSWORD                ; Continue looping through the length of the input password

		; Validate if the input password has been fully matched
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

;=========================================================================
ADMINMENU PROC
;---WELCOME
	MOV AH, 09H
	LEA DX, DISPLAY_LOGINSUCCESS_ADMINPAGE
	INT 21H

	;---USERNAME
	MOV AH, 09H
	LEA DX, ADMIN_OUTPUT_USERNAME
	INT 21H
	
	MOV AH,09H
	LEA DX, NL
	INT 21H
	
	;---MENUS
	MOV AH, 09H
	LEA DX, DISPLAY_ADMINROLE
	INT 21H
	
	MOV AH,09H
	LEA DX, DISPLAY_SELECTION
	INT 21H

	;---ENTER CHOICE
	MOV AH, 01H
	INT 21H
	SUB AL, 30H
	MOV CHOICE_ADMINPAGE, AL

	;---SELECT CHOICE
	CALL AMCMPDISPLAYBOOK

	CALL AMCMPMENU

	CALL AMCMPEXIT
	
	;ERROR MSG
	CALL INVALIDSELECTION

	;-----others
	JMP AMENU 

RETN
ADMINMENU ENDP

;=========================================================================
USERPAGE PROC
MOV AH,09H
LEA DX,DISPLAY_WELCOME_USERPAGE
INT 21H

MOV AH,09H
LEA DX,DISPLAY_ROLE_USERPAGE
INT 21H

RETN
USERPAGE ENDP

USERSELECTROLE PROC
;-----select role
	MOV AH,09H
	LEA DX, DISPLAY_SELECTION
	INT 21H

	MOV AH,01H
	INT 21H
	SUB AL, 30H
	MOV CHOICE_USERPAGE,AL

		
	CALL UCMPLOGIN

	CALL UCMPMENU
		
	CALL UCMPEXIT

	;ERROR MSG
	CALL INVALIDSELECTION

	;-----others
	JMP UROLE

RETN
USERSELECTROLE ENDP

UCMPLOGIN PROC
CMP CHOICE_USERPAGE,1
JNE BACKMENU
JMP ULOGIN

BACKMENU:
RETN
UCMPLOGIN ENDP

UCMPMENU PROC
CMP CHOICE_USERPAGE,2
JNE BCKEXIT
JMP MENU

BCKEXIT:
RETN
UCMPMENU ENDP

UCMPEXIT PROC
CMP CHOICE_USERPAGE,3
JNE OTHERS
JMP FIN

OTHERS:
RETN
UCMPEXIT ENDP

USERLOGIN PROC
    ;----ask to enter username
    MOV AH, 09H
    LEA DX, DISPLAY_ENTER_USERNAME
    INT 21H
    
    ;---input username STRING
    MOV AH, 0AH
    LEA DX, USER_INPUT_USERNAME
    INT 21H

    ;-----ask to enter password
    MOV AH, 09H
    LEA DX, DISPLAY_ENTER_PASSWORD
    INT 21H
    
    ;-----input password STRING
    MOV AH, 0AH
    LEA DX, USER_INPUT_PASSWORD
    INT 21H

    ;---initialize username and password array offsets
    MOV SI, OFFSET USER_ID_ARRAY        ; SI points to the start of USER_ID_ARRAY
    MOV BX, OFFSET USER_PASSWORD_ARRAY  ; BX points to the start of USER_PASSWORD_ARRAY

NEXT_USER:
    ;---validate username
	MOV CX, 0
    MOV CL, USER_INPUT_USERNAME[1]      ; CX = length of the input username (second byte of buffer)
    MOV DI, 2                           ; DI points to start of input username (skip length byte)
    
COMPARE_USERNAME:
    MOV AL, USER_INPUT_USERNAME[DI]     ; Load input username character
    CMP AL, [SI]                        ; Compare with current character in USER_ID_ARRAY
    JNE USERNAME_MISMATCH               ; If not equal, go to the next user
    INC DI                              ; Move to the next input character
    INC SI                              ; Move to the next stored username character
    CMP BYTE PTR [SI], '$'              ; Check if we've reached the end of stored username
    JE USERNAME_MATCH                   ; If reached end of stored username, match is successful
    LOOP COMPARE_USERNAME               ; Continue comparing until CX becomes zero

USERNAME_MISMATCH:
    ; Skip the rest of the current username and move to the next one
    MOV CX, 40                          ; Assume max username length is 32 bytes
SKIP_USERNAME:
    CMP BYTE PTR [SI], '$'              ; Look for the username delimiter
    JE DONE_SKIP_USERNAME               ; Found the delimiter, stop skipping
    INC SI                              ; Move to the next character
    DEC CX                              ; Decrease counter
    JNZ SKIP_USERNAME                   ; Continue until delimiter or max length reached
DONE_SKIP_USERNAME:
    INC SI                              ; Move past the '$' delimiter

    ; Skip the current password to go to the next password
    MOV CX, 12                          ; Assume max password length is 12 bytes
SKIP_PASSWORD:
    CMP BYTE PTR [BX], '$'              ; Look for the password delimiter
    JE DONE_SKIP_PASSWORD               ; Found the delimiter, stop skipping
    INC BX                              ; Move to the next character
    DEC CX                              ; Decrease counter
    JNZ SKIP_PASSWORD                   ; Continue until delimiter or max length reached
DONE_SKIP_PASSWORD:
    INC BX                              ; Move past the '$' delimiter

    ; Check if we've reached the end of the username array
    CMP SI, OFFSET USER_ID_ARRAY + 320  ; Compare with end of username array (10 entries * 32 bytes)
    JAE UINVALID                        ; If out of bounds, fail login

    JMP NEXT_USER                       ; Try the next username and password

USERNAME_MATCH:
    ; If username matches, check the password
    MOV CX,0
	MOV CL, USER_INPUT_PASSWORD[1]      ; CX = length of input password (second byte of buffer)
    MOV DI, 2                           ; DI points to start of input password

COMPARE_PASSWORD:
    MOV AL, USER_INPUT_PASSWORD[DI]     ; Load input password character
    CMP AL, [BX]                        ; Compare with current password character
    JNE PASSWORD_MISMATCH               ; If not equal, go to the next user
    INC DI                              ; Move to the next input character
    INC BX                              ; Move to the next stored password character
    CMP BYTE PTR [BX], '$'              ; Check if we've reached the end of stored password
    JE PASSWORD_MATCH                   ; If reached end of stored password, match is successful
    LOOP COMPARE_PASSWORD               ; Continue comparing until CX becomes zero

PASSWORD_MISMATCH:
    JMP USERNAME_MISMATCH               ; If password mismatches, check the next user

PASSWORD_MATCH:
    ; If both username and password are valid, proceed to success
    JMP PASSUSERLOGIN

UINVALID:
    CALL UDISPLAY_LOGINFAILED           ; Display login failed
    JMP USERLOGIN                       ; Restart the login process

PASSUSERLOGIN:
    ; Proceed to user menu after successful login
    JMP UMENU
    RETN
USERLOGIN ENDP




USERMENU PROC
			MOV AH, 09H
			LEA DX, DISPLAY_LOGINSUCCESS_ADMINPAGE
			INT 21H

			;---USERNAME
			MOV AH, 09H
			LEA DX, USER_OUTPUT_USERNAME
			INT 21H
			
			;---NL
			MOV AH,09H
			LEA DX, NL
			INT 21H
			
			;---MENUS
			MOV AH, 09H
			LEA DX, DISPLAY_USERROLE
			INT 21H
			
			USERSELECT:
			;-----select role
			MOV AH,09H
			LEA DX, DISPLAY_SELECTION
			INT 21H

			;---ENTER CHOICE
			MOV AH, 01H
			INT 21H
			SUB AL, 30H
			MOV CHOICE_USERPAGE, AL

			;---SELECT CHOICE
			CALL UMCMPDISPLAYBOOK

			CALL UMCMPMENU
		
			CALL UMCMPEXIT
			
			;ERROR MSG
			CALL INVALIDSELECTION
	
			;-----others
			JMP USERSELECT



RETN
USERMENU ENDP

;=========================================================================
CMPADMIN PROC
CMP VSROLE, 1
JNE ENDISPLAY_ADMINROLEDMIN
JMP ADMIN
ENDISPLAY_ADMINROLEDMIN:
RETN
CMPADMIN ENDP

;=========================================================================
CMPUSER PROC
CMP VSROLE,2
JNE ENDCMPUSER
JMP USER
ENDCMPUSER:
RETN
CMPUSER ENDP

;=========================================================================
CMPEXIT PROC
CMP VSROLE,3
JNE ENDCMPEXIT
JMP FIN
ENDCMPEXIT:
RETN
CMPEXIT ENDP

;=========================================================================
ACMPLOGIN PROC
CMP CHOICE_ADMINPAGE, 1
JNE ENDISPLAY_ADMINROLECMPLOGIN
JMP ALOGIN
ENDISPLAY_ADMINROLECMPLOGIN:
RETN
ACMPLOGIN ENDP

;=========================================================================
ACMPMENU PROC
CMP CHOICE_ADMINPAGE, 2
JNE ENDISPLAY_ADMINROLECMPMENU
JMP MENU
ENDISPLAY_ADMINROLECMPMENU:
RETN
ACMPMENU ENDP

;=========================================================================
ACMPEXIT PROC
CMP CHOICE_ADMINPAGE, 3
JNE ENDISPLAY_ADMINROLECMPEXIT
JMP FIN
ENDISPLAY_ADMINROLECMPEXIT:
RETN
ACMPEXIT ENDP

;=========================================================================
AMCMPDISPLAYBOOK PROC
CMP CHOICE_ADMINPAGE, 1
JNE ENDISPLAY_ADMINROLEMCMPDISPLAYBOOK
JMP DISPLAYBOOKS
ENDISPLAY_ADMINROLEMCMPDISPLAYBOOK:
RETN
AMCMPDISPLAYBOOK ENDP

;=========================================================================
AMCMPMENU PROC
CMP CHOICE_ADMINPAGE, 2
JNE ENDISPLAY_ADMINROLEMCMPMENU
JMP MENU
ENDISPLAY_ADMINROLEMCMPMENU:
RETN
AMCMPMENU ENDP

;=========================================================================
AMCMPEXIT PROC
CMP CHOICE_ADMINPAGE, 3
JNE ENDISPLAY_ADMINROLEMCMPEXIT
JMP FIN
ENDISPLAY_ADMINROLEMCMPEXIT:
RETN
AMCMPEXIT ENDP

;=========================================================================
UMCMPDISPLAYBOOK PROC
CMP CHOICE_USERPAGE, 1
JNE ENDISPLAY_USERROLEMCMPDISPLAYBOOK
JMP UDISPLAYBOOKS
ENDISPLAY_USERROLEMCMPDISPLAYBOOK:
RETN
UMCMPDISPLAYBOOK ENDP

;=========================================================================
UMCMPMENU PROC
CMP CHOICE_USERPAGE, 2
JNE ENDISPLAY_USERROLEMCMPMENU
JMP MENU
ENDISPLAY_USERROLEMCMPMENU:
RETN
UMCMPMENU ENDP

;=========================================================================
UMCMPEXIT PROC
CMP CHOICE_USERPAGE, 3
JNE ENDD
JMP FIN
ENDD:
RETN
UMCMPEXIT ENDP

;=========================================================================
INVALIDSELECTION PROC
MOV AH,09H
LEA DX,INVALIDSELECTION_MSG
INT 21H
RETN
INVALIDSELECTION ENDP
END MAIN


