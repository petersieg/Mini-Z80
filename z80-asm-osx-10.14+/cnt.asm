	org 200h

	ld	a,0
loop:	inc	a
	ld	(value),a
	jp	loop
value:	defb	0
