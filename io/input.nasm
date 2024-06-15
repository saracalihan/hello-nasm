section .data
    input_msg db "Enter 'a' char", 10
    equal_msg db "thx :3", 10
    not_equal_msg db "naa", 10

section .bss
    input_char resb 1

section .text
    global _start

%macro exit 0
    mov rax, 60
    mov rdi, 0
    syscall
%endmacro

%macro print 2 ; buffer, size
    mov rax, 1
    mov rdi, 1
    mov rsi, %1
    mov rdx, %2
    syscall
%endmacro

char_equal:
    print equal_msg, 7
    exit


_start:
    ; print msg
    print input_msg, 15

    ; get input char
    mov rax, 0
    mov rdi, 0
    mov rsi, input_char
    mov rdx, 1
    syscall

    ; compare input
    cmp byte [input_char], 'a'
    je char_equal
    print not_equal_msg, 4
    exit