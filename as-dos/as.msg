AS Message Catalog - not readable
�_�7r.saEN ~        S   DE �     1   =   �  �  �  �  �    "  G  v  �  �  �  �  .  G  l  �  �  �  �  ,  B  n  �  �  �     '  :  g  �  �  �  �  �  �  �    "  K  d  |  �  �  �  �  �  	  	  P	  ^	  n	  }	  �	  �	  �	  �	  
  
  M
  a
  w
  �
  �
  �
  �
  �
    '  @  Q  f  v  �  �  �  �  �      .  M  x  �  �  �  �  �    &  B  Z  s  �  �  �  �      5  K  f  {  �  �  �  �  �    *  W  k  �  �  �  �  �    0  D  a  o  �  �  �      #  <  K  a  r  �  �  �  �  �    "  3  J  X  g  �  �  �  �  4  T  s  �  �  �  �  �  �  �  �    :  F  S  f  z  �  �  �  �  �  �  �  �  �      /  :  E  T  W  o  �  �  �  �  �  �  �  �  �  �  �      +  O  ^  p  �  �  �  �    .  7  9  @  B  [  r  �  �  �  �  �  �    "  /  : error  : warning   in line  useless displacement 0 short addressing possible short jump possible no sharefile created, SHARED ignored FPU possibly cannot read this value (> 1E1000) privileged instruction distance of 0 not allowed for short jump (NOP created instead) symbol out of wrong segment segment not accessible change of symbol values forces additional pass overlapping memory usage none of the CASE conditions was true page might not be addressable register number must be even obsolete instruction, usage discouraged unpredictable execution of this instruction localization operator senseless out of a section senseless instruction unknown symbol value forces additional pass address is not properly aligned I/O-address must not be used here possible pipelining effects multiple use of address register in one instruction memory location is not bit addressable stack is not empty NUL character in string, result is undefined instruction crosses page boundary range overflow negative argument for DUP symbol double defined symbol undefined invalid symbol name invalid format useless attribute undefined attribute attribute may only be one character long wrong number of operands wrong number of options addressing mode must be immediate invalid operand size conflicting operand sizes undefined operand size invalid operand type too many arguments unknown opcode number of opening/closing parentheses does not match division by 0 range underflow range overflow address is not properly aligned distance too big register not accessible short addressing not allowed addressing mode not allowed here number must be aligned addressing mode not allowed in parallel operation undefined condition jump distance too big jump distance is odd invalid argument for shifting operand must be in range 1..8 shift amplitude too big invalid register list invalid addressing mode for CMP invalid CPU type invalid control register invalid register RESTORE without SAVE missing RESTORE unknown macro control instruction missing ENDIF/ENDCASE invalid IF-structure section name double defined unknown section missing ENDSECTION wrong ENDSECTION ENDSECTION without SECTION unresolved forward declaration conflicting FORWARD <-> PUBLIC-declaration wrong numbers of function arguments unresolved literals (missing LTORG) instruction not allowed on   addressing mode not allowed on  invalid bit position only ON/OFF allowed stack is empty or undefined not exactly one bit set ENDSTRUCT without STRUCT open structure definition wrong ENDSTRUCT phase definition not allowed in structure definition invalid STRUCT directive unexpected end of file unknown codepage ROM-offset must be in range 0..63 invalid function code invalid function code mask invalid MMU register level must be in range 0..7 invalid bit mask invalid register pair open macro definition macro double defined more than 10 macro parameters EXITM not called from within macro expression must be evaluatable in first pass too many nested IFs ELSEIF/ENDIF without IF nested/recursive makro call unknown function function argument out of definition range floating point overflow invalid value pair instruction must not start on this address invalid jump target jump target not on same page code overflow constants and placeholders cannot be mixed code must not be generated in structure definition parallel construct not possible here address overflow invalid segment unknown segment unknown segment register invalid string invalid register name invalid argument indirect mode not allowed not allowed in current segment not allowed in maximum mode not allowed in minimum mode error in opening file error in writing listing file read error file write error internal error/warning heap overflow stack overflow fatal error, assembly terminated overlay error - program terminated previous definition in swap file size not correctly specified - program terminated insufficient space for swap file - program terminated relocatable symbols not allowed unresolved external references  - source file   - page    symbol table (* = unused):   ------------------------  symbol  symbols  unused symbol  unused symbols   register definitions (*=unused):   --------------------------------  definition  definitions  unused definition  unused definitions   codepages:   ----------  changed character  changed characters  code page  code pages   defined macros:   ---------------  macro  macros   defined functions:   ------------------   DEFINEs:   -------- space used in   :   cross reference list:   ---------------------   sections:   ---------   nested include files:   --------------------- symbol  file  s  hour  minute  second assembling  PASS  PASS 1                              PASS 2                               assembly time  line source file  lines source file  pass  passes         additional necessary passes not started due to
        errors, listing possibly incorrect  line incl. macro expansions  lines incl. macro expansions  warning s  error s  Kbytes available memory  bytes available stack : no file(s) to assemble! macro assembler  version calling convention :   [options] [file] [options] ... --- <ENTER> to go on --- invalid option:  invalid environment option:  source file? --------------------

