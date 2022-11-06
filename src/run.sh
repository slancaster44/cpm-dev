#!/usr/bin/bash

../tools/z80pack-1.37/z80asm/z80asm -fh -l main

export DISKDIR=../tools/z80pack-1.37/cpmsim/disks

../tools/z80pack-1.37/cpmsim/srctools/cpmw.sh a main.hex

cd ../tools/z80pack-1.37/cpmsim
./cpm2

cd ../../../src
../tools/z80pack-1.37/cpmsim/srctools/cpmrm.sh a main.hex
