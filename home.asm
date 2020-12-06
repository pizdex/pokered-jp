INCLUDE "constants.asm"

SECTION "NULL", ROM0
NULL::

INCLUDE "home/header.asm"

SECTION "Home", ROM0

_Start:
	jp Init


Call_000_0153:
	ldh a, [$b8]
	push af
	ld a, $03
	ldh [$b8], a
	ld [$2000], a
	call $4000
	pop af
	ldh [$b8], a
	ld [$2000], a
	ret


DisableLCD:
	xor a
	ldh [rIF], a
	ldh a, [rIE]
	ld b, a
	res 0, a
	ldh [rIE], a

jr_000_0171:
	ldh a, [rLY]
	cp $91
	jr nz, jr_000_0171

	ldh a, [rLCDC]
	and $7f
	ldh [rLCDC], a
	ld a, b
	ldh [rIE], a
	ret


Call_000_0181:
	ldh a, [rLCDC]
	set 7, a
	ldh [rLCDC], a
	ret


ClearSprites:
	xor a
	ld hl, wc300
	ld b, $a0

jr_000_018e:
	ld [hli], a
	dec b
	jr nz, jr_000_018e

	ret


	ld a, $a0
	ld hl, wc300
	ld de, $0004
	ld b, $28

jr_000_019d:
	ld [hl], a
	add hl, de
	dec b
	jr nz, jr_000_019d

	ret


Call_000_01a3:
	ld [wcee4], a
	ldh a, [$b8]
	push af
	ld a, [wcee4]
	ldh [$b8], a
	ld [$2000], a
	call Call_000_01bb
	pop af
	ldh [$b8], a
	ld [$2000], a
	ret


Call_000_01bb:
Jump_000_01bb:
jr_000_01bb:
	ld a, [hli]
	ld [de], a
	inc de
	dec bc
	ld a, c
	or b
	jr nz, jr_000_01bb

	ret


	dec bc
	inc c
	inc de
	dec d
	jr @+$01

	db $00, $10, $1b, $20, $21, $23, $2c, $2d, $2e, $30, $31, $33, $39, $3c, $3e, $52
	db $54, $58, $5b, $ff, $01, $02, $03, $11, $12, $13, $14, $1c, $1a, $ff, $11, $1a
	db $1c, $3c, $5e, $ff, $11, $16, $19, $2b, $3c, $3d, $3f, $4a, $4c, $4d, $03, $ff
	db $1e, $20, $2e, $30, $34, $37, $39, $3a, $40, $51, $52, $5a, $5c, $5e, $5f, $ff
	db $01, $12, $14, $28, $32, $37, $44, $54, $5c, $ff, $01, $12, $14, $1a, $1c, $37
	db $38, $3b, $3c, $5e, $ff

	inc b
	dec c
	rla
	dec e
	ld e, $23
	inc [hl]
	scf
	add hl, sp
	ld c, d
	rst $38
	ld a, [bc]
	ld a, [de]
	ld [hld], a
	dec sp
	rst $38
	ld bc, $1310
	dec de
	ld [hli], a
	ld b, d
	ld d, d
	rst $38
	inc b
	rrca
	dec d
	rra
	dec sp
	ld b, l
	ld b, a
	ld d, l
	ld d, [hl]
	rst $38
	dec b
	dec d
	jr jr_000_025f

	jr nz, jr_000_0268

	ld [hli], a
	ld a, [hli]
	dec l
	jr nc, @+$01

	rst $38
	inc d
	rla
	ld a, [de]
	inc e
	jr nz, jr_000_028b

	ld b, l
	rst $38
	ld bc, $1105
	ld [de], a
	inc d
	ld a, [de]
	inc e
	inc l
	ld d, e
	rst $38

jr_000_025f:
	inc c
	ld h, $16
	ld e, $34
	scf
	rst $38
	rrca
	ld a, [de]

jr_000_0268:
	rra
	ld h, $28
	add hl, hl
	inc l
	dec l
	ld l, $2f
	ld b, c
	rst $38
	ld bc, $1110
	inc de
	dec de
	jr nz, @+$23

	ld [hli], a
	jr nc, @+$33

	ld [hld], a
	ld b, d
	ld b, e
	ld c, b
	ld d, d
	ld d, l
	ld e, b
	ld e, [hl]
	rst $38
	dec de
	inc hl
	inc l
	dec l
	dec sp
	ld b, l

jr_000_028b:
	rst $38

Jump_000_028c:
	ldh [$8b], a
	ldh a, [$b8]
	push af
	ldh a, [$8b]
	ldh [$b8], a
	ld [$2000], a
	call Call_000_01bb
	pop af
	ldh [$b8], a
	ld [$2000], a
	ret


	ldh [$8b], a
	ldh a, [$b8]
	push af
	ldh a, [$8b]
	ldh [$b8], a
	ld [$2000], a
	push hl
	push de
	push de
	ld d, h
	ld e, l
	pop hl
	call Call_000_01bb
	pop de
	pop hl
	pop af
	ldh [$b8], a
	ld [$2000], a
	ret


Jump_000_02c0:
	ldh [$8b], a
	ldh a, [$b8]
	push af
	ldh a, [$8b]
	ldh [$b8], a
	ld [$2000], a

jr_000_02cc:
	ld a, [hli]
	ld [de], a
	inc de
	ld [de], a
	inc de
	dec bc
	ld a, c
	or b
	jr nz, jr_000_02cc

	pop af
	ldh [$b8], a
	ld [$2000], a
	ret


Call_000_02dd:
Jump_000_02dd:
	ldh a, [$ba]
	push af
	xor a
	ldh [$ba], a
	ldh a, [$b8]
	ldh [$8b], a
	ld a, b
	ldh [$b8], a
	ld [$2000], a
	ld a, e
	ldh [$c7], a
	ld a, d
	ldh [$c8], a
	ld a, l
	ldh [$c9], a
	ld a, h
	ldh [$ca], a

jr_000_02f9:
	ld a, c
	cp $08
	jr nc, jr_000_030e

	ldh [$c6], a
	call DelayFrame
	ldh a, [$8b]
	ldh [$b8], a
	ld [$2000], a
	pop af
	ldh [$ba], a
	ret


jr_000_030e:
	ld a, $08
	ldh [$c6], a
	call DelayFrame
	ld a, c
	sub $08
	ld c, a
	jr jr_000_02f9

Jump_000_031b:
	ldh a, [$ba]
	push af
	xor a
	ldh [$ba], a
	ldh a, [$b8]
	ldh [$8b], a
	ld a, b
	ldh [$b8], a
	ld [$2000], a
	ld a, e
	ldh [$cc], a
	ld a, d
	ldh [$cd], a
	ld a, l
	ldh [$ce], a
	ld a, h
	ldh [$cf], a

jr_000_0337:
	ld a, c
	cp $08
	jr nc, jr_000_034c

	ldh [$cb], a
	call DelayFrame
	ldh a, [$8b]
	ldh [$b8], a
	ld [$2000], a
	pop af
	ldh [$ba], a
	ret


jr_000_034c:
	ld a, $08
	ldh [$cb], a
	call DelayFrame
	ld a, c
	sub $08
	ld c, a
	jr jr_000_0337

jr_000_0359:
	call DelayFrame
	push bc
	call Call_000_3879
	pop bc
	ldh a, [$b4]
	cp $46
	jr z, jr_000_0372

	ldh a, [$b5]
	and $09
	jr nz, jr_000_0372

	dec c
	jr nz, jr_000_0359

	and a
	ret


jr_000_0372:
	scf
	ret


Call_000_0374:
	ld a, $7f
	ld de, $0014

jr_000_0379:
	push hl
	push bc

jr_000_037b:
	ld [hli], a
	dec c
	jr nz, jr_000_037b

	pop bc
	pop hl
	add hl, de
	dec b
	jr nz, jr_000_0379

	ret


	ld c, $06
	ld hl, $0000
	ld de, wc3a0
	call Call_000_03ac
	call DelayFrame
	ld hl, $0600
	ld de, wc418
	call Call_000_03ac
	call DelayFrame
	ld hl, $0c00
	ld de, wc490
	call Call_000_03ac
	jp DelayFrame


Call_000_03ac:
	ld a, d
	ldh [$c2], a
	call Call_000_0774
	ld a, l
	ldh [$c3], a
	ld a, h
	ldh [$c4], a
	ld a, c
	ldh [$c5], a
	ld a, e
	ldh [$c1], a
	ret


	ld bc, $0168
	inc b
	ld hl, wc3a0
	ld a, $7f

jr_000_03c8:
	ld [hli], a
	dec c
	jr nz, jr_000_03c8

	dec b
	jr nz, jr_000_03c8

	jp Jump_000_3e07


Call_000_03d2:
	push hl
	ld a, $79
	ld [hli], a
	inc a
	call Call_000_03ff
	inc a
	ld [hl], a
	pop hl
	ld de, $0014
	add hl, de

jr_000_03e1:
	push hl
	ld a, $7c
	ld [hli], a
	ld a, $7f
	call Call_000_03ff
	ld [hl], $7c
	pop hl
	ld de, $0014
	add hl, de
	dec b
	jr nz, jr_000_03e1

	ld a, $7d
	ld [hli], a
	ld a, $7a
	call Call_000_03ff
	ld [hl], $7e
	ret


Call_000_03ff:
	ld d, c

jr_000_0400:
	ld [hli], a
	dec d
	jr nz, jr_000_0400

	ret


Call_000_0405:
Jump_000_0405:
	push hl

Jump_000_0406:
	ld a, [de]
	cp $50
	jr nz, jr_000_040f

	ld b, h
	ld c, l
	pop hl
	ret


jr_000_040f:
	cp $4e
	jr nz, jr_000_041c

	pop hl
	ld bc, $0028
	add hl, bc
	push hl
	jp Jump_000_04c5


jr_000_041c:
	cp $4f
	jr nz, jr_000_0428

	pop hl
	ld hl, wc4e1
	push hl
	jp Jump_000_04c5


jr_000_0428:
	and a
	jp z, Jump_000_04c9

	cp $4c
	jp z, Jump_000_05bb

	cp $4b
	jp z, Jump_000_05a9

	cp $51
	jp z, Jump_000_0588

	cp $52
	jp z, Jump_000_04da

	cp $53
	jp z, Jump_000_04e0

	cp $54
	jp z, Jump_000_04fe

	cp $5b
	jp z, Jump_000_04f2

	cp $5e
	jp z, Jump_000_04f8

	cp $5c
	jp z, Jump_000_04ec

	cp $5d
	jp z, Jump_000_04e6

	cp $55
	jp z, Jump_000_0555

	cp $56
	jp z, Jump_000_0504

	cp $57
	jp z, Jump_000_0581

	cp $58
	jp z, Jump_000_0569

	cp $59
	jp z, Jump_000_050a

	cp $5a
	jp z, Jump_000_0510

	cp $e4
	jr z, jr_000_0484

	cp $e5
	jr nz, jr_000_048d

jr_000_0484:
	push hl
	ld bc, $ffec
	add hl, bc
	ld [hl], a
	pop hl
	jr jr_000_04c5

jr_000_048d:
	cp $60
	jr nc, jr_000_04c1

	cp $40
	jr nc, jr_000_04ac

	cp $20
	jr nc, jr_000_049d

	add $80
	jr jr_000_049f

jr_000_049d:
	add $90

jr_000_049f:
	push af
	ld a, $e5
	push hl
	ld bc, $ffec
	add hl, bc
	ld [hl], a
	pop hl
	pop af
	jr jr_000_04c1

jr_000_04ac:
	cp $44
	jr nc, jr_000_04b4

	add $59
	jr jr_000_04b6

jr_000_04b4:
	add $86

jr_000_04b6:
	push af
	ld a, $e4
	push hl
	ld bc, $ffec
	add hl, bc
	ld [hl], a
	pop hl
	pop af

jr_000_04c1:
	ld [hli], a
	call Call_000_391d

Jump_000_04c5:
jr_000_04c5:
	inc de
	jp Jump_000_0406


Jump_000_04c9:
	ld b, h
	ld c, l
	pop hl
	ld de, $04d1
	dec de
	ret


	add hl, bc
	adc h
	rst $38
	ld [de], a
	nop
	add e
	and l
	db $e3
	ld d, a

Jump_000_04da:
	push de
	ld de, wd11d
	jr jr_000_0526

Jump_000_04e0:
	push de
	ld de, wd2ce
	jr jr_000_0526

Jump_000_04e6:
	push de
	ld de, $0536
	jr jr_000_0526

Jump_000_04ec:
	push de
	ld de, $0530
	jr jr_000_0526

Jump_000_04f2:
	push de
	ld de, $053c
	jr jr_000_0526

Jump_000_04f8:
	push de
	ld de, $0541
	jr jr_000_0526

Jump_000_04fe:
	push de
	ld de, $0548
	jr jr_000_0526

Jump_000_0504:
	push de
	ld de, $054d
	jr jr_000_0526

Jump_000_050a:
	ldh a, [$f3]
	xor $01
	jr jr_000_0512

Jump_000_0510:
	ldh a, [$f3]

jr_000_0512:
	push de
	and a
	jr nz, jr_000_051b

	ld de, wcff0
	jr jr_000_0526

jr_000_051b:
	ld de, $0550
	call Call_000_0405
	ld h, b
	ld l, c
	ld de, wcfc1

jr_000_0526:
	call Call_000_0405
	ld h, b
	ld l, c
	pop de
	inc de
	jp Jump_000_0406


	call c, $9d2b
	adc e
	xor e
	ld d, b

	db $93, $a7, $e3, $94, $e3, $50, $40, $8e, $89, $ab, $50

	xor b
	adc b
	xor h
	sub e
	jr nc, @-$20

	ld d, b

	db $43, $88, $a1, $ab, $50, $75, $75, $50, $c3, $b7, $c9, $7f, $50

Jump_000_0555:
	push de
	ld b, h
	ld c, l
	ld hl, $0565
	call Call_000_05f1
	ld h, b
	ld l, c
	pop de
	inc de
	jp Jump_000_0406


	db $00, $4b, $50, $50

Jump_000_0569:
	ld a, [wd0f0]
	cp $04
	jp z, Jump_000_0576

	ld a, $ee
	ld [wc4f2], a

Jump_000_0576:
	call Call_000_05eb
	call Call_000_38e1
	ld a, $7f
	ld [wc4f2], a

Jump_000_0581:
	pop hl
	ld de, $0587
	dec de
	ret


	db $50

Jump_000_0588:
	push de
	ld a, $ee
	ld [wc4f2], a
	call Call_000_05eb
	call Call_000_38e1
	ld hl, wc4a5
	ld bc, $0412
	call Call_000_0374
	ld c, $14
	call DelayFrames
	pop de
	ld hl, wc4b9
	jp Jump_000_04c5


Jump_000_05a9:
	ld a, $ee
	ld [wc4f2], a
	call Call_000_05eb
	push de
	call Call_000_38e1
	pop de
	ld a, $7f
	ld [wc4f2], a

Jump_000_05bb:
	push de
	call Call_000_05c9
	call Call_000_05c9
	ld hl, wc4e1
	pop de
	jp Jump_000_04c5


Call_000_05c9:
	ld hl, wc4b8
	ld de, wc4a4
	ld b, $3c

jr_000_05d1:
	ld a, [hli]
	ld [de], a
	inc de
	dec b
	jr nz, jr_000_05d1

	ld hl, wc4e1
	ld a, $7f
	ld b, $12

jr_000_05de:
	ld [hli], a
	dec b
	jr nz, jr_000_05de

	ld b, $05

jr_000_05e4:
	call DelayFrame
	dec b
	jr nz, jr_000_05e4

	ret


Call_000_05eb:
	push bc
	call Call_000_3e07
	pop bc
	ret


Call_000_05f1:
Jump_000_05f1:
	ld a, [wd2d7]
	push af
	set 1, a
	ld [wd2d7], a
	ld a, c
	ld [wcc3a], a
	ld a, b
	ld [wcc3b], a

Jump_000_0602:
jr_000_0602:
	ld a, [hli]
	cp $50
	jr nz, jr_000_060c

	pop af
	ld [wd2d7], a
	ret


jr_000_060c:
	push hl
	ld hl, $0746
	push bc
	add a
	ld b, $00
	ld c, a
	add hl, bc
	pop bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl


	pop hl
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	ld a, [hli]
	ld b, a
	ld a, [hli]
	ld c, a
	push hl
	ld h, d
	ld l, e
	call Call_000_03d2
	pop hl
	jr jr_000_0602

	pop hl
	ld d, h
	ld e, l
	ld h, b
	ld l, c
	call Call_000_0405
	ld h, d
	ld l, e
	inc hl
	jr jr_000_0602

	pop hl
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	push hl
	ld h, b
	ld l, c
	call Call_000_0405
	pop hl
	jr jr_000_0602

	pop hl
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	ld a, [hli]
	push hl
	ld h, b
	ld l, c
	ld c, a
	call Call_000_2fc4
	ld b, h
	ld c, l
	pop hl
	jr jr_000_0602

	pop hl
	ld a, [hli]
	ld [wcc3a], a
	ld c, a
	ld a, [hli]
	ld [wcc3b], a
	ld b, a
	jp Jump_000_0602


	pop hl
	ld bc, wc4e1
	jp Jump_000_0602


	ld a, [wd0f0]
	cp $04
	jp z, Jump_000_073d

	ld a, $ee
	ld [wc4f2], a
	push bc
	call Call_000_38e1
	pop bc
	ld a, $7f
	ld [wc4f2], a
	pop hl
	jp Jump_000_0602


	ld a, $7f
	ld [wc4f2], a
	call Call_000_05c9
	call Call_000_05c9
	pop hl
	ld bc, wc4e1
	jp Jump_000_0602


	pop hl
	ld de, $0602
	push de
	jp hl


	pop hl
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	ld a, [hli]
	push hl
	ld h, b
	ld l, c
	ld b, a
	and $0f
	ld c, a
	ld a, b
	and $f0
	swap a
	set 6, a
	ld b, a
	call Call_000_3c8f
	ld b, h
	ld c, l
	pop hl
	jp Jump_000_0602


	push bc
	call Call_000_0153
	ldh a, [$b4]
	and $03
	jr nz, jr_000_06cf

	ld c, $1e
	call DelayFrames

jr_000_06cf:
	pop bc
	pop hl
	jp Jump_000_0602


	pop hl
	push bc
	dec hl
	ld a, [hli]
	ld b, a
	push hl
	ld hl, $0707

jr_000_06dd:
	ld a, [hli]
	cp b
	jr z, jr_000_06e4

	inc hl
	jr jr_000_06dd

jr_000_06e4:
	cp $14
	jr z, jr_000_06fc

	cp $15
	jr z, jr_000_06fc

	cp $16
	jr z, jr_000_06fc

	ld a, [hl]
	call Call_000_0e45
	call Call_000_3790
	pop hl
	pop bc
	jp Jump_000_0602


jr_000_06fc:
	push de
	ld a, [hl]
	call Call_000_2dc7
	pop de
	pop hl
	pop bc
	jp Jump_000_0602


	db $0b, $86, $12, $9a, $0e

	sub c

	db $0f

	add [hl]

	db $10

	adc c

	db $11, $94, $13

	sbc b

	db $14, $a8

	dec d
	sub a
	ld d, $78
	pop hl
	ld a, [hli]
	ld d, a
	push hl
	ld h, b
	ld l, c

jr_000_0721:
	ld a, $75
	ld [hli], a
	push de
	call Call_000_0153
	pop de
	ldh a, [$b4]
	and $03
	jr nz, jr_000_0734

	ld c, $0a
	call DelayFrames

jr_000_0734:
	dec d
	jr nz, jr_000_0721

	ld b, h
	ld c, l
	pop hl
	jp Jump_000_0602


Jump_000_073d:
	push bc
	call Call_000_38e1
	pop bc
	pop hl
	jp Jump_000_0602


	db $2d, $06, $3a, $06, $48, $06

	ld e, d
	ld b, $1b
	db $06

	db $68, $06, $6f, $06

	adc d
	db $06

	db $9c, $06, $a2, $06, $c0, $06, $d4, $06

	dec de
	rlca
	dec a
	rlca
	call nc, wd406
	ld b, $d4
	db $06

	db $d4, $06, $d4, $06

	db $d4
	db $06

	db $d4, $06

	call nc, wd406
	db $06

Call_000_0774:
	xor a
	srl h
	rr a
	srl h
	rr a
	srl h
	rr a
	or l
	ld l, a
	ld a, b
	or h
	ld h, a
	ret


ClearBGMap:
	ld a, $7f
	jr jr_000_078c

	ld a, l

jr_000_078c:
	ld de, $0400
	ld l, e

jr_000_0790:
	ld [hli], a
	dec e
	jr nz, jr_000_0790

	dec d
	jr nz, jr_000_0790

	ret


RedrawRowOrColumn:
	ldh a, [$d0]
	and a
	ret z

	ld b, a
	xor a
	ldh [$d0], a
	dec b
	jr nz, jr_000_07c7

	ld hl, wcbfc
	ldh a, [$d1]
	ld e, a
	ldh a, [$d2]
	ld d, a
	ld c, $12

jr_000_07ae:
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	ld a, $1f
	add e
	ld e, a
	jr nc, jr_000_07ba

	inc d

jr_000_07ba:
	ld a, d
	and $03
	or $98
	ld d, a
	dec c
	jr nz, jr_000_07ae

	xor a
	ldh [$d0], a
	ret


jr_000_07c7:
	ld hl, wcbfc
	ldh a, [$d1]
	ld e, a
	ldh a, [$d2]
	ld d, a
	push de
	call Call_000_07d9
	pop de
	ld a, $20
	add e
	ld e, a

Call_000_07d9:
	ld c, $0a

jr_000_07db:
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	ld a, e
	inc a
	and $1f
	ld b, a
	ld a, e
	and $e0
	or b
	ld e, a
	dec c
	jr nz, jr_000_07db

	ret


AutoBGMapTransfer:
	ldh a, [$ba]
	and a
	ret z

	ld hl, sp+$00
	ld a, h
	ldh [$bf], a
	ld a, l
	ldh [$c0], a
	ldh a, [$bb]
	and a
	jr z, jr_000_0815

	dec a
	jr z, jr_000_0825

	ld hl, wc490
	ld sp, hl
	ld a, [$ffbd]
	ld h, a
	ld a, [$ffbc]
	ld l, a
	ld de, $0180
	add hl, de
	xor a
	jr jr_000_0837

jr_000_0815:
	ld hl, wc3a0
	ld sp, hl
	ld a, [$ffbd]
	ld h, a
	ld a, [$ffbc]
	ld l, a
	ld a, $01
	jr jr_000_0837

jr_000_0825:
	ld hl, wc418
	ld sp, hl
	ld a, [$ffbd]
	ld h, a
	ld a, [$ffbc]
	ld l, a
	ld de, $00c0
	add hl, de
	ld a, $02

jr_000_0837:
	ldh [$bb], a
	ld b, $06

jr_000_083b:
	pop de
	ld [hl], e
	inc l
	ld [hl], d
	inc l
	pop de
	ld [hl], e
	inc l
	ld [hl], d
	inc l
	pop de
	ld [hl], e
	inc l
	ld [hl], d
	inc l
	pop de
	ld [hl], e
	inc l
	ld [hl], d
	inc l
	pop de
	ld [hl], e
	inc l
	ld [hl], d
	inc l
	pop de
	ld [hl], e
	inc l
	ld [hl], d
	inc l
	pop de
	ld [hl], e
	inc l
	ld [hl], d
	inc l
	pop de
	ld [hl], e
	inc l
	ld [hl], d
	inc l
	pop de
	ld [hl], e
	inc l
	ld [hl], d
	inc l
	pop de
	ld [hl], e
	inc l
	ld [hl], d
	ld a, $0d
	add l
	ld l, a
	jr nc, jr_000_0873

	inc h

jr_000_0873:
	dec b
	jr nz, jr_000_083b

	ldh a, [$bf]
	ld h, a
	ldh a, [$c0]
	ld l, a
	ld sp, hl
	ret


