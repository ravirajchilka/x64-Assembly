INCLUDELIB kernel32.lib
ExitProcess PROTO

.DATA

const_num EQU 12

.CODE
main PROC
	MOV RCX, const_num
	MOV RDX, const_num+8
	MOV RCX, const_num+8*2
	MOV RDX, (const_num+8)*2
	MOV RCX, const_num MOD 5
	MOV RDX, (const_num-3)/3

CALL ExitProcess
main ENDP

END