options :
---------

-p : share file formatted for Pascal  -c : share file formatted for C
-a : share file formatted for AS
-o <name> : change name of code file
-shareout <nname> : change name of share file
-q,  -quiet : silent compilation
-cpu <name> : set target processor
-alias <new>=<old> : define processor alias
-l : listing to console               -L : listing to file
-i <path>[;path]... : list of paths for include files
-D <symbol>[,symbol]... : predefine symbols
-E <name> : target file for error list,
            !0..!4 for standard handles
            default is <srcname>.LOG
-r : generate messages if repassing necessary
-Y : branch error suppression (see manual)
-w : suppress warnings                +G : suppress code generation
-s : generate section list            -t : enable/disable parts of listing
-u : generate usage list              -C : generate cross reference list
-I : generate include nesting list
-g : write debug info
-A : compact symbol table
-U : case-sensitive operation
-x : extended error messages          -n : add error #s to error messages
-P : write macro processor output     -M : extract macro definitions
-h : use lower case in hexadecimal output

source file specification may contain wildcards

implemented processors :
 �   �   �   �   �   �   !  >!  p!  �!  �!  �!  �!  )"  G"  h"  �"  �"  �"  �"  ##  6#  h#  �#  �#  �#  �#   $  5$  a$  �$  �$  �$  �$  �$  �$  %  $%  ;%  a%  z%  �%  �%  �%  �%  
