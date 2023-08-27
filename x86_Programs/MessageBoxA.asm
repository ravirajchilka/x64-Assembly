INCLUDELIB kernel32.lib
INCLUDELIB windows.lib
MessageBoxA PROTO
ExitProcess PROTO

.DATA
	
	some_value byte 42h,'A','A','A','A' 
							; qword represents 64 bits which is why we used rax
							; total 48 bits needed to store ASCII AAAAA
							; each A needs 8 bits
							; each 41 represents 1 byte of data
	msg1 byte "Resource not available",13,10,"Do you want to try again?",0
	msg2 byte "Account Details",0
.CODE
	main PROC
		xor rax, rax    ; rax = 0000004141414141 , rax is 64 bits
		mov al, some_value
		mov r9,136h
		mov r8,offset  msg2
		mov rdx,offset msg1
		mov rcx,0
		call MessageBoxA
		mov rcx,0
CALL ExitProcess
main ENDP

END


