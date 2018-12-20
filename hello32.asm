global _start
extern  _ExitProcess@4

section .text
_start:
    push    0
    call    _ExitProcess@4