&  #&  5&  H&  V&  g&  &  �&  �&  �&  �&  �&  '  6'  j'  �'  �'  �'  �'  �'  �'  (  +(  C(  _(  s(  �(  �(  �(  �(  �(  �(  )  ')  ;)  S)  x)  �)  �)  �)  �)  *  (*  <*  O*  s*  �*  �*  �*  �*  �*  +  0+  J+  h+  �+  �+  �+  �+  �+  �+  ,  $,  ?,  b,  �,  �,  �,  �,  �,  *-  =-  R-  ~-  �-  �-  �-  �-  ".  E.  S.  f.  z.  �.  �.  �.  �.  �.  /  1/  Q/  n/  �/  �/  �/  �/  �/  �/  0  &0  >0  t0  �0  �0  �0  �0  �0  1  81  @1  I1  ]1  q1  �1  �1  �1  �1  �1  2  2  -2  B2  V2  f2  w2  �2  �2  �2  �2  �2  �2  �2  �2  �2  3  #3  73  D3  Q3  l3  �3  �3  �3  �3  �3  �3  �3  �3  �3  �3  4  4  -4  ?4  J4  V4  �4  �4  5  5  5  5   5  @5  X5  {5  �5  �5  �5  �5  �5  �5  6  6  : Fehler  : Warnung   in Zeile  Displacement=0, �berfl�ssig Kurzadressierung m�glich kurzer Sprung m�glich kein Sharefile angelegt, SHARED ignoriert FPU liest Wert evtl. nicht korrekt ein (>=1E1000) privilegierte Anweisung Distanz 0 nicht bei Kurzsprung erlaubt (NOP erzeugt) Symbol aus falschem Segment Segment nicht adressierbar �nderung des Symbolwertes erzwingt zus�tzlichen Pass �berlappende Speicherbelegung keine CASE-Bedingung zugetroffen Seite m�glicherweise nicht adressierbar Registernummer mu� gerade sein veralteter Befehl nicht vorhersagbare Ausf�hrung dieser Anweisung Lokaloperator au�erhalb einer Sektion �berfl�ssig sinnlose Operation unbekannter Symbolwert erzwingt zus�tzlichen Pass Adresse nicht ausgerichtet I/O-Adresse darf nicht verwendet werden m�gliche Pipelining-Effekte mehrfache Adre�registerbenutzung in einer Anweisung Speicherstelle nicht bitadressierbar Stack ist nicht leer NUL-Zeichen in String, Ergebnis undefiniert Befehl �berschreitet Seitengrenze Bereichs�berschreitung negatives Argument f�r DUP Symbol doppelt definiert Symbol nicht definiert ung�ltiger Symbolname ung�ltiges Format �berfl�ssiges Attribut undefiniertes Attribut Attribut darf nur 1 Zeichen lang sein unpassende Operandenzahl unpassende Optionszahl nur immediate-Adressierung erlaubt unpassende Operandengr��e widersprechende Operandengr��en undefinierte Operandengr��e unpassender Operandentyp zuviele Argumente unbekannter Befehl Klammerfehler Division durch 0 Bereichsunterschreitung Bereichs�berschreitung Adresse nicht ausgerichtet Distanz zu gro� Register nicht zugreifbar Kurzadressierung nicht m�glich unerlaubter Adressierungsmodus Nummer mu� ausgerichtet sein Adressierungsmodus im Parallelbetrieb nicht erlaubt undefinierte Bedingung Sprungdistanz zu gro� Sprungdistanz ist ungerade ung�ltiges Schiebeargument nur Bereich 1..8 erlaubt Schiebezahl zu gro� ung�ltige Registerliste ung�ltiger Modus mit CMP ung�ltiger Prozessortyp ung�ltiges Kontrollregister ung�ltiges Register RESTORE ohne SAVE fehlendes RESTORE unbekannte Makro-Steueranweisung fehlendes ENDIF/ENDCASE ung�ltiges IF-Konstrukt doppelter Sektionsname unbekannte Sektion fehlendes ENDSECTION falsches ENDSECTION ENDSECTION ohne SECTION nicht aufgel�ste Vorw�rtsdeklaration widersprechende FORWARD <-> PUBLIC-Deklaration falsche Argumentzahl f�r Funktion unaufgel�ste Literale (LTORG fehlt) Befehl auf dem   nicht vorhanden Adressierungsart auf dem  ung�ltige Bitstelle nur ON/OFF erlaubt Stack ist leer oder nicht definiert Nicht genau ein Bit gesetzt ENDSTRUCT ohne STRUCT offene Strukturdefinition falsches ENDSTRUCT Phasendefinition nicht in Strukturen erlaubt Ung�ltige STRUCT-Direktive vorzeitiges Dateiende unbekannte Zeichentabelle ROM-Offset geht nur von 0..63 ung�ltiger Funktionscode ung�ltige Funktionscodemaske ung�ltiges MMU-Register Level nur von 0..7 ung�ltige Bitmaske ung�ltiges Registerpaar offene Makrodefinition doppelte Makrodefinition mehr als 10 Makroparameter EXITM au�erhalb eines Makrorumpfes Ausdruck mu� im ersten Pass berechenbar sein zu viele verschachtelte IFs ELSEIF/ENDIF ohne IF verschachtelter/rekursiver Makroaufruf unbekannte Funktion Funktionsargument au�erhalb Definitionsbereich Gleitkomma�berlauf ung�ltiges Wertepaar Befehl darf nicht auf dieser Adresse liegen ung�ltiges Sprungziel Sprungziel nicht auf gleicher Seite Code�berlauf Konstanten und Platzhalter nicht mischbar Codeerzeugung in Strukturdefinition nicht zul�ssig paralleles Konstrukt nicht m�glich Adre�berlauf ung�ltiges Segment unbekanntes Segment unbekanntes Segmentregister ung�ltiger String ung�ltiger Registername ung�ltiges Argument keine Indirektion erlaubt nicht im aktuellen Segment erlaubt nicht im Maximum-Modus zul�ssig nicht im Minimum-Modus zul�ssig Fehler beim �ffnen der Datei Listingschreibfehler Dateilesefehler Dateischreibfehler interne(r) Fehler/Warnung Speicher�berlauf Stapel�berlauf Fataler Fehler, Assembler abgebrochen Overlayfehler - Programmabbruch vorherige Definition in ung�ltige Gr��enangabe f�r Swapfile - Programmabbruch zuwenig Platz f�r Swapfile - Programmabbruch relokatible Symbole nicht erlaubt unverarbeitete externe Referenzen  - Quelle   - Seite    Symboltabelle (*=unbenutzt):   ----------------------------  Symbol  Symbole  unbenutztes Symbol  unbenutzte Symbole   Registerdefinitionen (*=unbenutzt):   -----------------------------------  Definition  Definitionen  unbenutzte Definition  unbenutzte Definitionen   Zeichentabellen:   ----------------  ver�ndertes Zeichen  ver�nderte Zeichen  Zeichentabelle  Zeichentabellen   definierte Makros:   ------------------  Makro  Makros   definierte Funktionen:   ----------------------   DEFINEs:   -------- in   belegte Bereiche:   Querverweisliste:   -----------------   Sektionen:   ----------   Include-Verschachtelung:   ------------------------ Symbol  Datei  n  Stunde  Minute  Sekunde Assembliere  PASS  PASS 1                              PASS 2                               Assemblierzeit  Zeile Quelltext  Zeilen Quelltext  Durchlauf  Durchl�ufe         zus�tzliche erforderliche Durchl�ufe wegen Fehlern nicht
        durchgef�hrt, Listing m�glicherweise inkorrekt  Zeile inkl. Makroexpansionen  Zeilen inkl. Makroexpansionen  Warnung en  Fehler   KByte verf�gbarer Restspeicher  Byte verf�gbarer Stack : keine Datei(en) zu assemblieren! Makroassembler  Version Aufruf :   [Optionen] [Datei] [Optionen] ... --- weiter mit <ENTER> --- ung�ltige Option:  ung�ltige Environment-Option:  Quelldatei? --------

