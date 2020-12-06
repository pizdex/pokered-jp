; Disassembly of "pokemon-red-jp.gb"

SECTION "ROM Bank $010", ROMX[$4000], BANK[$10]

	call $3e15
	call $03bf
	call $0ebd
	ld a, [wcc36]
	push af
	xor a
	ld [wcc26], a
	ld [wcc36], a
	ld [wcc2a], a
	inc a
	ld [wd0e3], a
	ld [$ffb7], a

Jump_010_401e:
	ld b, $08
	call $3e1f
	ld hl, $7c2c
	ld b, $05
	call $3620

jr_010_402b:
	ld hl, wcc24
	ld a, $03
	ld [hli], a
	xor a
	ld [hli], a
	inc a
	ld [wcc37], a
	inc hl
	inc hl
	ld a, $06
	ld [hli], a
	ld [hl], $33
	call Call_010_4103
	jr c, jr_010_4063

jr_010_4043:
	xor a
	ld [wcc37], a
	ld [wcc26], a
	ld [wcc2a], a
	ld [$ffb7], a
	ld [wcd3a], a
	ld [wcd3b], a
	pop af
	ld [wcc36], a
	call $3e04
	call $3e1d
	jp $1b86


jr_010_4063:
	call Call_010_406f
	dec b
	jr z, jr_010_4043

	dec b
	jr z, jr_010_402b

	jp Jump_010_401e


Call_010_406f:
	call $3c1c
	ld a, [wcc26]
	push af
	ld b, a
	ld a, [wcc2a]
	push af
	ld a, [wcc36]
	push af

Jump_010_407f:
	add b
	inc a
	ld [wd0e3], a
	ld a, [wd0e3]
	push af
	ld a, [wcd3d]
	push af
	ld hl, wd28e
	call Call_010_42ab
	ld b, $02
	jr z, jr_010_40c5

	call Call_010_676f
	ld hl, wcc24
	ld a, $0a
	ld [hli], a
	ld a, $0c
	ld [hli], a
	xor a
	ld [hli], a
	inc hl
	ld a, $03
	ld [hli], a
	ld [hli], a
	xor a
	ld [hli], a
	ld [wcc37], a

jr_010_40ae:
	call $3b08
	bit 1, a
	ld b, $02
	jr nz, jr_010_40c5

	ld a, [wcc26]
	and a
	jr z, jr_010_40e8

	dec a
	jr z, jr_010_40ef

	dec a
	jr z, jr_010_40fa

	ld b, $01

jr_010_40c5:
	pop af
	ld [wcd3d], a
	pop af
	ld [wd0e3], a
	pop af
	ld [wcc36], a
	pop af
	ld [wcc2a], a
	pop af
	ld [wcc26], a
	push bc
	ld hl, wc3dc
	ld de, $0014
	ld bc, $7f0d
	call Call_010_4454
	pop bc
	ret


jr_010_40e8:
	call Call_010_42cb
	ld b, $00
	jr jr_010_40c5

jr_010_40ef:
	ld a, [wd0e3]
	call $2dd0
	call $0e45
	jr jr_010_40ae

jr_010_40fa:
	ld a, $4a
	call $3e9d
	ld b, $00
	jr jr_010_40c5

Call_010_4103:
	xor a
	ldh [$ba], a
	ld hl, wc44b
	ld b, $08
	ld c, $07
	call $03d2
	ld hl, wc3aa
	ld [hl], $71
	ld hl, wc3be
	call Call_010_4272
	ld hl, wc45e
	call Call_010_4272
	ld hl, wd28e
	ld b, $13
	call $1690
	ld de, wd0e3
	ld hl, wc3ec
	ld bc, $0103
	call $3c8f
	ld hl, wd27b
	ld b, $13
	call $1690
	ld de, wd0e3
	ld hl, wc428
	ld bc, $0103
	call $3c8f
	ld hl, wc3d4
	ld de, $4281
	call $0405
	ld hl, wc410
	ld de, $4288
	call $0405
	ld hl, wc3b5
	ld de, $4290
	call $0405
	ld hl, wc475
	ld de, $4294
	call $0405
	ld hl, wd2a0
	ld b, $99

jr_010_4172:
	ld a, [hld]
	ld c, $08

jr_010_4175:
	dec b
	sla a
	jr c, jr_010_417f

	dec c
	jr nz, jr_010_4175

	jr jr_010_4172

jr_010_417f:
	ld a, b
	ld [wcd3d], a

Jump_010_4183:
	xor a
	ldh [$ba], a
	ld hl, wc3cd
	ld bc, $0e05
	call $0374
	ld hl, wc3dd
	ld a, [wcc36]
	ld [wd0e3], a
	ld d, $07
	ld a, [wcd3d]
	cp $07
	jr nc, jr_010_41a6

	ld d, a
	dec a
	ld [wcc28], a

jr_010_41a6:
	ld a, [wd0e3]
	inc a
	ld [wd0e3], a
	push af
	push de
	push hl
	ld de, wd0e3
	ld bc, $8103
	call $3c8f
	push hl
	ld hl, wd27b
	call Call_010_42ab
	pop hl
	ld a, $7f
	jr z, jr_010_41c7

	ld a, $72

jr_010_41c7:
	ld [hl], a
	push hl
	ld hl, wd28e
	call Call_010_42ab
	jr nz, jr_010_41dc

	ld de, $41d6
	jr jr_010_41e2

	db $e3
	db $e3
	db $e3
	db $e3
	db $e3
	ld d, b

jr_010_41dc:
	call Call_010_676f
	call $1aab

jr_010_41e2:
	pop hl
	inc hl
	call $0405
	pop hl
	ld bc, $0028
	add hl, bc
	pop de
	pop af
	ld [wd0e3], a
	dec d
	jr nz, jr_010_41a6

	ld a, $01
	ldh [$ba], a
	call $3e07
	call $3e0c
	call $3b08
	bit 1, a
	jp nz, Jump_010_4270

	bit 6, a
	jr z, jr_010_4218

	ld a, [wcc36]
	and a
	jp z, Jump_010_4183

	dec a
	ld [wcc36], a
	jp Jump_010_4183


jr_010_4218:
	bit 7, a
	jr z, jr_010_4235

	ld a, [wcd3d]
	cp $07
	jp c, Jump_010_4183

	sub $07
	ld b, a
	ld a, [wcc36]
	cp b
	jp z, Jump_010_4183

	inc a
	ld [wcc36], a
	jp Jump_010_4183


jr_010_4235:
	bit 4, a
	jr z, jr_010_4258

	ld a, [wcd3d]
	cp $07
	jp c, Jump_010_4183

	sub $06
	ld b, a
	ld a, [wcc36]
	add $07
	ld [wcc36], a
	cp b
	jp c, Jump_010_4183

	dec b
	ld a, b
	ld [wcc36], a
	jp Jump_010_4183


jr_010_4258:
	bit 5, a
	jr z, jr_010_426e

	ld a, [wcc36]
	sub $07
	ld [wcc36], a
	jp nc, Jump_010_4183

	xor a
	ld [wcc36], a
	jp Jump_010_4183


jr_010_426e:
	scf
	ret


Jump_010_4270:
	and a
	ret


Call_010_4272:
	ld c, $09
	ld de, $0014
	ld a, $71

jr_010_4279:
	ld [hl], a
	add hl, de
	xor $01
	dec c
	jr nz, jr_010_4279

	ret


	ret nc

	jp nz, wc0b9

	or [hl]
	dec l
	ld d, b
	jp nz, wcfb6

	or h
	ret nz

	or [hl]
	dec l
	ld d, b
	db $d3
	cp b
	inc l
	ld d, b
	ld [de], a
	db $e3
	adc a
	db $dd
	ret nc

	reti


	ld c, [hl]
	push bc
	or a
	ld a, [hli]
	or h
	ld c, [hl]
	inc a
	sbc $46
	db $dd
	ret nc

	reti


	ld c, [hl]
	call nc, wd9d2
	ld d, b

Call_010_42ab:
	ld a, [wd0e3]
	dec a
	ld c, a
	ld b, $02
	ld a, $10
	call $3e9d
	ld a, c
	and a
	ret


	call $3e04
	call $03bf
	call $0ebd
	ld hl, $7c2c
	ld b, $05
	call $3620

Call_010_42cb:
	ld hl, wd6ab
	set 1, [hl]
	ld a, $33
	ldh [rNR50], a
	call $3e15
	call $03bf
	ld a, [wd0e3]
	ld [wcf78], a
	push af
	ld b, $04
	call $3e1f
	pop af
	ld [wd0e3], a
	ldh a, [$d7]
	push af
	xor a
	ldh [$d7], a
	ld hl, wc3a0
	ld de, $0001
	ld bc, $6414
	call Call_010_4454
	ld hl, wc4f4
	ld b, $6f
	call Call_010_4454
	ld hl, wc3b4
	ld de, $0014
	ld bc, $6610
	call Call_010_4454
	ld hl, wc3c7
	ld b, $67
	call Call_010_4454
	ld a, $63
	ld [wc3a0], a
	ld a, $65
	ld [wc3b3], a
	ld a, $6c
	ld [wc4f4], a
	ld a, $6e
	ld [wc507], a
	ld hl, wc454
	ld de, $443f
	call $0405
	ld hl, wc421
	ld de, $4428
	call $0405
	call $1aab
	ld hl, wc3d1
	call $0405
	ld hl, $445e
	ld a, [wd0e3]
	dec a
	ld e, a
	ld d, $00
	add hl, de
	add hl, de
	ld a, [hli]
	ld e, a
	ld d, [hl]
	ld hl, wc3f9
	call $0405
	ld h, b
	ld l, c
	push de
	ld de, $443d
	call $0405
	ld a, [wd0e3]
	push af
	call Call_010_6786
	ld hl, wc442
	ld a, $74
	ld [hli], a
	ld a, $f2
	ld [hli], a
	ld de, wd0e3
	ld bc, $8103
	call $3c8f
	ld hl, wd27b
	call Call_010_42ab
	pop af
	ld [wd0e3], a
	ld a, [wcf78]
	ld [wd092], a
	pop de
	ld a, c
	and a
	jp z, Jump_010_43ed

	inc de
	ld a, [de]
	push af
	ld hl, wc425
	ld bc, $0103
	call $3c8f
	ld hl, wc426
	pop af
	cp $0a
	jr nc, jr_010_43aa

	ld [hl], $f6

jr_010_43aa:
	inc hl
	ld a, [hli]
	ld [hld], a
	ld [hl], $f2
	inc de
	inc de
	inc de
	push de
	ld hl, $ff8b
	ld a, [hl]
	push af
	ld a, [de]
	ld [hli], a
	ld a, [hl]
	push af
	dec de
	ld a, [de]
	ld [hl], a
	ld de, $ff8b
	ld hl, wc44c
	ld bc, $0204
	call $3c8f
	ld hl, wc44e
	ldh a, [$8c]
	sub $0a
	ldh a, [$8b]
	sbc $00
	jr nc, jr_010_43da

Call_010_43d8:
	ld [hl], $f6

jr_010_43da:
	inc hl
	ld a, [hli]
	ld [hld], a
	ld [hl], $f2
	pop af
	ldh [$8c], a
	pop af
	ldh [$8b], a
	pop de
	inc de
	ld hl, wc47d
	call $0405

Jump_010_43ed:
	call $3e07
	call $3e0c
	call $2f2e
	ld hl, wc3b5
	call $2d7a
	ld a, [wcf78]
	call $2dc7

jr_010_4402:
	call $3879
	ld a, [$ffb5]
	and $03
	jr z, jr_010_4402

	pop af
	ldh [$d7], a
	call $3e15
	call $03bf
	call $3e1d
	call $36ea
	call $3e0c
	ld hl, wd6ab
	res 1, [hl]
	ld a, $77
	ldh [rNR50], a
	ret


	db $c0, $b6, $bb, $7f, $7f, $e6, $e6, $e6, $60, $4e, $b5, $d3, $bb, $7f, $7f, $e6
	db $e6, $e6, $61, $62, $50, $54, $50, $68, $69, $6b, $69, $6b, $69, $6b, $69, $6b
	db $6b, $6b, $6b, $69, $6b, $69, $6b, $69, $6b, $69, $6a, $50

Call_010_4454:
	push bc
	push de

jr_010_4456:
	ld [hl], b
	add hl, de
	dec c
	jr nz, jr_010_4456

	pop de
	pop bc
	ret


	jp c, $1645

	ld b, [hl]
	ld c, l
	ld b, [hl]
	adc b
	ld b, [hl]
	cp a
	ld b, [hl]
	ld sp, hl
	ld b, [hl]
	inc sp
	ld b, a
	ld l, a
	ld b, a
	and [hl]
	ld b, a
	sbc $47
	dec de
	ld c, b
	ld e, d
	ld c, b
	sub h
	ld c, b
	adc $48
	inc bc
	ld c, c
	ld b, d
	ld c, c
	ld a, c
	ld c, c
	or c
	ld c, c
	jp hl


	ld c, c
	inc hl
	ld c, d
	ld e, d
	ld c, d
	sub d
	ld c, d
	call $034a
	ld c, e
	add hl, sp
	ld c, e
	ld [hl], e
	ld c, e
	xor c
	ld c, e
	reti


	ld c, e
	ld de, $4a4c
	ld c, h
	ld l, d
	ld h, a
	ld l, d
	ld h, a
	add [hl]
	ld c, h
	cp d
	ld c, h
	db $f4
	ld c, h
	ld l, $4d
	ld h, e
	ld c, l
	sbc [hl]
	ld c, l
	db $dd
	ld c, l
	db $10
	ld c, [hl]
	ld c, l
	ld c, [hl]
	adc e
	ld c, [hl]
	add $4e
	ld [bc], a
	ld c, a
	add hl, sp
	ld c, a
	ld [hl], e
	ld c, a
	or b
	ld c, a
	db $ed
	ld c, a
	inc h
	ld d, b
	ld l, d
	ld h, a
	ld e, h
	ld d, b
	ld l, d
	ld h, a
	sub h
	ld d, b
	jp z, $0450

	ld d, c
	ld l, d
	ld h, a
	dec a
	ld d, c
	ld [hl], h
	ld d, c
	or b
	ld d, c
	db $eb
	ld d, c
	ld l, d
	ld h, a
	ld l, d
	ld h, a
	ld l, d
	ld h, a
	rra
	ld d, d
	ld d, [hl]
	ld d, d
	sub c
	ld d, d
	ld l, d
	ld h, a
	ld l, d
	ld h, a
	ld l, d
	ld h, a
	rst $00
	ld d, d
	ld [bc], a
	ld d, e
	ccf
	ld d, e
	ld a, l
	ld d, e
	or a
	ld d, e
	di
	ld d, e
	ld l, $54
	ld h, l
	ld d, h
	sbc b
	ld d, h
	ld l, d
	ld h, a
	ld l, d
	ld h, a
	ld l, d
	ld h, a
	rst $08
	ld d, h
	inc bc
	ld d, l
	ld b, b
	ld d, l
	ld [hl], l
	ld d, l
	ld l, d
	ld h, a
	ld l, d
	ld h, a
	xor h
	ld d, l
	ldh [rHDMA5], a
	dec e
	ld d, [hl]
	ld d, e
	ld d, [hl]
	adc h
	ld d, [hl]
	call z, Call_010_6a56
	ld h, a
	ld l, d
	ld h, a
	inc b
	ld d, a
	ld a, [hld]
	ld d, a
	ld l, l
	ld d, a
	and e
	ld d, a
	jp c, $1157

	ld e, b
	ld b, [hl]
	ld e, b
	ld [hl], a
	ld e, b
	xor [hl]
	ld e, b
	add sp, $58
	jr nz, jr_010_458b

	ld e, a
	ld e, c
	sbc b
	ld e, c
	rst $08
	ld e, c
	dec bc
	ld e, d
	ld b, [hl]
	ld e, d
	add e
	ld e, d
	jp nz, $fa5a

	ld e, d
	ld l, d
	ld h, a
	dec [hl]
	ld e, e
	ld [hl], l
	ld e, e
	and a
	ld e, e
	sbc $5b
	inc de
	ld e, h
	ld l, d
	ld h, a
	ld l, d
	ld h, a
	ld c, h
	ld e, h
	add a
	ld e, h
	cp a
	ld e, h
	ld sp, hl
	ld e, h
	ld l, d
	ld h, a
	ld [hld], a
	ld e, l
	ld l, a
	ld e, l
	xor [hl]
	ld e, l
	rst $18
	ld e, l
	inc e
	ld e, [hl]
	ld d, h
	ld e, [hl]
	ld l, d
	ld h, a
	ld l, d
	ld h, a
	adc d
	ld e, [hl]
	ld l, d
	ld h, a
	cp a
	ld e, [hl]
	db $f4
	ld e, [hl]
	ld l, d
	ld h, a
	dec hl
	ld e, a
	ld h, l
	ld e, a
	sbc l
	ld e, a
	sub $5f
	dec d
	ld h, b
	ld l, d
	ld h, a
	ld d, c
	ld h, b
	adc c
	ld h, b
	jp $fa60


	ld h, b
	inc [hl]

jr_010_458b:
	ld h, c
	ld h, [hl]
	ld h, c
	sbc h
	ld h, c
	rst $08
	ld h, c
	ld bc, $6a62
	ld h, a
	dec a
	ld h, d
	ld a, b
	ld h, d
	ld l, d
	ld h, a
	ld l, d
	ld h, a
	ld l, d
	ld h, a
	ld l, d
	ld h, a
	xor l
	ld h, d
	jp hl


	ld h, d
	ld h, $63

jr_010_45a8:
	ld e, l
	ld h, e
	sub h
	ld h, e
	call $0963
	ld h, h
	ld b, d
	ld h, h
	ld a, e
	ld h, h
	ld l, d
	ld h, a
	or [hl]
	ld h, h
	ld l, d
	ld h, a
	ld l, d
	ld h, a
	db $ed
	ld h, h

	db $2b, $65

	ld h, d
	ld h, l
	sbc c
	ld h, l
	rst $08
	ld h, l
	ld l, d
	ld h, a
	ld l, d
	ld h, a
	ld l, d
	ld h, a
	ld l, d
	ld h, a
	add hl, bc
	ld h, [hl]
	ld b, d
	ld h, [hl]
	ld a, d
	ld h, [hl]
	or d
	ld h, [hl]
	rst $28
	ld h, [hl]
	dec l
	ld h, a
	inc de
	ret c

	and [hl]
	ld d, b
	inc de
	or b
	inc b
	cp h
	sbc $b6
	cp h
	jp $b37f


	cp h
	db $db
	or c
	cp h
	ld a, a
	jr nc, jr_010_45a8

	inc sp
	ld c, [hl]
	ret nz

	jp nz, $b3d6

	add $c5
	rst $18
	ret nz

	add sp, -$6f
	sbc b
	inc sp
	ld a, a
	jp nz, wdab6

	reti


	call nz, $264e
	sbc $be
	or a
	add $d3
	ld a, a
	or c
	push bc
	ld h, $b1
	or d
	jp wcfbc


	or e
	add sp, $50
	or l
	call nc, Call_010_50ba
	ld d, $20
	inc bc
	and b
	adc h
	jp z, $b57f

	push bc
	or [hl]
	ret


	ld a, a
	call z, wdbb8
	add $4e
	cp d
	inc [hl]
	db $d3
	db $dd
	ld a, a
	or d
	jp c, Jump_010_7fc3

	cp a
	jr nc, @-$3b

	reti


	add sp, $4e
	jp c, $2fde

	cp b
	ld b, b
	xor e
	sub b
	ld a, a
	cp d

