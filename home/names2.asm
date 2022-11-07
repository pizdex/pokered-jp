NamePointers:
	db $68, $50
	db $00, $40
	db $f5, $45
	db $3f, $43
	db $33, $d2
	db $2b, $d9
	db $1c, $5d

GetName:
	ld a, [wd092]
	ld [wd0e3], a
	cp $c4
	jp nc, GetMachineName

	ldh a, [hLoadedROMBank]
	push af
	push hl
	push bc
	push de
	ld a, [wNameListType]
	dec a
	jr nz, .asm_37d5

	call GetMonName
	ld hl, $0006
	add hl, de
	ld e, l
	ld d, h
	jr jr_3815

.asm_37d5
	ld a, [wPredefBank]
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	ld a, [wNameListType]
	dec a
	add a
	ld d, $00
	ld e, a
	jr nc, .asm_37e8

	inc d

.asm_37e8
	ld hl, $37a5
	add hl, de
	ld a, [hli]
	ldh [hff96], a
	ld a, [hl]
	ldh [hff95], a
	ldh a, [hff95]
	ld h, a
	ldh a, [hff96]
	ld l, a
	ld a, [wd092]
	ld b, a
	ld c, $00

jr_37fe:
	ld d, h
	ld e, l

jr_3800:
	ld a, [hli]
	cp $50
	jr nz, jr_3800

	inc c
	ld a, b
	cp c
	jr nz, jr_37fe

	ld h, d
	ld l, e
	ld de, wcd68
	ld bc, $0014
	call CopyBytes

jr_3815:
	ld a, e
	ld [wcf74], a
	ld a, d
	ld [wcf75], a
	pop de
	pop bc
	pop hl
	pop af
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	ret
