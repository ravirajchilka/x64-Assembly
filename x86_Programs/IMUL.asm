INCLUDELIB kernel32.lib
ExitProcess PROTO

.DATA
	
	score BYTE 100
	
.CODE
main PROC

	XOR RAX, RAX
	MOV AL,score
	MOV BL,-10
	IDIV BL

CALL ExitProcess
main ENDP

END
