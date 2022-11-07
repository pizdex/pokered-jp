UpdateCinnabarGymGateTileBlocks::
	ld b, $07
	ld hl, $7d15
	jp Bankswitch


Call_3ee5:
	ldh a, [hLoadedROMBank]
	push af
	ldh a, [hJoyHeld]
	bit 0, a
	jr z, jr_3f1a

	ld a, $11
	ld [MBC1RomBank], a
	ldh [hLoadedROMBank], a
	call $78c5
	ldh a, [hffee]
	and a
	jr nz, jr_3f0d

	ld a, [wcd3e]
	ld [MBC1RomBank], a
	ldh [hLoadedROMBank], a
	ld de, $3f0a
	push de
	jp hl

Func_3f0a:
	xor a
	jr jr_3f1c

jr_3f0d:
	ld b, $03
	ld hl, $7e8a
	call Bankswitch
	ldh a, [hffdb]
	and a
	jr z, jr_3f1c

jr_3f1a:
	ld a, $ff

jr_3f1c:
	ldh [hffeb], a
	pop af
	ld [MBC1RomBank], a
	ldh [hLoadedROMBank], a
	ret