VBlankCopyBGMap:
	ldh a, [$c1]
	and a
	ret z

	ld hl, sp+$00
	ld a, h
	ldh [$bf], a
	ld a, l
	ldh [$c0], a
	ldh a, [$c1]
	ld l, a
	ldh a, [$c2]
	ld h, a
	ld sp, hl
	ldh a, [$c3]
	ld l, a
	ldh a, [$c4]
	ld h, a
	ldh a, [$c5]
	ld b, a
	xor a
	ldh [$c1], a
	jr jr_000_083b

VBlankCopyDouble:
	ldh a, [$cb]
	and a
	ret z

	ld hl, sp+$00
	ld a, h
	ldh [$bf], a
	ld a, l
	ldh [$c0], a
	ldh a, [$cc]
	ld l, a
	ldh a, [$cd]
	ld h, a
	ld sp, hl
	ldh a, [$ce]
	ld l, a
	ldh a, [$cf]
	ld h, a
	ldh a, [$cb]
	ld b, a
	xor a
	ldh [$cb], a

jr_000_08be:
	pop de
	ld [hl], e
	inc l
	ld [hl], e
	inc l
	ld [hl], d
	inc l
	ld [hl], d
	inc l
	pop de
	ld [hl], e
	inc l
	ld [hl], e
	inc l
	ld [hl], d
	inc l
	ld [hl], d
	inc l
	pop de
	ld [hl], e
	inc l
	ld [hl], e
	inc l
	ld [hl], d
	inc l
	ld [hl], d
	inc l
	pop de
	ld [hl], e
	inc l
	ld [hl], e
	inc l
	ld [hl], d
	inc l
	ld [hl], d
	inc hl
	dec b
	jr nz, jr_000_08be

	ld a, l
	ldh [$ce], a
	ld a, h
	ldh [$cf], a
	ld hl, sp+$00
	ld a, l
	ldh [$cc], a
	ld a, h
	ldh [$cd], a
	ldh a, [$bf]
	ld h, a
	ldh a, [$c0]
	ld l, a
	ld sp, hl
	ret


VBlankCopy:
	ldh a, [$c6]
	and a
	ret z

	ld hl, sp+$00
	ld a, h
	ldh [$bf], a
	ld a, l
	ldh [$c0], a
	ldh a, [$c7]
	ld l, a
	ldh a, [$c8]
	ld h, a
	ld sp, hl
	ldh a, [$c9]
	ld l, a
	ldh a, [$ca]
	ld h, a
	ldh a, [$c6]
	ld b, a
	xor a
	ldh [$c6], a

jr_000_091a:
	pop de
	ld [hl], e
	inc l
	ld [hl], d
	inc l
	pop de
	ld [hl], e
	inc l
	ld [hl], d
	inc l
	pop de
	ld [hl], e
	inc l
	ld [hl], d
	inc l
	pop de
	ld [hl], e
	inc l
	ld [hl], d
	inc l
	pop de
	ld [hl], e
	inc l
	ld [hl], d
	inc l
	pop de
	ld [hl], e
	inc l
	ld [hl], d
	inc l
	pop de
	ld [hl], e
	inc l
	ld [hl], d
	inc l
	pop de
	ld [hl], e
	inc l
	ld [hl], d
	inc hl
	dec b
	jr nz, jr_000_091a

	ld a, l
	ldh [$c9], a
	ld a, h
	ldh [$ca], a
	ld hl, sp+$00
	ld a, l
	ldh [$c7], a
	ld a, h
	ldh [$c8], a
	ldh a, [$bf]
	ld h, a
	ldh a, [$c0]
	ld l, a
	ld sp, hl
	ret


UpdateMovingBGTiles:
	ldh a, [$d7]
	and a
	ret z

	ldh a, [$d8]
	inc a
	ldh [$d8], a
	cp $14
	ret c

	cp $15
	jr z, jr_000_0993

	ld hl, $9140
	ld c, $10
	ld a, [wd062]
	inc a
	and $07
	ld [wd062], a
	and $04
	jr nz, jr_000_0985

jr_000_097d:
	ld a, [hl]
	rrca
	ld [hli], a
	dec c
	jr nz, jr_000_097d

	jr jr_000_098b

jr_000_0985:
	ld a, [hl]
	rlca
	ld [hli], a
	dec c
	jr nz, jr_000_0985

jr_000_098b:
	ldh a, [$d7]
	rrca
	ret nc

	xor a
	ldh [$d8], a
	ret


jr_000_0993:
	xor a
	ldh [$d8], a
	ld a, [wd062]
	and $01
	ld hl, $09af
	jr z, jr_000_09a3

	ld hl, $09bf

jr_000_09a3:
	ld de, $9030
	ld c, $10

jr_000_09a8:
	ld a, [hli]
	ld [de], a
	inc de
	dec c
	jr nz, jr_000_09a8

	ret


	INCBIN "gfx/auto/image_000_09af.2bpp"


INCLUDE "home/init.asm"
INCLUDE "home/vblank.asm"
INCLUDE "home/fade.asm"
INCLUDE "home/serial.asm"


Timer:
	reti


Call_000_0d9b:
Jump_000_0d9b:
	call Call_000_3790
	xor a
	ld c, a
	ld d, a
	ld [wcfb1], a
	jr jr_000_0db8

Call_000_0da6:
	ld c, $0a
	ld d, $00
	ld a, [wd6ad]
	bit 5, a
	jr z, jr_000_0db8

	xor a
	ld [wcfb1], a
	ld c, $08
	ld d, c

jr_000_0db8:
	ld a, [wd67f]
	and a
	jr z, jr_000_0dd7

	cp $02
	jr z, jr_000_0dc6

	ld a, $d2
	jr jr_000_0dc8

jr_000_0dc6:
	ld a, $d6

jr_000_0dc8:
	ld b, a
	ld a, d
	and a
	ld a, $1f
	jr nz, jr_000_0dd2

	ld [wc0ef], a

jr_000_0dd2:
	ld [wc0f0], a
	jr jr_000_0de0

jr_000_0dd7:
	ld a, [wd2da]
	ld b, a
	call Call_000_0e19
	jr c, jr_000_0de5

jr_000_0de0:
	ld a, [wcfb1]
	cp b
	ret z

jr_000_0de5:
	ld a, c
	ld [wcfae], a
	ld a, b
	ld [wcfb1], a
	ld [wc0ee], a
	jp PlaySound


Call_000_0df3:
	ld a, [wc0ef]
	ld b, a
	cp $02
	jr nz, jr_000_0e00

	ld hl, $4000
	jr jr_000_0e0c

jr_000_0e00:
	cp $08
	jr nz, jr_000_0e09

	ld hl, $455f
	jr jr_000_0e0c

jr_000_0e09:
	ld hl, $4417

jr_000_0e0c:
	ld c, $06

jr_000_0e0e:
	push bc
	push hl
	call Bankswitch
	pop hl
	pop bc
	dec c
	jr nz, jr_000_0e0e

	ret


Call_000_0e19:
	ld a, [wd2db]
	ld e, a
	ld a, [wc0ef]
	cp e
	jr nz, jr_000_0e28

	ld [wc0f0], a
	and a
	ret


jr_000_0e28:
	ld a, c
	and a
	ld a, e
	jr nz, jr_000_0e30

	ld [wc0ef], a

jr_000_0e30:
	ld [wc0f0], a
	scf
	ret


	ld b, a
	ld [wc0ee], a
	xor a
	ld [wcfae], a
	ld a, c
	ld [wc0ef], a
	ld [wc0f0], a
	ld a, b

Call_000_0e45:
PlaySound:
	push hl
	push de
	push bc
	ld b, a
	ld a, [wc0ee]
	and a
	jr z, jr_000_0e5c

	xor a
	ld [wc02a], a
	ld [wc02b], a
	ld [wc02c], a
	ld [wc02d], a

jr_000_0e5c:
	ld a, [wcfae]
	and a
	jr z, jr_000_0e77

	ld a, [wc0ee]
	and a
	jr z, jr_000_0eb9

	xor a
	ld [wc0ee], a
	ld a, [wcfb1]
	cp $ff
	jr nz, jr_000_0ea8

	xor a
	ld [wcfae], a

jr_000_0e77:
	xor a
	ld [wc0ee], a
	ldh a, [$b8]
	ldh [$b9], a
	ld a, [wc0ef]
	ldh [$b8], a
	ld [$2000], a
	cp $02
	jr nz, jr_000_0e91

	ld a, b
	call $4773
	jr jr_000_0e9f

jr_000_0e91:
	cp $08
	jr nz, jr_000_0e9b

	ld a, b
	call $4d1b
	jr jr_000_0e9f

jr_000_0e9b:
	ld a, b
	call $4b8a

jr_000_0e9f:
	ldh a, [$b9]
	ldh [$b8], a
	ld [$2000], a
	jr jr_000_0eb9

jr_000_0ea8:
	ld a, b
	ld [wcfb1], a
	ld a, [wcfae]
	ld [wcfaf], a
	ld [wcfb0], a
	ld a, b
	ld [wcfae], a

jr_000_0eb9:
	pop bc
	pop de
	pop hl
	ret


Call_000_0ebd:
Jump_000_0ebd:
	ld a, [wcfb2]
	dec a
	ret nz

	ldh a, [$b8]
	push af
	ld a, $01
	ldh [$b8], a
	ld [$2000], a
	call $4a1c
	pop af
	ldh [$b8], a
	ld [$2000], a
	ret


	db $fe, $04, $04, $0b, $0f, $0c, $ff

	cp $07
	inc b
	inc d
	dec e
	dec bc
	inc c
	ld c, $0f
	rst $38
	cp $07
	inc b
	inc d
	ld e, $0b
	inc c
	ld c, $0f
	rst $38
	cp $01
	ld b, $ff
	cp $06
	inc b
	inc de
	dec c
	ld c, $0f
	ld e, $ff
	cp $09
	inc bc
	inc de
	dec [hl]
	dec e
	jr c, jr_000_0f11

	inc c
	dec c
	rrca
	rst $38
	cp $09
	inc bc
	inc de
	dec [hl]
	jr c, @+$0d

jr_000_0f11:
	inc c
	dec c
	ld c, $0f
	rst $38
	cp $09
	add sp, -$17
	jp z, $edcf

	ret


	call wd9d1
	rst $38
	cp $05
	inc sp
	jr nz, jr_000_0f48

	ld [hli], a
	cpl
	rst $38
	cp $07
	ld l, $37
	ld a, [hld]
	ld b, c
	ld b, d
	ld b, e
	ld b, h
	rst $38
	cp $04
	inc h
	dec h
	ld h, $27
	rst $38
	cp $06
	ld [bc], a
	inc bc
	inc de
	dec [hl]
	inc [hl]
	jr c, @+$01

	cp $05
	inc bc
	ld [de], a

jr_000_0f48:
	inc de
	inc [hl]
	dec [hl]
	rst $38
	cp $07
	ld [bc], a
	inc bc
	ld [de], a
	add hl, sp
	dec e
	inc [hl]
	dec [hl]
	rst $38
	cp $06
	inc bc
	ld [de], a
	add hl, sp
	dec e
	inc [hl]
	dec [hl]
	rst $38
	cp $07
	ld [bc], a
	inc bc
	db $10
	ld de, $3534
	add hl, sp
	rst $38

	db $50

Jump_000_0f6a:
	ld hl, $0f69
	ret


	nop
	rst $20
	ld d, a
	nop
	inc [hl]
	cp d
	or [hl]
	inc sp
	ld a, a
	inc l
	jp nc, $26de

	db $d3
	ret c

	or c
	ld h, $df
	ret nz

	rst $20
	ld d, a
	nop
	ld [hl], b
	or [hl]
	or d
	ret c

	or a
	ld [hl], c
	ld a, a
	inc sp
	ld a, a
	or e
	ld a, [hli]
	or [hl]
	cp [hl]
	reti


	or [hl]
	db $d3
	ld d, [hl]
	ld d, a
	nop
	ld d, h
	ld a, a
	rlca
	xor h
	inc c
	ld h, $7f
	or d
	rst $18
	ld b, h
	or d
	rst $20
	ld c, a
	sbc e
	and a
	xor e
	inc de
	ret c

	or b
	adc e
	xor a
	xor h
	ld b, d
	ld d, a
	nop
	ld d, h
	ret


	ld a, a
	ret nz

	or d
	ret c

	ld [c], a
	cp b
	ld a, a
	or [hl]
	or d
	call z, $e7b8
	ld c, a
	ld d, h
	adc l
	xor e
	adc a
	db $e3
	ld d, a

	db $08

	ld a, $5c
	call Call_000_3e9d
	jp Jump_000_0f6a


Jump_000_0fce:
	ld b, a
	ldh a, [$b8]
	push af
	ld a, b
	ldh [$b8], a
	ld [$2000], a
	ld a, $0a
	ld [$0000], a
	xor a
	ld [$4000], a
	call Call_000_0feb
	pop af
	ldh [$b8], a
	ld [$2000], a
	ret


Call_000_0feb:
	ld hl, $a188
	ld c, $10
	ld b, $03
	xor a
	call ByteFill
	ld a, $01
	ld [wd083], a
	ld a, $03
	ld [wd084], a
	xor a
	ld [wd07e], a
	ld [wd07f], a
	ld [wd085], a
	call Call_000_115c
	ld b, a
	and $0f
	add a
	add a
	add a
	ld [wd081], a
	ld a, b
	swap a
	and $0f
	add a
	add a
	add a
	ld [wd080], a
	call Call_000_1141
	ld [wd085], a

Jump_000_1027:
	ld hl, $a188
	ld a, [wd085]
	bit 0, a
	jr z, jr_000_1034

	ld hl, $a310

jr_000_1034:
	call Call_000_1368
	ld a, [wd085]
	bit 1, a
	jr z, jr_000_104b

	call Call_000_1141
	and a
	jr z, jr_000_1048

	call Call_000_1141
	inc a

jr_000_1048:
	ld [wd086], a

jr_000_104b:
	call Call_000_1141
	and a
	jr z, jr_000_1066

jr_000_1051:
	call Call_000_1141
	ld c, a
	call Call_000_1141
	sla c
	or c
	and a
	jr z, jr_000_1066

	call Call_000_111a
	call Call_000_10a9
	jr jr_000_1051

jr_000_1066:
	ld c, $00

jr_000_1068:
	call Call_000_1141
	and a
	jr z, jr_000_1071

	inc c
	jr jr_000_1068

jr_000_1071:
	ld a, c
	add a
	ld hl, $1170
	add l
	ld l, a
	jr nc, jr_000_107b

	inc h

jr_000_107b:
	ld a, [hli]
	ld e, a
	ld d, [hl]
	push de
	inc c
	ld e, $00
	ld d, e

jr_000_1083:
	call Call_000_1141
	or e
	ld e, a
	dec c
	jr z, jr_000_1091

	sla e
	rl d
	jr jr_000_1083

jr_000_1091:
	pop hl
	add hl, de
	ld e, l
	ld d, h

jr_000_1095:
	ld b, e
	xor a
	call Call_000_111a
	ld e, b
	call Call_000_10a9
	dec de
	ld a, d
	and a
	jr nz, jr_000_10a5

	ld a, e
	and a

jr_000_10a5:
	jr nz, jr_000_1095

	jr jr_000_1051

Call_000_10a9:
	ld a, [wd081]
	ld b, a
	ld a, [wd07f]
	inc a
	cp b
	jr z, jr_000_10c7

	ld [wd07f], a
	ld a, [wd08a]
	inc a
	ld [wd08a], a
	ret nz

	ld a, [wd08b]
	inc a
	ld [wd08b], a
	ret


jr_000_10c7:
	xor a
	ld [wd07f], a
	ld a, [wd084]
	and a
	jr z, jr_000_10e1

	dec a
	ld [wd084], a
	ld hl, wd08c
	ld a, [hli]
	ld [wd08a], a
	ld a, [hl]
	ld [wd08b], a
	ret


jr_000_10e1:
	ld a, $03
	ld [wd084], a
	ld a, [wd07e]
	add $08
	ld [wd07e], a
	ld b, a
	ld a, [wd080]
	cp b
	jr z, jr_000_1101

	ld a, [wd08a]
	ld l, a
	ld a, [wd08b]
	ld h, a
	inc hl
	jp Jump_000_1368


jr_000_1101:
	pop hl
	xor a
	ld [wd07e], a
	ld a, [wd085]
	bit 1, a
	jr nz, jr_000_1117

	xor $01
	set 1, a
	ld [wd085], a
	jp Jump_000_1027


jr_000_1117:
	jp Jump_000_1190


Call_000_111a:
	ld e, a
	ld a, [wd084]
	and a
	jr z, jr_000_1135

	cp $02
	jr c, jr_000_112d

	jr z, jr_000_1133

	rrc e
	rrc e
	jr jr_000_1135

jr_000_112d:
	sla e
	sla e
	jr jr_000_1135

jr_000_1133:
	swap e

jr_000_1135:
	ld a, [wd08a]
	ld l, a
	ld a, [wd08b]
	ld h, a
	ld a, [hl]
	or e
	ld [hl], a
	ret


Call_000_1141:
	ld a, [wd083]
	dec a
	jr nz, jr_000_114f

	call Call_000_115c
	ld [wd082], a
	ld a, $08

jr_000_114f:
	ld [wd083], a
	ld a, [wd082]
	rlca
	ld [wd082], a
	and $01
	ret


Call_000_115c:
	ld a, [wd088]
	ld l, a
	ld a, [wd089]
	ld h, a
	ld a, [hli]
	ld b, a
	ld a, l
	ld [wd088], a
	ld a, h
	ld [wd089], a
	ld a, b
	ret


	db $01, $00, $03, $00, $07, $00, $0f, $00, $1f, $00, $3f, $00, $7f, $00, $ff, $00
	db $ff, $01, $ff, $03

	rst $38
	rlca
	rst $38
	rrca
	rst $38
	rra
	rst $38
	ccf
	rst $38
	ld a, a
	rst $38
	rst $38

Jump_000_1190:
	ld a, [wd086]
	cp $02
	jp z, Jump_000_1348

	and a
	jp nz, Jump_000_1298

	ld hl, $a188
	call Call_000_11a5
	ld hl, $a310

Call_000_11a5:
	xor a
	ld [wd07e], a
	ld [wd07f], a
	call Call_000_1368
	ld a, [wd087]
	and a
	jr z, jr_000_11bd

	ld hl, $1288
	ld de, $1290
	jr jr_000_11c3

jr_000_11bd:
	ld hl, $1278
	ld de, $1280

jr_000_11c3:
	ld a, l
	ld [wd08e], a
	ld a, h
	ld [wd08f], a
	ld a, e
	ld [wd090], a
	ld a, d
	ld [wd091], a
	ld e, $00

jr_000_11d5:
	ld a, [wd08a]
	ld l, a
	ld a, [wd08b]
	ld h, a
	ld a, [hl]
	ld b, a
	swap a
	and $0f
	call Call_000_123e
	swap a
	ld d, a
	ld a, b
	and $0f
	call Call_000_123e
	or d
	ld b, a
	ld a, [wd08a]
	ld l, a
	ld a, [wd08b]
	ld h, a
	ld a, b
	ld [hl], a
	ld a, [wd081]
	add l
	jr nc, jr_000_1202

	inc h

jr_000_1202:
	ld [wd08a], a
	ld a, h
	ld [wd08b], a
	ld a, [wd07e]
	add $08
	ld [wd07e], a
	ld b, a
	ld a, [wd080]
	cp b
	jr nz, jr_000_11d5

	xor a
	ld e, a
	ld [wd07e], a
	ld a, [wd07f]
	inc a
	ld [wd07f], a
	ld b, a
	ld a, [wd081]
	cp b
	jr z, jr_000_1239

	ld a, [wd08c]
	ld l, a
	ld a, [wd08d]
	ld h, a
	inc hl
	call Call_000_1368
	jr jr_000_11d5

jr_000_1239:
	xor a
	ld [wd07f], a
	ret


Call_000_123e:
	srl a
	ld c, $00
	jr nc, jr_000_1246

	ld c, $01

jr_000_1246:
	ld l, a
	ld a, [wd087]
	and a
	jr z, jr_000_1251

	bit 3, e
	jr jr_000_1253

jr_000_1251:
	bit 0, e

jr_000_1253:
	ld e, l
	jr nz, jr_000_125f

	ld a, [wd08e]
	ld l, a
	ld a, [wd08f]
	jr jr_000_1266

jr_000_125f:
	ld a, [wd090]
	ld l, a
	ld a, [wd091]

jr_000_1266:
	ld h, a
	ld a, e
	add l
	ld l, a
	jr nc, jr_000_126d

	inc h

jr_000_126d:
	ld a, [hl]
	bit 0, c
	jr nz, jr_000_1274

	swap a

jr_000_1274:
	and $0f
	ld e, a
	ret


	db $01, $32, $76, $45, $fe, $cd, $89, $ba, $fe, $cd, $89, $ba, $01, $32, $76, $45
	db $08, $c4, $e6, $2a, $f7, $3b, $19, $d5, $f7, $3b, $19, $d5, $08, $c4, $e6, $2a

Jump_000_1298:
	xor a
	ld [wd07e], a
	ld [wd07f], a
	call Call_000_1312
	ld a, [wd08a]
	ld l, a
	ld a, [wd08b]
	ld h, a
	call Call_000_11a5
	call Call_000_1312
	ld a, [wd08a]
	ld l, a
	ld a, [wd08b]
	ld h, a
	ld a, [wd08c]
	ld e, a
	ld a, [wd08d]
	ld d, a

jr_000_12c0:
	ld a, [wd087]
	and a
	jr z, jr_000_12dc

	push de
	ld a, [de]
	ld b, a
	swap a
	and $0f
	call Call_000_1308
	swap a
	ld c, a
	ld a, b
	and $0f
	call Call_000_1308
	or c
	pop de
	ld [de], a

jr_000_12dc:
	ld a, [hli]
	ld b, a
	ld a, [de]
	xor b
	ld [de], a
	inc de
	ld a, [wd07f]
	inc a
	ld [wd07f], a
	ld b, a
	ld a, [wd081]
	cp b
	jr nz, jr_000_12c0

	xor a
	ld [wd07f], a
	ld a, [wd07e]
	add $08
	ld [wd07e], a
	ld b, a
	ld a, [wd080]
	cp b
	jr nz, jr_000_12c0

	xor a
	ld [wd07e], a
	ret


Call_000_1308:
	ld de, $1338
	add e
	ld e, a
	jr nc, jr_000_1310

	inc d

jr_000_1310:
	ld a, [de]
	ret


Call_000_1312:
	ld a, [wd085]
	bit 0, a
	jr nz, jr_000_1321

	ld de, $a188
	ld hl, $a310
	jr jr_000_1327

jr_000_1321:
	ld de, $a310
	ld hl, $a188

jr_000_1327:
	ld a, l
	ld [wd08a], a
	ld a, h
	ld [wd08b], a
	ld a, e
	ld [wd08c], a
	ld a, d
	ld [wd08d], a
	ret


	db $00, $08, $04, $0c, $02, $0a, $06, $0e, $01, $09, $05, $0d, $03, $0b, $07, $0f

Jump_000_1348:
	call Call_000_1312
	ld a, [wd087]
	push af
	xor a
	ld [wd087], a
	ld a, [wd08c]
	ld l, a
	ld a, [wd08d]
	ld h, a
	call Call_000_11a5
	call Call_000_1312
	pop af
	ld [wd087], a
	jp Jump_000_1298


Call_000_1368:
Jump_000_1368:
	ld a, l
	ld [wd08a], a
	ld [wd08c], a
	ld a, h
	ld [wd08b], a
	ld [wd08d], a
	ret


	ld hl, wc100
	call Call_000_1395
	ld hl, wc200
	call Call_000_1395
	ld a, $01
	ld [wc100], a
	ld [wc20e], a
	ld hl, wc104
	ld [hl], $3c
	inc hl
	inc hl
	ld [hl], $40
	ret


Call_000_1395:
	ld bc, $0010
	xor a
	jp ByteFill


FadeOutAudio:
	ld a, [wcfae]
	and a
	jr nz, jr_000_13ad

	ld a, [wd6ab]
	bit 1, a
	ret nz

	ld a, $77
	ldh [rNR50], a
	ret


