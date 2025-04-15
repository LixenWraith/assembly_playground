# Assembly playground

Simple x86 assembly programs for learning and tests.

## Environment preparation

Preferred compiler toolchain that worked for me:

Unix/Linux: gcc

```bash
sudo apt install gcc  # debian/ubuntu
sudo pkg install gcc  # unix/freebsd
```

Which will install `as`, the assembler, and `ld`, linker.
`gcc` can be used to link instead of `ld`.

Windows: mingw-w64 (https://www.msys2.org/)

## Compile and execution

```bash
# Assemble into object
as -o main.o main.s

# Link object to executable for simple programs
gcc -o main main.o -nostdlib -static

```

script/assemble_link.sh facilitates assebmling and linking, linker options are same as above, adjust as needed.


## Notes

### Comments

Intel syntax, for MASM, NASM, etc. uses `;` for inline/full line comment.
Unix syntax, for MASM, NASM, etc. uses `#` for inline/full line comment, or C style `//` for inline/line and `/* */` for comment block. `;` seems to also work and is the default assembly comment style in neovim (motions: gcc, gcap).

### Linux Syscall reference

https://blog.rchapman.org/posts/Linux_System_Call_Table_for_x86_64/

Syscall number goes in rax.
Arguments go in rdi, rsi, rdx, r10, r8, r9 (in that order).
Return value typically in rax.

## License

BSD-3
