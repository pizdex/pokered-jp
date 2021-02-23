; Disassembly of "pokemon-red-jp.gb"

SECTION "ROM Bank $008", ROMX[$4000], BANK[$8]

	xor a
	ldh [$ba], a
	call $373e
	ld a, [wd521]
	and a
	jr nz, jr_008_402b

	ld a, [wd6ca]
	bit 5, a
	jr z, jr_008_4022

	ld a, [wd521]
	and a
	jr nz, jr_008_402b

	ld hl, wc3a0
	ld b, $08
	ld c, $0d
	jr jr_008_4032

jr_008_4022:
	ld hl, wc3a0
	ld b, $06
	ld c, $0d
	jr jr_008_4032

jr_008_402b:
	ld hl, wc3a0
	ld b, $0a
	ld c, $0d

jr_008_4032:
	call $03d2
	call $0ebd
	ld a, $03
	ld [wcc28], a
	ld a, [wd770]
	bit 0, a
	jr nz, jr_008_404c

	ld hl, wc3ca
	ld de, $40c3
	jr jr_008_4052

jr_008_404c:
	ld hl, wc3ca
	ld de, $40ca

jr_008_4052:
	call $0405
	ld hl, wc3f2
	ld de, wd11d
	call $0405
	ld l, c
	ld h, b

Jump_008_4060:
	ld de, $40d1
	call $0405
	ld a, [wd6ca]
	bit 5, a
	jr z, jr_008_409a

	ld hl, wc41a
	ld de, $40d5
	call $0405
	ld a, [wd521]
	and a
	jr z, jr_008_4092

	ld a, $04
	ld [wcc28], a
	ld hl, wc442
	ld de, $40dd
	call $0405
	ld hl, wc46a
	ld de, $40e6
	jr jr_008_40a5

jr_008_4092:
	ld hl, wc442
	ld de, $40e6
	jr jr_008_40a5

jr_008_409a:
	ld a, $02
	ld [wcc28], a

jr_008_409f:
	ld hl, wc41a
	ld de, $40e6

jr_008_40a5:
	call $0405
	ld a, $03
	ld [wcc29], a
	ld a, $02
	ld [wcc24], a
	ld a, $01
	ld [wcc25], a
	xor a
	ld [wcc26], a
	ld [wcc2a], a
	ld a, $01
	ldh [$ba], a

Call_008_40c2:
	ret


	jr nc, jr_008_409f

	or [hl]
	ret


	ld a, a
	ld e, e
	ld d, b
	sbc l
	adc d
	add [hl]
	ret


	ld a, a
	ld e, e
	ld d, b

Call_008_40d1:
	ret


Call_008_40d2:
	ld a, a
	ld e, e
	ld d, b
	add h
	db $e3
	add [hl]
	inc de
	ret


	ld a, a
	ld e, e
	ld d, b
	ld b, e
	adc b
	and c
	xor e
	ld a, a
	ret c

	db $e3
	rlca
	ld d, b
	adc h
	add c
	xor h
	sub b
	db $dd
	ld a, a
	or a
	reti


	ld d, b
	ld hl, wd6af
	set 6, [hl]
	xor a
	ld [wccd3], a
	inc a
	ld [wd093], a
	call $370a
	ld a, [wcc36]
	push af
	ld a, [wcd5b]
	bit 3, a
	jr nz, jr_008_4115

	ld a, $99
	call $0e45
	ld hl, $43e7
	call $3c79

Jump_008_4115:
jr_008_4115:
	ld a, [wccd3]
	ld [wcc26], a
	ld hl, $9780
	ld de, $6d11
	ld bc, $0e01
	call $02dd
	call $3752
	ld hl, wc3a0
	ld b, $0a
	ld c, $0c
	call $03d2
	ld hl, wc3ca
	ld de, $42f2
	call $0405
	ld hl, wcc24
	ld a, $02
	ld [hli], a
	dec a
	ld [hli], a
	inc hl
	inc hl
	ld a, $04
	ld [hli], a
	ld a, $03
	ld [hli], a
	xor a
	ld [hli], a
	ld [hli], a
	ld hl, wcc36
	ld [hli], a
	ld [hl], a
	ld [wcc2f], a
	ld hl, $43f1
	call $3c79
	ld hl, wc4c1
	ld b, $02
	ld c, $09
	call $03d2
	ld a, [wd51f]
	and $7f
	add $f7
	ld [wc4f2], a
	ld hl, wc4ea
	ld de, $431a
	call $0405
	ld a, $01
	ldh [$ba], a
	call $3e07
	call $3b08
	bit 1, a
	jp nz, Jump_008_41a6

	call $3c1c
	ld a, [wcc26]
	ld [wccd3], a
	and a
	jp z, Jump_008_4229

	cp $01
	jp z, Jump_008_41ca

	cp $02
	jp z, Jump_008_4284

	cp $03
	jp z, Jump_008_42c4

Jump_008_41a6:
	ld a, [wcd5b]
	bit 3, a
	jr nz, jr_008_41b8

	call $36ea
	ld a, $9a
	call $0e45
	call $3790

jr_008_41b8:
	ld hl, wcd5b
	res 5, [hl]
	call $374a
	pop af

Call_008_41c1:
	ld [wcc36], a
	ld hl, wd6af
	res 6, [hl]
	ret


Jump_008_41ca:
	ld a, [wd123]
	dec a
	jr nz, jr_008_41d9

	ld hl, $4422
	call $3c79
	jp Jump_008_4115


jr_008_41d9:
	ld a, [wd9b2]
	cp $1e
	jr nz, jr_008_41e9

	ld hl, $4436
	call $3c79
	jp Jump_008_4115


jr_008_41e9:
	ld hl, wd123
	call Call_008_42cf
	jp c, Jump_008_4115

	call Call_008_4352
	jp nc, Jump_008_4115

	ld a, [wcf78]
	call $2dd0
	call $3788
	ld a, $01
	ld [wcf7c], a
	call $3ab2
	xor a
	ld [wcf7c], a
	call $3969
	call $3790
	ld a, [wd51f]
	and $7f
	ld hl, wcd3d
	add $f7
	ld [hli], a
	ld [hl], $50
	ld hl, $440b
	call $3c79
	jp Jump_008_4115


Jump_008_4229:
	ld a, [wd9b2]
	and a
	jr nz, jr_008_4238

	ld hl, $446d
	call $3c79
	jp Jump_008_4115


jr_008_4238:
	ld a, [wd123]
	cp $06
	jr nz, jr_008_4248

	ld hl, $4484
	call $3c79
	jp Jump_008_4115


jr_008_4248:
	ld hl, wd9b2
	call Call_008_42cf
	jp c, Jump_008_4115

	call Call_008_4352
	jp nc, Jump_008_4115

	ld a, [wcf79]
	ld hl, wde64
	call $2fb1
	ld a, [wcf78]
	call $2dd0
	call $3788
	xor a
	ld [wcf7c], a
	call $3ab2
	ld a, $01
	ld [wcf7c], a
	call $3969
	call $3790
	ld hl, $4449
	call $3c79
	jp Jump_008_4115


Jump_008_4284:
	ld a, [wd9b2]
	and a
	jr nz, jr_008_4293

	ld hl, $446d
	call $3c79
	jp Jump_008_4115


jr_008_4293:
	ld hl, wd9b2
	call Call_008_42cf
	jp c, Jump_008_4115

	ld hl, $44c7
	call $3c79
	call $3636
	ld a, [wcc26]
	and a
	jr nz, jr_008_4293

	inc a
	ld [wcf7c], a
	call $3969

Call_008_42b2:
	call $3790
	ld a, [wcf78]
	call $2dc7
	ld hl, $44e5
	call $3c79
	jp Jump_008_4115


Jump_008_42c4:
	ld b, $1c
	ld hl, $7d1b
	call $3620
	jp Jump_008_4115


Call_008_42cf:
	ld a, l
	ld [wcf72], a
	ld a, h
	ld [wcf73], a
	xor a
	ld [wcf7a], a
	ld [wcf7b], a
	inc a
	ld [wd093], a
	ld a, [wcc2b]
	ld [wcc26], a
	call $16f7
	ld a, [wcc26]
	ld [wcc2b], a
	ret


	ld d, h
	db $dd
	ld a, a
	jp nz, wc3da

	or d
	cp b
	ld c, [hl]
	ld d, h
	db $dd
	ld a, a
	or c
	dec l
	cp c
	reti


	ld c, [hl]
	ld d, h
	db $dd
	ld a, a
	add $26
	cp l
	ld c, [hl]
	inc e
	xor h
	add a
	adc h
	db $dd
	ld a, a
	or [hl]
	or h
	reti


	ld c, [hl]
	cp e
	sub $b3
	push bc
	rst $10
	ld d, b
	or d
	rst $08
	ret


	inc e
	xor h
	add a
	adc h
	ld d, b
	ld hl, wd133
	ld bc, $002c
	jr jr_008_4330

	ld hl, wd9da
	ld bc, $0021

jr_008_4330:
	ld a, [wcf79]
	call $3ad1
	ld b, $04

jr_008_4338:
	ld a, [hli]
	push hl
	push bc
	ld hl, $434c
	ld de, $0001
	call $3ddb
	pop bc
	pop hl
	ret c

	dec b
	jr nz, jr_008_4338

	and a
	ret


	rrca
	inc de
	add hl, sp
	ld b, [hl]
	sub h
	rst $38

Call_008_4352:
	ld hl, wc473
	ld b, $06
	ld c, $07
	call $03d2
	ld a, [wccd3]
	and a
	ld de, $43d0
	jr nz, jr_008_4368

	ld de, $43d5

jr_008_4368:
	ld hl, wc49d
	call $0405
	ld hl, wc4c5
	ld de, $43da
	call $0405
	ld hl, wcc24
	ld a, $0c
	ld [hli], a
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
	ld hl, wcc36
	ld [hli], a
	ld [hl], a
	ld [wcc2f], a
	ld [wcc2b], a

jr_008_4394:
	call $3b08
	bit 1, a
	jr nz, jr_008_43a4

	ld a, [wcc26]
	and a
	jr z, jr_008_43a6

	dec a
	jr z, jr_008_43a8

jr_008_43a4:
	and a
	ret


jr_008_43a6:
	scf
	ret


jr_008_43a8:
	call $3761
	ld a, [wccd3]
	and a
	ld a, $00
	jr nz, jr_008_43b5

Call_008_43b3:
	ld a, $02

jr_008_43b5:
	ld [wcc49], a
	ld a, $36
	call $3e9d
	ld a, $37
	call $3e9d
	call $376d
	call $1ba5
	call $3e1d
	call $0b3c
	jr jr_008_4394

	or c
	dec l
	cp c
	reti


	ld d, b
	res 6, a
	call nz, Call_008_50d9
	jp nz, $bbd6

	db $dd
	ret nc

	reti


	ld c, [hl]
	add [hl]
	xor l
	xor e
	adc l
	and [hl]
	ld d, b
	nop
	adc h
	add c
	xor h
	sub b
	ld a, a
	add h
	xor e
	rst $20
	ld e, b
	nop
	push bc
	sbc $c6
	ld a, a
	cp l
	reti


	sbc $e6
	ld d, a
	nop
	inc [hl]
	ret


	ld a, a
	ld d, h
	db $dd
	ld c, a
	or c
	dec l
	cp c
	ret nz

	or d
	sbc $d4
	and $57
	ld bc, wcf45
	nop
	db $dd
	ld a, a
	inc e
	xor h
	add a
	adc h
	ld d, b
	ld bc, wcd3d
	nop
	add $4f
	or c
	dec l
	cp c
	ret nz

	rst $20
	ld e, b
	nop
	cp a
	jp c, $b17f

	dec l
	cp c
	ret nz

	rst $10
	ld c, a
	cp d
	rst $08
	reti


	sbc $7f
	pop bc
	ldh [$b3], a
	and $58
	nop
	or c
	pop bc
	ldh [$e7], a
	ld a, a
	add d
	sub b
	jp z, Jump_008_544f

	inc sp
	ld a, a
	or d
	rst $18
	ld b, h
	or d
	call nc, $0158
	ld b, l
	rst $08
	nop
	db $dd
	ld c, a
	rst $08
	ret nz

	ld a, a
	jp nz, wc3da

	or d
	cp b
	ld a, a
	cp d
	call nz, $bcc6
	ret nz

	rst $20
	ld d, l
	ld d, b
	ld bc, wcf45
	nop
	db $dd
	ld a, a
	or e
	cp c
	call nz, wc0df
	rst $20
	ld e, b
	nop
	push bc
	add $e6
	ld c, a
	add d
	sub b
	jp z, wc57f

	sbc $d3
	ld a, a
	or c
	dec l
	or [hl]
	rst $18
	call nz, wded7
	inc sp
	and $58
	nop
	cp a
	sbc $c5
	sbc $7f
	or d
	or e
	jp $4fd3


	ld d, h
	ld a, a
	db $d3
	pop bc
	or a
	jp c, wdecd

	call nc, $b9de
	rst $20
	ld d, c
	call nz, $b1d8
	or h
	dec l
	ld a, a
	or c
	dec l
	cp c
	reti


	or [hl]
	ld a, a
	add $26
	cp l
	or [hl]
	ld c, a
	cp h
	ret nz

	rst $10
	ld a, a
	or h
	or h
	sbc $c1
	ldh [$b3], a
	and $58
	nop
	inc [hl]
	ret


	ld a, a
	ld d, h
	db $dd
	ld c, a
	add $26
	cp l
	sbc $d4
	and $57
	nop
	add $26
	cp l
	call nz, Call_008_507f
	ld bc, wcf45
	nop
	jp z, wd34f

	or e
	ld a, a
	db $d3
	inc [hl]
	rst $18
	jp wdeba


	inc sp
	ld a, a
	or h
	or h
	sbc $b6
	and $57
	ld bc, wcf45
	nop
	db $dd
	ld c, a
	cp a
	call nz, $7fc6
	add $26
	cp h
	jp $b17f


	add hl, hl
	ret nz

	rst $20
	ld d, l
	ld a, [hld]
	or d
	ld a, [hld]
	or d
	ld a, a
	ld d, b
	ld bc, wcf45
	nop
	rst $20
	ld e, b
	ldh a, [$aa]
	cp $01
	ret z

	ld a, [$c109]
	cp $0c
	ret nz

	ld a, [wd2dd]
	cp $ef
	ld a, $02
	jr z, jr_008_451a

	inc a

jr_008_451a:
	ld [wd0f0], a
	call $3c6c
	ld a, $22
	jp $3f25


	ldh a, [$aa]
	cp $02
	ret z

	ld a, [$c109]
	cp $08
	ret nz

	ld a, [wd2dd]
	cp $ef
	ld a, $02
	jr z, jr_008_453a

	inc a

jr_008_453a:
	ld [wd0f0], a
	call $3c6c
	ld a, $22
	jp $3f25


	nop
	pop bc
	ld [c], a
	rst $18
	call nz, wcf7f
	rst $18
	jp $57c8


	ld a, [$c109]
	cp $04
	ret nz

	call $3c6c
	ld a, $23
	jp $3f25


	db $fd

	ld c, $00

jr_008_4561:
	ld b, $00
	ld hl, wc026
	add hl, bc
	ld a, [hl]
	and a
	jr z, jr_008_458d

	ld a, c
	cp $04
	jr nc, jr_008_458a

	ld a, [wc002]
	and a
	jr z, jr_008_458a

	bit 7, a
	jr nz, jr_008_458d

	set 7, a
	ld [wc002], a
	xor a
	ldh [rNR51], a
	ldh [rNR30], a
	ld a, $80
	ldh [rNR30], a
	jr jr_008_458d

jr_008_458a:
	call Call_008_4594

jr_008_458d:
	ld a, c
	inc c
	cp $07
	jr nz, jr_008_4561

	ret


Call_008_4594:
	ld b, $00
	ld hl, wc0b6
	add hl, bc
	ld a, [hl]
	cp $01
	jp z, Jump_008_462c

	dec a
	ld [hl], a
	ld a, c
	cp $04
	jr nc, jr_008_45b0

	ld hl, wc02a
	add hl, bc
	ld a, [hl]
	and a
	jr z, jr_008_45b0

	ret


Call_008_45b0:
jr_008_45b0:
	ld hl, wc02e
	add hl, bc
	bit 6, [hl]
	jr z, jr_008_45bb

	call Call_008_4cb2

jr_008_45bb:
	ld b, $00
	ld hl, wc036
	add hl, bc
	bit 0, [hl]
	jr nz, jr_008_45cd

	ld hl, wc02e
	add hl, bc
	bit 2, [hl]
	jr nz, jr_008_45e1

jr_008_45cd:
	ld hl, wc02e
	add hl, bc
	bit 4, [hl]
	jr z, jr_008_45d8

	jp Jump_008_4b9e


jr_008_45d8:
	ld hl, wc04e
	add hl, bc
	ld a, [hl]
	and a
	jr z, jr_008_45e2

	dec [hl]

jr_008_45e1:
	ret


jr_008_45e2:
	ld hl, wc056
	add hl, bc
	ld a, [hl]
	and a
	jr nz, jr_008_45eb

	ret


jr_008_45eb:
	ld d, a
	ld hl, wc05e
	add hl, bc
	ld a, [hl]
	and $0f
	and a
	jr z, jr_008_45f8

	dec [hl]
	ret


jr_008_45f8:
	ld a, [hl]
	swap [hl]
	or [hl]
	ld [hl], a
	ld hl, wc066
	add hl, bc
	ld e, [hl]
	ld hl, wc02e
	add hl, bc
	bit 3, [hl]
	jr z, jr_008_4618

	res 3, [hl]
	ld a, d
	and $0f
	ld d, a
	ld a, e
	sub d
	jr nc, jr_008_4616

	ld a, $00

jr_008_4616:
	jr jr_008_4624

jr_008_4618:
	set 3, [hl]
	ld a, d
	and $f0
	swap a
	add e
	jr nc, jr_008_4624

	ld a, $ff

jr_008_4624:
	ld d, a
	ld b, $03
	call Call_008_4cdd
	ld [hl], d
	ret


Jump_008_462c:
	ld hl, wc06e
	add hl, bc
	ld a, [hl]
	ld hl, wc04e
	add hl, bc
	ld [hl], a
	ld hl, wc02e
	add hl, bc
	res 4, [hl]
	res 5, [hl]
	ld a, c
	cp $04
	jr nz, jr_008_4649

	ld a, [wd060]
	bit 7, a
	ret nz

jr_008_4649:
	call Call_008_464d
	ret


Call_008_464d:
Jump_008_464d:
	call Call_008_4cca
	ld d, a
	cp $ff
	jp nz, Jump_008_46db

	ld b, $00
	ld hl, wc02e
	add hl, bc
	bit 1, [hl]
	jr nz, jr_008_468b

	ld a, c
	cp $03
	jr nc, jr_008_4667

	jr jr_008_46a6

jr_008_4667:
	res 2, [hl]
	ld hl, wc036
	add hl, bc
	res 0, [hl]
	cp $06
	jr nz, jr_008_467b

	ld a, $00
	ldh [rNR30], a
	ld a, $80
	ldh [rNR30], a

jr_008_467b:
	jr nz, jr_008_4689

	ld a, [wc003]
	and a
	jr z, jr_008_4689

	xor a
	ld [wc003], a
	jr jr_008_46a6

jr_008_4689:
	jr jr_008_46af

jr_008_468b:
	res 1, [hl]
	ld d, $00
	ld a, c
	add a
	ld e, a
	ld hl, wc006
	add hl, de
	push hl
	ld hl, wc016
	add hl, de
	ld e, l
	ld d, h
	pop hl
	ld a, [de]
	ld [hli], a
	inc de
	ld a, [de]
	ld [hl], a
	jp Jump_008_464d


jr_008_46a6:
	ld hl, $4fc4
	add hl, bc
	ldh a, [rNR51]
	and [hl]
	ldh [rNR51], a

jr_008_46af:
	ld a, [wc02a]
	cp $14
	jr nc, jr_008_46b8

	jr jr_008_46d5

jr_008_46b8:
	ld a, [wc02a]
	cp $86
	jr z, jr_008_46d5

	jr c, jr_008_46c3

	jr jr_008_46d5

jr_008_46c3:
	ld a, c
	cp $04
	jr z, jr_008_46cc

	call Call_008_4b53
	ret c

jr_008_46cc:
	ld a, [wc005]
	ldh [rNR50], a
	xor a
	ld [wc005], a

jr_008_46d5:
	ld hl, wc026
	add hl, bc
	ld [hl], b
	ret


Jump_008_46db:
	cp $fd
	jp nz, Jump_008_4710

	call Call_008_4cca
	push af
	call Call_008_4cca
	ld d, a
	pop af
	ld e, a
	push de
	ld d, $00
	ld a, c
	add a
	ld e, a
	ld hl, wc006
	add hl, de
	push hl
	ld hl, wc016
	add hl, de
	ld e, l
	ld d, h
	pop hl
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hld]
	ld [de], a
	pop de
	ld [hl], e
	inc hl
	ld [hl], d
	ld b, $00
	ld hl, wc02e
	add hl, bc
	set 1, [hl]
	jp Jump_008_464d


Jump_008_4710:
	cp $fe
	jp nz, Jump_008_474b

	call Call_008_4cca
	ld e, a
	and a
	jr z, jr_008_4734

	ld b, $00
	ld hl, wc0be
	add hl, bc
	ld a, [hl]
	cp e
	jr nz, jr_008_4732

	ld a, $01
	ld [hl], a
	call Call_008_4cca
	call Call_008_4cca
	jp Jump_008_464d


jr_008_4732:
	inc a
	ld [hl], a

jr_008_4734:
	call Call_008_4cca
	push af
	call Call_008_4cca
	ld b, a
	ld d, $00
	ld a, c
	add a
	ld e, a
	ld hl, wc006
	add hl, de
	pop af
	ld [hli], a
	ld [hl], b
	jp Jump_008_464d


Jump_008_474b:
	and $f0
	cp $d0
	jp nz, Jump_008_478a

	ld a, d
	and $0f
	ld b, $00
	ld hl, wc0c6
	add hl, bc
	ld [hl], a
	ld a, c
	cp $03
	jr z, jr_008_4787

	call Call_008_4cca
	ld d, a
	ld a, c
	cp $02
	jr z, jr_008_4773

	cp $06
	jr nz, jr_008_4780

	ld hl, wc0e7
	jr jr_008_4776

jr_008_4773:
	ld hl, wc0e6

jr_008_4776:
	ld a, d
	and $0f
	ld [hl], a
	ld a, d
	and $30
	sla a
	ld d, a

jr_008_4780:
	ld b, $00
	ld hl, wc0de
	add hl, bc
	ld [hl], d

jr_008_4787:
	jp Jump_008_464d


Jump_008_478a:
	ld a, d
	cp $e8
	jr nz, jr_008_479c

	ld b, $00
	ld hl, wc02e
	add hl, bc
	ld a, [hl]
	xor $01
	ld [hl], a
	jp Jump_008_464d


jr_008_479c:
	cp $ea
	jr nz, jr_008_47d4

Call_008_47a0:
	call Call_008_4cca
	ld b, $00
	ld hl, wc04e
	add hl, bc
	ld [hl], a
	ld hl, wc06e
	add hl, bc
	ld [hl], a
	call Call_008_4cca
	ld d, a
	and $f0
	swap a

Call_008_47b7:
	ld b, $00
	ld hl, wc056
	add hl, bc
	srl a
	ld e, a

Call_008_47c0:
	adc b
	swap a
	or e
	ld [hl], a
	ld a, d
	and $0f
	ld d, a
	ld hl, wc05e
	add hl, bc
	swap a
	or d
	ld [hl], a
	jp Jump_008_464d


jr_008_47d4:
	cp $eb
	jr nz, jr_008_480c

	call Call_008_4cca
	ld b, $00
	ld hl, wc076
	add hl, bc
	ld [hl], a
	call Call_008_4cca
	ld d, a
	and $f0
	swap a
	ld b, a
	ld a, d
	and $0f
	call Call_008_4cfd
	ld b, $00
	ld hl, wc0a6
	add hl, bc
	ld [hl], d
	ld hl, wc0ae
	add hl, bc
	ld [hl], e
	ld b, $00
	ld hl, wc02e
	add hl, bc
	set 4, [hl]
	call Call_008_4cca
	ld d, a
	jp Jump_008_4971