jr_010_4643:
	or e
	add hl, hl
	or a
	ld h, $7f
	call nz, $b2b8
	add sp, $50
	inc [hl]
	cp b
	ld a, [hld]
	ret c

	ld d, b
	dec b
	ld e, d
	nop
	ret nc

	ret nc

	ld h, $7f
	or l
	or l
	or a
	cp b
	ld a, a
	call nz, $b8b5
	ret


	ld a, a
	or l
	call nz, $4edd
	or a
	cp b
	call nz, Call_010_7fb7

jr_010_466c:
	jp z, wc03a

	cp b
	sub $b3
	add $7f
	or e
	ld a, [hli]
	cp b
	add sp, $4e
	or l
	cp d
	reti


	call nz, $347f
	cp b
	ld a, [hld]
	ret c

	db $dd
	ld a, a
	jr nc, jr_010_4643

	add sp, $50
	sub $b3
	cp [hl]
	or d
	ld d, b
	ld b, $4b
	nop
	or c
	or d
	cp b
	reti


	cp h
	or d
	ld a, a
	cp l
	ld h, $c0
	or [hl]
	rst $10
	ld c, [hl]
	ld b, a
	xor h
	sub e
	sub $b3
	add $7f
	add $de
	or a
	ld h, $7f
	or c
	reti


	add sp, $4e
	ret nz

	jr nc, jr_010_466c

	ld a, a
	push bc
	or [hl]
	push bc
	or [hl]
	ld a, a
	ret nc

	jp nz, wd7b9

	jp c, $b2c5

	add sp, $50
	cp d
	call nz, Call_010_50d8
	inc bc
	inc d
	nop
	or d
	cp a
	ld h, $bc
	cp b
	ld a, a
	or c
	pop bc
	cp d
	pop bc
	db $dd
	ld a, a
	call nz, wcf3b
	call c, $e8d9
	ld c, [hl]
	ret nz

	or d
	ret c

	ld [c], a
	cp b
	jp z, $bd7f

	cp b
	push bc
	or d
	ld h, $4e
	add h
	add d
	sbc a
	ld h, $b4
	cp h
	db $dd
	ld a, a
	jp nz, $b3b6

	call nz, wc37f
	ld a, [hli]
	call c, $e8b2
	ld d, b
	inc e
	db $e3
	and [hl]
	ld d, b
	dec b
	ld l, b
	nop
	cp h
	ld [c], a
	or e
	ret nz

	or d
	ld a, a
	call z, $b2d2
	ret


	ld a, a
	or d
	or a
	db $d3
	ret


	add sp, $4e
	or d
	call nc, $b5c5
	call nz, $7fdd
	jr nc, @-$42

	ret nz

	ret c

	ld a, a
	call nz, $2ec2
	sbc $4e
	inc l
	ld a, [hld]
	cp b
	cp l
	reti


	ld a, a
	cp d
	call nz, $7fd3
	or c
	reti


	call nz, $b3b2
	add sp, $50
	inc de
	ret c

	and [hl]
	ld d, b
	ld c, $6c
	ld [bc], a
	or d
	cp h
	ret


	sub $b3
	add $7f
	or [hl]
	ret nz

	or d
	ld a, a
	set 1, h
	call nz, wc54e
	ld h, $b8
	ld a, a
	ret


	dec sp
	ret nz

	ld a, a
	sub c
	sbc b
	ld h, $7f
	call nz, wc1b8
	ld [c], a
	or e
	add sp, $4e
	sub c
	sbc b
	add $ca
	ld a, a
	inc [hl]
	cp b
	db $d3
	or c
	reti


	ret


	inc sp
	ld a, a
	pop bc
	pop hl
	or e
	or d
	add sp, $50
	call nc, $b634
	ret c

	ld d, b
	db $10
	ld de, $a203
	inc de
	xor e
	ld h, $7f
	or e
	ret nc

	call $837f
	adc d
	db $dd
	ld c, [hl]
	call nz, wc6d8
	or d
	rst $18
	ret nz

	call nz, Call_010_7fb7
	adc e
	db $eb
	and [hl]
	rrca
	db $e3
	add $4e
	cp h
	rst $18
	ld c, b
	db $dd
	or [hl]
	rst $08
	jp c, $a27f

	inc de
	and l
	xor e
	add $c5
	rst $18
	ret nz

	add sp, $50
	ret nz

	ret z

	ld d, b
	ld a, [bc]
	add d
	nop
	jp nz, wd03e

	ld h, $7f
	cp [hl]
	push bc
	or [hl]
	add $7f
	jp nz, wc3b2

	or d
	jp wd64e


	or e
	inc a
	sbc $dd
	ld a, a
	or a
	pop hl
	or e
	cp h
	pop hl
	or e
	cp h
	jp $b8b2


	call nz, $b54e
	or l
	or a
	push bc
	ld a, a
	jp z, $26c5

	ld a, a
	cp e
	cp b
	call nz, $b3b2
	add sp, $50
	call nc, wc9bc
	ret nc

	ld d, b
	inc d
	or b
	inc b
	or c
	reti


	cp b
	ld a, a
	ret z

	rst $18
	ret nz

	or d
	or e
	ret c

	sbc $7f
	call nz, $3ad6
	jp c, $e8d9

	ld c, [hl]
	ret nc

	ret


	ld a, a
	set 0, h
	jp nz, wc4cb

	jp nz, Jump_010_7fc6

	or [hl]
	or l
	ld h, $b1
	rst $18
	jp $bf4e


	jp c, wda2f

	ld a, a
	or d
	cp h
	db $dd
	ld a, a
	db $d3
	rst $18
	jp wd9b2


	add sp, $50
	push bc
	jp nc, wdccf

	cp h
	ld d, b
	inc c
	adc a
	ld [bc], a
	cp h
	ret nz

	ld h, $7f
	cp h
	sbc $c1
	ld [c], a
	or e
	ret


	ld a, a
	ld hl, sp+$3a
	or d
	db $d3
	or c
	reti


	add sp, $4e
	add e
	adc d
	db $dd
	call nz, wc0df
	ret c

	ld a, a
	cp d
	or e
	add hl, hl
	or a
	db $dd
	cp h
	ret nz

	ret c

	call nz, wcf4e
	reti


	inc sp
	ld a, a
	jp wd6c9


	or e
	add $7f
	or e
	ld a, [hli]
	or [hl]
	cp [hl]
	reti


	add sp, $50
	ret nz

	rst $08
	ld a, [hli]
	ld d, b
	inc b
	add hl, de
	nop
	push bc
	add $b6
	ret


	ld a, a
	ret nz

	rst $08
	ld a, [hli]
	ret


	ld a, a
	sub $b3
	jr nc, @+$28

	ld c, [hl]
	inc l
	jp nz, $7fca

	cp h
	ld [c], a
	cp b
	inc a
	jp nz, Jump_010_7fc9

	adc a
	sub a
	add $c1
	or [hl]
	or d
	ld c, [hl]
	or d
	or a
	db $d3
	ret


	ld a, a
	inc sp
	or c
	reti


	cp d
	call nz, $7f26
	call c, wdfb6
	ret nz

	add sp, $50
	call $a813
	ld d, b
	add hl, bc
	inc l
	ld bc, $b7c2
	or [hl]
	rst $10
	ret


	ld a, a
	add e
	xor h
	add a
	adc h
	cp [hl]
	sbc $dd
	or c
	dec sp
	ret nz

	ld c, [hl]
	call $a813
	ld h, $7f
	dec a
	sub e
	dec a
	adc a
	db $e3
	add $cd
	sbc $b6
	cp h
	ret nz

	add sp, $4e
	or a
	ret nz

	push bc
	or d
	and c
	sbc b
	ld h, $7f
	jr nc, @-$4c

	cp d
	or e
	inc a
	jp nz, Jump_010_50e8

	adc e
	xor l
	inc de
	db $e3
	ld d, b
	rrca
	sub l
	ld bc, wcfd4
	inc sp
	ld a, a
	cp a
	or e
	push bc
	sbc $bc
	ret nz

	call nz, $4eb7
	or d
	ret


	pop bc
	db $dd
	or e
	ld a, [hld]
	or d
	add $7f
	cp b
	rst $10
	call nc, $b6d0
	rst $10
	ld c, [hl]
	or c
	rst $10
	call c, wd9da
	cp d
	call nz, $7f26
	or c
	reti


	call nz, $b3b2
	add sp, $50
	inc [hl]
	cp b
	ld a, [hld]
	ret c

	ld d, b
	inc b
	ld b, [hl]
	nop
	pop bc
	or d
	cp e
	cp b
	jp $7fd3


	inc [hl]
	cp b
	ld a, [hld]
	ret c

	ret


	ld a, a
	or d
	ret c

	ld [c], a
	cp b
	jp z, $b74e

	ld [c], a
	or e
	jp c, $33c2

	ld a, a
	pop bc
	pop hl
	or e
	or d
	ld h, $7f
	set 0, d
	sub $b3
	add sp, $4e
	and b
	adc h
	ret


	adc $b3
	ld h, $7f
	jp nz, $26c9

jr_010_493b:
	ld a, a
	pop bc
	or d
	cp e
	or d
	add sp, $50
	inc de
	ret c

	and [hl]
	ld d, b
	dec c
	inc a
	nop
	or [hl]
	ret nz

	cp b
	jp wca7f


	ret c

	ret


	sub $b3
	push bc
	ld a, a
	add d
	xor b
	adc c
	ld h, $4e
	or [hl]
	rst $10
	jr nc, jr_010_493b

	ld a, a
	or l
	or l
	rst $18
	jp wd9b2


	add sp, $4e
	cp d
	or e
	call z, $bdde
	reti


	call nz, wca7f
	ret c

	ld h, $7f
	cp e
	or [hl]
	jr nc, @-$3c

	add sp, $50
	cp d
	inc [hl]
	cp b
	ld d, b
	inc b
	ld b, c
	nop
	cp h
	add $dc
	or [hl]
	jp c, Jump_010_7fc0

	jp z, $b5ca

	call nc, Call_010_7fc9
	adc $c8
	db $dd
	ld c, [hl]
	or c
	ret nz

	rst $08
	add $7f
	or [hl]
	inc a
	rst $18
	jp wd9b2


	add sp, -$45
	dec sp
	cp h
	or d
	call nz, $4eb7
	or l
	or l
	ld a, [hli]
	or h
	inc sp
	ld a, a
	push bc
	cp b
	call nz, $b3b2
	add sp, $50
	call nz, wc429
	add hl, hl
	ld d, b
	ld a, [bc]
	ld a, [hl]
	inc b
	or c
	ret nz

	rst $08
	jp z, wdc7f

	reti


	or d
	ld h, $7f
	pop bc
	or [hl]
	rst $10
	ld h, $7f
	jp nz, $b8d6

	ld c, [hl]
	cp d
	or e
	cp a
	or e
	ld a, [de]
	and [hl]
	db $d3
	ld a, a
	ret nz

	or d
	or c
	ret nz

	ret c

	inc sp
	ld c, [hl]
	adc c
	sub h
	add hl, bc
	sub h
	add $7f
	call z, $bbde
	or d
	cp l
	reti


	add sp, $50
	ret


	ret c

	db $d3
	ret


	ld d, b
	add hl, de
	sbc b
	ld [wc4cb], sp
	ret


	cp d
	call nz, wdd3a
	ld a, a
	ret c

	or [hl]
	or d
	cp l
	reti


	ld a, a
	ret nz

	or [hl]
	or d
	ld c, [hl]
	pop bc
	ret


	or e
	db $dd
	db $d3
	jp nz, $b3e8

	ret nc

	ret


	ld a, a
	or e
	or h
	db $dd
	ld c, [hl]
	set 0, h
	db $dd
	ret


	cp [hl]
	jp $bd7f


	cp l
	pop de
	ret


	ld h, $7f
	cp l
	or a
	add sp, $50
	inc sp
	sbc $be
	jp nz, $1350

	ld c, $06
	pop bc
	pop hl
	or e
	ld a, [hli]
	cp b
	ret


	ld a, a
	or d
	or d
	jp nz, $b4c0

	add $b1
	reti


	ld c, [hl]
	inc sp
	sbc $be
	jp nz, Jump_010_7fc9

	ld b, e
	adc b
	and c
	xor e
	add sp, -$2d
	ret


	cp l
	ld a, [hli]
	or d
	ld c, [hl]
	adc h
	ld b, c
	db $e3
	inc de
	inc sp
	ld a, a
	jp z, wd9bc

	call nz, $b3b2
	add sp, $50
	cp h
	sbc $bc
	pop hl
	ld d, b
	inc b
	jr z, jr_010_4a62

jr_010_4a62:
	ret nc

	push bc
	ret nc

	add b
	and b
	ret c

	add l
	add $7f
	cp [hl]
	or d
	cp a
	cp b
	cp l
	reti


jr_010_4a71:
	ld c, [hl]
	ld l, $c2
	jp nc, $bcc2

	ret nz

	jp z, wc92d

	ld a, a
	ld d, h
	add sp, $4e
	pop bc
	ret


	or e
	ld h, $c0
	or [hl]
	cp b
	ld a, a
	push bc
	sbc $33
	db $d3
	ld a, a
	or l
	ld a, $b4
	reti


	add sp, $50
	or a
	ld [c], a
	or e
	or c
	cp b
	ld d, b
	ld b, c
	ld l, $09
	sra h
	ld [c], a
	or e
	add $7f
	or a
	ld [c], a
	or e
	ld a, $b3
	push bc
	ld a, a
	cp [hl]
	or d
	or [hl]
	cp b
	add sp, $4e
	cp b
	pop bc
	or [hl]
	rst $10
	jr nc, jr_010_4a71

	ld a, a
	jp z, $b2b6

	cp d
	or e
	cp [hl]
	sbc $ca
	ld c, [hl]
	cp l
	dec a
	jp wd3c9


	ret


	db $dd
	ld a, a
	call nc, wc2b7
	cp b
	cp l
	add sp, $50
	ld hl, sp-$31
	or d
	ld h, $b2
	ld d, b
	inc bc
	jr z, jr_010_4ad6

jr_010_4ad6:
	rrca
	add c
	and d
	and c
	xor e
	inc de
	sub $d8
	db $d3
	ld a, a
	or [hl]
	ret nz

	or d
	add l
	and l
	add $4e
	or l
	or l
	call c, wc3da
	or d
	reti


	add sp, -$44
	or [hl]
	cp h
	ld a, a
	push bc
	or [hl]
	jp z, $b24e

	ld h, $b2
	call nz, wd47f
	call c, $b6d7
	or d
	add sp, $50
	cp b
	rst $10
	add hl, hl
	ld d, b
	add hl, bc
	rst $00
	ld bc, $b2bd
	cp h
	ld [c], a
	or e
	ret


	ld a, a
	sub $b3
	add $7f
	cp l
	or a
	call nz, wdfb5
	ret nz

	ld c, [hl]
	jp nc, wcf30

	or [hl]
	rst $10
	ld a, a
	call z, $27bc
	push bc
	ld a, a
	res 6, [hl]
	ret c

	ret


	ld c, [hl]
	ld a, [de]
	db $e3
	sbc a
	db $dd
	ld a, a
	jp z, $bcdf

	ldh [$bd], a
	reti


	add sp, $50
	dec b
	adc h
	inc l
	ld [c], a
	or e
	ld d, b
	dec c
	ld bc, $b300
	cp l
	or d
	ld a, a
	dec b
	adc h
	inc l
	ld [c], a
	or e
	ret


	ld a, a
	cp [hl]
	or d
	jp nc, wc0b2

	or d
	add sp, $4e
	dec b
	adc h
	add $7f
	jp nz, wcfc2

	jp c, wc4d9

	ld c, [hl]
	add c
	xor e
	inc de
	cpl
	or e
	db $d3
	ld a, a
	ld hl, sp+$3b
	ld [c], a
	or e
	inc sp
	ld a, a
	ret nz

	or l
	jp c, $e8d9

	ld d, b
	or [hl]
	rst $08
	or a
	ret c

	ld d, b
	rrca
	jr nc, jr_010_4b7d

	cp l
	reti


jr_010_4b7d:
	inc [hl]
	or d
	add l
	sbc l
	inc sp
	ld a, a
	or h
	db $d3
	ret


	db $dd
	ld a, a
	or a
	ret c

	cp e
	or a
	ld c, [hl]
	or d
	or a
	ret


	ret z

	db $dd
	ld a, a
	call nz, wd9d2
	add sp, $2a
	cp b
	rst $08
	jp c, Jump_010_4ec6

	sbc c
	sub a
	db $dd
	jp nz, wdfb6

	jp wc47f


	inc a
	add sp, $50
	adc $bc
	ld h, $c0
	ld d, b
	ld [$0159], sp
	or e
	ret nc

	dec a
	add $7f
	or l
	or l
	cp b
	ld a, a
	or c
	rst $10
	call c, $4eda
	sub $d9
	add $c5
	reti


	call nz, wc17f
	pop hl
	or e
	cp h
	sbc $26
	ld c, [hl]
	or c
	or [hl]
	cp b
	ld a, a
	jp wd2de


	jp nz, wd9bd

	add sp, $50
	cp d
	or e
	rst $10
	ld d, b
	db $10
	ld d, a
	inc bc
	or [hl]
	rst $10
	jr nc, @+$28

	ld a, a
	or l
	db $d3
	ret nz

	cp b
	ld a, a
	ret


	cp h
	or [hl]
	or [hl]
	rst $18
	jp $b14e


	or d
	jp $7fdd


	or a
	ld l, $c2
	cp e
	cp [hl]
	reti


	add sp, $4e
	ld b, c
	xor e
	sub b
	ret


	ld a, a
	call nz, wcab7
	ld a, a
	add l
	and l
	add $7f
	or [hl]
	cp b
	jp c, $e8d9

	ld d, b
	cp b
	call c, wc026
	ld d, b
	rrca
	ld h, $02
	ld hl, sp-$32
	sbc $c9
	ld a, a
	push bc
	ld h, $b2
	ld a, a
	sub c
	sbc b
	jp z, Jump_010_407f

	xor c
	sbc e
	and [hl]
	add sp, $4e
	or d
	pop bc
	inc [hl]
	ld a, a
	jp z, wcfbb

	jp c, Jump_010_7fc3

	cp h
	rst $08
	rst $18
	ret nz

	rst $10
	ld c, [hl]
	pop bc
	daa
	jp c, wcfd9

	inc sp
	ld a, a
	jp z, $bbc5

	push bc
	or d
	add sp, $50
	sub c
	and [hl]
	inc l
	ld [c], a
	or e
	ld d, b
	ld a, [bc]
	ld e, [hl]
	ld bc, $a61b
	db $e3
	ret


	ld a, a
	jp nz, $bcd9

	ld [c], a
	cp b
	inc a
	jp nz, Jump_010_4e26

	or [hl]
	rst $10
	ret nc

	or c
	or d
	ld a, a
	cp h
	ld [c], a
	or e
	ret nz

	or d
	jp z, wd07f

	or h
	push bc
	or d
	add sp, $4e
	pop bc
	or [hl]
	dec l
	cp b
	db $d3
	ret


	add $7f
	or [hl]
	rst $10
	ret nc

	jp nz, wc3b2

	cp b
	reti


	add sp, $50
	cp d
	or d
	rst $00
	ld d, b
	rlca
	cp [hl]
	nop
	set 0, h
	push bc
	jp nz, $b8ba

	ld a, a
	cp [hl]
	or d
	inc l
	jp nz, $7fc5

	cp [hl]
	or d
	or [hl]
	cp b
	add sp, $4e
	jp wc6b7


	jp z, wce7f

	or h
	jp $b67f


	ret nc

	jp nz, $4eb7

	or l
	or d
	jp z, $b5d7

	or e
	ld a, a
	call nz, wd9bd
	add sp, $50
	or d
	call c, $3bcd
	ld d, b
	ld e, b
	inc [hl]
	ld [$30cc], sp
	sbc $ca
	ld a, a
	jp nz, wc9c1

	push bc
	or [hl]
	add $7f
	cp l
	sbc $33
	or d
	reti


	add sp, $4e
	pop bc
	pop bc
	pop hl
	or e
	db $dd

