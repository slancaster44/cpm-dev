    org 0110h
    include "lib/cpm.asm"
start:
    ld c,CONS_OUT
    ld a,'!'
    call BDOS
    call WBOOT