Optionen :
----------

-p : Sharefile im Pascal-Format       -c : Sharefile im C-Format
-a : Sharefile im AS-Format
-o <Name> : Namen der Code-Datei neu setzen
-shareout <Name> : Namen des Sharefiles neu setzen
-q, -quiet : Stille �bersetzung
-cpu <Name> : Zielprozessor setzen
-alias <neu>=<alt> : Prozessor-Alias definieren
-l : Listing auf Konsole              -L : Listing auf Datei
-i <Pfad>[:Pfad]... : Pfadliste f�r Includedateien
-D <Symbol>[,Symbol]... : Symbole vordefinieren
-E [Name] : Zieldatei f�r Fehlerliste,
            !0..!4 f�r Standardhandles
            Default <Quelldatei>.LOG
-r : Meldungen erzeugen, falls zus�tzlicher Pass erforderlich
-Y : Sprungfehlerunterdr�ckung (siehe Anleitung)
-w : Warnungen unterdr�cken           +G : Code-Erzeugung unterdr�cken
-s : Sektionsliste erzeugen           -t : Listing-Teile ein/ausblenden
-u : Belegungsliste erzeugen          -C : Querverweisliste erzeugen
-I : Include-Verschachtelungsliste ausgeben
-g : Debug-Informationen schreiben
-A : kompaktere Symbolablage
-U : Case-sensitiv arbeiten
-x : erweiterte Fehlermeldungen       -n : Fehlermeldungen mit Nummer
-P : Makroprozessorausgabe erzeugen   -M : Makrodefinitionen extrahieren
-h : Hexadezimalzahlen mit Kleinbuchstaben

Quelldateiangabe darf Jokerzeichen enthalten

implementierte Prozessoren :
 