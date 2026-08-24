default rel

section .data
    msg     db  "Hello, World!", 13, 10
    msg_len equ $ - msg
    bytes_written resq 1

section .text
    global main

main:
    sub     rsp, 40
    mov     rcx, -11
    call    GetStdHandle
    mov     rcx, rax
    lea     rdx, [rel msg]
    mov     r8, msg_len
    lea     r9, [rel bytes_written]
    push    qword 0
    sub     rsp, 32
    call    WriteConsoleA
    add     rsp, 40
    xor     ecx, ecx
    call    ExitProcess

extern GetStdHandle
extern WriteConsoleA
extern ExitProcess
