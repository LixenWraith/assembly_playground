.global _start
.intel_syntax noprefix

_start:
    mov rax, 1      # syscall read
    mov rdi, 1      # file descriptor, writing to standard output = 1 (0: input, 1: output, 2: error)
    lea rsi, [hello_world]    # text buffer, referenced to address of 'hello_world' label
    mov rdx, 13               # length of text buffer
    syscall

    mov rax, 60
    mov rdi, 0
    syscall

hello_world:
    .asciz "Hello, World!\n"   # acii string, zero delimited (string ending, comes after \n)
