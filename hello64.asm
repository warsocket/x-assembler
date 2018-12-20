global _start
extern ExitProcess

section .text
_start:
    push    0
    call    ExitProcess