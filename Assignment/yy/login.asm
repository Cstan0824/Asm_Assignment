.MODEL
.STACK 100
.DATA
	;---V = variables
	VSROLE DB ?

	;---admin login
	;---A = Admin
	VASTATUS DB ?
	AUSERNAME DB 'admin123$'
	APASSWORD DB 'admin123$'

	AIUSERNAME LABEL BYTE
	AUSERNAMEMAXN DB 40
	AUSERNAMEACTN DB ?
	AOUSERNAME DB 40 DUP('$')

	AIPASSWORD LABEL BYTE
	AIPASSWORDMAXN DB 12
	AIPASSWORDACTN DB ?
	AOPASSWORD DB 12 DUP('$')
	
	;---UI = user input
	UUSERNAME DB 'user123$'
	UPASSWORD DB 'user123$'

	UIUSERNAME LABEL BYTE
	UUSERNAMEMAXN DB 40
	UUSERNAMEACTN DB ?
	UOUSERNAME DB 40 DUP('$')

	UIPASSWORD LABEL BYTE
	UIPASSWORDMAXN DB 12
	UIPASSWORDACTN DB ?
	UOPASSWORD DB 12 DUP('$')

	;---user


	;---Main Menu Displays
	;---D = Display
	NL DB 0AH,0DH,'$'
	LINE DB 10,13,'===============================================',10,13,'$'
	DWELCOME DB 10,13,'Welcome to our library system!',10,13,'$'


	DROLE DB '1. Admin',10,13,'2. User',10,13,'3. Exit',10,13,'$'
	DSROLE DB 10,13,'Enter selection: $'

	;---Admin Menu
	DAWELCOME DB 10,13,'Welcome to Admin page!',10,13,'$'
	DASTATUS DB '1. Login',10,13,'2. Back to Menu',10,13,'3. Exit',10,13,'$'
	ACHOICE DB ?
	
	;---login page displays
	DLOGIN DB 10,13,'LOGIN$'
	DENAME DB 10,13,'Please enter your username: $'
	DEPSW DB 10,13,'Please enter your password: $'
	LOGINFAIL DB 10,13,'The username or password u entered might be wrong, please try again!',10,13,'$'
	DLOGINS DB 10,13,'Login Successfull!',10,13,'$'

	;---admin login success
	DALOGINS DB 'Welcome! $'
	DA DB '1. Display',10,13,'2. Back to Menu',10,13,'3. Exit$'


	;---User Menu
	DUWELCOME DB 10,13,'Welcome to User page!',10,13,'$'
	DUSTATUS DB '1. Login',10,13,'2. Back to Menu',10,13,'3. Exit',10,13,'$'
	UCHOICE DB ?

	;---user login page
	

	;---user login success
	DULOGINS DB 'Welcome! $'
	DU DB '1. Display',10,13,'2. Back to Menu',10,13,'3. Exit$'

	;---user register



	;---exit
	DEXIT DB 10,13,'Thank you, see you next time.$'

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

		;---show login successful
		CALL LOGINSUCCESS

		AMENU:

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
		
		CALL LOGINSUCCESS
		
		UMENU:
			CALL BORDER
		
			CALL USERMENU


	
	UDISPLAYBOOKS:
		;---functions

	FIN:
	
	;-----exit	
	MOV AH,09H
	LEA DX, DEXIT
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
LEA DX, DWELCOME
INT 21H
	
;-----display role
MOV AH,09H
LEA DX, DROLE
INT 21H

RETN
MAINMENU ENDP

;=========================================================================
SELECTROLE PROC
;-----select role
MOV AH,09H
LEA DX, DSROLE
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
LEA DX, DAWELCOME
INT 21H
	
;-----login
MOV AH,09H
LEA DX, DASTATUS
INT 21H 	

RETN 	
ADMINPAGE ENDP

ADMINSELECT PROC
;-----select role
MOV AH,09H
LEA DX, DSROLE
INT 21H

;-----input
MOV AH,01H
INT 21H
SUB AL,30H
MOV ACHOICE, AL
		
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
LOGINFAILED PROC
;-----invalid username or password
MOV AH, 09H
LEA DX, LOGINFAIL
INT 21H
JMP ALOGIN

RETN
LOGINFAILED ENDP

ULOGINFAILED PROC
;-----invalid username or password
MOV AH, 09H
LEA DX, LOGINFAIL
INT 21H
MOV BX,0
CALL USERLOGIN

RETN
ULOGINFAILED ENDP

;=========================================================================
LOGINSUCCESS PROC
MOV AH, 09H
LEA DX, DLOGINS
INT 21H

RETN
LOGINSUCCESS ENDP

;=========================================================================
ADMINLOGIN PROC
;----ask to enter username
		MOV AH, 09H
		LEA DX, DENAME
		INT 21H
		
		;---input username STRING
		MOV AH, 0AH
		LEA DX, AIUSERNAME
		INT 21H


		;-----ask to enter password
		MOV AH, 09H
		LEA DX, DEPSW
		INT 21H
		
		;-----input password STRING
		MOV AH, 0AH
		LEA DX, AIPASSWORD
		INT 21H

		;---actual number of username
		MOV CX,0
		MOV CL,AUSERNAMEACTN
		MOV SI,0

		;-----validate username
		ADMINUSERNAME:

			MOV BL,AOUSERNAME[SI]
			CMP BL,AUSERNAME[SI]
			JNE INVALID
			
			MOV BL,AOPASSWORD[SI]
			CMP BL,APASSWORD[SI]
			JNE INVALID
	
			INC SI
		LOOP ADMINUSERNAME
		JMP PASSADMINLOGIN
		
		INVALID:
			CALL LOGINFAILED