jr_000_13ad:
	ld a, [wcfb0]
	and a
	jr z, jr_000_13b8

	dec a
	ld [wcfb0], a
	ret


jr_000_13b8:
	ld a, [wcfaf]
	ld [wcfb0], a
	ldh a, [rNR50]
	and a
	jr z, jr_000_13d4

	ld b, a
	and $0f
	dec a
	ld c, a
	ld a, b
	and $f0
	swap a
	dec a
	swap a
	or c
	ldh [rNR50], a
	ret


jr_000_13d4:
	ld a, [wcfae]
	ld b, a
	xor a
	ld [wcfae], a
	ld a, $ff
	ld [wc0ee], a
	call Call_000_0e45
	ld a, [wc0f0]
	ld [wc0ef], a
	ld a, b
	ld [wc0ee], a
	jp PlaySound


Call_000_13f1:
	ldh a, [$b8]
	push af
	ld b, $01
	ld hl, $724b
	call Bankswitch
	ld hl, wcf0c
	bit 0, [hl]
	res 0, [hl]
	jr nz, jr_000_140b

	ld a, [wd2dd]
	call Call_000_2ccd

jr_000_140b:
	ld a, $1e
	ld [$ffd5], a
	ld hl, wd2eb
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld d, $00
	ldh a, [$8c]
	ld [wcf0e], a
	and a
	jp z, Jump_000_15de

	cp $d3
	jp z, Jump_000_156f

	cp $d0
	jp z, Jump_000_157a

	cp $d1
	jp z, Jump_000_1590

	cp $d2
	jp z, Jump_000_15c6

	ld a, [wd460]
	ld e, a
	ldh a, [$8c]
	cp e
	jr z, jr_000_1440

	jr nc, jr_000_145c

jr_000_1440:
	push hl
	push de
	push bc
	ld b, $04
	ld hl, $5ad7
	call Bankswitch
	pop bc
	pop de
	ld hl, wd463
	ldh a, [$8c]
	dec a
	add a
	add l
	ld l, a
	jr nc, jr_000_1459

	inc h

jr_000_1459:
	inc hl
	ld a, [hl]
	pop hl

jr_000_145c:
	dec a
	ld e, a
	sla e
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, [hl]
	cp $fe
	jp z, Jump_000_1500

	cp $ff
	jp z, Jump_000_1551

	cp $fc
	jp z, Jump_000_34aa

	cp $fd
	jp z, Jump_000_34b4

	cp $f9
	jp z, Jump_000_34c9

	cp $f5
	jr nz, jr_000_148c

	ld b, $1d
	ld hl, $4e36
	call Bankswitch
	jr jr_000_14a8

jr_000_148c:
	cp $f7
	jp z, Jump_000_34be

	cp $f6
	jr nz, jr_000_149f

	ld hl, $736b
	ld b, $01
	call Bankswitch
	jr jr_000_14a8

jr_000_149f:
	call Call_000_3c89
	ld a, [wcc3c]
	and a
	jr nz, jr_000_14b1

Jump_000_14a8:
jr_000_14a8:
	ld a, [wcc47]
	and a
	jr nz, jr_000_14b1

	call Call_000_38ae

Jump_000_14b1:
jr_000_14b1:
	call Call_000_0153
	ldh a, [$b4]
	bit 0, a
	jr nz, jr_000_14b1

Jump_000_14ba:
	ld a, [wd2dd]
	call Call_000_2ccd
	ld a, $90
	ldh [$b0], a
	call DelayFrame
	call LoadGBPal
	xor a
	ldh [$ba], a
	ld hl, wc219
	ld c, $0f
	ld de, $0010

jr_000_14d5:
	ld a, [hl]
	dec h
	ld [hl], a
	inc h
	add hl, de
	dec c
	jr nz, jr_000_14d5

	ld a, $05
	ldh [$b8], a
	ld [$2000], a
	call $7840
	ld hl, wcfab
	res 0, [hl]
	ld a, [wd6b1]
	bit 3, a
	call z, Call_000_23ae
	call Call_000_26bb
	pop af
	ldh [$b8], a
	ld [$2000], a
	jp Jump_000_0ebd


Jump_000_1500:
	push hl
	ld hl, $1527
	call Call_000_3c79
	pop hl
	inc hl
	call Call_000_1539
	ld a, $02
	ld [wcf7b], a
	ldh a, [$b8]
	push af
	ld a, $01
	ldh [$b8], a
	ld [$2000], a
	call $6bbb
	pop af
	ldh [$b8], a
	ld [$2000], a
	jp Jump_000_14a8


	db $00, $d6, $b3, $ba, $bf, $e7, $4e, $b5, $bb, $26, $bc, $d3, $c9, $33, $bd, $b6
	db $e6, $57

Call_000_1539:
	ld a, $01
	ld [wcfb2], a
	ld a, h
	ld [wd0ed], a
	ld a, l
	ld [wd0ee], a
	ld de, wcf62

jr_000_1549:
	ld a, [hli]
	ld [de], a
	inc de
	cp $ff
	jr nz, jr_000_1549

	ret


Jump_000_1551:
	xor a
	ldh [$8b], a
	ldh [$8c], a
	ldh [$8d], a
	inc hl
	ldh a, [$b8]
	push af
	ld a, $01
	ldh [$b8], a
	ld [$2000], a
	call $7121
	pop af
	ldh [$b8], a
	ld [$2000], a
	jp Jump_000_14a8


Jump_000_156f:
	ld hl, $7a99
	ld b, $07
	call Bankswitch
	jp Jump_000_14a8


Jump_000_157a:
	ld hl, $1583
	call Call_000_3c79
	jp Jump_000_14a8


	db $01, $68, $cd, $00, $ca, $7f, $c1, $b6, $d7, $c2, $b7, $c0, $57

Jump_000_1590:
	ld hl, $1599
	call Call_000_3c79
	jp Jump_000_14b1


	db $00, $52, $c9, $7f, $c3, $d3, $c4, $c6, $ca, $4f, $c0, $c0, $b6, $b4, $d9, $54
	db $26, $7f, $d3, $b3, $b2, $c5, $b2, $e7, $51, $52, $ca, $4f, $d2, $c9, $cf, $b4
	db $26, $7f, $cf, $df, $b8, $d7, $c6, $7f, $c5, $df, $c0, $e7, $58

Jump_000_15c6:
	ld hl, $15cf
	call Call_000_3c79
	jp Jump_000_14a8


	nop
	adc h
	ld b, d
	and a
	db $e3
	ret


	ld a, a
	cp d
	or e
	or [hl]
	ld h, $b7
	jp c, $57c0

Jump_000_15de:
	ld a, $04
	ldh [$b8], a
	ld [$2000], a
	ld a, [wd67f]
	ld [wd0df], a
	ld a, $8f
	call Call_000_0e45
	ld b, $01
	ld hl, $72c0
	call Bankswitch
	ld b, $03
	ld hl, $4b75
	call Bankswitch
	call Call_000_0ebd

jr_000_1603:
	call Call_000_3b08
	ld b, a
	bit 6, a
	jr z, jr_000_1629

	ld a, [wcc26]
	and a
	jr nz, jr_000_1603

	ld a, [wcc2a]
	and a
	jr nz, jr_000_1603

	ld a, [wd6ca]
	bit 5, a
	ld a, $06
	jr nz, jr_000_1621

	dec a

jr_000_1621:
	ld [wcc26], a
	call Call_000_3c29
	jr jr_000_1603

jr_000_1629:
	bit 7, a
	jr z, jr_000_1646

	ld a, [wd6ca]
	bit 5, a
	ld a, [wcc26]
	ld c, $07
	jr nz, jr_000_163a

	dec c

jr_000_163a:
	cp c
	jr nz, jr_000_1603

	xor a
	ld [wcc26], a
	call Call_000_3c29
	jr jr_000_1603

jr_000_1646:
	call Call_000_3c1c
	ld a, [wcc26]
	ld [wcc2d], a
	ld a, b
	and $0a
	jp nz, Jump_000_1681

	call Call_000_373e
	ld a, [wd6ca]
	bit 5, a
	ld a, [wcc26]
	jr nz, jr_000_1663

	inc a

jr_000_1663:
	cp $00
	jp z, $5af8

	cp $01
	jp z, $5b0c

	cp $02
	jp z, $5de6

	cp $03
	jp z, $5f60

	cp $04
	jp z, $60e6

	cp $05
	jp z, $60f9

Jump_000_1681:
jr_000_1681:
	call Call_000_0153
	ldh a, [$b3]
	bit 0, a
	jr nz, jr_000_1681

	call Call_000_36ea
	jp Jump_000_14ba


	ld c, $00

jr_000_1692:
	ld a, [hli]
	ld e, a
	ld d, $08

jr_000_1696:
	srl e
	ld a, $00
	adc c
	ld c, a
	dec d
	jr nz, jr_000_1696

	dec b
	jr nz, jr_000_1692

	ld a, c
	ld [wd0e3], a
	ret


	ld b, $01
	ld hl, $6abc
	jp Jump_000_3620


	ld de, wd2cd
	ld hl, $ffa1
	ld c, $03
	ld a, $0b
	call Call_000_3e9d
	ld a, $13
	ld [wd0ea], a
	call Call_000_3130
	ld a, $b2
	call Call_000_3788
	jp Jump_000_3790


	ldh a, [$b8]
	push af
	ld a, $03
	ldh [$b8], a
	ld [$2000], a
	call $4652
	pop af
	ldh [$b8], a
	ld [$2000], a
	ret


Call_000_16e0:
	push bc
	ldh a, [$b8]
	push af
	ld a, $03
	ldh [$b8], a
	ld [$2000], a
	call $45e2
	pop bc
	ld a, b
	ldh [$b8], a
	ld [$2000], a
	pop bc
	ret


	xor a
	ldh [$ba], a
	ld a, $01
	ld [$ffb7], a
	ld a, [wd037]
	and a
	jr nz, jr_000_1709

	ld a, $01
	jr jr_000_170b

jr_000_1709:
	ld a, $0f

jr_000_170b:
	call Call_000_3606
	ld hl, wd6af
	set 6, [hl]
	xor a
	ld [wcc35], a
	ld [wd0ef], a
	ld a, [wcf72]
	ld l, a
	ld a, [wcf73]
	ld h, a
	ld a, [hl]
	ld [wd0ef], a
	ld a, $0d
	ld [wd0ea], a
	call Call_000_3130
	call Call_000_0ebd
	ld hl, wc3cc
	ld de, $090e
	ld a, [wcf7b]
	and a
	jr nz, jr_000_1740

	call Call_000_0ebd

jr_000_1740:
	ld a, $01
	ld [wcc37], a
	ld a, [wd0ef]
	cp $02
	jr c, jr_000_174e

	ld a, $02

jr_000_174e:
	ld [wcc28], a
	ld a, $04
	ld [wcc24], a
	ld a, $05
	ld [wcc25], a
	ld a, $07
	ld [wcc29], a
	ld c, $0a
	call DelayFrames

Jump_000_1765:
	xor a
	ldh [$ba], a
	call Call_000_1968
	ld a, $01
	ldh [$ba], a
	call Call_000_3e07
	ld a, [wd037]
	and a
	jr z, jr_000_1793

	ld a, $ed
	ld [wc3f5], a
	ld c, $50
	call DelayFrames
	xor a
	ld [wcc26], a
	ld hl, wc3f5
	ld a, l
	ld [wcc30], a
	ld a, h
	ld [wcc31], a
	jr jr_000_17a3

jr_000_1793:
	call LoadGBPal
	call Call_000_3b08
	push af
	call Call_000_3bc6
	pop af
	bit 0, a
	jp z, Jump_000_1840

jr_000_17a3:
	ld a, [wcc26]
	call Call_000_3c1c
	ld a, $01
	ld [wd0f3], a
	ld [wd0f2], a
	xor a
	ld [wcc37], a
	ld a, [wcc26]
	ld c, a
	ld a, [wcc36]
	add c
	ld c, a
	ld a, [wd0ef]
	and a
	jp z, Jump_000_194c

	dec a
	cp c
	jp c, Jump_000_194c

	ld a, c
	ld [wcf79], a
	ld a, [wcf7b]
	cp $03
	jr nz, jr_000_17d7

	sla c

jr_000_17d7:
	ld a, [wcf72]
	ld l, a
	ld a, [wcf73]
	ld h, a
	inc hl
	ld b, $00
	add hl, bc
	ld a, [hl]
	ld [wcf78], a
	ld a, [wcf7b]
	and a
	jr z, jr_000_180e

	push hl
	call Call_000_3827
	pop hl
	ld a, [wcf7b]
	cp $03
	jr nz, jr_000_17fe

	inc hl
	ld a, [hl]
	ld [wcf7e], a

jr_000_17fe:
	ld a, [wcf78]
	ld [wd092], a
	ld a, $01
	ld [wd094], a
	call Call_000_37b3
	jr jr_000_1823

jr_000_180e:
	ld hl, wd123
	ld a, [wcf72]
	cp l
	ld hl, wd257
	jr z, jr_000_181d

	ld hl, wde64

jr_000_181d:
	ld a, [wcf79]
	call Call_000_2fb1

jr_000_1823:
	ld de, wcd68
	call Call_000_386e
	ld a, $01
	ld [wd0f3], a
	ld a, [wcc26]
	ld [wd0f2], a
	xor a
	ld [$ffb7], a
	ld hl, wd6af
	res 6, [hl]
	jp Jump_000_3617


Jump_000_1840:
	bit 1, a
	jp nz, Jump_000_194c

	bit 2, a
	jp nz, $6adf

	ld b, a
	bit 7, b
	ld hl, wcc36
	jr z, jr_000_1861

	ld a, [hl]
	add $03
	ld b, a
	ld a, [wd0ef]
	cp b
	jp c, Jump_000_1765

	inc [hl]
	jp Jump_000_1765


jr_000_1861:
	ld a, [hl]
	and a
	jp z, Jump_000_1765

	dec [hl]
	jp Jump_000_1765


	ld hl, wc463
	ld b, $01
	ld c, $03
	ld a, [wcf7b]
	cp $02
	jr nz, jr_000_187f

	ld hl, wc45b
	ld b, $01
	ld c, $0b

jr_000_187f:
	call Call_000_03d2
	ld hl, wc478
	ld a, [wcf7b]
	cp $02
	jr nz, jr_000_1894

	ld a, $f0
	ld [wc47a], a
	ld hl, wc470

jr_000_1894:
	ld de, $1941
	call Call_000_0405
	xor a
	ld [wcf7d], a
	jp Jump_000_18ba


Jump_000_18a1:
jr_000_18a1:
	call Call_000_3879
	ldh a, [$b3]
	bit 0, a
	jp nz, Jump_000_193c

	bit 1, a
	jp nz, Jump_000_193e

	bit 6, a
	jr nz, jr_000_18ba

	bit 7, a
	jr nz, jr_000_18cc

	jr jr_000_18a1

Jump_000_18ba:
jr_000_18ba:
	ld a, [wcf7e]
	inc a
	ld b, a
	ld hl, wcf7d
	inc [hl]
	ld a, [hl]
	cp b
	jr nz, jr_000_18d6

	ld a, $01
	ld [hl], a
	jr jr_000_18d6

jr_000_18cc:
	ld hl, wcf7d
	dec [hl]
	jr nz, jr_000_18d6

	ld a, [wcf7e]
	ld [hl], a

jr_000_18d6:
	ld hl, wc479
	ld a, [wcf7b]
	cp $02
	jr nz, jr_000_1930

	ld c, $03
	ld a, [wcf7d]
	ld b, a
	ld hl, $ff9f
	xor a
	ld [hli], a
	ld [hli], a
	ld [hl], a

jr_000_18ed:
	ld de, $ffa1
	ld hl, $ff8d
	push bc
	ld a, $0b
	call Call_000_3e9d
	pop bc
	dec b
	jr nz, jr_000_18ed

	ldh a, [$8e]
	and a
	jr z, jr_000_191c

	xor a
	ldh [$a2], a
	ldh [$a3], a
	ld a, $02
	ldh [$a4], a
	ld a, $0d
	call Call_000_3e9d
	ldh a, [$a2]
	ldh [$9f], a
	ldh a, [$a3]
	ldh [$a0], a
	ldh a, [$a4]
	ldh [$a1], a

jr_000_191c:
	ld hl, wc474
	ld de, $1945
	call Call_000_0405
	ld de, $ff9f
	ld c, $83
	call Call_000_2fc4
	ld hl, wc471

jr_000_1930:
	ld de, wcf7d
	ld bc, $8102
	call Call_000_3c8f
	jp Jump_000_18a1


Jump_000_193c:
	xor a
	ret


Jump_000_193e:
	ld a, $ff
	ret


	db $f1, $f6, $f7, $50, $7f, $7f, $7f, $7f, $7f, $7f, $50

Jump_000_194c:
	ld a, [wcc26]
	ld [wd0f2], a
	ld a, $02
	ld [wd0f3], a
	ld [wcc37], a
	xor a
	ld [$ffb7], a
	ld hl, wd6af
	res 6, [hl]
	call Call_000_3617
	scf
	ret


Call_000_1968:
	ld hl, wc3e1
	ld b, $09
	ld c, $0e
	call Call_000_0374
	ld a, [wcf72]
	ld e, a
	ld a, [wcf73]
	ld d, a
	inc de
	ld a, [wcc36]
	ld c, a
	ld a, [wcf7b]
	cp $03
	ld a, c
	jr nz, jr_000_198b

	sla a
	sla c

jr_000_198b:
	add e
	ld e, a
	jr nc, jr_000_1990

	inc d

jr_000_1990:
	ld hl, wc3f6
	ld b, $04

Jump_000_1995:
	ld a, b
	ld [wcf79], a
	ld a, [de]
	ld [wd0e3], a
	cp $ff
	jp z, Jump_000_1aa1

	push bc
	push de
	push hl
	push hl
	push de
	ld a, [wcf7b]
	and a
	jr z, jr_000_19b6

	cp $01
	jr z, jr_000_19d8

	call Call_000_1add
	jr jr_000_19db

jr_000_19b6:
	push hl
	ld hl, wd123
	ld a, [wcf72]
	cp l
	ld hl, wd257
	jr z, jr_000_19c6

	ld hl, wde64

jr_000_19c6:
	ld a, [wcf79]
	ld b, a
	ld a, $04
	sub b
	ld b, a
	ld a, [wcc36]
	add b
	call Call_000_2fb1
	pop hl
	jr jr_000_19db

jr_000_19d8:
	call Call_000_1b6d

jr_000_19db:
	call Call_000_0405
	pop de
	pop hl
	ld a, [wcf7a]
	and a
	jr z, jr_000_19fd

	push hl
	ld a, [de]
	ld de, $421c
	ld [wcf78], a
	call Call_000_3827
	pop hl
	ld bc, $0006
	add hl, bc
	ld c, $83
	call Call_000_2fc4
	ld [hl], $f0

jr_000_19fd:
	ld a, [wcf7b]
	and a
	jr nz, jr_000_1a41

	ld a, [wd0e3]
	push af
	push hl
	ld hl, wd123
	ld a, [wcf72]
	cp l
	ld a, $00
	jr z, jr_000_1a15

	ld a, $02

jr_000_1a15:
	ld [wcc49], a
	ld hl, wcf79
	ld a, [hl]
	ld b, a
	ld a, $04
	sub b
	ld b, a
	ld a, [wcc36]
	add b
	ld [hl], a
	call Call_000_2d68
	ld a, [wcc49]
	and a
	jr z, jr_000_1a35

	ld a, [wcf82]
	ld [wcfa0], a

jr_000_1a35:
	pop hl
	ld bc, $0006
	add hl, bc
	call Call_000_2f02
	pop af
	ld [wd0e3], a

jr_000_1a41:
	pop hl
	pop de
	inc de
	ld a, [wcf7b]
	cp $03
	jr nz, jr_000_1a8f

	ld a, [wd0e3]
	ld [wcf78], a
	call Call_000_3121
	ld a, [wd0e9]
	and a
	jr nz, jr_000_1a7b

	push hl
	ld bc, $0009
	add hl, bc
	ld a, $f1
	ld [hli], a
	ld a, [wd0e3]
	push af
	ld a, [de]
	ld [wcf7e], a
	push de
	ld de, wd0e3
	ld [de], a
	ld bc, $0102
	call Call_000_3c8f
	pop de
	pop af
	ld [wd0e3], a
	pop hl

jr_000_1a7b:
	inc de
	pop bc
	inc c
	push bc
	inc c
	ld a, [wcc35]
	and a
	jr z, jr_000_1a8f

	sla a
	cp c
	jr nz, jr_000_1a8f

	dec hl
	ld a, $ec
	ld [hli], a

jr_000_1a8f:
	ld bc, $0028
	add hl, bc
	pop bc
	inc c
	dec b
	jp nz, Jump_000_1995

	ld bc, $fff8
	add hl, bc
	ld a, $ee
	ld [hl], a
	ret


Jump_000_1aa1:
	ld de, $1aa7
	jp Jump_000_0405


	db $d4, $d2, $d9, $50

Call_000_1aab:
	push hl
	ldh a, [$b8]
	push af
	ld a, $0e
	ldh [$b8], a
	ld [$2000], a
	ld a, [wd0e3]
	dec a
	ld hl, $5068
	ld e, a
	ld d, $00
	add hl, de
	add hl, de
	add hl, de
	add hl, de
	add hl, de
	ld de, wcd68
	push de
	ld bc, $0005
	call Call_000_01bb
	ld hl, wcd6d
	ld [hl], $50
	pop de
	pop af
	ldh [$b8], a
	ld [$2000], a
	pop hl
	ret


Call_000_1add:
	push hl
	push bc
	ld a, [wd0e3]
	cp $c4
	jr nc, jr_000_1af8

	ld [wd092], a
	ld a, $04
	ld [wd093], a
	ld a, $01
	ld [wd094], a
	call Call_000_37b3
	jr jr_000_1afb

jr_000_1af8:
	call Call_000_1b01

jr_000_1afb:
	ld de, wcd68
	pop bc
	pop hl
	ret


Call_000_1b01:
Jump_000_1b01:
	push hl
	push de
	push bc
	ld a, [wd0e3]
	push af
	cp $c9
	jr nc, jr_000_1b19

	add $05
	ld [wd0e3], a
	ld hl, $1b4f
	ld bc, $0006
	jr jr_000_1b1f

jr_000_1b19:
	ld hl, $1b4a
	ld bc, $0005

jr_000_1b1f:
	ld de, wcd68
	call Call_000_01bb
	ld a, [wd0e3]
	sub $c8
	ld b, $f6

jr_000_1b2c:
	sub $0a
	jr c, jr_000_1b33

	inc b
	jr jr_000_1b2c

jr_000_1b33:
	add $0a
	push af
	ld a, b
	ld [de], a
	inc de
	pop af
	ld b, $f6
	add b
	ld [de], a
	inc de
	ld a, $50
	ld [de], a
	pop af
	ld [wd0e3], a
	pop bc
	pop de
	pop hl
	ret


	call c, $9d2b
	adc e
	xor e
	swap e
	sbc $9d
	adc e
	xor e

	cp $c4
	jr c, jr_000_1b5c

	cp $c9
	ret


jr_000_1b5c:
	and a
	ret


	ld hl, $1b67
	ld de, $0001
	jp Jump_000_3ddb


	rrca
	inc de
	add hl, sp
	ld b, [hl]
	sub h
	rst $38