jr_010_4cda:
	ld a, a
	inc l
	cp a
	cp b
	ld a, a
	cp $f6
	add [hl]
	xor b
	inc sp
	ld c, [hl]
	adc $d8
	push bc
	ld h, $d7
	ld a, a
	add e
	adc d
	db $dd
	ld a, a
	cp e
	ld h, $bd
	add sp, $50
	cp b
	pop bc
	ld a, [hld]
	cp h
	ld d, b
	inc c
	ld a, h
	ld bc, $b5b5
	or a
	push bc
	ld a, a
	jp nz, $bb3a

	inc sp
	ld a, a
	or l
	or l
	cpl
	rst $10
	db $dd
	ld c, [hl]
	call nz, wc23b
	ld [hld], a
	cp c
	reti


	cp d
	call nz, $7f26
	inc sp
	or a
	reti


	add sp, $4e
	rst $30
	add $c1
	ld a, a
	or l
	ret c

	push bc
	cp b
	jp $7fd3


	jr nc, jr_010_4cda

	inc l
	ld [c], a
	or e
	inc a
	add sp, $50
	cp d
	call nz, Call_010_50d8
	inc bc
	ld [de], a
	nop
	ret nz

	ret nz

	or [hl]
	or d
	jp z, $bd7f

	or a
	inc sp
	jp z, $b2c5

	add sp, $4e
	cp b
	cp e
	pop de
	rst $10
	ret


	ld a, a
	push bc
	or [hl]
	add $7f
	or [hl]
	cp b
	jp c, $4ec3

	pop bc
	or d
	cp e
	or d
	ld a, a
	pop de
	cp h
	push bc
	inc [hl]
	db $dd
	ld a, a
	call nz, $b4d7
	reti


	add sp, $50
	rst $08
	rst $00
	cp c
	ld d, b
	inc c
	ld l, b
	ld bc, wc2b2
	db $d3
	ld a, a
	inc e
	db $e3
	xor h
	call nz, wc3bc
	or d
	jp wc57f


	add $dd
	ld c, [hl]
	or [hl]
	sbc $26
	or h
	jp wd9b2


	or [hl]
	ld a, a
	call c, wd7b6
	push bc
	or d
	add sp, $4e
	cp h
	rst $18
	ld c, b
	inc sp
	ld a, a
	add e
	adc d
	db $dd
	ld a, a
	jp nz, wc9d9

	ld h, $7f
	call nz, $b2b8
	add sp, $50
	ret z

	sbc $d8
	or a
	ld d, b
	dec c
	dec [hl]
	ld [bc], a
	or c
	reti


	or c
	cp e
	ret


	cp d
	call nz, Call_010_7fe8
	pop bc
	ld [c], a
	or e
	ret


	or e
	ret c

	ld [c], a
	cp b
	ld c, [hl]
	cp h
	ld [c], a
	or e
	ret z

	sbc $26
	ld a, a
	dec a
	xor h
	sub e
	or [hl]
	rst $10
	ld a, a
	jp nc, wd22b

	reti


	call nz, $a34e
	xor e
	ld [$e3a5], sp
	add $7f
	call $bcde
	sbc $7f
	cp h
	jp wc0b2


	add sp, $50
	ld h, $de
	cp [hl]
	or a
	ld d, b
	ld a, [bc]
	ld a, [de]
	inc b
	call nc, wc9cf
	push bc
	or [hl]
	ret


	ld a, a
	cp e
	or [hl]
	ret nc

	pop bc
	db $dd
	ld c, [hl]
	or c
	reti


	or d
	jp wd9b2


	call nz, $097f
	xor b
	db $e3
	xor e
	ld h, $4e
	cp d
	db $db
	ld h, $df
	jp $b87f


	reti


	cp d
	call nz, $7f26
	or c
	reti


	add sp, $50
	ret nz

	rst $08
	ld a, [hli]
	ld d, b
	dec bc
	ld e, d
	ld bc, wc6f7
	pop bc
	add $7f
	or d
	cp b
	jp nz, $7fb6

	ret nz

	rst $08
	ld a, [hli]
	db $dd
	ld a, a

Jump_010_4e26:
	or e
	pop de
	add sp, $4e
	cp a
	ret


	ld a, a
	ret nz

	rst $08
	ld a, [hli]
	jp z, $b47f

Jump_010_4e33:
	or d
	sub $b3
	ld a, a
	rst $08
	sbc $c3
	sbc $33
	ld c, [hl]
	db $d3
	ret


	cp l
	ld a, [hli]
	cp b
	ld a, a
	or l
	or d
	cp h
	or d
	ld a, a
	rst $10
	cp h
	or d
	add sp, $50
	or [hl]
	or d
	ret c

	or a
	ld d, b
	rrca
	pop bc
	ld [bc], a
	jp nz, wdab6

	reti


	cp d
	call nz, wc5c9
	or d
	ld a, a
	or a
	ld [c], a
	or e
	inc l
	sbc $c5
	ld c, [hl]
	add $b8
	ret nz

	or d
	db $dd
	ld a, a
	db $d3
	jp nz, $b5e8

	db $d3
	or d
	ld a, a
	add $d3
	jp nz, Jump_010_4ec9

	or e
	sbc $44
	sbc $c5
	inc [hl]
	ret


	ld a, a
	cp h
	ld a, [hli]
	call nz, $7fdd
	jp $30c2


	or e
	add sp, $50
	add hl, de
	ret c

	add b
	db $e3
	ld d, b
	dec c
	ld hl, wcb02
	call nz, $7fdd
	cp h
	sbc $2c
	cp d
	rst $08
	cp [hl]
	reti


	ret


	ld h, $7f
	or e
	rst $08
	or d
	add sp, $4e
	ld b, b
	xor e
	sub e
	sbc l
	add c
	sbc a
	inc sp
	ld a, a
	jp nz, wdfb8

	ret nz

	add l
	dec a
	ld h, $4e
	adc $de
	call nz, wc6b3
	ld a, a
	or c
	rst $10
	call c, wd9da
	call nz, $b3b2
	add sp, $50

Jump_010_4ec6:
	add [hl]
	xor h
	add a

Jump_010_4ec9:
	ld d, b
	rrca
	ld a, [c]
	ld bc, $bcb1
	ld h, $7f
	inc l
	push de

Jump_010_4ed3:
	or e
	add $7f
	ret


	dec sp

Call_010_4ed8:
	pop bc
	ld sp, $bcd0
	jp wc44e


	or l
	cp b
	ld a, a
	jp z, wdac5

	jp wd9b2


Jump_010_4ee8:
	ld a, a
	ld a, [hld]
	or c
	or d
	inc sp
	db $d3
	ld c, [hl]
	or c
	or d
	jp $7fdd


	cp c
	ret c

	or c
	add hl, hl
	reti


	cp d
	call nz, $7f26
	inc sp
	or a
	reti


	add sp, $50
	ld b, b
	xor e
	sub b
	ld d, b
	ld c, $f6
	ld bc, $a842
	inc e
	add a
	adc d
	db $e3
	ret


	ld a, a
	ret nz

	rst $08
	cp h
	or d
	ld h, $4e
	ret


	ret c

	or e
	jp nz, wc3df

	or d
	reti


	add sp, $40
	xor e
	sub b
	ret


	adc h
	ld b, c
	db $e3
	inc de
	jp z, $bc4e

	sbc $b6
	sbc $be
	sbc $d6
	ret c

	db $d3
	ld a, a
	jp z, $b2d4

	add sp, $50
	adc c
	dec de
	and l
	ld d, b
	inc hl
	adc d
	ld [bc], a
	or l
	push bc
	or [hl]
	ret


	ld a, a
	db $d3
	sub $b3
	ld h, $7f
	cp d
	call c, $b6b2
	or l
	add $4e
	ret nc

	or h
	reti


	add sp, -$2a
	call c, wc3b2
	or a
	jp z, $bf7f

	ret


	db $d3
	sub $b3
	db $dd
	ld c, [hl]
	ret nc

	ret nz

	jr nc, @-$45

	inc sp
	ld a, a
	add $29
	jr nc, @-$42

	jp wcfbc


	or e
	add sp, $50
	or a
	ret


	cp d
	ld d, b
	ld a, [bc]
	daa
	ld bc, $9886
	adc c
	ret


	ld a, a
	add l
	adc d
	or [hl]
	rst $10
	ld a, a
	inc [hl]
	cp b
	adc $b3
	cp h
	db $dd
	ld c, [hl]
	rst $08
	or a
	pop bc
	rst $10
	cp l
	add sp, -$44
	or [hl]
	cp h
	ld a, a
	pop bc
	pop hl
	or e
	ld a, [hli]
	cp b
	inc sp
	jp z, $ba4e

	ret


	adc $b3
	cp h
	db $dd
	ld a, a
	or [hl]
	sbc $48
	or e
	call nc, wc6b8
	ld a, a
	cp l
	reti


	add sp, $50
	or c
	set 3, c
	ld d, b
	ld [$00c4], sp
	or d
	jp nz, $7fd3

	dec l
	jp nz, wc6b3

	ld a, a
	push bc
	call nc, $bbcf
	jp c, $b2c3

	reti


	add sp, $4e
	cp d
	ret


	ld a, a
	dec l
	jp nz, $26b3

	ld a, a
	jp z, $bc29

	cp b
	push bc
	reti


	call nz, wcc4e
	cp h
	daa
	push bc
	ld a, a
	pop bc
	or [hl]
	rst $10
	db $dd
	ld a, a
	jp nz, $b2b6

	jp z, wd22c

	reti


	add sp, $50
	cp e
	or d
	ret nc

	sbc $50
	ld a, [bc]
	ld b, h
	ld bc, $a0a3
	db $dd
	ld a, a
	ret nz

	dec a
	reti


	call nz, $b3b2
	ld a, a
	inc sp
	sbc $be
	jp nz, Jump_010_7fc9

	ld c, [hl]
	or d
	or a
	db $d3
	ret


jr_010_500b:
	ld a, a
	add hl, de
	add a
	ret


	ld a, a
	cp h
	cp a
	sbc $e8
	ld c, [hl]
	cp e
	or d
	ret nc

	sbc $2c
	pop hl
	jp nz, $7f26

	call nz, $b2b8
	jr nc, jr_010_500b

	ld d, b
	and b
	dec b
	sub e
	xor e
	ld d, b
	ld c, $b8
	dec bc
	ld h, $de
	ld a, [hld]

jr_010_502f:
	sbc $c9
	sub $b3
	push bc
	ld a, a
	or [hl]
	ret nz

	or d
	ld a, a
	add l
	and l

Call_010_503b:
	inc sp
	ld c, [hl]
	or l
	or l
	call c, wc3da
	or d
	reti


	add sp, -$09
	ret z

	sbc $c6
	ld a, a
	rst $30
	or [hl]
	or d
	ld c, [hl]
	jr nc, jr_010_502f

	ld b, l
	cp h
	jp $b57f


	or l
	or a
	cp b
	push bc

jr_010_5059:
	reti


	add sp, $50
	set 1, h
	or a
	ld d, b
	dec c
	cp l
	ld bc, $2bb6
	sbc $c9
	ld a, a
	or [hl]
	cp d
	or e
	pop bc
	or [hl]
	cp b
	inc sp
	ld c, [hl]
	ret nc

	jp nz, wdfb6

	ret nz

	add sp, -$48
	pop bc
	or [hl]
	rst $10
	ld a, a
	adc $c9
	or l
	db $dd
	jp z, $e8b8

	ld c, [hl]
	ret nz

	or d
	or l
	sbc $ca
	ld a, a
	rst $30
	ld hl, sp-$0a
	or $34
	ld a, a
	db $d3
	or c
	reti


	add sp, $50
	inc sp
	sbc $29
	or a
	ld d, b
	dec bc
	inc l
	ld bc, wd6c2
	or d
	ld a, a
	inc sp
	sbc $b7
	ld h, $7f
	jr nc, jr_010_5059

	cp d
	or e
	inc a
	jp nz, Jump_010_4e33

	or l
	or l
	or a
	push bc
	ld a, a
	jp z, $33c2

	sbc $bc
	ld [c], a
	ld a, a
	push bc

Call_010_50ba:
	inc [hl]
	add $7f
	ld c, [hl]
	cp h
	ld a, [hld]
	cp h
	ld a, [hld]
	ld a, a
	or c
	rst $10
	call c, wd9da

Jump_010_50c8:
	add sp, $50
	inc l
	cp h
	ldh [$b8], a
	ld d, b
	ld a, [bc]
	ld e, b
	ld [bc], a
	call z, $bdb8
	or e
	ret


	ld a, a

Call_010_50d8:
	adc c
	add c
	and [hl]
	ld h, $7f
	jp c, $b9de

	jp nz, wc3bc

jr_010_50e3:
	ld c, [hl]
	or a
	ld [c], a
	or e
	ret c

Jump_010_50e8:
	ld [c], a
	cp b
	push bc
	ld a, a
	inc l
	ret c

	ld [c], a
	cp b
	cp [hl]
	sbc $c4
	ld c, [hl]
	cp d
	or e
	inc sp
	sbc $b1
	jp nz, $7fdd

	adc $b3
	cp h
	ldh [$bd], a
	reti


	add sp, $50
	inc [hl]
	cp b
	dec b
	adc h
	ld d, b
	ld b, $0a
	nop
	or e
	cp l
	or d
	ld a, a
	add hl, de
	and [hl]
	db $e3
	xor e
	inc l
	ld [c], a
	or e
	ret


	ld a, a
	or [hl]
	rst $10
	jr nc, jr_010_50e3

	ld c, [hl]
	db $d3
	or e
	inc [hl]
	cp b
	ret


	ld a, a
	dec b
	adc h
	ld h, $7f
	jp nz, wdfcf

	jp wd9b2


	add sp, $4e
	pop bc
	or [hl]
	cp b
	add $b8
	reti


	call nz, $b87f
	cp e
	or d
	add sp, $50
	inc a
	ret nz

	dec hl
	reti


	ld d, b
	dec b
	jr jr_010_5146

	ret nc

jr_010_5146:
	ret


	cp d
	push bc
	cp h
	ld h, $7f
	or [hl]
	reti


	cp b
	ld a, a
	or a
	ld [c], a
	or e
	ld a, $b3
	push bc
	ld c, [hl]
	cp [hl]
	or d
	or [hl]
	cp b
	add sp, -$4b
	cp d
	rst $18
	jp $b17f


	ld a, [hld]
	jp c, wc4d9

	ld c, [hl]
	jp $7f26


	jp nz, wd7b9

	jp c, $b8c5

	push bc
	reti


	add sp, $50
	or c
	cp h
	or [hl]
	ld d, b
	dec bc
	add h
	inc bc
	ret nc

	dec l
	or d
	db $db
	ret


	ld a, a
	ret nz

	or d
	db $d3
	or e
	add $7f
	or l
	or l
	call c, wc0da
	ld c, [hl]
	set 1, h
	jp z, $3c7f

	or c
	jp nz, wc3b8

	ld a, a
	inc l
	ld [c], a
	or e
	inc a
	add sp, $4e
	jp c, $b6b2

	ld a, [$34f6]
	ld a, a
	inc sp
	db $d3
	ld a, a
	or [hl]
	jp nz, $b334

	inc sp
	or a
	reti


	add sp, $50
	db $d3
	jr z, @-$27

	ld d, b
	ld [bc], a
	ld [wc100], sp
	pop bc
	pop hl
	or e
	ret


	ld a, a
	or c
	cp e
	or d
	call nz, wdbba

jr_010_51c3:
	db $dd
	ld a, a
	or d
	inc [hl]
	or e
	add sp, $4e
	adc $d8
	cp l
	cp l
	sbc $30
	or c
	call nz, $7fca
	inc l
	jp nc, $26de

	ld c, [hl]
	db $d3
	ret c

	or c
	ld h, $df
	jp wd9b2


	ret


	inc sp
	ld a, a
	cp l
	jr z, jr_010_51c3

	or [hl]
	reti


	add sp, $50
	or c
	ld a, [hld]
	jp c, $bcb3