jr_008_480c:
	cp $ec
	jr nz, jr_008_4821

	call Call_008_4cca
	rrca
	rrca
	and $c0
	ld b, $00
	ld hl, wc03e
	add hl, bc
	ld [hl], a
	jp Jump_008_464d


jr_008_4821:
	cp $ed
	jr nz, jr_008_4861

	ld a, c
	cp $04
	jr nc, jr_008_4845

	call Call_008_4cca
	ld [wc0e8], a
	call Call_008_4cca
	ld [wc0e9], a
	xor a
	ld [wc0ce], a
	ld [wc0cf], a
	ld [wc0d0], a
	ld [wc0d1], a
	jr jr_008_485e

jr_008_4845:
	call Call_008_4cca
	ld [wc0ea], a
	call Call_008_4cca
	ld [wc0eb], a
	xor a
	ld [wc0d2], a
	ld [wc0d3], a
	ld [wc0d4], a
	ld [wc0d5], a

jr_008_485e:
	jp Jump_008_464d


jr_008_4861:
	cp $ee
	jr nz, jr_008_486e

	call Call_008_4cca
	ld [wc004], a
	jp Jump_008_464d


jr_008_486e:
	cp $ef
	jr nz, jr_008_488d

	call Call_008_4cca
	push bc
	call Call_008_4d1b
	pop bc
	ld a, [wc003]
	and a
	jr nz, jr_008_488a

	ld a, [wc02d]
	ld [wc003], a
	xor a
	ld [wc02d], a

jr_008_488a:
	jp Jump_008_464d


jr_008_488d:
	cp $fc
	jr nz, jr_008_48ab

	call Call_008_4cca
	ld b, $00
	ld hl, wc046
	add hl, bc
	ld [hl], a
	and $c0
	ld hl, wc03e
	add hl, bc
	ld [hl], a
	ld hl, wc02e
	add hl, bc
	set 6, [hl]
	jp Jump_008_464d


jr_008_48ab:
	cp $f0
	jr nz, jr_008_48b7

	call Call_008_4cca
	ldh [rNR50], a
	jp Jump_008_464d


jr_008_48b7:
	cp $f8
	jr nz, jr_008_48c6

	ld b, $00
	ld hl, wc036
	add hl, bc
	set 0, [hl]
	jp Jump_008_464d


jr_008_48c6:
	and $f0
	cp $e0
	jr nz, jr_008_48d9

	ld hl, wc0d6
	ld b, $00
	add hl, bc
	ld a, d
	and $0f
	ld [hl], a
	jp Jump_008_464d


jr_008_48d9:
	cp $20
	jr nz, jr_008_4926

	ld a, c
	cp $03
	jr c, jr_008_4926

	ld b, $00
	ld hl, wc036
	add hl, bc
	bit 0, [hl]
	jr nz, jr_008_4926

	call Call_008_4971
	ld d, a
	ld b, $00
	ld hl, wc03e
	add hl, bc
	ld a, [hl]
	or d
	ld d, a
	ld b, $01
	call Call_008_4cdd
	ld [hl], d
	call Call_008_4cca
	ld d, a
	ld b, $02
	call Call_008_4cdd
	ld [hl], d
	call Call_008_4cca
	ld e, a
	ld a, c
	cp $07
	ld a, $00
	jr z, jr_008_4919

	push de
	call Call_008_4cca
	pop de

jr_008_4919:
	ld d, a
	push de
	call Call_008_4a90
	call Call_008_4a5f
	pop de
	call Call_008_4ab2
	ret


jr_008_4926:
	ld a, c
	cp $04
	jr c, jr_008_4942

	ld a, d
	cp $10
	jr nz, jr_008_4942

	ld b, $00
	ld hl, wc036
	add hl, bc
	bit 0, [hl]
	jr nz, jr_008_4942

	call Call_008_4cca
	ldh [rNR10], a
	jp Jump_008_464d


jr_008_4942:
	ld a, c
	cp $03
	jr nz, jr_008_4971

	ld a, d
	and $f0
	cp $b0
	jr z, jr_008_495c

	jr nc, jr_008_4971

	swap a
	ld b, a
	ld a, d
	and $0f
	ld d, a
	ld a, b
	push de
	push bc
	jr jr_008_4964

jr_008_495c:
	ld a, d
	and $0f
	push af
	push bc
	call Call_008_4cca

jr_008_4964:
	ld d, a
	ld a, [wc003]
	and a
	jr nz, jr_008_496f

	ld a, d
	call Call_008_4d1b

jr_008_496f:
	pop bc
	pop de

Call_008_4971:
Jump_008_4971:
jr_008_4971:
	ld a, d
	push af
	and $0f
	inc a
	ld b, $00
	ld e, a
	ld d, b
	ld hl, wc0c6
	add hl, bc
	ld a, [hl]
	ld l, b
	call Call_008_4cec
	ld a, c
	cp $04
	jr nc, jr_008_4992

	ld a, [wc0e8]
	ld d, a
	ld a, [wc0e9]
	ld e, a
	jr jr_008_49a5

jr_008_4992:
	ld d, $01
	ld e, $00
	cp $07
	jr z, jr_008_49a5

	call Call_008_4b15
	ld a, [wc0ea]
	ld d, a
	ld a, [wc0eb]
	ld e, a

jr_008_49a5:
	ld a, l
	ld b, $00
	ld hl, wc0ce
	add hl, bc
	ld l, [hl]
	call Call_008_4cec
	ld e, l
	ld d, h
	ld hl, wc0ce
	add hl, bc
	ld [hl], e
	ld a, d
	ld hl, wc0b6
	add hl, bc
	ld [hl], a
	ld hl, wc036
	add hl, bc
	bit 0, [hl]
	jr nz, jr_008_49cf

	ld hl, wc02e
	add hl, bc
	bit 2, [hl]
	jr z, jr_008_49cf

	pop hl
	ret


jr_008_49cf:
	pop af
	and $f0
	cp $c0
	jr nz, jr_008_4a06

	ld a, c
	cp $04
	jr nc, jr_008_49e3

	ld hl, wc02a
	add hl, bc
	ld a, [hl]
	and a
	jr nz, jr_008_4a05

jr_008_49e3:
	ld a, c
	cp $02
	jr z, jr_008_49ec

	cp $06
	jr nz, jr_008_49f9

jr_008_49ec:
	ld b, $00
	ld hl, $4fc4
	add hl, bc
	ldh a, [rNR51]
	and [hl]
	ldh [rNR51], a
	jr jr_008_4a05

jr_008_49f9:
	ld b, $02
	call Call_008_4cdd
	ld a, $08
	ld [hli], a
	inc hl
	ld a, $80
	ld [hl], a

jr_008_4a05:
	ret


jr_008_4a06:
	swap a
	ld b, $00
	ld hl, wc0d6
	add hl, bc
	ld b, [hl]
	call Call_008_4cfd
	ld b, $00
	ld hl, wc02e
	add hl, bc
	bit 4, [hl]
	jr z, jr_008_4a1f

	call Call_008_4c34

jr_008_4a1f:
	push de
	ld a, c
	cp $04
	jr nc, jr_008_4a34

	ld hl, wc02a
	ld d, $00
	ld e, a
	add hl, de
	ld a, [hl]
	and a
	jr nz, jr_008_4a32

	jr jr_008_4a34

jr_008_4a32:
	pop de
	ret


jr_008_4a34:
	ld b, $00
	ld hl, wc0de
	add hl, bc
	ld d, [hl]
	ld b, $02
	call Call_008_4cdd
	ld [hl], d
	call Call_008_4a90
	call Call_008_4a5f
	pop de
	ld b, $00
	ld hl, wc02e
	add hl, bc
	bit 0, [hl]
	jr z, jr_008_4a56

	inc e
	jr nc, jr_008_4a56

	inc d

jr_008_4a56:
	ld hl, wc066
	add hl, bc
	ld [hl], e
	call Call_008_4ab2
	ret


Call_008_4a5f:
	ld b, $00
	ld hl, $4fcc
	add hl, bc
	ldh a, [rNR51]
	or [hl]
	ld d, a
	ld a, c
	cp $07
	jr z, jr_008_4a7a

	cp $04
	jr nc, jr_008_4a8c

	ld hl, wc02a
	add hl, bc
	ld a, [hl]
	and a
	jr nz, jr_008_4a8c

jr_008_4a7a:
	ld a, [wc004]
	ld hl, $4fcc
	add hl, bc
	and [hl]
	ld d, a
	ldh a, [rNR51]
	ld hl, $4fc4
	add hl, bc
	and [hl]
	or d
	ld d, a

jr_008_4a8c:
	ld a, d
	ldh [rNR51], a
	ret


Call_008_4a90:
	ld b, $00
	ld hl, wc0b6
	add hl, bc
	ld d, [hl]
	ld a, c
	cp $02
	jr z, jr_008_4aab

	cp $06
	jr z, jr_008_4aab

	ld a, d
	and $3f
	ld d, a
	ld hl, wc03e
	add hl, bc
	ld a, [hl]
	or d
	ld d, a

jr_008_4aab:
	ld b, $01
	call Call_008_4cdd
	ld [hl], d
	ret


Call_008_4ab2:
	ld a, c
	cp $02
	jr z, jr_008_4abb

	cp $06
	jr nz, jr_008_4ae8

jr_008_4abb:
	push de
	ld de, wc0e6
	cp $02
	jr z, jr_008_4ac6

	ld de, wc0e7

jr_008_4ac6:
	ld a, [de]
	add a
	ld d, $00
	ld e, a
	ld hl, $6ff3
	add hl, de
	ld e, [hl]
	inc hl
	ld d, [hl]
	ld hl, $ff30
	ld b, $0f
	ld a, $00
	ldh [rNR30], a

jr_008_4adb:
	ld a, [de]
	inc de
	ld [hli], a
	ld a, b
	dec b
	and a
	jr nz, jr_008_4adb

	ld a, $80
	ldh [rNR30], a
	pop de

jr_008_4ae8:
	ld a, d
	or $80
	and $c7
	ld d, a
	ld b, $03
	call Call_008_4cdd
	ld [hl], e
	inc hl
	ld [hl], d
	ld a, c
	cp $04
	jr c, jr_008_4afe

	call Call_008_4b3c

jr_008_4afe:
	ret


	ld a, c
	cp $04
	jr nz, jr_008_4b14

	ld a, [wd060]
	bit 7, a
	jr z, jr_008_4b14

	xor a
	ld [wc0f1], a
	ld a, $80
	ld [wc0f2], a

jr_008_4b14:
	ret


Call_008_4b15:
	call Call_008_4b71
	jr c, jr_008_4b1f

	call Call_008_4b85
	jr nc, jr_008_4b32

jr_008_4b1f:
	ld d, $00
	ld a, [wc0f2]
	add $80
	jr nc, jr_008_4b29

	inc d

jr_008_4b29:
	ld [wc0eb], a
	ld a, d
	ld [wc0ea], a
	jr jr_008_4b3b

jr_008_4b32:
	xor a
	ld [wc0eb], a
	ld a, $01
	ld [wc0ea], a

jr_008_4b3b:
	ret


Call_008_4b3c:
	call Call_008_4b71
	jr c, jr_008_4b46

	call Call_008_4b85
	jr nc, jr_008_4b52

jr_008_4b46:
	ld a, [wc0f1]
	add e
	jr nc, jr_008_4b4d

	inc d

jr_008_4b4d:
	dec hl
	ld e, a
	ld [hl], e
	inc hl
	ld [hl], d

jr_008_4b52:
	ret


Call_008_4b53:
	call Call_008_4b71
	jr nc, jr_008_4b6e

	ld hl, wc006
	ld e, c
	ld d, $00
	sla e

Call_008_4b60:
	rl d
	add hl, de
	ld a, [hl]
	sub $01
	ld [hl], a

Call_008_4b67:
	inc hl
	ld a, [hl]
	sbc $00
	ld [hl], a
	scf
	ret


jr_008_4b6e:
	scf
	ccf
	ret


Call_008_4b71:
	ld a, [wc02a]
	cp $14
	jr nc, jr_008_4b7a

	jr jr_008_4b80

jr_008_4b7a:
	cp $86
	jr z, jr_008_4b80

	jr c, jr_008_4b83

jr_008_4b80:
	scf
	ccf
	ret


jr_008_4b83:
	scf
	ret


Call_008_4b85:
	ld a, [wc02d]
	ld b, a
	ld a, [wc02a]
	or b
	cp $9d
	jr nc, jr_008_4b93

	jr jr_008_4b99

jr_008_4b93:
	cp $ea
	jr z, jr_008_4b99

	jr c, jr_008_4b9c

jr_008_4b99:
	scf
	ccf
	ret


jr_008_4b9c:
	scf
	ret


Jump_008_4b9e:
	ld hl, wc02e
	add hl, bc
	bit 5, [hl]
	jp nz, Jump_008_4be5

	ld hl, wc09e
	add hl, bc
	ld e, [hl]
	ld hl, wc096
	add hl, bc
	ld d, [hl]
	ld hl, wc07e
	add hl, bc
	ld l, [hl]
	ld h, b
	add hl, de
	ld d, h
	ld e, l
	ld hl, wc08e
	add hl, bc
	push hl
	ld hl, wc086
	add hl, bc
	ld a, [hl]
	pop hl
	add [hl]
	ld [hl], a
	ld a, $00
	adc e
	ld e, a
	ld a, $00
	adc d
	ld d, a
	ld hl, wc0a6
	add hl, bc
	ld a, [hl]
	cp d
	jp c, Jump_008_4c2b

	jr nz, jr_008_4c18

	ld hl, wc0ae
	add hl, bc
	ld a, [hl]
	cp e
	jp c, Jump_008_4c2b

	jr jr_008_4c18

Jump_008_4be5:
	ld hl, wc09e
	add hl, bc
	ld a, [hl]
	ld hl, wc096
	add hl, bc
	ld d, [hl]
	ld hl, wc07e
	add hl, bc
	ld e, [hl]
	sub e
	ld e, a
	ld a, d
	sbc b
	ld d, a
	ld hl, wc086
	add hl, bc
	ld a, [hl]
	add a
	ld [hl], a
	ld a, e
	sbc b
	ld e, a
	ld a, d
	sbc b
	ld d, a
	ld hl, wc0a6
	add hl, bc
	ld a, d
	cp [hl]
	jr c, jr_008_4c2b

	jr nz, jr_008_4c18

	ld hl, wc0ae
	add hl, bc
	ld a, e
	cp [hl]
	jr c, jr_008_4c2b

jr_008_4c18:
	ld hl, wc09e
	add hl, bc
	ld [hl], e
	ld hl, wc096
	add hl, bc
	ld [hl], d
	ld b, $03
	call Call_008_4cdd
	ld a, e
	ld [hli], a
	ld [hl], d
	ret


Jump_008_4c2b:
jr_008_4c2b:
	ld hl, wc02e
	add hl, bc
	res 4, [hl]
	res 5, [hl]
	ret


Call_008_4c34:
	ld hl, wc096
	add hl, bc
	ld [hl], d
	ld hl, wc09e
	add hl, bc
	ld [hl], e
	ld hl, wc0b6
	add hl, bc
	ld a, [hl]
	ld hl, wc076
	add hl, bc
	sub [hl]
	jr nc, jr_008_4c4c

	ld a, $01

jr_008_4c4c:
	ld [hl], a
	ld hl, wc0ae
	add hl, bc
	ld a, e
	sub [hl]
	ld e, a
	ld a, d
	sbc b
	ld hl, wc0a6
	add hl, bc
	sub [hl]
	jr c, jr_008_4c68

	ld d, a
	ld b, $00
	ld hl, wc02e
	add hl, bc
	set 5, [hl]
	jr jr_008_4c8b

jr_008_4c68:
	ld hl, wc096
	add hl, bc
	ld d, [hl]
	ld hl, wc09e
	add hl, bc
	ld e, [hl]
	ld hl, wc0ae
	add hl, bc
	ld a, [hl]
	sub e
	ld e, a
	ld a, d
	sbc b
	ld d, a
	ld hl, wc0a6
	add hl, bc
	ld a, [hl]
	sub d
	ld d, a
	ld b, $00
	ld hl, wc02e
	add hl, bc
	res 5, [hl]

jr_008_4c8b:
	ld hl, wc076
	add hl, bc

jr_008_4c8f:
	inc b
	ld a, e
	sub [hl]
	ld e, a
	jr nc, jr_008_4c8f

	ld a, d
	and a
	jr z, jr_008_4c9d

	dec a
	ld d, a
	jr jr_008_4c8f

jr_008_4c9d:
	ld a, e
	add [hl]
	ld d, b
	ld b, $00
	ld hl, wc07e
	add hl, bc
	ld [hl], d
	ld hl, wc086
	add hl, bc
	ld [hl], a
	ld hl, wc08e
	add hl, bc
	ld [hl], a
	ret


Call_008_4cb2:
	ld b, $00
	ld hl, wc046
	add hl, bc
	ld a, [hl]
	rlca
	rlca
	ld [hl], a
	and $c0
	ld d, a
	ld b, $01
	call Call_008_4cdd
	ld a, [hl]
	and $3f
	or d
	ld [hl], a
	ret


Call_008_4cca:
	ld d, $00
	ld a, c
	add a
	ld e, a
	ld hl, wc006
	add hl, de
	ld a, [hli]
	ld e, a
	ld a, [hld]
	ld d, a
	ld a, [de]
	inc de
	ld [hl], e
	inc hl
	ld [hl], d
	ret


Call_008_4cdd:
	ld a, c
	ld hl, $4fbc
	add l
	jr nc, jr_008_4ce5

	inc h

jr_008_4ce5:
	ld l, a
	ld a, [hl]
	add b
	ld l, a
	ld h, $ff
	ret


Call_008_4cec:
	ld h, $00

jr_008_4cee:
	srl a
	jr nc, jr_008_4cf3

	add hl, de

jr_008_4cf3:
	sla e
	rl d
	and a
	jr z, jr_008_4cfc

	jr jr_008_4cee

jr_008_4cfc:
	ret


Call_008_4cfd:
	ld h, $00
	ld l, a
	add hl, hl
	ld d, h
	ld e, l
	ld hl, $4fd4
	add hl, de
	ld e, [hl]
	inc hl
	ld d, [hl]
	ld a, b

jr_008_4d0b:
	cp $07
	jr z, jr_008_4d16

	sra d
	rr e
	inc a
	jr jr_008_4d0b

jr_008_4d16:
	ld a, $08
	add d
	ld d, a
	ret


Call_008_4d1b:
	ld [wc001], a
	cp $ff
	jp z, Jump_008_4ed9

	cp $e9
	jp z, Jump_008_4df3

	jp c, Jump_008_4df3

	cp $fe
	jr z, jr_008_4d32

	jp nc, Jump_008_4df3

jr_008_4d32:
	xor a
	ld [wc000], a
	ld [wc003], a
	ld [wc0e9], a
	ld [wc0e6], a
	ld [wc0e7], a
	ld d, $08
	ld hl, wc016
	call Call_008_4f2e
	ld hl, wc006
	call Call_008_4f2e
	ld d, $04
	ld hl, wc026
	call Call_008_4f2e
	ld hl, wc02e
	call Call_008_4f2e
	ld hl, wc03e
	call Call_008_4f2e
	ld hl, wc046
	call Call_008_4f2e
	ld hl, wc04e
	call Call_008_4f2e
	ld hl, wc056
	call Call_008_4f2e
	ld hl, wc05e
	call Call_008_4f2e
	ld hl, wc066
	call Call_008_4f2e
	ld hl, wc06e
	call Call_008_4f2e
	ld hl, wc036
	call Call_008_4f2e
	ld hl, wc076
	call Call_008_4f2e
	ld hl, wc07e
	call Call_008_4f2e
	ld hl, wc086
	call Call_008_4f2e
	ld hl, wc08e
	call Call_008_4f2e
	ld hl, wc096
	call Call_008_4f2e
	ld hl, wc09e
	call Call_008_4f2e
	ld hl, wc0a6
	call Call_008_4f2e
	ld hl, wc0ae
	call Call_008_4f2e
	ld a, $01
	ld hl, wc0be
	call Call_008_4f2e
	ld hl, wc0b6
	call Call_008_4f2e
	ld hl, wc0c6
	call Call_008_4f2e
	ld [wc0e8], a
	ld a, $ff
	ld [wc004], a
	xor a
	ldh [rNR50], a
	ld a, $08
	ldh [rNR10], a
	ld a, $00
	ldh [rNR51], a
	xor a
	ldh [rNR30], a
	ld a, $80
	ldh [rNR30], a
	ld a, $77
	ldh [rNR50], a
	jp Jump_008_4f34


Jump_008_4df3:
	ld l, a
	ld e, a
	ld h, $00
	ld d, h
	add hl, hl
	add hl, de
	ld de, $6c92
	add hl, de
	ld a, h
	ld [wc0ec], a
	ld a, l
	ld [wc0ed], a
	ld a, [hl]
	and $c0
	rlca
	rlca
	ld c, a

Jump_008_4e0c:
	ld d, c
	ld a, c
	add a
	add c
	ld c, a
	ld b, $00
	ld a, [wc0ec]
	ld h, a
	ld a, [wc0ed]
	ld l, a
	add hl, bc
	ld c, d
	ld a, [hl]
	and $0f
	ld e, a
	ld d, $00
	ld hl, wc026
	add hl, de
	ld a, [hl]
	and a
	jr z, jr_008_4e48

	ld a, e
	cp $07
	jr nz, jr_008_4e3f

	ld a, [wc001]
	cp $14
	jr nc, jr_008_4e38

	ret


jr_008_4e38:
	ld a, [hl]
	cp $14
	jr z, jr_008_4e48

	jr c, jr_008_4e48

jr_008_4e3f:
	ld a, [wc001]
	cp [hl]
	jr z, jr_008_4e48

	jr c, jr_008_4e48

	ret


jr_008_4e48:
	xor a
	push de
	ld h, d
	ld l, e
	add hl, hl
	ld d, h
	ld e, l
	ld hl, wc016
	add hl, de
	ld [hli], a
	ld [hl], a
	ld hl, wc006
	add hl, de
	ld [hli], a
	ld [hl], a
	pop de
	ld hl, wc026
	add hl, de
	ld [hl], a
	ld hl, wc02e
	add hl, de
	ld [hl], a
	ld hl, wc03e
	add hl, de
	ld [hl], a
	ld hl, wc046
	add hl, de
	ld [hl], a
	ld hl, wc04e
	add hl, de
	ld [hl], a
	ld hl, wc056
	add hl, de
	ld [hl], a
	ld hl, wc05e
	add hl, de
	ld [hl], a
	ld hl, wc066
	add hl, de
	ld [hl], a
	ld hl, wc06e
	add hl, de
	ld [hl], a
	ld hl, wc076
	add hl, de
	ld [hl], a
	ld hl, wc07e
	add hl, de
	ld [hl], a
	ld hl, wc086
	add hl, de
	ld [hl], a
	ld hl, wc08e
	add hl, de
	ld [hl], a
	ld hl, wc096
	add hl, de
	ld [hl], a
	ld hl, wc09e
	add hl, de
	ld [hl], a
	ld hl, wc0a6
	add hl, de
	ld [hl], a
	ld hl, wc0ae
	add hl, de
	ld [hl], a
	ld hl, wc036
	add hl, de
	ld [hl], a
	ld a, $01
	ld hl, wc0be
	add hl, de
	ld [hl], a
	ld hl, wc0b6
	add hl, de
	ld [hl], a
	ld hl, wc0c6
	add hl, de
	ld [hl], a
	ld a, e
	cp $04
	jr nz, jr_008_4ed0

	ld a, $08
	ldh [rNR10], a

jr_008_4ed0:
	ld a, c
	and a
	jp z, Jump_008_4f34

	dec c
	jp Jump_008_4e0c


Jump_008_4ed9:
	ld a, $80
	ldh [rNR52], a
	ldh [rNR30], a
	xor a
	ldh [rNR51], a
	ldh [rNR32], a
	ld a, $08
	ldh [rNR10], a
	ldh [rNR12], a
	ldh [rNR22], a
	ldh [rNR42], a
	ld a, $40
	ldh [rNR14], a
	ldh [rNR24], a
	ldh [rNR44], a
	ld a, $77
	ldh [rNR50], a
	xor a
	ld [wc000], a
	ld [wc003], a
	ld [wc002], a
	ld [wc0e9], a
	ld [wc0eb], a
	ld [wc0e6], a
	ld [wc0e7], a
	ld d, $a0
	ld hl, wc006
	call Call_008_4f2e
	ld a, $01
	ld d, $18
	ld hl, wc0b6
	call Call_008_4f2e
	ld [wc0e8], a
	ld [wc0ea], a
	ld a, $ff
	ld [wc004], a
	ret