Call_000_1b6d:
	push hl
	ld a, $02
	ld [wd093], a
	ld a, [wd0e3]
	ld [wd092], a
	ld a, $04
	ld [wd094], a
	call Call_000_37b3
	ld de, wcd68
	pop hl
	ret


	ldh a, [$b8]
	push af
	ld a, [wd2dd]
	call Call_000_2ccd
	call DisableLCD
	call Call_000_36ea
	call Call_000_26bb
	call Call_000_23ff
	call Call_000_0181
	pop af
	ldh [$b8], a
	ld [$2000], a
	ret


	ldh a, [$b8]
	push af
	ld a, [wd2dd]
	call Call_000_2ccd
	call DisableLCD
	call Call_000_23ff
	call Call_000_0181
	pop af
	ldh [$b8], a
	ld [$2000], a
	ret


	ld hl, wd6ad
	res 4, [hl]
	ld b, $1c
	ld hl, $54fe
	jp Jump_000_3620


	db $a1, $42, $57, $43

	ld d, h
	ld b, l
	ld c, [hl]
	ld b, a
	inc l
	ld b, b
	sbc b
	ld c, c
	nop
	ld b, b
	and a
	ld c, e
	ld l, [hl]
	ld b, b
	ld e, $49
	and h
	ld c, c
	and h
	ld c, c

	db $31, $41, $20, $40

	ld b, $42
	or b
	ld b, e
	and c
	ld b, l
	inc e
	ld b, b
	ld b, b
	ld b, b
	ld c, c
	ld b, c
	and [hl]
	ld b, [hl]
	ldh a, [rSCY]
	jp c, $8944

	ld b, [hl]
	inc l
	ld c, b
	cp c
	ld c, c
	ld c, b
	ld c, c
	or $4a
	ld b, b
	ld c, e
	ld d, h
	ld c, h
	sbc b
	ld c, [hl]
	pop af
	ld b, b
	rra
	ld d, b
	nop
	ld b, b
	ccf
	ld b, e
	add d
	ld b, [hl]
	sbc e
	ld b, a

	db $72, $41, $a4, $40, $71, $6e, $40, $45, $ce, $45, $fe, $55

	ld [hl], b
	ld d, a
	sbc $57
	call nc, $2f40
	ld l, d
	ld a, b
	ld l, a
	sbc d
	ld l, d
	inc h
	ld [hl], b

	db $ed, $70, $28, $59

	db $eb
	ld b, b
	dec h
	ld b, l
	ld [hl], a
	ld b, [hl]
	or b
	ld e, b
	scf
	ld c, c
	ld l, l
	ld e, c
	inc d
	ld c, h
	ret nz

	ld [hl], b
	and a
	ld h, a
	xor l
	ld [hl], l
	jr jr_000_1ca3

	ld e, l
	ld e, e
	inc b
	ld c, l
	ld [$e14e], sp
	ld e, e
	adc d
	ld d, d
	ld a, e
	ld h, h
	jr jr_000_1cb1

	jr jr_000_1cc4

	adc l
	ld [hl], c
	ld c, c
	ld [hl], d
	rst $10
	ld l, h
	db $d3
	ld [hl], c
	db $d3
	ld [hl], c
	sbc d
	ld l, l
	ld a, [hli]
	ld [hl], d
	adc l
	ld [hl], d
	ld h, c
	ld l, [hl]
	inc hl
	ld l, a
	ld a, [hld]
	ld h, [hl]
	jr nz, jr_000_1cba

	adc b
	ld l, a
	jp nc, $8066

	ld [hl], d
	adc b
	ld h, a
	rrca
	ld l, c
	ld h, d
	ld [hl], l
	inc e
	ld d, l
	ld b, e
	ld l, e
	ret z

	ld d, l
	and l
	ld d, [hl]
	ld e, h
	ld h, h
	dec de
	ld h, l
	cp h
	ld e, h
	ld [hl], b
	ld e, [hl]
	inc c
	ld c, a
	adc [hl]
	ld h, d
	ld c, $63
	ldh a, [$64]
	daa
	ld h, a
	sub e
	ld l, c
	inc de
	ld l, l
	ld a, [bc]
	ld [hl], c
	inc a
	ld a, b
	inc a
	ld a, b
	inc a
	ld a, b

jr_000_1ca3:
	ld hl, sp+$76
	inc a
	ld a, b
	inc a
	ld a, b
	inc a
	ld a, b
	inc a
	ld a, b
	inc a
	ld a, b
	inc a
	ld a, b

jr_000_1cb1:
	inc a
	ld a, b
	inc a
	ld a, b
	inc a
	ld a, b
	cp e
	ld a, e
	sbc c

jr_000_1cba:
	ld [hl], h
	db $76
	ld l, a
	cp l
	ld [hl], h
	ld d, a
	ld d, [hl]
	pop hl
	ld l, a
	ld a, [bc]

jr_000_1cc4:
	ld b, e
	jp hl


	ld b, l
	add hl, de
	ld b, a
	jr c, jr_000_1d16

	call z, wd54b
	ld c, h
	scf
	ld c, l
	jr c, jr_000_1d22

	nop
	ld h, a
	sub c
	ld c, a
	ccf
	ld d, b
	pop de
	ld d, [hl]
	db $f4
	ld e, [hl]
	rla
	ld h, b
	bit 4, b
	or [hl]
	ld h, d
	sub l
	ld h, e
	ld b, e
	ld d, e
	jr nz, jr_000_1d2d

	add l
	ld b, l
	and $48
	cp a
	ld c, d
	ld [hl], d
	ld c, h
	ld d, $4f
	ccf
	ld d, d
	and l
	ld e, [hl]
	db $eb
	ld d, e
	ld l, l
	ld h, c
	and h
	ld h, a
	add d
	ld c, a
	ld [hl], h
	ld d, b
	add hl, sp
	ld d, c
	jr jr_000_1d59

	ld d, c
	ld e, b
	ld [hld], a
	ld e, a
	inc c
	ld [hl], d
	ld c, b
	ld [hl], e
	add h
	ld [hl], h
	sub b
	db $76
	add h
	ld l, [hl]
	call z, $9170

jr_000_1d16:
	ld b, [hl]
	inc d
	ld h, b
	rra
	ld l, b
	jr z, jr_000_1d86

	cp [hl]
	ld l, c
	or e
	ld l, e
	ld c, c

jr_000_1d22:
	ld l, l
	ld hl, $216e
	ld l, [hl]
	ld l, d
	ld [hl], b
	and [hl]
	ld l, [hl]
	add a
	ld e, h

jr_000_1d2d:
	ld h, l
	ld e, a
	ld d, b
	ld h, h
	ld c, h
	ld l, b
	dec l
	ld l, l
	jp wd36d


	ld l, [hl]
	ld c, l
	ld l, c
	ld [bc], a
	ld l, e
	ld [hl], d
	ld l, e
	ld l, c
	ld l, h
	ld hl, $f66e
	ld [hl], d
	cp a
	ld [hl], l
	ld a, [$376e]
	ld [hl], b
	cp l
	ld c, l
	dec c
	ld [hl], h
	ld a, [$8363]
	ld l, c
	ld hl, $e170
	ld [hl], h
	adc c
	ld c, a

jr_000_1d59:
	cp [hl]
	ld d, d
	db $f4
	ld d, l
	ld a, [hld]
	ld e, d
	ld [de], a
	ld e, l
	ld c, [hl]
	ld h, c
	ld c, [hl]
	ld h, c
	ld c, [hl]
	ld h, c
	ld c, [hl]
	ld h, c
	ret nc

	ld l, a
	or l
	ld [hl], e
	or e
	ld [hl], c
	sub d
	ld [hl], h
	call nz, wc378
	ld l, b
	ld c, h
	ld [hl], a
	ld c, h
	ld [hl], c
	jr z, jr_000_1def

	sub h
	db $76
	or l
	ld h, d
	dec sp
	ld h, h
	dec e
	ld a, h
	add sp, $66
	ld d, [hl]

jr_000_1d86:
	ld l, b
	inc h
	ld a, [hl]
	ret z

	ld l, b
	add c
	ld l, c
	ld [hli], a
	ld l, d
	ld de, $f66b
	ld l, e
	db $ec
	ld c, c
	ld c, c
	ld h, d
	jp hl


	ld c, d
	ld l, c
	ld l, h
	ld a, [c]
	ld l, h
	ret z

	ld [hl], e
	ld b, e
	db $76
	ld l, l
	db $76
	ld a, [bc]
	ld h, d
	ret nc

	ld l, a
	ret nc

	ld l, a
	inc b
	ld a, l
	ld l, a
	ld a, l
	ret nc

	ld l, a
	ret nc

	ld l, a
	ret nc

	ld l, a
	ret nc

	ld l, a
	ld l, h
	ld [hl], l
	cp h
	ld [hl], a
	db $e4
	ld a, c

Call_000_1dbb:
	ld b, $1c
	ld hl, $4dea
	jp Jump_000_3620


Jump_000_1dc3:
	ld a, $ff
	ld [wcd66], a
	call Call_000_2c52
	ld b, $03
	ld hl, $497b
	call Bankswitch
	ld hl, wd6ab
	bit 0, [hl]
	jr z, jr_000_1ddf

	ld a, $03
	ld [wd101], a

jr_000_1ddf:
	ld hl, wd6ad
	bit 5, [hl]
	res 5, [hl]
	call z, Call_000_2cf8
	call nz, Call_000_2336
	ld hl, wd6b1

jr_000_1def:
	ld a, [hl]
	and $18
	jr z, jr_000_1e01

	res 3, [hl]
	ld b, $1c
	ld hl, $4a61
	call Bankswitch
	call Call_000_0ebd

jr_000_1e01:
	ld b, $03
	ld hl, $49d1
	call Bankswitch
	ld hl, wd6ac
	res 5, [hl]
	call Call_000_0ebd
	ld hl, wd0eb
	set 5, [hl]
	set 6, [hl]
	xor a
	ld [wcd66], a

Jump_000_1e1c:
	call DelayFrame

Jump_000_1e1f:
	call DelayFrame
	call LoadGBPal
	ld a, [wd6b5]
	bit 6, a
	call nz, Call_000_1dbb
	ld a, [wcfac]
	and a
	jp nz, Jump_000_1fcc

	call Call_000_295e
	ld b, $07
	ld hl, $7a34
	call Bankswitch
	ld a, [wd982]
	and a
	jp nz, Jump_000_2153

	ld hl, wd6ac
	bit 3, [hl]
	res 3, [hl]
	jp nz, Jump_000_2153

	ld a, [wd6b1]
	and $18
	jp nz, Jump_000_237c

	ld a, [wd036]
	and a
	jp nz, Jump_000_2043

	ld a, [wd6af]
	bit 7, a
	jr z, jr_000_1e6a

	ldh a, [$b4]
	jr jr_000_1e6c

jr_000_1e6a:
	ldh a, [$b3]

jr_000_1e6c:
	bit 3, a
	jr z, jr_000_1e76

	xor a
	ldh [$8c], a
	jp Jump_000_1e9a


jr_000_1e76:
	bit 0, a
	jp z, Jump_000_1f02

	ld a, [wd6af]
	bit 2, a
	jp nz, Jump_000_1ee4

	call Call_000_3145
	jr nz, jr_000_1eda

	call Call_000_3ee5
	ldh a, [$eb]
	and a
	jp z, Jump_000_1e1c

	call Call_000_253a
	ldh a, [$8c]
	and a
	jp z, Jump_000_1e1c

Jump_000_1e9a:
	ld a, $35
	call Call_000_3e9d
	call Call_000_0ebd
	ld a, [wcd5b]
	bit 2, a
	jr nz, jr_000_1eda

	bit 0, a
	jr nz, jr_000_1eda

	call Call_000_13f1
	ld a, [wcc47]
	and a
	jr z, jr_000_1eda

	dec a
	ld a, $00
	ld [wcc47], a
	jr z, jr_000_1ed7

	ld a, $52
	call Call_000_3e9d
	ld a, [wd2dd]
	ld [wd699], a
	call $6260
	ld a, [wd2dd]
	call Call_000_2ccd
	ld hl, wd2e6
	set 7, [hl]

jr_000_1ed7:
	jp Jump_000_1dc3


jr_000_1eda:
	ld a, [wd036]
	and a
	jp nz, Jump_000_2043

	jp Jump_000_1e1c


Jump_000_1ee4:
jr_000_1ee4:
	ld hl, wcd5b
	res 2, [hl]
	call Call_000_0ebd
	ld a, $01
	ld [wcc4b], a
	ld a, [wd4a7]
	and a
	jp z, Jump_000_1e1c

	ld [wd4a8], a
	xor a
	ld [wd4a7], a
	jp Jump_000_1e1c


Jump_000_1f02:
	ldh a, [$b4]
	bit 7, a
	jr z, jr_000_1f11

	ld a, $01
	ld [wc103], a
	ld a, $04
	jr jr_000_1f34

jr_000_1f11:
	bit 6, a
	jr z, jr_000_1f1e

	ld a, $ff
	ld [wc103], a
	ld a, $08
	jr jr_000_1f34

jr_000_1f1e:
	bit 5, a
	jr z, jr_000_1f2b

	ld a, $ff
	ld [wc105], a
	ld a, $02
	jr jr_000_1f34

jr_000_1f2b:
	bit 4, a
	jr z, jr_000_1ee4

	ld a, $01
	ld [wc105], a

jr_000_1f34:
	ld [wd4a9], a
	ld a, [wd6af]
	bit 7, a
	jr nz, jr_000_1f95

	ld a, [wcc4b]
	and a
	jr z, jr_000_1f95

	ld a, [wd4a9]
	ld b, a
	ld a, [wd4a8]
	cp b
	jr z, jr_000_1f95

	swap a
	or b
	cp $48
	jr nz, jr_000_1f5c

	ld a, $02
	ld [wd4a7], a
	jr jr_000_1f7b

jr_000_1f5c:
	cp $84
	jr nz, jr_000_1f67

	ld a, $01
	ld [wd4a7], a
	jr jr_000_1f7b

jr_000_1f67:
	cp $12
	jr nz, jr_000_1f72

	ld a, $04
	ld [wd4a7], a
	jr jr_000_1f7b

jr_000_1f72:
	cp $21
	jr nz, jr_000_1f7b

	ld a, $08
	ld [wd4a7], a

jr_000_1f7b:
	ld hl, wcd5b
	set 2, [hl]
	ld hl, wcc4b
	dec [hl]
	jr nz, jr_000_1f7b

	ld a, [wd4a9]
	ld [wd4a7], a
	call Call_000_209a
	jp c, Jump_000_204e

	jp Jump_000_1e1c


jr_000_1f95:
	ld a, [wd4a9]
	ld [wd4a7], a
	call Call_000_0ebd
	ld a, [wd67f]
	cp $02
	jr z, jr_000_1fbf

	call Call_000_25e8
	jr nc, jr_000_1fc5

	push hl
	ld hl, wd6b5
	bit 2, [hl]
	pop hl
	jp z, Jump_000_1e1c

	push hl
	call Call_000_2300
	pop hl
	jp c, Jump_000_211d

	jp Jump_000_1e1c


jr_000_1fbf:
	call Call_000_29c8
	jp c, Jump_000_1e1c

jr_000_1fc5:
	ld a, $08
	ld [wcfac], a
	jr jr_000_1fde

Jump_000_1fcc:
	ld a, [wd6b5]
	bit 7, a
	jr z, jr_000_1fdb

	ld b, $11
	ld hl, $57b0
	call Bankswitch

jr_000_1fdb:
	call Call_000_0ebd

jr_000_1fde:
	ld hl, wcd5b
	res 2, [hl]
	ld a, [wd67f]
	dec a
	jr nz, jr_000_1ff3

	ld a, [wd6b5]
	bit 6, a
	jr nz, jr_000_1ff3

	call Call_000_20b7

jr_000_1ff3:
	call Call_000_2738
	ld a, [wcfac]
	and a
	jp nz, Jump_000_21d1

	ld a, [wd6af]
	bit 7, a
	jr nz, jr_000_201a

	ld hl, wd100
	dec [hl]
	ld a, [wd6ab]
	bit 0, a
	jr z, jr_000_201a

	ld hl, wd101
	dec [hl]
	jr nz, jr_000_201a

	ld hl, wd6ab
	res 0, [hl]

jr_000_201a:
	ld a, [wd70f]
	bit 7, a
	jr z, jr_000_2030

	ld b, $07
	ld hl, $7a43
	call Bankswitch
	ld a, [wd982]
	and a
	jp nz, Jump_000_2153

jr_000_2030:
	ld a, [wd034]
	and a
	jp nz, Jump_000_20cb

	ld a, $13
	call Call_000_3e9d
	ld a, [wd0f2]
	and a
	jp nz, Jump_000_2348

Jump_000_2043:
	call Call_000_209a
	ld hl, wd6b5
	res 2, [hl]
	jp nc, Jump_000_20cb

Jump_000_204e:
	ld hl, wd6ac
	res 6, [hl]
	ld hl, wd6b2
	res 3, [hl]
	ld hl, wd0eb
	set 5, [hl]
	set 6, [hl]
	xor a
	ldh [$b4], a
	ld a, [wd2dd]
	cp $a6
	jr nz, jr_000_206e

	ld hl, wd71a
	set 7, [hl]

jr_000_206e:
	ld hl, wd6ad
	set 5, [hl]
	ld a, [wd2dd]
	cp $28
	jp z, Jump_000_2087

	ld hl, $4ba3
	ld b, $0f
	call Bankswitch
	ld a, d
	and a
	jr z, jr_000_208f

Jump_000_2087:
	ld c, $0a
	call DelayFrames
	jp Jump_000_1dc3


jr_000_208f:
	ld a, $ff
	ld [wd034], a
	call Call_000_2a2c
	jp Jump_000_2348


Call_000_209a:
	ld a, [wd6ac]
	bit 4, a
	jr nz, jr_000_20b5

	call Call_000_3145
	jr nz, jr_000_20b5

	ld a, [wd6ad]
	bit 4, a
	jr nz, jr_000_20b5

	ld b, $0f
	ld hl, $7204
	jp Jump_000_3620


jr_000_20b5:
	and a
	ret


Call_000_20b7:
	ld a, [wcc57]
	and a
	ret nz

	ld a, [wd2dd]
	cp $1c
	jr nz, jr_000_20c8

	ldh a, [$b4]
	and $70
	ret nz

jr_000_20c8:
	jp Jump_000_2738


Jump_000_20cb:
	ld a, [wd32d]
	and a
	jp z, Jump_000_21d1

	ld a, [wd32d]
	ld b, $00
	ld c, a
	ld a, [wd2e0]
	ld d, a
	ld a, [wd2e1]
	ld e, a
	ld hl, wd32e

Jump_000_20e3:
	ld a, [hli]
	cp d
	jr nz, jr_000_2146

	ld a, [hli]
	cp e
	jr nz, jr_000_2147

	push hl
	push bc
	ld hl, wd6b5
	set 2, [hl]
	ld b, $03
	ld hl, $4ae3
	call Bankswitch
	pop bc
	pop hl
	jr c, jr_000_214c

	push hl
	push bc
	call Call_000_2300
	pop bc
	pop hl
	jr nc, jr_000_2147

	ld a, [wd6b2]
	bit 2, a
	jr nz, jr_000_214c

	push de
	push bc
	call Call_000_0153
	pop bc
	pop de
	ldh a, [$b4]
	and $f0
	jr z, jr_000_2147

	jr jr_000_214c

Jump_000_211d:
	ld a, [wd32d]
	ld c, a
	ld hl, wd32e

jr_000_2124:
	ld a, [hli]
	ld b, a
	ld a, [wd2e0]
	cp b
	jr nz, jr_000_213d

	ld a, [hli]
	ld b, a
	ld a, [wd2e1]
	cp b
	jr nz, jr_000_213e

	ld a, [hli]
	ld [wd3ae], a
	ld a, [hl]
	ldh [$8b], a
	jr jr_000_2153

jr_000_213d:
	inc hl

jr_000_213e:
	inc hl
	inc hl
	dec c
	jr nz, jr_000_2124

	jp Jump_000_1e1c


jr_000_2146:
	inc hl

jr_000_2147:
	inc hl
	inc hl
	jp Jump_000_21cc


jr_000_214c:
	ld a, [hli]
	ld [wd3ae], a
	ld a, [hli]
	ldh [$8b], a

Jump_000_2153:
jr_000_2153:
	ld a, [wd32d]
	sub c
	ld [wd6ba], a
	ld a, [wd2dd]
	ld [wd6bb], a
	call Call_000_22f8
	jr nz, jr_000_2187

	ld a, [wd2dd]
	ld [wd2e4], a
	ld a, [wd2e8]
	ld [wd2e5], a
	ldh a, [$8b]
	ld [wd2dd], a
	cp $52
	jr nz, jr_000_2182

	ld a, $06
	ld [wMapPalOffset], a
	call GBFadeOutToBlack

jr_000_2182:
	call Call_000_22e0
	jr jr_000_21c1

jr_000_2187:
	ldh a, [$8b]
	cp $ff
	jr z, jr_000_21b4

	ld [wd2dd], a
	ld b, $1c
	ld hl, $4cd8
	call Bankswitch
	ld a, [wcd51]
	dec a
	jr nz, jr_000_21a8

	ld hl, wd6b1
	set 3, [hl]
	call Call_000_23a6
	jr jr_000_21ab

jr_000_21a8:
	call Call_000_22e0

jr_000_21ab:
	ld hl, wd6b5
	res 0, [hl]
	res 1, [hl]
	jr jr_000_21c1

jr_000_21b4:
	ld a, [wd2e4]
	ld [wd2dd], a
	call Call_000_22e0
	xor a
	ld [wMapPalOffset], a

jr_000_21c1:
	ld hl, wd6b5
	set 0, [hl]
	call Call_000_2ceb
	jp Jump_000_1dc3


Jump_000_21cc:
	inc b
	dec c
	jp nz, Jump_000_20e3

Jump_000_21d1:
	ld a, [wd2e1]
	cp $ff
	jr nz, jr_000_2215

	ld a, [wd306]
	ld [wd2dd], a
	ld a, [wd30e]
	ld [wd2e1], a
	ld a, [wd2e0]
	ld c, a
	ld a, [wd30d]
	add c
	ld c, a
	ld [wd2e0], a
	ld a, [wd30f]
	ld l, a
	ld a, [wd310]
	ld h, a
	srl c
	jr z, jr_000_220a

jr_000_21fc:
	ld a, [wd30c]
	add $06
	ld e, a
	ld d, $00
	ld b, $00
	add hl, de
	dec c
	jr nz, jr_000_21fc

jr_000_220a:
	ld a, l
	ld [wd2de], a
	ld a, h
	ld [wd2df], a
	jp Jump_000_22c4


jr_000_2215:
	ld b, a
	ld a, [wd4a4]
	cp b
	jr nz, jr_000_2259

	ld a, [wd311]
	ld [wd2dd], a
	ld a, [wd319]
	ld [wd2e1], a
	ld a, [wd2e0]
	ld c, a
	ld a, [wd318]
	add c
	ld c, a
	ld [wd2e0], a
	ld a, [wd31a]
	ld l, a
	ld a, [wd31b]
	ld h, a
	srl c
	jr z, jr_000_224e

jr_000_2240:
	ld a, [wd317]
	add $06
	ld e, a
	ld d, $00
	ld b, $00
	add hl, de
	dec c
	jr nz, jr_000_2240

jr_000_224e:
	ld a, l
	ld [wd2de], a
	ld a, h
	ld [wd2df], a
	jp Jump_000_22c4


jr_000_2259:
	ld a, [wd2e0]
	cp $ff
	jr nz, jr_000_2290

	ld a, [wd2f0]
	ld [wd2dd], a
	ld a, [wd2f7]
	ld [wd2e0], a
	ld a, [wd2e1]
	ld c, a
	ld a, [wd2f8]
	add c
	ld c, a
	ld [wd2e1], a
	ld a, [wd2f9]
	ld l, a
	ld a, [wd2fa]
	ld h, a
	ld b, $00
	srl c
	add hl, bc
	ld a, l
	ld [wd2de], a
	ld a, h
	ld [wd2df], a
	jp Jump_000_22c4


jr_000_2290:
	ld b, a
	ld a, [wd4a3]
	cp b
	jr nz, jr_000_22dd

	ld a, [wd2fb]
	ld [wd2dd], a
	ld a, [wd302]
	ld [wd2e0], a
	ld a, [wd2e1]
	ld c, a
	ld a, [wd303]
	add c
	ld c, a
	ld [wd2e1], a
	ld a, [wd304]
	ld l, a
	ld a, [wd305]
	ld h, a
	ld b, $00
	srl c
	add hl, bc
	ld a, l
	ld [wd2de], a
	ld a, h
	ld [wd2df], a

Jump_000_22c4:
	call Call_000_2a8d
	call Call_000_0da6
	ld b, $09
	call Call_000_3e1f
	ld b, $05
	ld hl, $7840
	call Bankswitch
	call Call_000_2413
	jp Jump_000_1e1f