jr_010_51f0:
	ld d, b
	ld c, $74
	inc bc
	ret nz

	or d
	or c
	ret nz

	ret c

	cp h
	jp wd9b8


	call nz, $4eb7
	ld hl, sp-$32
	sbc $c9
	ld a, a
	cp h
	rst $18
	ld c, b
	inc sp
	ld a, a
	inc l
	inc a
	sbc $c9
	ld c, [hl]
	or [hl]
	rst $10
	jr nc, jr_010_51f0

	ld a, a
	ld b, c
	adc e
	ld b, c
	adc e
	call nz, wc07f
	ret nz

	cp b
	add sp, $50
	or [hl]
	reti


	ld h, $d3
	ld d, b
	ld [$0096], sp
	inc l
	inc a
	sbc $c9
	ld a, a
	cp l
	db $dd
	ld a, a
	jp nz, wd9b8

	ret nz

	jp nc, Jump_010_4ec9

	cp h
	ld [c], a
	cp b
	inc a
	jp nz, Jump_010_7fc9

	add a
	add [hl]
	db $dd
	ld a, a
	or d
	rst $18
	ld c, b
	sbc $4e
	or d
	jp nz, $7fd3

	db $d3
	rst $18
	jp $b17f


	reti


	or d
	jp wd9b2


	add sp, $50
	cp d
	sbc $c1
	pop hl
	or e
	ld d, b
	ld a, [bc]
	inc l
	ld bc, wd7b8
	call nc, $33d0
	db $d3
	ld a, a
	jp nc, $7f26

	and a
	db $e3
	rrca
	db $e3
	ret


	ld c, [hl]
	call nc, wdcb8
	ret c

	db $dd
	cp h
	jp $b67f


	jp nz, $b334

	inc sp
	or a
	reti


	add sp, $4e
	jp nc, wd7b6

	ld a, a
	ld a, [de]
	db $e3
	sbc a
	db $dd
	ld a, a
	jp z, $bcdf

	ldh [$bd], a
	reti


	add sp, $50
	inc de
	and l
	add hl, bc
	xor e
	ld d, b
	ld d, $34
	ld [$b5b5], sp
	or a
	push bc
	ld a, a
	ret nz

	or d
	or [hl]
	cp b
	inc sp
	ld a, a
	cp a
	rst $10
	db $dd
	ld a, a
	call nz, $e83c
	ld c, [hl]
	pop bc
	or a
	pop hl
	or e
	db $dd
	ld a, a
	call nc, $f7b8
	db $fc
	inc l
	or [hl]
	sbc $33
	ld c, [hl]
	rst $30
	cp h
	pop hl
	or e
	ld a, a
	cp h
	jp wcfbc


	or e
	add sp, $50
	call z, $2ac0
	inc [hl]
	ret c

	ld d, b
	ld c, $88
	ld bc, wc2c4
	ld l, $de
	call $b2de
	inc sp
	ld a, a
	ret nc

	jp nz, wdfb6

	ret nz

	ld c, [hl]
	call z, wc2c0
	ret


	ld a, a
	or c
	ret nz

	rst $08
	db $dd
	ld a, a
	db $d3
	jp nz, $437f

	adc b
	and c
	xor e
	add sp, $4e
	inc l
	cp a
	cp b
	ld a, a
	rst $30
	or $f6
	add [hl]
	xor b
	inc sp
	ld a, a
	jp z, wd9bc

	add sp, $50
	or l
	ret nz

	rst $08
	ld d, b
	ld b, $7c
	nop
	adc h
	dec a
	adc h
	dec a
	cp h
	ret nz

	ld a, a
	cp b
	db $db
	or d
	set 1, h
	jp z, $b37f

	cp l
	cp b
	ld c, [hl]
	cp h
	jp nc, wc3df

	or d
	reti


	add sp, -$3b
	or d
	cpl
	or e
	ret


	ld a, a
	or d
	pop bc
	inc a
	ld h, $4e
	cp l
	cp c
	jp $b37f


	dec l
	rst $08
	or a
	inc l
	ld [c], a
	or e
	add $7f
	ret nc

	or h
	reti


	add sp, $50
	set 0, h
	ld h, $c0
	ld d, b
	ld c, $96
	ld bc, wdec6
	add hl, hl
	sbc $c9
	sub $b3
	push bc
	ld a, a
	cp d
	call nz, wdd3a
	ld a, a
	jp z, $bdc5

	ld h, $4e
	rst $08
	jr nc, jr_010_53dc

	push bc
	add $dd
	or d
	rst $18
	jp wd9b2


	or [hl]
	ld a, a
	call z, $b2d2
	inc sp
	ld c, [hl]
	add hl, hl
	sbc $2b
	or d
	ld a, a
	cp c
	sbc $b7
	pop hl
	or e
	cp e
	jp c, $b2c3

	reti


	add sp, $50
	or [hl]
	or h
	sbc $50
	inc d
	ld e, b
	ld [bc], a
	inc sp
	sbc $be
	jp nz, Jump_010_7fc9

	call nz, Call_010_43d8
	adc b
	and c
	xor e
	ret


	ld a, a
	set 0, h
	jp nz, Jump_010_4ee8

	add h
	and a
	xor e
	dec bc
	or d
	db $db
	ret


	ld a, a
	db $d3
	or h
	reti


	sub $b3
	push bc
	sbc c
	sub a
	ld h, $4e
	ret nc

	reti


	db $d3
	ret


	db $dd
	ld a, a
	or c
	rst $18
	call nz, $bdb3
	reti


	add sp, $50
	jp c, wc4b2

	or e
	ld d, b
	ld de, $022a
	inc sp
	sbc $be
	jp nz, Jump_010_7fc9

	call nz, Call_010_43d8
	adc b
	and c
	xor e
	ret


	ld a, a
	set 0, h
	jp nz, Jump_010_4ee8

	push bc
	ld h, $b2
	ld a, a
	cp h
	rst $18
	ld c, b
	ld h, $7f
	ret nz

jr_010_53dc:
	push bc
	dec sp
	or d
	jp wc44e


	sbc $33
	or d
	cp b
	ld a, a
	cp l
	ld h, $c0
	jp z, $bd7f

	ld a, [hld]
	rst $10
	cp h
	or d
	add sp, $50
	inc sp
	sbc $29
	or a
	ld d, b
	db $10
	ld c, $02
	inc sp
	sbc $be
	jp nz, Jump_010_7fc9

	call nz, Call_010_43d8
	adc b
	and c
	xor e
	ret


	ld a, a
	set 0, h
	jp nz, Jump_010_4ee8

	call nz, wc43c
	or a
	add $7f
	add hl, de
	sub b
	add hl, de
	sub b
	call nz, wc57f
	add $b6
	ret


	ld c, [hl]
	jp z, $b92c

	reti


	sub $b3
	push bc
	ld a, a
	or l
	call nz, $bd26
	reti


	add sp, $50
	call $bcde
	sbc $50
	inc bc
	jr z, jr_010_5436

jr_010_5436:
	or [hl]
	rst $10
	jr nc, @-$35

	ld a, a
	cp e
	or d
	ld a, $b3
	ret


	ld a, a
	jp nz, wd8b8

	db $dd
	ld c, [hl]
	inc l
	inc a
	sbc $33
	ld a, a
	cp b
	ret nc

	or [hl]
	or h
	jp wce7f


	or [hl]
	ret


	ld c, [hl]
	cp [hl]
	or d
	jp nc, wc0b2

	or d
	add $7f
	call $bcde
	sbc $bd
	reti


	add sp, $50
	ld a, [hld]
	cp c
	ret z

	cp d
	ld d, b
	inc b
	ld a, [hli]
	nop
	set 3, c
	rst $08
	jp z, wc87f

	jp $b63a


	ret c

	or d
	reti


	add sp, $4e
	sub $d9
	add $c5
	reti


	call nz, wd27f
	ld h, $7f
	or [hl]
	ld h, $d4
	or a
	ld c, [hl]
	push bc
	call c, wd83a
	db $dd
	ld a, a
	or c
	reti


	or a
	rst $08
	call c, $e8d9
	ld d, b
	cp e
	call c, wc626
	ld d, b
	inc b
	ld b, c
	nop
	or e
	ret nc

	ret


	ld a, a
	pop bc
	or [hl]
	cp b
	inc sp
	ld a, a
	ret nc

	jp nz, wd9b6

	add sp, $4e
	or l
	or l
	or a
	push bc
	ld a, a
	sbc c
	adc d
	sbc [hl]
	jp z, wd37f

	daa
	call nz, wc3df
	db $d3
	ld c, [hl]
	or c
	call nz, wd7b6
	ld a, a
	rst $08
	ret nz

	ld a, a
	jp z, wc3b4

	cp b
	reti


	add sp, $50
	or a
	jp nz, Jump_010_50c8

	ld b, $63
	nop
	cp d
	inc [hl]
	db $d3
	jr nc, jr_010_5501

	ld a, a
	db $fc
	adc $de
	ret


	ld a, a
	cp h
	rst $18
	ld c, b
	ld h, $4e
	or e
	jp nz, $bcb8

	or d
	add sp, -$42
	or d
	pop bc
	ld [c], a
	or e
	cp l
	reti


	call nz, $bb4e
	rst $10
	add $7f
	cp h
	rst $18
	ld c, b
	ld h, $7f
	call z, wd9b4

jr_010_5501:
	add sp, $50
	or a
	jp nz, Jump_010_50c8

	dec bc
	rst $00
	nop
	or l
	or e
	ld a, [hli]
	sbc $c6
	ld a, a
	or [hl]
	ld h, $d4
	cp b
	ld a, a
	ret nz

	or d
	db $d3
	or e
	call nz, $ff4e
	adc $de
	ret


	ld a, a
	push bc
	ld h, $b2
	ld a, a
	cp h
	rst $18
	ld c, b
	db $dd
	ld a, a
	db $d3
	jp nz, Jump_010_4ee8

	rst $30
	or $f6
	or $c8
	sbc $ca
	ld a, a
	or d
	or a
	reti


	call nz, $b27f
	call c, wd9da
	add sp, $50
	ret z

	dec l
	ret nc

	ld d, b
	inc b
	inc a
	nop
	adc $df
	ld b, a
	ret nz

	ret


	ld a, a
	ret c

	ld [c], a
	or e
	ld h, $dc
	add $4e
	pop bc
	or d
	cp e
	or d
	ld a, a
	inc sp
	sbc $b7
	inc a
	cp b
	db $db
	db $dd
	ld a, a
	db $d3
	jp nz, Jump_010_4ee8

	ld b, c
	xor e
	sub b
	ret


	call nz, wc6b7
	ld a, a
	adc $b3
	inc sp
	sbc $bd
	reti


	add sp, $50
	ret z

	dec l
	ret nc

	ld d, b
	ld [$012c], sp
	inc sp
	sbc $29
	or a
	jp z, $f77f

	or $cf
	sbc $1c
	and [hl]
	sub e
	add $4e
	ret nz

jr_010_558c:
	rst $18
	cp l
	reti


	cp d
	call nz, $b1d3
	ret c

	ld a, a
	call wc68f
	cp e
	call c, wc4d9
	ld c, [hl]
	add c
	xor e
	inc de
	cpl
	or e
	inc sp
	db $d3
	ld a, a
	or a
	ld l, $c2
	cp l
	reti


	add sp, $50
	inc de
	and l
	add hl, bc
	xor e
	ld d, b
	ld [de], a
	ld hl, $ba00
	inc [hl]
	db $d3
	inc sp
	db $d3
	ld a, a
	cp h
	sbc $c1
	ld [c], a
	or e
	jp z, $f84e

	and b
	db $e3
	sub e
	and [hl]
	ld a, a
	or d
	inc l
	ld [c], a
	or e
	add sp, $30
	rst $18
	ld b, l
	db $dd
	ld c, [hl]
	cp b
	ret c

	or [hl]
	or h
	cp h
	jp $b57f


jr_010_55d9:
	or l
	or a
	cp b
	push bc
	reti


	add sp, $50
	inc de
	and l
	add hl, bc
	xor e
	ld d, b
	jr z, jr_010_558c

	nop
	or e
	ret nc

	call nc, wd07f
	dec l
	or e
	ret nc

	push bc
	inc [hl]
	add $7f
	cp l
	pop de
	call nz, $b3b2
	add sp, $4e
	jp z, wddc8

	db $d3
	ret nz

	push bc
	or d
	ld h, $7f
	ret nz

	rst $08
	add $7f
	cp a
	rst $10
	db $dd
	ld c, [hl]
	call nz, $7f3c
	cp l
	ld h, $c0
	ld h, $7f
	db $d3
	cp b
	add hl, hl
	or a
	cp e
	jp c, $e8d9

	ld d, b
	cp d
	or e
	rst $10
	ld d, b
	dec b
	ld [hl], e
	nop
	cp d
	jr nc, jr_010_55d9

	ld a, a
	cp [hl]
	or d
	inc a
	jp nz, Jump_010_7fc9

	or [hl]
	cp [hl]
	or a
	or [hl]
	rst $10
	ld c, [hl]
	cp e
	or d
	cp [hl]
	or d
	cp h
	ret nz

	ld b, e
	adc b
	and c
	xor e
	add sp, $4e
	or [hl]
	ret nz

	or d
	ld a, a
	add l
	and l
	inc sp
	ld a, a
	ret nc

	db $dd
	ld a, a
	rst $08
	db $d3
	rst $18
	jp wd9b2


	add sp, $50
	cp d
	or e
	rst $10
	ld d, b
	dec c
	sub l
	ld bc, $b2bd
	pop bc
	pop hl
	or e
	db $dd
	ld a, a
	inc l
	push de
	or e
	add $7f
	or l
	sub $27
	ld c, [hl]
	cp l
	reti


	inc [hl]
	or d
	ld a, a
	add l
	sbc l
	inc sp
	ld a, a
	or h
	db $d3
	ret


	db $dd
	ld a, a

jr_010_5678:
	call nz, $b4d7
	ld c, [hl]
	ret nz

	or d
	or h
	or a
	db $dd
	ld a, a
	cp l
	or d
	call nz, wc3df
	cp h
	rst $08
	or e
	add sp, $50
	inc de
	and l
	add hl, bc
	xor e
	ld d, b
	inc b
	ld d, b
	nop
	ld l, $de
	rst $08
	or d
	ret


	sub $b3
	add $7f
	add a
	and [hl]
	add a
	and [hl]
	rst $08
	or [hl]
	jp c, $4ec0

	cp h
	rst $18
	ld c, b
	inc sp
	ld a, a
	or [hl]
	rst $10
	jr nc, jr_010_5678

	ld a, a
	add hl, de
	and l
	xor e
	adc h
	db $dd
	call nz, $e8d9
	ld c, [hl]
	cp b
	pop bc
	or [hl]
	rst $10
	ld a, a
	adc h
	sbc [hl]
	db $dd
	ld a, a
	jp z, $bab8

	call nz, $7f26
	or c
	reti


	add sp, $50
	inc de
	and l
	add hl, bc
	xor e
	ld d, b
	inc c
	ld a, [$b300]
	or [hl]
	jp nz, Jump_010_7fc6

	cp e
	call c, $b3db
	call nz, wd9bd
	call nz, $b64e
	rst $10
	jr nc, jr_010_5712

	pop hl
	or e
	add $7f
	jp z, wd9b4

	ld a, a
	sub e
	ld [$4ec6], sp
	cp e
	cp e
	jp c, Jump_010_7fc3

	or a
	ld l, $c2
	cp l
	reti


	cp d
	call nz, $7fd3
	or c
	reti


	add sp, $50
	ret z

	dec l
	ret nc

	ld d, b
	ld b, $78
	nop
	inc l
	jp nc, wc6de

	ld a, a
	or c
	push bc

jr_010_5712:
	db $dd
	ld a, a
	adc $df
	jp $bd7f


	pop de
	add sp, $4e
	inc l
	inc a
	sbc $c6
	ld a, a
	or a
	cp c
	sbc $26
	ld a, a
	cp [hl]
	rst $08
	reti


	call nz, wcf4e
	reti


	cp b
	push bc
	rst $18
	jp wd07f


	db $dd
	ld a, a
	rst $08
	db $d3
	reti


	add sp, $50

jr_010_573a:
	ret z

	dec l
	ret nc

	ld d, b
	ld a, [bc]
	daa
	ld bc, $3abd
	cp h
	rst $18
	cp d
	cp b
	ld a, a
	jp z, wd8bc

	ld a, a
	rst $08
	call c, Call_010_4ed8
	cp [hl]
	push bc
	or [hl]
	ret


	ld a, a
	sbc c
	ret c

	call nz, $bd7f
	reti


	inc [hl]
	or d
	ld a, a
	sub c
	and b
	ret


	ld c, [hl]
	cp d
	or e
	add hl, hl
	or a
	ld h, $7f
	call nz, $b2b8
	add sp, $50
	or e
	dec l
	rst $08
	or a
	ld d, b
	inc b
	ld c, e
	nop
	or l
	or l
	pop de
	or [hl]
	cp h
	ld a, a
	or e
	ret nc

	add $7f
	cp l
	sbc $33
	or d
	ret nz

	ld c, [hl]
	cp d
	jr nc, jr_010_573a

	ld a, a
	ld b, e
	adc b
	and c
	xor e
	add sp, -$09
	or $48
	sbc $c9
	ld a, a
	or c
	cp h
	db $dd
	ld c, [hl]
	cp b
	ret z

	rst $10
	cp [hl]
	jp $b57f


	sub $28
	add sp, $50
	or e
	dec l
	rst $08
	or a
	ld d, b
	ld a, [bc]
	ld e, [hl]
	ld bc, $e2bc
	cp b
	cp h
	pop hl
	ld h, $7f
	jp $bcb1


	ret


	ld a, a
	sub $b3
	add $4e
	jp z, wc0df

	jp nz, $bc7f

	jp $e8d9


	cp h
	ld h, $d0
	jp nz, wc4b8

	ld c, [hl]
	inc [hl]
	or e
	inc l
	add $7f
	or [hl]
	ret nc

	jp nz, wc3b2

	ld a, a
	cp b
	reti


	add sp, $50
	call z, $beb3
	sbc $50
	dec b
	scf
	nop
	rst $08
	reti


	cp b
	jp $b57f


	or l
	or a
	or d
	ld a, a
	set 0, h
	ret nc

	inc sp
	ld c, [hl]
	cp e
	cp a
	or d
	cp d
	ret nc

	ld a, a
	cp d
	cp d
	pop bc
	sub $b2
	ld a, a
	or e
	ret nz

	db $dd
	ld c, [hl]
	or e
	ret nz

	or d
	ld a, a
	or c
	or d
	jp $7fdd


	ret z

	pop de
	rst $10
	cp [hl]
	reti


	add sp, $50
	call z, $beb3
	sbc $50
	ld a, [bc]
	ld a, b
	nop
	add [hl]
	and b
	ld a, a
	cp d
	rst $08
	or [hl]
	cp b
	ld a, a
	cp h
	push bc
	call nc, wc5b6
	ld c, [hl]
	ret nz

	or d
	db $d3
	or e
	jp z, $b37f

	rst $18
	call nz, $bdd8
	reti


	adc $34
	add sp, $4e
	cp c
	ld h, $dc
	jp z, $ba7f

	or e
	or a
	pop hl
	or e
	set 3, [hl]
	jr nc, @-$16

	ld d, b
	cp h
	sbc $b6
	ld d, b
	inc bc
	ld b, c
	nop
	ld sp, hl
	cp h
	pop hl
	reti


	or d
	ret


	ld a, a
	ld b, e
	adc b
	and c
	xor e
	add $4e
	cp h
	sbc $b6
	cp l

jr_010_585e:
	reti


	ld a, a
	or [hl]
	ret


	or e
	cp [hl]
	or d
	db $dd
	ld a, a
	db $d3
	jp nz, wd24e

	dec l
	rst $10
	cp h
	or d
	ld a, a
	ld b, e
	adc b
	and c
	xor e
	jr nc, jr_010_585e

	ld d, b
	adc $c9
	or l
	ld d, b
	add hl, bc
	ld a, [wc000]
	or d
	push bc
	or d
	add $7f
	adc $c9
	or l
	inc a
	cp b
	db $db
	ld h, $7f
	or c
	ret c

	ld c, [hl]
	call z, $b8b6
	ld a, a
	or d
	or a
	db $dd
	ld a, a
	cp l
	or d
	cp d
	sbc $30
	or c
	call nz, $f74e
	db $fd
	or $f6
	inc [hl]
	ld a, a
	ret


	ld a, a
	set 3, l
	ld a, a
	jp z, $e8b8

	ld d, b
	or [hl]
	ret nc

	push bc
	ret c

	ld d, b
	ld [$00f5], sp
	or l
	cp d
	rst $18
	ret nz

