Predef::
	ld [wcc4e], a

	ldh a, [hLoadedROMBank]
	ld [wcf0d], a

	push af
	ld a, $13
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	call $7ea5
	ld a, [wPredefBank]
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	ld de, .done
	push de
	jp hl

.done
	pop af
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	ret

GetPredefRegisters::
	ld a, [wcc4f]
	ld h, a
	ld a, [wcc50]
	ld l, a
	ld a, [wcc51]
	ld d, a
	ld a, [wcc52]
	ld e, a
	ld a, [wcc53]
	ld b, a
	ld a, [wcc54]
	ld c, a
	ret
