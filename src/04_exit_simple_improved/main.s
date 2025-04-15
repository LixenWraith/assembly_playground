.global _start      # "_start" is default entry point recognized by linker, like main() in C), custom use gcc/ld option: -e my_entry_point
.intel_syntax noprefix  # to not require '%' prefix when using registers in the code

# better declare labels before they are used, i.e. data section before code
.section .data      # linker declaration, data section (read/write permissoin)
hello_world:
    .asciz "Hello, World!\n"   # acii string, zero delimited (string ending, comes after \n)
    # ascii (non-terminated with \0) can be used technically
    # string is an alias of asciz
hello_world_len = . - hello_world - 1   # calculate length of string excluding null termination
# calculated as: (address after \0) - (address of first character 'H') - 1 = (13 + len(\n) + len(\0)) - 1 = 14

# constant definition directive: .equ, instead of calculation as above
# .equ hello_world_len, 14

.section .text      # linker declaration, default section if not defined, code section (read/execute permission), 
_start:
    mov rax, 1      # syscall 1: read
    mov rdi, 1      # file descriptor, writing to standard output = 1 (0: input, 1: output, 2: error)
    lea rsi, [hello_world]    # text buffer, referenced to address of 'hello_world' label
#   mov rdx, 14               # length of text buffer, exact number of bytes to be read starting from the beginning of buffer
    mov rdx, hello_world_len  # using calculated (static value calculated at compile)
    syscall

    mov rax, 60     # syscall 60: exit
    mov rdi, 0      # exit code
    syscall