Call_008_4f2e:
	ld b, d

jr_008_4f2f:
	ld [hli], a
	dec b
	jr nz, jr_008_4f2f

	ret


Jump_008_4f34:
	ld a, [wc001]
	ld l, a
	ld e, a
	ld h, $00
	ld d, h
	add hl, hl
	add hl, de
	ld de, $6c92
	add hl, de
	ld e, l
	ld d, h
	ld hl, wc006
	ld a, [de]
	ld b, a
	rlca
	rlca
	and $03
	ld c, a
	ld a, b
	and $0f
	ld b, c
	inc b
	inc de
	ld c, $00

jr_008_4f56:
	cp c
	jr z, jr_008_4f5e

	inc c
	inc hl
	inc hl
	jr jr_008_4f56

jr_008_4f5e:
	push hl
	push bc
	push af
	ld b, $00
	ld c, a
	ld hl, wc026
	add hl, bc
	ld a, [wc001]
	ld [hl], a
	pop af
	cp $03
	jr c, jr_008_4f77

	ld hl, wc02e
	add hl, bc
	set 2, [hl]

jr_008_4f77:
	pop bc
	pop hl
	ld a, [de]
	ld [hli], a
	inc de
	ld a, [de]
	ld [hli], a
	inc de
	inc c
	dec b
	ld a, b
	and a
	ld a, [de]
	inc de
	jr nz, jr_008_4f56

	ld a, [wc001]
	cp $14
	jr nc, jr_008_4f90

	jr jr_008_4fba

jr_008_4f90:
	ld a, [wc001]
	cp $86
	jr z, jr_008_4fba

	jr c, jr_008_4f9b

	jr jr_008_4fba

jr_008_4f9b:
	ld hl, wc02a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hl], a
	ld hl, wc012
	ld de, $4fbb
	ld [hl], e
	inc hl
	ld [hl], d
	ld a, [wc005]
	and a
	jr nz, jr_008_4fba

	ldh a, [rNR50]
	ld [wc005], a
	ld a, $77
	ldh [rNR50], a

jr_008_4fba:
	ret


	db $ff, $10, $15, $1a

	rra

	db $10, $15, $1a, $1f, $ee, $dd, $bb

	ld [hl], a
	xor $dd

	db $bb, $77, $11, $22, $44

	adc b

	db $11, $22, $44, $88, $2c, $f8, $9d, $f8, $07, $f9, $6b, $f9, $ca, $f9, $23, $fa
	db $77, $fa, $c7, $fa, $12, $fb, $58, $fb, $9b, $fb, $da, $fb

	ld a, $9a
	call $3788
	ld hl, wc00e
	ld de, $5008
	call Call_008_5003
	ld de, $500b
	call Call_008_5003
	ld de, $712d

Call_008_5003:
	ld a, e
	ld [hli], a
	ld a, d
	ld [hli], a
	ret


	db $ed
	ld bc, $f800
	ret c

	nop
	call nz, wc4c6
	call nz, wc4c4
	rst $38
	ld hl, sp-$13
	ld bc, $f000
	ld [hl], a
	ld [$2606], a
	db $ec
	ld [bc], a
	add sp, -$2a
	or c
	push hl
	add c
	add c
	sub $b3
	add c
	or c
	db $e4
	ld b, a
	rst $38
	ld hl, sp-$16
	ld [$ec27], sp
	ld [bc], a
	sub $c1
	db $e4
	ld b, c
	ld b, b
	ld b, b
	sub $c3
	ld b, c
	add c
	or a
	rst $38
	ld hl, sp-$2a
	db $10
	db $e4
	or b
	ret nz

	db $d3
	db $10
	or b
	ret nz

	or b
	ret nz

	sub $10
	or b
	ret nz

	db $e3
	ld b, b
	ret nz

	db $e4
	or e
	jp $edff


	nop
	ld l, b
	ldh a, [rPCM34]
	db $ec
	inc bc
	ld [$3408], a

Call_008_5060:
	add sp, -$24
	or e
	push bc
	push hl
	ld h, b
	ld d, b
	ld b, b
	ld d, b
	ld b, b
	jr nc, jr_008_50ac

	jr nc, @+$22

	jr nc, jr_008_5090

	db $10
	jr nz, jr_008_5083

	nop
	stop
	and $b0
	rst $20
	add b
	sub b
	and b
	sub b
	and b
	or b

Call_008_507f:
	and b
	or b
	and $60

jr_008_5083:
	adc $60
	ret z

	ld [hl], l
	ld h, b
	adc $60
	ret z

	ld d, l
	ld h, b
	adc $60
	ret z

jr_008_5090:
	ld [hl], l
	ld h, b
	adc $60
	ret z

	sub l
	ld h, b
	push hl
	db $10
	ld h, b
	ld b, b
	db $10
	ld h, b
	ld b, b
	db $10
	ld h, b
	ld b, b
	db $10
	ld h, b
	ld b, b
	db $10
	ld h, b
	ld b, b
	db $10
	ld h, b
	ld b, b
	db $10
	ld h, b

jr_008_50ac:
	ld b, b
	db $10
	ld h, b
	ld b, b
	db $10
	ld h, b
	ld b, b
	db $10
	ld h, b
	ld b, b
	db $10
	and $40
	sub b
	push hl
	db $10
	and $b0
	sub b
	push hl
	db $10

Call_008_50c1:
	and $b0
	sub b
	push hl
	db $10
	and $b0
	sub b
	push hl
	db $10
	and $b0
	sub b
	push hl
	db $10
	and $b0
	sub b
	push hl
	db $10
	and $b0
	sub b
	push hl

Call_008_50d9:
	db $10
	and $b0
	sub b
	push hl
	db $10
	and $b0
	sub b
	push hl

Jump_008_50e3:
	db $10
	and $b0
	sub b
	push hl
	db $10
	and $b0
	sub b
	ld h, b
	push hl
	db $10
	ld h, b
	ld b, b
	db $10
	ld h, b
	ld b, b
	db $10
	ld h, b
	ld b, b
	db $10
	ld h, b
	ld b, b
	db $10
	ld h, b
	ld b, b
	db $10
	ld h, b
	ld b, b
	db $10
	ld h, b
	ld b, b
	db $10
	ld h, b
	ld b, b
	db $10
	ld h, b
	ld b, b
	db $10
	ld h, b
	ld b, b
	db $10
	and $40
	sub b
	push hl
	db $10
	and $b0
	sub b
	push hl
	db $10
	and $b0
	sub b
	push hl
	db $10
	and $b0
	sub b
	push hl
	db $10
	and $b0
	sub b
	push hl
	db $10
	and $b0
	sub b
	push hl
	db $10
	and $b0
	sub b
	push hl
	db $10
	and $b0
	sub b
	push hl
	db $10
	and $b0
	sub b
	push hl
	db $10
	and $b0
	sub b
	push hl
	db $10
	and $b0
	sub b
	pop bc
	rst $20
	or b
	ret nz

	and $23
	rst $20
	or b
	ret nz

	or b
	ret nz

	and $43
	rst $20
	or b
	ret nz

	or b
	ret nz

	and $23
	rst $20
	or b
	ret nz

	and $11
	rst $20
	or b
	ret nz

	or b
	ret nz

	and $23
	rst $20
	or b
	ret nz

	or b
	ret nz

	and $43
	rst $20
	or b
	ret nz

	or b
	ret nz

	and $23
	rst $20
	or b
	ret nz

	or b
	ret nz

	and $11
	rst $20
	or c
	sub c
	and $11
	rst $20
	or b
	ret nz

	or b
	ret nz

	push hl
	nop
	and $b0
	sub b
	or b
	push hl
	nop
	and $b0
	sub b
	or b
	push hl
	nop
	and $b0
	sub b
	or b
	push hl
	nop
	and $b0
	sub b
	or b
	push hl
	nop
	and $b0
	sub b
	or b
	push hl
	nop
	and $b0
	sub b
	or b
	push hl
	nop
	and $b0
	sub b
	or b
	push hl
	nop
	and $b0
	sub b
	or b

Call_008_51b1:
	push hl
	nop
	and $b0
	sub b
	or b
	push hl
	nop
	and $b0
	sub b
	or b
	push hl
	nop
	and $b0
	sub b
	or b
	rst $08
	rst $20
	or b
	ret nz

	or b
	ret nz

	push hl
	nop
	and $b0
	sub b
	or b
	push hl
	nop
	and $b0
	sub b
	or b
	push hl
	nop
	and $b0
	sub b
	or b
	push hl
	nop
	and $b0
	sub b
	or b
	push hl
	nop
	and $b0
	sub b
	or b
	push hl
	nop
	and $b0
	sub b
	or b
	push hl
	nop
	and $b0
	sub b
	or b
	push hl
	nop
	and $b0
	sub b
	or b
	push hl
	nop
	and $b0
	sub b
	or b
	push hl
	nop
	and $b0
	sub b
	or b
	push hl
	nop
	and $b0
	sub b
	or b
	push hl
	nop
	and $b0
	sub b
	or b
	push hl
	nop
	and $b0
	sub b
	or b
	push hl
	nop
	and $b0
	sub b
	or b
	push hl
	nop
	and $b0
	sub b
	or b
	rst $20
	sub b
	ret nz

	sub b
	ret nz

	call c, $e5b5
	dec de
	call c, $e7b3
	sub b
	ret nz

	sub b
	ret nz

	call c, $e5b5
	sbc e
	call c, $33b3
	inc de
	inc sp
	ld b, c
	ld h, e
	and $b1
	push hl
	ld de, $b161
	ld h, c
	ld sp, $e761
	sub b
	ret nz

	sub b
	ret nz

	call c, $e5b5
	sbc e
	call c, $10b3
	and $b0
	push hl
	db $10
	jr nc, @+$42

	jr nc, jr_008_529b

	ld h, b
	sub b
	add b
	ld h, b
	ld b, b
	ld h, b
	ld b, b
	jr nc, @+$12

	call c, $33b5
	ld b, e
	ld de, $6335
	ld b, c
	inc sp
	dec d
	rst $08
	ret


	ld b, l
	inc sp
	ld b, e
	ld de, $4335
	ld sp, $e613
	or l
	push hl
	inc sp
	ld b, e
	ld de, $6335
	sub c
	add e
	ld b, l
	cp $00
	sub [hl]
	ld d, b
	db $ec
	inc bc
	ld [$2508], a
	call c, $e4c3
	ld d, b
	ld b, b
	jr nc, jr_008_52d3

	jr nc, @+$22

	jr nc, jr_008_52b7

	db $10
	jr nz, jr_008_52aa

	nop

jr_008_529b:
	push hl
	or b
	call nz, Call_008_5060
	ld b, b
	ld d, b
	ld b, b
	jr nc, jr_008_52e5

	jr nc, @+$22

	jr nc, jr_008_52c9

	db $10

jr_008_52aa:
	jr nz, jr_008_52bc

	or b
	adc $b0
	ret z

	db $e4
	dec b
	push hl
	or b
	adc $b0
	ret z

jr_008_52b7:
	and l
	push hl
	or b
	adc $b0

jr_008_52bc:
	ret z

	db $e4
	dec b
	push hl
	or b
	adc $b0
	ret z

	db $e4
	dec d
	call c, $33c5

jr_008_52c9:
	inc de
	inc sp
	ld b, c
	ld h, e
	ld b, e
	ld sp, $e511
	or c
	db $e4

jr_008_52d3:
	ld de, wdc31
	or a
	db $ec
	ld [bc], a
	push hl
	sub a
	db $e4
	rla
	ld b, a
	rla
	call c, $ecc5
	inc bc
	inc sp
	inc de

jr_008_52e5:
	inc sp
	ld b, c
	ld h, e
	ld b, e

jr_008_52e9:
	ld sp, $e511
	or c
	db $e4
	ld de, wdc31
	or a
	db $ec
	ld [bc], a
	rla
	push hl

jr_008_52f6:
	or a

jr_008_52f7:
	sub a
	call c, $e4c3
	ld b, e
	ld b, c
	ld de, wc5dc
	db $ec
	inc bc
	rst $20
	or b
	jp nz, $20e5

	db $10
	and $b0
	push hl
	jr nz, @-$3b

	ld b, b
	jr nz, jr_008_52f6

	or b
	push hl
	ld b, b
	jp Jump_008_4060


	db $10
	ld h, b
	pop bc
	ld b, b
	db $10
	ld b, b
	ret nz

	ld d, b
	ret nz

	jr nz, jr_008_5331

	and $b0
	push hl
	jr nz, jr_008_52e9

	ld b, b
	jr nz, @-$18

	or b
	push hl
	ld b, b
	jp Jump_008_4060


	db $10
	ld h, b

jr_008_5331:
	ld b, b
	ret nz

	db $10
	ret nz

	jr nz, jr_008_52f7

	db $10
	ret nz

	ld h, b
	ret nz

	ld b, b
	ret nz

	rst $20
	or b
	ret nz

	or b
	ret nz

	call c, $e5b0
	or e
	db $e4
	inc bc
	push hl
	sub e
	or e
	db $e4
	inc bc
	push hl
	sub e
	ld [hl], e
	call c, $67b0
	call c, $67b7
	call c, $00c3
	db $10
	jr nz, jr_008_538c

	ld b, b
	jr nc, jr_008_537f

	stop
	and $b0
	sub b
	ld [hl], b
	ld h, b
	ld d, b
	ld b, b
	ld d, b
	ld h, b
	ld [hl], b
	sub b
	or b
	call c, $e5b0
	or e
	db $e4
	inc bc
	push hl
	sub e
	or e
	db $e4
	inc bc
	push hl
	sub e
	db $e4
	inc bc
	call c, $e5b0

jr_008_537f:
	cp a
	call c, $e43f
	ld l, a
	call c, $ecc3
	inc bc
	rst $20
	sub b
	ret nz

	sub b

jr_008_538c:
	ret nz

	call c, $e5c7
	sbc e
	call c, $e7c3
	sub b
	ret nz

	sub b
	ret nz

	call c, $e4c7
	dec de
	call c, $3fb0
	call c, $3fb7
	call c, $e7c3
	sub b
	ret nz

	sub b
	ret nz

	call c, $e4c7
	dec de
	call c, $97c0
	ld b, a
	cp a
	call c, $bfc7

Call_008_53b5:
	call c, $e5c4
	inc sp
	ld b, e
	ld de, $6335
	sub c
	add e
	pop bc
	or b
	db $e4
	jr nc, jr_008_5424

	and b
	call c, $bfc0
	ld l, a
	sbc a
	db $e3
	rla
	pop bc
	call c, $e4c3
	sub l
	cp $00
	add $52
	ld [$2000], a
	call c, wcb13
	push hl
	or b
	db $e4
	nop
	stop
	db $10
	jr nz, jr_008_53f4

	jr nz, jr_008_5416

	jr nz, jr_008_5418

	ld b, b
	jr nc, jr_008_542b

	ld d, b
	ld b, b
	ld d, b
	ld h, b
	ld d, b
	ld h, b
	push hl
	or b
	ret nz

jr_008_53f4:
	db $e4
	ld h, b
	ret nz

	push hl
	or b
	ret nz

	db $e4
	ld h, b
	ret nz

	push hl
	or b
	ret nz

	db $e4
	ld h, b
	ret nz

	push hl
	or b
	ret nz

	db $e4
	ld h, b
	ret nz

	push hl
	or b
	ret nz

	db $e4
	ld h, b
	ret nz

	push hl
	or b
	ret nz

	db $e4
	ld h, b
	ret nz

	push hl

jr_008_5416:
	or b
	ret nz

jr_008_5418:
	db $e4
	dec b
	push hl
	or b
	ret nz

	db $e4
	ld h, b
	ret nz

	push hl
	or b
	ret nz

	db $e4

jr_008_5424:
	ld h, b
	ret nz

	push hl
	or b
	ret nz

	db $e4
	ld h, b

jr_008_542b:
	ret nz

	push hl
	or b
	ret nz

	db $e4
	ld h, b
	ret nz

	push hl
	or b
	ret nz

	db $e4
	ld h, b
	ret nz

	push hl
	or b
	ret nz

	db $e4
	ld h, b
	ret nz

	push hl
	or b
	ret nz

	db $e4
	ld d, l
	push hl
	or b
	ret nz

	db $e4
	ld h, b
	ret nz

	push hl
	or b
	ret nz

	db $e4
	ld h, b
	ret nz

Jump_008_544f:
	push hl
	or b
	ret nz

	db $e4
	ld h, b
	ret nz

	push hl
	or b
	ret nz

	db $e4
	ld h, b
	ret nz

	push hl
	or b
	ret nz

	db $e4
	ld h, b
	ret nz

	push hl
	or b
	ret nz

	db $e4
	ld h, b
	ret nz

	push hl
	or b
	ret nz

	db $e4
	dec b
	push hl
	or b
	ret nz

	db $e4
	ld h, b
	ret nz

	push hl
	or b
	ret nz

	db $e4
	ld h, b
	ret nz

	push hl
	or b
	ret nz

	db $e4
	ld h, b
	ret nz

	push hl
	or b
	ret nz

	db $e4
	ld h, b
	ret nz

	push hl
	or b
	ret nz

	db $e4
	ld h, b
	ret nz

	push hl
	or b
	ret nz

	db $e4
	ld h, b
	ret nz

	push hl
	or b
	ret nz

	db $e4
	dec d
	call c, $e514
	or c
	db $e4
	ld h, c
	push hl
	or c
	db $e4
	ld h, c
	push hl
	or c
	db $e4
	ld h, c
	push hl
	or c
	db $e4
	ld h, c
	push hl
	or c
	db $e4
	ld h, c
	push hl
	or c
	db $e4
	ld h, c
	push hl
	or c
	db $e4
	ld h, c
	push hl
	or c
	db $e4
	ld h, c
	push hl
	sub c
	db $e4
	ld b, c
	push hl
	sub c
	db $e4
	ld b, c
	push hl
	sub c
	db $e4
	ld b, c
	push hl
	sub c
	db $e4
	ld b, c
	push hl
	sub c
	db $e4
	ld b, c
	push hl
	sub c
	db $e4
	ld b, c
	push hl
	sub c
	db $e4
	ld b, c
	push hl
	sub c
	db $e4
	ld b, c
	push hl
	or c
	db $e4
	ld h, c
	push hl
	or c
	db $e4
	ld h, c
	push hl
	or c
	db $e4
	ld h, c
	push hl
	or c
	db $e4
	ld h, c
	push hl
	or c
	db $e4
	ld h, c
	push hl
	or c
	db $e4
	ld h, c
	push hl
	or c
	db $e4
	ld h, c
	push hl
	or c
	db $e4
	ld h, c
	push hl
	sub c
	db $e4
	ld b, c
	push hl
	sub c
	db $e4
	ld b, c
	push hl
	sub c
	db $e4
	ld b, c
	push hl
	sub c
	db $e4
	ld b, c
	push hl
	sub c
	db $e4
	ld b, c
	push hl
	sub c
	db $e4
	ld b, c
	push hl
	sub c
	db $e4
	ld b, c
	push hl
	sub c
	db $e4
	ld b, c
	push hl
	or b
	ret nz

	or b
	ret nz

	db $e4
	inc hl
	push hl
	or b
	ret nz

	or b
	ret nz

	db $e4
	ld b, e
	push hl
	or b
	ret nz

	or b
	ret nz

	db $e4
	inc hl
	push hl
	or b
	ret nz

	db $e4
	ld de, $b0e5
	ret nz

	or b
	ret nz

	db $e4
	inc hl
	push hl
	or b
	ret nz

	or b
	ret nz

	db $e4
	ld b, e
	push hl
	or b
	ret nz

	or b
	ret nz

	db $e4
	inc hl
	push hl
	or b
	ret nz

	or b
	ret nz

	db $e4
	ld de, $b1e5
	sub c
	db $e4
	ld de, $b0e5
	ret nz

	or b
	call z, wc0b0
	or b
	call z, wc0b0
	or b
	call z, wc0b0
	or b
	call z, wc0b0
	or b
	call z, wc0b0
	or b
	call z, wc0b0
	or b
	call z, wc0b0
	or b
	call z, wc090
	sub b
	ret nz

	db $e4
	dec de
	push hl
	sub b
	ret nz

	sub b
	ret nz

	db $e4
	ld c, e
	ccf
	push hl
	cp a
	sub b
	ret nz

	sub b
	ret nz

	db $e4
	ld c, e
	rla
	ld b, a
	push hl
	or c
	db $e4
	ld h, c
	push hl
	or c
	db $e4
	ld h, c
	push hl
	or c
	db $e4
	ld h, c
	push hl
	or c
	db $e4
	ld h, c
	push hl
	or c
	db $e4
	ld h, c
	push hl
	or c
	db $e4
	ld h, c
	push hl
	or c
	db $e4
	ld b, l
	push hl
	or c
	db $e4
	ld h, c
	push hl
	or c
	db $e4
	ld h, c
	push hl
	or c
	db $e4
	ld h, c
	push hl
	or c
	db $e4
	ld h, c
	push hl
	or c
	db $e4
	ld h, c
	push hl
	or c
	db $e4
	ld h, c
	push hl
	or c
	db $e4
	ld [hl], l
	push hl
	or c
	db $e4
	ld h, c
	push hl
	or c
	db $e4
	ld h, c
	push hl
	or c
	db $e4
	ld h, c
	push hl
	or c
	db $e4
	ld h, c
	push hl
	or c
	db $e4
	ld h, c
	push hl
	or c
	db $e4
	ld h, c
	push hl
	or c
	db $e4
	dec b
	push hl
	or c
	db $e4
	ld h, c
	push hl
	or c
	db $e4
	ld h, c
	push hl
	or c
	db $e4
	ld h, c
	push hl
	or c
	db $e4
	ld h, c
	push hl
	or c
	db $e4
	ld h, c
	push hl
	or c
	db $e4
	ld h, c
	push hl
	or c
	db $e4
	ld [hl], l
	cp $00
	sub a
	ld d, h

	db $ed, $00, $70, $f0, $77, $ec, $03, $ea, $06, $34, $e8, $dc, $b2, $c7, $e5, $50
	db $40, $50, $40, $30, $40, $30, $20, $30, $20, $10, $20, $10, $00, $10, $00, $e6
	db $b0, $e5, $00, $e6, $b0, $a0, $b0, $a0, $90, $a0, $e5, $25, $45, $53, $21, $43
	db $55, $03, $25, $45, $53, $21, $43, $55, $01, $11, $25, $45, $53, $21, $43, $55
	db $03, $25, $45, $53, $21, $43, $55, $01, $11, $dc, $b5, $21, $43, $11, $23, $e6
	db $b3, $63, $e5, $41, $23, $11, $21, $41, $57, $dc, $b2, $00, $10, $20, $30, $40
	db $30, $20, $00, $00, $10, $20, $30, $40, $50, $60, $70, $80, $70, $60, $50, $40
	db $30, $20, $00, $dc, $b5, $21, $43, $11, $23, $e6, $b3, $63, $e5, $41, $23, $11
	db $e6, $b1, $e5, $11, $dc, $a7, $27, $17, $e6, $b7, $e5, $17, $dc, $b5, $21, $11
	db $e6, $b1, $91, $71, $c1, $e5, $21, $11, $e6, $b1, $91, $71, $c1, $e5, $21, $11
	db $e6, $b1, $e5, $11, $43, $e6, $70, $90, $b0, $e5, $10, $23, $e6, $60, $70, $90
	db $b0, $e5, $13, $e6, $70, $90, $b0, $e5, $10, $23, $e6, $60, $70, $90, $b0, $e5
	db $21, $11, $e6, $b1, $91, $71, $c1, $e5, $21, $11, $e6, $b1, $91, $b1, $71, $e5
	db $21, $41, $61, $71, $91, $b1, $91, $71, $91, $c1, $91, $b1, $91, $71, $61, $71
	db $91, $41, $71, $61, $e6, $b0, $e5, $00, $10, $20, $30, $40, $50, $60, $70, $80
	db $90, $a0, $b0, $e4, $00, $10, $20, $30, $20, $10, $00, $e5, $b0, $a0, $90, $80
	db $70, $60, $50, $40, $30, $20, $10, $00, $00, $10, $20, $30, $40, $50, $60, $70
	db $80, $90, $a0, $b0, $e4, $00, $10, $20, $30, $40, $30, $20, $10, $00, $e5, $b0
	db $a0, $90, $80, $70, $60, $50, $40, $30, $20, $10, $10, $20, $30, $40, $50, $60
	db $70, $80, $90, $a0, $b0, $e4, $00, $10, $20, $30, $40, $50, $40, $30, $20, $10
	db $00, $e5, $b0, $a0, $90, $80, $70, $60, $50, $40, $30, $20, $20, $30, $40, $50
	db $60, $70, $80, $90, $a0, $b0, $e4, $00, $10, $20, $30, $40, $50, $60, $50, $40
	db $30, $20, $10, $00, $e5, $b0, $a0, $b0, $e4, $00, $10, $20, $30, $40, $50, $e5
	db $93, $e4, $23, $e5, $91, $20, $40, $60, $70, $80, $a0, $b1, $e4, $01, $e5, $91
	db $e4, $01, $e5, $71, $b1, $51, $71, $91, $e4, $01, $21, $c1, $e5, $93, $e4, $03
	db $21, $e5, $50, $70, $90, $b0, $e4, $00, $20, $41, $51, $21, $51, $21, $51, $21
	db $51, $21, $51, $21, $51, $41, $51, $41, $51, $41, $51, $41, $51, $41, $51, $41
	db $51, $41, $51, $41, $e5, $b1, $01, $e6, $91, $e5, $41, $01, $e6, $91, $e5, $41
	db $01, $e6, $91, $e5, $41, $01, $e6, $91, $e5, $41, $01, $e6, $91, $e5, $01, $41
	db $21, $e6, $a1, $e5, $51, $21, $e6, $a1, $e5, $51, $21, $e6, $a1, $e5, $51, $21
	db $e6, $a1, $e5, $51, $21, $e6, $a1, $e5, $21, $51, $01, $e6, $91, $e5, $41, $01
	db $e6, $91, $e5, $41, $01, $e6, $91, $e5, $41, $01, $e6, $91, $e5, $41, $01, $e6
	db $91, $e5, $01, $41, $21, $e6, $a1, $e5, $51, $21, $e6, $a1, $e5, $51, $21, $e6
	db $a1, $e5, $51, $21, $e6, $a1, $e5, $51, $21, $e6, $a1, $e5, $21, $51, $2f, $0f
	db $e6, $af, $7b, $e5, $20, $40, $70, $e4, $00, $27, $57, $e5, $a7, $e4, $07, $27
	db $47, $57, $77, $41, $c3, $41, $c3, $41, $c1, $41, $c3, $41, $c3, $41, $c1, $41
	db $c3, $41, $c3, $41, $c1, $41, $c3, $41, $c3, $41, $c1, $e5, $01, $23, $e6, $b1
	db $e5, $13, $c1, $10, $20, $40, $c0, $20, $c0, $e6, $b0

	ret nz

	push hl
	db $10
	ret z

	jr nz, jr_008_5890

	ld b, b
	ld d, b
	ld d, b
	ld b, b
	jr nc, jr_008_5886

	db $10
	call nz, $2010
	ld b, b
	ret nz

	ld d, b
	ret nz

	ld b, b
	ret nz

	jr nz, @-$3e

	ld hl, $5141
	ld [hl], c
	jr nc, @+$42

	ld d, b
	ld h, b
	ld h, b
	ld d, b
	ld b, b
	jr nc, @+$22

	ret z

	ld h, c
	ld b, e
	ld sp, $6141
	add c