jr_010_58ba:
	ret c

	ld a, a
	or l

jr_010_58bd:
	inc [hl]
	db $db
	or d
	ret nz

	ret c

	cp l
	reti


	call nz, $2e4e
	sbc $bc
	sbc $c9
	ld a, a
	cp c
	ld h, $7f
	jp z, wc9d8

	ld a, a
	sub $b3
	add $4e
	cp e
	or [hl]
	jr nc, jr_010_58ba

	jp $b17f


	or d
	jp $7fdd


	jp nz, wc7d7

	cp b
	add sp, $50
	or c
	call c, $b7ca
	ld d, b
	ld a, [bc]
	ld [hli], a
	ld bc, wd7b6
	jr nc, jr_010_58bd

	ld a, a
	cp e
	or d
	ld a, $b3
	ret


	ld a, a
	jp nz, wd8b8

	ld h, $4e
	ret nc

	dec l
	ret


	ld a, a
	inc a
	sbc $bc
	call nz, wc67f
	jp wd9b2


	add sp, $4e
	ret nc

	dec l
	add $7f
	call nz, wd9b9
	call nz, wd07f
	or h
	push bc
	cp b
	push bc
	reti


	add sp, $50
	or [hl]
	or d
	ret c

	or a
	ld d, b
	ld [$00c3], sp
	ld l, $de
	cp h
	sbc $26
	ld a, a
	or a
	sbc $c6
	cp b
	add $7f
	push bc
	rst $18
	jp wd8b5


	ld c, [hl]
	cp d
	inc [hl]
	db $d3
	adc $34
	ret


	ld a, a
	or l
	or l
	or a
	cp e

jr_010_5945:
	cp h
	or [hl]
	push bc
	or d
	ret


	add $4e
	or l
	call nz, $7fc5
	rst $30
	or $f6
	add $de
	db $dd
	ld a, a
	push bc
	add hl, hl
	call nz, $be3a
	reti


	add sp, $50
	cp d
	or e
	db $d3
	ret c

	ld d, b
	ld [$004b], sp
	ret c

	ld [c], a
	or e
	adc $b3
	ret


	ld a, a
	jp nc, $7f26

	cp a
	sbc $2b
	or d
	cp h
	push bc
	or d
	add sp, $4e
	cp b
	pop bc
	or [hl]
	rst $10
	ld a, a
	pop bc
	ld [c], a
	or e
	or l
	sbc $44
	db $dd
	ld a, a
	jr nc, jr_010_5945

	jp $b84e


	rst $10
	call nc, wddd0
	ld a, a
	call nz, wcf3b
	call c, $e8d9
	ld d, b
	call Call_010_503b
	inc d
	ld b, l
	nop
	cp b
	cp e
	pop bc
	push bc
	inc [hl]
	add $7f
	or l
	or l
	cp b
	ld a, a
	cp [hl]
	or d
	cp a
	cp b
	cp l
	reti


	add sp, $4e
	cp h
	ret nz

	db $dd
	ld a, a
	sub b
	xor b
	sub b
	xor b
	ld a, a
	cp e
	cp [hl]
	jp wcf7f


	call c, wc9d8
	ld c, [hl]
	or a
	cp c
	sbc $dd
	ld a, a
	or [hl]
	sbc $2c
	call nz, $e8d9
	ld d, b
	or a
	ret


	cp d
	ld d, b
	inc bc
	ld [hl], $00
	pop de
	cp h
	ret


	ld a, a
	cp [hl]
	push bc
	or [hl]
	add $7f
	jp z, wc3b4

	or d
	reti


	ret


	jp z, wc44e

	or e
	pop bc
	pop hl
	or e
	or [hl]
	cp a
	or e
	ld a, a
	call nz, $b3b2
	ld a, a
	add [hl]
	sbc b
	adc c
	add sp, $4e
	cp a
	jr nc, @-$3c

	call nz, $867f
	sbc b
	adc c
	db $d3
	ld a, a
	or l
	or l
	or a
	cp b
	push bc
	reti


	add sp, $50
	or l
	ret nz

	rst $08
	ld d, b
	ld a, [bc]
	ret z

	nop
	ld hl, sp-$32
	sbc $c9
	ld a, a
	or c
	cp h
	jp z, wca7f

	rst $18
	ret nz

	jp nz, wc3bc

	or l
	ret c

	ld a, a
	ld c, [hl]
	pop bc
	inc l
	ld [c], a
	or e
	inc sp
	ld a, a
	cp b
	rst $10
	cp [hl]
	reti


	ret


	add $7f
	push bc
	ld l, $b6
	ld c, [hl]
	cp l
	or d
	pop bc
	pop hl
	or e
	ld a, a
	cp [hl]
	or d
	or [hl]
	jp nz, $7f26

	cp l
	or a
	add sp, $50
	or l
	ret nz

	rst $08
	ld d, b
	dec c
	inc e
	ld [bc], a
	or l
	sub $27
	ld h, $7f
	call nz, $b2b8
	inc sp
	ld a, a
	add a
	xor b
	db $e3
	and [hl]
	call nc, $194e
	adc a
	sbc e
	and l
	add c
	ld h, $7f
	inc sp
	or a
	reti


	add sp, -$7c
	ret c

	xor e
	ld b, c
	xor h
	add a
	ret


	ld c, [hl]
	cp [hl]
	sbc $bc
	pop hl
	db $d3
	ld a, a
	or [hl]
	push bc
	call c, $b2c5
	adc $34
	ld a, a
	jp z, $b2d4

	add sp, $50

jr_010_5a83:
	cp c
	pop de
	cp h
	ld d, b
	inc bc
	jr nz, jr_010_5a8a

jr_010_5a8a:
	db $d3
	ret c

	call nc, $b87f
	cp e
	pop bc
	add $7f
	or l
	or l
	cp b
	ld a, a
	cp [hl]
	or d
	cp a
	cp b
	add sp, $4e
	or c
	ret nz

	rst $08
	ret


	ld a, a
	cp e
	or a
	add $7f
	ei
	adc l
	xor e
	sub b
	jr z, jr_010_5a83

	or d
	ret


	ld c, [hl]

jr_010_5aaf:
	pop bc
	or d
	cp e
	cp b
	ld a, a
	cp l
	reti


	inc [hl]
	or d
	ld a, a
	inc [hl]
	cp b
	ld a, [hld]
	ret c

	db $dd
	db $d3
	jp nz, Jump_010_50e8

	cp e
	push bc
	daa
	ld d, b
	ld b, $64
	nop
	or l
	call nz, wc9c5
	ld a, a
	or [hl]
	rst $10
	jr nc, jr_010_5aaf

	ld a, a
	jp nz, wd9b8

	ret nz

	jp nc, Jump_010_4ec9

	or d
	pop bc
	inc l
	jp wc5b7


	ld a, a
	inc l
	ld [c], a
	or e
	ret nz

jr_010_5ae5:
	or d
	add sp, $4e
	inc l
	inc a
	sbc $33
	jp z, wce7f

	call nz, $34de
	ld a, a
	or e
	ld a, [hli]
	cp c
	push bc
	or d
	add sp, $50
	inc [hl]
	cp b
	ld a, [hld]
	pop bc
	ld d, b
	ld a, [bc]
	daa
	ld bc, $e1bc
	or e
	jr nc, jr_010_5ae5

	inc sp
	ld a, a
	or c
	rst $10
	call c, wd9da
	cp d
	call nz, $b1d3
	reti


	add sp, $4e
	db $d3
	or e
	adc h
	ld b, c
	db $e3
	inc de
	inc sp
	ld a, a
	call nz, wcf3b
	call c, Call_010_4ed8
	or l
	cp h
	ret c

	ret


	ld a, a
	inc [hl]
	cp b
	ld a, [hld]
	ret c

	inc sp
	ld a, a
	cp e
	cp h
	rst $08
	cp b
	reti


	add sp, $50
	ret nc

	jp nz, $342a

	ret c

	ld d, b
	ld [de], a
	ld d, h
	inc bc
	jp nc, wc0df

	add $7f
	ret nc

	jp nz, wd7b6

	push bc
	or d
	ld a, a
	pop bc
	sbc $bc
	pop hl
	add sp, $4e
	ld sp, hl
	jp nz, Jump_010_7fc9

	or c
	ret nz

	rst $08
	jp z, wd67f

	db $db
	cp d
	dec sp
	ld a, a
	or [hl]
	push bc
	cp h
	ret nc

	ld c, [hl]
	or d
	or [hl]
	ret c

	ret


	ld a, a
	or [hl]
	sbc $2c
	ld [c], a
	or e
	db $dd
	ld a, a
	or c
	rst $10
	call c, $e8bd
	ld d, b
	inc a
	ret nz

	dec hl
	reti


	ld d, b
	ld a, [bc]
	ld b, b
	ld bc, wc2b2
	db $d3
	ld a, a

jr_010_5b81:
	db $d3
	or e
	jp c, wc6c2

	ld a, a
	or l
	cp d
	rst $18
	jp wd8b5


	ld c, [hl]
	add $29
	jp $7fd3


	add $29
	jp Jump_010_4ed3


	inc [hl]
	cp d
	rst $08
	inc sp
	db $d3
	ld a, a
	or l
	or d
	or [hl]

jr_010_5ba1:
	cp c
	jp wd9b8


	add sp, $50
	db $d3
	jr z, jr_010_5b81

	ld d, b
	rlca
	ld c, l
	ld bc, wc1c1
	pop hl
	or e
	db $dd
	ld a, a
	adc $d8
	cp l
	cp l
	sbc $33
	ld c, [hl]
	or c
	or d
	jp $7f26


	push de
	jr nc, jr_010_5ba1

	cp h
	jp wd9b2


	call nz, wdbba
	db $dd
	ld c, [hl]
	dec a
	jp nz, Jump_010_7fc9

	ld a, [hld]
	cp h
	ld [c], a
	or [hl]
	rst $10
	ld a, a
	cp d
	or e
	add hl, hl
	or a
	cp l
	reti


	add sp, $50
	inc [hl]
	cp b
	ld h, $50
	rrca
	ld a, l
	nop
	jp z, wc6c8

	ld a, a
	ret c

	sbc $46
	sbc $26
	ld a, a
	jp nz, wc3b2

	or d
	jp $9a4e


	and l
	sbc d
	and l
	call nz, wca7f
	ld a, [hld]
	ret nz

	cp b
	ret nz

	dec sp
	add $4e
	db $d3
	or e
	inc [hl]
	cp b
	ret


	ld a, a
	cp d
	push bc
	db $dd
	ld a, a
	ld a, [hld]
	rst $10
	rst $08
	cp b
	add sp, $50
	or c
	cp h
	or [hl]
	ld d, b
	ld de, $04b0
	ld l, $de
	cp h
	sbc $26
	ld a, a
	rst $08
	rst $18
	cp h
	db $db
	push bc
	ld a, a
	cp c
	inc sp
	ld c, [hl]
	or l
	or l
	call c, wc3da
	or d
	reti


	add sp, -$45
	pop de
	cp e
	add $7f
	jp nz, $b8d6

	ld c, [hl]
	pop de
	cp h
	db $db
	ld a, a
	cp e
	pop de
	or d
	adc $34
	ld a, a
	add hl, hl
	sbc $b7

jr_010_5c47:
	add $c5
	reti


	add sp, $50
	or d
	db $d3
	pop de
	cp h
	ld d, b
	inc bc
	dec e
	nop
	ret nc

	inc [hl]
	ret c

	ret


	ld a, a
	set 1, h
	add $7f
	or l
	or l
	call c, wc3da
	or d
	reti


	add sp, $4e
	jr nc, jr_010_5c47

	ld b, l
	cp h
	jp $be7f


	or d
	pop bc
	ld [c], a
	or e
	cp l
	reti


	call nz, $b24e
	call nz, $7fdd
	or [hl]
	cp c
	jp $8a7f


	sub h
	ld b, $c6
	ld a, a
	or [hl]
	call c, $e8d9
	ld d, b
	cp e
	push bc
	daa
	ld d, b
	rlca
	ld h, e
	nop
	or [hl]
	ret nz

	or d
	ld a, a
	add l
	and l
	add $7f
	jp nz, wcfc2

	jp c, $b2c3

	reti


	ld h, $4e
	push bc
	or [hl]
	ret nc

	jp z, wd47f

	call c, $b6d7
	or d
	ret


	inc sp
	ld c, [hl]
	jp nz, $b2d6

	ld a, a
	cp d
	or e
	add hl, hl
	or a
	add $ca
	ld a, a
	ret nz

	or h
	rst $10
	jp c, $b2c5

	add sp, $50
	pop bc
	ld [c], a
	or e
	pop bc
	ld [c], a
	ld d, b
	dec bc
	ld b, b
	ld bc, $9799
	jp z, wd07f

	dec l
	db $dd
	ld a, a
	jp z, $b82c

	ld a, a
	ret c

	sbc $46
	sbc $c6
	ld c, [hl]
	rst $08
	db $d3
	rst $10
	jp c, $b2c3

	reti


	add sp, -$4f
	jp nc, Jump_010_7fc9

	swap e
	db $d3
	ld c, [hl]
	cp a
	rst $10
	db $dd
	ld a, a
	call nz, $ba3c
	call nz, $7f26
	inc sp
	or a
	reti


	add sp, $50
	or [hl]
	or d
	ret c

	or a
	ld d, b
	db $10
	inc d
	dec b
	jp z, wc0df

	jp nz, wc0bc

	ld a, a
	ld a, [wdece]
	ret


	ld a, a
	or e
	inc sp
	jp z, $f84e

	dec sp
	ld [c], a
	or e
	or [hl]
	sbc $c6
	ld a, a
	rst $30
	or $f6
	or $44
	jp nz, Jump_010_4ec9

	ld b, b
	xor e
	sub b
	db $dd
	ld a, a
	cp b
	ret c

	jr nc, @-$41

	cp d
	call nz, $3326
	or a
	reti


	add sp, $50
	or c
	set 3, c
	ld d, b
	ld de, $02fe
	jp wcbc9


	rst $10
	ld h, $7f
	ret nc

	dec l
	or [hl]
	or a
	add $7f
	push bc
	rst $18
	jp wc3b2


	ld c, [hl]
	or l
	sub $28
	ret


	ld h, $7f
	call nz, $b2b8
	add sp, -$30
	dec l
	or e
	ret nc

	push bc
	inc [hl]
	inc sp
	ld c, [hl]
	push de
	or e
	ld h, $c5
	ld a, a
	cp l
	ld h, $c0
	ld h, $7f
	ret nc

	or [hl]
	cp c
	rst $10
	jp c, $e8d9

	ld d, b
	cp e
	or d
	ret nc

	sbc $50
	db $10
	db $f4
	ld [bc], a
	call z, $bad8
	ret


	sub $b3
	push bc
	db $d3
	ret


	db $dd
	ld a, a
	db $d3
	pop bc
	or c
	reti


	cp b
	add sp, $4e
	cp d
	inc [hl]
	db $d3
	add $7f
	cp e
	or d
	ret nc

	sbc $2c
	pop hl
	jp nz, $7fdd

	or [hl]
	cp c
	jp $344e


	cp d
	or [hl]
	call wc27f
	jp c, wd9bb

	inc l
	cp c
	sbc $26
	ld a, a
	or c
	rst $18
	ret nz

	add sp, $50
	cp d
	or e
	db $d3
	ret c

	ld d, b
	db $10
	ld h, $02
	cp l
	reti


	inc [hl]
	or d
	add [hl]
	add hl, de
	inc sp
	ld a, a
	or [hl]
	ret nc

	jp nz, wc3b2

	ld c, [hl]
	or d
	pop bc
	inc [hl]
	add $7f
	ld sp, hl
	or $f6
	adc e
	db $e3
	adc e
	db $e3
	ret


	ld c, [hl]
	pop bc
	db $dd
	ld a, a
	cp l
	or d
	call nz, wc3df
	cp h
	rst $08
	or e
	add sp, $50
	or d
	inc sp
	sbc $bc
	ld d, b
	inc d
	call nz, $b904
	sbc $b7
	pop hl
	or e
	ret


	ld a, a
	ret nz

	jp nc, Jump_010_7fc6

	or d
	inc sp
	sbc $bc
	db $dd
	ld c, [hl]
	inc [hl]
	sbc $34
	sbc $7f
	cp b
	ret nc

	or [hl]
	or h
	jp wdfb2


	ret nz

	ld a, a
	cp c
	rst $18
	or [hl]
	ld c, [hl]
	or a
	ld [c], a
	or e
	ld a, $b3
	push bc
	ld a, a
	ld b, e
	adc b
	and c
	xor e
	add $7f
	push bc
	rst $18
	ret nz

	add sp, $50
	or d
	ret z

	pop de
	ret c

	ld d, b
	dec d
	ld hl, sp+$11
	rst $30
	add $c1
	add $7f
	ret nz

	dec a
	db $d3
	ret


	db $dd
	ld a, a
	ld a, [$f6f6]
	add [hl]
	xor b
	ld c, [hl]
	ret nz

	dec a
	push bc
	or d
	call nz, $b77f
	ld h, $7f
	cp l
	rst $08
	push bc
	or d
	add sp, $4e
	ret nz

	dec a
	or l
	call c, wc4d9
	ld a, a
	ret z

	pop de
	rst $18
	jp wcfbc


	or e
	add sp, $50
	cp e
	or [hl]
	push bc
	ld d, b
	add hl, bc
	ld h, h
	nop
	pop bc
	or [hl]
	rst $10
	db $d3
	ld a, a
	adc h
	ld b, c
	db $e3
	inc de
	db $d3
	ld a, a
	adc $c4
	sbc $34
	rrca
	and b
	add sp, $4e
	cp [hl]
	or [hl]
	or d

jr_010_5e71:
	inc sp

jr_010_5e72:
	ld a, a
	or d
	pop bc
	ld a, [hld]
	sbc $7f
	sub $dc
	cp b
	jp wc54e


	cp e
	cp c
	push bc
	or d
	ld a, a
	ld b, e
	adc b
	and c
	xor e
	jr nc, jr_010_5e71

	ld d, b
	call $a813
	ld d, b
	inc c
	inc l
	ld bc, $30cc
	sbc $ca
	ld a, a
	inc l
	jp nc, wc6de

	ld a, a
	rst $08
	dec hl
	rst $18
	jp wc3b2


	ld c, [hl]
	call c, wd7b6
	push bc
	or d
	add sp, -$4a
	rst $10
	jr nc, jr_010_5e72

	ld a, a
	cp e
	call c, wc4d9
	ld c, [hl]
	db $d3
	or e
	inc [hl]
	cp b
	add $7f
	or l
	or [hl]
	cp e
	jp c, $e8d9

	ld d, b
	jp z, wd0bb

	ld d, b
	dec c
	ld e, b
	ld [bc], a
	or [hl]
	ret nz

	or d
	ld a, a
	sbc c
	adc d
	sbc [hl]
	jp z, $f77f

	rst $08
	sbc $3a
	ret c

	or a
	ret


	ld c, [hl]
	ld b, b
	xor c
	db $e3
	db $dd
	ld a, a
	db $d3
	rst $18
	jp wd9b2


	ld h, $4e
	or l
	or l
	or a
	cp l
	daa
	jp $b37f


	ld a, [hli]
	or a
	ld h, $7f

