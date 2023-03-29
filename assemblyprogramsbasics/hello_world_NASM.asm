section .data
    msgg db "hello world!!",12
section .bss
section .text
    global main
main:
    mov     rax,1
    mov     rdi,1
    mov     rsi,msgg
    mov     rdx,15
    syscall
    mov     rax,60
    mov     rdi,0
    syscall