jr_000_22dd:
	jp Jump_000_1e1c


Call_000_22e0:
	ld a, [wc448]
	cp $0b
	jr nz, jr_000_22eb

	ld a, $ad
	jr jr_000_22ed

jr_000_22eb:
	ld a, $b5

jr_000_22ed:
	call Call_000_0e45
	ld a, [wMapPalOffset]
	and a
	ret nz

	jp GBFadeOutToBlack


Call_000_22f8:
	ld a, [wd2e6]
	and a
	ret z

	cp $17
	ret


Call_000_2300:
	ld a, [wd2dd]
	cp $61
	jr z, jr_000_2329

	cp $c7
	jr z, jr_000_232e

	cp $c8
	jr z, jr_000_232e

	cp $ca
	jr z, jr_000_232e

	cp $52
	jr z, jr_000_232e

	ld a, [wd2e6]
	and a
	jr z, jr_000_232e

	cp $0d
	jr z, jr_000_232e

	cp $0e
	jr z, jr_000_232e

	cp $17
	jr z, jr_000_232e

jr_000_2329:
	ld hl, $4a45
	jr jr_000_2331

jr_000_232e:
	ld hl, $4a94

jr_000_2331:
	ld b, $03
	jp Jump_000_3620


Call_000_2336:
	ld b, $03
	ld hl, $49a5
	call Bankswitch
	ld a, [wMapPalOffset]
	and a
	jp z, GBFadeInFromWhite

	jp LoadGBPal


Jump_000_2348:
	call GBFadeOutToBlack
	ld a, $08
	call Call_000_2368
	ld hl, wd6ad
	res 5, [hl]
	ld a, $01
	ldh [$b8], a
	ld [$2000], a
	call $755f
	call $6260
	call Call_000_0da6
	jp $5bb6


Call_000_2368:
	ld [wcfae], a
	ld a, $ff
	ld [wc0ee], a
	call Call_000_0e45

jr_000_2373:
	ld a, [wcfae]
	and a
	jr nz, jr_000_2373

	jp StopAllSounds


Jump_000_237c:
	call Call_000_0ebd
	call Call_000_3e07
	xor a
	ld [wcf06], a
	ld [wd67f], a
	ld [wd034], a
	ld [wMapPalOffset], a
	ld hl, wd6b1
	set 2, [hl]
	res 5, [hl]
	call Call_000_23a6
	ld a, $01
	ldh [$b8], a
	ld [$2000], a
	call $6260
	jp $5bb6


Call_000_23a6:
	ld b, $1c
	ld hl, $4b0b
	jp Jump_000_3620


Call_000_23ae:
	ld a, [wd67f]
	dec a
	jr z, jr_000_23bb

	ldh a, [$d7]
	and a
	jr nz, jr_000_23ca

	jr jr_000_23c0

jr_000_23bb:
	call Call_000_23dc
	jr c, jr_000_23ca

jr_000_23c0:
	xor a
	ld [wd67f], a
	ld [wd0df], a
	jp Jump_000_2a5e


jr_000_23ca:
	ld a, [wd67f]
	and a
	jp z, Jump_000_2a5e

	dec a
	jp z, Jump_000_2a6e

	dec a
	jp z, Jump_000_2a66

	jp Jump_000_2a5e


Call_000_23dc:
	ld a, [wd2dd]
	cp $22
	jr z, jr_000_23f7

	cp $09
	jr z, jr_000_23f7

	ld a, [wd2e6]
	ld b, a
	ld hl, $23f9

jr_000_23ee:
	ld a, [hli]
	cp b
	jr z, jr_000_23f7

	inc a
	jr nz, jr_000_23ee

	and a
	ret


jr_000_23f7:
	scf
	ret


	nop
	inc bc
	dec bc
	ld c, $11
	rst $38

Call_000_23ff:
	ld a, [wd4ad]
	ld l, a
	ld a, [wd4ae]
	ld h, a
	ld de, $9000
	ld bc, $0600
	ld a, [wd4aa]
	jp Jump_000_028c


Call_000_2413:
	ld hl, wc6e8
	ld a, [wd32c]
	ld d, a
	ld bc, $0514

jr_000_241d:
	ld a, d
	ld [hli], a
	dec bc
	ld a, c
	or b
	jr nz, jr_000_241d

	ld hl, wc6e8
	ld a, [wd2e8]
	ldh [$8c], a
	add $06
	ldh [$8b], a
	ld b, $00
	ld c, a
	add hl, bc
	add hl, bc
	add hl, bc
	ld c, $03
	add hl, bc
	ld a, [wd2e9]
	ld e, a
	ld a, [wd2ea]
	ld d, a
	ld a, [wd2e7]
	ld b, a

jr_000_2445:
	push hl
	ldh a, [$8c]
	ld c, a

jr_000_2449:
	ld a, [de]
	inc de
	ld [hli], a
	dec c
	jr nz, jr_000_2449

	pop hl
	ldh a, [$8b]
	add l
	ld l, a
	jr nc, jr_000_2457

	inc h

jr_000_2457:
	dec b
	jr nz, jr_000_2445

	ld a, [wd2f0]
	cp $ff
	jr z, jr_000_2481

	call Call_000_2ccd
	ld a, [wd2f1]
	ld l, a
	ld a, [wd2f2]
	ld h, a
	ld a, [wd2f3]
	ld e, a
	ld a, [wd2f4]
	ld d, a
	ld a, [wd2f5]
	ldh [$8b], a
	ld a, [wd2f6]
	ldh [$8c], a
	call Call_000_24f5

jr_000_2481:
	ld a, [wd2fb]
	cp $ff
	jr z, jr_000_24a8

	call Call_000_2ccd
	ld a, [wd2fc]
	ld l, a
	ld a, [wd2fd]
	ld h, a
	ld a, [wd2fe]
	ld e, a
	ld a, [wd2ff]
	ld d, a
	ld a, [wd300]
	ldh [$8b], a
	ld a, [wd301]
	ldh [$8c], a
	call Call_000_24f5

jr_000_24a8:
	ld a, [wd306]
	cp $ff
	jr z, jr_000_24ce

	call Call_000_2ccd
	ld a, [wd307]
	ld l, a
	ld a, [wd308]
	ld h, a
	ld a, [wd309]
	ld e, a
	ld a, [wd30a]
	ld d, a
	ld a, [wd30b]
	ld b, a
	ld a, [wd30c]
	ldh [$8b], a
	call Call_000_2519

jr_000_24ce:
	ld a, [wd311]
	cp $ff
	jr z, jr_000_24f4

	call Call_000_2ccd
	ld a, [wd312]
	ld l, a
	ld a, [wd313]
	ld h, a
	ld a, [wd314]
	ld e, a
	ld a, [wd315]
	ld d, a
	ld a, [wd316]
	ld b, a
	ld a, [wd317]
	ldh [$8b], a
	call Call_000_2519

jr_000_24f4:
	ret


Call_000_24f5:
	ld c, $03

jr_000_24f7:
	push de
	push hl
	ldh a, [$8b]
	ld b, a

jr_000_24fc:
	ld a, [hli]
	ld [de], a
	inc de
	dec b
	jr nz, jr_000_24fc

	pop hl
	pop de
	ldh a, [$8c]
	add l
	ld l, a
	jr nc, jr_000_250b

	inc h

jr_000_250b:
	ld a, [wd2e8]
	add $06
	add e
	ld e, a
	jr nc, jr_000_2515

	inc d

jr_000_2515:
	dec c
	jr nz, jr_000_24f7

	ret


Call_000_2519:
jr_000_2519:
	push hl
	push de
	ld c, $03

jr_000_251d:
	ld a, [hli]
	ld [de], a
	inc de
	dec c
	jr nz, jr_000_251d

	pop de
	pop hl
	ldh a, [$8b]
	add l
	ld l, a
	jr nc, jr_000_252c

	inc h

jr_000_252c:
	ld a, [wd2e8]
	add $06
	add e
	ld e, a
	jr nc, jr_000_2536

	inc d

jr_000_2536:
	dec b
	jr nz, jr_000_2519

	ret


Call_000_253a:
	xor a
	ldh [$8c], a
	ld a, [wd42f]
	and a
	jr z, jr_000_256f

	ld a, $35
	call Call_000_3e9d
	ld hl, wd430
	ld a, [wd42f]
	ld b, a
	ld c, $00

jr_000_2551:
	inc c
	ld a, [hli]
	cp d
	jr z, jr_000_2559

	inc hl
	jr jr_000_256c

jr_000_2559:
	ld a, [hli]
	cp e
	jr nz, jr_000_256c

	push hl
	push bc
	ld hl, wd450
	ld b, $00
	dec c
	add hl, bc
	ld a, [hl]
	ldh [$8c], a
	pop bc
	pop hl
	ret


jr_000_256c:
	dec b
	jr nz, jr_000_2551

jr_000_256f:
	ld a, $35
	call Call_000_3e9d
	ld hl, wd4b1
	ld b, $03
	ld d, $20

jr_000_257b:
	ld a, [hli]
	cp c
	jr z, jr_000_2584

	dec b
	jr nz, jr_000_257b

Call_000_2582:
	ld d, $10

jr_000_2584:
	ld bc, $3c40
	ld a, [wc109]
	cp $04
	jr nz, jr_000_2595

	ld a, b
	sub d
	ld b, a
	ld a, $08
	jr jr_000_25b0

jr_000_2595:
	cp $00
	jr nz, jr_000_25a0

	ld a, b
	add d
	ld b, a
	ld a, $04
	jr jr_000_25b0

jr_000_25a0:
	cp $0c
	jr nz, jr_000_25ab

	ld a, c
	add d
	ld c, a
	ld a, $01
	jr jr_000_25b0

jr_000_25ab:
	ld a, c
	sub d
	ld c, a
	ld a, $02

jr_000_25b0:
	ld [wd4a9], a
	ld a, [wd460]
	and a
	ret z

	ld hl, wc110
	ld d, a
	ld e, $01

jr_000_25be:
	push hl
	ld a, [hli]
	and a
	jr z, jr_000_25d2

	inc l
	ld a, [hli]
	inc a
	jr z, jr_000_25d2

	inc l
	ld a, [hli]
	cp b
	jr nz, jr_000_25d2

	inc l
	ld a, [hl]
	cp c
	jr z, jr_000_25dc

jr_000_25d2:
	pop hl
	ld a, l
	add $10
	ld l, a
	inc e
	dec d
	jr nz, jr_000_25be

	ret


jr_000_25dc:
	pop hl
	ld a, l
	and $f0
	inc a
	ld l, a
	set 7, [hl]
	ld a, e
	ldh [$8c], a
	ret


Call_000_25e8:
	ld a, [wd6b5]
	bit 6, a
	jr nz, jr_000_2625

	ld a, [wcd38]
	and a
	jr nz, jr_000_2625

	ld a, [wd4a9]
	ld d, a
	ld a, [wc10c]
	and d
	jr nz, jr_000_2617

	xor a
	ldh [$8c], a
	call Call_000_2582
	ldh a, [$8c]
	and a
	jr nz, jr_000_2617

	ld hl, $268f
	call Call_000_2641
	jr c, jr_000_2617

	call Call_000_2627
	jr nc, jr_000_2625

jr_000_2617:
	ld a, [wc02a]
	cp $b4
	jr z, jr_000_2623

	ld a, $b4
	call Call_000_0e45

jr_000_2623:
	scf
	ret


jr_000_2625:
	and a
	ret


Call_000_2627:
	ld a, $35
	call Call_000_3e9d
	ld a, [wcfad]
	ld c, a
	ld hl, wd4af
	ld a, [hli]
	ld h, [hl]
	ld l, a

jr_000_2636:
	ld a, [hli]
	cp $ff
	jr z, jr_000_263f

	cp c
	ret z

	jr jr_000_2636

jr_000_263f:
	scf
	ret


Call_000_2641:
	push hl
	ld a, $35
	call Call_000_3e9d
	push de
	push bc
	ld b, $06
	ld hl, $7f2a
	call Bankswitch
	pop bc
	pop de
	pop hl
	and a
	ld a, [wd6b5]
	bit 6, a
	ret nz

	ld a, [wcfad]
	ld c, a

jr_000_265f:
	ld a, [wd2e6]
	ld b, a
	ld a, [hli]
	cp $ff
	jr z, jr_000_268d

	cp b
	jr z, jr_000_266f

	inc hl

jr_000_266c:
	inc hl
	jr jr_000_265f

jr_000_266f:
	ld a, [wc45c]
	ld b, a
	ld a, [hl]
	cp b
	jr z, jr_000_267e

	inc hl
	ld a, [hl]
	cp b
	jr z, jr_000_2685

	jr jr_000_266c

jr_000_267e:
	inc hl
	ld a, [hl]
	cp c
	jr z, jr_000_268b

	jr jr_000_265f

jr_000_2685:
	dec hl
	ld a, [hli]
	cp c
	inc hl
	jr nz, jr_000_265f

jr_000_268b:
	scf
	ret


jr_000_268d:
	and a
	ret


	db $11

	jr nz, @+$07

	db $11

	ld b, c
	dec b

	db $03, $30, $2e, $11

	ld a, [hli]

	db $05, $11

	dec b

	db $21, $03, $52, $2e, $03, $55, $2e, $03, $56, $2e, $03, $20, $2e, $03

	ld e, [hl]

	db $2e, $03

	ld e, a

	db $2e, $ff

	inc bc

	db $14

	ld l, $03

	db $48

	ld l, $11

	db $14

	dec b
	rst $38

Call_000_26bb:
	ldh a, [$b8]
	push af
	ld a, [wd4aa]
	ldh [$b8], a
	ld [$2000], a
	ld a, [wd2de]
	ld e, a
	ld a, [wd2df]
	ld d, a
	ld hl, wc508
	ld b, $05

jr_000_26d3:
	push hl
	push de
	ld c, $06

jr_000_26d7:
	push bc
	push de
	push hl
	ld a, [de]
	ld c, a
	call Call_000_292e
	pop hl
	pop de
	pop bc
	inc hl
	inc hl
	inc hl
	inc hl
	inc de
	dec c
	jr nz, jr_000_26d7

	pop de
	ld a, [wd2e8]
	add $06
	add e
	ld e, a
	jr nc, jr_000_26f5

	inc d

jr_000_26f5:
	pop hl
	ld a, $60
	add l
	ld l, a
	jr nc, jr_000_26fd

	inc h

jr_000_26fd:
	dec b
	jr nz, jr_000_26d3

	ld hl, wc508
	ld bc, $0000
	ld a, [wd2e2]
	and a
	jr z, jr_000_2710

	ld bc, $0030
	add hl, bc

jr_000_2710:
	ld a, [wd2e3]
	and a
	jr z, jr_000_271a

	ld bc, $0002
	add hl, bc

jr_000_271a:
	ld de, wc3a0
	ld b, $12

jr_000_271f:
	ld c, $14

jr_000_2721:
	ld a, [hli]
	ld [de], a
	inc de
	dec c
	jr nz, jr_000_2721

	ld a, $04
	add l
	ld l, a
	jr nc, jr_000_272e

	db $24

jr_000_272e:
	dec b
	jr nz, jr_000_271f

	pop af
	ldh [$b8], a
	ld [$2000], a
	ret


Call_000_2738:
Jump_000_2738:
	ld a, [wc103]
	ld b, a
	ld a, [wc105]
	ld c, a
	ld hl, wcfac
	dec [hl]
	jr nz, jr_000_2754

	ld a, [wd2e0]
	add b
	ld [wd2e0], a
	ld a, [wd2e1]
	add c
	ld [wd2e1], a

jr_000_2754:
	ld a, [wcfac]
	cp $07
	jp nz, Jump_000_2847

	ld a, c
	cp $01
	jr nz, jr_000_2773

	ld a, [wd4a5]
	ld e, a
	and $e0
	ld d, a
	ld a, e
	add $02
	and $1f
	or d
	ld [wd4a5], a
	jr jr_000_27be

jr_000_2773:
	cp $ff
	jr nz, jr_000_2789

	ld a, [wd4a5]
	ld e, a
	and $e0
	ld d, a
	ld a, e
	sub $02
	and $1f
	or d
	ld [wd4a5], a
	jr jr_000_27be

jr_000_2789:
	ld a, b
	cp $01
	jr nz, jr_000_27a5

	ld a, [wd4a5]
	add $40
	ld [wd4a5], a
	jr nc, jr_000_27be

	ld a, [wd4a6]
	inc a
	and $03
	or $98
	ld [wd4a6], a
	jr jr_000_27be

jr_000_27a5:
	cp $ff
	jr nz, jr_000_27be

	ld a, [wd4a5]
	sub $40
	ld [wd4a5], a
	jr nc, jr_000_27be

	ld a, [wd4a6]
	dec a
	and $03
	or $98
	ld [wd4a6], a

jr_000_27be:
	ld a, c
	and a
	jr z, jr_000_27c2

jr_000_27c2:
	ld hl, wd2e3
	ld a, [hl]
	add c
	ld [hl], a
	cp $02
	jr nz, jr_000_27da

	xor a
	ld [hl], a
	ld hl, wd462
	inc [hl]
	ld de, wd2de
	call Call_000_2876
	jr jr_000_281c

jr_000_27da:
	cp $ff
	jr nz, jr_000_27ed

	ld a, $01
	ld [hl], a
	ld hl, wd462
	dec [hl]
	ld de, wd2de
	call Call_000_2880
	jr jr_000_281c

jr_000_27ed:
	ld hl, wd2e2
	ld a, [hl]
	add b
	ld [hl], a
	cp $02
	jr nz, jr_000_2808

	xor a
	ld [hl], a
	ld hl, wd461
	inc [hl]
	ld de, wd2de
	ld a, [wd2e8]
	call Call_000_288a
	jr jr_000_281c

jr_000_2808:
	cp $ff
	jr nz, jr_000_281c

	ld a, $01
	ld [hl], a
	ld hl, wd461
	dec [hl]
	ld de, wd2de
	ld a, [wd2e8]
	call Call_000_2896

jr_000_281c:
	call Call_000_26bb
	ld a, [wc103]
	cp $01
	jr nz, jr_000_282b

	call Call_000_28c3
	jr jr_000_2847

jr_000_282b:
	cp $ff
	jr nz, jr_000_2834

	call Call_000_28a2
	jr jr_000_2847

jr_000_2834:
	ld a, [wc105]
	cp $01
	jr nz, jr_000_2840

	call Call_000_28e4
	jr jr_000_2847

jr_000_2840:
	cp $ff
	jr nz, jr_000_2847

	call Call_000_2919

Jump_000_2847:
jr_000_2847:
	ld a, [wc103]
	ld b, a
	ld a, [wc105]
	ld c, a
	sla b
	sla c
	ldh a, [$af]
	add b
	ldh [$af], a
	ldh a, [$ae]
	add c
	ldh [$ae], a
	ld hl, wc114
	ld a, [wd460]
	and a
	jr z, jr_000_2875

	ld e, a

jr_000_2867:
	ld a, [hl]
	sub b
	ld [hli], a
	inc l
	ld a, [hl]
	sub c
	ld [hl], a
	ld a, $0e
	add l
	ld l, a
	dec e
	jr nz, jr_000_2867

jr_000_2875:
	ret


Call_000_2876:
	ld a, [de]
	add $01
	ld [de], a
	ret nc

	inc de
	ld a, [de]
	inc a
	ld [de], a
	ret


Call_000_2880:
	ld a, [de]
	sub $01
	ld [de], a
	ret nc

	inc de
	ld a, [de]
	dec a
	ld [de], a
	ret


Call_000_288a:
	add $06
	ld b, a
	ld a, [de]
	add b
	ld [de], a
	ret nc

	inc de
	ld a, [de]
	inc a
	ld [de], a
	ret


Call_000_2896:
	add $06
	ld b, a
	ld a, [de]
	sub b
	ld [de], a
	ret nc

	inc de
	ld a, [de]
	dec a
	ld [de], a
	ret


Call_000_28a2:
	ld hl, wc3a0
	call Call_000_28b7
	ld a, [wd4a5]
	ldh [$d1], a
	ld a, [wd4a6]
	ldh [$d2], a
	ld a, $02
	ldh [$d0], a
	ret


Call_000_28b7:
	ld de, wcbfc
	ld c, $28

jr_000_28bc:
	ld a, [hli]
	ld [de], a
	inc de
	dec c
	jr nz, jr_000_28bc

	ret


Call_000_28c3:
	ld hl, wc4e0
	call Call_000_28b7
	ld a, [wd4a5]
	ld l, a
	ld a, [wd4a6]
	ld h, a
	ld bc, $0200
	add hl, bc
	ld a, h
	and $03
	or $98
	ldh [$d2], a
	ld a, l
	ldh [$d1], a
	ld a, $02
	ldh [$d0], a
	ret


Call_000_28e4:
	ld hl, wc3b2
	call Call_000_2903
	ld a, [wd4a5]
	ld c, a
	and $e0
	ld b, a
	ld a, c
	add $12
	and $1f
	or b
	ldh [$d1], a
	ld a, [wd4a6]
	ldh [$d2], a
	ld a, $01
	ldh [$d0], a
	ret


Call_000_2903:
	ld de, wcbfc
	ld c, $12

jr_000_2908:
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hl]
	ld [de], a
	inc de
	ld a, $13
	add l
	ld l, a
	jr nc, jr_000_2915

	inc h

jr_000_2915:
	dec c
	jr nz, jr_000_2908

	ret


Call_000_2919:
	ld hl, wc3a0
	call Call_000_2903
	ld a, [wd4a5]
	ldh [$d1], a
	ld a, [wd4a6]
	ldh [$d2], a
	ld a, $01
	ldh [$d0], a
	ret


Call_000_292e:
	push hl
	ld a, [wd4ab]
	ld l, a
	ld a, [wd4ac]
	ld h, a
	ld a, c
	swap a
	ld b, a
	and $f0
	ld c, a
	ld a, b
	and $0f
	ld b, a
	add hl, bc
	ld d, h
	ld e, l
	pop hl
	ld c, $04

jr_000_2948:
	push bc
	ld a, [de]
	ld [hli], a
	inc de
	ld a, [de]
	ld [hli], a
	inc de
	ld a, [de]
	ld [hli], a
	inc de
	ld a, [de]
	ld [hl], a
	inc de
	ld bc, $0015
	add hl, bc
	pop bc
	dec c
	jr nz, jr_000_2948

	ret


Call_000_295e:
	xor a
	ld [wc103], a
	ld [wc105], a
	call Call_000_2a2c
	call Call_000_0153
	ld a, [wd6b2]
	bit 3, a
	jr nz, jr_000_2983

	ld a, [wd2dd]
	cp $1c
	jr nz, jr_000_2983

	ldh a, [$b4]
	and $f3
	jr nz, jr_000_2983

	ld a, $80
	ldh [$b4], a

jr_000_2983:
	ld a, [wd6af]
	bit 7, a
	ret z

	ldh a, [$b4]
	ld b, a
	ld a, [wcd3b]
	and b
	ret nz

	ld hl, wcd38
	dec [hl]
	ld a, [hl]
	cp $ff
	jr z, jr_000_29ac

	ld hl, wccd3
	add l
	ld l, a
	jr nc, jr_000_29a2

	inc h

jr_000_29a2:
	ld a, [hl]
	ldh [$b4], a
	and a
	ret nz

	ldh [$b3], a
	ldh [$b2], a
	ret


jr_000_29ac:
	xor a
	ld [wcd3a], a
	ld [wcd38], a
	ld [wccd3], a
	ld [wcd66], a
	ldh [$b4], a
	ld hl, wd6b5
	ld a, [hl]
	and $f8
	ld [hl], a
	ld hl, wd6af
	res 7, [hl]
	ret


Call_000_29c8:
	ld a, [wd6af]
	bit 7, a
	jp nz, Jump_000_2a15

	ld a, [wd4a9]
	ld d, a
	ld a, [wc10c]
	and d
	jr nz, jr_000_29f6

	ld hl, $26b1
	call Call_000_2641
	jr c, jr_000_2a06

	ld a, $35
	call Call_000_3e9d
	ld a, [wcfad]
	cp $14
	jr z, jr_000_2a15

	cp $32
	jr z, jr_000_2a23

	cp $48
	jr z, jr_000_2a15

