DisplayTextBoxID:
	homecall_sf DisplayTextBoxID_
	ret

Call_3145:
	ld a, [wcc57]
	and a
	ret nz

	ld a, [wd6b5]
	bit 1, a
	ret nz

	ld a, [wd6af]
	and $80
	ret

RunNPCMovementScript:
	ld hl, wd6b5
	bit 0, [hl]
	res 0, [hl]
	jr nz, jr_318e

	ld a, [wcc57]
	and a
	ret z

	dec a
	add a
	ld d, $00
	ld e, a
	ld hl, $3188
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ldh a, [hLoadedROMBank]
	push af
	ld a, [wcc58]
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	ld a, [wcf0b]
	call CallFunctionInTable
	pop af
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	ret


	db $fa, $7c

	ret z

	ld a, l
	dec [hl]
	ld a, [hl]

jr_318e:
	ld b, $06
	ld hl, $7c98
	jp Bankswitch


	ld b, $06
	ld hl, $7cd5
	jp Bankswitch


	ret
