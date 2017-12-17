        CPU Z80
        org 0
start:
        ld hl,8000h
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
        in a,(0)    ; show some heartbeat at /IORQ
        jp start
fail:   halt
        end