jr_010_5eef:
	add $3c
	or d
	add sp, $50
	ld hl, sp-$31
	or d
	ld h, $b2
	ld d, b
	rrca
	dec l
	dec b
	add l
	and l
	ld h, $7f
	sra h
	ld [c], a
	or e
	add $7f
	or [hl]
	ret nz

	cp b
	ld c, [hl]
	sub h
	ld b, b
	db $e3
	sbc a
	jr nc, jr_010_5eef

	inc sp
	db $d3
	ld a, a
	cp d
	call c, wc5be
	or d
	add sp, $4e
	cp d
	or e

jr_010_5f1d:
	add hl, hl
	or a
	cp l
	reti


	call nz, $30b7
	cp c
	ld a, a
	set 2, a
	cp b
	add sp, $50
	inc e
	db $e3
	and [hl]
	ld d, b
	inc c
	sbc d
	ld [bc], a
	cp l
	cp d
	cp h
	ret


	ld a, a
	cp h
	add hl, hl
	or a
	add $7f
	jp z, wc9de

	or e
	cp h
	jp $3a4e


	cp b
	jp z, $bdc2

	reti


	add sp, $19
	add a
	rrca
	xor e
	inc e
	db $e3
	and [hl]
	call nz, $b3b2
	ld c, [hl]
	or c
	jr nc, jr_010_5f1d

	inc sp
	ld a, a
	cp d
	call c, wd726
	jp c, Jump_010_7fc3

	or d
	reti


	add sp, $50
	sub $b3
	cp [hl]
	or d
	ld d, b
	dec c
	sub b
	ld bc, wd0d0
	ld h, $7f
	sub $b8
	jp $f77f


	add [hl]
	xor b
	ld a, a
	jp z, wdac5

	ret nz

	ld c, [hl]
	call nz, wdbba
	inc sp
	ld a, a
	or l
	call nz, wc0bc
	ld a, a
	jp z, wc9d8

	or l
	call nz, $4edd
	ret nc

	ld a, [hli]
	call nz, Call_010_7fc6
	or a
	or a
	call c, wd7b9
	jp c, $e8d9

	ld d, b
	inc [hl]
	cp b
	dec b
	adc h
	ld d, b
	inc c
	ld e, a
	nop
	ld a, [hli]
	cp b
	rst $08
	jp c, Jump_010_7fc6

	call nz, $2ec2
	sbc $cd
	sbc $b2
	inc sp
	ld c, [hl]
	call z, $2ac0
	ret


	ld a, a
	pop bc
	or d
	cp e
	or d
	ld a, a
	inc de
	dec b
	db $e3
	adc h
	ld h, $4e
	jp c, $b9de

	jp nz, wc0bc

	rst $08
	rst $08
	ld a, a
	inc sp
	reti


	cp d
	call nz, $b126
	reti


	add sp, $50
	adc e
	xor l
	sbc a
	sub a
	adc c
	ld d, b
	ld a, [bc]
	ld b, b
	ld bc, $bcb7
	ld [c], a
	or e
	ld h, $7f
	jp z, $bc29

	cp b
	ld a, a
	cp h
	rst $18
	ld c, b
	db $dd
	ld c, [hl]
	rst $08
	rst $18
	cp l
	jr z, jr_010_6073

jr_010_5ff4:
	ret nz

	jp wd7c0


	ld a, a
	sub $b3
	ld a, a
	pop bc
	pop hl
	or e
	or d
	add sp, $4e
	call nz, $b63b
	or [hl]
	rst $18
	jp $b67f


	ret nc

	jp nz, $7fb8

	rst $08
	or h
	inc a
	jp c, $e830

	ld d, b
	adc $c8
	dec l
	or a
	ld d, b
	ld a, [bc]
	jp nz, $b601

	rst $10
	jr nc, jr_010_5ff4

	ld a, a
	pop bc
	or d
	cp e
	cp b
	ld a, a
	db $d3
	call nz, wc4d3
	ld a, a
	ld c, [hl]
	sub $dc
	or [hl]
	rst $18
	ret nz

	add sp, -$64
	sub a
	db $dd
	ld a, a
	jp nz, $b3b6

	sub $b3

jr_010_603c:
	add $c5
	ret c

	ld c, [hl]
	cp [hl]
	or d
	or [hl]
	cp b
	ld h, $7f
	or a
	ld [c], a
	or e
	ld a, $b3
	or [hl]
	ld a, a
	cp h
	ret nz

	add sp, $50
	dec b
	adc h
	inc l
	ld [c], a
	or e
	ld d, b
	db $10
	ld bc, $b800
	rst $10
	call nc, $33d0
	ld a, a
	jr nc, jr_010_603c

	db $d3
	or d
	push bc
	or d
	ret


	add $4e
	ret nc

	rst $10
	jp c, $b2c3

	reti


	sub $b3
	push bc
	ld a, a

jr_010_6073:
	or a
	ld h, $bc
	ret nz

	rst $10
	ld c, [hl]
	cp a
	cp d
	add $7f
	add hl, bc
	db $e3
	adc h
	sub e
	ld h, $7f
	or d
	reti


	ret


	jr nc, @-$16

	ld d, b
	ret z

	sbc $d8
	or a
	ld d, b
	add hl, bc
	jp $f700


	add $c1
	ld a, a
	rst $30
	cp $2c
	or [hl]
	sbc $ca
	ld a, a
	ret z

	jp wd9b2


	add sp, $4e
	ret z

	pop de
	rst $18
	jp $7fd9


	or c
	or d
	jr nc, jr_010_60df

	db $d3
	ld a, a
	cp e
	rst $08
	dec hl
	rst $08
	push bc
	ld c, [hl]
	pop bc
	ld [c], a
	or e
	ret


	or e
	ret c

	ld [c], a
	cp b
	db $dd
	ld a, a
	jp nz, $b3b6

	add sp, $50
	ret z

	sbc $d8
	or a
	ld d, b
	rrca
	ldh [rSB], a
	pop bc
	or [hl]
	rst $10
	call c, wdd2b
	ld a, a
	or c
	rst $08
	ret c

	ld a, a
	cp d
	ret


	rst $08
	dec l
	ld c, [hl]
	pop bc
	ld [c], a
	or e
	ret


jr_010_60df:
	or e
	ret c

	ld [c], a
	cp b
	db $dd
	ld a, a
	inc l
	dec hl
	or d
	add $4e
	or c
	call nc, wdfc2
	jp $b17f


	or d
	jp $7fdd


	ret nz

	or l
	cp l
	add sp, $50
	call nz, Call_010_50d8
	dec bc
	inc l
	ld bc, $bcb1
	ret


	ld a, a
	sub c
	and b
	ld h, $7f
	jp z, wc0df

	jp nz, wc3bc

	or d
	reti


	add sp, $4e
	add e
	adc d
	ret


	ld a, a
	adc a
	sbc l
	adc a
	sbc l
	db $dd
	ld a, a
	jp nz, wdeb6

	inc sp
	ld c, [hl]
	rst $30
	or $f6
	add [hl]
	xor b
	cp e
	or a
	ret


	ld a, a
	cp l
	ld a, a
	rst $08
	inc sp
	ld a, a
	jp z, $3cba

	add sp, $50
	call nz, Call_010_50d8
	rrca
	adc e
	ld bc, wc2b3
	cp b
	cp h
	or d
	ld a, a
	sbc c
	sub a
	db $dd
	ld a, a
	set 3, e
	add hl, hl
	jp $b14e


	or d
	jp $7fdd


	or d
	or [hl]
	cp b
	cp l
	reti


	add sp, $4e
	sbc l
	xor h
	sbc c
	ld hl, sp+$33
	ld a, a
	cp a
	rst $10
	db $dd
	ld a, a
	call nz, wcf3b
	call c, $e8d9
	ld d, b
	push bc
	cpl
	ret


	ld d, b
	dec bc
	jr nz, @+$05

	or a
	or [hl]
	ld h, $b8
	jp wc5b7


	ld a, a
	inc e
	ld [de], a
	or b
	db $e3
	or [hl]
	rst $10
	ld c, [hl]
	or e
	pop bc
	pop hl
	or e
	cp [hl]
	or d
	inc a
	jp nz, $337f

	jp z, $b2c5

	or [hl]
	call nz, $2c4e
	db $d3
	call nz, wca33
	ld a, a
	or e
	ret nz

	ld h, $dc
	jp c, $b2c3

	reti


	add sp, $50
	ret nz

	ret z

	ld d, b
	rlca
	ld b, l
	nop
	or e
	rst $08
	jp c, wc4c0

	or a
	or [hl]
	rst $10
	ld a, a
	cp [hl]
	push bc
	or [hl]
	add $4e
	cp h
	ld [c], a
	cp b
	inc a
	jp nz, Jump_010_7fc9

	adc a
	sub a
	ld h, $7f
	or c
	rst $18
	jp $bd4e


	cp d
	cp h
	ld [hld], a
	jp nz, $b57f

	or l
	or a
	cp b
	ld a, a
	cp a
	jr nc, @-$3c

jr_010_61cd:
	add sp, $50
	ret nz

	ret z

	ld d, b
	inc d
	add sp, $03
	jp z, $b6c5

	rst $10
	ld a, a
	or e
	rst $18
	call nz, $bdd8
	reti


	ld a, a
	or [hl]
	or l
	ret c

	ld h, $4e
	ret nz

	jr nc, @-$28

	or d
	ld a, a
	ret nz

	ret nz

	or [hl]
	or e
	db $d3
	ret


	ret


	ld c, [hl]
	or a
	db $d3
	pop bc
	db $dd
	ld a, a
	push bc
	jr nc, jr_010_61cd

	jp wcfbc


	or e
	add sp, $50
	cp b
	rst $10
	add hl, hl
	ld d, b
	db $10
	ld h, $02
	cp $f6
	ld c, b
	sbc $7f
	ret


	ld a, a
	cp h
	ld [c], a
	cp b
	cp h
	pop hl
	ld h, $7f
	inc l
	push de
	or e
	add $4e
	or e
	ld a, [hli]
	cp b
	add sp, -$45
	cp e
	jp c, wc4d9

	ld a, a
	inc [hl]
	cp b
	add $7f
	or l
	or [hl]
	cp e
	jp c, $bd4e

	reti


	inc [hl]
	or d
	ld a, a
	or d
	ret nz

	ret nc

	ld h, $7f
	jp z, wd9bc

	add sp, $50
	or a
	sbc $27
	ld [c], a
	ld d, b
	ld b, $96
	nop
	cp [hl]
	ld a, [de]
	and a
	ld a, a
	pop de
	push bc
	ld a, [de]
	and a
	ld h, $7f
	or a
	sbc $c6
	cp b
	ret


	sub $b3
	add $4e
	jp z, wc0df

	jp nz, wc3bc

	or l
	ret c

	ld a, a
	cp l
	or d
	pop bc
	pop hl
	or e
	db $dd
	ld c, [hl]
	ei
	sbc b
	xor h
	sub e
	ret


	ld a, a
	jp z, $bbd4

	inc sp
	ld a, a
	or l
	sub $28
	add sp, $50
	or a
	sbc $27
	ld [c], a
	ld d, b
	dec c
	add [hl]
	ld bc, wd813
	and [hl]
	ret


	sub $b3
	add $7f
	call nz, wdf26
	jp wd9b2


	sub c
	sbc b
	inc sp
	ld c, [hl]
	or d
	call c, $30ca
	db $dd
	ld a, a
	cp b
	ret c

	rst $00
	or a
	ld c, [hl]
	inc l
	inc a
	sbc $c9
	ld a, a
	cp l
	db $dd
	ld a, a
	jp nz, wdfb8

	jp wd9b2


	add sp, $50
	set 1, c
	or e
	rst $08
	ld d, b
	ld a, [bc]
	inc l
	ld bc, wd7b6
	jr nc, jr_010_62df

	ld a, a
	or [hl]
	reti


	cp b
	ld a, a
	or c
	cp h
	ret


	ld a, a
	pop bc
	or [hl]
	rst $10
	ld h, $4e
	db $d3
	ret


	cp l
	ld a, [hli]
	or d
	add sp, -$09
	or [hl]
	or d
	ret


	ld a, a
	dec bc
	xor l
	xor e
	ld b, d
	inc sp
	ld c, [hl]
	call nz, $b7b3
	ld [c], a
	or e
	adc a
	xor c

jr_010_62df:
	db $e3
	db $d3
	ld a, a
	call nz, $ba3b
	or h
	reti


	add sp, $50
	set 1, c
	or e
	rst $08
	ld d, b
	ld de, $03b6
	inc l
	cp a
	cp b
	jp z, $bb7f

	or d
	cp d
	or e
	ld a, a
	ld hl, sp-$06
	or $86
	xor b
	add sp, $4e
	and b
	and l
	and b
	and l
	ld a, a
	db $d3
	or h
	push bc
	ld h, $d7
	ld a, a
	cp h
	sbc $b6
	sbc $be
	sbc $c4
	ld c, [hl]
	or l
	push bc
	inc l
	ld a, a
	adc h
	ld b, c
	db $e3
	inc de
	inc sp
	ld a, a
	or [hl]
	cp c
	rst $00
	cp c
	reti


	add sp, $50
	ret z

	dec l
	ret nc

	ld d, b
	inc bc
	inc hl
	nop
	add [hl]
	add hl, de
	jp z, wc57f

	ld h, $b8
	jp $bd7f


	reti


	inc [hl]
	or d
	add sp, $4e
	or d
	rst $18
	cp h
	ld [c], a
	or e
	ld a, a
	ret


	dec sp
	jp nz, $b932

	reti


	ret


	inc sp
	ld c, [hl]
	or [hl]
	ret nz

	or d
	ld a, a
	and c
	sbc b
	db $dd
	ld a, a
	or [hl]
	inc l
	rst $18
	jp $b97f


	dec l
	reti


	add sp, $50
	ret z

	dec l
	ret nc

	ld d, b
	rlca
	cp c
	nop
	or e
	cp h
	db $db
	or c
	cp h
	ret


	ld a, a
	push de
	dec sp
	jp z, $f97f

	ld a, $de
	inc sp
	ld c, [hl]
	pop bc
	or d
	cp e
	push bc
	ld a, a
	ret nc

	dec l
	or [hl]
	or a
	ld h, $7f
	jp nz, wc3b2

	or d
	reti


	add sp, $4e
	or [hl]
	call c, $7fdd
	or l
	sub $b2
	inc sp
	ld a, a
	call c, wd9c0
	add sp, $50
	inc [hl]
	cp b
	ld a, [hld]
	ret c

	ld d, b
	add hl, bc
	jp $b500


	cp d
	ret c

	call nc, $b2bd
	ld a, a
	cp [hl]
	or d
	or [hl]
	cp b
	add sp, $4e
	jp z, wc0df

	jp nz, wc0bc

	ld a, a
	sub c
	sbc b
	db $dd
	ld a, a
	call z, wcfd8
	call c, wc3bc
	ld c, [hl]
	rrca
	add c
	and d
	and c
	xor e
	inc de
	db $d3
	ld a, a
	cp b
	cp h
	dec hl
	cp h
	add $7f
	cp l
	reti


	add sp, $50
	inc [hl]
	cp b
	ld a, [hld]
	ret c

	ld d, b
	ld [$00c8], sp
	and b
	adc h
	push bc
	ret


	inc sp
	ld a, a
	cp [hl]
	or d
	or [hl]
	cp b
	jp z, $b57f

	sbc $ba
	or e
	add sp, $4e
	cp b
	pop bc
	or [hl]
	rst $10
	ld a, a
	jr nc, @-$41

	ld a, a
	pop bc
	ld [c], a
	or e
	or l
	sbc $44
	jp z, $b14e

	or d
	jp $7fdd


	rst $08
	inc [hl]
	call c, Call_010_7fbd
	pop bc
	or [hl]
	rst $10
	ld h, $b1
	reti


	add sp, $50
	ld h, $de
	cp [hl]
	or a
	ld d, b
	inc b
	ret z

	nop
	rst $08
	reti


	cp b
	jp wd37f


	pop bc
	call nc, $b2bd
	ret


	inc sp
	ld a, a
	jp nz, wdeb6

	inc sp
	ld c, [hl]
	or c
	or d
	jp Jump_010_7fc6


	push bc
	add hl, hl
	jp $3c7f


	jp nz, wd9b9

	ld c, [hl]
	add c
	adc e
	sub c
	dec de
	sub d
	ld a, a
	ld h, $df
	cp [hl]
	sbc $26
	ld a, a
	inc sp
	or a
	reti


	add sp, $50
	adc e
	db $e3
	dec bc
	db $e3
	ld d, b
	ld [$016d], sp
	cp e
	or d
	cp d
	or e
	ret


	ld a, a
	or [hl]
	ld h, $b8
	ret c

	ld [c], a
	cp b
	db $dd
	ld a, a
	jp nz, $b2b6

	ld c, [hl]
	jp nz, wc6b2

	ld a, a
	inc l
	sbc $ba
	or e
	ret


	ld a, a
	ld b, e
	adc b
	and c
	xor e
	db $dd
	ld c, [hl]
	jp nz, wd9b8

	cp d
	call nz, Call_010_7fc6
	cp [hl]
	or d
	cp d
	or e
	cp h
	ret nz

	add sp, $50
	or [hl]
	cp [hl]
	or a
	ld d, b
	ld [de], a
	ld c, [hl]
	ld [bc], a
	cp d
	jp z, wc6b8

	ld a, a
	ret


	cp d
	cp e
	jp c, Jump_010_7fc0

	or a
	ld [c], a
	or e
	ret c

	pop hl
	or e
	ret


	ld c, [hl]
	or d
	inc sp
	sbc $bc
	or [hl]
	rst $10
	ld a, a
	call z, $b6df
	jp nz, $bebb

	ret nz

	add sp, $4e
	ret nz

	or [hl]
	or d
	cp d
	or h
	inc sp
	ld a, a
	push bc
	or a
	push bc
	ld h, $d7
	ld a, a
	call nz, $e83c
	ld d, b
	inc l
	cp h
	ldh [$b8], a
	ld d, b
	inc bc
	inc a
	nop
	cp b
	or e
	pop bc
	pop hl
	or e
	add $7f
	or e
	or d
	ret nz

	rst $08
	rst $08
	ld a, a
	or d
	inc [hl]
	or e
	cp h
	jp $bb4e


	push de
	or e
	ret


	ld a, a
	and e
	sub l
	xor h
	sub e
	or [hl]
	rst $10
	ld c, [hl]
	inc sp
	sbc $2c
	jp z, $34c5

	db $dd
	ld a, a
	adc $b3
	cp h
	ldh [$bd], a
	reti


	add sp, $50
	call nz, $29b6
	ld d, b
	ld b, $55
	nop
	or e
	rst $08
	jp c, wc4c0

	or a
	or [hl]
	rst $10
	ld a, a
	cp h
	rst $18
	ld c, b
	add $7f
	adc $c9
	or l
	ld h, $4e
	call nz, wdfd3
	jp wd9b2


	add sp, -$32
	ret


	or l
	ld h, $7f
	or a
	or h
	ret nz

	call nz, $4eb7
	cp a
	ret


	ld a, a
	or d
	ret


	pop bc
	jp z, $b57f

	call c, wc3df
	ld a, a
	cp h
	rst $08
	or e
	add sp, $50

	db $b6, $d2, $c9, $ba, $50, $05, $5a, $00, $c5, $26, $b2, $7f, $b8, $3b, $dd, $7f
	db $ba, $b3, $d7, $c9, $c5, $b6, $c6, $4e, $cb, $df, $ba, $d2, $d9, $c4, $b7, $7f
	db $b2, $b7, $b5, $b2, $d6, $b8, $4e, $d0, $2d, $33, $df, $48, $b3, $dd, $7f, $ca
	db $df, $bc, $e0, $bd, $d9, $e8, $50

	or [hl]
	or h
	sbc $50
	dec bc
	cp [hl]
	nop
	adc e
	xor h
	ld b, e
	db $dd
	ld a, a
	call z, wcfd8
	call c, wc3bc
	ld a, a
	or c
	or d
	jp $4edd


	push bc
	daa
	ret nz

	or l
	cp h
	ld a, a
	cp l
	reti


	inc [hl]
	or d
	ld a, a
	sub c
	and b
	inc sp
	ld c, [hl]
	inc c
	adc a
	inc c
	adc a
	add $7f
	res 6, a
	cp e
	or d
	jp wcfbc


	or e
	add sp, $50
	or [hl]
	jp nc, $0a50

	pop hl
	nop
	ld b, a
	xor h
	sub e
	call nz, wc3bc
	ld a, a
	add $de
	or a
	ld h, $7f
	ret nz

	or [hl]
	or d
	add sp, $4e
	rst $08
	ret nz

	ld a, a
	cp c
	inc sp
	ld a, a

