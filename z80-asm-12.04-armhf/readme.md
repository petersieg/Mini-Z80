# z80-asm repo / build directory from / for PcDuino V1 (A10) 

# ubuntu 12.04

This is the source for this build directory:

http://wwwhomes.uni-bielefeld.de/achim/z80-asm.html

z80-asm -l test3.asm :test.z80 >test3.lst

Die Datei *.z80 enthält einen 10 Byte Header, den man vor dem Brennen in einem Eprom noch entfernen muss!

#!/bin/sh
dd if=$1.z80 of=$1.bin bs=1 skip=10

File Extensionen (.asm u. .z80) müssen angegeben werden!

Das Paket hat mit z80-mon auch einen schönen Simulator/Debugger.


