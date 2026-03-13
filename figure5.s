.section .data
Numbers:
    .long 1
    .long 15
    .long 4
    .long 2
    .long 7
    .long 9
    .long 23
    .long 7
    .long 3
    .long 11

Array_length:
    .long 10

.section .text
.globl _start

_start:
    mov $0, %ecx  # i = 0 basically
    # max is stored in eax, current is stored in edx
    movl Numbers(,%ecx,4), %eax 
    movl Numbers(,%ecx,4), %edx
    jmp .L2

.L3:
    movl Numbers(,%ecx,4), %edx
    inc %ecx
    cmpl %eax, %edx # compare current and max
    jle .L2

    movl %edx, %eax # if another max is found.
    

.L2:
    mov Array_length, %ebx
    cmpl %ebx, %ecx
    jle .L3


done:
    # maximum value is now in %eax

    movl $1, %eax              # system call: exit
    xorl %ebx, %ebx            # return code 0
    int $0x80