jr_010_65b6:
	or l
	or l
	call c, wc0da
	ld a, a
	cp h
	rst $18
	ld c, b
	jp z, wc54e

	ld h, $b2
	or a
	cp l
	reti


	ld a, a
	adc e
	xor e
	inc e
	and [hl]
	jr nc, jr_010_65b6

	ld d, b
	or [hl]
	or h
	sbc $50
	ld de, $0389
	pop bc
	inc l
	ld [c], a
	or e
	ld a, a
	rst $30
	ld a, [$f6f6]
	and b
	db $e3
	sub e
	and [hl]
	ld a, a
	rst $08
	inc sp
	ld c, [hl]
	sbc c
	sub a
	db $dd
	ld a, a
	jp nz, wdfb6

	jp wc47f


	inc a
	cp d
	call nz, $3326
	or a
	reti


	add sp, $4e
	cp d
	or e
	ret z

	jp nz, Jump_010_7fc9

	adc $c9
	or l
	db $dd
	ld a, a
	jp z, $e8b8

	ld d, b
	dec hl
	rst $18
	cp a
	or e
	ld d, b
	dec b
	ld [hl], $00
	dec a
	jp nz, $b2d2

	ld a, a
	add b
	and [hl]
	add [hl]
	and b
	xor e
	ld [de], a
	adc h
	add sp, $4e
	sub $d9
	add $7f
	push bc
	reti


	call nz, $f87f
	adc $de
	ret


	ld a, a
	ret z

	rst $18
	cp d
	inc sp
	ld c, [hl]
	ld sp, hl
	or $f6
	and b
	db $e3
	sub e
	and [hl]
	db $d3
	ld a, a
	or c
	reti


	cp b
	call nz, $b3b2
	add sp, $50
	dec hl
	rst $18
	cp a
	or e
	ld d, b
	ld [$0056], sp
	jp nc, $3dbc

	ld h, $7f
	jp z, wc2c5

	ld a, a
	call nz, wc2c3
	db $d3
	push bc
	cp b
	ld c, [hl]
	cp b
	cp e
	or d
	ld a, a
	add $b5
	or d
	jp z, $f87f

	add [hl]
	xor b
	cp e
	or a
	rst $08
	inc sp
	ld c, [hl]
	call nz, $b734
	ld a, a
	or a
	db $dd
	ld a, a
	or e
	cp h
	push bc
	call c, wd9be
	add sp, $50
	sbc e
	and l
	xor c
	db $e3
	ld d, b
	inc c
	cp d
	nop
	cp [hl]
	or [hl]
	or d
	or d
	pop bc
	ld a, a
	or l
	or l
	or a
	or d
	ld a, a
	jp z, $3bc5

	rst $10
	or [hl]
	rst $10
	ld c, [hl]
	add b
	and a
	and [hl]
	ld b, $e3
	db $dd
	ld a, a
	or l
	cp d
	cp l
	ld a, a
	or [hl]
	call z, wddde
	ld c, [hl]
	add h
	sub l
	ret


	ld a, a
	sub $b3
	add $7f
	ld a, [hld]
	rst $10
	rst $08
	cp b
	add sp, $50
	sbc e
	and l
	xor c
	db $e3
	ld d, b
	rlca
	jr z, jr_010_66ba

jr_010_66ba:
	set 0, h
	ret


	ld a, a
	or [hl]
	or l
	ret


	sub $b3
	push bc
	ld a, a
	sub c
	inc e
	sbc [hl]
	or [hl]
	rst $10
	ld c, [hl]
	inc sp
	sbc $be
	jp nz, Jump_010_7fc9

	sbc l
	xor e
	inc de
	and l
	add hl, bc
	and l
	ret


	ld a, a
	or d
	rst $18
	cp h
	pop hl
	ld c, [hl]
	inc sp
	jp z, $b2c5

	or [hl]
	call nz, $bb7f
	cp e
	call nc, wdab6
	jp wd9b2


	add sp, $50
	sbc c
	add e
	call nz, Call_010_50d8
	ld a, [bc]
	ld b, b
	nop
	sbc c
	xor h
	ld b, b
	ret


	ld a, a
	inc a
	inc a
	sbc $ca
	ld a, a
	add l
	xor h
	adc a
	db $e3
	add $c5
	rst $18
	jp $b14e


	or d
	jp $7fdd


	or a
	ret c

	cp e
	cp b
	add sp, -$48
	pop bc
	or [hl]
	rst $10
	jp z, wc54e

	sbc $33
	db $d3
	ld a, a
	call nz, $bdb6
	ld a, a
	or h
	or a
	ret nz

	or d
	db $dd
	ld a, a
	jp z, $e8b8

	ld d, b
	sbc c
	add e
	call nz, Call_010_50d8
	ld de, $009b
	sbc [hl]
	sub c
	ret


	ld a, a
	sub $b3
	push bc
	ld a, a
	or [hl]
	or l
	ret c

	inc sp
	ld a, a
	cp b
	pop bc
	ret


	ld c, [hl]
	push bc
	or [hl]
	add $7f
	cp e
	cp a
	or d
	cp d
	rst $08
	jp c, wd7c0

	ld a, a
	cp e
	or d
	ld a, [hli]
	add sp, $4e
	sub $b3
	or [hl]
	or d
	or h
	or a
	inc sp
	ld a, a
	call nz, $bbb6
	jp c, $bcc3

	rst $08
	or e
	add sp, $50
	ld d, b
	ld a, [bc]
	ld h, h
	nop
	ld d, b

Call_010_676f:
	push bc
	push hl

jr_010_6771:
	ld a, [wd0e3]
	ld b, a
	ld c, $00
	ld hl, $679a

jr_010_677a:
	inc c
	ld a, [hli]
	cp b
	jr nz, jr_010_677a

	ld a, c
	ld [wd0e3], a
	pop hl
	pop bc

jr_010_6785:
	ret


Call_010_6786:
	push bc
	push hl
	ld a, [wd0e3]
	dec a
	ld hl, $679a
	ld b, $00
	ld c, a
	add hl, bc
	ld a, [hl]
	ld [wd0e3], a
	pop hl
	pop bc
	ret


	db $70

	ld [hl], e

	db $20, $23

	dec d

	db $64

	ld [hli], a
	ld d, b
	ld [bc], a
	ld h, a
	ld l, h
	ld h, [hl]
	ld e, b
	ld e, [hl]
	dec e
	rra
	ld l, b
	ld l, a
	add e
	dec sp
	sub a
	add d
	ld e, d
	ld c, b

	db $5c, $7b

	ld a, b
	add hl, bc
	ld a, a
	ld [hl], d
	nop
	nop
	ld a, [hld]

	db $5f

	db $16

	db $10

	ld c, a
	ld b, b
	ld c, e
	ld [hl], c
	ld b, e
	ld a, d
	ld l, d
	ld l, e
	jr jr_010_67f7

	ld [hl], $60
	ld c, h
	nop
	ld a, [hl]
	nop
	ld a, l
	ld d, d
	ld l, l
	nop
	jr c, jr_010_682a

	ld [hld], a
	add b
	nop
	nop
	nop
	ld d, e
	jr nc, jr_010_6771

	nop
	nop
	nop
	ld d, h
	inc a
	ld a, h
	sub d
	sub b
	sub c
	add h
	inc [hl]
	ld h, d
	nop
	nop
	nop
	dec h
	db $26

	db $19

	ld a, [de]
	nop
	nop
	sub e
	sub h
	adc h
	adc l
	ld [hl], h
	ld [hl], l

jr_010_67f7:
	nop
	nop
	dec de
	inc e
	adc d
	adc e
	daa
	jr z, jr_010_6785

	adc b
	add a
	add [hl]
	ld b, d
	add hl, hl
	rla
	ld l, $3d
	db $3e

	db $0d, $0e

	rrca
	nop
	ld d, l
	add hl, sp
	inc sp
	ld sp, $0057
	nop
	ld a, [bc]
	dec bc
	inc c
	ld b, h
	nop
	scf
	ld h, c
	ld a, [hli]
	sub [hl]
	adc a

	db $81

	nop
	nop
	ld e, c
	nop
	ld h, e
	ld e, e
	nop
	ld h, l
	inc h
	ld l, [hl]
	dec [hl]

jr_010_682a:
	ld l, c
	nop
	ld e, l

	db $3f

	ld b, c
	ld de, $7912

	db $01

	inc bc
	ld c, c
	nop
	db $76
	ld [hl], a
	nop
	nop
	nop
	nop

	db $4d

	ld c, [hl]

	db $13

	inc d

	db $21

	ld e, $4a
	adc c
	adc [hl]
	nop
	ld d, c
	nop
	nop

	db $04, $07

	dec b
	ld [$0006], sp
	nop
	nop
	nop
	dec hl
	inc l
	dec l
	ld b, l
	ld b, [hl]
	ld b, a
	ld a, [wcd3d]
	ld [wcd59], a
	ld a, [wcd3e]
	ld [wcd5a], a
	ld de, $68ae
	jr jr_010_6878

	ld a, [wcd3e]
	ld [wcd59], a
	ld a, [wcd3d]
	ld [wcd5a], a
	ld de, $68bf

jr_010_6878:
	ld a, [wd2d4]
	push af
	ldh a, [$af]
	push af
	ldh a, [$ae]
	push af
	xor a
	ld [wd2d4], a
	ldh [$af], a
	ldh [$ae], a
	push de
	pop de
	ld a, [de]
	cp $ff
	jr z, jr_010_68a3

	inc de
	push de
	ld hl, $68d5
	add a
	ld c, a
	ld b, $00
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld de, $688b
	push de
	jp hl


jr_010_68a3:
	pop af
	ldh [$ae], a
	pop af
	ldh [$af], a
	pop af
	ld [wd2d4], a
	ret


	nop
	ld bc, $0302
	dec b
	rlca
	ld [$0a09], sp
	dec bc
	ld b, $08
	ld [bc], a
	inc b
	rlca
	ld c, $ff
	nop
	ld [$0b0d], sp
	db $10
	dec b
	db $10
	ld [$0402], sp
	rrca
	ld bc, $0302
	db $10
	ld b, $10
	rlca
	ld [$0e09], sp
	rst $38
	rla
	ld l, c
	cp e
	ld l, c
	ld c, $6a
	ld c, b
	ld l, d
	xor h
	ld l, d
	db $ec
	ld l, d
	inc a
	ld l, e
	rst $30
	ld l, b
	ld a, $6d
	ld [hl], h
	ld l, l
	sbc e
	ld l, l
	db $d3
	ld l, l
	ld [$256e], sp
	ld l, [hl]
	or c
	ld l, c
	ld d, l
	ld l, l
	adc l
	ld l, c

Call_010_68f7:
	ld c, $64
	jp $3781


Call_010_68fc:
	ld a, $01
	ldh [$ba], a
	call $3e07
	xor a
	ldh [$ba], a
	ret


Call_010_6907:
Jump_010_6907:
	ld c, $50
	jp $3781


Call_010_690c:
	ld hl, wc3a0
	ld bc, $0168
	ld a, $7f
	jp $372a


	call Call_010_690c
	call $0167
	ld hl, $6d51
	ld de, $9310
	ld bc, $0310
	ld a, $0e
	call $028c
	ld hl, $7061
	ld de, $87c0
	ld bc, $0040
	ld a, $0e
	call $028c
	ld hl, $9800
	ld bc, $0800
	ld a, $7f
	call $372a
	call $0188
	ld a, $ff
	ld [wcfb2], a
	ld hl, wd6af
	set 6, [hl]
	ld a, [wcf15]
	and a
	ld a, $e4
	jr z, jr_010_695b

	ld a, $f0

jr_010_695b:
	ldh [rOBP0], a
	call $0181
	xor a
	ldh [$ba], a
	ld a, [wcd3d]
	ld [wd0e3], a
	call $1aab
	ld hl, wcd68
	ld de, wcf45
	ld bc, $0006
	call $01bb
	ld a, [wcd3e]
	ld [wd0e3], a
	jp $1aab


Call_010_6981:
	ld a, $d0
	ldh [rOBP1], a
	ld b, $1c
	ld hl, $5c30
	jp $3620


	ld hl, wd11d
	ld de, wcee4
	ld bc, $0006
	call $01bb
	ld hl, wd806
	ld de, wd11d
	ld bc, $0006
	call $01bb
	ld hl, wcee4
	ld de, wd806
	ld bc, $0006
	jp $01bb


	xor a
	call $0b3c
	ld hl, wd6af
	res 6, [hl]
	ret


	ld a, $ab
	ldh [rLCDC], a
	ld a, $50
	ldh [$b0], a
	ld a, $7e
	ldh [rWX], a
	ldh [$ae], a
	xor a
	ldh [$ba], a
	ld hl, wc3a5
	ld b, $06
	ld c, $09
	call $03d2
	call Call_010_7f68
	ld b, $98
	call $0386
	call $03bf
	ld a, [wcd3d]
	call Call_010_6d1a
	ld a, $7e

jr_010_69e9:
	push af
	call $0b31
	pop af
	ldh [rWX], a
	ldh [$ae], a
	dec a
	dec a
	and a
	jr nz, jr_010_69e9

	call Call_010_6907
	ld a, $ad
	call Call_010_6e5d
	ld a, $aa
	call Call_010_6e5d
	ld a, [wcd3d]
	call $2dc7
	xor a
	ldh [$ba], a
	ret


	call Call_010_690c
	ld b, $98
	call $0386
	ld b, $08
	call $3e1f
	ld hl, $9c8c
	call Call_010_6c24
	ld a, $a0
	ldh [$ae], a
	call $0b31
	ld a, $8b
	ldh [rLCDC], a
	ld hl, wc3ce
	ld b, $07
	call Call_010_702f
	call Call_010_68fc
	ld a, $8d
	call $0e45
	ld c, $14

jr_010_6a3e:
	ldh a, [$ae]
	add $04
	ldh [$ae], a
	dec c
	jr nz, jr_010_6a3e

	ret


	ld a, $ab
	call Call_010_6e5d
	ld c, $0a
	call $3781
	ld a, $e4
	ldh [rOBP0], a

Call_010_6a56:
	xor a
	ld [wd07c], a
	ld bc, $2060

jr_010_6a5d:
	push bc
	xor a
	ld de, $6aa4
	call $3ae1
	ld a, [wd07c]
	xor $01
	ld [wd07c], a
	add $7e
	ld hl, wc302
	ld de, $0004
	ld c, e

jr_010_6a76:
	ld [hl], a
	add hl, de
	dec c
	jr nz, jr_010_6a76

	call $3e07
	pop bc
	ld a, c
	add $04
	ld c, a
	cp $a0
	jr nc, jr_010_6a8e

	ld a, $8c
	call $0e45
	jr jr_010_6a5d

jr_010_6a8e:
	call $0188
	ld a, $01
	ldh [$ba], a
	call $03bf
	ld b, $98
	call $0386
	call $3e07
	xor a
	ldh [$ba], a
	ret


	ld a, [hl]
	nop
	ld a, [hl]
	jr nz, @+$80

	ld b, b
	ld a, [hl]
	ld h, b
	ld a, $ac
	call Call_010_6e5d
	call Call_010_6d3e
	ld hl, wc46d
	ld b, $06
	ld c, $09
	call $03d2
	call Call_010_7fa6
	call Call_010_68fc
	ld a, $01
	ldh [$ba], a
	ld a, [wcd3e]
	call Call_010_6d1a
	ld a, $ad
	call Call_010_6e5d
	ld a, $01
	ldh [$ba], a
	ld a, [wcd3e]
	call $2dc7
	call Call_010_68f7
	ld hl, wc46d
	ld bc, $070b
	call $0374
	jp Jump_010_6e08


	call Call_010_6b87
	ld a, $01
	ld [wd067], a
	ld a, $e4
	ldh [rOBP0], a
	ld a, $54
	ld [wd05e], a
	ld a, $1c
	ld [wd05f], a
	ld a, [wcd59]
	ld [wcd58], a
	call Call_010_6c7b
	call Call_010_6ba3
	call Call_010_68fc
	call Call_010_6c15
	ld hl, $9c8c
	call Call_010_6c24
	ld b, $06
	call Call_010_6c3b
	ld a, $01
	ldh [$ba], a
	call Call_010_6c15
	ld b, $04
	call Call_010_6c3b
	call Call_010_6bd2
	ld b, $06
	call Call_010_6c3b
	xor a
	ldh [$ba], a
	call Call_010_6c9b
	jp $0188


	call Call_010_6b87
	xor a
	ld [wd067], a
	ld a, $64
	ld [wd05e], a
	ld a, $44
	ld [wd05f], a
	ld a, [wcd5a]
	ld [wcd58], a
	call Call_010_6c7b
	call Call_010_6bd2
	call Call_010_68fc
	call Call_010_6c15
	ld hl, $9c94
	call Call_010_6c24
	call Call_010_6c9b
	ld b, $06
	call Call_010_6c3b
	ld a, $01
	ldh [$ba], a
	call Call_010_6c15
	ld b, $04
	call Call_010_6c3b
	call Call_010_6ba3
	ld b, $06
	call Call_010_6c3b
	xor a
	ldh [$ba], a
	jp $0188


