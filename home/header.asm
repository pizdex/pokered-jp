; rst vectors (unused)

SECTION "rst0", ROM0[$0000]
	rst $38

SECTION "rst8", ROM0[$0008]
	rst $38

SECTION "rst10", ROM0[$0010]
	rst $38

SECTION "rst18", ROM0[$0018]
	rst $38

SECTION "rst20", ROM0[$0020]
	rst $38

SECTION "rst28", ROM0[$0028]
	rst $38

SECTION "rst30", ROM0[$0030]
	rst $38

SECTION "rst38", ROM0[$0038]
	jp $f080


; Game Boy hardware interrupts

SECTION "vblank", ROM0[$0040]
	jp VBlank

SECTION "lcd", ROM0[$0048]
	rst $38

SECTION "timer", ROM0[$0050]
	jp Timer

SECTION "serial", ROM0[$0058]
	jp Serial

SECTION "joypad", ROM0[$0060]
	reti


	db $00, $00, $00, $00, $00, $00, $00, $ff, $df, $3d, $5d, $f3, $37, $fd, $71, $f5
	db $bf, $57, $fd, $97, $76, $bb, $d9, $df, $df, $ff, $d9, $ff, $ff, $d9, $9f, $ff
	db $ff, $ff, $df, $ff, $fd, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $fd, $ff
	db $ff, $df, $ff, $ff, $7f, $ff, $ff, $ff, $ff, $ff, $fb, $ff, $ff, $ff, $f3, $ff
	db $ff, $ff, $ff, $ff, $ff, $ff, $df, $ff, $ff, $bf, $fb, $df, $ff, $f7, $b7, $ff
	db $ff, $ff, $ff, $ff, $ff, $ff, $77, $7f, $ff, $fb, $ff, $ff, $f7, $ff, $f7, $ff
	db $fd, $7f, $ff, $fd, $df, $ff, $df, $ff, $ff, $ff, $ff, $ff, $ff, $f7, $ff, $7f
	db $ff, $ff, $ff, $ff, $fd, $ff, $ff, $ff, $fb, $7b, $ff, $ff, $f7, $ff, $fb, $fd
	db $ff, $ff, $ff, $ff, $f7, $ff, $fd, $ff, $ff, $f7, $ff, $ff, $ff, $ff, $ff, $fd
	db $fd, $ff, $ff, $ff, $ff, $ff, $ff, $f7, $ff, $ff, $ff, $fb, $ff, $ff, $ff

SECTION "Header", ROM0[$0100]

Start::
; Nintendo requires all Game Boy ROMs to begin with a nop ($00) and a jp ($C3)
; to the starting address.
	nop
	jp _Start

; The Game Boy cartridge header data is patched over by rgbfix.
; This makes sure it doesn't get used for anything else.

	ds $0150 - @
