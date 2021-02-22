; Disassembly of "pokemon-red-jp.gb"

SECTION "ROM Bank $00f", ROMX[$4000], BANK[$f]

	db $18, $19, $1c, $2e, $2f, $31, $38, $39, $40, $41, $42, $43, $4f, $52, $54, $55
	db $ff, $28, $29, $ff, $01, $0a, $0b, $0c, $0d, $0e, $0f, $12, $13, $14, $15, $16
	db $17, $1a, $20, $32, $33, $34, $35, $36, $37, $3a, $3b, $3c, $3d, $3e, $3f, $ff
	db $03, $07, $08, $10, $1d, $1e, $2c, $30, $4d, $51, $ff, $03, $07, $08, $10, $11
	db $1d, $1e, $27, $28, $29, $2b, $2c, $2d, $30, $1b, $2a, $ff

Call_00f_404c:
	call Call_00f_6f82
	ld a, $01
	ld [wd0ea], a
	call $3130
	ld hl, wc405
	ld bc, $0307
	call $0374
	call $0167
	call $36ca
	call Call_00f_7149
	ld hl, $9800
	ld bc, $0400

jr_00f_406f:
	ld a, $7f
	ld [hli], a
	dec bc
	ld a, b
	or c
	jr nz, jr_00f_406f

	ld hl, wc3a0
	ld de, $9800
	ld b, $12

jr_00f_407f:
	ld c, $14

jr_00f_4081:
	ld a, [hli]
	ld [de], a
	inc e
	dec c
	jr nz, jr_00f_4081

	ld a, $0c
	add e
	ld e, a
	jr nc, jr_00f_408e

	inc d

jr_00f_408e:
	dec b
	jr nz, jr_00f_407f

	call $0181
	ld a, $90
	ldh [$b0], a
	ldh [rWY], a
	xor a
	ldh [$d7], a
	ldh [$af], a
	dec a
	ld [wcfb2], a
	call $3e07
	xor a
	ldh [$ba], a
	ld b, $70
	ld c, $90
	ld a, c
	ldh [$ae], a
	call $0b31
	ld a, $e4
	ldh [rBGP], a
	ldh [rOBP0], a
	ldh [rOBP1], a

jr_00f_40bb:
	ld h, b
	ld l, $40
	call Call_00f_4111
	inc b
	inc b
	ld h, $00
	ld l, $60
	call Call_00f_4111
	call Call_00f_4100
	ld a, c
	ldh [$ae], a
	dec c
	dec c
	jr nz, jr_00f_40bb

	ld a, $01
	ldh [$ba], a
	ld a, $31
	ld [$ffe1], a
	ld hl, wc405
	ld a, $01
	call $3e9d
	xor a
	ldh [$b0], a
	ldh [rWY], a
	inc a
	ldh [$ba], a
	call $3e07
	ld b, $01
	call $3e1f
	call $0193
	ld hl, $7d87
	ld b, $16
	jp $3620


Call_00f_4100:
	push bc
	ld hl, wOAMBuffer + $01
	ld c, $15
	ld de, $0004

jr_00f_4109:
	dec [hl]
	dec [hl]
	add hl, de
	dec c
	jr nz, jr_00f_4109

	pop bc
	ret


Call_00f_4111:
jr_00f_4111:
	ldh a, [rLY]
	cp l
	jr nz, jr_00f_4111

	ld a, h
	ldh [rSCX], a

jr_00f_4119:
	ldh a, [rLY]
	cp h
	jr z, jr_00f_4119

	ret


Call_00f_411f:
	xor a
	ld [wd035], a
	ld [wccf5], a
	ld [wcd65], a
	inc a
	ld [wd0e2], a
	ld hl, wd824
	ld bc, $002b
	ld d, $03

jr_00f_4135:
	inc d
	ld a, [hli]
	or [hl]
	jr nz, jr_00f_413d

	add hl, bc
	jr jr_00f_4135

jr_00f_413d:
	ld a, d
	ld [wcc3e], a
	ld a, [wd034]
	dec a
	call nz, Call_00f_49f8
	ld c, $28
	call $3781
	call $3761

jr_00f_4150:
	call Call_00f_4ba3
	ld a, d
	and a
	jp z, Jump_00f_48e3

	call $376d
	ld a, [wd037]
	and a
	jp z, Jump_00f_41cc

jr_00f_4162:
	call Call_00f_500f
	ret c

	ld a, [wcd65]
	and a
	jr z, jr_00f_4162

	ld a, [wd983]
	and a
	jr nz, jr_00f_417b

	call $376d
	ld hl, $41a9
	jp $3c79


jr_00f_417b:
	ld hl, $7613
	ld b, $01
	call $3620
	ld a, [wcfe2]
	add a
	ld b, a
	jp c, Jump_00f_4221

	ld a, [wcce9]
	and a
	jr z, jr_00f_4195

	srl b
	srl b

jr_00f_4195:
	ld a, [wcce8]
	and a
	jr z, jr_00f_41a1

	sla b
	jr nc, jr_00f_41a1

	ld b, $ff

jr_00f_41a1:
	call $3e8c
	cp b
	jr nc, jr_00f_4150

	jr jr_00f_4221

	nop
	add b
	sub h
	add d
	xor e
	adc h
	ld [hl], d
	ld b, c
	xor e
	ld b, e
	db $e3
	xor e
	rst $20
	ld d, c
	adc d
	sbc e
	jp hl


	ret c

	ld a, a
	inc e
	db $e3
	and [hl]
	db $dd
	ld c, a
	ld l, $de
	inc a
	ld a, a
	push bc
	add hl, hl
	rst $08
	cp h
	ret nz

	rst $20
	ld e, b

Jump_00f_41cc:
	xor a
	ld [wcf79], a

jr_00f_41d0:
	call Call_00f_4bb7
	jr nz, jr_00f_41db

	ld hl, wcf79
	inc [hl]
	jr jr_00f_41d0

jr_00f_41db:
	ld a, [wcf79]
	ld [wcc2f], a
	inc a
	ld hl, wd123
	ld c, a
	ld b, $00
	add hl, bc
	ld a, [hl]
	ld [wcf78], a
	ld [wcfc0], a
	call $376d
	ld hl, wc405
	ld a, $09
	call Call_00f_49c9
	call $3761
	ld a, [wcf79]
	ld c, a
	ld b, $01
	push bc
	ld hl, wd035
	ld a, $10
	call $3e9d
	ld hl, wccf5
	pop bc
	ld a, $10
	call $3e9d
	call Call_00f_4cfc
	call $376d
	call Call_00f_4ded
	jr jr_00f_426d

Jump_00f_4221:
jr_00f_4221:
	call $376d
	ld a, [wd0f0]
	cp $04
	ld hl, $4248
	jr nz, jr_00f_4235

	xor a
	ld [wcf06], a
	ld hl, $425b

jr_00f_4235:
	call $3c79
	ld a, $97
	call $3788
	xor a
	ldh [$f3], a
	ld hl, $52f0
	ld b, $1e
	jp $3620


	nop
	call nc, $b2be
	ret


	ld d, b
	ld bc, wcfc1
	nop
	jp z, wc67f

	add hl, hl
	jr nc, @-$42

	ret nz

	rst $20
	ld e, b
	nop
	jp wc9b7


	ld d, b
	ld bc, wcfc1
	nop
	jp z, wc67f

	add hl, hl
	jr nc, @-$42

	ret nz

	rst $20
	ld e, b

Jump_00f_426d:
jr_00f_426d:
	call Call_00f_4ea1
	ld hl, wcffc
	ld a, [hli]
	or [hl]
	jp z, Jump_00f_479a

	ld hl, wcfcd
	ld a, [hli]
	or [hl]
	jp z, Jump_00f_458e

	call $3761
	xor a
	ld [wd0e2], a
	ld a, [wd040]
	and $60
	jr nz, jr_00f_42da

	ld hl, wd044
	res 3, [hl]
	ld hl, wd03f
	res 3, [hl]
	bit 4, [hl]
	jr nz, jr_00f_42da

	bit 1, [hl]
	jr nz, jr_00f_42da

	call Call_00f_500f
	ret c

	ld a, [wd055]
	and a
	ret nz

	ld a, [wcfff]
	and $27
	jr nz, jr_00f_42da

	ld a, [wd03f]
	and $21
	jr nz, jr_00f_42da

	ld a, [wd044]
	bit 5, a
	jr nz, jr_00f_42da

	ld a, [wcd65]
	and a
	jr nz, jr_00f_42da

	ld a, $01
	ld [wd059], a
	xor a
	ld [wccdb], a
	call Call_00f_5377
	push af
	call $376d
	call Call_00f_4eb8
	pop af
	jr nz, jr_00f_426d

jr_00f_42da:
	call Call_00f_56a9
	ld a, [wd0f0]
	cp $04
	jr nz, jr_00f_431c

	ld a, [wcc3e]
	cp $0f
	jp z, Jump_00f_4221

	cp $0e
	jr z, jr_00f_431c

	sub $04
	jr c, jr_00f_431c

	cp $0e
	jr z, jr_00f_431c

	ld a, [wd03f]
	bit 5, a
	jr z, jr_00f_4311

	ld a, [wcc2e]
	ld hl, wd003
	ld c, a
	ld b, $00
	add hl, bc
	ld a, [hl]
	cp $76
	jr nz, jr_00f_4311

	ld [wccdc], a

jr_00f_4311:
	ld hl, $6abc
	ld b, $0e
	call $3620
	jp Jump_00f_4374


jr_00f_431c:
	ld a, [wccdc]
	cp $62
	jr nz, jr_00f_432d

	ld a, [wccdd]
	cp $62
	jr z, jr_00f_434b

	jp Jump_00f_43b4


jr_00f_432d:
	ld a, [wccdd]
	cp $62
	jr z, jr_00f_4374

	ld a, [wccdc]
	cp $44
	jr nz, jr_00f_4344

	ld a, [wccdd]
	cp $44
	jr z, jr_00f_434b

	jr jr_00f_4374

jr_00f_4344:
	ld a, [wccdd]
	cp $44
	jr z, jr_00f_43b4

jr_00f_434b:
	ld de, wd010
	ld hl, wcfe1
	ld c, $02
	call $3ad8
	jr z, jr_00f_435c

	jr nc, jr_00f_43b4

	jr jr_00f_4374

jr_00f_435c:
	ldh a, [$aa]
	cp $02
	jr z, jr_00f_436b

	call Call_00f_718d
	cp $80
	jr c, jr_00f_43b4

	jr jr_00f_4374

jr_00f_436b:
	call Call_00f_718d
	cp $80
	jr c, jr_00f_4374

	jr jr_00f_43b4

Jump_00f_4374:
jr_00f_4374:
	ld a, $01
	ldh [$f3], a
	ld hl, $689f
	ld b, $0e
	call $3620
	jr c, jr_00f_438f

	call Call_00f_699e
	ld a, [wd055]
	and a
	ret nz

	ld a, b
	and a
	jp z, Jump_00f_479a

jr_00f_438f:
	call Call_00f_43f4
	jp z, Jump_00f_458e

	call Call_00f_4eb8
	call Call_00f_578f
	ld a, [wd055]
	and a
	ret nz

	ld a, b
	and a
	jp z, Jump_00f_458e

	call Call_00f_43f4
	jp z, Jump_00f_479a

	call Call_00f_4eb8
	call Call_00f_4578
	jp Jump_00f_426d


Jump_00f_43b4:
jr_00f_43b4:
	call Call_00f_578f
	ld a, [wd055]
	and a
	ret nz

	ld a, b
	and a
	jp z, Jump_00f_458e

	call Call_00f_43f4
	jp z, Jump_00f_479a

	call Call_00f_4eb8
	ld a, $01
	ldh [$f3], a
	ld hl, $689f
	ld b, $0e
	call $3620
	jr c, jr_00f_43e5

	call Call_00f_699e
	ld a, [wd055]
	and a
	ret nz

	ld a, b
	and a
	jp z, Jump_00f_479a

jr_00f_43e5:
	call Call_00f_43f4
	jp z, Jump_00f_458e

	call Call_00f_4eb8
	call Call_00f_4578
	jp Jump_00f_426d


Call_00f_43f4:
	ld hl, wcffc
	ld de, wcfff
	ldh a, [$f3]
	and a
	jr z, jr_00f_4405

	ld hl, wcfcd
	ld de, wcfd0

jr_00f_4405:
	ld a, [de]
	and $18
	jr z, jr_00f_4426

	push hl
	ld hl, $4465
	ld a, [de]
	and $10
	jr z, jr_00f_4416

	ld hl, $447a

jr_00f_4416:
	call $3c79
	xor a
	ld [wcc5b], a
	ld a, $ba
	call Call_00f_71f9
	pop hl
	call Call_00f_44a6

jr_00f_4426:
	ld de, wd040
	ldh a, [$f3]
	and a
	jr z, jr_00f_4431

	ld de, wd045

jr_00f_4431:
	ld a, [de]
	add a
	jr nc, jr_00f_4458

	push hl
	ldh a, [$f3]
	push af
	xor $01
	ldh [$f3], a
	xor a
	ld [wcc5b], a
	ld a, $47
	call Call_00f_71f9
	pop af
	ldh [$f3], a
	pop hl
	call Call_00f_44a6
	call Call_00f_450c
	push hl
	ld hl, $4490
	call $3c79
	pop hl

jr_00f_4458:
	ld a, [hli]
	or [hl]
	ret nz

	call Call_00f_4eb8
	ld c, $14
	call $3781
	xor a
	ret


	db $00, $5a, $ca, $4f, $34, $b8, $c9, $7f, $0f, $a0, $e3, $0b, $dd, $7f, $b3, $b9
	db $c3, $b2, $d9, $e7, $58

	nop
	ld e, d
	jp z, wd44f

	cp c
	inc [hl]
	ret


	ld a, a
	rrca
	and b
	db $e3
	dec bc
	db $dd
	ld a, a
	or e
	cp c
	jp wd9b2


	rst $20
	ld e, b
	nop
	call nc, wd834
	daa
	ld h, $7f
	ld e, d
	ret


	ld c, a
	ret nz

	or d
	ret c

	ld [c], a
	cp b
	db $dd
	ld a, a
	or e
	ld a, [hld]
	or e
	rst $20
	ld e, b

Call_00f_44a6:
	push hl
	push hl
	ld bc, $000e
	add hl, bc
	ld a, [hli]
	ld [wcee5], a
	ld b, a
	ld a, [hl]
	ld [wcee4], a
	ld c, a
	srl b
	rr c
	srl b
	rr c
	srl c
	srl c
	ld a, c
	and a
	jr nz, jr_00f_44c7

	inc c

jr_00f_44c7:
	ld hl, wd041
	ld de, wd049
	ldh a, [$f3]
	and a
	jr z, jr_00f_44d8

	ld hl, wd046
	ld de, wd04e

jr_00f_44d8:
	bit 0, [hl]
	jr z, jr_00f_44e8

	ld a, [de]
	inc a
	ld [de], a

Call_00f_44df:
	ld hl, $0000

jr_00f_44e2:
	add hl, bc
	dec a
	jr nz, jr_00f_44e2

	ld b, h
	ld c, l

jr_00f_44e8:
	pop hl
	inc hl
	ld a, [hl]
	ld [wcee6], a
	sub c
	ld [hld], a
	ld [wcee8], a
	ld a, [hl]
	ld [wcee7], a
	sbc b
	ld [hl], a
	ld [wcee9], a
	jr nc, jr_00f_4507

	xor a
	ld [hli], a
	ld [hl], a
	ld [wcee8], a
	ld [wcee9], a

jr_00f_4507:
	call Call_00f_455f
	pop hl
	ret


Call_00f_450c:
	push hl
	ld hl, wcfdb
	ldh a, [$f3]
	and a
	jr z, jr_00f_4518

	ld hl, wd00a

jr_00f_4518:
	ld a, [hli]
	ld [wcee5], a
	ld a, [hl]
	ld [wcee4], a
	ld de, $fff2
	add hl, de
	ld a, [hl]
	ld [wcee6], a
	add c
	ld [hld], a
	ld [wcee8], a
	ld a, [hl]
	ld [wcee7], a
	adc b
	ld [hli], a
	ld [wcee9], a
	ld a, [wcee4]
	ld c, a
	ld a, [hld]
	sub c
	ld a, [wcee5]
	ld b, a
	ld a, [hl]
	sbc b
	jr c, jr_00f_454e

	ld a, b
	ld [hli], a
	ld [wcee9], a
	ld a, c
	ld [hl], a
	ld [wcee8], a

jr_00f_454e:
	ldh a, [$f3]
	xor $01
	ldh [$f3], a
	call Call_00f_455f
	ldh a, [$f3]
	xor $01
	ldh [$f3], a
	pop hl
	ret


Call_00f_455f:
	ld hl, wc45e
	ldh a, [$f3]
	and a
	ld a, $01
	jr z, jr_00f_456d

	ld hl, wc3ca
	xor a

jr_00f_456d:
	push bc
	ld [wcf7b], a
	ld a, $48
	call $3e9d
	pop bc
	ret


Call_00f_4578:
	ld a, [wd047]
	and a
	jr nz, jr_00f_4583

	ld hl, wd03f
	res 5, [hl]

jr_00f_4583:
	ld a, [wd04c]
	and a
	ret nz

	ld hl, wd044
	res 5, [hl]
	ret


Jump_00f_458e:
	xor a
	ld [wccf0], a
	call Call_00f_45d0
	call Call_00f_4ba3
	ld a, d
	and a
	jp z, Jump_00f_48e3

	ld hl, wcffc
	ld a, [hli]
	or [hl]
	call nz, Call_00f_4ebe
	ld a, [wd034]
	dec a
	ret z

	call Call_00f_46c5
	jp z, Jump_00f_470c

	ld hl, wcffc
	ld a, [hli]
	or [hl]
	jr nz, jr_00f_45be

	call Call_00f_483c
	ret c

	call Call_00f_4883

jr_00f_45be:
	ld a, $01
	ld [wcd65], a
	call Call_00f_46da
	jp z, Jump_00f_4221

	xor a
	ld [wcd65], a
	jp Jump_00f_426d


Call_00f_45d0:
	call Call_00f_4ea1
	ld a, [wd034]
	dec a
	jr z, jr_00f_45e8

	ld a, [wcfcf]
	ld hl, wd824
	ld bc, $002c
	call $3ad1
	xor a
	ld [hli], a
	ld [hl], a

jr_00f_45e8:
	ld hl, wd03f
	res 2, [hl]
	xor a
	ld [wd051], a
	ld hl, wd042
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hl], a
	ld [wd04f], a
	ld [wccef], a
	ld [wccf3], a
	ld hl, wccf1
	ld [hli], a
	ld [hl], a
	ld hl, wc410
	ld de, wc424
	call Call_00f_497d
	ld hl, wc3a1
	ld bc, $040a
	call $0374
	ld a, [wd034]
	dec a
	jr z, jr_00f_463c

	xor a
	ld [wc0f1], a
	ld [wc0f2], a
	ld a, $9e
	call $3788

jr_00f_462b:
	ld a, [wc02a]
	cp $9e
	jr z, jr_00f_462b

	ld a, $95
	call $0e45
	call $3790
	jr jr_00f_4644

jr_00f_463c:
	call Call_00f_46b9
	ld a, $f9
	call Call_00f_4788

jr_00f_4644:
	ld hl, wcffc
	ld a, [hli]
	or [hl]
	jr nz, jr_00f_4654

	ld a, [wccf0]
	and a
	jr nz, jr_00f_4654

	call Call_00f_47db

jr_00f_4654:
	call Call_00f_4ba3
	ld a, d
	and a
	ret z

	ld hl, $46a7
	call $3c79
	call Call_00f_7186
	call $3761
	xor a
	ld [wcf06], a
	ld b, $4b
	call $34dd
	push af
	jr z, jr_00f_467d

	ld hl, wcfe9
	ld b, $07

jr_00f_4677:
	srl [hl]
	inc hl
	dec b
	jr nz, jr_00f_4677

jr_00f_467d:
	xor a
	ld [wcc5b], a
	ld hl, $79d6
	ld b, $15
	call $3620
	pop af
	ret z

	ld a, $01
	ld [wcc5b], a
	ld a, [wd123]
	ld b, $00

jr_00f_4695:
	scf
	rl b
	dec a
	jr nz, jr_00f_4695

	ld a, b
	ld [wd035], a
	ld hl, $79d6
	ld b, $15
	jp $3620


	db $00, $c3, $b7, $c9, $7f, $50, $01, $c1, $cf, $00, $ca, $7f, $c0, $b5, $da, $c0
	db $e7, $58

Call_00f_46b9:
	xor a
	ld [wd060], a
	ld [wc02a], a
	inc a
	ld [wccf6], a
	ret


Call_00f_46c5:
	ld a, [wd81b]
	ld b, a
	xor a
	ld hl, wd824
	ld de, $002c

jr_00f_46d0:
	or [hl]
	inc hl
	or [hl]
	dec hl
	add hl, de
	dec b
	jr nz, jr_00f_46d0

	and a
	ret


Call_00f_46da:
	ld hl, wcf18
	ld e, $30
	call Call_00f_4fec
	ld hl, $6bea
	ld b, $0e
	call $3620
	ld a, [wd0f0]
	cp $04
	jr nz, jr_00f_46fd

	call Call_00f_5743
	ld a, [wcc3e]
	cp $0f
	ret z

	call $376d

jr_00f_46fd:
	call Call_00f_49f8
	xor a
	ld [wcfb3], a
	ld [wcd65], a
	ld [wccd5], a
	inc a
	ret


Jump_00f_470c:
	call Call_00f_46b9
	ld b, $fc
	ld a, [wd039]
	and a
	jr nz, jr_00f_4719

	ld b, $f6

jr_00f_4719:
	ld a, [wd018]
	cp $2b
	jr nz, jr_00f_4727

	ld b, $fc
	ld hl, wd6b2
	set 1, [hl]

jr_00f_4727:
	ld a, [wd0f0]
	cp $04
	ld a, b
	call nz, Call_00f_4788
	ld hl, $4776
	call $3c79
	ld a, [wd0f0]
	cp $04
	ret z

	call Call_00f_7003
	ld c, $28
	call $3781
	call $33c9
	ld hl, $475a
	call $3c79
	ld de, wd2cd
	ld hl, wd058
	ld c, $03
	ld a, $0b
	jp $3e9d


	db $00, $52, $ca, $7f, $bc, $e2, $b3, $b7, $de, $c4, $bc, $c3, $4f, $50, $02, $56
	db $d0, $c3, $00, $f0, $7f, $c3, $c6, $b2, $da, $c0, $e7, $58, $01, $29, $d0, $00
	db $c4, $c9, $4f, $bc, $e2, $b3, $3c, $c6, $7f, $b6, $df, $c0, $e7, $58

Call_00f_4788:
	push af
	ld a, $ff
	ld [wc0ee], a
	call $3788
	ld c, $08
	pop af
	call $0e35
	jp $3e07


Jump_00f_479a:
	ld a, $01
	ld [wccf0], a
	call Call_00f_47db
	call Call_00f_4ba3
	ld a, d
	and a
	jp z, Jump_00f_48e3

	ld hl, wcfcd
	ld a, [hli]
	or [hl]
	jr nz, jr_00f_47bf

	call Call_00f_45d0
	ld a, [wd034]
	dec a
	ret z

	call Call_00f_46c5
	jp z, Jump_00f_470c

jr_00f_47bf:
	call Call_00f_483c
	ret c

	call Call_00f_4883
	jp nz, Jump_00f_426d

	ld a, $01
	ld [wcd65], a
	call Call_00f_46da
	jp z, Jump_00f_4221

	xor a
	ld [wcd65], a
	jp Jump_00f_426d


Call_00f_47db:
	ld a, [wcc2f]
	ld c, a
	ld hl, wd035
	ld b, $00
	ld a, $10
	call $3e9d
	ld hl, wd044
	res 2, [hl]
	ld a, [wd060]
	bit 7, a
	jr z, jr_00f_47fd

	ld a, $ff
	ld [wd060], a
	call $3790

jr_00f_47fd:
	ld hl, wcd05
	ld [hli], a
	ld [hl], a
	ld [wcfff], a
	call Call_00f_4ea1
	ld hl, wc435
	ld bc, $050b
	call $0374
	ld hl, wc469
	ld de, wc47d
	call Call_00f_497d
	ld a, $01
	ld [wcf06], a
	ld a, [wccf0]
	and a
	ret z

	ld a, [wcffb]
	call $2dc7
	ld hl, $4830
	jp $3c79


	db $01, $f0, $cf, $00, $ca, $7f, $c0, $b5, $da, $c0, $e7, $58