jr_000_29f6:
	ld hl, wd4af
	ld a, [hli]
	ld h, [hl]
	ld l, a

jr_000_29fc:
	ld a, [hli]
	cp $ff
	jr z, jr_000_2a06

	cp c
	jr z, jr_000_2a17

	jr jr_000_29fc

jr_000_2a06:
	ld a, [wc02a]
	cp $b4
	jr z, jr_000_2a12

	ld a, $b4
	call Call_000_0e45

jr_000_2a12:
	scf
	jr jr_000_2a16

Jump_000_2a15:
jr_000_2a15:
	and a

jr_000_2a16:
	ret


jr_000_2a17:
	xor a
	ld [wd67f], a
	call Call_000_23ae
	call Call_000_0d9b
	jr jr_000_2a15

jr_000_2a23:
	ld a, [wd2e6]
	cp $0e
	jr nz, jr_000_2a15

	jr jr_000_2a17

Call_000_2a2c:
	push hl
	push de
	push bc
	ld b, $03
	ld hl, $7557
	call Bankswitch
	ld a, [wcd5b]
	bit 1, a
	jr z, jr_000_2a46

	ld b, $03
	ld hl, $75e7
	call Bankswitch

jr_000_2a46:
	pop bc
	pop de
	pop hl
	call Call_000_3156
	ld a, [wd2dd]
	call Call_000_2ccd
	ld hl, wd2ed
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld de, $2a5d
	push de
	jp hl


	ret


Jump_000_2a5e:
	ld de, $4180
	ld hl, $8000
	jr jr_000_2a74

Jump_000_2a66:
	ld de, $76c0
	ld hl, $8000
	jr jr_000_2a74

Jump_000_2a6e:
	ld de, $4000
	ld hl, $8000

jr_000_2a74:
	push de
	push hl
	ld bc, $050c
	call Call_000_02dd
	pop hl
	pop de
	ld a, $c0
	add e
	ld e, a
	jr nc, jr_000_2a85

	inc d

jr_000_2a85:
	set 3, h
	ld bc, $050c
	jp Jump_000_02dd


Call_000_2a8d:
	ld b, $03
	ld hl, $7445
	call Bankswitch
	ld a, [wd2e6]
	ld [wd0de], a
	ld a, [wd2dd]
	call Call_000_2ccd
	ld a, [wd2e6]
	ld b, a
	res 7, a
	ld [wd2e6], a
	ldh [$8b], a
	bit 7, b
	ret nz

	ld hl, $1bcb
	ld a, [wd2dd]
	sla a
	jr nc, jr_000_2aba

	inc h

jr_000_2aba:
	add l
	ld l, a
	jr nc, jr_000_2abf

	inc h

jr_000_2abf:
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld de, wd2e6
	ld c, $0a

jr_000_2ac7:
	ld a, [hli]
	ld [de], a
	inc de
	dec c
	jr nz, jr_000_2ac7

	ld a, $ff
	ld [wd2f0], a
	ld [wd2fb], a
	ld [wd306], a
	ld [wd311], a
	ld a, [wd2ef]
	ld b, a
	bit 3, b
	jr z, jr_000_2ae9

	ld de, wd2f0
	call Call_000_2c49

jr_000_2ae9:
	bit 2, b
	jr z, jr_000_2af3

	ld de, wd2fb
	call Call_000_2c49

jr_000_2af3:
	bit 1, b
	jr z, jr_000_2afd

	ld de, wd306
	call Call_000_2c49

jr_000_2afd:
	bit 0, b
	jr z, jr_000_2b07

	ld de, wd311
	call Call_000_2c49

jr_000_2b07:
	ld a, [hli]
	ld [wd328], a
	ld a, [hli]
	ld [wd329], a
	push hl
	ld a, [wd328]
	ld l, a
	ld a, [wd329]
	ld h, a
	ld de, wd32c
	ld a, [hli]
	ld [de], a
	ld a, [hli]
	ld [wd32d], a
	and a
	jr z, jr_000_2b33

	ld c, a
	ld de, wd32e

jr_000_2b28:
	ld b, $04

jr_000_2b2a:
	ld a, [hli]
	ld [de], a
	inc de
	dec b
	jr nz, jr_000_2b2a

	dec c
	jr nz, jr_000_2b28

jr_000_2b33:
	ld a, [hli]
	ld [wd42f], a
	and a
	jr z, jr_000_2b61

	ld c, a
	ld de, wd450
	ld a, d
	ldh [$95], a
	ld a, e
	ldh [$96], a
	ld de, wd430

jr_000_2b47:
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	inc de
	push de
	ldh a, [$95]
	ld d, a
	ldh a, [$96]
	ld e, a
	ld a, [hli]
	ld [de], a
	inc de
	ld a, d
	ldh [$95], a
	ld a, e
	ldh [$96], a
	pop de
	dec c
	jr nz, jr_000_2b47

jr_000_2b61:
	ld a, [wd6ad]
	bit 5, a
	jp nz, Jump_000_2c09

	ld a, [hli]
	ld [wd460], a
	push hl
	ld hl, wc110
	ld de, wc210
	xor a
	ld b, $f0

jr_000_2b77:
	ld [hli], a
	ld [de], a
	inc e
	dec b
	jr nz, jr_000_2b77

	ld hl, wc112
	ld de, $0010
	ld c, $0f

jr_000_2b85:
	ld [hl], $ff
	add hl, de
	dec c
	jr nz, jr_000_2b85

	pop hl
	ld de, wc110
	ld a, [wd460]
	and a
	jp z, Jump_000_2c09

	ld b, a
	ld c, $00

Jump_000_2b99:
	ld a, [hli]
	ld [de], a
	inc d
	ld a, $04
	add e
	ld e, a
	ld a, [hli]
	ld [de], a
	inc e
	ld a, [hli]
	ld [de], a
	inc e
	ld a, [hli]
	ld [de], a
	ld a, [hli]
	ldh [$8d], a
	ld a, [hli]
	ldh [$8e], a
	push bc
	push hl
	ld b, $00
	ld hl, wd463
	add hl, bc
	ldh a, [$8d]
	ld [hli], a
	ldh a, [$8e]
	ld [hl], a
	ldh a, [$8e]
	ldh [$8d], a
	and $3f
	ld [hl], a
	pop hl
	ldh a, [$8d]
	bit 6, a
	jr nz, jr_000_2bd0

	bit 7, a
	jr nz, jr_000_2be4

	jr jr_000_2bf4

jr_000_2bd0:
	ld a, [hli]
	ldh [$8d], a
	ld a, [hli]
	ldh [$8e], a
	push hl
	ld hl, wd483
	add hl, bc
	ldh a, [$8d]
	ld [hli], a
	ldh a, [$8e]
	ld [hl], a
	pop hl
	jr jr_000_2bfd

jr_000_2be4:
	ld a, [hli]
	ldh [$8d], a
	push hl
	ld hl, wd483
	add hl, bc
	ldh a, [$8d]
	ld [hli], a
	xor a
	ld [hl], a
	pop hl
	jr jr_000_2bfd

jr_000_2bf4:
	push hl
	ld hl, wd483
	add hl, bc
	xor a
	ld [hli], a
	ld [hl], a
	pop hl

jr_000_2bfd:
	pop bc
	dec d
	ld a, $0a
	add e
	ld e, a
	inc c
	inc c
	dec b
	jp nz, Jump_000_2b99

Jump_000_2c09:
	ld a, $19
	call Call_000_3e9d
	ld hl, $4f2e
	ld b, $03
	call Bankswitch
	pop hl
	ld a, [wd2e7]
	add a
	ld [wd4a3], a
	ld a, [wd2e8]
	add a
	ld [wd4a4], a
	ld a, [wd2dd]
	ld c, a
	ld b, $00
	ldh a, [$b8]
	push af
	ld a, $03
	ldh [$b8], a
	ld [$2000], a
	ld hl, $4693
	add hl, bc
	add hl, bc
	ld a, [hli]
	ld [wd2da], a
	ld a, [hl]
	ld [wd2db], a
	pop af
	ldh [$b8], a
	ld [$2000], a
	ret


Call_000_2c49:
	ld c, $0b

jr_000_2c4b:
	ld a, [hli]
	ld [de], a
	inc de
	dec c
	jr nz, jr_000_2c4b

	ret


Call_000_2c52:
	ldh a, [$b8]
	push af
	call DisableLCD
	ld a, $98
	ld [wd4a6], a
	xor a
	ld [wd4a5], a
	ldh [$af], a
	ldh [$ae], a
	ld [wcfac], a
	ld [wd0de], a
	ld [wd0df], a
	ld [wd327], a
	call Call_000_36ea
	call Call_000_2a8d
	ld b, $05
	ld hl, $7840
	call Bankswitch
	call Call_000_2413
	call Call_000_23ff
	call Call_000_26bb
	ld hl, wc3a0
	ld de, $9800
	ld b, $12

jr_000_2c90:
	ld c, $14

jr_000_2c92:
	ld a, [hli]
	ld [de], a
	inc e
	dec c
	jr nz, jr_000_2c92

	ld a, $0c
	add e
	ld e, a
	jr nc, jr_000_2c9f

	inc d

jr_000_2c9f:
	dec b
	jr nz, jr_000_2c90

	ld a, $01
	ld [wcfb2], a
	call Call_000_0181
	ld b, $09
	call Call_000_3e1f
	call Call_000_23ae
	ld a, [wd6b1]
	and $18
	jr nz, jr_000_2cc6

	ld a, [wd6b2]
	bit 1, a
	jr nz, jr_000_2cc6

	call Call_000_0df3
	call Call_000_0da6

jr_000_2cc6:
	pop af
	ldh [$b8], a
	ld [$2000], a
	ret


Call_000_2ccd:
	push hl
	push bc
	ld c, a
	ld b, $00
	ld a, $03
	call Call_000_3606
	ld hl, $4883
	add hl, bc
	ld a, [hl]
	ldh [$e8], a
	call Call_000_3617
	ldh a, [$e8]
	ldh [$b8], a
	ld [$2000], a
	pop bc
	pop hl
	ret


Call_000_2ceb:
	ld a, $1e
	ld [wd0ff], a
	ld hl, wd6af
	ld a, [hl]
	or $26
	ld [hl], a
	ret


Call_000_2cf8:
	ld hl, wd6a7
	res 0, [hl]
	ret


	ld b, $05
	ld hl, $23ae
	call Bankswitch
	jp Jump_000_0d9b


	ld b, a
	ldh a, [$b8]
	push af
	ld a, [wcf0d]
	ldh [$b8], a
	ld [$2000], a
	ld a, b
	add a
	add a
	ld c, a
	ld b, $00
	add hl, bc
	ld bc, $0004
	ld de, wd2de
	call Call_000_01bb
	pop af
	ldh [$b8], a
	ld [$2000], a
	ret


	push hl
	push de
	push bc
	ld a, $71
	ld [hli], a
	ld a, $62
	ld [hli], a
	push hl
	ld a, $63

jr_000_2d38:
	ld [hli], a
	dec d
	jr nz, jr_000_2d38

	ld a, [wcf7b]
	dec a
	ld a, $6d
	jr z, jr_000_2d45

	dec a

jr_000_2d45:
	ld [hl], a
	pop hl
	ld a, e
	and a
	jr nz, jr_000_2d51

	ld a, c
	and a
	jr z, jr_000_2d64

	ld e, $01

jr_000_2d51:
	ld a, e
	sub $08
	jr c, jr_000_2d60

	ld e, a
	ld a, $6b
	ld [hli], a
	ld a, e
	and a
	jr z, jr_000_2d64

	jr jr_000_2d51

jr_000_2d60:
	ld a, $63
	add e
	ld [hl], a

jr_000_2d64:
	pop bc
	pop de
	pop hl
	ret


Call_000_2d68:
	ld hl, $75c1
	ld b, $01
	jp Jump_000_3620


	ld hl, wd0b9
	ld e, b
	ld d, $00
	add hl, de
	ld a, c
	ld [hl], a
	ret


	ld a, $01
	ld [wd087], a
	push hl
	ld a, [wd0e3]
	push af
	ld a, [wcf78]
	ld [wd0e3], a
	ld a, $3a
	call Call_000_3e9d
	ld hl, wd0e3
	ld a, [hl]
	pop bc
	ld [hl], b
	and a
	pop hl
	jr z, jr_000_2d9d

	cp $98
	jr c, jr_000_2da3

jr_000_2d9d:
	ld a, $01
	ld [wcf78], a
	ret


jr_000_2da3:
	push hl
	ld de, $9000
	call Call_000_3034
	pop hl
	ldh a, [$b8]
	push af
	ld a, $0f
	ldh [$b8], a
	ld [$2000], a
	xor a
	ld [$ffe1], a
	call $73c5
	xor a
	ld [wd087], a
	pop af
	ldh [$b8], a
	ld [$2000], a
	ret


Call_000_2dc7:
	call Call_000_2dd0
	call Call_000_0e45
	jp Jump_000_3790


Call_000_2dd0:
	dec a
	ld c, a
	ld b, $00
	ld hl, $541e
	add hl, bc
	add hl, bc
	add hl, bc
	ld a, $0e
	call Call_000_3606
	ld a, [hli]
	ld b, a
	ld a, [hli]
	ld [wc0f1], a
	ld a, [hl]
	ld [wc0f2], a
	call Call_000_3617
	ld a, b
	ld c, $14
	rlca
	add b
	add c
	ret


	ldh a, [$d7]
	push af
	xor a
	ldh [$d7], a
	call Call_000_3e04
	call ClearSprites
	call Call_000_2e17
	call Call_000_2ecb
	jp Jump_000_2e51


	ldh a, [$d7]
	push af
	xor a
	ldh [$d7], a
	call Call_000_2e17
	call Call_000_2ed0
	jp Jump_000_2e51


Call_000_2e17:
	ld a, $01
	call Call_000_3606
	call Call_000_370a
	ld hl, wd6af
	set 6, [hl]
	xor a
	ld [wcc49], a
	ld [wcc37], a
	ld hl, wcc24
	inc a
	ld [hli], a
	xor a
	ld [hli], a
	ld a, [wcc2b]
	push af
	ld [hli], a
	inc hl
	ld a, [wd123]
	and a
	jr z, jr_000_2e3f

	dec a

jr_000_2e3f:
	ld [hli], a
	ld a, [wd0e4]
	and a
	ld a, $03
	jr z, jr_000_2e4d

	xor a
	ld [wd0e4], a
	inc a

jr_000_2e4d:
	ld [hli], a
	pop af
	ld [hl], a
	ret


Jump_000_2e51:
jr_000_2e51:
	ld a, $01
	ld [wcc4a], a
	ld a, $40
	ld [wd078], a
	call Call_000_3b0c
	call Call_000_3c1c
	ld b, a
	xor a
	ld [wd078], a
	ld a, [wcc26]
	ld [wcc2b], a
	ld hl, wd6af
	res 6, [hl]
	ld a, [wcc35]
	and a
	jp nz, Jump_000_2ea3

	pop af
	ldh [$d7], a
	bit 1, b
	jr nz, jr_000_2e9e

	ld a, [wd123]
	and a
	jr z, jr_000_2e9e

	ld a, [wcc26]
	ld [wcf79], a
	ld hl, wd124
	ld b, $00
	ld c, a
	add hl, bc
	ld a, [hl]
	ld [wcf78], a
	ld [wcfc0], a
	call Call_000_3617
	and a
	ret


jr_000_2e9e:
	call Call_000_3617
	scf
	ret


Jump_000_2ea3:
	bit 1, b
	jr z, jr_000_2ebb

	ld b, $04
	ld hl, $5dd1
	call Bankswitch
	xor a
	ld [wcc35], a
	ld [wd05a], a
	call Call_000_2ed0
	jr jr_000_2e51

jr_000_2ebb:
	ld a, [wcc26]
	ld [wcf79], a
	ld b, $04
	ld hl, $6116
	call Bankswitch
	jr jr_000_2e51

Call_000_2ecb:
	ld hl, $7a0c
	jr jr_000_2ed3

Call_000_2ed0:
	ld hl, $7a1d

jr_000_2ed3:
	ld b, $04
	jp Jump_000_3620


	push de
	dec de
	dec de
	ld a, [de]
	ld b, a
	dec de
	ld a, [de]
	or b
	pop de
	jr nz, jr_000_2eed

	ld a, $cb
	ld [hli], a
	ld a, $de
	ld [hli], a
	ld [hl], $bc
	and a
	ret


jr_000_2eed:
	ldh a, [$b8]
	push af
	ld a, $1e
	ldh [$b8], a
	ld [$2000], a
	call $4000
	pop bc
	ld a, b
	ldh [$b8], a
	ld [$2000], a
	ret


Call_000_2f02:
	ld a, $6e
	ld [hli], a
	ld c, $02
	ld a, [wcfa0]
	cp $64
	jr c, jr_000_2f1a

	dec hl
	inc c
	jr jr_000_2f1a

	ld a, $6e
	ld [hli], a
	ld c, $03
	ld a, [wcfa0]

jr_000_2f1a:
	ld [wd0e3], a
	ld de, wd0e3
	ld b, $41
	jp Jump_000_3c8f


	ld hl, wd0b9
	ld c, a
	ld b, $00
	add hl, bc
	ld a, [hl]
	ret


	ldh a, [$b8]
	push af
	ld a, $0e
	ldh [$b8], a
	ld [$2000], a
	push bc
	push de
	push hl
	ld a, [wd0e3]
	push af
	ld a, [wd092]
	ld [wd0e3], a
	ld de, $64c7
	ld b, $66
	cp $b6
	jr z, jr_000_2f7f

	ld de, $67ad
	cp $b8
	jr z, jr_000_2f7f

	ld de, $6624
	ld b, $77
	cp $b7
	jr z, jr_000_2f7f

	cp $15
	jr z, jr_000_2f89

	ld a, $3a
	call Call_000_3e9d
	ld a, [wd0e3]
	dec a
	ld bc, $001c
	ld hl, $4000
	call Call_000_3ad1
	ld de, wd095
	ld bc, $001c
	call Call_000_01bb
	jr jr_000_2f97

jr_000_2f7f:
	ld hl, wd09f
	ld [hl], b
	inc hl
	ld [hl], e
	inc hl
	ld [hl], d
	jr jr_000_2f97

jr_000_2f89:
	ld hl, $4200
	ld de, wd095
	ld bc, $001c
	ld a, $01
	call Call_000_01a3

jr_000_2f97:
	ld a, [wd092]
	ld [wd095], a
	pop af
	ld [wd0e3], a
	pop hl
	pop de
	pop bc
	pop af
	ldh [$b8], a
	ld [$2000], a
	ret


	ld a, [wcf79]
	ld hl, wd257

Call_000_2fb1:
	push hl
	push bc
	call Call_000_3ac7
	ld de, wcd68
	push de
	ld bc, $0006
	call Call_000_01bb
	pop de
	pop bc
	pop hl
	ret


Call_000_2fc4:
	ld b, c
	res 7, c
	res 6, c

jr_000_2fc9:
	ld a, [de]
	swap a
	call Call_000_2fe7
	ld a, [de]
	call Call_000_2fe7
	inc de
	dec c
	jr nz, jr_000_2fc9

	bit 7, b
	jr z, jr_000_2fe6

	bit 6, b
	jr nz, jr_000_2fe0

	dec hl

jr_000_2fe0:
	ld [hl], $f6
	call Call_000_391d
	inc hl

jr_000_2fe6:
	ret


Call_000_2fe7:
	and $0f
	and a
	jr z, jr_000_2ff4

	res 7, b

jr_000_2fee:
	add $f6
	ld [hli], a
	jp Jump_000_391d


jr_000_2ff4:
	bit 7, b
	jr z, jr_000_2fee

	bit 6, b
	ret nz

	inc hl
	ret


Call_000_2ffd:
	ld bc, wd095
	add hl, bc
	ld a, [hli]
	ld [wd088], a
	ld a, [hl]
	ld [wd089], a
	ld a, [wcf78]
	ld b, a
	cp $15
	ld a, $01
	jr z, jr_000_3031

	ld a, b
	cp $1f
	ld a, $09
	jr c, jr_000_3031

	ld a, b
	cp $4a
	ld a, $0a
	jr c, jr_000_3031

	ld a, b
	cp $75
	ld a, $0b
	jr c, jr_000_3031

	ld a, b
	cp $9a
	ld a, $0c
	jr c, jr_000_3031

	ld a, $0d

jr_000_3031:
	jp Jump_000_0fce


Call_000_3034:
	push de
	ld hl, $000b
	call Call_000_2ffd
	ld hl, wd09f
	ld a, [hli]
	ld c, a
	pop de
	push de
	and $0f
	ldh [$8b], a
	ld b, a
	ld a, $07
	sub b
	inc a
	srl a
	ld b, a
	add a
	add a
	add a
	sub b
	ldh [$8d], a
	ld a, c
	swap a
	and $0f
	ld b, a
	add a
	add a
	add a
	ldh [$8c], a
	ld a, $07
	sub b
	ld b, a
	ldh a, [$8d]
	add b
	add a
	add a
	add a
	ldh [$8d], a
	xor a
	ld [$4000], a
	ld hl, $a000
	call Call_000_30ae
	ld de, $a188
	ld hl, $a000
	call Call_000_3091
	ld hl, $a188
	call Call_000_30ae
	ld de, $a310
	ld hl, $a188
	call Call_000_3091
	pop de
	jp Jump_000_30b9


Call_000_3091:
	ldh a, [$8d]
	ld b, $00
	ld c, a
	add hl, bc
	ldh a, [$8b]

jr_000_3099:
	push af
	push hl
	ldh a, [$8c]
	ld c, a

jr_000_309e:
	ld a, [de]
	inc de
	ld [hli], a
	dec c
	jr nz, jr_000_309e

	pop hl
	ld bc, $0038
	add hl, bc
	pop af
	dec a
	jr nz, jr_000_3099

	ret


Call_000_30ae:
	ld bc, $0188

jr_000_30b1:
	xor a
	ld [hli], a
	dec bc
	ld a, b
	or c
	jr nz, jr_000_30b1

	ret


Jump_000_30b9:
	xor a
	ld [$4000], a
	push de
	ld hl, $a497
	ld de, $a30f
	ld bc, $a187
	ld a, $c4
	ldh [$8b], a

jr_000_30cb:
	ld a, [de]
	dec de
	ld [hld], a
	ld a, [bc]
	dec bc
	ld [hld], a
	ld a, [de]
	dec de
	ld [hld], a
	ld a, [bc]
	dec bc
	ld [hld], a
	ldh a, [$8b]
	dec a
	ldh [$8b], a
	jr nz, jr_000_30cb

	ld a, [wd087]
	and a
	jr z, jr_000_30f2

	ld bc, $0310
	ld hl, $a188

jr_000_30ea:
	swap [hl]
	inc hl
	dec bc
	ld a, b
	or c
	jr nz, jr_000_30ea

jr_000_30f2:
	pop hl
	ld de, $a188
	ld c, $31
	ldh a, [$b8]
	ld b, a
	jp Jump_000_02dd


	ld a, $01
	ld [wcc3c], a
	ret


	ld b, $03
	ld hl, $563d
	jp Jump_000_3620


	ldh a, [$b8]
	push af
	ld a, $03
	ldh [$b8], a
	ld [$2000], a
	call $69c4
	pop de
	ld a, d
	ldh [$b8], a
	ld [$2000], a
	ret


Call_000_3121:
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


Call_000_3130:
Jump_000_3130:
	ldh a, [$b8]
	push af
	ld a, $01
	ldh [$b8], a
	ld [$2000], a
	call $766c
	pop bc
	ld a, b
	ldh [$b8], a
	ld [$2000], a
	ret


Call_000_3145:
	ld a, [wcc57]
	and a
	ret nz

	ld a, [wd6b5]
	bit 1, a
	ret nz

	ld a, [wd6af]
	and $80
	ret


Call_000_3156:
	ld hl, wd6b5
	bit 0, [hl]
	res 0, [hl]
	jr nz, jr_000_318e

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
	ldh a, [$b8]
	push af
	ld a, [wcc58]
	ldh [$b8], a
	ld [$2000], a
	ld a, [wcf0b]
	call Call_000_3dc7
	pop af
	ldh [$b8], a
	ld [$2000], a
	ret


	db $fa, $7c

	ret z

	ld a, l
	dec [hl]
	ld a, [hl]

