PushBank:
	ld [wcf04], a
	ldh a, [hLoadedROMBank]
	ld [wcf03], a
	ld a, [wcf04]
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	ret

PopBank:
	ld a, [wcf03]
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	ret

Bankswitch:
	ldh a, [hLoadedROMBank]
	push af
	ld a, b
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	ld bc, .return
	push bc
	jp hl

.return
	pop bc
	ld a, b
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	ret