Call_010_6b87:
	ld a, $01
	ldh [$ba], a
	call $03bf
	xor a
	ldh [$ba], a
	call Call_010_6981
	call $0b31
	ld a, $ab
	ldh [rLCDC], a
	xor a
	ldh [$ae], a
	ld a, $90
	ldh [$b0], a
	ret


Call_010_6ba3:
	call Call_010_690c
	ld hl, wc3fb
	ld a, $5d
	ld [hli], a
	ld a, $5e
	ld c, $08

jr_010_6bb0:
	ld [hli], a
	dec c
	jr nz, jr_010_6bb0

	ld hl, wc3e1
	ld b, $06
	call Call_010_702f
	ld hl, wc438
	ld b, $02
	ld c, $05
	call $03d2
	ld hl, wc461
	ld de, wd11d
	call $0405
	jp $0b31


Call_010_6bd2:
	call Call_010_690c
	ld hl, wc3f0
	ld a, $5e
	ld c, $0e

jr_010_6bdc:
	ld [hli], a
	dec c
	jr nz, jr_010_6bdc

	ld a, $5f
	ld [hl], a
	ld de, $0014
	add hl, de
	ld a, $61
	ld [hl], a
	add hl, de
	ld [hl], a
	add hl, de
	ld [hl], a
	add hl, de
	ld [hl], a
	add hl, de
	ld a, $60
	ld [hld], a
	ld a, $5d
	ld [hl], a
	ld hl, wc447
	ld b, $06
	call Call_010_702f
	ld hl, wc468
	ld b, $02
	ld c, $05
	call $03d2
	ld hl, wc491
	ld de, wd806
	call $0405
	jp $0b31


Call_010_6c15:
	call Call_010_690c
	ld hl, wc3f0
	ld a, $5e
	ld c, $14

jr_010_6c1f:
	ld [hli], a
	dec c
	jr nz, jr_010_6c1f

	ret


Call_010_6c24:
	push hl
	ld hl, wc3f0
	call $28b7
	pop hl
	ld a, h
	ldh [$d2], a
	ld a, l
	ldh [$d1], a
	ld a, $02
	ldh [$d0], a
	ld c, $0a
	jp $3781


Call_010_6c3b:
jr_010_6c3b:
	ld a, [wd067]
	ld e, a
	ld d, $08

jr_010_6c41:
	ld a, e
	dec a
	jr z, jr_010_6c4b

	ldh a, [$ae]
	sub $02
	jr jr_010_6c4f

jr_010_6c4b:
	ldh a, [$ae]
	add $02

jr_010_6c4f:
	ldh [$ae], a
	call $0b31
	dec d
	jr nz, jr_010_6c41

	call Call_010_6c5e
	dec b
	jr nz, jr_010_6c3b

	ret


Call_010_6c5e:
	push de
	push bc
	push hl
	ldh a, [rBGP]
	xor $3c
	ldh [rBGP], a
	ld hl, wc302
	ld de, $0004
	ld c, $14

jr_010_6c6f:
	ld a, [hl]
	xor $40
	ld [hl], a
	add hl, de
	dec c
	jr nz, jr_010_6c6f

	pop hl
	pop bc
	pop de
	ret


Call_010_6c7b:
	ld b, $1c
	ld hl, $5d46
	call $3620
	call Call_010_6cce

Call_010_6c86:
	ld hl, wc300
	ld c, $14

jr_010_6c8b:
	ld a, [wd05f]
	add [hl]
	ld [hli], a
	ld a, [wd05e]
	add [hl]
	ld [hli], a
	inc hl
	inc hl
	dec c
	jr nz, jr_010_6c8b

	ret


Call_010_6c9b:
	ld a, [wd067]
	and a
	jr z, jr_010_6cac

	ld bc, $0400
	call Call_010_6cb5
	ld bc, $000a
	jr jr_010_6cb5

jr_010_6cac:
	ld bc, $00f6
	call Call_010_6cb5
	ld bc, $fc00

Call_010_6cb5:
jr_010_6cb5:
	ld a, b
	ld [wd05e], a
	ld a, c
	ld [wd05f], a
	ld d, $04

jr_010_6cbf:
	call Call_010_6c86
	call Call_010_6c5e
	ld c, $08
	call $3781
	dec d
	jr nz, jr_010_6cbf

	ret


Call_010_6cce:
	ld hl, $6cea
	ld c, $04
	xor a

jr_010_6cd4:
	push bc
	ld e, [hl]
	inc hl
	ld d, [hl]
	inc hl
	ld c, [hl]
	inc hl
	ld b, [hl]
	inc hl
	push hl
	inc a
	push af
	call $3ae1
	pop af
	pop hl
	pop bc
	dec c
	jr nz, jr_010_6cd4

	ret


	ld a, [$086c]
	ld [$6d02], sp
	jr jr_010_6cfa

	ld a, [bc]
	ld l, l
	ld [$1218], sp
	ld l, l
	jr jr_010_6d12

jr_010_6cfa:
	jr c, jr_010_6d0c

	add hl, sp
	db $10
	ld a, [hld]
	db $10
	dec sp
	db $10
	add hl, sp
	jr nc, @+$3a

	jr nc, jr_010_6d42

	jr nc, @+$3c

	jr nc, jr_010_6d45

	ld d, b

jr_010_6d0c:
	dec sp
	ld d, b
	jr c, jr_010_6d60

	add hl, sp
	ld d, b

jr_010_6d12:
	dec sp
	ld [hl], b
	ld a, [hld]
	ld [hl], b
	add hl, sp
	ld [hl], b
	jr c, jr_010_6d8a

Call_010_6d1a:
	ld [wcf78], a
	ld [wd092], a
	ld [wcf17], a
	ld b, $0b
	ld c, $00
	call $3e1f
	ldh a, [$ba]
	xor $01
	ldh [$ba], a
	call $2f2e
	ld hl, wc3cf
	call $2d7a
	ld c, $0a
	jp $3781


Call_010_6d3e:
	ld a, $01
	ldh [$ba], a

jr_010_6d42:
	call $03bf

jr_010_6d45:
	ld a, $e3
	ldh [rLCDC], a
	ld a, $07
	ldh [rWX], a
	xor a
	ldh [$b0], a
	ld a, $90
	ldh [$ae], a
	ret


Jump_010_6d55:
	ld c, $32
	call $3781

jr_010_6d5a:
	call $0b31
	ldh a, [rWX]
	inc a

jr_010_6d60:
	inc a
	ldh [rWX], a
	cp $a1
	jr nz, jr_010_6d5a

	call Call_010_690c
	ld c, $0a
	call $3781
	ld a, $07
	ldh [rWX], a
	ret


	ld hl, $6d82
	call $3c79
	ld c, $c8
	call $3781
	jp Jump_010_6d55


	ld bc, wcf45
	nop
	jp z, $3c7f

	inc l

jr_010_6d8a:
	ld c, a
	ld d, b
	ld bc, wd806
	nop
	add $7f
	res 6, a
	call nz, wdad7
	rst $08
	cp h
	ret nz

	ld d, a
	ld hl, $6dad
	call $3c79
	call Call_010_6907
	ld hl, $6dc1
	call $3c79
	jp Jump_010_6907


	nop
	ld d, d
	ld h, $4f
	ld d, b
	ld bc, wcf45
	nop
	db $dd
	ld a, a
	or l
	cp b
	rst $18
	ret nz

	or [hl]
	call c, wc6d8
	ld d, a
	ld bc, wd806
	nop
	jp z, $504f

	ld bc, wcd68
	nop
	db $dd
	ld a, a
	cp b
	jp c, $bdcf

	ld d, a
	ld hl, $6de8
	call $3c79
	call Call_010_6907
	ld hl, $6dfa
	call $3c79
	call Call_010_6907
	jp Jump_010_6d55


	ld bc, wd806
	nop
	ld h, $4f
	push bc
	ld a, [hli]
	ret c

	db $dd
	ld a, a
	or l
	cp h
	ret nc

	push bc
	ld h, $d7
	ld d, a
	ld bc, wcd68
	nop
	db $dd
	ld c, a
	or l
	cp b
	rst $18
	jp wcfb7


	cp l
	ld d, a

Jump_010_6e08:
	ld hl, $6e11
	call $3c79
	jp Jump_010_6907


	ld bc, wcd68
	nop
	db $dd
	ld c, a
	or [hl]
	call c, $26b2
	rst $18
	jp wdfd4


	jp $30b8


	cp e
	or d
	ld d, a
	ld hl, $6e37
	call $3c79
	call Call_010_6907
	ld hl, $6e4a
	call $3c79
	jp Jump_010_6907


	nop
	cp d
	jp c, wd7b6

	ld c, a
	ld d, b
	ld bc, wd806
	nop
	ret


	ld d, b
	ld bc, wcd68
	nop
	call nz, $0057
	ld d, d
	ret


	ld d, b
	ld bc, wcf45
	nop
	db $dd
	ld c, a
	cp d
	or e
	or [hl]
	sbc $bc
	rst $08
	cp l
	rst $20
	ld d, a

Call_010_6e5d:
	ld [wd059], a
	xor a
	ld [wcc5b], a
	ld a, $08
	jp $3e9d


	ld a, $01
	ldh [$ba], a
	xor a
	ldh [$b4], a
	call Call_010_7077
	call Call_010_6e85
	call $0b5a
	xor a
	ldh [$ae], a
	ldh [$ba], a
	call $0188
	call $0b31
	ret


Call_010_6e85:
	ld b, $07
	call $3e1f
	ld a, $e4
	ldh [rBGP], a
	ldh [rOBP0], a
	ldh [rOBP1], a
	xor a
	ldh [$ae], a
	ld b, $03
	call Call_010_702c
	ld a, $08
	ld [wd05e], a
	ld a, $50
	ld [wd05f], a
	ld bc, $0606
	call Call_010_6fb4
	ld de, $28ff
	call Call_010_6ffb
	ret c

	ld a, $b9
	call $0e45
	xor a
	ld [wd07c], a
	ld de, $710f
	call Call_010_6f80
	ld a, $ba
	call $0e45
	ld de, $711a
	call Call_010_6f80
	ld c, $0a
	call $0359
	ret c

	ld a, $b9
	call $0e45
	ld de, $710f
	call Call_010_6f80
	ld a, $ba
	call $0e45
	ld de, $711a
	call Call_010_6f80
	ld c, $1e
	call $0359
	ret c

	ld b, $04
	call Call_010_702c
	ld a, $bb
	call $0e45
	ld de, $0401
	call Call_010_6ffb
	ld c, $1e
	call $0359
	ret c

	ld b, $05
	call Call_010_702c
	ld a, $bc
	call $0e45
	ld de, $0800
	call Call_010_6ffb
	ld a, $b9
	call $0e45
	ld a, $24
	ld [wd07c], a
	ld de, $7125
	call Call_010_6f80
	ld c, $1e
	call $0359
	ret c

	ld de, $0401
	call Call_010_6ffb
	ld b, $03
	call Call_010_702c
	ld c, $3c
	call $0359
	ret c

	ld a, $b9
	call $0e45
	xor a
	ld [wd07c], a
	ld de, $7130
	call Call_010_6f80
	ld a, $b9
	call $0e45
	ld de, $713b
	call Call_010_6f80
	ld c, $14
	call $0359
	ret c

	ld a, $24
	ld [wd07c], a
	ld de, $7146
	call Call_010_6f80
	ld c, $1e
	call $0359
	ret c

	ld a, $b8
	call $0e45
	ld a, $48
	ld [wd07c], a
	ld de, $714f
	call Call_010_6f80
	ld c, $50
	jp $0359


Call_010_6f80:
jr_010_6f80:
	ld a, [de]
	cp $50
	ret z

	ld [wd05f], a
	inc de
	ld a, [de]
	ld [wd05e], a
	push de
	ld c, $24
	call Call_010_6f9b
	ld c, $05
	call $3781
	pop de
	inc de
	jr jr_010_6f80

Call_010_6f9b:
	ld hl, wc300
	ld a, [wd07c]
	ld d, a

jr_010_6fa2:
	ld a, [wd05f]
	add [hl]
	ld [hli], a
	ld a, [wd05e]
	add [hl]
	ld [hli], a
	ld a, d
	ld [hli], a
	inc hl
	inc d
	dec c
	jr nz, jr_010_6fa2

	ret


Call_010_6fb4:
	ld hl, wc300
	ld d, $00

jr_010_6fb9:
	push bc
	ld a, [wd05f]
	ld e, a

jr_010_6fbe:
	ld a, e
	add $08
	ld e, a
	ld [hli], a
	ld a, [wd05e]
	ld [hli], a
	ld a, d
	ld [hli], a
	ld a, $80
	ld [hli], a
	inc d
	dec c
	jr nz, jr_010_6fbe

	ld a, [wd05e]
	add $08
	ld [wd05e], a
	pop bc
	dec b
	jr nz, jr_010_6fb9

	ret


Call_010_6fdd:
	ld hl, $9c00
	ld bc, $0240
	jr jr_010_6feb

Call_010_6fe5:
	ld hl, wc3f0
	ld bc, $00c8

jr_010_6feb:
	ld [hl], $00
	inc hl
	dec bc
	ld a, b
	or c
	jr nz, jr_010_6feb

	ret


Call_010_6ff4:
Jump_010_6ff4:
	ld a, $01

jr_010_6ff6:
	ld [hli], a
	dec c
	jr nz, jr_010_6ff6

	ret


Call_010_6ffb:
jr_010_6ffb:
	ld a, e
	cp $ff
	jr z, jr_010_700a

	cp $01
	jr z, jr_010_701a

	ldh a, [$ae]
	dec a
	dec a
	jr jr_010_701e

jr_010_700a:
	push de
	ld a, $02
	ld [wd05e], a
	xor a
	ld [wd05f], a
	ld c, $24
	call Call_010_6f9b
	pop de

jr_010_701a:
	ldh a, [$ae]
	inc a
	inc a

jr_010_701e:
	ldh [$ae], a
	push de
	ld c, $02
	call $0359
	pop de
	ret c

	dec d
	jr nz, jr_010_6ffb

	ret


Call_010_702c:
	ld hl, wc439

Call_010_702f:
	ld c, $00
	ld a, $31
	jp $3e9d


	ld a, $33
	call $3e9d
	ld a, b
	jp $0e45


Call_010_703f:
	ld hl, $7298
	ld de, $9000
	ld bc, $0600
	ld a, $10
	call $028c
	ld hl, $7158
	ld de, $9600
	ld bc, $0140
	ld a, $10
	call $028c
	ld hl, $7158
	ld de, $8800
	ld bc, $0140
	ld a, $10
	call $028c
	ld hl, $7898
	ld de, $8000
	ld bc, $06c0
	ld a, $10
	jp $028c


Call_010_7077:
	ld b, $0c
	call $3e1f
	ld b, $01
	ld hl, $497d
	call $3620
	ld a, $e4
	ldh [rBGP], a
	ld c, $b4
	call $3781
	call $03bf
	call $0167
	xor a
	ld [wd036], a
	call Call_010_70d9
	call Call_010_703f
	call $0181
	ld hl, $ff40
	res 5, [hl]
	set 3, [hl]
	ld c, $40
	call $3781
	ld b, $1c
	ld hl, $4569
	call $3620
	push af
	call Call_010_70fc
	pop af
	jr c, jr_010_70c0

	ld c, $28
	call $3781

jr_010_70c0:
	ld a, $1f
	ld [wc0ef], a
	ld [wc0f0], a
	ld a, $dc
	ld [wc0ee], a
	call $0e45
	call Call_010_6fe5
	call $0188
	jp $3e07


Call_010_70d9:
	call Call_010_6fdd
	ld hl, wc3a0
	ld c, $50
	call Call_010_6ff4
	ld hl, wc4b8
	ld c, $50
	call Call_010_6ff4
	ld hl, $9c00
	ld c, $80
	call Call_010_6ff4
	ld hl, $9dc0
	ld c, $80
	jp Jump_010_6ff4


Call_010_70fc:
	ld hl, wc483
	ld de, $7105
	jp $0405


	db $67, $68, $69, $6a, $6b, $6c, $50

	nop
	nop
	ld d, b

	db $00, $00, $fe, $02, $ff, $02, $01, $02, $02, $02, $50, $00, $00, $fe, $fe, $ff
	db $fe, $01, $fe, $02, $fe, $50, $00, $00, $f4, $06, $f8, $06, $08, $06, $0c, $06
	db $50, $00, $00, $f8, $fc, $fc, $fc, $04, $fc, $08, $fc, $50, $00, $00, $f8, $04
	db $fc, $04, $04, $04, $08, $04, $50, $00, $00, $02, $00, $02, $00, $00, $00, $50
	db $f8, $f0, $f9, $f2, $fa, $f4, $fc, $f6, $50

	INCBIN "gfx/auto/image_010_7158.2bpp"

	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

Call_010_7f68:
	ld hl, wc3a6
	ld de, $7fe4
	call $0405
	ld a, [wcd3d]
	ld [wd0e3], a
	ld a, $3a
	call $3e9d
	ld hl, wc3aa
	ld de, wd0e3
	ld bc, $8103
	call $3c8f
	ld hl, wc3ce
	ld de, wcf45
	call $0405
	ld hl, wc3f9
	ld de, wcd41
	call $0405
	ld hl, wc421
	ld de, wcd47
	ld bc, $8205
	jp $3c8f


Call_010_7fa6:
	ld hl, wc46e
	ld de, $7fe4
	call $0405
	ld a, [wcd3e]
	ld [wd0e3], a
	ld a, $3a

Call_010_7fb7:
	call $3e9d
	ld hl, wc472

Call_010_7fbd:
	ld de, wd0e3

Jump_010_7fc0:
	ld bc, $8103

Jump_010_7fc3:
	call $3c8f

Call_010_7fc6:
Jump_010_7fc6:
	ld hl, wc496

Call_010_7fc9:
Jump_010_7fc9:
	ld de, wcd68
	call $0405
	ld hl, wc4c1
	ld de, wcd49
	call $0405
	ld hl, wc4e9
	ld de, wcd4f
	ld bc, $8205
	jp $3c8f


	ld a, d
	ld a, d
	ld [hl], h
	ld a, [c]

Call_010_7fe8:
	ld c, [hl]
	ld c, [hl]
	or l
	call nc, $4ef3
	ld [hl], e
	ld [hl], h
	ld a, [c]
	ld d, b
	ld hl, $ad91
	ld bc, $2545
	ld sp, $a565
	nop
	rla
	add hl, bc
	inc b
	db $cb