jr_000_318e:
	ld b, $06
	ld hl, $7c98
	jp Jump_000_3620


	ld b, $06
	ld hl, $7cd5
	jp Jump_000_3620


	ret


Call_000_319f:
	ld a, h
	ld [wd973], a
	ld a, l
	ld [wd974], a
	ret


	push af
	push de
	call Call_000_319f
	pop hl
	pop af
	push hl
	ld hl, wd6b2
	bit 4, [hl]
	res 4, [hl]
	jr z, jr_000_31bc

	ld a, [wd97c]

jr_000_31bc:
	pop hl
	ld [wd97c], a
	call Call_000_3dc7
	ld a, [wd97c]
	ret


	push de
	ld de, wcf59
	ld bc, $0005
	call Call_000_01bb
	pop hl
	ld de, wcf5e
	ld bc, $0006
	jp Jump_000_01bb


Call_000_31db:
	push de
	push af
	ld d, $00
	ld e, a
	ld hl, wd973
	ld a, [hli]
	ld l, [hl]
	ld h, a
	add hl, de
	pop af
	and a
	jr nz, jr_000_31f1

	ld a, [hl]
	ld [wcc55], a
	jr jr_000_320d

jr_000_31f1:
	cp $02
	jr z, jr_000_320a

	cp $04
	jr z, jr_000_320a

	cp $06
	jr z, jr_000_320a

	cp $08
	jr z, jr_000_320a

	cp $0a
	jr nz, jr_000_320d

	ld a, [hli]
	ld d, [hl]
	ld e, a
	jr jr_000_320d

jr_000_320a:
	ld a, [hli]
	ld h, [hl]
	ld l, a

jr_000_320d:
	pop de
	ret


Call_000_320f:
	ld a, $10
	jp Jump_000_3e9d


	call Call_000_319f
	xor a
	call Call_000_31db
	ld a, $02
	call Call_000_31db
	ld a, [wcc55]
	ld c, a
	ld b, $02
	call Call_000_320f
	ld a, c
	and a
	jr z, jr_000_3235

	ld a, $06
	call Call_000_31db
	jp Jump_000_3c79


jr_000_3235:
	ld a, $04
	call Call_000_31db
	call Call_000_3c79

	ld a, $0a
	call Call_000_31db
	push de
	ld a, $08
	call Call_000_31db
	pop de
	call Call_000_339c
	ld hl, wd6b2
	set 4, [hl]
	ld hl, wcd5b
	bit 0, [hl]
	ret nz

	call Call_000_33b2
	ld hl, wd97c
	inc [hl]
	jp Jump_000_32a5


	call Call_000_334e
	ld a, [wcf0e]
	cp $ff
	jr nz, jr_000_3273

	xor a
	ld [wcf0e], a
	ld [wcc55], a
	ret


jr_000_3273:
	ld hl, wd6b2
	set 3, [hl]
	ld [wcd4f], a
	xor a
	ld [wcd50], a
	ld a, $4c
	call Call_000_3e9d
	ld a, $f0
	ld [wcd66], a
	xor a
	ldh [$b4], a
	call Call_000_3317
	ld hl, wd97c
	inc [hl]
	ret


	ld a, [wd6af]
	and $01
	ret nz

	ld [wcd66], a
	ld a, [wcf0e]
	ldh [$8c], a
	call Call_000_13f1

Jump_000_32a5:
	xor a
	ld [wcd66], a
	call Call_000_331f
	ld hl, wd6ac
	set 6, [hl]
	set 7, [hl]
	ld hl, wd6ad
	set 1, [hl]
	ld hl, wd97c
	inc [hl]
	ret


	ld hl, wd0eb
	set 5, [hl]
	set 6, [hl]
	ld hl, wd6ac
	res 7, [hl]
	ld hl, wcd5b
	res 0, [hl]
	ld a, [wd034]
	cp $ff
	jp z, Jump_000_3309

	ld a, $02
	call Call_000_31db
	ld a, [wcc55]
	ld c, a
	ld b, $01
	call Call_000_320f
	ld a, [wd692]
	cp $c8
	jr nc, jr_000_3301

	ld hl, wd54d
	ld de, $0002
	ld a, [wcf0e]
	call Call_000_3ddb
	inc hl
	ld a, [hl]
	ld [wcc4d], a
	ld a, $11
	call Call_000_3e9d

jr_000_3301:
	ld hl, wd6af
	bit 4, [hl]
	res 4, [hl]
	ret nz

Jump_000_3309:
	xor a
	ld [wcd66], a
	ldh [$b4], a
	ldh [$b3], a
	ldh [$b2], a
	ld [wd97c], a
	ret


Call_000_3317:
	ld b, $15
	ld hl, $7e2b
	jp Jump_000_3620


Call_000_331f:
	ld a, [wcd2d]
	ld [wd036], a
	ld [wd692], a
	cp $c8
	ld a, [wcd2e]
	jr c, jr_000_3333

	ld [wd03a], a
	ret


jr_000_3333:
	ld [wd0ec], a
	ret


	ld hl, $7da3
	jr jr_000_3349

	ld hl, $7dc3
	jr jr_000_3349

	ld hl, $7de7
	jr jr_000_3349

	ld hl, $7e07

jr_000_3349:
	ld b, $15
	jp Jump_000_3620


Call_000_334e:
	xor a
	call Call_000_31db
	ld d, h
	ld e, l

jr_000_3354:
	call Call_000_319f
	ld a, [de]
	ld [wcf0e], a
	ld [wcc55], a
	cp $ff
	ret z

	ld a, $02
	call Call_000_31db
	ld b, $02
	ld a, [wcc55]
	ld c, a
	call Call_000_320f
	ld a, c
	and a
	jr nz, jr_000_3394

	push hl
	push de
	push hl
	xor a
	call Call_000_31db
	inc hl
	ld a, [hl]
	pop hl
	ld [wcd3e], a
	ld a, [wcf0e]
	swap a
	ld [wcd3d], a
	ld a, $39
	call Call_000_3e9d
	pop de
	pop hl
	ld a, [wcd3d]
	and a
	ret nz

jr_000_3394:
	ld hl, $000c
	add hl, de
	ld d, h
	ld e, l
	jr jr_000_3354

Call_000_339c:
	ldh a, [$b8]
	ld [wd06f], a
	ld a, h
	ld [wd069], a
	ld a, l
	ld [wd06a], a
	ld a, d
	ld [wd06b], a
	ld a, e
	ld [wd06c], a
	ret


Call_000_33b2:
	ld hl, wd483
	ld d, $00
	ld a, [wcf0e]
	dec a
	add a
	ld e, a
	add hl, de
	ld a, [hli]
	ld [wcd2d], a
	ld a, [hl]
	ld [wcd2e], a
	jp Jump_000_3432


	push hl
	ld hl, wd6ac
	bit 7, [hl]
	res 7, [hl]
	pop hl
	ret z

	ldh a, [$b8]
	push af
	ld a, [wd06f]
	ldh [$b8], a
	ld [$2000], a
	push hl
	ld b, $09
	ld hl, $7eb2
	call Bankswitch
	ld hl, $3417
	call Call_000_3c79
	pop hl
	pop af
	ldh [$b8], a
	ld [$2000], a
	ld b, $06
	ld hl, $7e9f
	call Bankswitch
	jp Jump_000_3790


Call_000_33ff:
	ld a, [wcf06]
	and a
	jr nz, jr_000_340e

	ld a, [wd069]
	ld h, a
	ld a, [wd06a]
	ld l, a
	ret


jr_000_340e:
	ld a, [wd06b]
	ld h, a
	ld a, [wd06c]
	ld l, a
	ret


	db $01, $68, $cd, $00, $72, $50, $08

	call Call_000_33ff
	call Call_000_05f1
	jp Jump_000_0f6a


	ld a, [wcd5b]
	bit 0, a
	ret nz

	call Call_000_33b2
	xor a
	ret


Jump_000_3432:
	ld a, [wcd2d]
	cp $e1
	ret z

	cp $f2
	ret z

	cp $f3
	ret z

	ld a, [wd039]
	and a
	ret nz

	xor a
	ld [wcfae], a
	ld a, $ff
	call Call_000_0e45
	ld a, $1f
	ld [wc0ef], a
	ld [wc0f0], a
	ld a, [wcd2d]
	ld b, a
	ld hl, $3483

jr_000_345b:
	ld a, [hli]
	cp $ff
	jr z, jr_000_3467

	cp b
	jr nz, jr_000_345b

	ld a, $f6
	jr jr_000_3478

jr_000_3467:
	ld hl, $347e

jr_000_346a:
	ld a, [hli]
	cp $ff
	jr z, jr_000_3476

	cp b
	jr nz, jr_000_346a

	ld a, $f9
	jr jr_000_3478

jr_000_3476:
	ld a, $fc

jr_000_3478:
	ld [wc0ee], a
	jp PlaySound


	db $cb, $ce, $da, $e8, $ff, $d5, $d9, $dc, $dd, $e3, $e4, $e5, $e6, $ff

jr_000_348c:
	ld a, [hli]
	cp $ff
	ret z

	cp b
	jr nz, jr_000_34a5

	ld a, [hli]
	cp c
	jr nz, jr_000_34a6

	ld a, [hli]
	ld d, [hl]
	ld e, a
	ld hl, wccd3
	call Call_000_3556
	dec a
	ld [wcd38], a
	ret


jr_000_34a5:
	inc hl

jr_000_34a6:
	inc hl
	inc hl
	jr jr_000_348c

Jump_000_34aa:
	call Call_000_373e
	ld b, $01
	ld hl, $7bf8
	jr jr_000_34c3

Jump_000_34b4:
	call Call_000_373e
	ld b, $08
	ld hl, $40ef
	jr jr_000_34c3

Jump_000_34be:
	ld b, $14
	ld hl, $7ab3

jr_000_34c3:
	call Bankswitch
	jp Jump_000_14b1


Jump_000_34c9:
	ld b, $05
	ld hl, $7e34
	jr jr_000_34c3

	xor a
	ld [wcd3b], a
	ld [wc206], a
	ld hl, wd6af
	set 7, [hl]
	ret


	ld a, $1c
	call Call_000_3e9d
	ld a, b
	and a
	ret


	ld [wd0e3], a
	ld b, $01
	ld hl, $7fc9
	jp Jump_000_3620


	call Call_000_34f8
	ld c, $06
	jp Jump_000_3781


Call_000_34f8:
	ld a, $09
	ldh [$8b], a
	call Call_000_3546
	ldh a, [$8d]
	ld [hl], a
	ret


	ld de, $fff9
	add hl, de
	ld [hl], a
	ret


	ld a, [wd2e0]
	ld b, a
	ld a, [wd2e1]
	ld c, a

Jump_000_3511:
	xor a
	ld [wcd3d], a

jr_000_3515:
	ld a, [hli]
	cp $ff
	jr z, jr_000_352c

	push hl
	ld hl, wcd3d
	inc [hl]
	pop hl
	cp b
	jr z, jr_000_3526

	inc hl
	jr jr_000_3515

jr_000_3526:
	ld a, [hli]
	cp c
	jr nz, jr_000_3515

	scf
	ret


jr_000_352c:
	and a
	ret


	push hl
	ld hl, wc204
	ldh a, [$8c]
	swap a
	ld d, $00
	ld e, a
	add hl, de
	ld a, [hli]
	sub $04
	ld b, a
	ld a, [hl]
	sub $04
	ld c, a
	pop hl
	jp Jump_000_3511


Call_000_3546:
	ld h, $c1
	jr jr_000_354c

	ld h, $c2

jr_000_354c:
	ldh a, [$8b]
	ld b, a
	ldh a, [$8c]
	swap a
	add b
	ld l, a
	ret


Call_000_3556:
	xor a
	ld [wccd2], a

jr_000_355a:
	ld a, [de]
	cp $ff
	jr z, jr_000_3575

	ldh [$8b], a
	inc de
	ld a, [de]
	ld b, $00
	ld c, a
	ld a, [wccd2]
	add c
	ld [wccd2], a
	ldh a, [$8b]
	call ByteFill
	inc de
	jr jr_000_355a

jr_000_3575:
	ld a, $ff
	ld [hl], a
	ld a, [wccd2]
	inc a
	ret


	push hl
	call Call_000_3598
	ld [hl], $fe
	call Call_000_35a2
	ldh a, [$8d]
	ld [hl], a
	pop hl
	ret


Call_000_358b:
	push hl
	call Call_000_3598
	ld [hl], $ff
	call Call_000_35a2
	ld [hl], $ff
	pop hl
	ret


Call_000_3598:
	ld h, $c2
	ldh a, [$8c]
	swap a
	add $06
	ld l, a
	ret


Call_000_35a2:
	push de
	ld hl, wd463
	ldh a, [$8c]
	dec a
	add a
	ld d, $00
	ld e, a
	add hl, de
	pop de
	ret


	call Call_000_35e8
	ld a, [wd0f0]
	and a
	jr nz, jr_000_35de

	ld a, $0e
	call Call_000_3606
	ld a, [wd018]
	dec a
	ld hl, $5c31
	ld bc, $0005
	call Call_000_3ad1
	ld de, wd01a
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	ld de, wd025
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	jp Jump_000_3617


jr_000_35de:
	ld hl, wd01a
	ld de, $5941
	ld [hl], e
	inc hl
	ld [hl], d
	ret


Call_000_35e8:
	ld b, $04
	ld hl, $7fb3
	jp Jump_000_3620


	ld de, wd2cb
	ld hl, $ff9f
	ld c, $03
	jp Jump_000_3ad8


	ld de, wd523
	ld hl, $ffa0
	ld c, $02
	jp Jump_000_3ad8


Call_000_3606:
	ld [wcf04], a
	ldh a, [$b8]
	ld [wcf03], a
	ld a, [wcf04]
	ldh [$b8], a
	ld [$2000], a
	ret


Call_000_3617:
Jump_000_3617:
	ld a, [wcf03]
	ldh [$b8], a
	ld [$2000], a
	ret


Bankswitch:
Jump_000_3620:
	ldh a, [$b8]
	push af
	ld a, b
	ldh [$b8], a
	ld [$2000], a
	ld bc, $362e
	push bc
	jp hl


	pop bc
	ld a, b
	ldh [$b8], a
	ld [$2000], a
	ret


	call Call_000_3761
	call Call_000_3649
	jr jr_000_3672

	ld a, $14
	ld [wd0ea], a
	call Call_000_3649
	jp Jump_000_3130


Call_000_3649:
	xor a
	ld [wd0f1], a
	ld hl, wc43a
	ld bc, $080f
	ret


	call Call_000_3761
	ld a, $06
	ld [wd0f1], a
	ld hl, wc425
	ld bc, $080e
	jr jr_000_3672

	call Call_000_3761
	ld a, $03
	ld [wd0f1], a
	ld hl, wc438
	ld bc, $080d

jr_000_3672:
	ld a, $14
	ld [wd0ea], a
	call Call_000_3130
	jp Jump_000_376d


	sub b
	ret nc

	cpl
	add $01
	scf
	ret


	call Call_000_358b
	push hl
	push bc
	call Call_000_3598
	xor a
	ld [hl], a
	ld hl, wcc5b
	ld c, $00

jr_000_3693:
	ld a, [de]
	ld [hli], a
	inc de
	inc c
	cp $ff
	jr nz, jr_000_3693

	ld a, c
	ld [wcf0a], a
	pop bc
	ld hl, wd6af
	set 0, [hl]
	pop hl
	xor a
	ld [wcd3b], a
	ld [wccd3], a
	dec a
	ld [wcd66], a
	ld [wcd3a], a
	ret


	push hl
	ld hl, $ffe7
	xor a
	ld [hld], a
	ld a, [hld]
	and a
	jr z, jr_000_36c8

	ld a, [hli]

jr_000_36c0:
	sub [hl]
	jr c, jr_000_36c8

	inc hl
	inc [hl]
	dec hl
	jr jr_000_36c0

jr_000_36c8:
	pop hl
	ret


Call_000_36ca:
	ldh a, [rLCDC]
	bit 7, a
	jr nz, jr_000_36de

	ld hl, $4b19
	ld de, $8800
	ld bc, $0400
	ld a, $04
	jp Jump_000_02c0


jr_000_36de:
	ld de, $4b19
	ld hl, $8800
	ld bc, $0480
	jp Jump_000_031b


Call_000_36ea:
	ldh a, [rLCDC]
	bit 7, a
	jr nz, jr_000_36fe

	ld hl, $52f1
	ld de, $9600
	ld bc, $0200
	ld a, $04
	jp Jump_000_028c


jr_000_36fe:
	ld de, $52f1
	ld hl, $9600
	ld bc, $0420
	jp Jump_000_02dd


Call_000_370a:
	ldh a, [rLCDC]
	bit 7, a
	jr nz, jr_000_371e

	ld hl, $4f39
	ld de, $9620
	ld bc, $01e0
	ld a, $04
	jp Jump_000_028c


jr_000_371e:
	ld de, $4f39
	ld hl, $9620
	ld bc, $041e
	jp Jump_000_02dd


ByteFill::
; fill bc bytes with the value of a, starting at hl
	push de
	ld d, a
.copy
	ld a, d
	ld [hli], a
	dec bc
	ld a, b
	or c
	jr nz, .copy
	pop de
	ret

UncompressSpriteFromDE::
; Decompress pic at a:de.
	ld hl, wd088
	ld [hl], e
	inc hl
	ld [hl], d
	jp Jump_000_0fce


Call_000_373e:
	ld hl, wc3a0
	ld de, wcd7c
	ld bc, $0168
	jp Jump_000_01bb


Call_000_374a:
	call Call_000_3752
	ld a, $01
	ldh [$ba], a
	ret


Call_000_3752:
	xor a
	ldh [$ba], a
	ld hl, wcd7c
	ld de, wc3a0
	ld bc, $0168
	jp Jump_000_01bb


Call_000_3761:
	ld hl, wc3a0
	ld de, wc508
	ld bc, $0168
	jp Jump_000_01bb


Jump_000_376d:
	xor a
	ldh [$ba], a
	ld hl, wc508
	ld de, wc3a0
	ld bc, $0168
	call Call_000_01bb
	ld a, $01
	ldh [$ba], a
	ret


DelayFrames:
Jump_000_3781:
jr_000_3781:
	call DelayFrame
	dec c
	jr nz, jr_000_3781

	ret


Call_000_3788:
	push af
	call Call_000_3790
	pop af
	jp PlaySound


Call_000_3790:
Jump_000_3790:
	ld a, [wd060]
	and $80
	ret nz

	push hl

jr_000_3797:
	ld hl, wc02a
	xor a
	or [hl]
	inc hl
	or [hl]
	inc hl
	inc hl
	or [hl]
	jr nz, jr_000_3797

	pop hl
	ret


	ld l, b
	ld d, b

	db $00, $40

	push af
	ld b, l

	db $3f, $43

	inc sp
	jp nc, wd92b

	db $1c, $5d

Call_000_37b3:
	ld a, [wd092]
	ld [wd0e3], a
	cp $c4
	jp nc, Jump_000_1b01

	ldh a, [$b8]
	push af
	push hl
	push bc
	push de
	ld a, [wd093]
	dec a
	jr nz, jr_000_37d5

	call Call_000_1aab
	ld hl, $0006
	add hl, de
	ld e, l
	ld d, h
	jr jr_000_3815

jr_000_37d5:
	ld a, [wd094]
	ldh [$b8], a
	ld [$2000], a
	ld a, [wd093]
	dec a
	add a
	ld d, $00
	ld e, a
	jr nc, jr_000_37e8

	inc d

jr_000_37e8:
	ld hl, $37a5
	add hl, de
	ld a, [hli]
	ldh [$96], a
	ld a, [hl]
	ldh [$95], a
	ldh a, [$95]
	ld h, a
	ldh a, [$96]
	ld l, a
	ld a, [wd092]
	ld b, a
	ld c, $00

jr_000_37fe:
	ld d, h
	ld e, l

jr_000_3800:
	ld a, [hli]
	cp $50
	jr nz, jr_000_3800

	inc c
	ld a, b
	cp c
	jr nz, jr_000_37fe

	ld h, d
	ld l, e
	ld de, wcd68
	ld bc, $0014
	call Call_000_01bb

jr_000_3815:
	ld a, e
	ld [wcf74], a
	ld a, d
	ld [wcf75], a
	pop de
	pop bc
	pop hl
	pop af
	ldh [$b8], a
	ld [$2000], a
	ret


Call_000_3827:
	ldh a, [$b8]
	push af
	ld a, [wcf7b]
	cp $01
	ld a, $01
	jr nz, jr_000_3835

	ld a, $0f

jr_000_3835:
	ldh [$b8], a
	ld [$2000], a
	ld hl, wcf76
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, [wcf78]
	cp $c4
	jr nc, jr_000_385a

	ld bc, $0003

jr_000_384a:
	add hl, bc
	dec a
	jr nz, jr_000_384a

	dec hl
	ld a, [hld]
	ldh [$8d], a
	ld a, [hld]
	ldh [$8c], a
	ld a, [hl]
	ldh [$8b], a
	jr jr_000_3864

jr_000_385a:
	ld a, $1e
	ldh [$b8], a
	ld [$2000], a
	call $7fb2

jr_000_3864:
	ld de, $ff8b
	pop af
	ldh [$b8], a
	ld [$2000], a
	ret


Call_000_386e:
	ld hl, wcf45

jr_000_3871:
	ld a, [de]
	inc de
	ld [hli], a
	cp $50
	jr nz, jr_000_3871

	ret


Call_000_3879:
	call Call_000_0153
	ld a, [$ffb7]
	and a
	ldh a, [$b3]
	jr z, jr_000_3886

	ldh a, [$b4]

jr_000_3886:
	ldh [$b5], a
	ldh a, [$b3]
	and a
	jr z, jr_000_3892

	ld a, $1e
	ldh [$d5], a
	ret


jr_000_3892:
	ldh a, [$d5]
	and a
	jr z, jr_000_389b

	xor a
	ldh [$b5], a
	ret


jr_000_389b:
	ldh a, [$b4]
	and $03
	jr z, jr_000_38a9

	ldh a, [$b6]
	and a
	jr nz, jr_000_38a9

	xor a
	ldh [$b5], a

jr_000_38a9:
	ld a, $05
	ldh [$d5], a
	ret


Call_000_38ae:
	ldh a, [$8b]
	push af
	ldh a, [$8c]
	push af
	xor a
	ldh [$8b], a
	ld a, $06
	ldh [$8c], a

jr_000_38bb:
	push hl
	ld a, [wd078]
	and a
	jr z, jr_000_38c5

	call $5b8a

jr_000_38c5:
	ld hl, wc4f2
	call Call_000_3c34
	pop hl
	call Call_000_3879
	ld a, $2d
	call Call_000_3e9d
	ldh a, [$b5]
	and $03
	jr z, jr_000_38bb

	pop af
	ldh [$8c], a
	pop af
	ldh [$8b], a
	ret


Call_000_38e1:
	ld a, [wd0f0]
	cp $04
	jr z, jr_000_38f0

	call Call_000_38ae
	ld a, $90
	jp PlaySound


jr_000_38f0:
	ld c, $41
	jp Jump_000_3781


Call_000_38f5:
	push hl
	push bc
	ld hl, $7e73
	ld b, $0d
	call Bankswitch
	pop bc
	pop hl
	ret


Call_000_3902:
	push hl
	push de
	push bc
	ld a, [$ffb8]
	push af
	ld a, $0d
	ldh [$b8], a
	ld [$2000], a
	call $7ed7
	pop af
	ldh [$b8], a
	ld [$2000], a
	pop bc
	pop de
	pop hl
	ret


Call_000_391d:
Jump_000_391d:
	ld a, [wd6af]
	bit 6, a
	ret nz

	ld a, [wd2d7]
	bit 1, a
	ret z

	push hl
	push de
	push bc
	ld a, [wd2d7]
	bit 0, a
	jr z, jr_000_393c

	ld a, [wd2d4]
	and $0f
	ldh [$d5], a
	jr jr_000_3940