Call_00f_483c:
	call Call_00f_7186
	call $3761
	ld a, [wd034]
	and a
	dec a
	ret nz

	ld hl, $4874
	call $3c79

jr_00f_484e:
	ld hl, wc461
	ld bc, $0a0e
	ld a, $14
	ld [wd0ea], a
	call $3130
	ld a, [wd0f3]
	cp $02
	jr z, jr_00f_4865

	and a
	ret


jr_00f_4865:
	ld a, [wcc26]
	and a
	jr z, jr_00f_484e

	ld hl, wd153
	ld de, wcfe1
	jp Jump_00f_4be4


	nop
	jp nz, wc927

	ld a, a
	ld d, h
	db $dd
	jp nz, $b2b6

	rst $08
	cp l
	or [hl]
	and $57

Call_00f_4883:
	ld a, $02
	ld [wd05a], a
	call $2df3

jr_00f_488b:
	jr nc, jr_00f_4892

jr_00f_488d:
	call $2e08
	jr jr_00f_488b

jr_00f_4892:
	call Call_00f_4bb7
	jr z, jr_00f_488d

	ld a, [wd0f0]
	cp $04
	jr nz, jr_00f_48a6

	ld a, $01
	ld [wcd65], a
	call Call_00f_5743

jr_00f_48a6:
	xor a
	ld [wcd65], a
	call $0188
	ld a, [wcf79]
	ld [wcc2f], a
	ld c, a
	ld hl, wd035
	ld b, $01
	push bc
	ld a, $10
	call $3e9d
	pop bc
	ld hl, wccf5
	ld a, $10
	call $3e9d
	call Call_00f_4cfc
	call $3e15
	call Call_00f_714c
	call $376d
	call $3e1d
	call $3e0c
	call Call_00f_4ded
	ld hl, wcfcd
	ld a, [hli]
	or [hl]
	ret


Jump_00f_48e3:
	ld a, [wd0f0]
	cp $04
	jr z, jr_00f_490e

	ld a, [wd036]
	cp $e1
	jr nz, jr_00f_490e

	ld hl, wc3a0
	ld bc, $0815
	call $0374
	call Call_00f_7003
	ld c, $28
	call $3781
	ld hl, $4928
	call $3c79
	ld a, [wd2dd]
	cp $28
	ret z

jr_00f_490e:
	ld b, $00
	call $3e1f
	ld hl, $493f
	ld a, [wd0f0]
	cp $04
	jr nz, jr_00f_4920

	ld hl, $496b

jr_00f_4920:
	call $3c79
	call $03bf
	scf
	ret


	nop
	ld d, e
	ld [hl], d
	call nc, $e3d8
	rst $20
	ld c, a
	call nc, Call_00f_44df
	ld a, a
	or l
	jp c, wc3df

	ld a, a
	jp $bbde


	or d
	and $58

	db $00, $52, $c9, $7f, $c3, $d3, $c4, $c6, $ca, $4f, $c0, $c0, $b6, $b4, $d9, $7f
	db $54, $26, $7f, $b2, $c5, $b2, $e7, $51, $52, $ca, $4f, $d2, $c9, $cf, $b4, $26
	db $7f, $cf, $df, $b8, $d7, $c6, $7f, $c5, $df, $c0, $e7, $58

	ld bc, wd029
	nop
	call nz, $4fc9
	cp h
	ld [c], a
	or e
	inc a
	add $7f
	rst $08
	cp c
	ret nz

	rst $20
	ld e, b

Call_00f_497d:
	ld a, [wd6af]
	push af
	set 6, a
	ld [wd6af], a
	ld b, $07

jr_00f_4988:
	push bc
	push de
	push hl
	ld b, $06

jr_00f_498d:
	push bc
	push hl
	push de
	ld bc, $0007
	call $01bb
	pop de
	pop hl
	ld bc, $ffec
	add hl, bc
	push hl
	ld h, d
	ld l, e
	add hl, bc
	ld d, h
	ld e, l
	pop hl
	pop bc
	dec b
	jr nz, jr_00f_498d

	ld bc, $0014
	add hl, bc
	ld de, $49c1
	call $0405
	ld c, $02
	call $3781
	pop hl
	pop de
	pop bc
	dec b
	jr nz, jr_00f_4988

	pop af
	ld [wd6af], a
	ret


	db $7f, $7f, $7f, $7f, $7f, $7f, $7f, $50

Call_00f_49c9:
	ldh [$8b], a
	ld c, a

jr_00f_49cc:
	push bc
	push hl
	ld b, $07

jr_00f_49d0:
	push hl
	ldh a, [$8b]
	ld c, a

jr_00f_49d4:
	ldh a, [$8b]
	cp $08
	jr z, jr_00f_49df

	ld a, [hld]
	ld [hli], a
	inc hl
	jr jr_00f_49e2

jr_00f_49df:
	ld a, [hli]
	ld [hld], a
	dec hl

jr_00f_49e2:
	dec c
	jr nz, jr_00f_49d4

	pop hl
	ld de, $0014
	add hl, de
	dec b
	jr nz, jr_00f_49d0

	ld c, $02
	call $3781
	pop hl
	pop bc
	dec c
	jr nz, jr_00f_49cc

	ret


Call_00f_49f8:
	ld hl, wd035
	xor a
	ld [hl], a
	ld a, [wcc2f]
	ld c, a
	ld b, $01
	push bc
	ld a, $10
	call $3e9d
	ld hl, wccf5
	xor a
	ld [hl], a
	pop bc
	ld a, $10
	call $3e9d
	xor a
	ld hl, wd042
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hl], a
	ld [wd04f], a
	ld [wccef], a
	ld [wccf3], a
	ld hl, wccf1
	ld [hli], a
	ld [hl], a
	dec a
	ld [wccdf], a
	ld hl, wd03f
	res 5, [hl]
	ld hl, wc3b2
	ld a, $08
	call Call_00f_49c9
	call Call_00f_7186
	call $3761
	ld a, [wd0f0]
	cp $04
	jr nz, jr_00f_4a53

	ld a, [wcc3e]
	sub $04
	ld [wcf79], a
	jr jr_00f_4a72

jr_00f_4a53:
	ld b, $ff

jr_00f_4a55:
	inc b
	ld a, [wcfcf]
	cp b
	jr z, jr_00f_4a55

	ld hl, wd823
	ld a, b
	ld [wcf79], a
	push bc
	ld bc, $002c
	call $3ad1
	pop bc
	inc hl
	ld a, [hli]
	ld c, a
	ld a, [hl]
	or c
	jr z, jr_00f_4a55

jr_00f_4a72:
	ld a, [wcf79]
	ld hl, wd844
	ld bc, $002c
	call $3ad1
	ld a, [hl]
	ld [wd0ec], a
	ld a, [wcf79]
	inc a
	ld hl, wd81b
	ld c, a
	ld b, $00
	add hl, bc
	ld a, [hl]
	ld [wcfbf], a
	ld [wcf78], a
	call Call_00f_6df1
	ld hl, wcfcd
	ld a, [hli]
	ld [wcce3], a
	ld a, [hl]
	ld [wcce4], a
	ld a, $01
	ld [wcc26], a
	ld a, [wd0e2]
	dec a
	jr z, jr_00f_4b10

	ld a, [wd123]
	dec a
	jr z, jr_00f_4b10

	ld a, [wd0f0]
	cp $04
	jr z, jr_00f_4b10

	ld a, [wd2d4]
	bit 6, a
	jr nz, jr_00f_4b10

	ld hl, $4b64
	call $3c79
	ld hl, wc42c
	ld bc, $0801
	ld a, $14
	ld [wd0ea], a
	call $3130
	ld a, [wcc26]
	and a
	jr nz, jr_00f_4b10

	ld a, $02
	ld [wd05a], a
	call $2df3

jr_00f_4ae3:
	ld a, $01
	ld [wcc26], a
	jr c, jr_00f_4b07

	ld hl, wcc2f
	ld a, [wcf79]
	cp [hl]
	jr nz, jr_00f_4afe

	ld hl, $534b
	call $3c79

jr_00f_4af9:
	call $2e08
	jr jr_00f_4ae3

jr_00f_4afe:
	call Call_00f_4bb7
	jr z, jr_00f_4af9

	xor a
	ld [wcc26], a

jr_00f_4b07:
	call $3e15
	call Call_00f_714c
	call $376d

jr_00f_4b10:
	call $0188
	ld hl, wc3a1
	ld bc, $040a
	call $0374
	ld b, $01
	call $3e1f
	call $3e0c
	ld hl, $4b8f
	call $3c79
	ld a, [wcfbf]
	ld [wcf78], a
	ld [wd092], a
	call $2f2e
	ld de, $9000
	call $3034
	ld a, $cf
	ld [$ffe1], a
	ld hl, wc427
	ld a, $02
	call $3e9d
	ld a, [wcfbf]
	call $2dc7
	call Call_00f_4f49
	ld a, [wcc26]
	and a
	ret nz

	xor a
	ld [wd035], a
	ld [wccf5], a
	call $3761
	jp Jump_00f_5310


	ld bc, wd029
	nop
	jp z, Jump_00f_507f

	ld bc, wcfc1
	nop
	db $dd
	ld c, a
	cp b
	ret c

	jr nc, @-$3f

	or e
	call nz, $bc7f
	jp wd9b2


	sub $b3
	jr nc, @+$53

	ld d, d
	db $d3
	ld a, a
	ld d, h
	db $dd
	ld c, a
	call nz, $b6d8
	or h
	rst $08
	cp l
	or [hl]
	and $57

	db $01, $29, $d0, $00, $ca, $4f, $50, $01, $c1, $cf, $00, $dd, $7f, $b8, $d8, $30
	db $bc, $c0, $e7, $57

Call_00f_4ba3:
	ld a, [wd123]
	ld e, a
	xor a
	ld hl, wd12c
	ld bc, $002b

jr_00f_4bae:
	or [hl]
	inc hl
	or [hl]
	add hl, bc
	dec e
	jr nz, jr_00f_4bae

	ld d, a
	ret


Call_00f_4bb7:
	ld a, [wcf79]
	ld hl, wd12c
	ld bc, $002c
	call $3ad1
	ld a, [hli]
	or [hl]
	ret nz

	ld a, [wd0e2]
	and a
	jr nz, jr_00f_4bd2

	ld hl, $4bd4
	call $3c79

jr_00f_4bd2:
	xor a
	ret


	nop
	ret nz

	ret nz

	or [hl]
	or e
	ld a, a
	or a
	ret c

	ld [c], a
	cp b
	ld h, $7f
	push bc
	or d
	rst $20
	ld e, b

Call_00f_4be4:
Jump_00f_4be4:
	call Call_00f_59a0
	jp z, Jump_00f_4c87

	ld a, [wd037]
	cp $02
	jp z, Jump_00f_4c87

	ld a, [wd0f0]
	cp $04
	jp z, Jump_00f_4c87

	ld a, [wd034]
	dec a
	jr nz, jr_00f_4c77

	ld a, [wd0e5]
	inc a
	ld [wd0e5], a
	ld a, [hli]
	ldh [$97], a
	ld a, [hl]
	ldh [$98], a
	ld a, [de]
	ldh [$8d], a
	inc de
	ld a, [de]
	ldh [$8e], a
	call $376d
	ld de, $ff97
	ld hl, $ff8d
	ld c, $02
	call $3ad8
	jr nc, jr_00f_4c87

	xor a
	ldh [$96], a
	ld a, $20
	ldh [$99], a
	call $38f5
	ldh a, [$97]
	ldh [$95], a
	ldh a, [$98]
	ldh [$96], a
	ldh a, [$8d]
	ld b, a
	ldh a, [$8e]
	srl b
	rr a
	srl b
	rr a
	and a
	jr z, jr_00f_4c87

	ldh [$99], a
	ld b, $02
	call $3902
	ldh a, [$97]
	and a
	jr nz, jr_00f_4c87

	ld a, [wd0e5]
	ld c, a

jr_00f_4c56:
	dec c
	jr z, jr_00f_4c64

	ld b, $1e
	ldh a, [$98]
	add b
	ldh [$98], a
	jr c, jr_00f_4c87

	jr jr_00f_4c56

jr_00f_4c64:
	call Call_00f_718d
	ld b, a
	ldh a, [$98]
	cp b
	jr nc, jr_00f_4c87

	ld a, $01
	ld [wcd65], a
	ld hl, $4cc2
	jr jr_00f_4c7a

jr_00f_4c77:
	ld hl, $4ccb

jr_00f_4c7a:
	call $3c79
	ld a, $01
	ld [wd0e4], a
	call $3761
	and a
	ret


Jump_00f_4c87:
jr_00f_4c87:
	ld a, [wd0f0]
	cp $04
	ld a, $02
	jr nz, jr_00f_4cac

	call $3761
	xor a
	ld [wcd65], a
	ld a, $0f
	ld [wcc2e], a
	call Call_00f_5743
	call $376d
	ld a, [wcc3e]
	cp $0f
	ld a, $02
	jr z, jr_00f_4cac

	dec a

jr_00f_4cac:
	ld [wcf06], a
	ld a, $97
	call $3788
	ld hl, $4cf0

jr_00f_4cb7:
	call $3c79
	call $3790
	call $3761
	scf
	ret


	db $00, $c6, $29, $d7, $da, $c5, $b2, $e7, $58

	nop
	rrca
	and b
	jr nc, jr_00f_4cb7

	ld c, a
	cp h
	ld [c], a
	or e
	inc a
	ret


	ld a, a
	cp e
	or d
	pop bc
	pop hl
	or e
	add $55
	or c
	or d
	jp $7fc6


	cp [hl]
	push bc
	or [hl]
	jp z, wSpriteCurPosY

	cp [hl]
	rst $10
	jp c, $b2c5

	rst $20
	ld e, b

	db $00, $b3, $cf, $b8, $7f, $c6, $29, $b7, $da, $c0, $e7, $58

Call_00f_4cfc:
	ld a, [wcf79]
	ld bc, $002c
	ld hl, wd12b
	call $3ad1
	ld de, wcffb
	ld bc, $000c
	call $01bb
	ld bc, $000f
	add hl, bc
	ld de, wd007
	ld bc, $0002
	call $01bb
	ld de, wd014
	ld bc, $0004
	call $01bb
	ld de, wd009
	ld bc, $000b
	call $01bb
	ld a, [wcfc0]
	ld [wd092], a
	call $2f2e
	ld hl, wd257
	ld bc, $0006
	ld a, [wcc2f]
	call $3ad1
	ld de, wcff0
	ld bc, $0006
	call $01bb
	ld hl, wd009
	ld de, wcd0f
	ld bc, $000b
	call $01bb
	call Call_00f_700b
	call Call_00f_710a
	ld a, $07
	ld b, $08
	ld hl, wcd1a

jr_00f_4d67:
	ld [hli], a
	dec b
	jr nz, jr_00f_4d67

	ret


Jump_00f_4d6c:
	ld a, [wcf79]
	ld bc, $002c
	ld hl, wd823
	call $3ad1
	ld de, wcfcc
	ld bc, $000c
	call $01bb
	ld bc, $000f
	add hl, bc
	ld de, wcfd8
	ld bc, $0002
	call $01bb
	ld de, wcfe5
	ld bc, $0004
	call $01bb
	ld de, wcfda
	ld bc, $000b
	call $01bb
	ld a, [wcfcc]
	ld [wd092], a
	call $2f2e
	ld hl, wd94f
	ld bc, $0006
	ld a, [wcf79]
	call $3ad1
	ld de, wcfc1
	ld bc, $0006
	call $01bb
	ld hl, wcfda
	ld de, wcd23
	ld bc, $000b
	call $01bb
	call Call_00f_700f
	ld hl, wd096
	ld de, wcfe9
	ld b, $05

jr_00f_4dd5:
	ld a, [hli]
	ld [de], a
	inc de
	dec b
	jr nz, jr_00f_4dd5

	ld a, $07
	ld b, $08
	ld hl, wcd2e

jr_00f_4de2:
	ld [hli], a
	dec b
	jr nz, jr_00f_4de2

	ld a, [wcf79]
	ld [wcfcf], a
	ret


Call_00f_4ded:
	ld hl, $7eb6
	ld b, $16
	call $3620
	ld hl, wcfcd
	ld a, [hli]
	or [hl]
	jp z, Jump_00f_4e00

	call Call_00f_4f49

Jump_00f_4e00:
	call Call_00f_4ebe
	ld a, $04
	call $3e9d
	xor a
	ld [$ffe1], a
	ld [wcc2e], a
	ld [wcc2d], a
	ld [wcc5b], a
	ld [wd038], a
	ld [wcfb9], a
	ld hl, wccf1
	ld [hli], a
	ld [hl], a
	ld hl, wd03d
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hl], a
	ld [wd04a], a
	ld [wccee], a
	ld [wccf7], a
	ld b, $01
	call $3e1f
	ld hl, wd044
	res 5, [hl]
	ld a, $01
	ldh [$f3], a
	ld a, $c3
	call Call_00f_71f9
	ld hl, wc480
	ld a, $02
	call $3e9d
	ld a, [wcf78]
	call $2dc7
	call Call_00f_7186
	jp $3761


Call_00f_4e58:
	ld hl, wc405
	ld bc, $0707
	call $0374
	ld hl, wc42f
	ld bc, $0505
	xor a
	ld [wcd67], a
	ldh [$8b], a
	ld a, $05
	call $3e9d
	ld c, $04
	call $3781
	call Call_00f_4e98
	ld hl, wc458
	ld bc, $0303
	ld a, $01
	ld [wcd67], a
	xor a
	ldh [$8b], a
	ld a, $05
	call $3e9d
	call $3e07
	call Call_00f_4e98
	ld a, $4c
	ld [wc481], a

Call_00f_4e98:
	ld hl, wc405
	ld bc, $0707
	jp $0374


Call_00f_4ea1:
	ld a, [wcc2f]
	ld hl, wd12c
	ld bc, $002c
	call $3ad1
	ld d, h
	ld e, l
	ld hl, wcffc
	ld bc, $0004
	jp $01bb


Call_00f_4eb8:
Jump_00f_4eb8:
	call Call_00f_4ebe
	jp Jump_00f_4f49


Call_00f_4ebe:
	xor a
	ldh [$ba], a
	ld hl, wc435
	ld bc, $050b
	call $0374
	ld hl, $6c95
	ld b, $0e
	call $3620
	ld hl, wc466
	ld [hl], $73
	ld de, wcff0
	ld hl, wc44a
	call Call_00f_4ff8
	call $0405
	push bc
	ld hl, wcffb
	ld de, wcf7f
	ld bc, $000c
	call $01bb
	ld hl, wd009
	ld de, wcfa0
	ld bc, $000b
	call $01bb
	pop hl
	push hl
	inc hl
	ld de, wcf83
	call $2eed
	pop hl
	jr nz, jr_00f_4f0b

	call $2f02

jr_00f_4f0b:
	ld a, [wcf7f]
	ld [wcf78], a
	ld hl, wc45e
	ld a, $5f
	call $3e9d
	ld a, $01
	ldh [$ba], a
	ld hl, wcf17
	call Call_00f_4fec
	ld hl, wcffc
	ld a, [hli]
	or [hl]
	jr z, jr_00f_4f36

	ld a, [wccf6]
	and a
	ret nz

	ld a, [wcf17]
	cp $02
	jr z, jr_00f_4f43

jr_00f_4f36:
	ld hl, wd060
	bit 7, [hl]
	ld [hl], $00
	ret z

	xor a
	ld [wc02a], a
	ret


jr_00f_4f43:
	ld hl, wd060
	set 7, [hl]
	ret


Call_00f_4f49:
Jump_00f_4f49:
	xor a
	ldh [$ba], a
	ld hl, wc3a1
	ld bc, $040b
	call $0374
	ld hl, $6cac
	ld b, $0e
	call $3620
	ld de, wcfc1
	ld hl, wc3b6
	call Call_00f_4ff8
	call $0405
	ld h, b
	ld l, c
	push hl
	inc hl
	ld de, wcfd0
	call $2eed
	pop hl
	jr nz, jr_00f_4f7f

	ld a, [wcfda]
	ld [wcfa0], a
	call $2f02

jr_00f_4f7f:
	ld hl, wcfcd
	ld a, [hli]
	ldh [$97], a
	ld a, [hld]
	ldh [$98], a
	or [hl]
	jr nz, jr_00f_4f92

	ld c, a
	ld e, a
	ld d, $06
	jp Jump_00f_4fdb


jr_00f_4f92:
	xor a
	ldh [$96], a
	ld a, $30
	ldh [$99], a
	call $38f5
	ld hl, wcfdb
	ld a, [hli]
	ld b, a
	ld a, [hl]
	ldh [$99], a
	ld a, b
	and a
	jr z, jr_00f_4fc6

	ldh a, [$99]
	srl b
	rr a
	srl b
	rr a
	ldh [$99], a
	ldh a, [$97]
	ld b, a
	srl b
	ldh a, [$98]
	rr a
	srl b
	rr a
	ldh [$98], a
	ld a, b
	ldh [$97], a

jr_00f_4fc6:
	ldh a, [$97]
	ldh [$95], a
	ldh a, [$98]
	ldh [$96], a
	ld a, $02
	ld b, a
	call $3902
	ldh a, [$98]
	ld e, a
	ld a, $06
	ld d, a
	ld c, a

Jump_00f_4fdb:
	xor a
	ld [wcf7b], a
	ld hl, wc3ca
	call $2d2c
	ld a, $01
	ldh [$ba], a
	ld hl, wcf18

Call_00f_4fec:
	ld b, [hl]
	call $3e29
	ld a, [hl]
	cp b
	ret z

	ld b, $01
	jp $3e1f


Call_00f_4ff8:
	push de
	inc hl
	inc hl
	ld b, $02

jr_00f_4ffd:
	inc de
	ld a, [de]
	cp $50
	jr z, jr_00f_500d

	inc de
	ld a, [de]
	cp $50
	jr z, jr_00f_500d

	dec hl
	dec b
	jr nz, jr_00f_4ffd

jr_00f_500d:
	pop de
	ret


Call_00f_500f:
Jump_00f_500f:
	call $376d
	ld a, [wd037]
	and a
	jr nz, jr_00f_5021

	call Call_00f_4eb8
	call Call_00f_7186
	call $3761

jr_00f_5021:
	ld a, [wd037]
	cp $02
	ld a, $0b
	jr nz, jr_00f_502c

	ld a, $1b

jr_00f_502c:
	ld [wd0ea], a
	call $3130
	ld a, [wd037]
	dec a
	jp nz, Jump_00f_5074

	ld hl, wd11d
	ld de, wd806
	ld bc, $0006
	call $01bb
	ld hl, $506e
	ld de, wd11d
	ld bc, $0006
	call $01bb
	ld hl, wc4c2
	ld [hl], $ed
	ld c, $50
	call $3781
	ld [hl], $7f
	ld hl, wc4c7
	ld [hl], $ed
	ld c, $32
	call $3781
	ld [hl], $ec
	ld a, $02
	jp Jump_00f_512f


	db $b5, $2c, $b2, $bb, $de, $50

Jump_00f_5074:
	ld a, [wcc2d]
	ld [wcc26], a
	ld [wcc2a], a
	sub $02

Jump_00f_507f:
	jr c, jr_00f_5089

	ld [wcc26], a
	ld [wcc2a], a
	jr jr_00f_50c8

jr_00f_5089:
	ld a, [wd037]
	cp $02
	ld a, $7f
	jr z, jr_00f_509c

	ld [wc4c7], a
	ld [wc4ef], a
	ld b, $0a
	jr jr_00f_50b0

jr_00f_509c:
	ld [wc4c4], a
	ld [wc4ec], a
	ld hl, wc4c2
	ld de, wd983
	ld bc, $0102
	call $3c8f
	ld b, $01

jr_00f_50b0:
	ld hl, wcc24
	ld a, $0e
	ld [hli], a
	ld a, b
	ld [hli], a
	inc hl
	inc hl
	ld a, $01
	ld [hli], a
	ld [hl], $11
	call $3b08
	bit 4, a
	jr nz, jr_00f_50c8

	jr jr_00f_510e

jr_00f_50c8:
	ld a, [wd037]
	cp $02
	ld a, $7f
	jr z, jr_00f_50db

	ld [wc4c2], a
	ld [wc4ea], a
	ld b, $0f
	jr jr_00f_50ef

jr_00f_50db:
	ld [wc4b9], a
	ld [wc4e1], a
	ld hl, wc4c2
	ld de, wd983
	ld bc, $0102
	call $3c8f
	ld b, $0c