jr_008_5886:
	ld b, a
	ld h, a
	ld [hl], a
	db $e4
	inc bc
	push hl
	ld [hl], b
	add b
	sub b
	and b

jr_008_5890:
	cp $00
	ld c, b
	ld d, [hl]

	db $ec, $03, $ea, $0a, $25, $dc, $c2, $e4, $90, $80, $70, $60, $90, $50, $60, $50
	db $90, $40, $50, $40, $90, $30, $40, $30, $90, $20, $30, $20, $90, $10, $20, $10
	db $90, $00, $10, $00, $90, $e5, $b0, $e4, $00, $e5, $b0, $dc, $e1, $e4, $bf, $cf
	db $dc, $d1, $bf, $cb, $93, $dc, $c2, $e5, $b5, $e4, $15, $23, $e5, $b1, $e4, $13
	db $25, $91, $a1, $b5, $e3, $15, $23, $e4, $b1, $e3, $13, $25, $e4, $93, $dc, $c7
	db $e5, $b5, $6d, $b3, $63, $b3, $dc, $50, $e4, $07, $dc, $30, $07, $dc, $4e, $07
	db $dc, $c7, $07, $e5, $b5, $6d, $b3, $63, $b3, $dc, $90, $97, $dc, $50, $97, $dc
	db $40, $97, $dc, $30, $97, $dc, $c7, $7f, $e4, $27, $e5, $77, $dc, $80, $97, $dc
	db $50, $97, $dc, $40, $97, $dc, $60, $97, $dc, $c7, $7f, $e4, $47, $67, $4f, $dc
	db $c5, $73, $91, $71, $61, $41, $21, $41, $dc, $b7, $67, $dc, $50, $67, $dc, $60
	db $67, $dc, $70, $67, $dc, $a0, $77, $dc, $a7, $77, $dc, $b7, $73, $dc, $c5, $91
	db $71, $71, $61, $41, $61, $dc, $a0, $87, $dc, $70, $87, $dc, $80, $87, $dc, $60
	db $87, $dc, $a0, $9f, $dc, $b0, $e3, $17, $47, $dc, $c0, $23, $e4, $93, $e3, $01
	db $dc, $c7, $e4, $b7, $dc, $60, $b7, $dc, $69, $b5, $dc, $96, $b5, $c1, $dc, $c0
	db $e3, $23, $e4, $93, $a1, $dc, $b0, $e3, $5d, $dc, $60, $7f, $dc, $50, $4f, $dc
	db $40, $4f, $dc, $c7, $e4, $05, $e5, $9d, $e4, $03, $e5, $93, $e4, $03, $e5, $a5
	db $e4, $5d, $e5, $a3, $e4, $53, $23, $05, $e5, $9d, $e4, $03, $41, $21, $01, $41
	db $21, $e5, $a3, $e4, $59, $75, $55, $23, $dc, $b0, $5f, $4f, $2f, $4f, $dc, $a0
	db $e3, $5f, $4f, $7f, $5f, $dc, $d1, $e5, $a5, $a5, $a3, $95, $95, $93, $e4, $05
	db $05, $03, $e5, $a5, $a5, $93, $dc, $c7, $93, $b3, $71, $99, $b1

	db $e4
	ld de, $2141
	ld de, $b1e5
	xor a
	pop bc
	and c
	db $e4
	ld bc, $4151
	ld hl, $e501
	and c
	cp a
	pop bc
	or c
	db $e4
	ld de, $6171
	ld b, c
	ld hl, $b1e5
	db $e4
	rrca
	ld b, a
	ld [hl], a
	cp $00
	ld [c], a
	ld e, b

	db $ea, $00, $20, $dc, $14, $e5, $b0, $a0, $90, $80, $90, $80, $70, $60, $70, $60
	db $50, $40, $50, $40, $30, $20, $30, $20, $10, $00, $10, $00, $e6, $b0, $a0, $b0
	db $a0, $90, $80, $91, $a1, $b1, $b1, $e5, $21, $41, $e6, $b1, $e5, $51, $41, $21
	db $e6, $b1, $b1, $e5, $21, $41, $e6, $b1, $e5, $21, $e6, $a1, $e5, $01, $e6, $b1
	db $b1, $e5, $21, $41, $e6, $b1, $e5, $51, $41, $21, $e6, $b1, $b1, $e5, $21, $41
	db $e6, $b1, $e5, $21, $e6, $a1, $e5, $01, $e6, $b1, $b1, $e5, $21, $41, $e6, $b1
	db $e5, $51, $41, $21, $e6, $b1, $b1, $e5, $21, $41, $e6, $b1, $e5, $21, $e6, $a1
	db $e5, $01, $e6, $b1, $b1, $e5, $21, $41, $e6, $b1, $e5, $51, $41, $21, $e6, $b1
	db $b1, $e5, $21, $41, $e6, $b1, $e5, $21, $e6, $a1, $e5, $01, $e6, $a0, $b0, $e5
	db $61, $e6, $b1, $e5, $61, $e6, $b1, $e5, $61, $e6, $b1, $e5, $61, $e6, $b1, $e5
	db $61, $e6, $b1, $e5, $61, $e6, $b1, $e5, $61, $e6, $b1, $e5, $61, $e6, $b1, $e5
	db $71, $01, $71, $01, $71, $01, $71, $01, $71, $91, $71, $61, $41, $21, $01, $e6
	db $b1, $e5, $61, $e6, $b1, $e5, $61, $e6, $b1, $e5, $61, $e6, $b1, $e5, $61, $e6
	db $b1, $e5, $61, $e6, $b1, $e5, $61, $e6, $b1, $e5, $61, $e6, $b1, $e5, $51, $e6
	db $91, $e5, $41, $e6, $91, $e5, $41, $e6, $91, $e5, $41, $e6, $91, $e5, $41, $e6
	db $91, $e5, $41, $21, $11, $21, $11, $e6, $91, $81, $71, $e5, $21, $e6, $71, $e5
	db $21, $e6, $71, $e5, $21, $e6, $71, $e5, $21, $e6, $71, $e5, $21, $e6, $71, $e5
	db $21, $e6, $71, $e5, $21, $e6, $71, $81, $91, $e5, $41, $e6, $91, $e5, $41, $e6
	db $91, $e5, $41, $e6, $91, $e5, $41, $e6, $91, $e5, $41, $e6, $91, $e5, $41, $e6
	db $91, $e5, $41, $e6, $91, $e5, $41, $e6, $71, $e5, $21, $e6, $71, $e5, $21, $e6
	db $71, $e5, $21, $e6, $71, $e5, $21, $e6, $71, $e5, $21, $e6, $71, $e5, $21, $e6
	db $71, $e5, $21, $e6, $71, $81, $91, $e5, $41, $e6, $91, $e5, $41, $e6, $91, $e5
	db $41, $e6, $91, $e5, $41, $e6, $91, $e5, $41, $e6, $91, $e5, $41, $e6, $91, $e5
	db $41, $21, $11, $e6, $b1, $e5, $61, $e6, $b1, $e5, $61, $e6, $b1, $e5, $61, $e6
	db $b1, $e5, $61, $e6, $b1, $e5, $61, $21, $41, $61, $41, $21, $61, $01, $71, $01
	db $71, $01, $71, $01, $71, $01, $71, $31, $51, $71, $51, $31, $71, $11, $81, $11
	db $81, $11, $81, $11, $81, $11, $81, $41, $61, $81, $61, $41, $81, $21, $91, $21
	db $91, $21, $91, $21, $91, $21, $91, $51, $71, $91, $71, $51, $41, $23, $e6, $93
	db $e5, $01, $71, $e6, $b1, $e5, $71, $e6, $b1, $e5, $71, $e6, $b1, $e5, $71, $e6
	db $b1, $e5, $71, $e6, $b1, $e5, $71, $e6, $b1, $e5, $71, $e6, $b1, $e5, $71, $23
	db $e6, $93, $a1, $e5, $51, $e6, $a1, $e5, $51, $e6, $a1, $e5, $51, $e6, $a1, $e5
	db $51, $e6, $a1, $e5, $51, $e6, $a1, $e5, $51, $e6, $a1, $e5, $51, $e6, $a1, $e5
	db $51, $e6, $b1, $e5, $41, $e6, $b1, $e5, $41, $e6, $b1, $e5, $41, $e6, $b1, $e5
	db $41, $e6, $b1, $e5, $41, $e6, $b1, $e5, $41, $e6, $b1, $e5, $41, $e6, $b1, $e5
	db $41, $e6, $91, $e5, $41, $e6, $91, $e5, $41, $e6, $91, $e5, $41, $e6, $91, $e5
	db $41, $e6, $91, $e5, $41, $e6, $91, $e5, $41, $e6, $91, $e5, $41, $e6, $91, $e5
	db $41, $e6, $a1, $e5, $51, $e6, $a1, $e5, $51, $e6, $a1, $e5, $51, $e6, $a1, $e5
	db $51, $e6, $a1, $e5, $51, $e6, $a1, $e5, $51, $e6, $a1, $e5, $51, $e6, $a1, $e5
	db $51, $e6, $91, $e5, $41, $e6, $91, $e5, $41, $e6, $91, $e5, $41, $e6, $91, $e5
	db $41, $e6, $91, $e5, $41, $e6, $91, $e5, $41, $e6, $91, $e5, $41, $e6, $91, $e5
	db $41, $e6, $a1, $e5, $51, $e6, $a1, $e5, $51, $e6, $a1, $e5, $51, $e6, $a1, $e5
	db $51, $e6, $a1, $e5, $51, $e6, $a1, $e5, $51, $e6, $a1, $e5, $51, $e6, $a1, $e5
	db $51, $e6, $a3, $e5, $53, $e6, $a3, $e5, $53, $e6, $a3, $e5, $43, $e6, $a3, $e5
	db $43, $e6, $a3, $e5, $23, $e6, $a3, $e5, $23, $e6, $a3, $e5, $43, $e6, $a3, $e5
	db $43, $e6, $a3, $e5, $53, $e6, $a3, $e5, $53, $e6, $a3, $e5, $43, $e6, $a3, $e5
	db $43, $e6, $a3, $e5, $23, $e6, $a3, $e5, $23, $e6, $a3, $e5, $43, $e6, $a3, $e5
	db $43, $e6, $91, $e5, $41, $41, $e6, $91, $e5, $41, $41, $e6, $91, $e5, $41, $41
	db $e6, $91, $e5, $41, $41, $e6, $91, $e5, $41, $41, $e6, $b1, $91, $e5, $41, $41
	db $e6, $91, $e5, $41, $41, $e6, $91, $e5, $41, $41, $e6, $91, $e5, $41, $41, $e6
	db $91, $e5, $41, $41, $e6, $b1, $91, $e5, $41, $e6, $91, $e5, $41, $e6, $91, $e5
	db $41, $e6, $91, $e5, $41, $e6, $91, $e5, $41, $e6, $91

	push hl
	ld b, c
	and $91
	push hl
	ld b, c
	and $91
	push hl
	ld b, c
	and $a1
	push hl
	ld d, c
	and $a1
	push hl
	ld d, c
	and $a1
	push hl
	ld d, c
	and $a1
	push hl
	ld d, c
	and $a1
	push hl
	ld d, c
	and $a1
	push hl
	ld d, c
	and $a1
	push hl
	ld d, c
	and $a1
	push hl
	ld d, c
	and $b1
	push hl
	ld h, c
	and $b1
	push hl
	ld h, c
	and $b1
	push hl
	ld h, c
	and $b1
	push hl
	ld h, c
	and $b1
	push hl
	ld h, c
	and $b1
	push hl
	ld h, c
	and $b1
	push hl
	ld h, c
	and $b1
	push hl
	ld h, c
	ld bc, $0171
	ld [hl], c
	ld bc, $0171
	ld [hl], c
	ld bc, $6171
	ld b, c
	ld h, c
	ld b, c
	ld hl, $fe01
	nop
	add d
	ld e, d

	db $ed, $00, $68, $f0, $77, $ec, $03, $ea, $06, $34, $e8, $dc, $b3, $e4, $00, $e5
	db $b0, $a0, $90, $a0, $90, $80, $70, $80, $70, $60, $50, $60, $50, $40, $30, $40
	db $30, $20, $10, $20, $10, $00, $e6, $b0, $e5, $00, $e6, $b0, $a0, $90, $a0, $b0
	db $e5, $00, $10, $dc, $b1, $75, $45, $3b, $1d, $45, $39, $dc, $4f, $19, $dc, $b1
	db $75, $45, $3b, $1d, $45, $39, $19, $dc, $b3, $10, $20, $10, $00, $10, $20, $10
	db $00, $10, $20, $30, $20, $10, $00, $e6, $b0, $e5, $00, $10, $20, $30, $20, $10
	db $20, $30, $20, $10, $20, $30, $40, $50, $40, $30, $20, $10, $20, $30, $40, $50
	db $60, $70, $80, $90, $80, $70, $60, $50, $40, $30, $20, $10, $20, $30, $40, $50
	db $60, $70, $60, $50, $40, $30, $40, $50, $60, $70, $80, $90, $20, $30, $40, $30
	db $20, $10, $20, $30, $40, $30, $20, $10, $20, $30, $40, $30, $20, $10, $20, $30
	db $40, $30, $20, $10, $20, $30, $40, $50, $60, $50, $40, $30, $20, $30, $40, $30
	db $20, $10, $20, $30, $40, $30, $20, $10, $20, $30, $40, $30, $20, $10, $20, $30
	db $40, $30, $20, $10, $20, $30, $40, $50, $60, $50, $40, $10, $20, $30, $40, $50
	db $60, $70, $80, $90, $80, $70, $60, $50, $40, $30, $20, $10, $20, $30, $40, $50
	db $60, $70, $80, $90, $80, $70, $60, $50, $40, $30, $20, $10, $20, $30, $40, $50
	db $60, $70, $80, $90, $80, $70, $60, $50, $40, $30, $20, $10, $20, $30, $40, $50
	db $60, $70, $60, $50, $40, $30, $40, $50, $60, $70, $80, $dc, $b5, $23, $03, $23
	db $53, $45, $25, $53, $dc, $b7, $9f, $7f, $dc, $b5, $23, $03, $23, $53, $75, $95
	db $b3, $dc, $b7, $e4, $0f, $dc, $3f, $7f, $dc, $b5, $e5, $0b, $01, $c1, $21, $01
	db $cb, $1b, $11, $c1, $51, $dc, $a3, $35, $dc, $a7, $17, $fe, $00, $c6, $5d, $ec
	db $03, $ea, $08, $25, $dc, $c3, $e4, $70, $60, $50, $e3, $70, $e4, $70, $60, $50
	db $e3, $70, $e4, $70, $60, $50, $e3, $70, $e4, $70, $60, $50, $e3, $70, $e4, $70
	db $60, $50, $e3, $70, $e4, $70, $60, $50, $e3, $70, $e4, $70, $60, $50, $e3, $70
	db $e4, $70, $60, $50, $e3, $70, $dc, $c2, $e4, $75, $e5, $75, $7b, $7d, $75, $79
	db $dc, $90, $69, $dc, $c2, $75, $75, $7b, $7d, $75, $79, $79, $dc, $c5, $75, $65
	db $43, $75, $95, $73, $e4, $8b, $71, $c1, $81, $71, $c3, $dc, $b7, $e3, $17, $dc
	db $c5, $e4, $05, $e5, $a5, $83, $e4, $15, $05, $e5, $a3, $e4, $55, $45, $23, $dc
	db $c7, $e5, $a3, $e4, $03, $23, $53, $dc, $c0, $8f, $dc, $b0, $8f, $dc, $4e, $7f
	db $dc, $c7, $7f, $e5, $57, $a7, $e4, $27, $57, $dc, $c0, $4f, $dc, $c7, $4f, $e5
	db $57, $a7, $e4, $27, $57, $dc, $c0, $7f, $dc, $3f, $e3, $0f, $dc, $c5, $e4, $4b
	db $41, $c1, $51, $dc, $c1, $43, $dc, $c5, $c9, $5b, $51, $c1, $81, $dc, $a3, $75
	db $dc, $c7, $57, $fe, $00, $0b, $5f, $ea, $00, $20, $dc, $11, $e4, $10, $c0, $10
	db $00, $20, $c0, $20, $00, $30, $c0, $30, $00, $40, $c0, $40, $00, $50, $c0, $50
	db $00, $60, $c0, $60, $00, $70, $c0, $70, $00, $e5, $a1, $b1, $e4, $01, $71, $01
	db $71, $01, $71, $01, $71, $01, $71, $01, $71, $01, $71, $01, $71, $11, $81, $13
	db $81, $a1, $81, $71, $11, $81, $13, $81, $a1, $81, $51, $fe, $02, $9b, $5f, $01
	db $71, $01, $71, $01, $71, $01, $71, $01, $71, $01, $71, $01, $71, $01, $71, $8b
	db $71, $c1, $81, $71, $c3, $51, $41, $21, $11, $01, $71, $01, $71, $01, $71, $01
	db $71, $01, $71, $01, $71, $01, $71, $01, $71, $01, $71, $01, $71, $01, $71, $01
	db $71, $01, $71, $01, $71, $01, $71, $01, $71, $11, $81, $11, $81, $11, $81, $11
	db $81, $11, $81, $11, $81, $11, $81, $11, $81, $01, $71, $01, $71, $01, $71, $01
	db $71, $01, $71, $01, $71, $01, $71, $01, $71, $e5, $a1, $e4, $51, $e5, $a1, $e4
	db $51, $e5, $a1, $e4, $51, $e5, $a1, $e4, $51, $e5, $a1, $e4, $51, $e5, $a1, $e4
	db $51, $e5, $a1, $e4, $51, $e5, $a1, $e4, $51, $01, $71, $01, $71, $01, $71, $01
	db $71, $01, $71, $01, $71, $01, $71, $01, $71, $01, $51, $01, $51, $01, $51, $01
	db $51, $01, $51, $01, $51, $01, $51, $01, $51, $01, $71, $01, $71, $01, $71, $01
	db $71, $01, $71, $01, $71, $01, $71, $01, $71, $01, $71, $01, $71, $01, $71, $01
	db $71, $01, $71, $01, $71, $01, $71, $01, $71, $11, $81, $11, $81, $11, $81, $11
	db $81, $11, $81, $11, $81, $11, $81, $11, $81, $fe, $00, $be, $5f

	db $ed
	nop
	ld [hl], b
	ldh a, [rPCM34]
	db $ec
	inc bc
	ld [$3406], a
	add sp, -$24
	or d
	push hl
	ld h, b
	ld d, b
	ld h, b
	ld [hl], b
	ld h, b
	ld [hl], b

jr_008_60a0:
	add b
	ld [hl], b
	call c, $80a2
	sub b
	add b
	sub b
	and b
	sub b
	and b
	or b
	call c, $a092
	or b
	db $e4
	nop
	push hl
	or b
	db $e4
	nop
	stop
	db $10
	call c, $2082
	db $10
	jr nz, jr_008_60ef

	jr nz, @+$32

	ld b, b
	jr nc, jr_008_60a0

	pop bc
	push hl
	ld b, b
	ld b, [hl]
	ld d, b
	ld d, [hl]
	ld [hl], b
	db $76
	ld d, b
	ld d, [hl]
	ld b, b
	ld b, [hl]
	ld d, b
	ld d, [hl]
	ld [hl], b
	db $76
	add b
	add d
	inc sp
	call c, $40c1
	ld b, d
	call c, Call_008_43b3
	call c, Call_008_50c1
	ld d, d
	call c, $53b3
	call c, $70c1
	ld [hl], d
	call c, Call_008_73b3
	call c, Call_008_50c1

jr_008_60ef:
	ld d, d
	call c, $53b3
	call c, $40c1
	ld b, d
	call c, Call_008_43b3
	call c, Call_008_50c1
	ld d, d
	call c, $53b3
	call c, $70c1
	ld [hl], d
	call c, Call_008_73b3
	call c, $80c1
	add d
	call c, $33b7
	call c, $e5b7
	ld b, e
	or e
	inc sp
	and e
	inc hl
	sub e
	and $b3
	push hl
	ld h, e
	ld d, e
	ld h, e
	call c, Call_008_61b1
	ld d, b
	ld h, b
	sub b
	ld h, c
	ld h, b
	call c, $e6b7
	or l
	call c, $e5a0
	dec h
	call c, $63b7
	ld b, e
	or e
	inc sp
	and e
	inc hl
	sub e
	and $b3
	push hl
	ld h, e
	ld d, e
	ld l, e
	and e
	call c, $bb5e
	call c, Call_008_42b2
	ld b, d
	ld b, c
	ld b, b
	ld h, b
	ld b, b
	or b
	ld h, b
	ld b, b
	ld h, b
	or b
	ld h, b
	ld b, b
	ld h, b
	or b
	ld h, b
	ld b, b
	ld h, b
	or b
	ld h, b
	call c, Call_008_40c2
	ld h, b
	or b
	ld h, b
	call c, Call_008_40d2
	ld h, b
	or b
	call c, $40c1
	ld b, [hl]
	ld b, b
	ld b, [hl]
	ld b, b
	ld b, [hl]
	ld b, b
	ld b, [hl]
	ld b, b
	ld b, d
	call c, $23b5
	call c, $40c1
	ld b, d
	call c, Call_008_53b5
	call c, $40c1
	ld b, d
	call c, $23b5
	call c, $40c1
	call c, $46b7
	call c, Call_008_41c1
	or b
	sub b
	ld b, c
	or b
	sub b
	ld b, c
	or b
	sub b
	ld b, c
	or b
	sub d
	ld b, b
	ld [hli], a
	ld b, b
	ld [hli], a
	ld b, b
	ld [hli], a
	ld b, b
	jr nz, @+$53

	db $e4
	nop
	push hl
	or b
	ld d, c
	db $e4
	nop
	push hl
	or b
	ld d, c
	db $e4
	nop
	push hl
	or b
	ld d, c
	db $e4
	nop
	push hl
	or d
	ld d, b
	ld b, d