jr_000_393c:
	ld a, $01
	ldh [$d5], a

jr_000_3940:
	call Call_000_0153
	ldh a, [$b4]
	bit 0, a
	jr z, jr_000_394b

	jr jr_000_394f

jr_000_394b:
	bit 1, a
	jr z, jr_000_3954

jr_000_394f:
	call DelayFrame
	jr jr_000_3959

jr_000_3954:
	ldh a, [$d5]
	and a
	jr nz, jr_000_3940

jr_000_3959:
	pop bc
	pop de
	pop hl
	ret


jr_000_395d:
	ld a, [hli]
	ld [de], a
	inc de
	ld a, h
	cp b
	jr nz, jr_000_395d

	ld a, l
	cp c
	jr nz, jr_000_395d

	ret


	ld hl, $7f19
	ld b, $01
	jp Jump_000_3620


	push hl
	push de
	push bc
	ld b, $03
	ld hl, $7617
	call Bankswitch
	pop bc
	pop de
	pop hl
	ret


	ld c, $00

jr_000_3982:
	inc c
	call Call_000_3994
	ldh a, [$97]
	ld [de], a
	inc de
	ldh a, [$98]
	ld [de], a
	inc de
	ld a, c
	cp $05
	jr nz, jr_000_3982

	ret


Call_000_3994:
	push hl
	push de
	push bc
	ld a, b
	ld d, a
	push hl
	ld hl, wd095
	ld b, $00
	add hl, bc
	ld a, [hl]
	ld e, a
	pop hl
	push hl
	sla c
	ld a, d
	and a
	jr z, jr_000_39c9

	add hl, bc

jr_000_39ab:
	xor a
	ldh [$96], a
	ldh [$97], a
	inc b
	ld a, b
	cp $ff
	jr z, jr_000_39c9

	ldh [$98], a
	ldh [$99], a
	call Call_000_38f5
	ld a, [hld]
	ld d, a
	ldh a, [$98]
	sub d
	ld a, [hli]
	ld d, a
	ldh a, [$97]
	sbc d
	jr c, jr_000_39ab

jr_000_39c9:
	srl c
	pop hl
	push bc
	ld bc, $000b
	add hl, bc
	pop bc
	ld a, c
	cp $02
	jr z, jr_000_3a09

	cp $03
	jr z, jr_000_3a10

	cp $04
	jr z, jr_000_3a15

	cp $05
	jr z, jr_000_3a1d

	push bc
	ld a, [hl]
	swap a
	and $01
	sla a
	sla a
	sla a
	ld b, a
	ld a, [hli]
	and $01
	sla a
	sla a
	add b
	ld b, a
	ld a, [hl]
	swap a
	and $01
	sla a
	add b
	ld b, a
	ld a, [hl]
	and $01
	add b
	pop bc
	jr jr_000_3a21

jr_000_3a09:
	ld a, [hl]
	swap a
	and $0f
	jr jr_000_3a21

jr_000_3a10:
	ld a, [hl]
	and $0f
	jr jr_000_3a21

jr_000_3a15:
	inc hl
	ld a, [hl]
	swap a
	and $0f
	jr jr_000_3a21

jr_000_3a1d:
	inc hl
	ld a, [hl]
	and $0f

jr_000_3a21:
	ld d, $00
	add e
	ld e, a
	jr nc, jr_000_3a28

	inc d

jr_000_3a28:
	sla e
	rl d
	srl b
	srl b
	ld a, b
	add e
	jr nc, jr_000_3a35

	inc d

jr_000_3a35:
	ldh [$98], a
	ld a, d
	ldh [$97], a
	xor a
	ldh [$96], a
	ld a, [wd0ec]
	ldh [$99], a
	call Call_000_38f5
	ldh a, [$96]
	ldh [$95], a
	ldh a, [$97]
	ldh [$96], a
	ldh a, [$98]
	ldh [$97], a
	ld a, $64
	ldh [$99], a
	ld a, $03
	ld b, a
	call Call_000_3902
	ld a, c
	cp $01
	ld a, $05
	jr nz, jr_000_3a74

	ld a, [wd0ec]
	ld b, a
	ldh a, [$98]
	add b
	ldh [$98], a
	jr nc, jr_000_3a72

	ldh a, [$97]
	inc a
	ldh [$97], a

jr_000_3a72:
	ld a, $0a

jr_000_3a74:
	ld b, a
	ldh a, [$98]
	add b
	ldh [$98], a
	jr nc, jr_000_3a81

	ldh a, [$97]
	inc a
	ldh [$97], a

jr_000_3a81:
	ldh a, [$97]
	cp $04
	jr nc, jr_000_3a91

	cp $03
	jr c, jr_000_3a99

	ldh a, [$98]
	cp $e8
	jr c, jr_000_3a99

jr_000_3a91:
	ld a, $03
	ldh [$97], a
	ld a, $e7
	ldh [$98], a

jr_000_3a99:
	pop bc
	pop de
	pop hl
	ret


	ldh a, [$b8]
	push af
	ld a, $03
	ldh [$b8], a
	ld [$2000], a
	call $77d3
	pop bc
	ld a, b
	ldh [$b8], a
	ld [$2000], a
	ret


	ldh a, [$b8]
	push af
	ld a, $03
	ldh [$b8], a
	ld [$2000], a
	call $7854
	pop bc
	ld a, b
	ldh [$b8], a
	ld [$2000], a
	ret


Call_000_3ac7:
	and a
	ret z

	ld bc, $0006

jr_000_3acc:
	add hl, bc
	dec a
	jr nz, jr_000_3acc

	ret


Call_000_3ad1:
	and a
	ret z

jr_000_3ad3:
	add hl, bc
	dec a
	jr nz, jr_000_3ad3

	ret


Jump_000_3ad8:
jr_000_3ad8:
	ld a, [de]
	cp [hl]
	ret nz

	inc de
	inc hl
	dec c
	jr nz, jr_000_3ad8

	ret


	ld h, $c3
	swap a
	ld l, a
	call Call_000_3afd
	push bc
	ld a, $08
	add c
	ld c, a
	call Call_000_3afd
	pop bc
	ld a, $08
	add b
	ld b, a
	call Call_000_3afd
	ld a, $08
	add c
	ld c, a

Call_000_3afd:
	ld [hl], b
	inc hl
	ld [hl], c
	inc hl
	ld a, [de]
	inc de
	ld [hli], a
	ld a, [de]
	inc de
	ld [hli], a
	ret


Call_000_3b08:
	xor a
	ld [wd078], a

Call_000_3b0c:
	ldh a, [$8b]
	push af
	ldh a, [$8c]
	push af
	xor a
	ldh [$8b], a
	ld a, $06
	ldh [$8c], a

Jump_000_3b19:
	xor a
	ld [wd068], a
	call Call_000_3bc6
	call Call_000_3e07

jr_000_3b23:
	push hl
	ld a, [wd078]
	and a
	jr z, jr_000_3b32

	ld b, $1c
	ld hl, $5bc3
	call Bankswitch

jr_000_3b32:
	pop hl
	call Call_000_3879
	ldh a, [$b5]
	and a
	jr nz, jr_000_3b56

	push hl
	ld hl, wc48e
	call Call_000_3c34
	pop hl
	ld a, [wcc34]
	dec a
	jr z, jr_000_3b4b

	jr jr_000_3b23

jr_000_3b4b:
	pop af
	ldh [$8c], a
	pop af
	ldh [$8b], a
	xor a
	ld [wcc4a], a
	ret


jr_000_3b56:
	xor a
	ld [wcc4b], a
	ldh a, [$b5]
	ld b, a
	bit 6, a
	jr z, jr_000_3b7b

	ld a, [wcc26]
	and a
	jr z, jr_000_3b6d

	dec a
	ld [wcc26], a
	jr jr_000_3b96

jr_000_3b6d:
	ld a, [wcc4a]
	and a
	jr z, jr_000_3bbe

	ld a, [wcc28]
	ld [wcc26], a
	jr jr_000_3b96

jr_000_3b7b:
	bit 7, a
	jr z, jr_000_3b96

	ld a, [wcc26]
	inc a
	ld c, a
	ld a, [wcc28]
	cp c
	jr nc, jr_000_3b92

	ld a, [wcc4a]
	and a
	jr z, jr_000_3bbe

	ld c, $00

jr_000_3b92:
	ld a, c
	ld [wcc26], a

jr_000_3b96:
	ld a, [wcc29]
	and b
	jp z, Jump_000_3b19

jr_000_3b9d:
	ldh a, [$b5]
	and $03
	jr z, jr_000_3bb1

	push hl
	ld hl, wcd5b
	bit 5, [hl]
	pop hl
	jr nz, jr_000_3bb1

	ld a, $90
	call Call_000_0e45

jr_000_3bb1:
	pop af
	ldh [$8c], a
	pop af
	ldh [$8b], a
	xor a
	ld [wcc4a], a
	ldh a, [$b5]
	ret


jr_000_3bbe:
	ld a, [wcc37]
	and a
	jr z, jr_000_3b96

	jr jr_000_3b9d

Call_000_3bc6:
	ld a, [wcc24]
	and a
	jr z, jr_000_3bd6

	ld hl, wc3a0
	ld bc, $0014

jr_000_3bd2:
	add hl, bc
	dec a
	jr nz, jr_000_3bd2

jr_000_3bd6:
	ld a, [wcc25]
	ld b, $00
	ld c, a
	add hl, bc
	push hl
	ld a, [wcc2a]
	and a
	jr z, jr_000_3beb

	ld bc, $0028

jr_000_3be7:
	add hl, bc
	dec a
	jr nz, jr_000_3be7

jr_000_3beb:
	ld a, [hl]
	cp $ed
	jr nz, jr_000_3bf4

	ld a, [wcc27]
	ld [hl], a

jr_000_3bf4:
	pop hl
	ld a, [wcc26]
	and a
	jr z, jr_000_3c02

	ld bc, $0028

jr_000_3bfe:
	add hl, bc
	dec a
	jr nz, jr_000_3bfe

jr_000_3c02:
	ld a, [hl]
	cp $ed
	jr z, jr_000_3c0a

	ld [wcc27], a

jr_000_3c0a:
	ld a, $ed
	ld [hl], a
	ld a, l
	ld [wcc30], a
	ld a, h
	ld [wcc31], a
	ld a, [wcc26]
	ld [wcc2a], a
	ret


Call_000_3c1c:
	ld b, a
	ld a, [wcc30]
	ld l, a
	ld a, [wcc31]
	ld h, a
	ld [hl], $ec
	ld a, b
	ret


Call_000_3c29:
	ld a, [wcc30]
	ld l, a
	ld a, [wcc31]
	ld h, a
	ld [hl], $7f
	ret


Call_000_3c34:
	ld a, [hl]
	ld b, a
	ld a, $ee
	cp b
	jr nz, jr_000_3c53

	ldh a, [$8b]
	dec a
	ldh [$8b], a
	ret nz

	ldh a, [$8c]
	dec a
	ldh [$8c], a
	ret nz

	ld a, $7f
	ld [hl], a
	ld a, $ff
	ldh [$8b], a
	ld a, $06
	ldh [$8c], a
	ret


jr_000_3c53:
	ldh a, [$8b]
	and a
	ret z

	dec a
	ldh [$8b], a
	ret nz

	dec a
	ldh [$8b], a
	ldh a, [$8c]
	dec a
	ldh [$8c], a
	ret nz

	ld a, $06
	ldh [$8c], a
	ld a, $ee
	ld [hl], a
	ret


	xor a
	jr jr_000_3c71

	ld a, $01

jr_000_3c71:
	ld [wcf07], a
	xor a
	ld [wcc3c], a
	ret


Call_000_3c79:
Jump_000_3c79:
	push hl
	ld a, $01
	ld [wd0ea], a
	call Call_000_3130
	call Call_000_0ebd
	call Call_000_3e07
	pop hl

Call_000_3c89:
	ld bc, wc4b9
	jp Jump_000_05f1


Call_000_3c8f:
Jump_000_3c8f:
	push bc
	xor a
	ldh [$95], a
	ldh [$96], a
	ldh [$97], a
	ld a, b
	and $0f
	cp $01
	jr z, jr_000_3cb8

	cp $02
	jr z, jr_000_3caf

	ld a, [de]
	ldh [$96], a
	inc de
	ld a, [de]
	ldh [$97], a
	inc de
	ld a, [de]
	ldh [$98], a
	jr jr_000_3cbb

jr_000_3caf:
	ld a, [de]
	ldh [$97], a
	inc de
	ld a, [de]
	ldh [$98], a
	jr jr_000_3cbb

jr_000_3cb8:
	ld a, [de]
	ldh [$98], a

jr_000_3cbb:
	push de
	ld d, b
	ld a, c
	ld b, a
	xor a
	ld c, a
	ld a, b
	cp $02
	jr z, jr_000_3d2c

	cp $03
	jr z, jr_000_3d1c

	cp $04
	jr z, jr_000_3d0b

	cp $05
	jr z, jr_000_3cfa

	cp $06
	jr z, jr_000_3ce8

	ld a, $0f
	ldh [$99], a
	ld a, $42
	ldh [$9a], a
	ld a, $40
	ldh [$9b], a
	call Call_000_3d55
	call Call_000_3db9

jr_000_3ce8:
	ld a, $01
	ldh [$99], a
	ld a, $86
	ldh [$9a], a
	ld a, $a0
	ldh [$9b], a
	call Call_000_3d55
	call Call_000_3db9

jr_000_3cfa:
	xor a
	ldh [$99], a
	ld a, $27
	ldh [$9a], a
	ld a, $10
	ldh [$9b], a
	call Call_000_3d55
	call Call_000_3db9

jr_000_3d0b:
	xor a
	ldh [$99], a
	ld a, $03
	ldh [$9a], a
	ld a, $e8
	ldh [$9b], a
	call Call_000_3d55
	call Call_000_3db9

jr_000_3d1c:
	xor a
	ldh [$99], a
	xor a
	ldh [$9a], a
	ld a, $64
	ldh [$9b], a
	call Call_000_3d55
	call Call_000_3db9

jr_000_3d2c:
	ld c, $00
	ldh a, [$98]

jr_000_3d30:
	cp $0a
	jr c, jr_000_3d39

	sub $0a
	inc c
	jr jr_000_3d30

jr_000_3d39:
	ld b, a
	ldh a, [$95]
	or c
	ldh [$95], a
	jr nz, jr_000_3d46

	call Call_000_3db3
	jr jr_000_3d4a

jr_000_3d46:
	ld a, $f6
	add c
	ld [hl], a

jr_000_3d4a:
	call Call_000_3db9
	ld a, $f6
	add b
	ld [hli], a
	pop de
	dec de
	pop bc
	ret


Call_000_3d55:
	ld c, $00

jr_000_3d57:
	ldh a, [$99]
	ld b, a
	ldh a, [$96]
	ldh [$9c], a
	cp b
	jr c, jr_000_3da7

	sub b
	ldh [$96], a
	ldh a, [$9a]
	ld b, a
	ldh a, [$97]
	ldh [$9d], a
	cp b
	jr nc, jr_000_3d79

	ldh a, [$96]
	or $00
	jr z, jr_000_3da3

	dec a
	ldh [$96], a
	ldh a, [$97]

jr_000_3d79:
	sub b
	ldh [$97], a
	ldh a, [$9b]
	ld b, a
	ldh a, [$98]
	ldh [$9e], a
	cp b
	jr nc, jr_000_3d99

	ldh a, [$97]
	and a
	jr nz, jr_000_3d94

	ldh a, [$96]
	and a
	jr z, jr_000_3d9f

	dec a
	ldh [$96], a
	xor a

jr_000_3d94:
	dec a
	ldh [$97], a
	ldh a, [$98]

jr_000_3d99:
	sub b
	ldh [$98], a
	inc c
	jr jr_000_3d57

jr_000_3d9f:
	ldh a, [$9d]
	ldh [$97], a

jr_000_3da3:
	ldh a, [$9c]
	ldh [$96], a

jr_000_3da7:
	ldh a, [$95]
	or c
	jr z, jr_000_3db3

	ld a, $f6
	add c
	ld [hl], a
	ldh [$95], a
	ret


Call_000_3db3:
jr_000_3db3:
	bit 7, d
	ret z

	ld [hl], $f6
	ret


Call_000_3db9:
	bit 7, d
	jr nz, jr_000_3dc5

	bit 6, d
	jr z, jr_000_3dc5

	ldh a, [$95]
	and a
	ret z

jr_000_3dc5:
	inc hl
	ret


Call_000_3dc7:
	push hl
	push de
	push bc
	add a
	ld d, $00
	ld e, a
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld de, $3dd7
	push de
	jp hl


	pop bc
	pop de
	pop hl
	ret


Call_000_3ddb:
Jump_000_3ddb:
	ld b, $00
	ld c, a

jr_000_3dde:
	ld a, [hl]
	cp $ff
	jr z, jr_000_3dea

	cp c
	jr z, jr_000_3dec

	inc b
	add hl, de
	jr jr_000_3dde

jr_000_3dea:
	and a
	ret


jr_000_3dec:
	scf
	ret


	call ClearSprites
	ld a, $01
	ld [wcfb2], a
	call Call_000_3e38
	call Call_000_374a
	call Call_000_36ea
	call Call_000_3e1d
	jr jr_000_3e07

Call_000_3e04:
	call GBPalWhiteOut

Call_000_3e07:
Jump_000_3e07:
jr_000_3e07:
	ld c, $03
	jp Jump_000_3781


GBPalNormal:
	ld a, $e4
	ldh [rBGP], a
	ld a, $d0
	ldh [rOBP0], a
	ret


GBPalWhiteOut:
	xor a
	ldh [rBGP], a
	ldh [rOBP0], a
	ldh [rOBP1], a
	ret


Call_000_3e1d:
	ld b, $ff

Call_000_3e1f:
	ld a, [wcf15]
	and a
	ret z

	ld a, $45
	jp Jump_000_3e9d


	ld a, e
	cp $1b
	ld d, $00
	jr nc, jr_000_3e36

	cp $0a
	inc d
	jr nc, jr_000_3e36

	inc d

jr_000_3e36:
	ld [hl], d
	ret


Call_000_3e38:
	ld hl, wcfab
	ld a, [hl]
	push af
	res 0, [hl]
	push hl
	xor a
	ld [wd327], a
	call DisableLCD
	ld b, $05
	ld hl, $7840
	call Bankswitch
	call Call_000_0181
	pop hl
	pop af
	ld [hl], a
	call Call_000_23ae
	call Call_000_36ca
	jp Jump_000_0ebd


	ld a, b
	ld [wd0e3], a
	ld [wcf78], a
	ld a, c
	ld [wcf7d], a
	ld hl, wd2a1
	call Call_000_16e0
	ret nc

	call Call_000_1add
	call Call_000_386e
	scf
	ret


	ld a, b
	ld [wcf78], a
	ld a, c
	ld [wd0ec], a
	xor a
	ld [wcc49], a
	ld b, $13
	ld hl, $7da1
	jp Jump_000_3620


Random:
	push hl
	push de
	push bc
	ld b, $04
	ld hl, $7fea
	call Bankswitch
	ldh a, [$d3]
	pop bc
	pop de
	pop hl
	ret


Call_000_3e9d:
Jump_000_3e9d:
	ld [wcc4e], a
	ldh a, [$b8]
	ld [wcf0d], a
	push af
	ld a, $13
	ldh [$b8], a
	ld [$2000], a
	call $7ea5
	ld a, [wd094]
	ldh [$b8], a
	ld [$2000], a
	ld de, $3ebd
	push de
	jp hl


	pop af
	ldh [$b8], a
	ld [$2000], a
	ret


	ld a, [wcc4f]
	ld h, a
	ld a, [wcc50]
	ld l, a
	ld a, [wcc51]
	ld d, a
	ld a, [wcc52]
	ld e, a
	ld a, [wcc53]
	ld b, a
	ld a, [wcc54]
	ld c, a
	ret


	ld b, $07
	ld hl, $7d15
	jp Jump_000_3620


Call_000_3ee5:
	ldh a, [$b8]
	push af
	ldh a, [$b4]
	bit 0, a
	jr z, jr_000_3f1a

	ld a, $11
	ld [$2000], a
	ldh [$b8], a
	call $78c5
	ldh a, [$ee]
	and a
	jr nz, jr_000_3f0d

	ld a, [wcd3e]
	ld [$2000], a
	ldh [$b8], a
	ld de, $3f0a
	push de
	jp hl


	xor a
	jr jr_000_3f1c

jr_000_3f0d:
	ld b, $03
	ld hl, $7e8a
	call Bankswitch
	ldh a, [$db]
	and a
	jr z, jr_000_3f1c

jr_000_3f1a:
	ld a, $ff

jr_000_3f1c:
	ldh [$eb], a
	pop af
	ld [$2000], a
	ldh [$b8], a
	ret


	ldh [$8c], a
	ld hl, $3f52
	call Call_000_3f3f
	ld hl, wcf0c
	set 0, [hl]
	call Call_000_13f1
	ld hl, wd2eb
	ldh a, [$ec]
	ld [hli], a
	ldh a, [$ed]
	ld [hl], a
	ret


Call_000_3f3f:
	ld a, [wd2eb]
	ldh [$ec], a
	ld a, [wd2ec]
	ldh [$ed], a
	ld a, l
	ld [wd2eb], a
	ld a, h
	ld [wd2ec], a
	ret


	ld e, a
	ld a, d
	ld a, l
	ld a, d

	db $0b, $79

	rst $18
	ld a, b
	cp b
	ld a, c
	pop af
	ld a, c
	rrca
	ld a, d
	daa
	ld a, a
	ld l, d
	ld a, c
	dec h
	ld a, c
	sub c
	ld a, c
	ld e, e
	ld a, h
	ld [hl], l
	ld a, h
	and c
	ld a, a
	ldh [$7c], a
	ld b, $7d
	dec sp
	ld a, l
	ld h, l
	ld a, l
	ld [hli], a
	ld a, [hl]
	ld [hl], h
	ld a, [hl]
	ld a, d
	ld a, a
	sub a
	ld a, [hl]
	ret c

	ld a, [hl]
	dec d
	ld a, a
	sub b
	ld a, l
	cp h
	ld a, l
	sbc $7d
	db $ed
	ld a, l
	rst $38
	ld a, l
	sbc b
	ld a, a
	rst $08
	ld a, a
	call c, $5d7d
	ld a, e
	ld b, l
	ld b, l
	ld e, [hl]
	ld b, l
	ld c, b
	ld a, [hl]
	adc [hl]
	ld a, [hl]
	rst $08
	ld a, l
	jp c, $ab7f

	ld a, a
	rst $00
	ld a, a
	ld [c], a
	ld a, a
	ld d, d
	ld a, a
	ld l, h
	ld a, a
	ld bc, $197e
	ld a, [hl]
	ld e, b
	ld a, [hl]
	ld [hl], h
	ld a, l
	ld sp, hl
	ld a, d
	ld a, [c]
	ld a, a
	ld [c], a
	ld a, a
	ld sp, hl
	ld a, c
	add h
	ld a, l
	cp a
	ld a, a
	sbc l
	ld a, a
	xor l
	ld a, a
	and b
	ld a, c
	ld sp, hl
	ld a, [hl]
	or b
	ld a, [hl]
	add hl, bc
	ld a, a
	ld c, [hl]
	ld a, a
	adc [hl]
	ld a, a
	sub b
	ld a, a
	ld d, b
	ld a, a
	add d
	ld a, a
	ret


	ld a, a
	and b
	ld a, c
	ld sp, hl
	ld a, [hl]
	or b
	ld a, [hl]
	add hl, bc
	ld a, a
	ld c, [hl]
	ld a, a
	adc [hl]
	ld a, a
	sub b
	ld a, a
	ld d, b
	ld a, a
	add d
	ld a, a
	ret


	ld a, a
	and l
	or a
	ld h, a
	db $e3
	ld [hl], a
	cp e
	db $fd
	ret


	ei
	add l
	rst $20
	ld d, e
	ret


	add c
	and e
	rst $00
	ccf
	add l
	inc sp
	ld c, l
	dec d
	nop
