UpdateSprites::
	ld a, [wUpdateSpritesEnabled]
	dec a
	ret nz
	ldh a, [hLoadedROMBank]
	push af
	ld a, $01
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	call $4a1c
	pop af
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	ret
