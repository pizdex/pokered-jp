GetItemPrice:
	ldh a, [hLoadedROMBank]
	push af
	ld a, [wListMenuID]
	cp $01
	ld a, $01
	jr nz, jr_3835

	ld a, $0f

jr_3835:
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	ld hl, wcf76
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, [wcf78]
	cp $c4
	jr nc, jr_385a

	ld bc, $0003

jr_384a:
	add hl, bc
	dec a
	jr nz, jr_384a

	dec hl
	ld a, [hld]
	ldh [hff8d], a
	ld a, [hld]
	ldh [hff8c], a
	ld a, [hl]
	ldh [hff8b], a
	jr jr_3864

jr_385a:
	ld a, $1e
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	call $7fb2

jr_3864:
	ld de, hff8b
	pop af
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	ret
