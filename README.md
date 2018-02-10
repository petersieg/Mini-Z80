# Mini-Z80

![Bild](https://github.com/petersieg/Mini-Z80/blob/master/Mini%20Z80.jpg)

Nach dem Z80 Tester wollte ich schon lange mal ein 
richtiges, minimales Z80 System (Einplatinencomputer)
bauen. Ein bestimmtes Ziel sollte das System nicht 
verfolgen. Hauptsache Z80, Rom, Ram und I/O.
Ideal zum reinschnuppern und um ggf. mal spaeter mit Logikanalyzer dran zu arbeiten. Trotz alle dem, 
kann man schon ein Menge aus so einem kleinem System her
ausholen. Wuerfel; Mastermind; 4 gewinnt oder im
Prinzip sogar ein Schachspiel sollten moeglich sein.

Pin 16,17,24,25 der Z80 CPU an +5V legen - und GND 
u. VCC ebenfalls nicht vergessen.
In der Lektuere "Mikrocomputer selbstgebaut und programmiert" von Rolf Dieter Klein (SEHR empfehlenswert!) 
und verschiedenen Z80 Systemen aus dem Internet 
(http://www.z80.info/z80_mp.htm), habe ich mich zu
folgender Startkonfiguration entschieden.

Z80 CPU

4093 Oszillator (R=10k; C=1nf; f=ca. 500khz): http://www.janson-soft.de/pe/pek08.pdf

Rom = 27C256 32k Eprom

Ram = 62256  32k SRam

ACHTUNG: Die Eagle PCB enthält Fehler! Bitte PDF lesen und beachten!

EDIT: z80 mini pcb corrected.zip enthaelt eine fehlerbereinigte Version inkl. Elecrow Gerber Dateien. Masse: 100x66mm.
ABER!! Diese, korrigierte Version ist NICHT getestet!!

EDIT2: Neue PCB aufgebaut und getestet - alles ist nun ok! Daher bitte NUR die neue PCB verwenden!
Anstatt 27C256 sollte sich der Pinkompatible AT29C256 Flash verwenden können.
Beim AT28C256 sind Änderungen erforderlich (A14 umlegen + /WE auf +5V legen)

Die beschriebenen Testprogramme sind im z80 mini software.zip

Als Assembler diente der Arnold Assembler: http://john.ccac.rwth-aachen.de:8000/as/

Batch-Datei zum assemblieren:

..\as\bin\as %1 -L

..\as\bin\p2bin %1 -r $-$

---

Unter Linux ist auch schön geeignet Z80-ASM:

http://wwwhomes.uni-bielefeld.de/achim/z80-asm.html

z80-asm -l test3.asm :test.z80 >test3.lst

Die Datei *.z80 enthält einen 10 Byte Header, den man vor dem Brennen in einem Eprom noch entfernen muss!

``` z802bin:
#!/bin/sh
dd if=$1.z80 of=$1.bin bs=1 skip=10
```

File Extensionen (.asm u. .z80) müssen angegeben werden!

Das Paket hat mit z80-mon auch einen schönen Simulator/Debugger.

b2s.c compiliert wandelt eine Binärdatei in Hex-Kommandos für den Arduino Mega EEprommer:

b2s test3.bin >test3.eep  => (Waaa:dddddddd...)

Damit kann man auch ohne EEprommer.exe oder Python Script ein Eprom z.B. mittels minicom brennen.
(Datei einfügen)

---

Warum gerade/genau diese Version?

Nun ich wollte einen Z80 Einplatinenrechner:

* der nur Standardbauteile und keinen programmierbaren Hilfschip (Propeller, AVR, ..) hat. Also nur CPU, Ram, Rom, TTL.
* der keine Video, Tastatur (z.B. PS/2) und auch keine serielle Anbindung hatte. I/O nur 'statisch' - 8-bit.
* der Takt sollte ggf. auch weit herunter zu takten sein.
* er sollte einfach, nachvollziehbar, gut zu testen sein.
* bare metal programmierbar - ohne Monitorprogramm.

Daher ist er so, wie er ist ;-)

Man kann sich trotzdem z.B. obige Erweiterungen vorstellen. Z.B. sollte es möglich sein, einen AVR an den I/O Port + /IO + /WR + /RD
anzuschließen um von dort dann eine serielle Schnittstelle abzubilden. Mit einem Monitorprogramm im Rom, wäre dann serielle Bedienung
und Upload von Programmen ins Ram denkbar.
Anstatt 7-Segment kann man sich LCD im 4-bit Modus vorstellen etc. pp.

Das evtl. schwieriger zu lokalisierende Bauteile dürfte heute die 7-Segmentanzeige sein. Jede kompatible, baugleiche sollte gehen. Wichtig sind Pinout und gemeinsame Anode.
Ich habe zuletzt GNS-3611BD genommen (Wichtig: B!). Ich habe davor von Conrad: Kingbright: SA36-11GWA gruen und SA36-11SRWA rot verwendet (gemeinsame Anode).

![7-Segment](https://github.com/petersieg/Mini-Z80/blob/master/7-segment.jpg)