Call_008_61b1:
	ld d, b
	ld b, d
	ld d, b
	ld b, d
	ld d, b
	ld b, b
	ld h, c
	db $e4
	stop
	push hl
	ld h, c
	db $e4
	stop
	push hl
	ld h, c
	db $e4
	stop
	push hl
	ld h, c
	db $e4
	db $10
	ld [bc], a
	push hl
	ld h, b
	ld d, d
	ld h, b
	ld d, d
	ld h, b
	ld d, d
	ld h, b
	ld d, d
	ld h, b
	ld d, d
	ld h, b
	ld d, d
	ld h, b
	ld d, d
	call c, $e4b7
	ld bc, $b0dc
	rla
	call c, $17b7
	call c, $e5a0
	ld h, a
	ld h, a
	call c, $e5b0
	sub a
	call c, $97b7
	ld [hl], e
	cp e
	call c, $97b0
	call c, $97b7
	call c, $47b0
	call c, Call_008_47b7
	call c, $a7b0
	call c, $a7b7
	db $e4
	ld d, a
	push hl
	and a
	db $e4
	inc de
	ld c, e
	push hl
	sub e
	db $e4
	dec de
	call c, $fd40
	or $63
	db $fd
	or $63
	call c, $e5b7
	ld b, e
	or e
	inc sp
	and e
	inc hl
	sub e
	and $b3
	push hl
	ld h, e
	ld d, e
	ld l, e
	call c, $97b0
	ld [hl], a
	call c, $43b7
	or e
	inc sp
	and e
	inc hl
	sub e
	and $b3
	push hl
	ld h, e
	ld d, e
	ld l, e
	call c, $97b0
	call c, $e4b7
	rlca
	call c, $e5b0
	or a
	call c, $b7b7
	call c, $e4b0
	ld b, a
	call c, Call_008_47b7
	cp $00

jr_008_624e:
	rrca
	ld h, c

jr_008_6250:
	db $ec
	inc bc
	ld [$2508], a
	call c, $e3c2
	nop
	db $e4
	add b
	or b
	ld h, b
	sub b
	ld b, b
	ld [hl], b
	db $e3
	nop
	db $e4
	ld d, b
	db $10
	ld b, b
	nop
	jr nc, jr_008_624e

	or b
	db $e4
	jr nz, jr_008_6250

	nop
	db $e4
	nop
	push hl
	add b
	or b
	ld h, b
	and b
	ld d, b
	sub b
	db $e3
	nop
	push hl
	add b
	jr nc, jr_008_62ed

	jr nz, jr_008_62cf

	db $10
	ld b, b
	db $e3
	nop
	call c, $e4c1
	ld b, b
	ld b, [hl]
	ld b, b
	ld b, [hl]
	ld b, b
	ld b, [hl]
	ld b, b
	ld b, [hl]
	ld b, b
	ld b, d
	call c, $e3c2
	ld b, e
	call c, $e4c1
	ld b, b
	ld b, d
	call c, $e3c2
	ld b, e
	call c, $e4c1
	ld b, b
	ld b, d
	call c, $e3c2
	ld b, e
	call c, $e4c1
	ld b, b
	ld b, d
	call c, $33c2
	db $fd
	ld [$fd63], a
	ld [$fd63], a
	ld [$fd63], a
	ld [$fd63], a
	ld [$fd63], a
	ld [$fd63], a
	ld [wdc63], a
	pop bc
	db $e4
	ld b, b
	ld b, d
	call c, $e54a
	add e
	call c, $e4d7

jr_008_62cf:
	ld b, a
	scf
	daa
	push hl
	or a
	call c, $a3d7
	cp e
	call c, Call_008_51b1
	ld h, d
	sub b
	or b
	sub b
	db $e4
	nop
	push hl
	or c
	sub b
	or b
	or b
	sub b
	and b
	call c, $e4d7
	ld b, a
	scf

jr_008_62ed:
	daa
	push hl
	or a
	call c, $a3d7
	cp e
	db $e4
	inc sp
	ld c, e
	call c, $e5a0
	or a
	db $e4
	daa
	ld d, a
	daa
	call c, Call_008_40d1
	ld b, d
	call c, $e5c4
	inc hl
	call c, $e4d1
	ld b, b
	ld b, d
	call c, $e5c4
	ld d, e
	call c, $e4d1
	ld b, b
	ld b, d
	call c, $e5c4
	inc hl
	call c, $e4d1
	ld b, b
	ld b, b
	call c, $e6c4
	or e
	push hl
	ld hl, $c2dc
	db $e4
	ld b, b
	ld b, b
	jr nz, jr_008_636b

	ld d, b
	ld b, b
	jr nz, jr_008_637f

	ld b, b
	ld b, b
	ld h, b
	ld d, b
	ld b, b
	jr nc, @+$42

	ld h, b
	ld b, b
	ld b, b
	ld d, b
	ld b, b
	jr nz, jr_008_634d

	jr nz, jr_008_636f

	ld b, b
	ld b, b
	call c, $e6c4
	or e
	push hl
	ld hl, wd7dc
	db $e4
	ld b, e
	ld d, c
	ld l, e

jr_008_634d:
	call c, $e5c2
	or c
	or e
	or c
	or e
	or c
	call c, $e4d7
	ld d, e
	ld h, c
	ld a, e
	call c, $01c2
	inc bc
	ld bc, $0103
	call c, Call_008_63d7
	ld [hl], c
	adc e
	call c, $1182
	inc de

jr_008_636b:
	call c, $11a2
	inc de

jr_008_636f:
	inc de
	call c, $11d2
	inc de
	call c, $11f2
	inc de
	call c, $40c4
	ld d, b
	call c, $6bc0

jr_008_637f:
	call c, Call_008_63c7
	call c, $e51f
	ld h, a
	call c, Call_008_6790
	call c, $e4c7
	inc de
	call c, $2bc0
	daa
	call c, $27c7
	call c, Call_008_47c0
	call c, $47c7
	call c, $e5c0
	sub a
	call c, $97c7
	call c, $e4c0
	ld d, a
	call c, $57c7
	db $e3
	rlca
	db $e4
	and a
	call c, $9fc0
	sub a
	call c, $97c7
	call c, $fdc5
	or $63
	call c, $fdb1
	or $63
	call c, $e4d7
	ld b, a
	scf
	daa
	push hl
	or a
	and e
	cp e

Call_008_63c7:
	call c, $e4c7
	daa
	call c, $074c
	call c, $47d7
	scf
	daa
	push hl
	or a
	and e
	cp e

Call_008_63d7:
	call c, $e45d
	daa
	call c, $57c0
	call c, Call_008_47c0
	call c, $47c7
	and e
	cp e
	cp $00
	call z, $e462
	ld b, b
	ld b, b
	ld [hl], b
	db $e3
	nop
	ld b, b
	nop
	db $e4
	ld [hl], b
	ld d, b
	rst $38
	db $e4
	ld hl, $e511
	or c
	db $e4
	ld de, $1121
	ld h, c
	ld hl, wdcff
	ld de, $43e4
	db $e3
	ld b, e
	db $e4
	ld d, e
	db $e3
	inc sp
	db $e4
	ld [hl], e
	db $e3
	inc hl
	db $e4
	add e
	or e
	ld b, b
	ld b, b
	push bc
	ld b, b
	ld b, b
	push bc
	ld b, b
	ld b, b
	push bc
	ld b, b
	ld b, b
	pop bc
	inc sp
	ld b, b
	ld b, b
	pop bc
	or e
	ld b, b
	ld b, b
	pop bc
	db $e3
	inc bc
	db $e4
	ld b, b
	ld b, b
	pop bc
	db $e3
	inc hl

jr_008_642f:
	db $e4
	ld b, b
	ld b, b
	db $e3
	inc bc
	db $e4

jr_008_6435:
	and c
	ld b, b
	ld b, b
	pop bc
	or e
	ld b, b
	ld b, b
	pop bc
	db $e3
	inc bc
	db $e4
	ld b, b
	ld b, b
	pop bc
	db $e3
	inc hl
	db $e4
	ld b, b
	ld b, b
	db $e3
	inc bc
	ld hl, $40e4
	ld b, b
	pop bc
	or e
	ld b, b

jr_008_6451:
	ld b, b
	pop bc
	db $e3
	inc bc
	db $e4
	ld b, b

jr_008_6457:
	ld b, b
	pop bc
	db $e3
	inc hl
	db $e4
	ld b, b
	ld b, b
	pop bc
	ld b, b
	jr nc, @+$42

	ld [hl], b
	db $e4

jr_008_6464:
	ld b, b
	push hl
	ld b, b
	pop bc
	db $e4
	ld h, e

jr_008_646a:
	jr nc, jr_008_6451

	jr nc, jr_008_642f

	db $e4
	ld d, e
	jr nz, jr_008_6457

	jr nz, jr_008_6435

	db $e4
	ld b, e
	ld h, b
	push hl
	ld h, b
	pop bc
	db $e4
	ld h, e
	ld d, e
	push hl
	or c
	db $e4
	ld h, c
	push hl
	or c
	db $e4
	ld h, c
	push hl

jr_008_6486:
	or c
	db $e4
	ld h, c
	push hl
	or c
	db $e4

jr_008_648c:
	ld h, c
	push hl
	or c
	db $e4
	ld h, c
	push hl
	or c
	db $e4
	ld h, c
	push hl
	or c
	db $e4
	ld h, c
	ld b, b
	push hl
	ld b, b
	pop bc
	db $e4
	ld h, e
	jr nc, jr_008_6486

	jr nc, jr_008_6464

	db $e4
	ld d, e
	jr nz, jr_008_648c

	jr nz, jr_008_646a

	db $e4
	ld b, e
	ld h, b
	push hl
	ld h, b
	pop bc
	db $e4
	ld h, e
	ld d, e
	push hl
	or c
	db $e4
	ld h, c
	push hl
	or c
	db $e4
	ld h, c
	push hl
	or c
	db $e4
	ld h, c
	ld b, b
	jr nc, @+$42

	ld h, b
	ld b, c
	or c
	ld b, c
	or c
	ld b, c
	or c
	ld b, c
	or c
	ld b, c
	or c
	ld b, c
	or c
	ld b, c
	or c
	ld b, c
	or c
	ld b, c
	or c
	ld b, c
	or c
	ld b, c
	or c
	ld b, b
	ld b, b
	pop bc
	inc hl
	ld b, b
	ld b, b
	pop bc
	ld d, e
	ld b, b
	ld b, b
	pop bc
	inc hl
	ld b, b
	ld b, b
	push hl
	or l
	db $e4
	ld b, b
	ld b, b
	pop bc
	inc hl
	ld b, b
	ld b, b
	pop bc
	ld d, e
	ld b, b
	ld b, b
	pop bc
	inc hl
	ld b, b
	ld b, b
	push hl
	or l
	db $e4
	ld b, c
	db $e3
	ld hl, $41e4
	db $e3
	ld hl, $41e4
	db $e3
	ld hl, $41e4
	db $e3
	ld hl, $41e4
	or c
	or c
	ld b, c
	or c
	or c
	db $e3
	ld de, $b1e4
	ld d, c
	db $e3
	ld sp, $51e4
	db $e3
	ld sp, $51e4
	db $e3
	ld sp, $51e4
	db $e3
	ld sp, $51e4
	db $e3
	ld bc, $e401
	ld d, c
	db $e3
	ld bc, $2101
	ld bc, $61e4
	db $e3
	ld b, c
	db $e4
	ld h, c
	db $e3
	ld b, c
	db $e4
	ld h, c
	db $e3
	ld b, c
	db $e4
	ld h, c
	db $e3
	ld b, c
	db $e4
	ld h, c
	db $e3
	ld de, $e411
	ld h, c
	db $e3
	ld de, $4111
	ld de, $61e4
	db $e3
	ld de, $e411
	ld h, c
	db $e3
	ld de, $4111
	ld de, $41fd
	ld h, [hl]
	db $fd
	ld b, c
	ld h, [hl]
	db $e4
	ld [hl], c
	db $e3
	ld hl, $71e4
	db $e3
	ld hl, $71e4
	db $e3
	ld hl, $71e4
	db $e3
	ld hl, $71e4
	db $e3
	ld hl, $71e4
	db $e3
	ld hl, $71e4
	db $e3
	ld hl, $70e4
	ld h, b
	ld [hl], b
	add b
	db $fd
	ld d, d
	ld h, [hl]
	db $fd
	ld d, d
	ld h, [hl]
	db $e4
	and c
	db $e3
	ld d, c
	db $e4
	and c
	db $e3
	ld d, c
	db $e4
	and c
	db $e3
	ld d, c
	db $e4
	and c
	db $e3
	ld d, c
	db $e4
	and c
	db $e3

Call_008_6597:
	ld d, c
	ld [hl], c
	ld d, c
	ld b, c
	ld hl, $e411
	and c
	sub c
	db $e3
	ld de, $91e4
	db $e3
	ld de, $91e4
	db $e3
	ld de, $91e4
	db $e3
	ld de, $91e4

Call_008_65b0:
	db $e3
	ld de, $91e4
	db $e3
	ld de, $91e4
	db $e3
	ld de, $91e4
	add c
	ld [hl], c
	db $e3
	ld hl, $71e4
	db $e3
	ld hl, $71e4
	db $e3
	ld hl, $71e4
	db $e3
	ld hl, $71e4
	db $e3
	ld hl, $71e4
	db $e3
	ld hl, $71e4
	db $e3
	ld hl, $70e4
	ld h, b
	ld [hl], b
	add b
	ld b, c
	sub c
	ld b, c
	sub c
	ld b, c
	sub c
	ld b, c
	sub c
	ld b, c
	sub c
	ld b, c
	sub c
	ld b, c
	ld d, c
	ld h, c
	ld [hl], c
	ld h, c
	or c
	ld h, c
	or c
	ld h, c
	or c
	ld h, c
	or c
	ld h, c
	or c
	ld h, c
	or c
	ld h, c
	or c
	ld h, c
	ld sp, $b141
	ld b, c
	or c
	ld b, c
	or c
	ld b, c
	or c
	ld b, c
	or c
	ld b, c
	or c
	ld b, c
	ld d, c
	ld h, c
	ld [hl], c
	ld h, c
	db $e3
	ld hl, $61e4
	db $e3
	ld hl, $61e4
	db $e3
	ld hl, $61e4
	db $e3
	ld hl, $61e4
	db $e3
	ld hl, $61e4
	db $e3
	ld hl, $61e4
	db $e3
	ld hl, $61e4
	ld d, c
	ld b, c
	or c
	db $e3
	ld b, e
	db $e4
	ld b, c
	or c
	db $e3
	inc sp
	db $e4
	ld b, c
	or c
	db $e3
	inc hl
	db $e4
	ld b, c
	sub c
	or e
	cp $00
	ld h, e
	ld h, h
	db $e4
	ld h, c
	db $e3
	ld de, $61e4
	db $e3
	ld de, $61e4
	db $e3
	ld de, $61e4
	db $e3
	ld de, $e4ff
	sub c
	db $e3
	ld b, c
	db $e4
	sub c
	db $e3
	ld b, c
	db $e4
	sub c
	db $e3
	ld b, c
	db $e4
	sub c
	db $e3
	ld b, c
	rst $38

	db $f8, $ed, $01, $00, $f0, $77, $ec, $02, $e8, $d6, $b4, $e4, $53, $d4, $b2, $01
	db $51, $01, $d6, $b3, $31, $31, $41, $d6, $b4, $57, $ff, $f8, $ea, $04, $22, $ec
	db $02, $d6, $c4, $e4, $93, $d4, $c2, $91, $91, $91, $d6, $c4, $a1, $a1, $a1, $d6
	db $c4, $97, $ff, $f8, $d6, $10, $e3, $93, $d4, $10, $50, $c0, $50, $c0, $50, $c0
	db $d6, $10, $70, $c0, $30, $c0, $70, $c0, $97, $ff

jr_008_66ad:
	ld hl, sp-$13

jr_008_66af:
	ld bc, $f000
	ld [hl], a
	db $ec
	ld [bc], a
	add sp, -$2b
	or h
	db $e4
	inc hl
	inc bc
	push hl
	sub a
	push de
	or d
	db $e4
	ld sp, $2131
	ld bc, $e501
	and c
	push de
	or h
	db $e4
	rlca
	rst $38
	ld hl, sp-$16
	ld [$ec27], sp
	ld [bc], a
	push de
	push bc
	db $e4
	sub e
	ld d, e
	rlca
	push de
	jp nz, $a1a1

	and c
	ld [hl], c
	ld [hl], c
	and c
	push de
	call nz, $ff97
	ld hl, sp-$2b
	db $10
	db $e3
	ld d, e
	inc sp
	rlca
	jr nc, jr_008_66ad

	jr nc, jr_008_66af

	ld b, b
	ret nz

	ld d, b
	ret nz

	ld d, b
	ret nz

	ld [hl], b
	ret nz

	sub a
	rst $38

	db $f8, $ed, $01, $00, $f0, $77, $ec, $03, $e8, $d6, $b2, $e5, $41, $61, $81, $80
	db $80, $b1, $e4, $11, $31, $30, $30, $d6, $b5, $47, $ff, $f8, $ec, $02, $d6, $c2
	db $e4, $81, $80, $80, $41, $40, $40, $b1, $b0, $b0, $91, $90, $90, $d6, $c5, $87
	db $ff, $f8, $d6, $10, $e4, $b1, $c1, $e3, $11, $c1, $31, $c1, $61, $71, $83, $ff
	db $ed, $00, $e0, $f0, $77, $ec, $02, $e8, $ed, $00, $e0, $d4, $a2, $e4, $21, $ed
	db $00, $e0, $d4, $a2, $21, $21, $21, $e5, $91, $e4, $21, $d4, $b3, $6b, $ec, $01
	db $ed, $00, $e0, $d4, $63, $e5, $95, $62, $92, $b5, $82, $b2, $e4, $12, $e5, $b2
	db $92, $72, $92, $b2, $92, $72, $95, $62, $92, $b5, $82, $b2, $e4, $12, $22

	ld b, d
	ld h, d
	ld [de], a
	push hl
	or d
	sub d
	db $e4
	ld [de], a
	push hl
	sub l
	ld h, d
	sub d
	or l
	add d
	or d
	db $e4
	dec b
	push hl
	sub d
	db $e4
	ld [bc], a
	ld [hli], a
	push hl
	or d

Call_008_6790:
	db $e4
	dec h
	ld [de], a
	push hl
	or d
	sub d
	ld [hl], d
	ld h, d
	ld [hl], d
	sub d
	or d
	sub d
	ld [hl], d
	ld h, d
	ld b, d
	ld h, d
	ld [hl], d
	sub d
	or d
	cp $00
	ld e, h
	ld h, a

	db $ec, $02, $d4, $c3, $e4, $91, $d4, $c3, $91, $91, $91, $b1, $e3, $11, $d4, $c4
	db $2b, $d4, $85, $e4, $25, $e5, $92, $e4, $22, $45, $e5, $b2, $e4, $42, $62, $72
	db $95, $42, $62, $75, $25, $e5, $92, $e4, $22, $45, $e5, $b2, $e4, $42, $62, $72

	sub l
	ld h, d
	ld [hl], d
	sub l
	dec h
	push hl
	sub d
	db $e4
	ld [hli], a
	ld b, l
	push hl
	or d
	db $e4
	ld b, d
	ld d, l
	ld [bc], a
	ld d, d
	ld [hl], d
	ld [hli], a
	ld [hl], l
	call nc, Call_008_6b70
	call nc, Call_008_6b77
	call nc, Call_008_4b60
	call nc, Call_008_4b67
	cp $00
	cp b
	ld h, a

	db $d4, $10, $e3, $21, $d4, $10, $21, $21, $e4, $b1, $91, $71, $9b, $d4, $21, $62
	db $c2, $62, $c2, $82, $c2, $82, $c2, $92, $c2, $92, $c2, $b2, $c2, $b2, $c2, $62
	db $c2, $62, $c2, $82, $c2, $82, $c2, $92, $c2

	sub d
	jp nz, $12e3

	jp nz, $e412

	sub d
	ld h, d
	db $e3
	ld [hli], a
	db $e4
	ld h, d
	jp nz, $e382

	ld b, d
	db $e4
	add d
	jp nz, $e392

	ld d, d
	db $e4
	sub d
	jp nz, $e3b2

	ld [hl], d
	db $e4
	or d
	and d
	sub d
	jp nz, $c292

	sub d
	jp nz, $e392

	ld [bc], a
	ld [de], a
	jp nz, $c212

	ld [de], a
	jp nz, $e412

	sub d
	cp $00
	ld a, [bc]
	ld l, b

	db $ed, $00, $70, $f0, $77, $f8, $ec, $03, $ea, $06, $34, $e8, $ed, $00, $70, $dc
	db $b7, $e5, $b0, $90, $80, $60, $4b, $dc, $62, $41, $61, $41, $61, $81, $81, $83
	db $91, $91, $93, $81, $81, $83, $41, $61, $41, $61, $81, $81, $83, $91, $91, $93
	db $87, $51, $71, $51, $71, $91, $91, $93, $a1, $a1

	and e
	sub c
	sub c
	sub e
	ld d, c
	ld [hl], c
	ld d, c
	ld [hl], c
	sub c
	sub c
	sub e
	and c
	and c
	and e
	sub a
	cp $00
	ld [hl], c
	ld l, b

	db $f8, $ec, $02, $dc, $c3, $e4, $40, $60, $80, $90, $dc, $c7, $bb, $dc, $82, $e5
	db $b1, $91, $81, $91, $b1, $b1, $b3, $e4, $11, $11, $13, $e5, $b1, $b1, $b3, $b1
	db $91, $81, $91, $b1, $b1, $b3, $e4, $11, $11, $13, $e5, $b7, $e4, $01, $e5, $a1
	db $91, $a1, $e4, $01, $01, $03, $21, $21

	inc hl
	ld bc, $0301
	ld bc, $a1e5
	sub c
	and c
	db $e4
	ld bc, $0301
	ld hl, $2321
	rlca
	cp $00
	or h
	ld l, b

	db $f8, $dc, $20, $e3, $40, $c0, $e2, $10, $c0, $e3, $b0, $c0, $e2, $30, $c0, $40
	db $c2, $40, $c2, $e4, $40, $c0, $e3, $40, $c0, $e4, $40, $c0, $e3, $40, $c0, $e4
	db $40, $c2, $e3, $40, $c2, $e4, $60, $c0, $e3, $60, $c0, $e4, $60, $c2, $60, $c0
	db $e3, $30, $c0, $e4, $60, $c0, $40, $c0, $40, $c0, $e3, $40, $c0, $e4, $40, $c0
	db $e3, $40, $c0, $e4, $40, $c2, $e3, $40, $c2, $e4, $60, $c0, $e3, $60, $c0, $e4
	db $60, $c2, $e3, $40, $c2, $e4, $33, $e4, $50, $c0, $e3, $50, $c0, $e4, $50, $c0
	db $e3, $50, $c0, $e4, $50, $c2, $e3, $50, $c2, $e4, $70, $c0, $e3, $70

	ret nz

	db $e4
	ld [hl], b
	jp nz, wc050

	db $e3
	ld d, b
	ret nz

	db $e4
	ld d, b
	ret nz

	ld d, b
	ret nz

	ld d, b
	ret nz

	db $e3
	ld d, b
	ret nz

	db $e4
	ld d, b
	ret nz

	db $e3
	ld d, b
	ret nz

	db $e4
	ld d, b
	jp nz, Jump_008_50e3

	jp nz, $70e4

	ret nz

	db $e3
	ld [hl], b
	ret nz

	db $e4
	ld [hl], b
	jp nz, Jump_008_50e3

	jp nz, $33e4

	cp $00
	rlca
	ld l, c
	db $ed
	nop
	ld [hl], b
	ldh a, [rPCM34]
	db $ec
	inc bc
	ld [$3112], a
	add sp, -$13
	nop
	ld [hl], b
	call c, $e4a6
	dec h
	push hl
	sub b
	db $e4
	jr nz, jr_008_6a0f

	jr nz, jr_008_6a0c

	call c, $97a0
	call c, $97a7
	call c, $e5b2
	sub c
	sub c
	ld h, e
	ld [hl], c
	ld [hl], c
	ld b, e
	ld hl, $2141
	ld b, c
	inc hl
	inc hl
	sub c
	sub c
	ld h, e
	ld [hl], c
	ld [hl], c
	ld b, e
	ld hl, $2141
	ld de, $b1dc
	and $b7
	call c, $e5b2
	sub c
	sub c
	ld h, e
	ld [hl], c
	ld [hl], c
	ld b, e
	ld hl, $2141
	ld b, c
	inc hl
	inc hl
	sub c
	sub c
	ld h, e
	ld [hl], c
	ld [hl], c
	ld b, e
	ld hl, $2141
	ld de, $b1dc
	and $b7
	call c, $e597
	dec h
	and $90
	push hl
	jr nz, jr_008_6a5c

	call c, Call_008_65b0
	ld b, b
	ld h, b
	sub a
	call c, $4597
	db $10
	ld b, b
	add a
	call c, $85b0
	ld b, b
	add b
	or a
	call c, $1597
	and $90