jr_00f_50ef:
	ld hl, wcc24
	ld a, $0e
	ld [hli], a
	ld a, b
	ld [hli], a
	inc hl
	inc hl
	ld a, $01
	ld [hli], a
	ld a, $21
	ld [hli], a
	call $3b08
	bit 5, a
	jr nz, jr_00f_5089

	ld a, [wcc26]
	add $02
	ld [wcc26], a

jr_00f_510e:
	call $3c1c
	ld a, [wcc26]
	ld [wcc2d], a
	and a
	jr nz, jr_00f_512f

	ld a, [wd037]
	cp $02
	jr z, jr_00f_5128

	xor a
	ld [wd0e5], a
	jp $376d


jr_00f_5128:
	ld a, $08
	ld [wcf78], a
	jr jr_00f_51a3

Jump_00f_512f:
jr_00f_512f:
	cp $02
	jp nz, Jump_00f_5221

	ld a, [wd0f0]
	cp $04
	jr nz, jr_00f_5144

	ld hl, $5209
	call $3c79
	jp Jump_00f_500f


jr_00f_5144:
	call $373e
	ld a, [wd037]
	cp $02
	jr nz, jr_00f_5155

	ld a, $15
	ld [wcf78], a
	jr jr_00f_51a3

Jump_00f_5155:
jr_00f_5155:
	call $376d
	ld a, [wd037]
	and a
	jr nz, jr_00f_5161

	call Call_00f_4eb8

jr_00f_5161:
	ld a, [wd037]
	dec a
	jr nz, jr_00f_5178

	ld hl, $5174
	ld a, l
	ld [wcf72], a
	ld a, h
	ld [wcf73], a
	jr jr_00f_5183

	db $01, $04, $32, $ff

jr_00f_5178:
	ld hl, wd2a1
	ld a, l
	ld [wcf72], a
	ld a, h
	ld [wcf73], a

jr_00f_5183:
	xor a
	ld [wcf7a], a
	ld a, $03
	ld [wcf7b], a
	ld a, [wcc2c]
	ld [wcc26], a
	call $16f7
	ld a, [wcc26]
	ld [wcc2c], a
	ld a, $00
	ld [wcc37], a
	jp c, Jump_00f_500f

Jump_00f_51a3:
jr_00f_51a3:
	ld a, [wcf78]
	ld [wd0e3], a
	call $1add
	call $386e
	xor a
	ld [wd117], a
	call $3104
	call Call_00f_714c
	call $0188
	xor a
	ld [wcc26], a
	ld a, [wd037]
	cp $02
	jr z, jr_00f_51e0

	ld a, [wcd65]
	and a
	jp z, Jump_00f_5155

	ld a, [wd03f]
	bit 5, a
	jr z, jr_00f_51e0

	ld hl, wd047
	dec [hl]
	jr nz, jr_00f_51e0

	ld hl, wd03f
	res 5, [hl]

jr_00f_51e0:
	ld a, [wd0e1]
	and a
	jr nz, jr_00f_51fb

	ld a, [wd037]
	cp $02
	jr z, jr_00f_51f6

	call $376d

jr_00f_51f0:
	call Call_00f_4eb8
	call $3e07

jr_00f_51f6:
	call $3e0c
	and a
	ret


jr_00f_51fb:
	call $3e0c
	xor a
	ld [wd0e1], a
	ld a, $02
	ld [wcf06], a
	scf
	ret


	nop
	cp d
	cp d
	inc sp
	jp z, $347f

	or e
	jr z, jr_00f_51f0

	ld c, a
	jp nz, $b3b6

	cp d
	call nz, $7fca
	inc sp
	or a
	rst $08
	cp [hl]
	sbc $58

Jump_00f_5221:
	dec a
	jp nz, Jump_00f_5358

	call $373e
	ld a, [wd037]
	cp $02
	jr nz, jr_00f_5237

	ld a, $16
	ld [wcf78], a
	jp Jump_00f_51a3


Jump_00f_5237:
jr_00f_5237:
	call $376d
	xor a
	ld [wd05a], a
	call $2df3

jr_00f_5241:
	jp nc, Jump_00f_526d

jr_00f_5244:
	call $0188
	call $3e15
	call Call_00f_714c
	call $374a
	call $3e1d
	call $3e0c
	jp Jump_00f_500f


Jump_00f_5259:
jr_00f_5259:
	ld hl, wc487
	ld bc, $0081
	ld a, $7f
	call $372a
	xor a
	ld [wd05a], a
	call $2e08
	jr jr_00f_5241

Jump_00f_526d:
	ld a, $0c
	ld [wd0ea], a
	call $3130
	ld hl, wcc24
	ld a, $0c
	ld [hli], a
	ld a, $0c
	ld [hli], a
	xor a
	ld [hli], a
	inc hl
	ld a, $02
	ld [hli], a
	ld a, $03
	ld [hli], a
	xor a
	ld [hl], a
	call $3b08
	bit 1, a
	jr nz, jr_00f_5259

	call $3c1c
	ld a, [wcc26]
	cp $02
	jr z, jr_00f_5244

	and a
	jr z, jr_00f_52e0

	xor a
	ld [wcc49], a
	ld hl, wd12b
	call $0188
	ld a, $36
	call $3e9d
	ld a, $37
	call $3e9d
	ld a, [wd045]
	bit 4, a
	ld hl, $5717
	jr nz, jr_00f_52d8

	ld a, [wccf3]
	and a
	ld hl, $55d6
	jr nz, jr_00f_52d8

	ld a, [wcfcc]
	ld [wcf78], a
	ld [wd092], a
	call $2f2e
	ld de, $9000
	call $3034
	jr jr_00f_52dd

jr_00f_52d8:
	ld b, $1e
	call $3620

jr_00f_52dd:
	jp Jump_00f_5237


jr_00f_52e0:
	ld a, [wcc2f]
	ld d, a
	ld a, [wcf79]
	cp d
	jr nz, jr_00f_52f3

	ld hl, $534b
	call $3c79
	jp Jump_00f_5259


jr_00f_52f3:
	call Call_00f_4bb7
	jp z, Jump_00f_5259

	ld a, $01
	ld [wcd65], a
	call $3e15
	call $0188
	call Call_00f_714c
	call $376d
	call $3e1d
	call $3e0c

Jump_00f_5310:
	ld hl, $7f4d
	ld b, $16
	call $3620
	ld c, $32
	call $3781
	call Call_00f_4e58
	ld a, [wcf79]
	ld [wcc2f], a
	ld c, a
	ld b, $01
	push bc
	ld hl, wd035
	ld a, $10
	call $3e9d
	pop bc
	ld hl, wccf5
	ld a, $10
	call $3e9d
	call Call_00f_4cfc
	call Call_00f_4ded
	call $3761
	ld a, $02
	ld [wcc26], a
	and a
	ret


	ld bc, wcff0
	nop
	jp z, $b3d3

	inc sp
	jp wcfb2


	cp l
	ld e, b

Jump_00f_5358:
	call $376d
	ld a, $03
	ld [wcc26], a
	ld hl, wd010
	ld de, wcfe1
	call Call_00f_4be4
	ld a, $00
	ld [wd0e4], a
	ret c

	ld a, [wcd65]
	and a
	ret nz

	jp Jump_00f_500f


Call_00f_5377:
Jump_00f_5377:
	ld hl, wcfd4
	ld a, [wccdb]
	dec a
	jr z, jr_00f_5398

	dec a
	jr z, jr_00f_538c

	call Call_00f_5528
	ret z

	ld hl, wd003
	jr jr_00f_5398

jr_00f_538c:
	ld a, [wcf79]
	ld hl, wd133
	ld bc, $002c
	call $3ad1

jr_00f_5398:
	ld de, wd0b9
	ld bc, $0004
	call $01bb
	ld hl, $5e5f
	ld b, $0e
	call $3620
	ld hl, wc440
	ld b, $08
	ld c, $08
	ld a, [wccdb]
	cp $02
	jr nz, jr_00f_53be

	ld hl, wc44a
	ld b, $08
	ld c, $08

jr_00f_53be:
	call $03d2
	ld hl, wc46a
	ld a, [wccdb]
	cp $02
	jr nz, jr_00f_53ce

	ld hl, wc474

jr_00f_53ce:
	ld de, wd0be
	call $0405
	ld b, $01
	ld a, [wccdb]
	cp $02
	jr nz, jr_00f_53df

	ld b, $0b

jr_00f_53df:
	ld hl, wcc24
	ld a, $08
	ld [hli], a
	ld a, b
	ld [hli], a
	ld a, [wccdb]
	cp $01
	jr z, jr_00f_53f2

	ld a, [wcc2e]
	inc a

jr_00f_53f2:
	ld [hli], a
	inc hl
	ld a, [wcd67]
	inc a
	inc a
	ld [hli], a
	ld a, [wccdb]
	dec a
	ld b, $c1
	jr z, jr_00f_5419

	dec a
	ld b, $c3
	jr z, jr_00f_5419

	ld a, [wd0f0]
	cp $04
	jr z, jr_00f_5419

	ld a, [wd6b2]
	bit 0, a
	ld b, $c7
	jr z, jr_00f_5419

	ld b, $ff

jr_00f_5419:
	ld a, b
	ld [hli], a
	ld a, [wccdb]
	cp $01
	jr z, jr_00f_5426

	ld a, [wcc2e]
	inc a

jr_00f_5426:
	ld [hl], a

Jump_00f_5427:
	ld a, [wccdb]
	and a
	jr z, jr_00f_543b

	dec a
	jr nz, jr_00f_5457

	ld hl, wc4c3
	ld de, $54ee
	call $0405
	jr jr_00f_5457

jr_00f_543b:
	ld a, [wd6b2]
	bit 0, a
	jr nz, jr_00f_5457

	call Call_00f_55fa
	ld a, [wcc35]
	and a
	jr z, jr_00f_5457

	ld hl, wc469
	dec a
	ld bc, $0028
	call $3ad1
	ld [hl], $ec

jr_00f_5457:
	call $3b08
	bit 6, a
	jp nz, Jump_00f_54fc

	bit 7, a
	jp nz, Jump_00f_5510

	bit 2, a
	jp nz, Jump_00f_5579

	bit 1, a
	push af
	xor a
	ld [wcc35], a
	ld a, [wcc26]
	dec a
	ld [wcc26], a
	ld b, a
	ld a, [wccdb]
	dec a
	jr nz, jr_00f_5480

	pop af
	ret


jr_00f_5480:
	dec a
	ld a, b
	ld [wcc2e], a
	jr nz, jr_00f_5489

	pop af
	ret


jr_00f_5489:
	pop af
	ret nz

	ld hl, wd014
	ld a, [wcc26]
	ld c, a
	ld b, $00
	add hl, bc
	ld a, [hl]
	and $3f
	jr z, jr_00f_54c1

	ld a, [wd04a]
	swap a
	and $0f
	dec a
	cp c
	jr z, jr_00f_54bc

	ld a, [wd041]
	bit 3, a
	jr nz, jr_00f_54ac

jr_00f_54ac:
	ld a, [wcc26]
	ld hl, wd003
	ld c, a
	ld b, $00
	add hl, bc
	ld a, [hl]
	ld [wccdc], a
	xor a
	ret


jr_00f_54bc:
	ld hl, $54df
	jr jr_00f_54c4

jr_00f_54c1:
	ld hl, $54cd

jr_00f_54c4:
	call $3c79
	call $376d
	jp Jump_00f_5377


	nop
	call c, wc92b
	ld a, a
	ret


	cp d
	ret c

	ld b, e
	add c
	xor e
	sub e
	ld h, $7f
	push bc
	or d
	rst $20
	ld e, b
	nop
	call c, wdd2b
	ld a, a
	call z, $2cb3
	rst $10
	jp c, $b2c3

	reti


	rst $20
	ld e, b
	inc [hl]
	ret


	call c, wdd2b
	ld c, [hl]
	db $d3
	ret


	rst $08
	ret z

	cp l
	reti


	and $50

Jump_00f_54fc:
	ld a, [wcc26]
	and a
	jp nz, Jump_00f_5427

	call $3c29
	ld a, [wcd67]
	inc a
	ld [wcc26], a
	jp Jump_00f_5427


Jump_00f_5510:
	ld a, [wcc26]
	ld b, a
	ld a, [wcd67]
	inc a
	inc a
	cp b
	jp nz, Jump_00f_5427

	call $3c29
	ld a, $01
	ld [wcc26], a
	jp Jump_00f_5427


Call_00f_5528:
	ld a, $a5
	ld [wccdc], a
	ld a, [wd04a]
	and a
	ld hl, wd014
	jr nz, jr_00f_553f

	ld a, [hli]
	or [hl]
	inc hl
	or [hl]
	inc hl
	or [hl]
	ret nz

	jr jr_00f_5554

jr_00f_553f:
	swap a
	and $0f
	ld b, a
	ld d, $05
	xor a

jr_00f_5547:
	dec d
	jr z, jr_00f_5552

	ld c, [hl]
	inc hl
	dec b
	jr z, jr_00f_5547

	or c
	jr jr_00f_5547

jr_00f_5552:
	and a
	ret nz

jr_00f_5554:
	ld hl, $5561
	call $3c79
	ld c, $3c
	call $3781
	xor a
	ret


	ld bc, wcff0
	nop
	jp z, $307f

	cp l
	cp d
	call nz, Call_00f_7fc9
	inc sp
	or a
	reti


	ld c, a
	call c, $262b
	ld a, a
	push bc
	or d
	rst $20
	ld d, a

Jump_00f_5579:
	ld a, [wcc35]
	and a
	jr z, jr_00f_55f1

	ld hl, wd003
	call Call_00f_55d7
	ld hl, wd014
	call Call_00f_55d7
	ld hl, wd04a
	ld a, [hl]
	swap a
	and $0f
	ld b, a
	ld a, [wcc26]
	cp b
	jr nz, jr_00f_55a7

	ld a, [hl]
	and $0f
	ld b, a
	ld a, [wcc35]
	swap a
	add b
	ld [hl], a
	jr jr_00f_55b8

jr_00f_55a7:
	ld a, [wcc35]
	cp b
	jr nz, jr_00f_55b8

	ld a, [hl]
	and $0f
	ld b, a
	ld a, [wcc26]
	swap a
	add b
	ld [hl], a

jr_00f_55b8:
	ld hl, wd133
	ld a, [wcc2f]
	ld bc, $002c
	call $3ad1
	push hl
	call Call_00f_55d7
	pop hl
	ld bc, $0015
	add hl, bc
	call Call_00f_55d7
	xor a
	ld [wcc35], a
	jp Jump_00f_5377


Call_00f_55d7:
	push hl
	ld a, [wcc35]
	dec a
	ld c, a
	ld b, $00
	add hl, bc
	ld d, h
	ld e, l
	pop hl
	ld a, [wcc26]
	dec a
	ld c, a
	ld b, $00
	add hl, bc
	ld a, [de]
	ld b, [hl]
	ld [hl], a
	ld a, b
	ld [de], a
	ret


jr_00f_55f1:
	ld a, [wcc26]
	ld [wcc35], a
	jp Jump_00f_5377


Call_00f_55fa:
	xor a
	ldh [$ba], a
	ld hl, wc499
	ld b, $04
	ld c, $09
	call $03d2
	ld a, [wd04a]
	and a
	jr z, jr_00f_5623

	swap a
	and $0f
	ld b, a
	ld a, [wcc26]
	cp b
	jr nz, jr_00f_5623

	ld hl, wc4d6
	ld de, $5699
	call $0405
	jr jr_00f_5692

jr_00f_5623:
	ld hl, wcc26
	dec [hl]
	xor a
	ldh [$f3], a
	ld hl, wd003
	ld a, [wcc26]
	ld c, a
	ld b, $00
	add hl, bc
	ld a, [hl]
	ld [wccdc], a
	ld a, [wcc2f]
	ld [wcf79], a
	ld a, $04
	ld [wcc49], a
	ld hl, $694a
	ld b, $03
	call $3620
	ld hl, wcc26
	ld c, [hl]
	inc [hl]
	ld b, $00
	ld hl, wd014
	add hl, bc
	ld a, [hl]
	and $3f
	ld [wcd68], a
	ld hl, wc4d6
	ld de, $56a3
	call $0405
	ld hl, wc4b4
	ld [hl], $f3
	ld hl, wc4ee
	ld [hl], $f3
	ld hl, wc4b2
	ld de, wcd68
	ld bc, $0102
	call $3c8f
	ld hl, wc4b5
	ld de, wd0e3
	ld bc, $0102
	call $3c8f
	call Call_00f_6dae
	ld hl, wc4ef
	ld a, $5d
	call $3e9d

jr_00f_5692:
	ld a, $01
	ldh [$ba], a
	jp $3e07


	call z, $2cb3
	rst $10
	jp c, $b2c3

	reti


	rst $20
	ld d, b

	db $dc, $2b, $8f, $81, $42, $50

Call_00f_56a9:
	ld a, [wd0f0]
	sub $04
	jr nz, jr_00f_56d1

	call $3761
	call Call_00f_5743
	call $376d
	ld a, [wcc3e]
	cp $0e
	jp z, Jump_00f_573f

	cp $04
	ret nc

	ld [wcce2], a
	ld hl, wcfd4
	ld c, a
	ld b, $00
	add hl, bc
	ld a, [hl]
	jr jr_00f_573b

jr_00f_56d1:
	ld a, [wd045]
	and $60
	ret nz

	ld hl, wd044
	bit 4, [hl]
	ret nz

	bit 1, [hl]
	ret nz

	ld a, [wcfd0]
	and $27
	ret nz

	ld a, [wd044]
	and $21
	ret nz

	ld a, [wd044]
	bit 5, a
	ret nz

	ld hl, wcfd5
	ld a, [hld]
	and a
	jr nz, jr_00f_5701

	ld a, [wd04f]
	and a
	ld a, $a5
	jr nz, jr_00f_573b

jr_00f_5701:
	ld a, [wd034]
	dec a
	jr z, jr_00f_570f

	ld hl, $5a36
	ld b, $0e
	call $3620

jr_00f_570f:
	push hl
	call Call_00f_718d
	ld b, $01
	cp $3f
	jr c, jr_00f_5727

	inc hl
	inc b
	cp $7f
	jr c, jr_00f_5727

	inc hl
	inc b
	cp $be
	jr c, jr_00f_5727

	inc hl
	inc b

jr_00f_5727:
	ld a, b
	dec a
	ld [wcce2], a
	ld a, [wd04f]
	swap a
	and $0f
	cp b
	ld a, [hl]
	pop hl
	jr z, jr_00f_570f

	and a
	jr z, jr_00f_570f

jr_00f_573b:
	ld [wccdd], a
	ret


Jump_00f_573f:
	ld a, $a5
	jr jr_00f_573b

Call_00f_5743:
	ld a, $ff
	ld [wcc3e], a
	ld a, [wcd65]
	and a
	jr nz, jr_00f_575c

	ld a, [wccdc]
	cp $a5
	ld a, $0e
	jr z, jr_00f_5761

	ld a, [wcc2e]
	jr jr_00f_5761

jr_00f_575c:
	ld a, [wcf79]
	add $04

jr_00f_5761:
	ld [wcc42], a
	ld hl, $49ed
	ld b, $01
	call $3620

jr_00f_576c:
	call $0d57
	call $0b31
	ld a, [wcc3e]
	inc a
	jr z, jr_00f_576c

	ld b, $0a

jr_00f_577a:
	call $0b31
	call $0d57
	dec b
	jr nz, jr_00f_577a

	ld b, $0a

jr_00f_5785:
	call $0b31
	call $0d81
	dec b
	jr nz, jr_00f_5785

	ret


Call_00f_578f:
	ld a, [wccdc]
	inc a
	jp z, Jump_00f_594a

	xor a
	ldh [$f3], a
	ld [wd03c], a
	ld [wcced], a
	ld [wccf4], a
	ld a, $0a
	ld [wd038], a
	ld a, [wcd65]
	and a
	jp nz, Jump_00f_594a

	call Call_00f_5951
	jp z, Jump_00f_594a

	call Call_00f_59ba
	jr nz, jr_00f_57ba

	jp hl


jr_00f_57ba:
	call Call_00f_6dae
	ld hl, wd03f
	bit 4, [hl]
	jr nz, jr_00f_57d9

	call Call_00f_5f07
	jp z, Jump_00f_594a

Jump_00f_57ca:
	ld a, [wcfba]
	cp $27
	jp z, Jump_00f_7427

	cp $2b
	jp z, Jump_00f_7427

	jr jr_00f_57e0

jr_00f_57d9:
	ld hl, wd03f
	res 4, [hl]
	res 6, [hl]

jr_00f_57e0:
	call Call_00f_5d18
	ld hl, $7fd0
	ld de, wccdc
	ld b, $1a
	call $3620
	ld a, [wcfba]
	ld hl, $4000
	ld de, $0001
	call $3ddb
	jp c, Jump_00f_7427

	ld a, [wcfba]
	ld hl, $4049
	ld de, $0001
	call $3ddb
	call c, Call_00f_7427
	ld a, [wcfba]
	ld hl, $4011
	ld de, $0001
	call $3ddb
	jp c, Jump_00f_5832

	call Call_00f_62bc
	call Call_00f_632c
	jr z, jr_00f_5835

	call Call_00f_6068
	call Call_00f_61fe
	jp z, Jump_00f_587b

	call Call_00f_6687
	call Call_00f_6969

Jump_00f_5832:
	call Call_00f_684d

jr_00f_5835:
	ld a, [wd03c]
	and a
	jr z, jr_00f_5844

	ld a, [wcfba]
	sub $07
	jr z, jr_00f_584e

	jr jr_00f_587b

Jump_00f_5844:
jr_00f_5844:
	ld a, [wcfba]
	and a
	ld a, $04
	jr z, jr_00f_584e

	ld a, $05

jr_00f_584e:
	push af
	ld a, [wd040]
	bit 4, a
	ld hl, $577e
	ld b, $1e
	call nz, $3620
	pop af
	ld [wcc5b], a
	ld a, [wcfb9]
	call Call_00f_71f9
	call Call_00f_71c5
	call Call_00f_4ebe
	ld a, [wd040]
	bit 4, a
	ld hl, $57a8
	ld b, $1e
	call nz, $3620
	jr jr_00f_5896

Jump_00f_587b:
jr_00f_587b:
	ld c, $1e
	call $3781
	ld a, [wcfba]
	cp $2b
	jr z, jr_00f_588d

	cp $27
	jr z, jr_00f_588d

	jr jr_00f_5896

jr_00f_588d:
	xor a
	ld [wcc5b], a
	ld a, $a7
	call Call_00f_71f9

jr_00f_5896:
	ld a, [wcfba]
	cp $09
	jr nz, jr_00f_58aa

	call Call_00f_65cc
	jp z, Jump_00f_594a

	xor a
	ld [wcced], a
	jp Jump_00f_57ca


jr_00f_58aa:
	cp $53
	jr nz, jr_00f_58b4

	call Call_00f_662a
	jp Jump_00f_57ca


jr_00f_58b4:
	ld a, [wcfba]
	ld hl, $4014
	ld de, $0001
	call $3ddb
	jp c, Jump_00f_7427

	ld a, [wd03c]
	and a
	jr z, jr_00f_58d6

	call Call_00f_5e14
	ld a, [wcfba]
	cp $07
	jr z, jr_00f_58e9

	jp Jump_00f_594a


jr_00f_58d6:
	call Call_00f_6378
	call Call_00f_5ecb
	ld hl, $7eb2
	ld b, $0b
	call $3620
	ld a, $01
	ld [wccf4], a

jr_00f_58e9:
	ld a, [wcfba]
	ld hl, $4030
	ld de, $0001
	call $3ddb
	call c, Call_00f_7427
	ld hl, wcfcd
	ld a, [hli]
	ld b, [hl]
	or b
	ret z

	call Call_00f_6572
	ld hl, wd03f
	bit 2, [hl]
	jr z, jr_00f_591f

	ld a, [wd047]
	dec a
	ld [wd047], a
	jp nz, Jump_00f_5844

	res 2, [hl]
	ld hl, $5935
	call $3c79
	xor a
	ld [wd051], a

jr_00f_591f:
	ld a, [wcfba]
	and a
	jp z, Jump_00f_594a

	ld hl, $403b
	ld de, $0001
	call $3ddb
	call nc, Call_00f_7427
	jp Jump_00f_594a


	nop
	or c
	or d
	jp $7fc6


	ld d, b
	add hl, bc
	ld d, c
	ret nc

	ld de, $b600

