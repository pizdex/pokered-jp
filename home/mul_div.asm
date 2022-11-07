Multiply:
	push hl
	push bc
	callfar _Multiply
	pop bc
	pop hl
	ret

Divide:
	push hl
	push de
	push bc
	ld a, [hLoadedROMBank] ; ldh
	push af
	ld a, BANK(_Divide)
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	call _Divide
	pop af
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	pop bc
	pop de
	pop hl
	ret