jr_008_6a0c:
	push hl
	db $10
	ld b, a

jr_008_6a0f:
	call c, Call_008_45b0
	db $10
	ld b, b
	ld b, e
	ld [hl], e
	call c, Call_008_6790
	ld b, a
	daa
	rla
	call c, $2597
	and $90
	push hl
	jr nz, jr_008_6a8b

	call c, Call_008_65b0
	ld b, b
	ld h, b
	sub a
	call c, $4597
	db $10
	ld b, b
	add a
	call c, $85b0
	ld b, b
	add b
	or a
	call c, $1597
	and $90
	push hl
	db $10
	ld b, a
	call c, Call_008_45b0

jr_008_6a41:
	db $10
	ld b, b
	ld b, e
	ld [hl], e
	call c, Call_008_6597
	ld b, b
	ld h, b
	sub a
	call c, Call_008_77a7
	ld b, a
	cp $00
	or d
	ld l, c
	db $ec
	ld [bc], a
	ld [$2418], a
	call c, $e4c4
	sub l

jr_008_6a5c:
	ld h, b
	sub b
	db $e3
	dec h
	db $e4
	sub b
	db $e3
	jr nz, jr_008_6a41

	or b
	ld h, a
	call c, $67b7
	call c, $e4c2
	ld hl, $e511
	or e
	db $e4
	ld de, $b1e5
	sub e
	or c
	sub c
	ld [hl], c
	ld h, c
	call c, $93c4
	sub e
	call c, $e4c2
	ld hl, $e511
	or e
	db $e4
	ld de, $b1e5
	sub e
	or c

jr_008_6a8b:
	sub c
	ld [hl], c
	ld h, c
	call c, $25c1
	sub $c2
	ld [hl], b
	sub b
	or b
	db $e4
	db $10
	call c, $21c2
	ld de, $b3e5
	db $e4
	ld de, $b1e5
	sub e
	or c
	sub c
	ld [hl], c
	ld h, c
	call c, $93c4
	sub d
	sub $c2
	or b
	db $e4
	db $10
	call c, $21c2
	ld de, $b3e5
	db $e4
	ld de, $b1e5
	sub e
	or c
	sub c
	ld [hl], c
	ld h, c
	call c, $27c1
	call c, $95c7
	ld h, b
	sub b
	call c, $e4b0
	daa
	call c, $27a0
	call c, $2797
	call c, $e5c7
	or l
	add b
	or b
	call c, $e480
	ld b, a
	call c, Call_008_47a0
	call c, $47c7
	push hl
	ld [hl], l
	ld b, b
	ld [hl], b
	call c, $e46f
	rla
	call c, $17c7
	ld h, e
	ld b, e
	call c, $2db0
	push hl
	or c
	call c, $97a0
	call c, $97b7
	call c, $95c7
	ld h, b
	sub b
	call c, $e4b0
	daa
	call c, $27a0
	call c, $2797
	call c, $e5c7
	or l
	add b
	or b
	call c, $e44f
	ld b, a
	call c, $47b0
	call c, $47c7
	push hl
	ld [hl], l
	ld b, b
	ld [hl], b
	call c, $e4b0
	rla
	call c, $17b7
	push hl
	sub e
	db $e4
	inc de
	call c, $2db0
	ld b, c
	dec hl
	call c, $e5c2
	ld [hl], b
	sub b
	or b
	db $e4
	db $10
	cp $00
	ld l, d
	ld l, d
	call c, $ea10
	db $10
	ld [de], a
	db $e4

jr_008_6b3e:
	ld h, l
	jr nz, @+$62

	sub l

jr_008_6b42:
	ld h, b
	sub b
	db $e3
	dec h

jr_008_6b46:
	db $e4
	sub b
	db $e3
	jr nz, jr_008_6bb2

	db $e4
	ld h, b
	ret nz

jr_008_6b4e:
	ld h, b
	ret nz

	ld h, b
	jp nz, wc070

	ld [hl], b
	ret nz

jr_008_6b56:
	ld [hl], b
	jp nz, wc090

	sub b
	ret nz

	sub b
	ret nz

jr_008_6b5e:
	ld [hl], b
	ret nz

	ld h, d
	ret nz

jr_008_6b62:
	ld h, d
	ret nz

	ld h, b
	ret nz

jr_008_6b66:
	ld h, b
	ret nz

	ld h, b
	jp nz, wc070

	ld [hl], b
	ret nz

jr_008_6b6e:
	ld b, b
	ret nz

Call_008_6b70:
	ld b, b
	ret nz

jr_008_6b72:
	ld h, b
	ret nz

	ld h, b
	ret nz

	ld b, b

Call_008_6b77:
	ret nz

	ld b, b
	ret nz

	jr nz, @-$3a

	jr nz, jr_008_6b3e

	ld h, b
	ret nz

	jr nz, jr_008_6b42

	ld h, b
	ret nz

	jr nz, jr_008_6b46

	ld [hl], b
	ret nz

	jr nz, @-$3e

	ld [hl], b
	ret nz

	jr nz, jr_008_6b4e

	sub b
	ret nz

	jr nz, @-$3e

	sub b
	ret nz

	jr nz, jr_008_6b56

	ld [hl], d
	ret nz

	ld [hli], a
	ret nz

	ld h, b
	ret nz

	jr nz, jr_008_6b5e

	ld h, b
	ret nz

	jr nz, jr_008_6b62

	ld [hl], b
	ret nz

	jr nz, jr_008_6b66

	ld [hl], b
	ret nz

	jr nz, @-$3e

	sub b
	ret nz

	jr nz, jr_008_6b6e

	ld [hl], b
	ret nz

	jr nz, jr_008_6b72

jr_008_6bb2:
	ld h, b
	add $21
	sub c
	ld hl, $2191
	sub c
	ld hl, $2191
	sub c
	ld hl, $8191
	ld h, c
	ld b, c
	ld sp, $b141
	ld b, c
	or c
	ld b, c
	or c
	ld b, c
	or c
	ld b, c
	or c
	ld b, c
	or c
	ld b, c
	or c
	ld b, c
	or c
	ld de, $1191
	sub c
	ld de, $1191
	sub c
	ld de, $1191
	sub c
	ld de, $1191
	sub c
	ld hl, $2191
	sub c
	ld hl, $2191
	sub c
	ld hl, $2191
	sub c
	ld hl, $2111
	ld b, c
	ld hl, $2191
	sub c
	ld hl, $2191
	sub c
	ld hl, $2191
	sub c
	add c
	ld h, c
	ld b, c
	ld sp, $b141
	ld b, c
	or c
	ld b, c
	or c
	ld b, c
	or c
	ld b, c
	or c
	ld b, c
	or c
	ld b, c
	or c
	ld b, c
	or c
	ld de, $1191
	sub c
	ld de, $1191
	sub c
	ld de, $1191
	sub c
	ld de, $1191
	sub c
	ld hl, $2191
	sub c
	ld hl, $2191
	sub c
	ld hl, $2191
	sub c
	ld [hl], c
	sub c
	ld [hl], c
	ld b, c
	cp $00
	ld c, e
	ld l, e

	ld a, [wd060]
	cp $ff
	jr z, jr_008_6c65

	bit 7, a
	ret z

	and $7f
	jr nz, jr_008_6c4d

	call Call_008_6c71
	ld a, $1e
	jr jr_008_6c5f

jr_008_6c4d:
	cp $14
	jr nz, jr_008_6c54

	call Call_008_6c76

jr_008_6c54:
	ld a, $86
	ld [wc02a], a
	ld a, [wd060]
	and $7f
	dec a

jr_008_6c5f:
	set 7, a
	ld [wd060], a
	ret


jr_008_6c65:
	xor a
	ld [wd060], a
	ld [wc02a], a
	ld de, $6c8e
	jr jr_008_6c79

Call_008_6c71:
	ld de, $6c86
	jr jr_008_6c79

Call_008_6c76:
	ld de, $6c8a

jr_008_6c79:
	ld hl, $ff10
	ld c, $05
	xor a

jr_008_6c7f:
	ld [hli], a
	ld a, [de]
	inc de
	dec c
	jr nz, jr_008_6c7f

	ret


	db $a0, $e2, $50, $87, $b0, $e2, $ee, $86, $00

	nop
	nop
	add b
	rst $38
	rst $38
	rst $38
	rlca
	adc a
	ld l, a
	rlca
	sub e
	ld l, a
	rlca
	sub a
	ld l, a
	rlca
	sbc e
	ld l, a
	rlca
	sbc a
	ld l, a
	rlca
	or d
	ld l, a
	rlca
	or [hl]
	ld l, a
	rlca
	cp l
	ld l, a
	rlca
	pop bc
	ld l, a
	rlca
	push bc
	ld l, a
	rlca
	ret


	ld l, a
	rlca
	call $076f
	pop de
	ld l, a
	rlca
	push de
	ld l, a
	rlca
	reti


	ld l, a
	rlca
	ldh [$6f], a
	rlca
	rst $20
	ld l, a
	rlca
	db $eb
	ld l, a
	rlca
	rst $28
	ld l, a
	add h
	pop bc
	ld a, b
	dec b
	ret nc

	ld a, b
	rlca
	rst $18
	ld a, b
	add h
	pop de
	ld a, d
	dec b
	db $e4
	ld a, d
	rlca
	rst $30
	ld a, d
	add h
	ld b, [hl]
	ld a, d
	dec b
	ld d, l
	ld a, d
	rlca
	ld h, e
	ld a, d
	add h
	ldh [rPCM34], a
	dec b
	rst $38
	ld [hl], a
	rlca
	ld e, $78
	add h
	adc a
	ld a, e
	dec b
	xor [hl]
	ld a, e
	rlca
	call $847b
	ld l, a
	ld a, c
	dec b
	add d
	ld a, c
	rlca
	sub h
	ld a, c

	db $84, $19, $79, $05, $33, $79, $07, $34, $79, $84

	ld b, a
	ld a, c
	dec b
	ld d, [hl]
	ld a, c
	rlca
	ld h, l
	ld a, c
	add h
	ld e, a
	ld a, e
	dec b
	ld [hl], d
	ld a, e
	rlca
	add l
	ld a, e
	add h
	ld l, c
	db $76
	dec b
	add [hl]
	db $76
	rlca
	and a
	db $76
	add h
	inc b
	ld a, e
	dec b
	inc hl
	ld a, e
	rlca
	ld b, [hl]
	ld a, e
	add h
	sub l
	ld a, c
	dec b
	ret nz

	ld a, c
	rlca
	rst $18
	ld a, c
	add h
	ld hl, sp+$79
	dec b
	rra
	ld a, d
	rlca
	ld b, l
	ld a, d
	add h
	ld h, h
	ld a, d
	dec b
	add e
	ld a, d
	rlca
	or d
	ld a, d

	db $84, $e9, $78, $05, $fc, $78, $07, $0f, $79, $84, $2b, $78, $05, $46, $78, $07
	db $61, $78, $84

	ld [hl], c
	ld a, b
	dec b
	sub h
	ld a, b
	rlca
	or a
	ld a, b
	add h
	ld c, l
	ld [hl], a
	dec b
	ld l, h
	ld [hl], a
	rlca
	adc a
	ld [hl], a
	add h
	ld h, l
	ld a, h
	dec b
	ld a, b
	ld a, h
	rlca
	adc e
	ld a, h

	db $84, $98, $7c, $05, $b3, $7c, $07, $ce, $7c, $84

	pop hl
	ld a, h
	dec b
	ldh a, [$7c]
	rlca
	rst $38
	ld a, h

	db $84, $6f, $7d, $05, $8a, $7d, $07, $a5, $7d, $84

	ld [bc], a
	ld a, h
	dec b
	ld de, $077c
	jr nz, jr_008_6e19

	add h
	cp b
	ld a, l
	dec b
	bit 7, l
	rlca
	sbc $7d
	add h
	ret z

	ld a, [hl]
	dec b
	db $eb
	ld a, [hl]
	rlca
	ld c, $7f
	add h
	ldh [$7b], a
	dec b
	rst $28
	ld a, e
	rlca
	ld bc, $847c
	add hl, sp
	ld a, [hl]
	dec b
	ld d, h
	ld a, [hl]
	rlca
	ld l, a
	ld a, [hl]
	add h
	ld a, [hli]
	ld a, h
	dec b
	ld b, c
	ld a, h
	rlca
	ld e, b
	ld a, h
	add h
	db $eb
	ld a, l
	dec b
	ld c, $7e
	rlca
	add hl, hl
	ld a, [hl]

	db $84, $82, $7e, $05, $9d, $7e, $07, $b8, $7e, $84

	add hl, bc
	ld a, l
	dec b
	inc l
	ld a, l
	rlca
	ld d, e
	ld a, l
	add h
	ld hl, $057f
	inc [hl]
	ld a, a
	rlca
	ld b, a
	ld a, a
	add h
	ld d, h
	ld a, a
	dec b
	ld h, a
	ld a, a
	rlca
	ld a, d
	ld a, a
	add h
	add a
	ld a, a
	dec b
	xor d
	ld a, a
	rlca
	db $cc
	ld a, a

	db $84, $cd, $7f, $05, $e0, $7f, $07, $f3, $7f, $84

	ret nz

	db $76
	dec b
	rst $10
	db $76
	rlca
	ld [$8476], a
	rst $30
	db $76
	dec b
	ld a, [de]
	ld [hl], a
	rlca

jr_008_6e19:
	dec a
	ld [hl], a
	add h
	and l
	ld [hl], a
	dec b
	cp h
	ld [hl], a
	rlca
	db $d3
	ld [hl], a

	db $84, $63, $66, $05, $7e, $66, $06, $96, $66, $84

	xor l
	ld h, [hl]
	dec b
	call z, $0666
	db $e4
	ld h, [hl]

	db $04, $6f, $70, $04

	add b
	ld [hl], b
	inc b
	adc a
	ld [hl], b
	rlca
	ld l, b
	ld [hl], b

	db $04, $55, $70, $44, $bf, $70, $05, $c8, $70, $44, $cf, $70, $07, $da, $70, $44
	db $de, $70, $07, $e5, $70, $07, $ef, $70, $44

	ld de, $0571
	ld [hli], a
	ld [hl], c

	db $84, $f9, $66, $05, $14, $67, $06, $2a, $67, $07

	inc a
	ld [hl], c

	db $04, $40, $71, $04, $4b, $71, $07

	ld d, [hl]
	ld [hl], c
	rlca
	ld e, d
	ld [hl], c
	rlca
	ld e, [hl]
	ld [hl], c
	rlca
	ld l, b
	ld [hl], c
	rlca
	ld [hl], d
	ld [hl], c
	rlca
	ld a, c
	ld [hl], c

	db $07, $86, $71, $07

	sub b
	ld [hl], c

	db $07, $9d, $71, $07

	xor e
	ld [hl], c

	db $07, $b8, $71, $07

	push bc
	ld [hl], c
	rlca
	sbc $71
	rlca
	add sp, $71
	rlca
	push af
	ld [hl], c
	rlca
	db $fc
	ld [hl], c
	rlca
	ld b, $72

	db $07, $0d, $72, $07

	inc d
	ld [hl], d
	rlca
	ld e, $72
	ld b, h
	dec h
	ld [hl], d
	rlca
	ld [hl], $72
	rlca
	ld b, e
	ld [hl], d
	rlca
	ld d, b
	ld [hl], d
	rlca
	ld d, a
	ld [hl], d
	rlca
	ld h, a
	ld [hl], d
	rlca
	ld l, [hl]
	ld [hl], d

	db $44, $7e, $72, $07, $89, $72, $07

	sub b
	ld [hl], d
	rlca
	and b
	ld [hl], d
	add h
	or [hl]
	ld [hl], d
	dec b
	ret


	ld [hl], d
	rlca
	call c, $8472
	rst $20
	ld [hl], d
	dec b
	or $72
	rlca
	dec b
	ld [hl], e
	ld b, h
	db $10
	ld [hl], e
	rlca
	daa
	ld [hl], e
	add h
	dec sp
	ld [hl], e
	dec b
	ld d, [hl]
	ld [hl], e
	rlca
	ld l, l
	ld [hl], e
	ld b, h
	ld a, [hl]
	ld [hl], e
	rlca
	sbc l
	ld [hl], e
	add h
	or h
	ld [hl], e
	dec b
	rst $00
	ld [hl], e
	rlca
	jp c, $8473

	db $eb
	ld [hl], e
	dec b
	ld [bc], a
	ld [hl], h
	rlca
	add hl, de
	ld [hl], h
	add h
	inc h
	ld [hl], h
	dec b
	dec sp
	ld [hl], h
	rlca
	ld d, d
	ld [hl], h
	add h
	ld h, e
	ld [hl], h
	dec b
	ld [hl], d
	ld [hl], h
	rlca
	add c
	ld [hl], h
	add h
	adc h
	ld [hl], h
	dec b

jr_008_6f1e:
	xor e
	ld [hl], h
	rlca
	add $74
	ld b, h
	reti


	ld [hl], h
	dec b
	ldh a, [$74]
	ld b, h
	rlca
	ld [hl], l
	dec b
	ld [de], a
	ld [hl], l
	ld b, h
	add hl, de
	ld [hl], l
	dec b
	jr nc, jr_008_6faa

	add h
	ld b, a
	ld [hl], l
	dec b
	ld d, [hl]

jr_008_6f3a:
	ld [hl], l
	rlca
	ld h, l
	ld [hl], l
	ld b, h
	ld [hl], d

jr_008_6f40:
	ld [hl], l
	dec b
	add d
	ld [hl], l
	add h

jr_008_6f45:
	sub h

jr_008_6f46:
	ld [hl], l
	dec b
	db $d3

jr_008_6f49:
	ld [hl], l
	rlca
	ld [de], a
	db $76

	db $04, $a4, $70, $80

	ld d, [hl]

jr_008_6f52:
	ld d, b
	ld bc, $5287
	ld [bc], a
	push de
	ld d, e

	db $80, $ff, $55, $01, $94, $58, $02, $f6, $59, $80, $7f, $5d, $01, $be, $5e, $02
	db $76, $5f, $80

	adc h
	ld h, b
	ld bc, $6250
	ld [bc], a
	ld [bc], a
	ld h, h

	db $80, $39, $67, $01, $a7, $67, $02, $fb, $67, $80, $5a, $68, $01, $a7, $68, $02
	db $f4, $68, $80

	sub e
	ld l, c
	ld bc, $6a53
	ld [bc], a
	jr c, jr_008_6ffa

	jr nz, jr_008_6f52

	inc sp
	rst $38
	jr nz, jr_008_6f46

	inc sp
	rst $38
	jr nz, jr_008_6f3a

	inc sp
	rst $38
	jr nz, jr_008_6f1e

	inc sp
	rst $38
	daa
	add h
	scf
	ld h, $84
	ld [hl], $25
	add e
	dec [hl]
	inc h
	add e

jr_008_6faa:
	inc [hl]
	inc hl
	add d
	inc sp
	ld [hli], a
	add c
	ld [hld], a
	rst $38
	jr nz, @+$53

	ld a, [hli]
	rst $38
	ld hl, $2b41
	jr nz, @+$63

	ld a, [hli]
	rst $38
	jr nz, jr_008_6f40

	db $10
	rst $38
	jr nz, jr_008_6f45

	inc hl
	rst $38
	jr nz, jr_008_6f49

	dec h
	rst $38
	jr nz, @-$7c

	ld h, $ff
	jr nz, @-$5d

	db $10
	rst $38
	jr nz, @-$5c

	ld de, $20ff
	and d
	ld d, b
	rst $38
	jr nz, @-$5d

	jr jr_008_6ffd

	ld sp, $ff33
	ld [hli], a
	sub c
	jr z, jr_008_7004

	ld [hl], c
	jr @+$01

	jr nz, @-$6d

	ld [hli], a
	rst $38
	jr nz, @+$73

	ld [hli], a
	rst $38
	jr nz, @+$63

	ld [hli], a
	rst $38

	db $05, $70, $15, $70

	dec h
	ld [hl], b
	dec [hl]

jr_008_6ffa:
	ld [hl], b

	db $45, $70

jr_008_6ffd:
	ld d, l
	ld [hl], b
	ld d, l
	ld [hl], b
	ld d, l
	ld [hl], b
	ld d, l

jr_008_7004:
	ld [hl], b

	db $02, $46, $8a, $ce, $ff, $fe, $ed, $dc, $cb, $a9, $87, $65, $44, $33, $22, $11
	db $02, $46, $8a, $ce, $ef, $ff, $fe, $ee, $dd, $cb, $a9, $87, $65, $43, $22, $11

	inc de
	ld l, c
	cp l
	xor $ee
	rst $38
	rst $38
	db $ed
	sbc $ff
	rst $38
	xor $ee
	db $db
	sub [hl]
	ld sp, $4602
	adc d
	call $feef
	sbc $ff
	xor $dc
	cp d
	sbc b
	db $76
	ld d, h
	ld [hld], a
	db $10

	db $01, $23, $45, $67, $8a, $cd, $ee, $f7, $7f, $ee, $dc, $a8, $76, $54, $32, $10
	db $ec, $02, $20, $91, $c0, $07, $20, $81, $d0, $07, $20, $91, $c0, $07, $2c, $a1
	db $d0, $07, $ff

	ld hl, $33e2
	jr z, @-$1d

	ld [hli], a
	rst $38

	db $ec, $02, $10, $3a, $24, $f2, $00, $02, $10, $22, $28, $e2, $00, $02, $10, $08
	db $ff

	db $ec
	ld [bc], a
	db $10
	rla
	cpl
	ldh a, [$f0]
	inc b
	cpl
	ld a, [c]
	ld d, b
	ld b, $10
	ld [$ecff], sp
	ld [bc], a
	db $10
	inc d
	inc h
	ld a, [c]
	nop
	ld b, $24
	ld a, [c]
	nop
	ld b, $10
	rla
	cpl
	di
	nop
	ld b, $10
	db $08
	rst $38

	db $ec, $00, $20, $d2, $00, $07, $20, $d2, $40, $07, $20, $d2, $80, $07, $20, $d2
	db $c0, $07, $2a, $e1, $e0, $07, $21, $00, $00, $00, $ff, $ec, $02, $10, $2f, $2f
	db $f2, $80, $07, $ff, $ec, $02, $2f, $c2, $82, $07, $ff, $ec, $02, $10, $16, $2f
	db $f2, $00, $04, $10, $08, $ff, $2f, $a2, $22, $ff, $2f, $d1, $00, $02, $10, $08
	db $ff, $24, $f5, $33, $28, $f4, $22, $2f, $f2, $21, $ff, $22, $61, $23, $22, $a1
	db $33, $22, $c1, $33, $22, $51, $11, $22, $f1, $33, $22, $41, $11, $22, $c1, $33
	db $22, $31, $11, $22, $81, $33, $22, $31, $11, $28, $41, $33, $ff

	db $ec
	ld [bc], a
	db $10
	ld b, h
	cpl
	ldh a, [$f0]
	inc b
	db $10
	rla
	cpl
	ld a, [c]
	ld d, b
	ld b, $10
	ld [$ecff], sp
	ld [bc], a
	cpl
	sub d
	nop
	ld b, $2f
	sub d
	add d
	rlca
	rst $38
	ld hl, sp-$16
	db $10
	inc d
	ret c

	db $10
	db $e3
	ld b, d
	ld d, d
	db $76
	sub d
	ld [hl], d
	ld [c], a
	inc c
	rst $38
	ld [hli], a
	and c
	ld [de], a
	rst $38

	db $ec, $01, $10, $af, $2f, $f2, $80, $07, $10, $08, $ff, $ec, $01, $10, $97, $2f
	db $f2, $00, $05, $10, $08, $ff

	ld [hli], a
	and c
	ld [hli], a
	rst $38
	jr z, @-$0d

	ld d, h
	rst $38
	cpl

