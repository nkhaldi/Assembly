; Реализовать программу, которая вычисляет является ли число простым

.section .data
    f: .string "%d\n"
.section .text
    .globl main
    main:
        movl $2, %eax
        xor %r8d, %r8d
    loop:
        cmpl $250000, %eax
        jg end_loop
        movl $2, %r10d
        movl %eax, %r11d
        shr $1, %r11d
    prime_loop:
        cmpl %r11d, %r10d
        jg prime
        push %rax
        xor %edx, %edx
        div %r10d
        test %edx, %edx
        pop %rax
        je not_prime
        inc %r10d
        jmp prime_loop
    prime:
        inc %r8d
    not_prime:
        inc %eax
        jmp loop
    end_loop:
        lea f(%rip), %rdi
        mov %r8d, %esi
        xor %eax, %eax
        call printf
