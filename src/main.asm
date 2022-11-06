    org 100h

BDOS equ 0005h
WCHAR equ 02h

start:
    ld c,WCHAR
    ld e,'!'
    call BDOS
    ret 