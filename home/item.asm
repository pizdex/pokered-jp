UseItem::
	ld b, $03
	ld hl, $563d
	jp Bankswitch

TossItem::
	ldh a, [hLoadedROMBank]
	push af
	ld a, $03
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	call $69c4
	pop de
	ld a, d
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	ret

IsKeyItem:
	push hl
	push de
	push bc
	ld b, $03
	ld hl, $6a6f
	call Bankswitch
	pop bc
	pop de
	pop hl
	ret
