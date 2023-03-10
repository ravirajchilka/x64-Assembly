format ELF64 executable 3

segment readable executable
entry main

main:
	lea rdi, [stri]
	mov     rax,14
	mov     rdx, rax
	mov     rsi, rdi
	mov     rdi, 1
	mov     rax, 1
	syscall
	xor     rdi,rdi
	mov     rax,60
	syscall

segment readable writable
stri	db 'Hello World!', 20, 0









