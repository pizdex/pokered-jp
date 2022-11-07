Joypad:
	ldh a, [hLoadedROMBank]
	push af
	ld a, $03
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	call $4000
	pop af
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	ret
