INCLUDELIB kernel32.lib
ExitProcess PROTO

.DATA

	score SBYTE 250	
	
.CODE
main PROC

	XOR RAX,RAX
	MOV AL, score 
	SHR AL, 1 

CALL ExitProcess
main ENDP

END
