; Представление собственной реализации функции memcpy на языке ассебмлера

my_memcpy(void*, void*, unsigned int):
        push    rbp
        mov     rbp, rsp
        mov     QWORD PTR [rbp-40], rdi
        mov     QWORD PTR [rbp-48], rsi
        mov     DWORD PTR [rbp-52], edx
        mov     rax, QWORD PTR [rbp-40]
        mov     QWORD PTR [rbp-16], rax
        mov     rax, QWORD PTR [rbp-48]
        mov     QWORD PTR [rbp-24], rax
        mov     DWORD PTR [rbp-4], 0
        jmp     .L2
.L3:
        mov     edx, DWORD PTR [rbp-4]
        mov     rax, QWORD PTR [rbp-16]
        add     rax, rdx
        mov     ecx, DWORD PTR [rbp-4]
        mov     rdx, QWORD PTR [rbp-24]
        add     rdx, rcx
        movzx   eax, BYTE PTR [rax]
        mov     BYTE PTR [rdx], al
        add     DWORD PTR [rbp-4], 1
.L2:
        mov     eax, DWORD PTR [rbp-4]
        cmp     eax, DWORD PTR [rbp-52]
        jb      .L3
        nop
        nop
        pop     rbp
        ret