PASSADMINLOGIN:
RETN 
ADMINLOGIN ENDP

;=========================================================================
ADMINMENU PROC
;---WELCOME
	MOV AH, 09H
	LEA DX, DALOGINS
	INT 21H

	;---USERNAME
	MOV AH, 09H
	LEA DX, AOUSERNAME
	INT 21H
	
	MOV AH,09H
	LEA DX, NL
	INT 21H
	
	;---MENUS
	MOV AH, 09H
	LEA DX, DA
	INT 21H

	;---ENTER CHOICE
	MOV AH, 01H
	INT 21H
	SUB AL, 30H
	MOV ACHOICE, AL

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
LEA DX,DUWELCOME
INT 21H

MOV AH,09H
LEA DX,DUSTATUS
INT 21H

RETN
USERPAGE ENDP

USERSELECTROLE PROC
;-----select role
	MOV AH,09H
	LEA DX, DSROLE
	INT 21H

	MOV AH,01H
	INT 21H
	SUB AL, 30H
	MOV UCHOICE,AL

		
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
CMP UCHOICE,1
JNE BACKMENU
CALL USERLOGIN
JMP ULOGIN

BACKMENU:
RETN
UCMPLOGIN ENDP

UCMPMENU PROC
CMP UCHOICE,2
JNE BCKEXIT
JMP MENU

BCKEXIT:
RETN
UCMPMENU ENDP

UCMPEXIT PROC
CMP UCHOICE,3
JNE OTHERS
JMP FIN

OTHERS:
RETN
UCMPEXIT ENDP

USERLOGIN PROC
MOV AH, 09H
		LEA DX, DENAME
		INT 21H
		
		;---input username STRING
		MOV AH, 0AH
		LEA DX, UIUSERNAME
		INT 21H


		;-----ask to enter password
		MOV AH, 09H
		LEA DX, DEPSW
		INT 21H
		
		;-----input password STRING
		MOV AH, 0AH
		LEA DX, UIPASSWORD
		INT 21H

		;---actual number of username
		MOV CX,0
		MOV CL,UUSERNAMEACTN
		MOV SI,0
		MOV BL,0

		;-----validate username
		USERUSERNAME:
			MOV BL,UOUSERNAME[SI]
			CMP BL,UUSERNAME[SI]
			JNE UINVALID
			
			MOV BL,UOPASSWORD[SI]
			CMP BL,UPASSWORD[SI]
			JNE UINVALID
	
			INC SI
		LOOP USERUSERNAME
		JMP PASSUSERLOGIN
		
		UINVALID:
			CALL ULOGINFAILED
PASSUSERLOGIN:
RETN
USERLOGIN ENDP

USERMENU PROC
MOV AH, 09H
			LEA DX, DALOGINS
			INT 21H

			;---USERNAME
			MOV AH, 09H
			LEA DX, UOUSERNAME
			INT 21H
			
			;---NL
			MOV AH,09H
			LEA DX, NL
			INT 21H
			
			;---MENUS
			MOV AH, 09H
			LEA DX, DU
			INT 21H
			
			USERSELECT:
			;-----select role
			MOV AH,09H
			LEA DX, DSROLE
			INT 21H

			;---ENTER CHOICE
			MOV AH, 01H
			INT 21H
			SUB AL, 30H
			MOV UCHOICE, AL

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
JNE ENDADMIN
JMP ADMIN
ENDADMIN:
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
CMP ACHOICE, 1
JNE ENDACMPLOGIN
JMP ALOGIN
ENDACMPLOGIN:
RETN
ACMPLOGIN ENDP

;=========================================================================
ACMPMENU PROC
CMP ACHOICE, 2
JNE ENDACMPMENU
JMP MENU
ENDACMPMENU:
RETN
ACMPMENU ENDP

;=========================================================================
ACMPEXIT PROC
CMP ACHOICE, 3
JNE ENDACMPEXIT
JMP FIN
ENDACMPEXIT:
RETN
ACMPEXIT ENDP

;=========================================================================
AMCMPDISPLAYBOOK PROC
CMP ACHOICE, 1
JNE ENDAMCMPDISPLAYBOOK
JMP DISPLAYBOOKS
ENDAMCMPDISPLAYBOOK:
RETN
AMCMPDISPLAYBOOK ENDP

;=========================================================================
AMCMPMENU PROC
CMP ACHOICE, 2
JNE ENDAMCMPMENU
JMP MENU
ENDAMCMPMENU:
RETN
AMCMPMENU ENDP

;=========================================================================
AMCMPEXIT PROC
CMP ACHOICE, 3
JNE ENDAMCMPEXIT
JMP FIN
ENDAMCMPEXIT:
RETN
AMCMPEXIT ENDP

;=========================================================================
UMCMPDISPLAYBOOK PROC
CMP UCHOICE, 1
JNE ENDUMCMPDISPLAYBOOK
JMP UDISPLAYBOOKS
ENDUMCMPDISPLAYBOOK:
RETN
UMCMPDISPLAYBOOK ENDP

;=========================================================================
UMCMPMENU PROC
CMP UCHOICE, 2
JNE ENDUMCMPMENU
JMP MENU
ENDUMCMPMENU:
RETN
UMCMPMENU ENDP

;=========================================================================
UMCMPEXIT PROC
CMP UCHOICE, 3
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


