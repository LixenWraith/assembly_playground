.global _start
.intel_syntax noprefix

_start:
    mov rax, 60     # syscall number (decimal, for hex use 0x... , for binary use 0b...)
    mov rdi, 10     # arbitrary error code
    syscall         # syscall 60 (0x : sys_exit, rax = 60, rdi = error code to return on exit (check with 'echo $?')
