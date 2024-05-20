INCLUDELIB kernel32.lib
ExitProcess PROTO

.DATA
	
	score BYTE 250
	
.CODE
main PROC
	XOR RAX, RAX
	MOV AL,score
	MOV BL,25
	DIV BL


CALL ExitProcess
main ENDP

END