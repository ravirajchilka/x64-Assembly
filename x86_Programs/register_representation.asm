INCLUDELIB kernel32.lib
ExitProcess PROTO

.DATA
	
	some_value qword "AAAAA" 
							; qword represents 64 bits which is why we used rax
							; total 48 bits needed to store ASCII AAAAA
							; each A needs 8 bits
							; each 41 represents 1 byte of data
.CODE
	main PROC
		xor rax, rax    ; rax = 0000004141414141 , rax is 64 bits
		mov rax, some_value

CALL ExitProcess
main ENDP

END


