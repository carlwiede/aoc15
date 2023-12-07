.section .rodata

    num:  .byte 65

    .NEWLINE:
        .ascii  "\n"

    .set .L_STDOUT,     1
    .set .L_SYS_EXIT,   93
    .set .L_SYS_WRITE,  64


.text
    .global _start
    _start:
    li      a7, .L_SYS_WRITE
    li      a0, .L_STDOUT
    la      a1, num
    li      a2, 1
    ecall
    jal     print_newline

    li      a7, .L_SYS_EXIT 
    li      a0, 0
    ecall

print_newline:
    li      a7, .L_SYS_WRITE
    li      a0, .L_STDOUT
    la      a1, .NEWLINE
    li      a2, 1
    ecall
    ret