jr_00f_5942:
	or d
	ld a, a
	or c
	ret nz

	rst $18
	ret nz

	rst $20
	ld e, b

Jump_00f_594a:
	xor a
	ld [wcd65], a
	ld b, $01
	ret


Call_00f_5951:
	call Call_00f_59a0
	ret nz

	ldh a, [$f3]
	and a
	jr nz, jr_00f_5968

	ld a, [wcfff]
	and $27
	ret nz

	ld hl, $5970
	call $3c79
	xor a
	ret


jr_00f_5968:
	ld hl, $598f
	call $3c79
	xor a
	ret


	ld bc, wcff0
	nop
	jp z, $ba7f

	call c, wdf26
	jp wd9b2


	rst $20
	ld c, a
	call c, wdd2b
	ld a, a
	jr nc, jr_00f_5942

	cp d
	call nz, $7f26
	inc sp
	or a
	push bc
	or d
	rst $20
	ld e, b
	nop
	push de
	or e
	jp c, Jump_00f_72b2

	adc a
	sub b
	adc d
	and a
	ld d, [hl]
	adc a
	sub b
	adc d
	and a
	ld d, [hl]
	ld e, b

Call_00f_59a0:
	ld a, [wd034]
	dec a
	ret nz

	ld a, [wd2dd]
	cp $8e
	jr c, jr_00f_59b6

	cp $95
	jr nc, jr_00f_59b6

	ld b, $48
	call $34dd
	ret z

jr_00f_59b6:
	ld a, $01
	and a
	ret


Call_00f_59ba:
	ld hl, wcfff
	ld a, [hl]
	and $07
	jr z, jr_00f_59ea

	dec a
	ld [wcfff], a
	and a
	jr z, jr_00f_59da

	xor a
	ld [wcc5b], a
	ld a, $bc
	call Call_00f_71f9
	ld hl, $5ba5
	call $3c79
	jr jr_00f_59e0

jr_00f_59da:
	ld hl, $5bb5
	call $3c79

jr_00f_59e0:
	xor a
	ld [wccf1], a
	ld hl, $594a
	jp Jump_00f_5b9f


jr_00f_59ea:
	bit 5, [hl]
	jr z, jr_00f_59fe

	ld hl, $5bc1
	call $3c79
	xor a
	ld [wccf1], a
	ld hl, $594a
	jp Jump_00f_5b9f


jr_00f_59fe:
	ld a, [wd044]
	bit 5, a
	jp z, Jump_00f_5a12

	ld hl, $5c89
	call $3c79
	ld hl, $594a
	jp Jump_00f_5b9f


Jump_00f_5a12:
	ld hl, wd03f
	bit 3, [hl]
	jp z, Jump_00f_5a28

	res 3, [hl]
	ld hl, $5bea
	call $3c79
	ld hl, $594a
	jp Jump_00f_5b9f


Jump_00f_5a28:
	ld hl, wd040
	bit 5, [hl]
	jr z, jr_00f_5a3d

	res 5, [hl]
	ld hl, $5bf4
	call $3c79
	ld hl, $594a
	jp Jump_00f_5b9f


jr_00f_5a3d:
	ld hl, wd04a
	ld a, [hl]
	and a
	jr z, jr_00f_5a54

	dec a
	ld [hl], a
	and $0f
	jr nz, jr_00f_5a54

	ld [hl], a
	ld [wccee], a
	ld hl, $5c0b
	call $3c79

jr_00f_5a54:
	ld a, [wd03f]
	bit 7, a
	jr z, jr_00f_5a91

	ld hl, wd048
	dec [hl]
	jr nz, jr_00f_5a6e

	ld hl, wd03f
	res 7, [hl]
	ld hl, $5c40
	call $3c79
	jr jr_00f_5a91

jr_00f_5a6e:
	ld hl, $5c1b
	call $3c79
	xor a
	ld [wcc5b], a
	ld a, $be
	call Call_00f_71f9
	call Call_00f_718d
	cp $80
	jp c, Jump_00f_5aa6

	ld hl, wd03f
	ld a, [hl]
	and $80
	ld [hl], a
	call Call_00f_5cd0
	jr jr_00f_5aba

jr_00f_5a91:
	ld a, [wccee]
	and a
	jr z, jr_00f_5aa6

	ld hl, wccdc
	cp [hl]
	jr nz, jr_00f_5aa6

	call Call_00f_5c99
	ld hl, $594a
	jp Jump_00f_5b9f


Jump_00f_5aa6:
jr_00f_5aa6:
	ld hl, wcfff
	bit 6, [hl]
	jr z, jr_00f_5add

	call Call_00f_718d
	cp $3f
	jr nc, jr_00f_5add

	ld hl, $5bd6
	call $3c79

jr_00f_5aba:
	ld hl, wd03f
	ld a, [hl]
	and $cc
	ld [hl], a
	ld a, [wcfba]
	cp $2b
	jr z, jr_00f_5ace

	cp $27
	jr z, jr_00f_5ace

	jr jr_00f_5ad7

jr_00f_5ace:
	xor a
	ld [wcc5b], a
	ld a, $a7
	call Call_00f_71f9

jr_00f_5ad7:
	ld hl, $594a
	jp Jump_00f_5b9f


jr_00f_5add:
	ld hl, wd03f
	bit 0, [hl]
	jr z, jr_00f_5b38

	xor a
	ld [wcfb9], a
	ld hl, wd0b4
	ld a, [hli]
	ld b, a
	ld c, [hl]
	ld hl, wd052
	ld a, [hl]
	add c
	ld [hld], a
	ld a, [hl]
	adc b
	ld [hl], a
	ld hl, wd047
	dec [hl]
	jr z, jr_00f_5b03

	ld hl, $594a
	jp Jump_00f_5b9f


jr_00f_5b03:
	ld hl, wd03f
	res 0, [hl]
	ld hl, $5c5b
	call $3c79
	ld a, $01
	ld [wcfbb], a
	ld hl, wd052
	ld a, [hld]
	add a
	ld b, a
	ld [wd0b5], a
	ld a, [hl]
	rl a
	ld [wd0b4], a
	or b
	jr nz, jr_00f_5b2a

	ld a, $01
	ld [wd03c], a

jr_00f_5b2a:
	xor a
	ld [hli], a
	ld [hl], a
	ld a, $75
	ld [wcfb9], a
	ld hl, $5835
	jp Jump_00f_5b9f


jr_00f_5b38:
	bit 1, [hl]
	jr z, jr_00f_5b67

	ld a, $25
	ld [wcfb9], a
	ld hl, $5c6a
	call $3c79
	ld hl, wd047
	dec [hl]
	ld hl, $580c
	jp nz, Jump_00f_5b9f

	push hl
	ld hl, wd03f
	res 1, [hl]
	set 7, [hl]
	call Call_00f_718d
	and $03
	inc a
	inc a

jr_00f_5b60:
	ld [wd048], a
	pop hl
	jp Jump_00f_5b9f


jr_00f_5b67:
	bit 5, [hl]
	jp z, Jump_00f_5b82

	ld hl, $5c75
	call $3c79
	ld a, [wd047]
	dec a
	ld [wd047], a
	ld hl, $5844
	jp nz, Jump_00f_5b9f

	jp Jump_00f_5b9f


Jump_00f_5b82:
	ld a, [wd040]
	bit 6, a
	jp z, Jump_00f_5ba1

	ld a, $63
	ld [wd0e3], a
	call $1b6d
	call $386e
	xor a
	ld [wcfba], a
	ld hl, $57e0
	jp Jump_00f_5b9f


Jump_00f_5b9f:
	xor a
	ret


Jump_00f_5ba1:
	ld a, $01
	and a
	ret


	nop
	ld e, d
	jp z, $284f

	or e
	jr z, jr_00f_5b60

	ld a, a
	ret z

	pop de
	rst $18
	jp wd9b2


	ld e, b
	nop
	ld e, d
	jp z, wd27f

	db $dd
	cp e
	rst $08
	cp h
	ret nz

	rst $20
	ld e, b
	nop
	ld e, d
	jp z, $ba4f

	or l
	rst $18
	jp $bc7f


	rst $08
	rst $18
	jp $b37f


	ld a, [hli]
	or [hl]
	push bc
	or d
	rst $20
	ld e, b
	nop
	ld e, d
	jp z, $b64f

	rst $10
	jr nc, @+$28

	ld a, a
	cp h
	dec sp
	jp c, $7fc3

	or e
	ld a, [hli]
	cp c
	push bc
	or d
	ld e, b
	nop
	ld e, d
	jp z, wcb7f

	reti


	sbc $30
	rst $20
	ld e, b
	nop
	cp d
	or e
	add hl, hl
	or a
	ret


	ld a, a
	jp z, $34de

	or e
	inc sp
	ld c, a
	ld e, d
	jp z, $b37f

	ld a, [hli]
	cp c
	push bc
	or d
	rst $20
	ld e, b
	nop
	ld e, d
	ret


	ld c, a
	or [hl]
	push bc
	cp h
	ld a, [hld]
	ret c

	ld h, $7f
	call nz, wc0b9
	rst $20
	ld e, b
	nop
	ld e, d
	jp z, $ba4f

	sbc $d7
	sbc $bc
	jp wd9b2


	rst $20
	ld e, b
	nop
	call c, wd3b9
	ld a, a
	call c, wd7b6
	dec l
	ld c, a
	inc l
	inc a
	sbc $dd
	ld a, a
	cp d
	or e
	add hl, hl
	or a
	cp h
	ret nz

	rst $20
	ld e, b
	nop
	ld e, d
	ret


	ld c, a
	cp d
	sbc $d7
	sbc $26
	ld a, a
	call nz, wc0b9
	rst $20
	ld e, b
	nop
	ld e, d
	jp z, $267f

	rst $08
	sbc $bc
	jp wd9b2


	ld e, b
	nop
	ld e, d
	ret


	ld c, a
	ld h, $cf
	sbc $26
	ld a, a
	call nz, wdab6
	ret nz

	rst $20
	ld e, b
	nop
	ld e, d
	jp z, $b17f

	ld a, [hld]
	jp c, $b2c3

	reti


	ld d, a
	nop
	ld e, d
	ret


	ld a, a
	cp d
	or e
	add hl, hl
	or a
	jp z, wcf4f

	jr nc, jr_00f_5d01

	jp nz, $b232

	jp wd9b2


	ld d, a
	nop
	ld e, d
	jp z, wd04f

	or e
	ld a, [hli]
	or a
	ld h, $7f
	call nz, wc5da
	or d
	rst $20
	ld e, b

Call_00f_5c99:
	ld hl, wccdc
	ld de, wd03f
	ldh a, [$f3]
	and a
	jr z, jr_00f_5ca8

	inc hl
	ld de, wd044

jr_00f_5ca8:
	ld a, [de]
	res 4, a
	ld [de], a
	ld a, [hl]
	ld [wd0e3], a
	call $1b6d
	ld hl, $5cb9
	jp $3c79


	nop
	ld e, d
	jp z, $b67f

	push bc
	cp h
	ld a, [hld]
	ret c

	inc sp
	ld c, a
	ld d, b
	ld bc, wcd68
	nop
	ld h, $30
	cp [hl]
	push bc
	or d
	rst $20
	ld e, b

Call_00f_5cd0:
	ld hl, $5c29
	call $3c79
	ld hl, wcfdf
	ld a, [hli]
	push af
	ld a, [hld]
	push af
	ld a, [wd00e]
	ld [hli], a
	ld a, [wd00f]
	ld [hl], a
	ld hl, wcfba
	push hl
	ld a, [hl]
	push af
	xor a
	ld [hli], a
	ld [wd03b], a
	ld a, $28
	ld [hli], a
	xor a
	ld [hl], a
	call Call_00f_6068
	call Call_00f_61fe
	pop af
	pop hl
	ld [hl], a
	ld hl, wcfe0

jr_00f_5d01:
	pop af
	ld [hld], a
	pop af
	ld [hl], a
	xor a
	ld [wcc5b], a
	inc a
	ldh [$f3], a
	call Call_00f_71f9
	call Call_00f_4ebe
	xor a
	ldh [$f3], a
	jp Jump_00f_6499


Call_00f_5d18:
	ld hl, $5d1e
	jp $3c79


	db $00, $5a, $50, $08

	ldh a, [$f3]
	and a
	ld a, [wcfb9]
	ld hl, wccf1
	jr z, jr_00f_5d33

	ld a, [wcfb3]
	ld hl, wccf2

jr_00f_5d33:
	ld [hl], a
	ld [wd0e3], a
	call Call_00f_5db7
	ld a, [wcced]
	and a
	ld hl, $5d56
	ret nz

	ld a, [wd0e3]
	cp $03
	ld hl, $5d56
	ret c

	ld hl, $5d4f
	ret


	db $00, $c9, $7f, $50, $08

	jr jr_00f_5d5b

	nop
	jp z, Jump_00f_507f

	db $08

jr_00f_5d5b:
	ld a, [wcced]
	and a
	jr z, jr_00f_5d71

	ld hl, $5d65
	ret


	nop
	jp nc, wdab2

	or d
	db $dd
	pop de
	cp h
	cp h
	jp $0850


jr_00f_5d71:
	ld hl, $5d75
	ret


	db $00, $4f, $50, $01, $45, $cf, $08

	ld hl, $5d8d
	ld a, [wd0e3]
	add a
	push bc
	ld b, $00
	ld c, a
	add hl, bc
	pop bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ret


	sub a
	ld e, l
	and b
	ld e, l
	and a
	ld e, l

	db $ac, $5d, $b4, $5d

	nop
	db $dd
	ld a, a
	jp nz, wdfb6

	ret nz

	rst $20
	ld d, a
	nop
	db $dd
	ld a, a
	cp h
	ret nz

	rst $20
	ld d, a
	nop
	cp h
	ret nz

	rst $20
	ld d, a

	db $00, $7f, $ba, $b3, $29, $b7, $e7, $57, $00, $e7, $57

Call_00f_5db7:
	push bc
	ld a, [wd0e3]
	ld c, a
	ld b, $00
	ld hl, $5dd5

jr_00f_5dc1:
	ld a, [hli]
	cp $ff
	jr z, jr_00f_5dcf

	cp c
	jr z, jr_00f_5dcf

	and a
	jr nz, jr_00f_5dc1

	inc b
	jr jr_00f_5dc1

jr_00f_5dcf:
	ld a, b
	ld [wd0e3], a
	pop bc
	ret


	db $0e, $4a, $00, $69, $75, $78, $85, $00, $60, $61, $64, $66, $68, $8c, $00, $01
	db $0a, $0b, $11, $13, $14, $15, $1e, $22, $23, $25, $27, $2b, $2c, $2d, $2e, $2f
	db $40, $44, $46, $47, $51, $59, $5a, $5b, $5c, $67, $6a, $6b, $6e, $6f, $76, $7a
	db $80, $84, $8b, $8d, $91, $94, $96, $97, $9a, $9c, $9f, $a3, $a4, $00, $ff

Call_00f_5e14:
	ld de, wcfba
	ldh a, [$f3]
	and a
	jr z, jr_00f_5e1f

	ld de, wcfb4

jr_00f_5e1f:
	ld hl, $5eb8
	ld a, [wd038]
	and $7f
	jr z, jr_00f_5e36

	ld hl, $5e74
	ld a, [wd03b]
	cp $ff
	jr nz, jr_00f_5e36

	ld hl, $5ea2

jr_00f_5e36:
	push de
	call $3c79
	xor a
	ld [wd03b], a
	pop de
	ld a, [de]
	cp $2d
	ret nz

	ld hl, wd0b4
	ld a, [hli]
	ld b, [hl]
	srl a
	rr b
	srl a
	rr b
	srl a
	rr b
	ld [hl], b
	dec hl
	ld [hli], a
	or b
	jr nz, jr_00f_5e5c

	inc a
	ld [hl], a

jr_00f_5e5c:
	ld hl, $5e88
	call $3c79
	ld b, $04
	ld a, $24
	call $3e9d
	ldh a, [$f3]
	and a
	jr nz, jr_00f_5e71

	jp Jump_00f_6499


jr_00f_5e71:
	jp Jump_00f_63db


	db $00, $bc, $b6, $bc, $7f, $5a, $c9, $4f, $ba, $b3, $29, $b7, $ca, $7f, $ca, $2d
	db $da, $c0, $e7, $58

	nop
	or d
	or a
	or l
	or d
	ld a, a
	or c
	rst $08
	rst $18
	jp $5a4f


	jp z, $2c55

	jp nc, wc6de

	ld a, a
	inc a
	jp nz, wdfb6

	ret nz

	rst $20
	ld e, b
	nop
	ld e, c
	add $ca
	ld c, a
	ld l, $de
	ld l, $de
	or a
	or d
	jp $b2c5


	rst $20
	ld e, b
	ld hl, $5eb8
	jp $3c79


	nop
	ld e, c
	add $ca
	ld c, a
	cp d
	or e
	or [hl]
	ld h, $7f
	push bc
	or d
	ld a, a
	ret nc

	ret nz

	or d
	jr nc, @+$58

	ld e, b

Call_00f_5ecb:
	ld a, [wd03b]
	and a
	jr z, jr_00f_5ee4

	dec a
	add a
	ld hl, $5ee9
	ld b, $00
	ld c, a
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	call $3c79
	xor a
	ld [wd03b], a

jr_00f_5ee4:
	ld c, $14
	jp $3781


	db $ed, $5e

	ei
	ld e, [hl]

	db $00, $b7, $e1, $b3, $bc, $e2, $c6, $7f, $b1, $c0, $df, $c0, $e7, $58

	nop
	or d
	pop bc
	add hl, hl
	or a
	ld a, a
	set 3, a
	cp e
	jp nz, $58e7

Call_00f_5f07:
	xor a
	ld [wcced], a
	ld a, [wd0f0]
	cp $04
	jr nz, jr_00f_5f16

	ld a, $01
	and a
	ret


jr_00f_5f16:
	ld hl, wd137
	ld bc, $002c
	ld a, [wcc2f]
	call $3ad1
	ld a, [wd2d8]
	cp [hl]
	jr nz, jr_00f_5f30

	inc hl
	ld a, [wd2d9]
	cp [hl]
	jp z, Jump_00f_6016

jr_00f_5f30:
	ld hl, wd2d5
	bit 7, [hl]
	ld a, $65
	jr nz, jr_00f_5f4d

	bit 5, [hl]
	ld a, $46
	jr nz, jr_00f_5f4d

	bit 3, [hl]
	ld a, $32
	jr nz, jr_00f_5f4d

	bit 1, [hl]
	ld a, $1e
	jr nz, jr_00f_5f4d

	ld a, $0a

jr_00f_5f4d:
	ld b, a
	ld c, a
	ld a, [wd009]
	ld d, a
	add b
	ld b, a
	jr nc, jr_00f_5f59

	ld b, $ff

jr_00f_5f59:
	ld a, c
	cp d
	jp nc, Jump_00f_6016

jr_00f_5f5e:
	call Call_00f_718d
	swap a
	cp b
	jr nc, jr_00f_5f5e

	cp c
	jp c, Jump_00f_6016

jr_00f_5f6a:
	call Call_00f_718d
	cp b
	jr nc, jr_00f_5f6a

	cp c
	jr c, jr_00f_5fbe

	ld a, d
	sub c
	ld b, a
	call Call_00f_718d
	swap a
	sub b
	jr c, jr_00f_5f8d

	cp b
	jr nc, jr_00f_5f9f

	ld hl, $6039
	call $3c79
	call Call_00f_5cd0
	jp Jump_00f_601a


jr_00f_5f8d:
	call Call_00f_718d
	add a
	swap a
	and $07
	jr z, jr_00f_5f8d

	ld [wcfff], a
	ld hl, $6029
	jr jr_00f_5fb9

jr_00f_5f9f:
	call Call_00f_718d
	and $03
	ld hl, $601c
	and a
	jr z, jr_00f_5fb9

	ld hl, $6039
	dec a
	jr z, jr_00f_5fb9

	ld hl, $604a
	dec a
	jr z, jr_00f_5fb9

	ld hl, $6059

jr_00f_5fb9:
	call $3c79
	jr jr_00f_601a

jr_00f_5fbe:
	ld a, [wd004]
	and a
	jr z, jr_00f_5f9f

	ld hl, wd014
	push hl
	ld a, [hli]
	ld b, [hl]
	inc hl
	add b
	ld b, [hl]
	inc hl
	add b
	ld b, [hl]
	add b
	pop hl
	push af
	ld a, [wcc26]
	ld c, a
	ld b, $00
	add hl, bc
	ld b, [hl]
	pop af
	cp b
	jr z, jr_00f_5f9f

	ld a, $01
	ld [wcced], a
	ld a, [wcc28]
	ld b, a
	ld a, [wcc26]
	ld c, a

jr_00f_5fec:
	call Call_00f_718d
	and $03
	cp b
	jr nc, jr_00f_5fec

	cp c
	jr z, jr_00f_5fec

	ld [wcc26], a
	ld hl, wd014
	ld e, a
	ld d, $00
	add hl, de
	ld a, [hl]
	and a
	jr z, jr_00f_5fec

	ld a, [wcc26]
	ld c, a
	ld b, $00
	ld hl, wd003
	add hl, bc
	ld a, [hl]
	ld [wccdc], a
	call Call_00f_6dae

Jump_00f_6016:
	ld a, $01
	and a
	ret


Jump_00f_601a:
jr_00f_601a:
	xor a
	ret


	ld bc, wcff0
	nop
	jp z, wc57f

	rst $08
	cp c
	jp wd9b2


	ld e, b
	ld bc, wcff0
	nop
	jp z, wcb7f

	reti


	ret z

	db $dd
	jp z, wd22c

	ret nz

	rst $20
	ld e, b
	ld bc, wcff0
	nop
	jp z, $b27f

	or e
	cp d
	call nz, $7fdd
	or a
	or [hl]
	push bc
	or d
	ld e, b
	ld bc, wcff0
	nop
	jp z, $bf7f

	rst $18
	ld c, b
	db $dd
	ld a, a
	pop de
	or d
	ret nz

	ld e, b
	ld bc, wcff0
	nop
	jp z, $bc7f

	rst $10
	sbc $46
	ret c

	db $dd
	cp h
	ret nz

	ld e, b

Call_00f_6068:
	xor a
	ld hl, wd0b4
	ld [hli], a
	ld [hl], a
	ld hl, wcfbb
	ld a, [hli]
	and a
	ld d, a
	ret z

	ld a, [hl]
	cp $14
	jr nc, jr_00f_60af

	ld hl, wcfdf
	ld a, [hli]
	ld b, a
	ld c, [hl]
	ld a, [wd046]
	bit 2, a
	jr z, jr_00f_608b

	sla c
	rl b

jr_00f_608b:
	ld hl, wd00c
	ld a, [wd03b]
	and a
	jr z, jr_00f_60e2

	ld c, $03
	call Call_00f_61b5
	ldh a, [$97]
	ld b, a
	ldh a, [$98]
	ld c, a
	push bc
	ld hl, wd14f
	ld a, [wcc2f]
	ld bc, $002c
	call $3ad1
	pop bc
	jr jr_00f_60e2

jr_00f_60af:
	ld hl, wcfe3
	ld a, [hli]
	ld b, a
	ld c, [hl]
	ld a, [wd046]
	bit 1, a
	jr z, jr_00f_60c0

	sla c
	rl b

jr_00f_60c0:
	ld hl, wd012
	ld a, [wd03b]
	and a
	jr z, jr_00f_60e2

	ld c, $05
	call Call_00f_61b5
	ldh a, [$97]
	ld b, a
	ldh a, [$98]
	ld c, a
	push bc
	ld hl, wd155
	ld a, [wcc2f]
	ld bc, $002c
	call $3ad1
	pop bc

jr_00f_60e2:
	ld a, [hli]
	ld l, [hl]
	ld h, a
	or b
	jr z, jr_00f_60fd

	srl b
	rr c
	srl b
	rr c
	srl h
	rr l
	srl h
	rr l
	ld a, l
	or h
	jr nz, jr_00f_60fd

	inc l

jr_00f_60fd:
	ld b, l
	ld a, [wd009]
	ld e, a
	ld a, [wd03b]
	and a
	jr z, jr_00f_610a

	sla e

jr_00f_610a:
	ld a, $01
	and a
	ret


