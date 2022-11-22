LCDC_ON EQU 7
IE_VBLANK EQU 0

DisableLCD::
	xor a
	ldh [rIF], a
	ldh a, [rIE]
	ld b, a
	res IE_VBLANK, a
	ldh [rIE], a

.wait
	ldh a, [rLY]
	cp SCRN_Y + 1
	jr nz, .wait

	ldh a, [rLCDC]
	and $ff ^ LCDCF_ON
	ldh [rLCDC], a
	ld a, b
	ldh [rIE], a
	ret

EnableLCD::
	ldh a, [rLCDC]
	set LCDC_ON, a
	ldh [rLCDC], a
	ret