jr_008_715f:
	adc a
	ld de, $ff24
	ld [de], a
	ld a, [hli]
	pop af
	ld d, l
	rst $38

jr_008_7168:
	cpl
	adc a
	inc [hl]
	jr z, jr_008_715f

	dec [hl]
	ld a, [hli]
	pop af
	ld d, l
	rst $38
	cpl
	sbc a
	inc hl
	jr z, jr_008_7168

	ld hl, $22ff
	pop hl
	ld c, e
	ld a, [hli]
	pop af
	ld b, h
	ld [hli], a
	pop hl
	ld a, [hld]
	ld h, $f1
	inc [hl]
	rst $38

	db $22, $f4, $44, $22, $f4, $14, $2f, $f1, $32, $ff

	inc h
	adc a
	ld d, l
	ld [hli], a
	db $f4
	ld b, h
	jr z, @-$0a

	ld [hli], a
	cpl
	ld a, [c]
	db $21
	rst $38

	db $28, $4f, $23, $24, $c4, $22, $26, $f2, $23, $fe, $04, $9d, $71, $ff

	jr z, jr_008_71fc

	inc sp
	inc h
	call nz, $2622
	ld a, [c]
	inc hl
	cpl
	ld a, [c]
	ld [hli], a
	rst $38

	db $28, $ff, $32, $28, $f4, $43, $28, $f2, $54, $28, $f1, $65, $ff

	ld hl, $33c2
	ld [hli], a
	ld a, [c]
	ld hl, $e221
	inc sp

jr_008_71ce:
	ld hl, $32c2
	ld hl, $1292
	ld hl, $31b2

jr_008_71d7:
	inc l
	sub c
	db $10
	jr z, jr_008_71ce

	ld b, c
	rst $38
	ld hl, $2394
	ld hl, $22b4

jr_008_71e4:
	jr z, jr_008_71d7

	ld b, h
	rst $38
	ld [hli], a
	sub h
	inc sp

jr_008_71eb:
	inc h
	or h
	ld [hli], a
	inc h
	pop af
	ld b, h
	jr z, jr_008_71e4

	ld d, l
	rst $38
	inc h
	rst $38
	ld d, l
	jr z, jr_008_71eb

	ld h, l
	rst $38

jr_008_71fc:
	ld [hli], a
	add h
	ld b, e
	ld [hli], a
	call nz, $2822
	ld a, [c]
	inc [hl]
	rst $38
	inc h
	pop af
	inc [hl]
	cpl
	ld a, [c]
	ld h, h
	rst $38

	db $22, $f1, $22, $2f, $f2, $12, $ff

jr_008_7214:
	ld [hli], a
	jp nz, $2f01

	db $f4
	ld bc, $f22f
	ld bc, $28ff
	pop af
	ld [hld], a
	jr z, jr_008_7214

	inc sp

jr_008_7224:
	rst $38
	db $ec
	nop
	db $10
	ld a, [hld]
	inc h
	ld a, [c]
	nop
	ld [bc], a
	db $10
	ld [hli], a
	jr z, @-$1c

	nop
	ld [bc], a
	db $10
	ld [$20ff], sp
	pop de
	ld b, d
	inc h
	and c
	ld [hld], a
	jr nz, @-$2d

	ld [hli], a
	ld h, $a1
	ld [hld], a
	rst $38
	inc hl
	sub d
	ld sp, $b223
	ld [hld], a
	inc hl
	jp nz, $2833

	pop af
	ld d, h
	rst $38
	inc l
	pop af
	ld d, h
	jr z, @-$0d

	ld h, h

jr_008_7256:
	rst $38
	ld [hli], a
	pop af
	inc sp
	ld [hli], a
	pop bc
	ld [hld], a
	ld [hli], a
	and c
	ld sp, $822f
	ld [hld], a
	jr z, jr_008_7256

	inc [hl]
	rst $38

jr_008_7267:
	ld [hli], a
	jp nc, $2f32

	ld a, [c]
	ld b, e
	rst $38
	ld [hli], a
	ld a, [c]
	ld b, e
	inc h
	or l
	ld [hld], a
	add hl, hl
	add [hl]
	ld sp, $6427
	nop
	cpl
	ld a, [c]
	ld d, l
	rst $38

	db $ec, $01, $10, $97, $2f, $f2, $00, $07, $10, $08, $ff, $2f, $3f, $22, $2f, $f2
	db $21, $ff

	cpl
	ld c, a
	ld b, c
	jr z, jr_008_7224

	ld b, c
	jr z, jr_008_7267

	ld b, c
	jr z, @-$0c

	ld b, d
	cpl
	ld a, [c]
	ld b, c
	rst $38
	ld a, [hli]
	rst $38
	ld d, b
	cpl
	rst $38
	ld d, c
	jr z, @-$0c

	ld d, c
	ld h, $ff
	ld d, d
	ld h, $ff
	ld d, e
	jr z, @+$01

	ld d, h
	cpl
	ld a, [c]
	ld d, h
	rst $38
	db $ec
	ld [bc], a
	cpl
	ccf
	ret nz

	rlca
	cpl
	rst $18
	ret nz

	rlca
	cp $04
	cp h
	ld [hl], d
	cpl
	pop de
	ret nz

	rlca
	rst $38
	db $fc
	or e
	cpl
	cpl
	ret z

	rlca
	cpl
	rst $08
	rst $00
	rlca
	cp $04
	rst $08
	ld [hl], d
	cpl
	pop bc
	ret z

	rlca

jr_008_72db:
	rst $38

jr_008_72dc:
	inc hl
	sub a
	ld [de], a

jr_008_72df:
	inc hl

jr_008_72e0:
	and c
	ld de, $0afe
	call c, $ff72
	db $ec
	nop
	jr nz, jr_008_72dc

	ret nz

	rlca
	jr nz, jr_008_72e0

	nop
	rlca
	cp $0c
	rst $20
	ld [hl], d
	rst $38
	db $fc
	or e
	jr nz, jr_008_72db

	pop bc
	rlca
	jr nz, jr_008_72df

	ld bc, $fe07
	inc c
	or $72
	rst $38
	ld hl, $49d1
	ld hl, $29d1
	cp $06
	dec b
	ld [hl], e
	rst $38
	db $fc
	ret


	dec hl
	di
	jr nz, jr_008_7317

	add hl, hl

jr_008_7317:
	db $d3
	ld d, b
	ld bc, $05fe
	db $10
	ld [hl], e
	jr z, @-$1b

	jr nc, jr_008_7323

	cpl

jr_008_7323:
	jp nz, $0110

	rst $38
	ld a, [hli]
	di
	dec [hl]
	ld l, $f6
	ld b, l
	cp $04
	daa
	ld [hl], e
	inc l
	db $f4

jr_008_7333:
	cp h
	inc l
	push af
	sbc h
	cpl
	db $f4
	xor h
	rst $38
	db $fc
	add hl, sp
	inc h
	db $f4
	nop
	ld b, $23
	call nz, $0500
	dec h
	or l
	nop
	ld b, $2d
	ld [c], a
	ret nz

	ld b, $fe
	inc bc
	dec sp
	ld [hl], e
	jr z, @-$2d

	nop
	ld b, $ff
	db $fc
	adc l
	dec h
	db $e4
	ldh [rTIMA], a
	inc h
	or h
	ldh [rDIV], a
	ld h, $a5
	add sp, $05
	ld l, $d1
	and b
	ld b, $fe
	inc bc
	ld d, [hl]
	ld [hl], e
	rst $38
	dec h
	jp $2333


	sub d
	ld b, e
	ld a, [hli]
	or l
	inc sp
	cpl
	jp $fe32


	ld [bc], a
	ld l, l
	ld [hl], e
	rst $38
	db $fc
	jp nc, $8123

	nop
	inc bc
	inc hl
	pop bc
	nop
	inc b
	inc hl
	pop af
	nop
	dec b
	inc hl
	or c
	nop
	inc b
	inc hl
	ld [hl], c
	nop
	inc bc
	cp $05
	ld a, [hl]
	ld [hl], e
	jr z, @-$7d

	nop
	inc b
	rst $38
	inc hl
	ld h, d
	ld [hli], a
	inc hl
	and d
	ld [hld], a
	inc hl
	jp nc, $2333

	sub d
	inc hl
	inc hl
	ld d, d
	ld [de], a
	cp $05
	sbc l
	ld [hl], e
	jr z, jr_008_7333

	ld [de], a

Call_008_73b3:
	rst $38
	db $fc
	add hl, sp
	cpl
	db $f4
	nop
	dec b
	cpl
	call nz, $0400
	cpl
	ld [c], a
	ret nz

	dec b
	cp $03
	or h
	ld [hl], e
	rst $38
	db $fc
	adc l
	daa
	db $e4
	jr nc, jr_008_73d1

	cpl
	or h
	jr nc, @+$05

jr_008_73d1:
	cpl
	and d
	jr c, jr_008_73d9

	cp $04
	rst $00
	ld [hl], e

jr_008_73d9:
	rst $38
	add hl, hl
	db $f4
	ld b, h
	add hl, hl
	ld a, [c]
	ld b, e
	cpl
	db $f4
	ld b, d
	cpl
	db $f4
	ld b, c
	cp $03
	jp c, $ff73

	db $fc
	and c
	ld a, [hli]
	pop af
	ld b, b
	ld b, $2a
	di
	add b
	ld b, $2a
	ld a, [c]
	jr nz, jr_008_73ff

	cp $04
	db $eb
	ld [hl], e
	ld a, [hli]
	pop af

jr_008_73ff:
	ld b, b
	ld b, $ff
	db $fc
	or e
	ld a, [hli]
	di
	ld [hl], c
	dec b
	daa
	db $e3
	ld sp, $2a05
	pop af
	ld d, c
	dec b
	cp $04
	ld [bc], a
	ld [hl], h
	ld a, [hli]
	pop af
	ld [hl], c
	dec b
	rst $38
	ld [hli], a
	pop de
	ld c, d
	ld [hli], a
	jp nc, $fe2a

	dec d
	add hl, de
	ld [hl], h
	rst $38
	db $ec
	nop
	ld [hli], a
	pop af
	nop
	ld [bc], a
	inc hl
	pop af
	nop
	rlca
	inc h
	pop af
	nop
	dec b
	dec h
	pop af
	ldh a, [rTAC]
	cp $08
	inc h
	ld [hl], h
	rst $38
	db $fc
	or e
	ld [hli], a
	pop hl
	ld [bc], a
	inc bc
	inc hl
	pop hl
	ld a, [c]
	rlca
	inc h
	pop hl
	ld [bc], a
	ld b, $25
	pop hl
	ld [bc], a
	rlca
	cp $08
	dec sp
	ld [hl], h
	rst $38
	ld [hli], a
	db $d3
	db $10
	inc hl

jr_008_7456:
	db $d3
	ld de, wd222

jr_008_745a:
	db $10
	dec h
	jp nc, $fe12

	add hl, bc
	ld d, d
	ld [hl], h

jr_008_7462:
	rst $38
	db $fc
	dec hl
	inc hl
	pop af
	ldh a, [rTAC]
	inc h
	ld a, [c]
	nop
	ld [bc], a
	cp $08
	ld h, e
	ld [hl], h
	rst $38
	db $fc

jr_008_7473:
	or e
	inc h
	ld [c], a
	ld [bc], a

jr_008_7477:
	ld [bc], a
	inc h
	pop hl
	ld [c], a

jr_008_747b:
	rlca
	cp $09
	ld [hl], d

jr_008_747f:
	ld [hl], h
	rst $38
	inc h
	rst $38
	ld b, e
	inc h
	ld a, [c]
	ld b, h
	cp $09
	add c
	ld [hl], h
	rst $38
	db $ec
	ld [bc], a
	db $10
	rst $30
	jr z, jr_008_7456

	cp l
	rlca
	jr z, jr_008_745a

	cp [hl]
	rlca
	jr z, @-$3a

	cp a
	rlca
	jr z, jr_008_7462

	ret nz

	rlca
	cpl
	call nz, $07c1
	cpl
	ld a, [c]
	ret nz

	rlca
	db $10
	ld [$ecff], sp
	ld [bc], a
	jr z, jr_008_7473

	ld [hl], b
	rlca
	jr z, jr_008_7477

	ld h, c
	rlca
	jr z, jr_008_747b

	ld h, d
	rlca
	jr z, jr_008_747f

	ld h, e
	rlca
	cpl
	call nz, $0764
	cpl
	ld a, [c]
	ld h, h
	rlca
	rst $38
	cpl
	ccf
	inc d
	cpl
	rst $08
	inc de
	cpl
	rst $08
	ld [de], a
	cpl
	rst $08
	ld de, wcf2f
	db $10
	cpl
	jp nz, $ff10

	db $ec
	ld [bc], a
	cpl
	rst $38
	ldh [rTAC], a
	cpl
	rst $38
	ldh [rTAC], a
	cpl
	rst $38
	ldh [rTAC], a
	cpl
	rst $38
	ldh [rTAC], a
	cpl
	ld a, [c]
	ldh [rTAC], a
	rst $38
	db $ec
	inc bc
	cpl
	rst $38
	ld [c], a
	rlca
	cpl
	rst $38
	pop hl
	rlca
	cpl
	rst $38
	ld [c], a
	rlca

jr_008_74fe:
	cpl
	rst $38
	pop hl
	rlca
	cpl
	ld a, [c]
	ld [c], a
	rlca
	rst $38

jr_008_7507:
	db $ec
	ld [bc], a
	db $10
	xor a
	jr z, jr_008_74fe

	nop
	rlca
	db $10
	ld [$ecff], sp
	inc bc
	jr z, jr_008_7507

	ld bc, $ff07
	db $ec
	ld [bc], a
	ld h, $f1
	nop
	dec b
	ld h, $f1
	add b
	dec b
	ld h, $f1
	nop
	ld b, $26
	pop af
	add b
	ld b, $28
	pop af
	nop
	rlca
	rst $38
	db $ec
	inc bc
	ld h, $e1
	db $10
	dec b
	ld h, $e1
	sub b
	dec b
	ld h, $e1
	db $10
	ld b, $26
	pop hl
	sub b
	ld b, $28
	pop hl
	db $10
	rlca
	rst $38
	db $fc
	db $ed

jr_008_7549:
	jr z, @+$01

	ld hl, sp+$03
	cpl
	rst $38
	nop
	inc b
	cpl
	di
	nop
	inc b
	rst $38
	db $fc
	or h
	jr z, jr_008_7549

	ret nz

	inc bc
	cpl
	rst $28
	ret nz

	inc bc
	cpl
	db $e3
	ret nz

	inc bc
	rst $38
	inc h
	rst $38
	ld d, c
	jr z, @+$01

	ld d, h
	cpl
	rst $38
	ld d, l
	cpl
	di
	ld d, [hl]
	rst $38
	ld hl, sp-$16
	ld a, [bc]
	inc h
	db $ec
	ld [bc], a
	jp c, $e387

	add a
	ld [c], a
	ld h, e
	ld b, e
	db $e3
	add a
	rst $38
	ld hl, sp-$16
	ld a, [bc]
	inc hl
	db $ec
	ld [bc], a
	db $db
	ld h, a
	db $e3
	add a
	jp c, $e267

	ld h, e
	ld b, e
	db $e3
	add a
	rst $38
	db $ec
	nop
	ld [hli], a
	pop af
	add b
	rlca
	ld [hli], a
	pop af
	nop
	rlca
	ld [hli], a
	pop af
	sub b
	rlca
	ld [hli], a
	pop af
	nop
	rlca
	ld [hli], a
	pop af
	and b
	rlca
	ld [hli], a
	pop af
	nop
	rlca
	ld [hli], a
	pop af
	or b
	rlca
	ld [hli], a
	pop af
	nop
	rlca
	ld [hli], a
	pop af
	ret nz

	rlca
	ld [hli], a
	pop af
	nop
	rlca
	ld [hli], a
	pop af
	ret nc

	rlca
	ld [hli], a
	pop af
	nop
	rlca
	ld [hli], a
	pop af
	ldh [rTAC], a
	cp $0c
	jp nz, $2f75

	pop af
	nop
	rlca
	rst $38
	db $fc
	or e
	ld [hli], a
	pop af
	add c
	rlca
	ld [hli], a
	pop af
	ld bc, $2207
	pop af
	sub c
	rlca
	ld [hli], a
	pop af
	ld bc, $2207
	pop af
	and c
	rlca
	ld [hli], a
	pop af
	ld bc, $2207
	pop af
	or c
	rlca
	ld [hli], a
	pop af
	ld bc, $2207
	pop af
	pop bc
	rlca
	ld [hli], a
	pop af
	ld bc, $2207
	pop af
	pop de
	rlca
	ld [hli], a
	pop af
	ld bc, $2207
	pop af
	pop hl
	rlca
	cp $0c
	jp nz, $2f75

	pop af
	ld bc, $ff07
	ld hl, $49d1
	ld hl, $29d1
	cp $1a
	ld [de], a
	db $76
	rst $38
	db $fc
	ldh a, [$2f]
	ldh [$80], a
	rlca
	cpl
	ldh a, [$84]
	rlca
	cpl
	jp $05e0


	cpl
	call nz, $0600
	ld a, [hli]
	ld l, h
	add b
	rlca
	jr z, @+$73

	add h
	rlca
	rst $38
	db $fc
	dec b
	cpl
	and b
	ld b, c
	rlca
	cpl
	or b
	ld b, e
	rlca
	cpl
	sub e
	or c
	dec b
	cpl
	sub h
	pop bc
	dec b
	ld a, [hli]
	ld c, h
	ld b, c
	rlca
	jr z, jr_008_7681

	ld b, [hl]
	rlca
	rst $38
	ld [hli], a
	ld a, [c]
	ld c, h
	ld h, $e0
	ld a, [hld]
	cpl
	ret nc

	ld a, [hld]
	jr z, @-$2e

	inc l
	ld h, $e6
	ld c, h
	inc l
	ld a, l
	ld c, h
	cpl
	db $d3
	ld c, h
	rst $38
	db $fc
	ldh a, [$2f]
	rst $30
	and b

jr_008_766e:
	rlca
	ld h, $e6
	and e
	rlca
	ld a, [hli]
	db $f4
	and b
	rlca
	db $fc
	and l
	ld a, [hli]
	or $d8
	rlca
	inc h
	db $e3

jr_008_767f:
	rst $10
	rlca

jr_008_7681:
	cpl
	ld a, [c]
	ret c

	rlca
	rst $38
	db $fc
	dec b
	ld [hli], a
	ld [$0000], sp
	cpl
	and a
	and c
	ld b, $26
	add [hl]
	and d
	ld b, $2a
	ld [hl], h
	and c
	ld b, $fc
	ld e, a
	ld a, [hli]
	db $76
	sub $06
	inc h
	add e
	reti


	ld b, $2f
	and d
	rst $10
	ld b, $ff
	ld [hli], a
	ld a, [c]
	inc a
	jr z, @-$1a

	ld a, $2f
	rst $10
	inc a
	ld h, $c5
	dec sp
	ld h, $e4
	dec a

jr_008_76b6:
	jr z, jr_008_766e

	inc a
	ld h, $d4
	dec a
	jr z, jr_008_767f

	dec sp
	rst $38
	db $fc
	ldh a, [$2f]
	rst $30
	ret nz

	rlca
	ld h, $e4
	pop bc
	rlca
	ld a, [hli]
	or $c0
	rlca
	inc h
	db $d3
	jp nz, $2807

	pop bc
	ret nz

	rlca
	rst $38
	db $fc
	ld e, a
	cpl
	sub a
	add c
	rlca
	ld h, $84
	add b
	rlca
	ld a, [hli]
	sub [hl]
	add c
	rlca
	cpl
	add e
	add c
	rlca
	rst $38
	inc hl
	ld a, [c]
	inc a
	dec l
	and $2c
	cpl
	rst $10
	inc a
	jr z, jr_008_76b6

	inc l
	rst $38
	db $fc
	ldh a, [$2f]
	rst $30
	add b
	ld b, $2a

jr_008_76fe:
	and $84
	ld b, $2f
	rst $10
	sub b
	ld b, $28
	push de
	sub b
	ld b, $26
	call nz, $0688
	dec h
	db $d3
	ld [hl], b
	ld b, $24
	db $d3
	ld h, b
	ld b, $28
	pop bc
	ld b, b
	ld b, $ff

jr_008_771a:
	db $fc
	dec b
	cpl
	or a
	ld b, c
	ld b, $2a
	sub [hl]
	ld b, d
	ld b, $2f
	and a
	ld d, c
	ld b, $28
	and l
	ld d, c
	ld b, $26
	sub h
	ld b, a
	ld b, $25
	and e
	ld sp, $2406
	sub e
	ld [hli], a
	ld b, $28
	ld [hl], c
	ld bc, $ff06
	cpl
	db $e4
	inc a
	ld a, [hli]
	rst $00
	ld c, h
	ld a, [hli]
	rst $00
	inc a
	inc l
	or a
	ld c, h
	cpl
	and d
	ld e, h
	rst $38
	db $fc
	ldh a, [rNR52]
	rst $30
	and b
	rlca
	jr z, @-$18

	and h
	rlca
	inc h
	sub $a0
	rlca
	cpl
	db $d3
	jr nz, @+$09

	jr z, @-$3b

	inc hl
	rlca
	ld [hli], a
	jp nz, $0728

	jr z, jr_008_771a

	jr nc, jr_008_7772

	rst $38
	db $fc
	ld a, [bc]
	inc h

jr_008_776f:
	ld [$0000], sp

jr_008_7772:
	ld h, $a7
	ld b, c
	rlca
	jr z, jr_008_76fe

	ld b, e
	rlca
	inc h
	db $76
	ld b, c
	rlca
	dec l
	add e
	jp nz, $2706

	ld [hl], e
	pop bc
	ld b, $23
	add d
	call z, $2806
	ld [hl], c
	ret c

	ld b, $ff
	ld [hli], a
	ld a, [c]
	ld c, h
	ld h, $e6
	ld a, [hld]
	inc h
	rst $10
	ld a, [hld]
	ld h, $d6
	inc l
	jr z, @-$19

	inc a
	inc l
	jp nc, $283d

	pop de
	inc l
	rst $38
	db $fc
	and l

Call_008_77a7:
	ld h, $f4
	ld b, b
	rlca

jr_008_77ab:
	cpl
	db $e3
	jr nc, jr_008_77b6

	inc h
	db $f4
	ld b, b
	rlca
	dec h
	or e
	ld c, b

jr_008_77b6:
	rlca
	jr z, @-$2d

	ld d, b
	rlca
	rst $38
	db $fc
	ld [hl], a
	ld h, $c3
	ld [de], a
	rlca
	cpl
	or e
	inc b
	rlca
	inc hl
	jp $0712


	inc h
	jp $0721


	jr z, @-$4d

	ld [hld], a
	rlca
	rst $38
	jr z, jr_008_77ab

	inc l
	inc l
	add $3c
	ld a, [hli]
	or [hl]
	inc l

