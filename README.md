# Mini-Z80

Nach dem Z80 Tester wollte ich schon lange mal ein 
richtiges, minimales Z80 System (Einplatinencomputer)
bauen. Ein bestimmtes Ziel sollte das System nicht 
verfolgen. Hauptsache Z80, Rom, Ram und I/O.
Ideal zum reinschnuppern und um ggf. mal spaeter mi
t Logikanalyzer dran zu arbeiten. Trotz alle dem, 
kann man schon ein Menge aus so einem kleinem System her
ausholen. Wuerfel; Mastermind; 4 gewinnt oder im
Prinzip sogar ein Schachspiel sollten moeglich sein.

Pin 16,17,24,25 der Z80 CPU an +5V legen - und GND 
u. VCC ebenfalls nicht vergessen.
In der Lektuere "Mikrocomputer selbstgebaut und pro
grammiert" von Rolf Dieter Klein (SEHR empfehlenswe
rt!) und verschiedenen Z80 Systemen aus dem Internet 
(http://www.z80.info/z80_mp.htm), habe ich mich zu
folgender Startkonfiguration entschieden.

Z80 CPU

4093 Oszillator (R=10k; C=1nf; f=ca. 500khz)

Rom = 27C256 32k Eprom

Ram = 62256  32k SRam

ACHTUNG: Die Eagle PCB enthält Fehler! Bitte PDF lesen und beachten!
