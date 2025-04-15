# Assembly playground

Simple x86 assembly programs for learning and tests.

## Environment preparation

Unix/Linux: Install gcc

Which will install 'as', the assembler, and 'ld', linker.

## Compile and execution

```bash
# Assemble into object
as -o main.o main.s

# Link object to executable for simple programs
gcc -o main main.o -nostdlib -static

```


## Notes

### Comments

Intel syntax, for MASM, NASM, etc. uses ';' for inline/full line comment.
Unix syntax, for MASM, NASM, etc. uses '#' for inline/full line comment and C style /* */ for comment block.

### Linux Syscall reference

https://blog.rchapman.org/posts/Linux_System_Call_Table_for_x86_64/