Call_00f_610e:
	ld hl, wd0b4
	xor a
	ld [hli], a
	ld [hl], a
	ld hl, wcfb5
	ld a, [hli]
	ld d, a
	and a
	ret z

	ld a, [hl]
	cp $14
	jr nc, jr_00f_6155

	ld hl, wd00e
	ld a, [hli]
	ld b, a
	ld c, [hl]
	ld a, [wd041]
	bit 2, a
	jr z, jr_00f_6131

	sla c
	rl b

jr_00f_6131:
	ld hl, wcfdd
	ld a, [wd03b]
	and a
	jr z, jr_00f_6188

	ld hl, wd151
	ld a, [wcc2f]
	ld bc, $002c
	call $3ad1
	ld a, [hli]
	ld b, a
	ld c, [hl]
	push bc
	ld c, $02
	call Call_00f_61b5
	ld hl, $ff97
	pop bc
	jr jr_00f_6188

jr_00f_6155:
	ld hl, wd012
	ld a, [hli]
	ld b, a
	ld c, [hl]
	ld a, [wd041]
	bit 1, a
	jr z, jr_00f_6166

	sla c
	rl b

jr_00f_6166:
	ld hl, wcfe3
	ld a, [wd03b]
	and a
	jr z, jr_00f_6188

	ld hl, wd155
	ld a, [wcc2f]
	ld bc, $002c
	call $3ad1
	ld a, [hli]
	ld b, a
	ld c, [hl]
	push bc
	ld c, $05
	call Call_00f_61b5
	ld hl, $ff97
	pop bc

jr_00f_6188:
	ld a, [hli]
	ld l, [hl]
	ld h, a
	or b
	jr z, jr_00f_61a3

	srl b
	rr c
	srl b
	rr c
	srl h
	rr l
	srl h
	rr l
	ld a, l
	or h
	jr nz, jr_00f_61a3

	inc l

jr_00f_61a3:
	ld b, l
	ld a, [wcfda]
	ld e, a
	ld a, [wd03b]
	and a
	jr z, jr_00f_61b0

	sla e

jr_00f_61b0:
	ld a, $01
	and a
	and a
	ret


Call_00f_61b5:
	push de
	push bc
	ld a, [wd0f0]
	cp $04
	jr nz, jr_00f_61d9

	ld hl, wd845
	dec c
	sla c
	ld b, $00
	add hl, bc
	ld a, [wcfcf]
	ld bc, $002c
	call $3ad1
	ld a, [hli]
	ldh [$97], a
	ld a, [hl]
	ldh [$98], a
	pop bc
	pop de
	ret


jr_00f_61d9:
	ld a, [wcfda]
	ld [wd0ec], a
	ld a, [wcfcc]
	ld [wd092], a
	call $2f2e
	ld hl, wcfd8
	ld de, wcf96
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hl]
	ld [de], a
	pop bc
	ld b, $00
	ld hl, wcf8b
	call $3994
	pop de
	ret


Call_00f_61fe:
	ldh a, [$f3]
	and a
	ld a, [wcfba]
	jr z, jr_00f_6209

	ld a, [wcfb4]

jr_00f_6209:
	cp $07
	jr nz, jr_00f_6212

	srl c
	jr nz, jr_00f_6212

	inc c

jr_00f_6212:
	cp $1d
	jr z, jr_00f_6222

	cp $1e
	jr z, jr_00f_6222

	cp $26
	jp z, Jump_00f_62af

	ld a, d
	and a
	ret z

jr_00f_6222:
	xor a
	ld hl, $ff95
	ld [hli], a
	ld [hli], a
	ld [hl], a
	ld a, e
	add a
	jr nc, jr_00f_6232

	push af
	ld a, $01
	ld [hl], a
	pop af

jr_00f_6232:
	inc hl
	ld [hli], a
	ld a, $05
	ld [hld], a
	push bc
	ld b, $04
	call $3902
	pop bc
	inc [hl]
	inc [hl]
	inc hl
	ld [hl], d
	call $38f5
	ld [hl], b
	call $38f5
	ld [hl], c
	ld b, $04
	call $3902
	ld [hl], $32
	ld b, $04
	call $3902
	ld hl, wd0b4
	ld b, [hl]
	ldh a, [$98]
	add b
	ldh [$98], a
	jr nc, jr_00f_6269

	ldh a, [$97]
	inc a
	ldh [$97], a
	and a
	jr z, jr_00f_629d

jr_00f_6269:
	ldh a, [$95]
	ld b, a
	ldh a, [$96]
	or a
	jr nz, jr_00f_629d

	ldh a, [$97]
	cp $03
	jr c, jr_00f_6281

	cp $04
	jr nc, jr_00f_629d

	ldh a, [$98]
	cp $e6
	jr nc, jr_00f_629d

jr_00f_6281:
	inc hl
	ldh a, [$98]
	ld b, [hl]
	add b
	ld [hld], a
	ldh a, [$97]
	ld b, [hl]
	adc b
	ld [hl], a
	jr c, jr_00f_629d

	ld a, [hl]
	cp $03
	jr c, jr_00f_62a3

	cp $04
	jr nc, jr_00f_629d

	inc hl
	ld a, [hld]
	cp $e6
	jr c, jr_00f_62a3

jr_00f_629d:
	ld a, $03
	ld [hli], a
	ld a, $e5
	ld [hld], a

jr_00f_62a3:
	inc hl
	ld a, [hl]
	add $02
	ld [hld], a
	jr nc, jr_00f_62ab

	inc [hl]

jr_00f_62ab:
	ld a, $01
	and a
	ret


Jump_00f_62af:
	call Call_00f_7427
	ld a, [wd03c]
	dec a
	ret


	ld [bc], a
	ld c, e
	sbc b
	and e
	rst $38

Call_00f_62bc:
	xor a
	ld [wd03b], a
	ldh a, [$f3]
	and a
	ld a, [wcfcc]
	jr nz, jr_00f_62cb

	ld a, [wcffb]

jr_00f_62cb:
	ld [wd092], a
	call $2f2e
	ld a, [wd099]
	ld b, a
	srl b
	ldh a, [$f3]
	and a
	ld hl, wcfbb
	ld de, wd040
	jr z, jr_00f_62e8

	ld hl, wcfb5
	ld de, wd045

jr_00f_62e8:
	ld a, [hld]
	and a
	ret z

	dec hl
	ld c, [hl]
	ld a, [de]
	bit 2, a
	jr nz, jr_00f_62fa

	sla b
	jr nc, jr_00f_62fc

	ld b, $ff
	jr jr_00f_62fc

jr_00f_62fa:
	srl b

jr_00f_62fc:
	ld hl, $6327

jr_00f_62ff:
	ld a, [hli]
	cp c
	jr z, jr_00f_630a

	inc a
	jr nz, jr_00f_62ff

	srl b
	jr jr_00f_6316

jr_00f_630a:
	sla b
	jr nc, jr_00f_6310

	ld b, $ff

jr_00f_6310:
	sla b
	jr nc, jr_00f_6316

	ld b, $ff

jr_00f_6316:
	call Call_00f_718d
	rlc a
	rlc a
	rlc a
	cp b
	ret nc

	ld a, $01
	ld [wd03b], a
	ret


	db $02, $4b, $98, $a3, $ff

Call_00f_632c:
	ldh a, [$f3]
	and a
	ld hl, wccdd
	ld de, wcfb5
	ld a, [wccdc]
	jr z, jr_00f_6343

	ld hl, wccdc
	ld de, wcfbb
	ld a, [wccdd]

jr_00f_6343:
	cp $44
	ret nz

	ld a, $01
	ld [wd03c], a
	ld a, [hl]
	cp $44
	ret z

	ld a, [de]
	and a
	ret z

	inc de
	ld a, [de]
	and a
	jr z, jr_00f_635d

	cp $01
	jr z, jr_00f_635d

	xor a
	ret


jr_00f_635d:
	ld hl, wd0b4
	ld a, [hli]
	or [hl]
	ret z

	ld a, [hl]
	add a
	ld [hld], a
	ld a, [hl]
	adc a
	ld [hl], a
	jr nc, jr_00f_636f

	ld a, $ff
	ld [hli], a
	ld [hl], a

jr_00f_636f:
	xor a
	ld [wd03c], a
	call Call_00f_684d
	xor a
	ret


Call_00f_6378:
	ld a, [wcfba]
	cp $26
	jr z, jr_00f_63db

	cp $28
	jr z, jr_00f_6390

	cp $29
	jr z, jr_00f_63a8

	ld a, [wcfbb]
	and a
	jp z, Jump_00f_6436

	jr jr_00f_63db

jr_00f_6390:
	ld hl, wcfcd
	ld de, wd0b4
	ld a, [hli]
	srl a
	ld [de], a
	inc de
	ld b, a
	ld a, [hl]
	rr a
	ld [de], a
	or b
	jr nz, jr_00f_63db

	ld a, $01
	ld [de], a
	jr jr_00f_63db

jr_00f_63a8:
	ld hl, wd009
	ld a, [hl]
	ld b, a
	ld a, [wcfb9]
	cp $45
	jr z, jr_00f_63d4

	cp $65
	jr z, jr_00f_63d4

	ld b, $14
	cp $31
	jr z, jr_00f_63d4

	ld b, $28
	cp $52
	jr z, jr_00f_63d4

	ld a, [hl]
	ld b, a
	srl a
	add b
	ld b, a

jr_00f_63ca:
	call Call_00f_718d
	and a
	jr z, jr_00f_63ca

	cp b
	jr nc, jr_00f_63ca

	ld b, a

jr_00f_63d4:
	ld hl, wd0b4
	xor a
	ld [hli], a
	ld a, b
	ld [hl], a

Call_00f_63db:
Jump_00f_63db:
jr_00f_63db:
	ld hl, wd0b4
	ld a, [hli]
	ld b, a
	ld a, [hl]
	or b
	jr z, jr_00f_6436

	ld a, [wd045]
	bit 4, a
	jp nz, Jump_00f_64f7

	ld a, [hld]
	ld b, a
	ld a, [wcfce]
	ld [wcee6], a
	sub b
	ld [wcfce], a
	ld a, [hl]
	ld b, a
	ld a, [wcfcd]
	ld [wcee7], a
	sbc b
	ld [wcfcd], a
	jr nc, jr_00f_6414

	ld a, [wcee7]
	ld [hli], a
	ld a, [wcee6]
	ld [hl], a
	xor a
	ld hl, wcfcd
	ld [hli], a
	ld [hl], a

jr_00f_6414:
	ld hl, wcfdb
	ld a, [hli]
	ld [wcee5], a
	ld a, [hl]
	ld [wcee4], a
	ld hl, wcfcd
	ld a, [hli]
	ld [wcee9], a
	ld a, [hl]
	ld [wcee8], a
	ld hl, wc3ca
	xor a
	ld [wcf7b], a
	ld a, $48
	call $3e9d

Jump_00f_6436:
jr_00f_6436:
	jp Jump_00f_4eb8


Call_00f_6439:
	ld a, [wcfb4]
	cp $26
	jr z, jr_00f_6499

	cp $28
	jr z, jr_00f_6451

	cp $29
	jr z, jr_00f_6469

	ld a, [wcfb5]
	and a
	jp z, Jump_00f_64f4

	jr jr_00f_6499

jr_00f_6451:
	ld hl, wcffc
	ld de, wd0b4
	ld a, [hli]
	srl a
	ld [de], a
	inc de
	ld b, a
	ld a, [hl]
	rr a
	ld [de], a
	or b
	jr nz, jr_00f_6499

	ld a, $01
	ld [de], a
	jr jr_00f_6499

jr_00f_6469:
	ld hl, wcfda
	ld a, [hl]
	ld b, a
	ld a, [wcfb3]
	cp $45
	jr z, jr_00f_6492

	cp $65
	jr z, jr_00f_6492

	ld b, $14
	cp $31
	jr z, jr_00f_6492

	ld b, $28
	cp $52
	jr z, jr_00f_6492

	ld a, [hl]
	ld b, a
	srl a
	add b
	ld b, a

jr_00f_648b:
	call Call_00f_718d
	cp b
	jr nc, jr_00f_648b

	ld b, a

jr_00f_6492:
	ld hl, wd0b4
	xor a
	ld [hli], a
	ld a, b
	ld [hl], a

Jump_00f_6499:
jr_00f_6499:
	ld hl, wd0b4
	ld a, [hli]
	ld b, a
	ld a, [hl]
	or b
	jr z, jr_00f_64f4

	ld a, [wd040]
	bit 4, a
	jp nz, Jump_00f_64f7

	ld a, [hld]
	ld b, a
	ld a, [wcffd]
	ld [wcee6], a
	sub b
	ld [wcffd], a
	ld [wcee8], a
	ld b, [hl]
	ld a, [wcffc]
	ld [wcee7], a
	sbc b
	ld [wcffc], a
	ld [wcee9], a
	jr nc, jr_00f_64dc

	ld a, [wcee7]
	ld [hli], a
	ld a, [wcee6]
	ld [hl], a
	xor a
	ld hl, wcffc
	ld [hli], a
	ld [hl], a
	ld hl, wcee8
	ld [hli], a
	ld [hl], a

jr_00f_64dc:
	ld hl, wd00a
	ld a, [hli]
	ld [wcee5], a
	ld a, [hl]
	ld [wcee4], a
	ld hl, wc45e
	ld a, $01
	ld [wcf7b], a
	ld a, $48
	call $3e9d

Jump_00f_64f4:
jr_00f_64f4:
	jp Jump_00f_4eb8


Jump_00f_64f7:
	ld hl, $6545
	call $3c79
	ld de, wccd8
	ld bc, wd045
	ldh a, [$f3]
	and a
	jr z, jr_00f_650e

	ld de, wccd7
	ld bc, wd040

jr_00f_650e:
	ld hl, wd0b4
	ld a, [hli]
	and a
	jr nz, jr_00f_6519

	ld a, [de]
	sub [hl]
	ld [de], a
	ret nc

jr_00f_6519:
	ld h, b
	ld l, c
	res 4, [hl]
	ld hl, $655f
	call $3c79
	ldh a, [$f3]
	xor $01
	ldh [$f3], a
	ld hl, $577e
	ld b, $1e
	call $3620
	ldh a, [$f3]
	xor $01
	ldh [$f3], a
	ld hl, wcfba
	and a
	jr z, jr_00f_6540

	ld hl, wcfb4

jr_00f_6540:
	xor a
	ld [hl], a
	jp Jump_00f_4eb8


	nop
	ld e, c
	add $7f
	or [hl]
	call c, $c3df
	ld c, a
	inc a
	sbc $bc
	sbc $26
	ld a, a
	cp d
	or e
	add hl, hl
	or a
	db $dd
	ld a, a
	or e
	cp c
	ret nz

	rst $20
	ld e, b
	nop
	ld e, c
	ret


	ld a, a
	inc a
	sbc $bc
	sbc $ca
	ld c, a
	or a
	or h
	jp wcfbc


	rst $18
	ret nz

	ld d, [hl]
	ld e, b

Call_00f_6572:
	ld hl, wd045
	ld de, wcd2e
	ld bc, wcfb3
	ldh a, [$f3]
	and a
	jr z, jr_00f_6589

	ld hl, wd040
	ld de, wcd1a
	ld bc, wcfb9

jr_00f_6589:
	bit 6, [hl]
	ret z

	ld a, [de]
	cp $0d
	ret z

	ldh a, [$f3]
	xor $01
	ldh [$f3], a
	ld h, b
	ld l, c
	ld [hl], $00
	inc hl
	ld [hl], $0a
	push hl
	ld hl, $65b4
	call $3c79
	call Call_00f_7762
	pop hl
	xor a
	ld [hld], a
	ld a, $63
	ld [hl], a
	ldh a, [$f3]
	xor $01
	ldh [$f3], a
	ret


	nop
	ld e, d
	ret


	ld a, a
	or d
	or [hl]
	ret c

	ret


	ld c, a
	inc e
	and [hl]
	sub d
	db $e3
	dec bc
	ld h, $7f
	or c
	ld h, $df
	jp $b8b2


	rst $20
	ld e, b

Call_00f_65cc:
	ldh a, [$f3]
	and a
	ld a, [wccf2]
	ld hl, wccdc
	ld de, wcfb9
	jr z, jr_00f_65e3

	ld a, [wccf1]
	ld de, wcfb3
	ld hl, wccdd

jr_00f_65e3:
	ld [hl], a
	cp $77
	jr z, jr_00f_65eb

	and a
	jr nz, jr_00f_660b

jr_00f_65eb:
	ld hl, $65f3
	call $3c79
	xor a
	ret


	nop
	cp h
	or [hl]
	cp h
	ld a, a
	add h
	add d
	sbc a
	ld h, $b4
	cp h
	jp z, $bc4e

	rst $18
	ld b, h
	or d
	add $b5
	call c, wc0df
	rst $20
	ld e, b

jr_00f_660b:
	ld [wd0e3], a
	dec a
	ld hl, $5658
	ld bc, $0006
	call $3ad1
	ld a, $0e
	call $01a3
	call Call_00f_6655
	call $1b6d
	call $386e
	ld a, $01
	and a
	ret


Call_00f_662a:
	xor a
	ld [wcc5b], a
	ld a, $76
	call Call_00f_71f9
	ld de, wcfb9
	ld hl, wccdc
	ldh a, [$f3]
	and a
	jr z, jr_00f_6644

	ld de, wcfb3
	ld hl, wccdd

jr_00f_6644:
	call Call_00f_718d
	and a
	jr z, jr_00f_6644

	cp $a5
	jr nc, jr_00f_6644

	cp $76
	jr z, jr_00f_6644

	ld [hl], a
	jr jr_00f_660b

Call_00f_6655:
	ldh a, [$f3]
	and a
	ld hl, wd014
	ld de, wd148
	ld a, [wcc2e]
	jr z, jr_00f_666c

	ld hl, wcfe5
	ld de, wd840
	ld a, [wcce2]

jr_00f_666c:
	ld b, $00
	ld c, a
	add hl, bc
	inc [hl]
	ld h, d
	ld l, e
	add hl, bc
	ldh a, [$f3]
	and a
	ld a, [wcc2f]
	jr z, jr_00f_667f

	ld a, [wcfcf]

jr_00f_667f:
	ld bc, $002c
	call $3ad1
	inc [hl]
	ret


Call_00f_6687:
	ld hl, wd000
	ld a, [hli]
	ld b, a
	ld c, [hl]
	ld hl, wcfd1
	ld a, [hli]
	ld d, a
	ld e, [hl]
	ld a, [wcfbc]
	ld [wd0e3], a
	ldh a, [$f3]
	and a
	jr z, jr_00f_66b0

	ld hl, wcfd1
	ld a, [hli]
	ld b, a
	ld c, [hl]
	ld hl, wd000
	ld a, [hli]
	ld d, a
	ld e, [hl]
	ld a, [wcfb6]
	ld [wd0e3], a

jr_00f_66b0:
	ld a, [wd0e3]
	cp b
	jr z, jr_00f_66bb

	cp c
	jr z, jr_00f_66bb

	jr jr_00f_66d5

jr_00f_66bb:
	ld hl, wd0b5
	ld a, [hld]
	ld h, [hl]
	ld l, a
	ld b, h
	ld c, l
	srl b
	rr c
	add hl, bc
	ld a, h
	ld [wd0b4], a
	ld a, l
	ld [wd0b5], a
	ld hl, wd038
	set 7, [hl]

jr_00f_66d5:
	ld a, [wd0e3]
	ld b, a
	ld hl, $6756

Jump_00f_66dc:
	ld a, [hli]
	cp $ff
	jr z, jr_00f_672a

	cp b
	jr nz, jr_00f_6725

	ld a, [hl]
	cp d
	jr z, jr_00f_66ed

	cp e
	jr z, jr_00f_66ed

	jr jr_00f_6725

jr_00f_66ed:
	push hl
	push bc
	inc hl
	ld a, [wd038]
	and $80
	ld b, a
	ld a, [hl]
	ldh [$99], a
	add b
	ld [wd038], a
	xor a
	ldh [$96], a
	ld hl, wd0b4
	ld a, [hli]
	ldh [$97], a
	ld a, [hld]
	ldh [$98], a
	call $38f5
	ld a, $0a
	ldh [$99], a
	ld b, $04
	call $3902
	ldh a, [$97]
	ld [hli], a
	ld b, a
	ldh a, [$98]
	ld [hl], a
	or b
	jr nz, jr_00f_6723

	inc a
	ld [wd03c], a

jr_00f_6723:
	pop bc
	pop hl

jr_00f_6725:
	inc hl
	inc hl
	jp Jump_00f_66dc


jr_00f_672a:
	ret


	ld a, [wcfb6]
	ld d, a
	ld hl, wd000
	ld b, [hl]
	inc hl
	ld c, [hl]
	ld a, $10
	ld [wd0e3], a
	ld hl, $6756

jr_00f_673d:
	ld a, [hli]
	cp $ff
	ret z

	cp d
	jr nz, jr_00f_674d

	ld a, [hli]
	cp b
	jr z, jr_00f_6751

	cp c
	jr z, jr_00f_6751

	jr jr_00f_674e

jr_00f_674d:
	inc hl

jr_00f_674e:
	inc hl
	jr jr_00f_673d

jr_00f_6751:
	ld a, [hl]
	ld [wd0e3], a
	ret


	db $15, $14

	inc d

	db $14

	ld d, $14

	db $14

	add hl, de
	inc d

	db $16

	dec d
	inc d

	db $17

	dec d
	inc d

	db $15, $05

	inc d

	db $04

	ld [bc], a
	nop

	db $15, $15

	dec b

	db $14

	inc d
	dec b

	db $17

	rla
	dec b

	db $19

	add hl, de
	dec b

	db $16

	ld d, $05

	db $18

	jr jr_00f_6782

	db $14

	dec d
	dec b

	db $16

	inc d

jr_00f_6782:
	dec b

	db $15, $16

	dec b

	db $17

	ld d, $05

	db $00, $05

	dec b

	db $00, $08

	nop

	db $08

	db $08
	inc d

	db $14

	rlca
	inc d

	db $14

	dec b
	dec b

	db $15, $04

	inc d

	db $17

	inc b
	nop

	db $17

	ld [bc], a
	inc d

	db $16

	inc b
	inc d

	db $16

	rlca
	dec b

	db $16

	inc bc
	dec b

	db $16

	dec b
	inc d

	db $16

	ld [bc], a
	dec b

	db $19

	dec d
	dec b

	db $19

	ld d, $14

	db $19

	inc b
	inc d

	db $19

	ld [bc], a
	inc d

	db $01

	nop
	inc d

	db $01

	inc bc
	dec b

	db $01

	ld [bc], a
	dec b

	db $01

	jr jr_00f_67cd

	db $01

	rlca
	dec b

	db $01

	dec b

jr_00f_67cd:
	inc d

	db $01

	add hl, de
	inc d

	db $01

	db $08
	nop

	db $03, $16

	inc d

	db $03, $03

	dec b

	db $03, $04

	dec b

	db $03, $07

	inc d

	db $03, $05

	dec b

	db $03, $08

	dec b

	db $04

	inc d
	inc d

	db $04

	rla
	inc d

	db $04

	ld d, $05

	db $04

	rlca
	dec b

	db $04

	dec b
	inc d

	db $04

	inc bc
	inc d

	db $02

	rla
	dec b

	db $02

	db $01
	inc d

	db $02

	rlca
	inc d

	db $02

	ld d, $14

	db $02

	dec b
	dec b

	db $18

	db $01
	inc d

	db $18

	inc bc
	inc d

	db $07

	inc d
	dec b

	db $07

	ld d, $14

	db $07

	db $01
	dec b

	db $07

	ld [bc], a
	dec b

	db $07

	jr jr_00f_6830

	db $07

	db $08
	dec b

	db $07

	inc bc
	inc d

	db $05

	inc d
	inc d

	db $05

	db $01
	dec b

	db $05

	inc b
	dec b

	db $05

	ld [bc], a
	inc d

	db $05

	rlca

jr_00f_6830:
	inc d

	db $05

	add hl, de
	inc d

	db $08

	nop
	nop

	db $08

	jr @+$02

	db $14

	ld a, [de]
	dec b

	db $15, $1a

	dec b

	db $17

	ld a, [de]
	dec b

	db $16

	ld a, [de]
	dec b

	db $19

	ld a, [de]
	inc d

	db $1a

	ld a, [de]
	inc d

	db $ff

Call_00f_684d:
	ld hl, wd044
	ld de, wcfba
	ld bc, wcfd0
	ldh a, [$f3]
	and a
	jr z, jr_00f_6864

	ld hl, wd03f
	ld de, wcfb4
	ld bc, wcfff

jr_00f_6864:
	ld a, [de]
	cp $08
	jr nz, jr_00f_686f

	ld a, [bc]
	and $07
	jp z, Jump_00f_68eb

