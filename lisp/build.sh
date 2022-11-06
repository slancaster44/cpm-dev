#!/usr/bin/bash

../emu/z80pack-1.37/z80asm/z80asm -fh -l main

export DISKDIR=../emu/z80pack-1.37/cpmsim/disks

../emu/z80pack-1.37/cpmsim/srctools/cpmw.sh a main.hex

cd ../emu/z80pack-1.37/cpmsim
./cpm2

cd ../../../lisp
../emu/z80pack-1.37/cpmsim/srctools/cpmrm.sh a main.hex
