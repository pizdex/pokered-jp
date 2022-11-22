UseItem::
	farjp _UseItem

TossItem::
	ldh a, [hLoadedROMBank]
	push af
	ld a, BANK(_TossItem)
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	call _TossItem
	pop de
	ld a, d
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	ret

IsKeyItem:
	push hl
	push de
	push bc
	farcall _IsKeyItem
	pop bc
	pop de
	pop hl
	ret