jr_00f_686f:
	call Call_00f_7fac
	jr z, jr_00f_6882

	ld a, [de]
	cp $11
	ret z

	cp $03
	jp z, Jump_00f_68eb

	cp $08
	jp z, Jump_00f_68eb

jr_00f_6882:
	bit 6, [hl]
	jp nz, Jump_00f_68eb

	ldh a, [$f3]
	and a
	jr nz, jr_00f_68b1

	ld a, [wcfba]
	cp $12
	jr c, jr_00f_68a9

	cp $1a
	jr c, jr_00f_68a1

	cp $3a
	jr c, jr_00f_68a9

	cp $42
	jr c, jr_00f_68a1

	jr jr_00f_68a9

jr_00f_68a1:
	ld a, [wd045]
	bit 1, a
	jp nz, Jump_00f_68eb

jr_00f_68a9:
	ld a, [wd040]
	bit 0, a
	ret nz

	jr jr_00f_68d4

jr_00f_68b1:
	ld a, [wcfb4]
	cp $12
	jr c, jr_00f_68ce

	cp $1a
	jr c, jr_00f_68c6

	cp $3a
	jr c, jr_00f_68ce

	cp $42
	jr c, jr_00f_68c6

	jr jr_00f_68ce

jr_00f_68c6:
	ld a, [wd040]
	bit 1, a
	jp nz, Jump_00f_68eb

jr_00f_68ce:
	ld a, [wd045]
	bit 0, a
	ret nz

jr_00f_68d4:
	call Call_00f_6906
	ld a, [wcfbd]
	ld b, a
	ldh a, [$f3]
	and a
	jr z, jr_00f_68e4

	ld a, [wcfb7]
	ld b, a

jr_00f_68e4:
	call Call_00f_718d
	cp b
	jr nc, jr_00f_68eb

	ret


Jump_00f_68eb:
jr_00f_68eb:
	xor a
	ld hl, wd0b4
	ld [hli], a
	ld [hl], a
	inc a
	ld [wd03c], a
	ldh a, [$f3]
	and a
	jr z, jr_00f_6900

	ld hl, wd044
	res 5, [hl]
	ret


jr_00f_6900:
	ld hl, wd03f
	res 5, [hl]
	ret


Call_00f_6906:
	ld hl, wcfbd
	ldh a, [$f3]
	and a
	ld a, [wcd1e]
	ld b, a
	ld a, [wcd33]
	ld c, a
	jr z, jr_00f_6921

	ld hl, wcfb7
	ld a, [wcd32]
	ld b, a
	ld a, [wcd1f]
	ld c, a

jr_00f_6921:
	ld a, $0e
	sub c
	ld c, a
	xor a
	ldh [$96], a
	ldh [$97], a
	ld a, [hl]
	ldh [$98], a
	push hl
	ld d, $02

jr_00f_6930:
	push bc
	ld hl, $7a20
	dec b
	sla b
	ld c, b
	ld b, $00
	add hl, bc
	pop bc
	ld a, [hli]
	ldh [$99], a
	call $38f5
	ld a, [hl]
	ldh [$99], a
	ld b, $04
	call $3902
	ldh a, [$98]
	ld b, a
	ldh a, [$97]
	or b
	jp nz, Jump_00f_6959

	ldh [$97], a
	ld a, $01
	ldh [$98], a

Jump_00f_6959:
	ld b, c
	dec d
	jr nz, jr_00f_6930

	ldh a, [$97]
	and a
	ldh a, [$98]
	jr z, jr_00f_6966

	ld a, $ff

jr_00f_6966:
	pop hl
	ld [hl], a
	ret


Call_00f_6969:
	ld hl, wd0b4
	ld a, [hli]
	and a
	jr nz, jr_00f_6974

	ld a, [hl]
	cp $02
	ret c

jr_00f_6974:
	xor a
	ldh [$96], a
	dec hl
	ld a, [hli]
	ldh [$97], a
	ld a, [hl]
	ldh [$98], a

jr_00f_697e:
	call Call_00f_718d
	rrca
	cp $d9
	jr c, jr_00f_697e

	ldh [$99], a
	call $38f5
	ld a, $ff
	ldh [$99], a
	ld b, $04
	call $3902
	ldh a, [$97]
	ld hl, wd0b4
	ld [hli], a
	ldh a, [$98]
	ld [hl], a
	ret


Call_00f_699e:
	ld a, [wccdd]
	inc a
	jp z, Jump_00f_6b7b

	call Call_00f_5951
	jp z, Jump_00f_6b7b

	ld a, [wd0f0]
	cp $04
	jr nz, jr_00f_69be

	ld b, $01
	ld a, [wcc3e]
	cp $0e
	jr z, jr_00f_69be

	cp $04
	ret nc

jr_00f_69be:
	ld hl, wccd5
	inc [hl]
	xor a
	ld [wd03c], a
	ld [wccf4], a
	ld a, $0a
	ld [wd038], a
	call Call_00f_6b7e
	jr nz, jr_00f_69d4

	jp hl


jr_00f_69d4:
	ld hl, wd044
	bit 4, [hl]
	jr nz, jr_00f_69ed

	call Call_00f_6dae

Jump_00f_69de:
	ld a, [wcfb4]
	cp $27
	jp z, Jump_00f_7427

	cp $2b
	jp z, Jump_00f_7427

	jr jr_00f_6a0d

jr_00f_69ed:
	ld hl, wd044
	res 4, [hl]
	res 6, [hl]
	ld a, [wcfb3]
	ld [wd092], a
	ld a, $04
	ld [wd094], a
	ld a, $02
	ld [wd093], a
	call $37b3
	ld de, wcd68
	call $386e

jr_00f_6a0d:
	xor a
	ld [wcced], a
	call Call_00f_5d18
	ld a, [wcfb4]
	ld hl, $4000
	ld de, $0001
	call $3ddb
	jp c, Jump_00f_7427

	ld a, [wcfb4]
	ld hl, $4049
	ld de, $0001
	call $3ddb
	call c, Call_00f_7427
	call Call_00f_6f71
	ld a, [wcfb4]
	ld hl, $4011
	ld de, $0001
	call $3ddb
	jp c, Jump_00f_6a61

	call Call_00f_62bc
	call Call_00f_632c
	jr z, jr_00f_6a64

	call Call_00f_6f71
	call Call_00f_610e
	call Call_00f_6f71
	call Call_00f_61fe
	jp z, Jump_00f_6ab3

	call Call_00f_6687
	call Call_00f_6969

Jump_00f_6a61:
	call Call_00f_684d

jr_00f_6a64:
	ld a, [wd03c]
	and a
	jr z, jr_00f_6a73

	ld a, [wcfb4]
	cp $07
	jr z, jr_00f_6a82

	jr jr_00f_6ab3

jr_00f_6a73:
	call Call_00f_6f71

Jump_00f_6a76:
	ld a, [wcfb4]
	and a
	ld a, $01
	jr z, jr_00f_6a86

	ld a, $02
	jr jr_00f_6a86

jr_00f_6a82:
	call Call_00f_6f71
	xor a

jr_00f_6a86:
	push af
	ld a, [wd045]
	bit 4, a
	ld hl, $577e
	ld b, $1e
	call nz, $3620
	pop af
	ld [wcc5b], a
	ld a, [wcfb3]
	call Call_00f_71f9
	call Call_00f_71c5
	call Call_00f_4f49
	ld a, [wd045]
	bit 4, a
	ld hl, $57a8
	ld b, $1e
	call nz, $3620
	jr jr_00f_6ad1

Jump_00f_6ab3:
jr_00f_6ab3:
	call Call_00f_6f71
	ld c, $1e
	call $3781
	ld a, [wcfb4]
	cp $2b
	jr z, jr_00f_6ac8

	cp $27
	jr z, jr_00f_6ac8

	jr jr_00f_6ad1

jr_00f_6ac8:
	xor a
	ld [wcc5b], a
	ld a, $a7
	call Call_00f_71f9

jr_00f_6ad1:
	ld a, [wcfb4]
	cp $09
	jr nz, jr_00f_6ae1

	call Call_00f_65cc
	jp z, Jump_00f_6b7b

	jp Jump_00f_69de


jr_00f_6ae1:
	cp $53
	jr nz, jr_00f_6aeb

	call Call_00f_662a
	jp Jump_00f_69de


jr_00f_6aeb:
	ld a, [wcfb4]
	ld hl, $4014
	ld de, $0001
	call $3ddb
	jp c, Jump_00f_7427

	ld a, [wd03c]
	and a
	jr z, jr_00f_6b0d

	call Call_00f_5e14
	ld a, [wcfb4]
	cp $07
	jr z, jr_00f_6b20

	jp Jump_00f_6b7b


jr_00f_6b0d:
	call Call_00f_6439
	call Call_00f_5ecb
	ld hl, $7eb2
	ld b, $0b
	call $3620
	ld a, $01
	ld [wccf4], a

jr_00f_6b20:
	ld a, [wcfb4]
	ld hl, $4030
	ld de, $0001
	call $3ddb
	call c, Call_00f_7427
	ld hl, wcffc
	ld a, [hli]
	ld b, [hl]
	or b
	ret z

	call Call_00f_6572
	ld hl, wd044
	bit 2, [hl]
	jr z, jr_00f_6b55

	push hl
	ld hl, wd04c
	dec [hl]
	pop hl
	jp nz, Jump_00f_6a76

	res 2, [hl]
	ld hl, $6b69
	call $3c79
	xor a
	ld [wcd05], a

jr_00f_6b55:
	ld a, [wcfb4]
	and a
	jr z, jr_00f_6b7b

	ld hl, $403b
	ld de, $0001
	call $3ddb
	call nc, Call_00f_7427
	jr jr_00f_6b7b

	add hl, bc
	dec b
	call $0011
	or [hl]
	or d
	ld a, a
	rrca
	and b
	db $e3
	dec bc
	db $dd
	or e
	cp c
	ret nz

	rst $20
	ld e, b

Jump_00f_6b7b:
jr_00f_6b7b:
	ld b, $01
	ret


Call_00f_6b7e:
	ld hl, wcfd0
	ld a, [hl]
	and $07
	jr z, jr_00f_6bae

	dec a
	ld [wcfd0], a
	and a
	jr z, jr_00f_6b9e

	ld hl, $5ba5
	call $3c79
	xor a
	ld [wcc5b], a
	ld a, $bd
	call Call_00f_71f9
	jr jr_00f_6ba4

jr_00f_6b9e:
	ld hl, $5bb5
	call $3c79

jr_00f_6ba4:
	xor a
	ld [wccf2], a
	ld hl, $6b7b
	jp Jump_00f_6da8


jr_00f_6bae:
	bit 5, [hl]
	jr z, jr_00f_6bc2

	ld hl, $5bc1
	call $3c79
	xor a
	ld [wccf2], a
	ld hl, $6b7b
	jp Jump_00f_6da8


jr_00f_6bc2:
	ld a, [wd03f]
	bit 5, a
	jp z, Jump_00f_6bd6

	ld hl, $5c89
	call $3c79
	ld hl, $6b7b
	jp Jump_00f_6da8


Jump_00f_6bd6:
	ld hl, wd044
	bit 3, [hl]
	jp z, Jump_00f_6bec

	res 3, [hl]
	ld hl, $5bea
	call $3c79
	ld hl, $6b7b
	jp Jump_00f_6da8


Jump_00f_6bec:
	ld hl, wd045
	bit 5, [hl]
	jr z, jr_00f_6c01

	res 5, [hl]
	ld hl, $5bf4
	call $3c79
	ld hl, $6b7b
	jp Jump_00f_6da8


jr_00f_6c01:
	ld hl, wd04f
	ld a, [hl]
	and a
	jr z, jr_00f_6c18

	dec a
	ld [hl], a
	and $0f
	jr nz, jr_00f_6c18

	ld [hl], a
	ld [wccef], a
	ld hl, $5c0b
	call $3c79

jr_00f_6c18:
	ld a, [wd044]
	bit 7, a
	jp z, Jump_00f_6c9a

	ld hl, wd04d
	dec [hl]
	jr nz, jr_00f_6c34

	ld hl, wd044
	res 7, [hl]
	ld hl, $5c40
	call $3c79
	jp Jump_00f_6c9a


jr_00f_6c34:
	ld hl, $5c1b
	call $3c79
	xor a
	ld [wcc5b], a
	ld a, $bf
	call Call_00f_71f9
	call Call_00f_718d
	cp $80
	jr c, jr_00f_6c9a

	ld hl, wd044
	ld a, [hl]
	and $80
	ld [hl], a
	ld hl, $5c29
	call $3c79
	ld hl, wd00e
	ld a, [hli]
	push af
	ld a, [hld]
	push af
	ld a, [wcfdf]
	ld [hli], a
	ld a, [wcfe0]
	ld [hl], a
	ld hl, wcfb4
	push hl
	ld a, [hl]
	push af
	xor a
	ld [hli], a
	ld [wd03b], a
	ld a, $28
	ld [hli], a
	xor a
	ld [hl], a
	call Call_00f_610e
	call Call_00f_61fe
	pop af
	pop hl
	ld [hl], a
	ld hl, wd00f
	pop af
	ld [hld], a
	pop af
	ld [hl], a
	xor a
	ld [wcc5b], a
	ldh [$f3], a
	ld a, $01
	call Call_00f_71f9
	ld a, $01
	ldh [$f3], a
	call Call_00f_63db
	jr jr_00f_6cc3

Jump_00f_6c9a:
jr_00f_6c9a:
	ld a, [wccef]
	and a
	jr z, jr_00f_6caf

	ld hl, wccdd
	cp [hl]
	jr nz, jr_00f_6caf

	call Call_00f_5c99
	ld hl, $6b7b
	jp Jump_00f_6da8


jr_00f_6caf:
	ld hl, wcfd0
	bit 6, [hl]
	jr z, jr_00f_6ce6

	call Call_00f_718d
	cp $3f
	jr nc, jr_00f_6ce6

	ld hl, $5bd6
	call $3c79

jr_00f_6cc3:
	ld hl, wd044
	ld a, [hl]
	and $cc
	ld [hl], a
	ld a, [wcfb4]
	cp $2b
	jr z, jr_00f_6cd7

	cp $27
	jr z, jr_00f_6cd7

	jr jr_00f_6ce0

jr_00f_6cd7:
	xor a
	ld [wcc5b], a
	ld a, $a7
	call Call_00f_71f9

jr_00f_6ce0:
	ld hl, $6b7b
	jp Jump_00f_6da8


jr_00f_6ce6:
	ld hl, wd044
	bit 0, [hl]
	jr z, jr_00f_6d44

	xor a
	ld [wcfb3], a
	ld hl, wd0b4
	ld a, [hli]
	ld b, a
	ld c, [hl]
	ld hl, wcd06
	ld a, [hl]
	add c
	ld [hld], a
	ld a, [hl]
	adc b
	ld [hl], a
	ld hl, wd04c
	dec [hl]
	jr z, jr_00f_6d0c

	ld hl, $6b7b
	jp Jump_00f_6da8


jr_00f_6d0c:
	ld hl, wd044
	res 0, [hl]
	ld hl, $5c5b
	call $3c79
	ld a, $01
	ld [wcfb5], a
	ld hl, wcd06
	ld a, [hld]
	add a
	ld b, a
	ld [wd0b5], a
	ld a, [hl]
	rl a
	ld [wd0b4], a
	or b
	jr nz, jr_00f_6d33

	ld a, $01
	ld [wd03c], a

jr_00f_6d33:
	xor a
	ld [hli], a
	ld [hl], a
	ld a, $75
	ld [wcfb3], a
	call Call_00f_6f71
	ld hl, $6a64
	jp Jump_00f_6da8


jr_00f_6d44:
	bit 1, [hl]
	jr z, jr_00f_6d73

	ld a, $25
	ld [wcfb3], a
	ld hl, $5c6a
	call $3c79
	ld hl, wd04c
	dec [hl]
	ld hl, $6a32
	jp nz, Jump_00f_6da8

	push hl
	ld hl, wd044
	res 1, [hl]
	set 7, [hl]
	call Call_00f_718d
	and $03
	inc a
	inc a
	ld [wd04d], a
	pop hl
	jp Jump_00f_6da8


jr_00f_6d73:
	bit 5, [hl]
	jp z, Jump_00f_6d8b

	ld hl, $5c75
	call $3c79
	ld hl, wd04c
	dec [hl]
	ld hl, $6a76
	jp nz, Jump_00f_6da8

	jp Jump_00f_6da8


Jump_00f_6d8b:
	ld a, [wd045]
	bit 6, a
	jp z, Jump_00f_6daa

	ld a, $63
	ld [wd0e3], a
	call $1b6d
	call $386e
	xor a
	ld [wcfb4], a
	ld hl, $6a0d
	jp Jump_00f_6da8


Jump_00f_6da8:
	xor a
	ret


Jump_00f_6daa:
	ld a, $01
	and a
	ret


Call_00f_6dae:
	ldh a, [$f3]
	and a
	jp z, Jump_00f_6dbc

	ld de, wcfb3
	ld a, [wccdd]
	jr jr_00f_6dcc

Jump_00f_6dbc:
	ld de, wcfb9
	ld a, [wd6b2]
	bit 0, a
	ld a, [wccd9]
	jr nz, jr_00f_6dcc

	ld a, [wccdc]

jr_00f_6dcc:
	ld [wd092], a
	dec a
	ld hl, $5658
	ld bc, $0006
	call $3ad1
	ld a, $0e
	call $01a3
	ld a, $04
	ld [wd094], a
	ld a, $02
	ld [wd093], a
	call $37b3
	ld de, wcd68
	jp $386e


Call_00f_6df1:
	ld a, [wd0f0]
	cp $04
	jp z, Jump_00f_4d6c

	ld a, [wcfbf]
	ld [wcfcc], a
	ld [wd092], a
	call $2f2e
	ld a, [wd046]
	bit 3, a
	ld hl, wcceb
	ld a, [hli]
	ld b, [hl]
	jr nz, jr_00f_6e23

	ld a, [wd034]
	cp $02
	ld a, $98
	ld b, $88
	jr z, jr_00f_6e23

	call Call_00f_718d
	ld b, a
	call Call_00f_718d

jr_00f_6e23:
	ld hl, wcfd8
	ld [hli], a
	ld [hl], b
	ld de, wcfda
	ld a, [wd0ec]
	ld [de], a
	inc de
	ld b, $00
	ld hl, wcfcd
	push hl
	call $3980
	pop hl
	ld a, [wd034]
	cp $02
	jr z, jr_00f_6e55

	ld a, [wd046]
	bit 3, a
	jr nz, jr_00f_6e76

	ld a, [wcfdb]
	ld [hli], a
	ld a, [wcfdc]
	ld [hli], a
	xor a
	inc hl
	ld [hl], a
	jr jr_00f_6e76

jr_00f_6e55:
	ld hl, wd824
	ld a, [wcf79]
	ld bc, $002c
	call $3ad1
	ld a, [hli]
	ld [wcfcd], a
	ld a, [hli]
	ld [wcfce], a
	ld a, [wcf79]
	ld [wcfcf], a
	inc hl
	ld a, [hl]
	ld [wcfd0], a
	jr jr_00f_6e76

jr_00f_6e76:
	ld hl, wd09b
	ld de, wcfd1
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [wd034]
	cp $02
	jr nz, jr_00f_6ea0

	ld hl, wd82b
	ld a, [wcf79]
	ld bc, $002c
	call $3ad1
	ld bc, $0004
	call $01bb
	jr jr_00f_6eba

jr_00f_6ea0:
	ld hl, wd0a4
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hl]
	ld [de], a
	dec de
	dec de
	dec de
	xor a
	ld [wcee4], a
	ld a, $3e
	call $3e9d

jr_00f_6eba:
	ld hl, wcfd4
	ld de, wcfe4
	ld a, $5e
	call $3e9d
	ld hl, wd096
	ld de, wcfe9
	ld b, $05

jr_00f_6ecd:
	ld a, [hli]
	ld [de], a
	inc de
	dec b
	jr nz, jr_00f_6ecd

	ld hl, wd09d
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hl]
	ld [de], a
	ld a, [wcfbf]
	ld [wd0e3], a
	call $1aab
	ld hl, wcd68
	ld de, wcfc1
	ld bc, $0006
	call $01bb
	ld a, [wcfbf]
	ld [wd0e3], a
	ld a, $3a
	call $3e9d
	ld a, [wd0e3]
	dec a
	ld c, a
	ld b, $01
	ld hl, wd28e
	ld a, $10
	call $3e9d
	ld hl, wcfda
	ld de, wcd23
	ld bc, $000b
	call $01bb
	ld a, $07
	ld b, $08
	ld hl, wcd2e

jr_00f_6f1d:
	ld [hli], a
	dec b
	jr nz, jr_00f_6f1d

	ret


Call_00f_6f22:
	ld a, [wd0f0]
	cp $04
	jr nz, jr_00f_6f3d

	xor a
	ld [wcc34], a
	ld hl, $7d9b
	ld b, $0d
	call $3620
	ld a, $01
	ld [wcfb2], a
	call $03bf

jr_00f_6f3d:
	call $0b31
	ld a, $30
	call $3e9d
	ld hl, $7149
	ld b, $0f
	call $3620
	ld a, $01
	ldh [$ba], a
	ld a, $ff
	ld [wcfb2], a
	call $0188
	call $03bf
	xor a
	ldh [$ba], a
	ldh [$b0], a
	ldh [rWY], a
	ldh [$d7], a
	ld hl, wd03d
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hl], a
	ld [wd04a], a
	ret


Call_00f_6f71:
	push bc
	ld a, [wd009]
	ld b, a
	ld a, [wcfda]
	ld [wd009], a
	ld a, b
	ld [wcfda], a
	pop bc
	ret


Call_00f_6f82:
	ld a, [wd037]
	dec a
	ld de, $7e50
	jr nz, jr_00f_6f8e

	ld de, $7ee0

jr_00f_6f8e:
	ld a, $0c
	call $3735
	ld a, $03
	call $3e9d
	ld hl, wOAMBuffer
	xor a
	ldh [$8b], a
	ld b, $07
	ld e, $a0

jr_00f_6fa2:
	ld c, $03
	ld d, $38

jr_00f_6fa6:
	ld [hl], d
	inc hl
	ld [hl], e
	ld a, $08
	add d
	ld d, a
	inc hl
	ldh a, [$8b]
	ld [hli], a
	inc a
	ldh [$8b], a
	inc hl
	dec c
	jr nz, jr_00f_6fa6

	ldh a, [$8b]
	add $04
	ldh [$8b], a
	ld a, $08
	add e
	ld e, a
	dec b
	jr nz, jr_00f_6fa2

	ld de, $9310
	call $30b9
	ld a, $0a
	ld [$0000], a
	xor a
	ld [$4000], a
	ld hl, $8000
	ld de, $a188
	ldh a, [hLoadedROMBank]
	ld b, a
	ld c, $31
	call $02dd
	xor a
	ld [$0000], a
	ld a, $31
	ld [$ffe1], a
	ld hl, wc405
	ld a, $01
	jp $3e9d


	ld hl, $5f2b
	ld b, $0e
	call $3620
	ld hl, $5f52
	ld b, $0e
	jp $3620


Call_00f_7003:
	ld hl, $5f7e
	ld b, $0e
	jp $3620


Call_00f_700b:
	ld a, $01
	jr jr_00f_7010

Call_00f_700f:
	xor a

jr_00f_7010:
	ldh [$f3], a
	call Call_00f_7018
	jp Jump_00f_7055


Call_00f_7018:
	ldh a, [$f3]
	and a
	jr z, jr_00f_7039

	ld a, [wcfff]
	and $40
	ret z

	ld hl, wd011
	ld a, [hld]
	ld b, a
	ld a, [hl]
	srl a
	rr b
	srl a
	rr b
	ld [hli], a
	or b
	jr nz, jr_00f_7037

	ld b, $01

jr_00f_7037:
	ld [hl], b
	ret


jr_00f_7039:
	ld a, [wcfd0]
	and $40
	ret z

	ld hl, wcfe2
	ld a, [hld]
	ld b, a
	ld a, [hl]
	srl a
	rr b
	srl a
	rr b
	ld [hli], a
	or b
	jr nz, jr_00f_7053

	ld b, $01

jr_00f_7053:
	ld [hl], b
	ret


