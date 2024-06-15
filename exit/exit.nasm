section .text
    global _start

%macro exit 0
    mov rax, 60
    mov rdi, 11
    syscall
%endmacro

_start:
    exit