jr_008_77dc:
	jr z, jr_008_776f

	inc e
	rst $38
	db $fc
	ldh a, [rNR50]
	rst $30
	ld [$2606], sp
	and $00
	ld b, $26
	rst $10
	ldh a, [rTIMA]
	ld h, $c4
	ldh [rTIMA], a
	dec h
	db $d3
	ret nz

	dec b
	inc h
	db $d3
	and b
	dec b
	jr z, @-$1d

	add b
	dec b
	rst $38
	db $fc
	ld a, [bc]
	inc h
	rst $00
	inc b
	dec b
	ld h, $a6
	ld [bc], a
	dec b
	ld h, $97
	pop af
	inc b
	inc h
	or h
	pop hl
	inc b
	dec h
	and e
	jp nz, $2404

	or e
	and e
	inc b
	jr z, jr_008_77dc

	add d
	inc b
	rst $38
	inc l
	db $e4
	ld c, h
	ld a, [hli]
	rst $00
	ld e, h
	inc l
	or [hl]
	ld c, h
	cpl
	and d
	ld e, h
	rst $38

	db $fc, $f1, $24, $f7, $c0, $07, $2c, $e6, $c2, $07, $26, $b5, $80, $06, $24, $c4
	db $70, $06, $24, $b5, $60, $06, $28, $c1, $40, $06, $ff, $fc, $cc, $23, $c7, $81
	db $07, $2c, $b6, $80, $07, $26, $a5, $41, $06, $24, $c4, $32, $06, $26, $b5, $21
	db $06, $28, $a1, $02, $06, $ff, $23, $e4, $3c, $2c, $d6, $2c, $24, $e4, $3c, $28
	db $b7, $5c, $2f, $c2, $5d, $ff

	db $fc
	ret


	jr z, @-$07

	add b
	ld b, $22
	rst $30
	ld h, b
	ld b, $21
	rst $20
	ld b, b
	ld b, $21
	rst $20
	jr nz, jr_008_7889

	cpl
	pop de
	nop
	ld b, $24
	rst $00

jr_008_7889:
	ld b, b
	rlca
	inc h
	and a
	jr nc, jr_008_7896

	cpl
	sub c
	jr nz, @+$09

	rst $38
	db $fc
	ld a, c

jr_008_7896:
	ld a, [hli]
	rst $20
	add d
	ld b, $22
	rst $20
	ld h, d
	ld b, $21
	rst $10
	ld b, d
	ld b, $21
	rst $10
	ld [hli], a
	ld b, $2f
	pop bc
	ld [bc], a
	ld b, $24
	or a
	ld b, d
	rlca
	ld [hli], a
	sub a
	ld [hld], a
	rlca
	cpl
	add c
	ld [hli], a
	rlca
	rst $38
	inc h
	ld [hl], h
	ld hl, $7424
	db $10
	inc h
	ld [hl], c
	jr nz, @+$01

	db $fc
	push af
	inc h
	di
	jr jr_008_78ce

	cpl
	push hl
	sbc b
	rlca
	jr z, @-$6d

	ld e, b

jr_008_78ce:
	rlca
	rst $38
	db $fc
	and b
	dec h
	or e
	ld [$2f07], sp
	push bc
	adc b
	rlca
	jr z, jr_008_794d

	ld c, b
	rlca
	rst $38
	inc hl
	and c
	inc e
	ld l, $94
	inc l
	jr z, @-$7d

	inc e
	rst $38

	db $fc, $a5, $24, $e1, $00, $07, $24, $f2, $80, $07, $22, $92, $40, $07, $28, $e1
	db $00, $06, $ff, $fc, $0a, $24, $b1, $e1, $06, $23, $c2, $e1, $06, $23, $62, $81
	db $06, $28, $b1, $e1, $05, $ff, $22, $61, $32, $22, $61, $21, $28, $61, $11, $ff
	db $fc, $fa, $26, $83, $47, $02, $2f, $62, $26, $02, $24, $52, $45, $02, $29, $63
	db $06, $02, $2f, $82, $25, $02, $2f, $42, $07, $02, $ff, $28, $d4, $8c, $24, $e2
	db $9c, $2f, $c6, $8c, $28, $e4, $ac, $2f, $d7, $9c, $2f, $f2, $ac, $ff

	db $fc
	ldh a, [rNR50]
	di
	ldh [rTMA], a

jr_008_794d:
	cpl
	db $e4
	ld b, b
	ld b, $28
	pop bc
	jr nz, @+$08

	rst $38
	db $fc
	ld a, [bc]
	inc hl
	jp $0683


	ld l, $b4
	ld [bc], a
	ld b, $28
	and c
	ld bc, $ff06
	inc h
	db $d3
	ld e, h
	cpl
	and $4c
	jr z, @-$4d

	ld e, h

jr_008_796e:
	rst $38
	db $fc
	ld a, [bc]
	ld h, $e2
	nop
	dec b
	ld h, $e3
	add b
	dec b
	ld h, $d3
	ld [hl], b
	dec b
	jr z, @-$5d

	ld h, b
	dec b
	rst $38
	db $fc
	push af
	ld h, $e2
	add d
	inc b
	ld h, $d3
	ld bc, $2605
	or d
	ld [c], a
	inc b
	jr z, @-$7d

	pop bc
	inc b
	rst $38
	db $fc
	call z, $f124
	nop
	rlca
	inc h
	pop hl
	add b
	rlca
	inc h
	pop de
	ld b, b
	rlca
	inc h
	pop hl
	ld b, b
	rlca
	inc h
	pop af
	add b
	rlca
	inc h
	pop de

jr_008_79ad:
	nop
	rlca
	inc h
	pop af
	ld bc, $2407
	pop de
	add d
	rlca
	inc h
	pop bc
	ld b, d
	rlca
	jr z, jr_008_796e

	ld b, c
	rlca
	rst $38
	db $fc
	ld b, h
	inc l
	ld [$0000], sp
	inc h
	pop af
	ld bc, $2407
	pop hl
	add d
	rlca
	inc h
	pop de
	ld b, c
	rlca
	inc h
	pop hl

jr_008_79d4:
	ld b, c
	rlca
	inc h
	pop af
	add d
	rlca
	jr z, jr_008_79ad

	ld bc, $ff07
	cpl
	ld [$2400], sp
	ld [$2400], sp
	pop de
	ld c, h
	inc h
	or c
	inc l
	inc h
	pop de
	inc a
	inc h
	or c
	inc a
	inc h
	pop bc
	inc l
	jr z, @-$5d

	ld c, h
	rst $38
	db $fc
	call z, $f528
	nop
	ld b, $22
	jp nc, $0638

	ld [hli], a
	jp nz, $0630

	ld [hli], a
	jp nz, $0628

	ld [hli], a
	or d
	jr nz, jr_008_7a14

	ld [hli], a
	or d
	db $10
	ld b, $22
	and d

jr_008_7a14:
	jr jr_008_7a1c

	ld [hli], a
	or d
	db $10
	ld b, $28
	pop bc

jr_008_7a1c:
	jr nz, @+$08

	rst $38
	db $fc
	ld b, h
	inc l
	jp $05c0


	inc hl
	or c
	ld sp, hl
	dec b
	ld [hli], a
	and c
	pop af
	dec b
	ld [hli], a
	and c
	jp hl


	dec b
	ld [hli], a
	sub c
	pop hl
	dec b
	ld [hli], a
	sub c
	reti


	dec b
	ld [hli], a
	add c
	pop de
	dec b
	ld [hli], a
	sub c

jr_008_7a3f:
	reti


	dec b
	jr z, jr_008_79d4

	pop hl
	dec b
	rst $38
	db $ec
	nop
	jr z, jr_008_7a3f

	add b
	inc b
	ld [hli], a
	pop hl
	ldh [rTIMA], a
	jr z, @-$2d

	call c, $ff05
	db $fc
	and l
	daa
	sub l
	ld b, c
	inc b
	ld [hli], a
	add c
	ld hl, $2805
	ld h, c
	ld a, [de]
	dec b
	rst $38
	db $fc
	adc b
	dec h
	ld a, [c]
	ld d, b
	ld b, $29
	pop de
	ld h, b
	ld b, $25
	ld [c], a
	ld [de], a
	ld b, $29
	pop bc
	ld [hli], a
	ld b, $25
	ld a, [c]
	db $10
	ld b, $26
	pop de

jr_008_7a7c:
	jr nz, jr_008_7a84

	cp $02
	ld h, h
	ld a, d
	rst $38
	db $fc

jr_008_7a84:
	ld b, b
	inc h
	ld [$0000], sp
	dec h
	ld a, [c]
	ld d, c
	ld b, $29
	pop de
	ld h, c
	ld b, $25
	ld [c], a
	inc d
	ld b, $28
	pop bc
	inc h
	ld b, $25
	ld a, [c]
	ld de, $2c06
	pop de
	ld hl, $2506
	ld [c], a
	inc d
	ld b, $28
	pop bc
	inc h
	ld b, $25
	ld a, [c]
	ld de, $2406
	pop de
	ld hl, $ff06

jr_008_7ab2:
	ld h, $d2
	inc e
	add hl, hl
	or c
	inc l
	jr z, jr_008_7a7c

	inc l
	add hl, hl
	or c
	inc a
	ld h, $c2
	inc l
	add hl, hl
	and d
	inc a
	daa
	jp nz, $252c

	and c
	inc a
	add hl, hl
	jp nz, $242c

	and c
	inc a
	rst $38
	db $fc

jr_008_7ad2:
	and b
	inc h
	di
	nop
	ld b, $28
	push de
	ld h, b
	rlca
	inc hl
	ld [c], a
	jr nz, jr_008_7ae6

	jr z, jr_008_7ab2

	db $10
	rlca
	rst $38
	db $fc
	ld e, d

jr_008_7ae6:
	dec h
	or e
	pop af
	ld b, $27
	push bc
	ld d, d
	rlca

jr_008_7aee:
	inc hl
	and d
	ld de, $2807
	or c
	ld bc, $ff06
	inc hl
	and d
	inc a
	inc l
	sub h
	inc l
	inc hl
	add d
	inc e
	jr z, jr_008_7b73

	inc l
	rst $38
	db $fc
	ldh a, [$28]
	rst $30
	ldh [rTMA], a
	ld h, $e6
	push hl
	ld b, $23
	db $f4
	ldh [rTMA], a
	inc hl
	or $d0
	ld b, $23
	db $e3
	ret nz

	ld b, $24
	ld a, [c]
	or b
	ld b, $2f
	and d
	ret z

	ld b, $ff
	db $fc
	dec b
	inc hl
	ld [$0000], sp
	jr z, jr_008_7ad2

	and c
	ld b, $26
	add [hl]

jr_008_7b2f:
	and e
	ld b, $23
	ld [hl], h
	and c
	ld b, $23
	db $76
	sub c
	ld b, $23
	add e
	add d
	ld b, $24
	and d
	ld [hl], c
	ld b, $2f
	ld [hl], d
	adc c
	ld b, $ff
	ld [hli], a
	ld a, [c]
	inc a
	jr z, jr_008_7b2f

	ld a, $28
	rst $10
	inc a
	dec h
	push bc
	dec sp
	inc hl
	call nc, $222c
	or [hl]
	inc a
	inc hl
	and h
	inc l
	jr z, jr_008_7aee

	inc a
	rst $38
	db $fc
	ldh a, [$2f]
	or $65
	dec b
	ld a, [hli]

jr_008_7b66:
	db $e4
	ld a, h
	dec b
	inc hl
	jp nz, $055c

	cpl
	or d
	inc a
	dec b
	rst $38
	db $fc

jr_008_7b73:
	ld e, d
	ld l, $d6
	inc bc
	dec b
	add hl, hl
	or h
	dec de
	dec b
	inc h
	sub d
	ld a, [$2f04]
	and d
	db $db
	inc b
	rst $38
	inc l
	and $4c
	dec hl
	rst $10
	ld e, h
	cpl
	jp nz, $ff4c

	db $fc
	ldh a, [rNR50]
	rst $30
	and b
	ld b, $28
	and $a4
	ld b, $24
	sub $a0
	ld b, $2c
	db $d3
	jr nz, @+$08

	jr z, jr_008_7b66

	inc h
	ld b, $24
	jp nz, $0620

	jr z, @-$4d

	db $10
	ld b, $ff
	db $fc
	ld e, d
	inc h
	rst $20
	ld bc, $2806
	sub $03
	ld b, $24
	add $01
	ld b, $2c
	jp $0581


	jr z, @-$4b

	add e
	dec b
	inc h
	or d
	add d
	dec b
	jr z, @-$5d

	ld [hl], c
	dec b
	rst $38
	daa
	sub $5c
	jr z, @-$18

	ld c, h
	inc h
	call nc, $245c
	call nc, $274c
	jp $284c


	and c
	ld e, h
	rst $38
	db $fc
	dec de
	daa
	jp nc, $0740

	cpl
	push hl
	ld h, b
	rlca
	cpl
	pop bc
	jr nc, jr_008_7bf5

	rst $38
	db $fc
	add c
	ld [hli], a
	jp nz, $0701

jr_008_7bf5:
	inc h
	jp nz, $0708

	cpl
	rst $10
	ld b, c
	rlca
	cpl
	and d
	ld bc, $ff07
	db $fc
	ldh a, [$2f]
	rst $10
	add b
	rlca
	inc h
	and $a0
	rlca
	cpl
	jp nc, $0740

	rst $38
	db $fc
	ld e, d
	cpl
	rst $00
	ld d, e

jr_008_7c16:
	rlca
	dec h
	or [hl]
	ld [hl], d
	rlca
	cpl
	jp nz, $0711

	rst $38
	dec l
	or $4c
	inc h
	and $3c
	cpl
	ld a, [c]
	ld c, h
	rst $38
	db $fc
	ldh a, [rNR52]
	rst $30
	ret nz

	ld b, $2f
	rst $20
	nop
	rlca
	inc h
	db $f4
	ldh a, [rTMA]
	inc h

jr_008_7c39:
	db $e4
	ldh [rTMA], a
	jr z, @-$2d

	ret nc

	ld b, $ff
	db $fc
	ld a, [bc]
	daa
	and $81

jr_008_7c46:
	ld b, $2e
	push de
	pop bc
	ld b, $24
	call nz, $06b1
	inc h
	call nc, $06a1
	jr z, jr_008_7c16

	sub c
	ld b, $ff
	ld a, [hli]
	and [hl]
	inc a
	ld l, $94
	inc l
	dec h
	and e
	inc a
	jr z, @-$6d

	inc l
	rst $38
	db $fc
	and l
	inc l
	ld a, [c]
	ld b, b
	inc b
	cpl
	db $e3
	and b
	inc b
	inc h
	jp nc, $0490

	jr z, jr_008_7c46

	add b
	inc b
	rst $38
	db $fc
	xor $2b
	jp nc, $0438

	ld l, $c6
	sbc b
	inc b
	inc hl
	or d
	adc b
	inc b
	jr z, jr_008_7c39

	ld a, b
	inc b
	rst $38
	ld a, [hli]
	and $6c
	cpl
	jp nc, $235c

	jp nz, $286c

	pop de
	ld e, h
	rst $38

	db $fc, $33, $2f, $f6, $c0, $05, $28, $e3, $bc, $05, $26, $d2, $d0, $05, $26, $b2
	db $e0, $05, $26, $c2, $f0, $05, $28, $b1, $00, $06, $ff, $fc, $99, $2e, $c6, $b1
	db $04, $27, $c3, $ad, $04, $25, $b2, $c1, $04, $28, $92, $d1, $04, $26, $a2, $e1
	db $04, $28, $91, $f1, $04, $ff, $2a, $e6, $5c, $2a, $d6, $6c, $24, $c2, $4c, $26
	db $d3, $5c, $28, $b3, $4c, $28, $a1, $5c, $ff

	db $fc
	ldh a, [$28]
	db $e4

jr_008_7ce5:
	sub b
	rlca
	cpl
	push af
	ret nz

	rlca
	jr z, @-$2d

	ret c

jr_008_7cee:
	rlca
	rst $38
	db $fc
	and l
	ld a, [hli]
	call nz, $0771
	cpl
	or [hl]
	and d
	rlca
	jr z, @-$5d

	or a
	rlca
	rst $38
	jr z, jr_008_7ce5

	ld c, h
	ld l, $c4
	inc a
	jr z, @-$2d

	inc l
	rst $38
	db $fc
	ldh a, [rNR52]
	ld a, [c]
	nop
	ld b, $26
	ld [c], a
	ld b, b
	ld b, $26
	jp nc, $0680

	ld h, $e2
	ret nz

	ld b, $26
	jp nc, $0700

	ld h, $c2
	ld b, b
	rlca
	ld h, $b2
	add b
	rlca
	jr z, @-$5d

	ret nz

	rlca
	rst $38
	db $fc
	ld de, $0823
	ld bc, $2600
	jp nz, $05c1

	ld h, $b2
	ld [bc], a
	ld b, $26
	and d
	ld b, c
	ld b, $26
	or d
	add d
	ld b, $26
	and d
	jp nz, $2606

	sub d
	ld bc, $2607
	and d
	ld b, d
	rlca
	jr z, @-$7d

	add c
	rlca
	rst $38
	ld h, $08
	ld bc, $e225
	ld e, h
	dec h
	jp nz, $254c

	jp nc, $253c

	or d
	inc l
	dec h
	jp nz, $251c

	and d
	dec de
	dec h
	sub d
	ld a, [de]
	jr z, jr_008_7cee

	jr @+$01

	db $fc, $f0, $24, $f3, $80, $07, $2f, $e7, $00, $07, $28, $d3, $10, $07, $24, $c2
	db $00, $07, $24, $d2, $f0, $06, $28, $c1, $e0, $06, $ff, $fc, $5a, $26, $c3, $01
	db $07, $2e, $b7, $81, $06, $27, $b3, $92, $06, $23, $a2, $81, $06, $24, $b2, $72
	db $06, $28, $a1, $61, $06, $ff, $26, $e3, $5c, $2e, $d6, $4c, $26, $c6, $3c, $23
	db $b3, $4c, $23, $a2, $5c, $28, $b1, $6c, $ff

	db $fc
	rrca
	cpl
	rst $30
	nop
	dec b
	cpl
	rst $20
	ld [$2805], sp
	or h
	add b
	inc b
	cpl
	and d
	ld h, b
	inc b
	rst $38
	db $fc
	ld b, h
	ld l, $d7
	add c
	inc b
	ld l, $c7
	adc c
	inc b
	ld a, [hli]
	or h
	ld bc, $2f04
	jp nz, $03e1

	rst $38
	ld l, $f7
	ld a, h
	inc l
	or $6c
	add hl, hl
	db $e4
	ld a, h
	cpl
	ld [c], a
	ld l, h
	rst $38
	db $fc
	push af
	daa
	sub $e1
	rlca
	ld h, $c6
	ld [c], a
	rlca
	add hl, hl
	sub $e1

jr_008_7df8:
	rlca
	daa
	add $e0
	rlca

jr_008_7dfd:
	dec h
	or [hl]
	ld [c], a
	rlca
	daa
	add $e1
	rlca
	ld h, $b6
	ldh [rTAC], a
	jr z, @-$5d

	rst $18
	rlca
	rst $38
	db $fc
	ld b, h
	ld h, $c3
	ret


	rlca
	ld h, $b3
	rst $00
	rlca
	ld a, [hli]
	call nz, $07c3
	jr z, @-$4a

	rst $00
	rlca
	ld h, $c3

jr_008_7e22:
	ret


	rlca
	cpl
	and d
	push bc
	rlca
	rst $38
	dec l
	add hl, de
	ld a, h
	dec l
	rst $30
	adc h
	inc l
	sub $7c
	jr z, jr_008_7df8

	ld l, h
	cpl
	or e
	ld e, h
	rst $38
	db $fc
	ldh a, [rNR52]
	rst $30
	ld b, b
	rlca
	inc l
	and $44
	rlca
	ld h, $d5
	ld d, b
	rlca
	inc h
	jp $0760


	inc hl
	jp $0780


	jr z, jr_008_7e22

jr_008_7e51:
	and b
	rlca
	rst $38
	db $fc
	ld a, [bc]
	ld h, $c7
	ld bc, $2b07
	or [hl]
	ld [bc], a
	rlca
	ld h, $a5
	ld de, $2407
	sub e
	ld hl, $2307
	and e
	ld b, c
	rlca
	jr z, jr_008_7dfd

	ld h, d
	rlca
	rst $38
	inc hl
	ld [c], a
	inc a
	jr z, @-$28

	ld c, h
	dec h
	call nc, $2c3c
	rst $00
	ld c, h
	ld [hli], a
	ld [c], a
	inc a
	jr z, jr_008_7e51

	inc l
	rst $38

	db $fc, $f4, $2f, $f0, $05, $07, $2a, $e0, $00, $07, $26, $b4, $10, $07, $24, $d3
	db $00, $07, $26, $b2, $20, $06, $28, $a1, $24, $06, $ff, $fc, $22, $2f, $b0, $c3
	db $06, $2a, $a0, $c1, $06, $26, $84, $d2, $06, $24, $93, $c1, $06, $26, $82, $e1
	db $05, $28, $61, $e8, $05, $ff, $26, $e6, $4c, $2f, $d6, $3c, $2a, $c5, $4a, $21
	db $b2, $5b, $2f, $c2, $4c, $ff

	db $fc
	ld d, b
	ld a, [hli]
	push af
	add b
	ld b, $23
	ld [c], a
	and b
	ld b, $23
	ld a, [c]
	ret nz

	ld b, $23
	ld [c], a
	ldh [rTMA], a
	inc hl
	jp nc, $0700

	inc hl
	jp nz, $06e0

	inc hl
	jp nc, $06c0

	jr z, @-$3d

	and b
	ld b, $ff
	db $fc
	rrca
	add hl, hl
	push de
	ld sp, $2306

jr_008_7ef2:
	jp nc, $0652

	inc hl
	ld [c], a
	ld [hl], c
	ld b, $23
	or d
	sub c
	ld b, $23
	jp nz, $06b2

	inc hl
	or d

jr_008_7f03:
	sub c
	ld b, $23
	jp nz, $0671

	jr z, @-$4d

	ld d, c
	ld b, $ff
	ld h, $e3
	ld c, h
	inc h
	jp $253c


jr_008_7f15:
	call nc, $243c
	call nz, $262c
	or h
	inc a
	jr z, @-$3d

	inc l
	rst $38

jr_008_7f21:
	db $fc
	and l
	inc hl
	db $f4
	ld b, c
	ld b, $2d
	sub $21
	rlca
	jr z, jr_008_7f21

	add hl, de
	rlca
	jr z, jr_008_7ef2

	ld a, [de]
	rlca
	rst $38
	db $fc
	call z, $f424

jr_008_7f38:
	add b
	dec b
	ld l, $e6
	ldh [rTMA], a
	jr z, jr_008_7f15

	ret c

	ld b, $28
	pop de
	call c, $ff06
	dec h
	call nz, $2d46
	and l
	ld b, h
	jr z, @-$3a

	ld b, l
	jr z, jr_008_7f03

	ld b, h
	rst $38
	db $fc
	ldh a, [$2d]
	pop af
	ld de, $2d05
	pop hl
	dec d
	dec b
	dec l
	pop hl
	ld de, $2805
	pop de
	ld de, $ff05
	db $fc
	dec d
	inc l
	pop hl
	inc c

jr_008_7f6c:
	dec b
	inc l
	pop de
	db $10
	dec b
	ld l, $c1
	inc c
	dec b
	jr z, jr_008_7f38

	ld a, [bc]

jr_008_7f78:
	dec b
	rst $38
	ld l, $f2
	ld h, l
	dec l
	ld [c], a

jr_008_7f7f:
	ld d, l
	ld l, $d2
	ld d, [hl]
	jr z, @-$2d

	ld h, [hl]
	rst $38
	db $fc
	dec de
	inc hl
	di

jr_008_7f8b:
	ld h, h
	dec b
	ld [hli], a
	ld [c], a
	ld b, h
	dec b
	dec h
	pop de
	ld [hli], a
	dec b
	ld [hli], a
	or d
	add h
	inc b
	jr z, jr_008_7f6c

	and d
	inc b
	inc hl
	di
	inc h
	dec b
	inc h
	db $e4
	db $e4
	inc b
	jr z, jr_008_7f78

	ld [bc], a
	dec b
	rst $38
	db $fc
	call z, wd323
	ld h, b
	dec b
	ld [hli], a
	jp nz, $0540

	dec h
	pop bc
	jr nz, @+$07

	ld [hli], a
	sub d
	add b
	inc b
	jr z, jr_008_7f7f

	and b
	inc b
	inc hl
	db $d3
	jr nz, @+$07

	inc hl
	call nz, $04e0
	jr z, jr_008_7f8b

	nop
	dec b
	rst $38

	db $fc, $11, $22, $3d, $81, $03, $27, $f5, $01, $06, $21, $c2, $81, $04, $28, $91
	db $81, $03, $ff, $fc, $ee, $22, $3e, $b0, $05, $27, $d5, $5d, $07, $21, $b2, $b0
	db $06, $28, $61, $b0, $05, $ff, $22, $92, $49, $27, $b5, $29, $21, $a2, $39, $28
	db $91, $49, $ff