Call_00f_7055:
Jump_00f_7055:
	ldh a, [$f3]
	and a
	jr z, jr_00f_7072

	ld a, [wcfff]
	and $10
	ret z

	ld hl, wd00d
	ld a, [hld]
	ld b, a
	ld a, [hl]
	srl a
	rr b
	ld [hli], a
	or b
	jr nz, jr_00f_7070

	ld b, $01

jr_00f_7070:
	ld [hl], b
	ret


jr_00f_7072:
	ld a, [wcfd0]
	and $10
	ret z

	ld hl, wcfde
	ld a, [hld]
	ld b, a
	ld a, [hl]
	srl a
	rr b
	ld [hli], a
	or b
	jr nz, jr_00f_7088

	ld b, $01

jr_00f_7088:
	ld [hl], b
	ret


	ld c, $00

jr_00f_708c:
	call Call_00f_7096
	inc c
	ld a, c
	cp $04
	jr nz, jr_00f_708c

	ret


Call_00f_7096:
	push bc
	push bc
	ld a, [wd0e3]
	and a
	ld a, c
	ld hl, wd00c
	ld de, wcd12
	ld bc, wcd1a
	jr z, jr_00f_70b1

	ld hl, wcfdd
	ld de, wcd26
	ld bc, wcd2e

jr_00f_70b1:
	add c
	ld c, a
	jr nc, jr_00f_70b6

	inc b

jr_00f_70b6:
	ld a, [bc]
	pop bc
	ld b, a
	push bc
	sla c
	ld b, $00
	add hl, bc
	ld a, c
	add e
	ld e, a
	jr nc, jr_00f_70c5

	inc d

jr_00f_70c5:
	pop bc
	push hl
	ld hl, $7a20
	dec b
	sla b
	ld c, b
	ld b, $00
	add hl, bc
	xor a
	ldh [$96], a
	ld a, [de]
	ldh [$97], a
	inc de
	ld a, [de]
	ldh [$98], a
	ld a, [hli]
	ldh [$99], a
	call $38f5
	ld a, [hl]
	ldh [$99], a
	ld b, $04
	call $3902
	pop hl
	ldh a, [$98]
	sub $e7
	ldh a, [$97]
	sbc $03
	jp c, Jump_00f_70fd

	ld a, $03
	ldh [$97], a
	ld a, $e7
	ldh [$98], a

Jump_00f_70fd:
	ldh a, [$97]
	ld [hli], a
	ld b, a
	ldh a, [$98]
	ld [hl], a
	or b
	jr nz, jr_00f_7108

	inc [hl]

jr_00f_7108:
	pop bc
	ret


Call_00f_710a:
	ld a, [wd0f0]
	cp $04
	ret z

	ld a, [wd2d5]
	ld b, a
	ld hl, wd00c
	ld c, $04

jr_00f_7119:
	srl b
	call c, Call_00f_7126
	inc hl
	inc hl
	srl b
	dec c
	jr nz, jr_00f_7119

	ret


Call_00f_7126:
	ld a, [hli]
	ld d, a
	ld e, [hl]
	srl d
	rr e
	srl d
	rr e
	srl d
	rr e
	ld a, [hl]
	add e
	ld [hld], a
	ld a, [hl]
	adc d
	ld [hli], a
	ld a, [hld]
	sub $e7
	ld a, [hl]
	sbc $03
	ret c

	ld a, $03
	ld [hli], a
	ld a, $e7
	ld [hld], a
	ret


Call_00f_7149:
	call $370a

Call_00f_714c:
	ldh a, [rLCDC]
	bit 7, a
	jr nz, jr_00f_716e

	ld hl, $5119
	ld de, $96d0
	ld bc, $0018
	ld a, $04
	call $02c0
	ld hl, $5131
	ld de, $9730
	ld bc, $0030
	ld a, $04
	jp $02c0


jr_00f_716e:
	ld de, $5119
	ld hl, $96d0
	ld bc, $0403
	call $031b
	ld de, $5131
	ld hl, $9730
	ld bc, $0406
	jp $031b


Call_00f_7186:
	ld hl, $718c
	jp $3c79


	db $50

Call_00f_718d:
	ld a, [wd0f0]
	cp $04
	jp nz, $3e8c

	push hl
	push bc
	ld a, [wccde]
	ld c, a
	ld b, $00
	ld hl, wd10d
	add hl, bc
	inc a
	ld [wccde], a
	cp $09
	ld a, [hl]
	pop bc
	pop hl
	ret c

	push hl
	push bc
	push af
	xor a
	ld [wccde], a
	ld hl, wd10d
	ld b, $09

jr_00f_71b7:
	ld a, [hl]
	ld c, a
	add a
	add a
	add c
	inc a
	ld [hli], a
	dec b
	jr nz, jr_00f_71b7

	pop af
	pop bc
	pop hl
	ret


Call_00f_71c5:
	ldh a, [$f3]
	and a
	ld hl, wcfd1
	ld de, wd044
	ld a, [wcfb9]
	jr z, jr_00f_71dc

	ld hl, wd000
	ld de, wd044
	ld a, [wcfb3]

jr_00f_71dc:
	cp $78
	jr z, jr_00f_71e3

	cp $99
	ret nz

jr_00f_71e3:
	ld a, [de]
	bit 6, a
	ret nz

	ld a, [hli]
	cp $08
	ret z

	ld a, [hl]
	cp $08
	ret z

	ld a, [wd03c]
	and a
	ret nz

	ld a, $05
	ld [wcc5b], a

Call_00f_71f9:
	ld [wd059], a
	call $3e07
	ld a, $08
	jp $3e9d


	ld a, [wd036]
	and a
	jr z, jr_00f_7215

	ld a, [wd036]
	ld [wcf78], a
	ld [wcfbf], a
	jr jr_00f_722f

jr_00f_7215:
	ld a, [wd6b1]
	bit 1, a
	jr z, jr_00f_7221

	ldh a, [$b4]
	bit 1, a
	ret nz

jr_00f_7221:
	ld a, [wd101]
	and a
	ret nz

	ld hl, $7d8f
	ld b, $04
	call $3620
	ret nz

jr_00f_722f:
	ld a, [wMapPalOffset]
	push af
	ld hl, wd2d7
	ld a, [hl]
	push af
	res 1, [hl]
	ld hl, $7927
	ld b, $14
	call $3620
	ld a, [wcfbf]
	sub $c8
	jp c, Jump_00f_727e

	ld [wd018], a
	call $35b0
	ld hl, $5fc4
	ld b, $0e
	call $3620
	call Call_00f_6f22
	call Call_00f_733e
	xor a
	ld [wcfbf], a
	ld [$ffe1], a
	dec a
	ld [wccdf], a
	ld hl, wc3ac
	ld a, $01
	call $3e9d
	ld a, $ff
	ld [wcfcf], a
	ld a, $02
	ld [wd034], a
	jp Jump_00f_72dc


Jump_00f_727e:
	ld a, $01
	ld [wd034], a
	call Call_00f_6df1
	call Call_00f_6f22
	ld a, [wd036]
	cp $91
	jr z, jr_00f_7295

	call Call_00f_59a0
	jr nz, jr_00f_72c7

jr_00f_7295:
	ld hl, wd09f
	ld a, $66
	ld [hli], a
	ld bc, $67ad
	ld a, c
	ld [hli], a
	ld [hl], b
	ld hl, wcfc1
	ld a, $d5
	ld [hli], a
	ld a, $b3
	ld [hli], a
	ld a, $da
	ld [hli], a
	ld a, $b2
	ld [hli], a
	ld [hl], $50

Jump_00f_72b2:
	ld a, [wcf78]
	push af
	ld a, $b8
	ld [wcf78], a
	ld de, $9000
	call $3034
	pop af
	ld [wcf78], a
	jr jr_00f_72cd

jr_00f_72c7:
	ld de, $9000
	call $3034

jr_00f_72cd:
	xor a
	ld [wd018], a
	ld [$ffe1], a
	ld hl, wc3ac
	ld a, $01
	call $3e9d

Jump_00f_72dc:
	ld b, $00
	call $3e1f
	call Call_00f_404c
	xor a
	ldh [$ba], a
	ld hl, $733d
	call $3c79
	call $3761
	call $03bf
	ld a, $98
	ld [$ffbd], a
	ld a, $01
	ldh [$ba], a
	call $3e07
	ld a, $9c
	ld [$ffbd], a
	call $376d
	ld hl, wc435
	ld bc, $050a
	call $0374
	ld hl, wc3a1
	ld bc, $040a
	call $0374
	call $0188
	ld a, [wd034]
	dec a
	call z, Call_00f_4f49
	call Call_00f_411f
	ld hl, $7cbd
	ld b, $04
	call $3620
	pop af
	ld [wd2d7], a
	pop af
	ld [wMapPalOffset], a
	ld a, [wd0b1]
	ldh [$d7], a
	scf
	ret


	db $50

Call_00f_733e:
	ld a, [wd01a]
	ld e, a
	ld a, [wd01b]
	ld d, a
	ld a, [wd0f0]
	and a
	ld a, $13
	jr z, jr_00f_7350

	ld a, $04

jr_00f_7350:
	call $3735
	ld de, $9000
	ld a, $77
	ld c, a
	jp $3041


	xor a
	ld [wc0f1], a
	ld [wc0f2], a
	jp $0e45


	ld a, [wcc4f]
	ld h, a
	ld a, [wcc50]
	ld l, a
	ld a, [$ffe1]
	ldh [$8b], a
	ld b, $4c
	ld a, [wd034]
	and a
	jr z, jr_00f_73b0

	add b
	ld [hl], a
	call $3e07
	ld bc, $ffd7
	add hl, bc
	ld a, $01
	ld [wcd67], a
	ld bc, $0303
	ld a, $05
	call $3e9d
	ld c, $04
	call $3781
	ld bc, $ffd7
	add hl, bc
	xor a
	ld [wcd67], a
	ld bc, $0505
	ld a, $05
	call $3e9d
	ld c, $05
	call $3781
	ld bc, $ffd7
	jr jr_00f_73b3

jr_00f_73b0:
	ld bc, $ff85

jr_00f_73b3:
	add hl, bc
	ldh a, [$8b]
	add $31
	jr jr_00f_73c5

	ld a, [wcc4f]
	ld h, a
	ld a, [wcc50]
	ld l, a
	ld a, [$ffe1]

jr_00f_73c5:
	ld bc, $0707
	ld de, $0014
	push af
	ld a, [wSpriteFlipped]
	and a
	jr nz, jr_00f_73e2

	pop af

jr_00f_73d3:
	push bc
	push hl

jr_00f_73d5:
	ld [hl], a
	add hl, de
	inc a
	dec c
	jr nz, jr_00f_73d5

	pop hl
	inc hl
	pop bc
	dec b
	jr nz, jr_00f_73d3

	ret


jr_00f_73e2:
	push bc
	ld b, $00
	dec c
	add hl, bc
	pop bc
	pop af

jr_00f_73e9:
	push bc
	push hl

jr_00f_73eb:
	ld [hl], a
	add hl, de
	inc a
	dec c
	jr nz, jr_00f_73eb

	pop hl
	dec hl
	pop bc
	dec b
	jr nz, jr_00f_73e9

	ret


	ld a, [wcfc0]
	ld [wcf78], a
	ld hl, wc405
	ld b, $07
	ld c, $08
	call $0374
	ld hl, $000d
	call $2ffd
	ld a, $03
	call $3e9d
	ld de, $9310
	call $30b9
	ld hl, $8000
	ld de, $9310
	ld c, $31
	ldh a, [hLoadedROMBank]
	ld b, a
	jp $02dd


Call_00f_7427:
Jump_00f_7427:
	call Call_00f_742d
	ld b, $01
	ret


Call_00f_742d:
	ldh a, [$f3]
	and a
	ld a, [wcfba]
	jr z, jr_00f_7438

	ld a, [wcfb4]

jr_00f_7438:
	dec a
	add a
	ld hl, $7445
	ld b, $00
	ld c, a
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl


	pop af
	ld [hl], h

	db $57, $75

	ld bc, $2476
	db $76
	inc h
	db $76
	inc h
	db $76
	add hl, bc
	db $76
	ld bc, $0076
	nop
	ld h, d
	ld [hl], a
	ld h, d
	ld [hl], a
	ld h, d
	ld [hl], a
	ld h, d
	ld [hl], a
	ld h, d
	ld [hl], a
	ld h, d
	ld [hl], a
	push af
	ld a, [hl]
	nop
	nop

	db $93, $78, $93, $78, $93, $78

	sub e
	ld a, b
	sub e
	ld a, b
	sub e
	ld a, b
	db $fd
	ld a, [hl]
	dec b
	ld a, a
	ld a, [hld]
	ld a, d
	ld l, h
	ld a, d
	adc [hl]
	ld a, d
	adc b
	ld a, e
	adc b
	ld a, e
	jp nc, $f17b

	ld [hl], h
	ld d, a
	ld [hl], l
	inc h
	db $76
	inc h
	db $76
	inc h
	db $76
	jp nc, $fb7b

	ld a, e
	inc bc
	ld a, h
	nop
	nop
	nop
	nop
	db $dd
	ld a, h
	inc bc
	ld a, h
	adc b
	ld a, e
	nop
	nop
	rlca
	ld a, l
	rrca
	ld a, l
	rla
	ld a, l
	daa
	ld a, l
	ld h, d
	ld [hl], a
	ld h, d
	ld [hl], a
	ld h, d
	ld [hl], a
	ld h, d
	ld [hl], a
	ld h, d
	ld [hl], a
	ld h, d
	ld [hl], a
	dec c
	ld a, a
	dec d
	ld a, a
	sub e
	ld a, b
	sub e
	ld a, b
	sub e
	ld a, b
	sub e
	ld a, b
	sub e
	ld a, b
	sub e
	ld a, b
	dec e
	ld a, a
	dec e
	ld a, a
	ld d, a
	ld [hl], l
	ld a, [hl]
	ld a, l
	sub e
	ld a, b
	sub e
	ld a, b

	db $93, $78

	sub e
	ld a, b
	sub e
	ld a, b
	sub e
	ld a, b
	sub e
	ld a, b
	sub e
	ld a, b
	rra
	ld a, l
	adc b
	ld a, e
	nop
	nop
	add [hl]
	ld a, l
	adc [hl]
	ld a, l
	xor h
	ld a, l
	cp d
	ld a, l
	nop
	nop
	ld d, l
	ld a, [hl]
	ld e, l
	ld a, [hl]
	ld h, e
	ld a, [hl]
	ld de, wcfd0
	ld bc, wd045
	ldh a, [$f3]
	and a
	jp z, Jump_00f_7503

	ld de, wcfff
	ld bc, wd040

Jump_00f_7503:
	ld a, [bc]
	bit 5, a
	res 5, a
	ld [bc], a
	jr nz, jr_00f_7526

	ld a, [de]
	ld b, a
	and $07
	jr z, jr_00f_7517

	ld hl, $7548
	jp $3c79


jr_00f_7517:
	ld a, b
	and a
	jr nz, jr_00f_7537

	push de
	call Call_00f_684d
	pop de
	ld a, [wd03c]
	and a
	jr nz, jr_00f_7537

jr_00f_7526:
	call Call_00f_718d
	and $07
	jr z, jr_00f_7526

	ld [de], a
	call Call_00f_7fbc
	ld hl, $753a
	jp $3c79


jr_00f_7537:
	jp Jump_00f_7f66


	nop
	ld e, c
	jp z, wc84f

	pop de
	rst $18
	jp wcfbc


	rst $18
	ret nz

	rst $20
	ld e, b
	nop
	ld e, c
	jp z, $bd7f

	inc sp
	add $4f
	ret z

	pop de
	rst $18
	jp wd9b2


	ld e, b

	ld hl, wcfd0
	ld de, wcfba
	ldh a, [$f3]
	and a
	jr z, jr_00f_7568

	ld hl, wcfff
	ld de, wcfb4

jr_00f_7568:
	call Call_00f_7fac
	jr nz, jr_00f_75db

	ld a, [hli]
	ld b, a
	and a
	jr nz, jr_00f_75db

	ld a, [hli]
	cp $03
	jr z, jr_00f_75db

	ld a, [hld]
	cp $03
	jr z, jr_00f_75db

	ld a, [de]
	cp $02
	ld b, $34
	jr z, jr_00f_7598

	cp $21
	ld b, $67
	jr z, jr_00f_7598

	push hl
	push de
	call Call_00f_684d
	pop de
	pop hl
	ld a, [wd03c]
	and a
	jr nz, jr_00f_75df

	jr jr_00f_759d

jr_00f_7598:
	call Call_00f_718d
	cp b
	ret nc

jr_00f_759d:
	dec hl
	set 3, [hl]
	push de
	dec de
	ldh a, [$f3]
	and a
	ld b, $c7
	ld hl, wd041
	ld a, [de]
	ld de, wd049
	jr nz, jr_00f_75b8

	ld b, $a9
	ld hl, wd046
	ld de, wd04e

jr_00f_75b8:
	cp $5c
	jr nz, jr_00f_75c5

	set 0, [hl]
	xor a
	ld [de], a
	ld hl, $75f3
	jr jr_00f_75c8

jr_00f_75c5:
	ld hl, $75e7

jr_00f_75c8:
	pop de
	ld a, [de]
	cp $42
	jr z, jr_00f_75d5

	ld a, b
	call Call_00f_7fc9
	jp $3c79


jr_00f_75d5:
	call Call_00f_7fbc
	jp $3c79


jr_00f_75db:
	ld a, [de]
	cp $42
	ret nz

jr_00f_75df:
	ld c, $32
	call $3781
	jp Jump_00f_7f66


	db $00, $59, $ca, $7f, $34, $b8, $dd, $b1, $3b, $c0, $e7, $58

	nop
	ld e, c
	jp z, wd34f

	or e
	inc [hl]
	cp b
	db $dd
	or c
	dec sp
	ret nz

	rst $20
	ld e, b
	ld hl, $7b3b
	ld b, $01
	jp $3620


	ld hl, wcffc
	ld de, wd040
	ldh a, [$f3]
	and a
	jr z, jr_00f_761a

	ld hl, wcfcd
	ld de, wd045

jr_00f_761a:
	xor a
	ld [hli], a
	ld [hli], a
	inc hl
	ld [hl], a
	ld a, [de]
	res 7, a
	ld [de], a
	ret


	xor a
	ld [wcc5b], a
	call Call_00f_7fac
	ret nz

	ldh a, [$f3]
	and a
	jp nz, Jump_00f_769a

	ld a, [wcfd0]
	and a
	jp nz, Jump_00f_770c

	ld a, [wcfbc]
	ld b, a
	ld a, [wcfd1]
	cp b
	ret z

	ld a, [wcfd2]
	cp b
	ret z

	ld a, [wcfba]
	cp $07
	ld b, $1a
	jr c, jr_00f_7654

	ld b, $4d
	sub $1e

jr_00f_7654:
	push af
	call Call_00f_718d
	cp b
	pop bc
	ret nc

	ld a, b
	cp $04
	jr z, jr_00f_7674

	cp $05
	jr z, jr_00f_7687

	ld a, $40
	ld [wcfd0], a
	call Call_00f_7018
	ld a, $a9
	call Call_00f_7fec
	jp Jump_00f_7f90


jr_00f_7674:
	ld a, $10
	ld [wcfd0], a
	call Call_00f_7055
	ld a, $a9
	call Call_00f_7fec
	ld hl, $76f0
	jp $3c79


jr_00f_7687:
	call Call_00f_7d9c
	ld a, $20
	ld [wcfd0], a
	ld a, $a9
	call Call_00f_7fec
	ld hl, $76fd
	jp $3c79


Jump_00f_769a:
	ld a, [wcfff]
	and a
	jp nz, Jump_00f_770c

	ld a, [wcfb6]
	ld b, a
	ld a, [wd000]
	cp b
	ret z

	ld a, [wd001]
	cp b
	ret z

	ld a, [wcfb4]
	cp $07
	ld b, $1a
	jr c, jr_00f_76bc

	ld b, $4d
	sub $1e

jr_00f_76bc:
	push af
	call Call_00f_718d
	cp b
	pop bc
	ret nc

	ld a, b
	cp $04
	jr z, jr_00f_76d7

	cp $05
	jr z, jr_00f_76e5

	ld a, $40
	ld [wcfff], a
	call Call_00f_7018
	jp Jump_00f_7f90


jr_00f_76d7:
	ld a, $10
	ld [wcfff], a
	call Call_00f_7055
	ld hl, $76f0
	jp $3c79


jr_00f_76e5:
	ld a, $20
	ld [wcfff], a
	ld hl, $76fd
	jp $3c79


	nop
	ld e, c
	jp z, wd44f

	cp c
	inc [hl]
	db $dd
	or l
	rst $18
	ret nz

	rst $20
	ld e, b
	nop
	ld e, c
	jp z, $ba4f

	or l
	ret c

	ld [hld], a
	cp c
	add $c5
	rst $18
	ret nz

	rst $20
	ld e, b

Jump_00f_770c:
	and $20
	ret z

	ldh a, [$f3]
	and a
	jr nz, jr_00f_7730

	ld a, [wcfbc]
	sub $14
	ret nz

	ld [wcfd0], a
	ld hl, wd827
	ld a, [wcfcf]
	ld bc, $002c
	call $3ad1
	xor a
	ld [hl], a
	ld hl, $774d
	jr jr_00f_774a

jr_00f_7730:
	ld a, [wcfb6]
	sub $14
	ret nz

	ld [wcfff], a
	ld hl, wd12f
	ld a, [wcc2f]
	ld bc, $002c
	call $3ad1
	xor a
	ld [hl], a
	ld hl, $774d

jr_00f_774a:
	jp $3c79


	nop
	adc $c9
	or l
	db $dd
	or c
	dec sp
	jp wc959


	ld c, a
	cp d
	or l
	ret c

	ld h, $7f
	call nz, wc0b9
	rst $20
	ld e, b

Call_00f_7762:
	ld hl, wcd1a
	ld de, wcfba
	ldh a, [$f3]
	and a
	jr z, jr_00f_7773

	ld hl, wcd2e
	ld de, wcfb4

jr_00f_7773:
	ld a, [de]
	sub $0a
	cp $08
	jr c, jr_00f_777c

	sub $28

jr_00f_777c:
	ld c, a
	ld b, $00
	add hl, bc
	ld b, [hl]
	inc b
	ld a, $0d
	cp b
	jp c, Jump_00f_785c

	ld a, [de]
	cp $12
	jr c, jr_00f_7794

	inc b
	ld a, $0d
	cp b
	jr nc, jr_00f_7794

	ld b, a

jr_00f_7794:
	ld [hl], b
	ld a, c
	cp $04
	jr nc, jr_00f_7804

	push hl
	ld hl, wd00d
	ld de, wcd12
	ldh a, [$f3]
	and a
	jr z, jr_00f_77ac

	ld hl, wcfde
	ld de, wcd26

jr_00f_77ac:
	push bc
	sla c
	ld b, $00
	add hl, bc
	ld a, c
	add e
	ld e, a
	jr nc, jr_00f_77b8

	inc d

jr_00f_77b8:
	pop bc
	ld a, [hld]
	sub $e7
	jr nz, jr_00f_77c4

	ld a, [hl]
	sbc $03
	jp z, Jump_00f_785a

jr_00f_77c4:
	push hl
	push bc
	ld hl, $7a20
	dec b
	sla b
	ld c, b
	ld b, $00
	add hl, bc
	pop bc
	xor a
	ldh [$96], a
	ld a, [de]
	ldh [$97], a
	inc de
	ld a, [de]
	ldh [$98], a
	ld a, [hli]
	ldh [$99], a
	call $38f5
	ld a, [hl]
	ldh [$99], a
	ld b, $04
	call $3902
	pop hl
	ldh a, [$98]
	sub $e7
	ldh a, [$97]
	sbc $03
	jp c, Jump_00f_77fd

	ld a, $03
	ldh [$97], a
	ld a, $e7
	ldh [$98], a

Jump_00f_77fd:
	ldh a, [$97]
	ld [hli], a
	ldh a, [$98]
	ld [hl], a
	pop hl

jr_00f_7804:
	ld b, c
	inc b
	call Call_00f_79dc
	ld hl, wd040
	ld de, wcfb9
	ld bc, wccf7
	ldh a, [$f3]
	and a
	jr z, jr_00f_7820

	ld hl, wd045
	ld de, wcfb3
	ld bc, wccf3

jr_00f_7820:
	ld a, [de]
	cp $6b
	jr nz, jr_00f_7833

	bit 4, [hl]
	push af
	push bc
	ld hl, $577e
	ld b, $1e
	push de
	call nz, $3620
	pop de

