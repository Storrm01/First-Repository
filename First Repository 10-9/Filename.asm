TITLE assmblyTemplate32 (assmblyTemplate32.asm)

COMMENT !
Author:	
Creation Date:		
Date: MM/DD/YY
Program Description:	
!

.386
.MODEL FLAT, STDCALL
.STACK 4096
ExitProcess PROTO, dwExitCode:DWORD

.data
	;	(INSERT VARIABLES HERE)
	value1 DWORD -123
	value2 WORD 0B5Fh
	value3 WORD 0FFFFh

	prompt1 BYTE "ENTER", 0
	len1 = ($ - prompt1)

	prompt2 BYTE "This", 0Dh, 0Ah
			BYTE "is", 0Dh, 0Ah
			BYTE "string.", 0
	len2 = ($ - prompt2)

.code
_main PROC
	;	(INSERT EXECUTABLE INSTRUCTIONS HERE)
	mov eax, len1
	INVOKE ExitProcess, 0
_main ENDP

	;	(INSERT ADDITIONAL PROCEDURES HERE)
END _main