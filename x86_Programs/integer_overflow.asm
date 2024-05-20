INCLUDELIB kernel32.lib
ExitProcess PROTO

.DATA
	
	sc SWORD -1000

.CODE
main PROC
	
	MOV AX,	sc
	cwd ; dx:ax = sign extand of ax 
	MOV BX, 500
	IDIV BX
	; dx:ax by bx 
	; dx:ax = 0x100503e8 divide by 0x1f4 
	; 1005 = 0000 => 000003E8
	; we can't store value 0x833B8 at ax ( here integer overflow )
	; dx = 0x88 
	; dx:ax = 0x103e8 = 66536 by 500 = 133 (ax)
	; dx = 36 
	; 
CALL ExitProcess
main ENDP

END