jr_00f_7833:
	call Call_00f_7fdb
	ld a, [de]
	cp $6b
	jr nz, jr_00f_7848

	pop bc
	ld a, $01
	ld [bc], a
	ld hl, $57a8
	ld b, $1e
	pop af
	call nz, $3620

jr_00f_7848:
	ldh a, [$f3]
	and a
	call z, Call_00f_710a
	ld hl, $7862
	call $3c79
	call Call_00f_7018
	jp Jump_00f_7055


Jump_00f_785a:
	pop hl
	dec [hl]

Jump_00f_785c:
	ld hl, $7f25
	jp $3c79


	nop
	ld e, d
	ret


	ld c, a
	ld d, b
	ld bc, wcf45
	nop

jr_00f_786b:
	ld h, $50
	ld [$8321], sp
	ld a, b
	ldh a, [$f3]
	and a
	ld a, [wcfba]
	jr z, jr_00f_787c

	ld a, [wcfb4]

jr_00f_787c:
	cp $12
	ret nc

	ld hl, $788b
	ret


	ld a, [bc]
	nop
	ld c, h
	jr z, jr_00f_786b

	sbc $c4
	ld d, b
	nop
	ld a, a
	or c
	ld h, $df
	ret nz

	rst $20
	ld e, b

	ld hl, wcd2e
	ld de, wcfba
	ld bc, wd044
	ldh a, [$f3]
	and a
	jr z, jr_00f_78b9

	ld hl, wcd1a
	ld de, wcfb4
	ld bc, wd03f
	ld a, [wd0f0]
	cp $04
	jr z, jr_00f_78b9

	call Call_00f_718d
	cp $40
	jp c, Jump_00f_79a1

jr_00f_78b9:
	call Call_00f_7fac
	jp nz, Jump_00f_79a1

	ld a, [de]
	cp $44
	jr c, jr_00f_78d1

	call Call_00f_718d
	cp $55
	jp nc, Jump_00f_7997

	ld a, [de]
	sub $44
	jr jr_00f_78f0

jr_00f_78d1:
	push hl
	push de
	push bc
	call Call_00f_684d
	pop bc
	pop de
	pop hl
	ld a, [wd03c]
	and a
	jp nz, Jump_00f_79a1

	ld a, [bc]
	bit 6, a
	jp nz, Jump_00f_79a1

	ld a, [de]
	sub $12
	cp $08
	jr c, jr_00f_78f0

	sub $28

jr_00f_78f0:
	ld c, a
	ld b, $00
	add hl, bc
	ld b, [hl]
	dec b
	jp z, Jump_00f_7997

	ld a, [de]
	cp $24
	jr c, jr_00f_7906

	cp $44
	jr nc, jr_00f_7906

	dec b
	jr nz, jr_00f_7906

	inc b

jr_00f_7906:
	ld [hl], b
	ld a, c
	cp $04
	jr nc, jr_00f_7973

	push hl
	push de
	ld hl, wcfde
	ld de, wcd26
	ldh a, [$f3]
	and a
	jr z, jr_00f_791f

	ld hl, wd00d
	ld de, wcd12

jr_00f_791f:
	push bc
	sla c
	ld b, $00
	add hl, bc
	ld a, c
	add e
	ld e, a
	jr nc, jr_00f_792b

	inc d

jr_00f_792b:
	pop bc
	ld a, [hld]
	sub $01
	jr nz, jr_00f_7936

	ld a, [hl]
	and a
	jp z, Jump_00f_7994

jr_00f_7936:
	push hl
	push bc
	ld hl, $7a20
	dec b
	sla b
	ld c, b
	ld b, $00
	add hl, bc
	pop bc
	xor a
	ldh [$96], a
	ld a, [de]
	ldh [$97], a
	inc de
	ld a, [de]
	ldh [$98], a
	ld a, [hli]
	ldh [$99], a
	call $38f5
	ld a, [hl]
	ldh [$99], a
	ld b, $04
	call $3902
	pop hl
	ldh a, [$98]
	ld b, a
	ldh a, [$97]
	or b
	jp nz, Jump_00f_796b

	ldh [$97], a
	ld a, $01
	ldh [$98], a

Jump_00f_796b:
	ldh a, [$97]
	ld [hli], a
	ldh a, [$98]
	ld [hl], a
	pop de
	pop hl

jr_00f_7973:
	ld b, c
	inc b
	push de
	call Call_00f_79dc
	pop de
	ld a, [de]
	cp $44
	jr nc, jr_00f_7982

	call Call_00f_7fbc

jr_00f_7982:
	ldh a, [$f3]
	and a
	call nz, Call_00f_710a
	ld hl, $79a8
	call $3c79
	call Call_00f_7018
	jp Jump_00f_7055


Jump_00f_7994:
	pop de
	pop hl
	inc [hl]

Jump_00f_7997:
	ld a, [de]
	cp $44
	ret nc

	ld hl, $7f25
	jp $3c79


Jump_00f_79a1:
	ld a, [de]
	cp $44
	ret nc

	jp Jump_00f_7f49


	db $00, $59, $c9, $4f, $50, $01, $45, $cf, $00, $26, $50, $08

	ld hl, $79d4
	ldh a, [$f3]
	and a
	ld a, [wcfba]
	jr z, jr_00f_79c2

	ld a, [wcfb4]

jr_00f_79c2:
	cp $1a
	ret c

	cp $44
	ret nc

	ld hl, $79cc
	ret


	ld a, [bc]
	nop
	ld c, h
	ld h, $b8
	rst $18
	db $c4
	ld d, b

	db $00, $7f, $bb, $26, $df, $c0, $e7, $58

Call_00f_79dc:
	ld hl, $79f3
	ld c, $50

jr_00f_79e1:
	dec b
	jr z, jr_00f_79ea

jr_00f_79e4:
	ld a, [hli]
	cp c
	jr z, jr_00f_79e1

	jr jr_00f_79e4

jr_00f_79ea:
	ld de, wcf45
	ld bc, $000a
	jp $01bb


	db $ba, $b3, $29, $b7, $d8, $e2, $b8, $50, $3e, $b3, $27, $e2, $d8, $e2, $b8, $50
	db $bd, $3a, $d4, $bb, $50, $c4, $b8, $bc, $e1, $c9

	or e
	ret c

	ld [c], a
	cp b
	ld d, b
	jp nc, wc1b2

	pop hl
	or e
	ret c

	jp nz, $b650

	or d
	set 3, b
	db $c2
	ld d, b

	db $19, $64, $1c, $64, $21, $64, $28, $64, $32, $64, $42, $64, $01, $01

	rrca
	ld a, [bc]
	ld [bc], a
	ld bc, $0a19
	inc bc
	ld bc, $0a23
	inc b
	ld bc, $3f21
	ret nc

	ld de, wd051
	ld bc, wd047
	ldh a, [$f3]
	and a
	jr z, jr_00f_7a51

	ld hl, wd044
	ld de, wcd05
	ld bc, wd04c

jr_00f_7a51:
	set 0, [hl]
	xor a
	ld [de], a
	inc de
	ld [de], a
	ld [wcfba], a
	ld [wcfb4], a
	call Call_00f_718d
	and $01
	inc a
	inc a
	ld [bc], a
	ldh a, [$f3]
	add $ae
	jp Jump_00f_7fc9


	ld hl, wd03f
	ld de, wd047
	ldh a, [$f3]
	and a
	jr z, jr_00f_7a7d

	ld hl, wd044
	ld de, wd04c

jr_00f_7a7d:
	set 1, [hl]
	call Call_00f_718d
	and $01
	inc a
	inc a
	ld [de], a
	ldh a, [$f3]
	add $b0
	jp Jump_00f_7fc9


	ldh a, [$f3]
	and a
	jr nz, jr_00f_7ae6

	ld a, [wd034]
	dec a
	jr nz, jr_00f_7ad3

	ld a, [wd0ec]
	ld b, a
	ld a, [wd009]
	cp b
	jr nc, jr_00f_7ac3

	add b
	ld c, a
	inc c

jr_00f_7aa6:
	call Call_00f_718d
	cp c
	jr nc, jr_00f_7aa6

	srl b
	srl b
	cp b
	jr nc, jr_00f_7ac3

	ld c, $32
	call $3781
	ld a, [wcfb9]
	cp $64
	jp nz, Jump_00f_7f66

	jp Jump_00f_7f4e


jr_00f_7ac3:
	call Call_00f_4ea1
	xor a
	ld [wcc5b], a
	inc a
	ld [wd055], a
	ld a, [wcfb9]
	jr jr_00f_7b39

jr_00f_7ad3:
	ld c, $32
	call $3781
	ld hl, $7f7d
	ld a, [wcfb9]
	cp $64
	jp nz, $3c79

	jp Jump_00f_7f4e


jr_00f_7ae6:
	ld a, [wd034]
	dec a
	jr nz, jr_00f_7b26

	ld a, [wd009]
	ld b, a
	ld a, [wd0ec]
	cp b
	jr nc, jr_00f_7b16

	add b
	ld c, a
	inc c

jr_00f_7af9:
	call Call_00f_718d
	cp c
	jr nc, jr_00f_7af9

	srl b
	srl b
	cp b
	jr nc, jr_00f_7b16

	ld c, $32
	call $3781
	ld a, [wcfb3]
	cp $64
	jp nz, Jump_00f_7f66

	jp Jump_00f_7f4e


jr_00f_7b16:
	call Call_00f_4ea1
	xor a
	ld [wcc5b], a
	inc a
	ld [wd055], a
	ld a, [wcfb3]
	jr jr_00f_7b39

jr_00f_7b26:
	ld c, $32
	call $3781
	ld hl, $7f7d
	ld a, [wcfb3]
	cp $64
	jp nz, $3c79

	jp Jump_00f_7f49


jr_00f_7b39:
	push af
	call Call_00f_7fec
	ld c, $14
	call $3781
	pop af
	ld hl, $7b57
	cp $64
	jr z, jr_00f_7b54

	ld hl, $7b69
	cp $2e
	jr z, jr_00f_7b54

	ld hl, $7b7b

jr_00f_7b54:
	jp $3c79


	nop
	ld e, d
	jp z, $be7f

	sbc $c4
	or e
	or [hl]
	rst $10
	ld c, a
	ret c

	jr nc, @-$3c

	cp h
	ret nz

	rst $20
	ld e, b
	nop
	ld e, c
	jp z, $b57f

	inc l
	cp c
	dec l
	or d
	jp wc64f


	add hl, hl
	jr nc, @-$42

	ret nz

	rst $20
	ld e, b
	nop
	ld e, c
	jp z, wcc7f

	or a
	call nz, $bb3a
	jp c, $e7c0

	ld e, b
	ld hl, wd03f
	ld de, wd047
	ld bc, wd051
	ldh a, [$f3]
	and a
	jr z, jr_00f_7b9f

	ld hl, wd044
	ld de, wd04c
	ld bc, wcd05

jr_00f_7b9f:
	bit 2, [hl]
	ret nz

	set 2, [hl]
	ld hl, wcfba
	ldh a, [$f3]
	and a
	jr z, jr_00f_7baf

	ld hl, wcfb4

jr_00f_7baf:
	ld a, [hl]
	cp $4d
	jr z, jr_00f_7bcd

	cp $2c
	ld a, $02
	jr z, jr_00f_7bca

	call Call_00f_718d
	and $03
	cp $02
	jr c, jr_00f_7bc8

	call Call_00f_718d
	and $03

jr_00f_7bc8:
	inc a
	inc a

jr_00f_7bca:
	ld [de], a
	ld [bc], a
	ret


jr_00f_7bcd:
	ld a, $02
	ld [hl], a
	jr jr_00f_7bca

	call Call_00f_7fac
	ret nz

	ld hl, wd044
	ld de, wcfba
	ldh a, [$f3]
	and a
	jr z, jr_00f_7be7

	ld hl, wd03f
	ld de, wcfb4

jr_00f_7be7:
	call Call_00f_7d9c
	ld a, [de]
	cp $1f
	ld b, $1a
	jr z, jr_00f_7bf3

	ld b, $4d

jr_00f_7bf3:
	call Call_00f_718d
	cp b
	ret nc

	set 3, [hl]
	ret


	ld hl, $7fab
	ld b, $0c
	jp $3620


	ld hl, wd03f
	ld de, wcfba
	ldh a, [$f3]
	and a
	ld b, $ae
	jr z, jr_00f_7c18

	ld hl, wd044
	ld de, wcfb4
	ld b, $af

jr_00f_7c18:
	set 4, [hl]
	ld a, [de]
	dec de
	cp $2b
	jr nz, jr_00f_7c24

	set 6, [hl]
	ld b, $64

jr_00f_7c24:
	ld a, [de]
	cp $5b
	jr nz, jr_00f_7c2d

	set 6, [hl]
	ld b, $c0

jr_00f_7c2d:
	xor a
	ld [wcc5b], a
	ld a, b
	call Call_00f_7fec
	ld a, [de]
	ld [wcd3d], a
	ld hl, $7c3f
	jp $3c79


	nop
	ld e, d
	ld d, b
	ld [$3dfa], sp
	call $0dfe
	ld hl, $7c6f
	jr z, jr_00f_7c6e

	cp $4c
	ld hl, $7c84
	jr z, jr_00f_7c6e

	cp $82
	ld hl, $7c96
	jr z, jr_00f_7c6e

	cp $8f
	ld hl, $7ca4
	jr z, jr_00f_7c6e

	cp $13
	ld hl, $7cb6
	jr z, jr_00f_7c6e

	cp $5b
	ld hl, $7cc7

jr_00f_7c6e:
	ret


	nop
	ret


	ld a, a
	rst $08
	call c, $33d8
	ld c, a
	cp b
	or e
	or a
	ld h, $7f
	or e
	dec l
	db $dd
	ld a, a
	rst $08
	cp b
	rst $20
	ld e, b
	nop
	jp z, wcb4f

	or [hl]
	ret c

	db $dd
	ld a, a
	or a
	pop hl
	or e
	cp h
	pop hl
	or e
	cp h
	ret nz

	rst $20
	ld e, b
	nop
	jp z, $b84f

	dec sp
	db $dd
	ld a, a
	set 3, a
	cp d
	jp nc, $e7c0

	ld e, b
	nop
	db $dd
	ld c, a
	jp z, $bc29

	or d
	ld a, a
	res 6, [hl]
	ret c

	ld h, $7f
	jp nz, wd1c2

	rst $20
	ld e, b
	nop
	jp z, $bf4f

	rst $10
	ret nz

	or [hl]
	cp b
	ld a, a
	call nz, $b13b
	ld h, $df
	ret nz

	rst $20
	ld e, b
	nop
	jp z, $b14f

	push bc
	db $dd
	adc $df
	jp wc17f


	pop bc
	pop hl
	or e
	add $7f
	db $d3
	jr z, @-$1f

	ret nz

	rst $20
	ld e, b
	ld hl, wd03f
	ld de, wd047
	ldh a, [$f3]
	and a
	jr z, jr_00f_7cee

	ld hl, wd044
	ld de, wd04c

jr_00f_7cee:
	bit 5, [hl]
	ret nz

	call Call_00f_7d9c
	set 5, [hl]
	call Call_00f_718d
	and $03
	cp $02
	jr c, jr_00f_7d04

	call Call_00f_718d
	and $03

jr_00f_7d04:
	inc a
	ld [de], a
	ret


	ld hl, $7f71
	ld b, $0c
	jp $3620


	ld hl, $7f94
	ld b, $09
	jp $3620


	ld hl, $7e4b
	ld b, $04
	jp $3620


	call Call_00f_718d
	cp $19
	ret nc

	jr jr_00f_7d35

	call Call_00f_7fac
	jr nz, jr_00f_7d73

	call Call_00f_684d
	ld a, [wd03c]
	and a
	jr nz, jr_00f_7d73

jr_00f_7d35:
	ldh a, [$f3]
	and a
	ld hl, wd044
	ld bc, wd04d
	ld a, [wcfba]
	jr z, jr_00f_7d4c

	ld hl, wd03f
	ld bc, wd048
	ld a, [wcfb4]

jr_00f_7d4c:
	bit 7, [hl]
	jr nz, jr_00f_7d73

	set 7, [hl]
	push af
	call Call_00f_718d
	and $03
	inc a
	inc a
	ld [bc], a
	pop af
	cp $4c
	call nz, Call_00f_7fbc
	ld hl, $7d67
	jp $3c79


	nop
	ld e, c
	jp z, $ba4f

	sbc $d7
	sbc $bc
	ret nz

	rst $20
	ld e, b

jr_00f_7d73:
	cp $4c
	ret z

	ld c, $32
	call $3781
	jp Jump_00f_7f49


	ld hl, $7979
	ld b, $14
	jp $3620


	ld hl, $7d7d
	ld b, $05
	jp $3620


	ld hl, wd040
	ldh a, [$f3]
	and a
	jr z, jr_00f_7d99

	ld hl, wd045

jr_00f_7d99:
	set 5, [hl]
	ret


Call_00f_7d9c:
	push hl
	ld hl, wd045
	ldh a, [$f3]
	and a
	jr z, jr_00f_7da8

	ld hl, wd040

jr_00f_7da8:
	res 5, [hl]
	pop hl
	ret


	ld hl, wd040
	ldh a, [$f3]
	and a
	jr z, jr_00f_7db7

	ld hl, wd045

jr_00f_7db7:
	set 6, [hl]
	ret


	ld c, $32
	call $3781
	call Call_00f_684d
	ld a, [wd03c]
	and a
	jr nz, jr_00f_7e41

	ldh a, [$f3]
	and a
	ld hl, wd003
	ld a, [wd03f]
	jr nz, jr_00f_7de0

	ld a, [wd0f0]
	cp $04
	jr nz, jr_00f_7e07

	ld hl, wcfd4
	ld a, [wd044]

jr_00f_7de0:
	bit 6, a
	jr nz, jr_00f_7e41

jr_00f_7de4:
	push hl
	call Call_00f_718d
	and $03
	ld c, a
	ld b, $00
	add hl, bc
	ld a, [hl]
	pop hl
	and a
	jr z, jr_00f_7de4

	ld d, a
	ldh a, [$f3]
	and a
	ld hl, wd003
	ld a, [wcc2e]
	jr z, jr_00f_7e2c

	ld hl, wcfd4
	ld a, [wcce2]
	jr jr_00f_7e2c

jr_00f_7e07:
	ld a, [wd044]
	bit 6, a
	jr nz, jr_00f_7e41

	ld a, [wcc26]
	push af
	ld a, $01
	ld [wccdb], a
	call Call_00f_5377
	call $376d
	ld hl, wcfd4
	ld a, [wcc26]
	ld c, a
	ld b, $00
	add hl, bc
	ld d, [hl]
	pop af
	ld hl, wd003

jr_00f_7e2c:
	ld c, a
	ld b, $00
	add hl, bc
	ld a, d
	ld [hl], a
	ld [wd0e3], a
	call $1b6d
	call Call_00f_7fdb
	ld hl, $7e44
	jp $3c79


jr_00f_7e41:
	jp Jump_00f_7f4e


	nop
	ld e, d
	jp z, $504f

	ld bc, wcd68
	nop
	db $dd
	ld a, a
	or l
	ld a, $b4
	ret nz

	rst $20
	ld e, b
	ld hl, $7f91
	ld b, $0a
	jp $3620


	call Call_00f_7fdb
	jp Jump_00f_7f35


	call Call_00f_684d
	ld a, [wd03c]
	and a
	jr nz, jr_00f_7edf

	ld de, wd04f
	ld hl, wcfd4
	ldh a, [$f3]
	and a
	jr z, jr_00f_7e7d

	ld de, wd04a
	ld hl, wd003

jr_00f_7e7d:
	ld a, [de]
	and a
	jr nz, jr_00f_7edf

jr_00f_7e81:
	push hl
	call Call_00f_718d
	and $03
	ld c, a
	ld b, $00
	add hl, bc
	ld a, [hl]
	pop hl
	and a
	jr z, jr_00f_7e81

	ld [wd0e3], a
	push hl
	ldh a, [$f3]
	and a
	ld hl, wd014
	jr nz, jr_00f_7ea8

	ld a, [wd0f0]
	cp $04
	pop hl
	jr nz, jr_00f_7eba

	push hl
	ld hl, wcfe5

jr_00f_7ea8:
	push hl
	ld a, [hli]
	or [hl]
	inc hl
	or [hl]
	inc hl
	or [hl]
	and $3f
	pop hl
	jr z, jr_00f_7ede

	add hl, bc
	ld a, [hl]
	pop hl
	and a
	jr z, jr_00f_7e81

jr_00f_7eba:
	call Call_00f_718d
	and $07
	inc a
	inc c
	swap c
	add c
	ld [de], a
	call Call_00f_7fbc
	ld hl, wccee
	ldh a, [$f3]
	and a
	jr nz, jr_00f_7ed1

	inc hl

jr_00f_7ed1:
	ld a, [wd0e3]
	ld [hl], a
	call $1b6d
	ld hl, $7ee2
	jp $3c79


jr_00f_7ede:
	pop hl

jr_00f_7edf:
	jp Jump_00f_7f4e


	nop
	ld e, c
	ret


	ld c, a
	ld d, b
	ld bc, wcd68
	nop
	db $dd
	ld a, a
	call z, $2cb3
	cp d
	jp nc, $e7c0

	ld e, b
	ld hl, $7f5b
	ld b, $0b
	jp $3620


	ld hl, $7ed3
	ld b, $04
	jp $3620


	ld hl, $7f1d
	ld b, $04
	jp $3620


	ld hl, $7db7
	ld b, $0e
	jp $3620


	ld hl, $7ea3
	ld b, $0e
	jp $3620


	ld hl, $7f8f
	ld b, $0e
	jp $3620


	db $00, $bc, $b6, $bc, $7f, $ba, $b3, $b6, $26, $7f, $c5, $b6, $df, $c0, $e7, $58

Jump_00f_7f35:
	ld hl, $7f3b
	jp $3c79


	nop
	cp h
	or [hl]
	cp h
	ld a, a
	push bc
	add $d3
	or l
	cp d
	rst $10
	push bc
	or d
	ld e, b

Jump_00f_7f49:
	ld a, [wccf4]
	and a
	ret nz

Jump_00f_7f4e:
	ld hl, $7f54
	jp $3c79


	db $00, $bc, $b6, $bc, $7f, $b3, $cf, $b8, $7f, $b7, $cf, $d7, $c5, $b6, $df, $c0
	db $e7, $58

Jump_00f_7f66:
	ld hl, $7f6c
	jp $3c79


	nop
	cp h
	or [hl]
	cp h
	ld a, a
	ld e, c
	add $ca
	ld c, a
	or a
	or [hl]
	push bc
	or [hl]
	rst $18
	ret nz

	rst $20
	ld e, b
	nop
	ld e, c
	jp z, wcd4f

	or d
	or a
	push bc
	ld a, a
	or [hl]
	or l
	db $dd
	ld a, a
	cp h
	jp wd9b2


	rst $20
	ld e, b

Jump_00f_7f90:
	ld hl, $7f96
	jp $3c79


	nop
	ld e, c
	jp z, wcf7f

	res 7, h
	jp wdc4f


	dec hl
	ld h, $7f
	inc sp
	add $b8
	cp b
	push bc
	rst $18
	ret nz

	rst $20
	ld e, b

Call_00f_7fac:
	push hl
	ld hl, wd045
	ldh a, [$f3]
	and a
	jr z, jr_00f_7fb8

	ld hl, wd040

jr_00f_7fb8:
	bit 4, [hl]
	pop hl
	ret


Call_00f_7fbc:
	ldh a, [$f3]
	and a
	ld a, [wcfb9]
	jr z, jr_00f_7fc7

	ld a, [wcfb3]

jr_00f_7fc7:
	and a
	ret z

Call_00f_7fc9:
Jump_00f_7fc9:
	ld [wd059], a
	ldh a, [$f3]
	and a
	ld a, $06
	jr z, jr_00f_7fd5

	ld a, $03

jr_00f_7fd5:
	ld [wcc5b], a
	jp Jump_00f_7fef


Call_00f_7fdb:
	xor a
	ld [wcc5b], a
	ldh a, [$f3]
	and a
	ld a, [wcfb9]
	jr z, jr_00f_7fea

	ld a, [wcfb3]

jr_00f_7fea:
	and a
	ret z

Call_00f_7fec:
	ld [wd059], a

Jump_00f_7fef:
	push hl
	push de
	push bc
	ld a, $08
	call $3e9d
	pop bc
	pop de
	pop hl
	ret


	db $db
	jp hl


	push hl
	dec [hl]
	ld a, a
