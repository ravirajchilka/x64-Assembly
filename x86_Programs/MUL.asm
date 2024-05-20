INCLUDELIB kernel32.lib
ExitProcess PROTO

.DATA
	
	score DWORD 2245 

.CODE
main PROC
	MOV EAX,score
	MOV EBX,300
	MUL EBX
	

CALL ExitProcess
main ENDP

END
