	cpu z80
	org 0
;
; read inport direct after reset to determine which program to run
    in a,(0)
	cp 0feh
	jp z,ramtst	; ram test - test 32k ram chip with 0x55, 0xaa. halt on any error
	cp 0fdh
	jp z,iotst	; io test - just mirror inport to outport
	cp 0fch
	jp z,dice	; roll a dice results in show 1..6
;
; fall though to hello program if no switch it set 
;---------------------------------------------
; welcome msg 'HELLo USEr'
hello:	ld a,(ledh)
	call outchr

	ld a,(lede)
	call outchr

	ld a,(ledl)
	call outchr

	ld a,(ledl)
	call outchr

	ld a,(ledo)
	call outchr

	call outspc

	ld a,(ledu)
	call outchr

	ld a,(leds)
	call outchr

	ld a,(lede)
	call outchr

	ld a,(ledr)
	call outchr

	call outspc
	jp hello

;---------------------------------------------
iotst:
    in a,(0)
    out (0),a
	jp iotst

;---------------------------------------------
dice:
	ld a,(ledmin)	; show '-' to wait for input 0xff (all switches off)
	out (0),a
dice2:	in a,(0)
	cp 0ffh
	jp nz,dice2	; if in is not 0xff, wait..
dice3:	ld b,-1
dice4:	inc b
	ld a,b
	cp 6		; if 6 -> 
	jp z,dice3	; -> reset to 0 (we only want 0..5)
	in a,(0)	; check if any switch is on (in != 0xff)
	cp 0ffh
	jp z,dice4	; no switch - continue inc b..
	inc b		; here: any switch was triggered; b is now 1..6

    ld hl,led0  ; point hl to 1st led0 code
    ld a,l      ; put l = lower address byte of led0 in a
    add a,b     ; add b = dice value to a = lower address byte of led0
    ld l,a      ; set l with new increased by dice value lower adress byte
    ld a,(hl)   ; get dice value ledx code
	out (0),a
	jp dice2    ; another roll the dice..


;---------------------------------------------
ramtst:	ld bc,led0	;bc points to ledn
	ld d,10		;count runs 0-9 loop
	ld a,(bc)
;	ld a,(led0)	;11000000b
    out (0),a
rambeg:
	ld hl,08000h	;mem start
ramtst2:
	ld a,55h
	ld (hl),a
        ld a,(hl)
        cp 55h
        jp nz,fail
        ld a,0aah
        ld (hl),a
        ld a,(hl)
        cp 0aah
        jp nz,fail

        inc hl		;mem end ffffh -> 0
        ld a,h
        cp 0
        jp nz,ramtst2
        ld a,l
        cp 0
        jp nz,ramtst2

	dec d
	jp z,ramtst
	inc bc		;bc points no next ledn code
	ld a,(bc)
    out (0),a
    jp rambeg

fail:   halt

outchr:			;A contains led value
	ld e,20		;delay value char	
    out (0),a
	call delaye
	ld e,5		;some blank time after each char
	ld a,(ledspc)
	out (0),a	;blank
	call delaye
	ret

outspc: ld e,100
	ld a,(ledspc)
	out (0),a	;blank
	call delaye
	ret

delaye: call delay1	;256 x NOP
    dec e
    jp nz,delaye    ;times e
    ret

delay1: ld a,0		;256 x NOP; A is destroyed
del11:  nop
    inc a
    jp nz,del11
del12:  ret

;ledX   defb  1gfedcbab     --a--
;                           |   |
;                           f   b
;                           |   |
;                           --g--
;                           |   |
;                           e   c
;                           |   |
;                           --d--
;
led0:	defb  11000000b     ; 0: c0h a, b, c, d, e, f
led1:	defb  11111001b     ; 1: f9h b, c
led2:	defb  10100100b     ; 2: a4h a, b, d, e, g
led3:	defb  10110000b     ; 3: b0h a, b, c, d, g
led4:	defb  10011001b     ; 4: 99h b, c, f, g
led5:	defb  10010010b     ; 5: 92h a, c, d, f, g
led6:	defb  10000010b     ; 6: 82h a, c, d, e, f, g
led7:	defb  11111000b     ; 7: f8h a, b, c
led8:	defb  10000000b     ; 8: 80h a, b, c, d, e, f, g
led9:	defb  10010000b     ; 9: 90h a, b, c, d, f, g

ledmin: defb  10111111b     ; -: bfh g
ledspc:	defb  11111111b     ;  : ffh

leda:   defb  10001000b     ; A: 88h a, b, c, e, f, g
ledb:   defb  10000011b     ; b: 83h c, d, e, f, g
ledc:   defb  11000110b     ; C: c6h a, d, e, f
ledd:   defb  10100001b     ; d: a1h b, c, d, e, g
lede:   defb  10000110b     ; E: 86h a, d, e, f, g
ledf:   defb  10001000b     ; 
ledg:   defb  10001000b     ; 
ledh:   defb  10001001b     ; H: 89h b, c, e, f, g
ledi:   defb  10001000b     ; 
ledj:   defb  10001000b     ; 
ledk:   defb  10001000b     ; 
ledl:   defb  11000111b     ; L: c7h d, e, f
ledm:   defb  10001000b     ; 
ledn:   defb  10001000b     ; 
ledo:   defb  10100011b     ; o: a3h c, d, e, g 
ledp:   defb  10001000b     ; 
ledq:   defb  10001000b     ; 
ledr:   defb  10101111b     ; r: afh e, g
leds:   defb  10010010b     ; S: 92h a, c, d, f, g
ledt:   defb  10001000b     ; 
ledu:   defb  11000001b     ; U: c1h b, c, d, e ,f
ledv:   defb  10001000b     ; 
ledw:   defb  10001000b     ; 
ledx:   defb  10001000b     ; 
ledy:   defb  10001000b     ; 
ledz:   defb  10001000b     ; 

        end
