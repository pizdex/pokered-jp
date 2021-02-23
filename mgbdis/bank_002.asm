; Disassembly of "pokemon-red-jp.gb"

SECTION "ROM Bank $002", ROMX[$4000], BANK[$2]

	ld c, $00

jr_002_4002:
	ld b, $00
	ld hl, wc026
	add hl, bc
	ld a, [hl]
	and a
	jr z, jr_002_402e

	ld a, c
	cp $04
	jr nc, jr_002_402b

	ld a, [wc002]
	and a
	jr z, jr_002_402b

	bit 7, a
	jr nz, jr_002_402e

	set 7, a
	ld [wc002], a
	xor a
	ldh [rNR51], a
	ldh [rNR30], a
	ld a, $80
	ldh [rNR30], a
	jr jr_002_402e

jr_002_402b:
	call Call_002_4035

jr_002_402e:
	ld a, c
	inc c
	cp $07
	jr nz, jr_002_4002

	ret


Call_002_4035:
	ld b, $00
	ld hl, wc0b6
	add hl, bc
	ld a, [hl]
	cp $01
	jp z, Jump_002_40cd

	dec a
	ld [hl], a
	ld a, c
	cp $04
	jr nc, jr_002_4051

	ld hl, wc02a
	add hl, bc
	ld a, [hl]
	and a
	jr z, jr_002_4051

	ret


jr_002_4051:
	ld hl, wc02e
	add hl, bc
	bit 6, [hl]
	jr z, jr_002_405c

	call Call_002_470a

jr_002_405c:
	ld b, $00
	ld hl, wc036
	add hl, bc
	bit 0, [hl]
	jr nz, jr_002_406e

	ld hl, wc02e
	add hl, bc
	bit 2, [hl]
	jr nz, jr_002_4082

jr_002_406e:
	ld hl, wc02e
	add hl, bc
	bit 4, [hl]
	jr z, jr_002_4079

	jp Jump_002_45f6


jr_002_4079:
	ld hl, wc04e
	add hl, bc
	ld a, [hl]
	and a
	jr z, jr_002_4083

Call_002_4081:
	dec [hl]

jr_002_4082:
	ret


jr_002_4083:
	ld hl, wc056
	add hl, bc
	ld a, [hl]
	and a
	jr nz, jr_002_408c

	ret


jr_002_408c:
	ld d, a
	ld hl, wc05e
	add hl, bc
	ld a, [hl]
	and $0f
	and a
	jr z, jr_002_4099

	dec [hl]
	ret


jr_002_4099:
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
	jr z, jr_002_40b9

	res 3, [hl]
	ld a, d
	and $0f
	ld d, a
	ld a, e
	sub d
	jr nc, jr_002_40b7

Call_002_40b5:
	ld a, $00

Call_002_40b7:
jr_002_40b7:
	jr jr_002_40c5

jr_002_40b9:
	set 3, [hl]
	ld a, d
	and $f0
	swap a
	add e
	jr nc, jr_002_40c5

	ld a, $ff

jr_002_40c5:
	ld d, a
	ld b, $03
	call Call_002_4735
	ld [hl], d
	ret


Jump_002_40cd:
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
	call Call_002_40e3

Jump_002_40e2:
	ret


Call_002_40e3:
Jump_002_40e3:
	call Call_002_4722
	ld d, a
	cp $ff
	jp nz, Jump_002_4171

	ld b, $00
	ld hl, wc02e
	add hl, bc
	bit 1, [hl]
	jr nz, jr_002_4121

	ld a, c
	cp $03
	jr nc, jr_002_40fd

	jr jr_002_413c

jr_002_40fd:
	res 2, [hl]
	ld hl, wc036
	add hl, bc
	res 0, [hl]
	cp $06
	jr nz, jr_002_4111

	ld a, $00
	ldh [rNR30], a
	ld a, $80
	ldh [rNR30], a

Jump_002_4111:
jr_002_4111:
	jr nz, jr_002_411f

	ld a, [wc003]
	and a
	jr z, jr_002_411f

	xor a
	ld [wc003], a
	jr jr_002_413c

jr_002_411f:
	jr jr_002_4145

jr_002_4121:
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
	jp Jump_002_40e3


jr_002_413c:
	ld hl, $4a1c
	add hl, bc
	ldh a, [rNR51]
	and [hl]
	ldh [rNR51], a

jr_002_4145:
	ld a, [wc02a]
	cp $14
	jr nc, jr_002_414e

	jr jr_002_416b

jr_002_414e:
	ld a, [wc02a]
	cp $86
	jr z, jr_002_416b

	jr c, jr_002_4159

	jr jr_002_416b

jr_002_4159:
	ld a, c
	cp $04
	jr z, jr_002_4162

	call Call_002_45c4
	ret c

jr_002_4162:
	ld a, [wc005]
	ldh [rNR50], a
	xor a
	ld [wc005], a

jr_002_416b:
	ld hl, wc026
	add hl, bc
	ld [hl], b
	ret


Jump_002_4171:
	cp $fd
	jp nz, Jump_002_41a6

	call Call_002_4722
	push af
	call Call_002_4722
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
	jp Jump_002_40e3


Jump_002_41a6:
	cp $fe
	jp nz, Jump_002_41e1

	call Call_002_4722
	ld e, a
	and a
	jr z, jr_002_41ca

	ld b, $00
	ld hl, wc0be
	add hl, bc
	ld a, [hl]
	cp e
	jr nz, jr_002_41c8

	ld a, $01
	ld [hl], a
	call Call_002_4722
	call Call_002_4722
	jp Jump_002_40e3


jr_002_41c8:
	inc a
	ld [hl], a

jr_002_41ca:
	call Call_002_4722
	push af
	call Call_002_4722
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
	jp Jump_002_40e3


Jump_002_41e1:
	and $f0

Jump_002_41e3:
	cp $d0
	jp nz, Jump_002_4220

	ld a, d
	and $0f
	ld b, $00
	ld hl, wc0c6
	add hl, bc
	ld [hl], a
	ld a, c
	cp $03
	jr z, jr_002_421d

	call Call_002_4722
	ld d, a
	ld a, c
	cp $02
	jr z, jr_002_4209

	cp $06
	jr nz, jr_002_4216

	ld hl, wc0e7
	jr jr_002_420c

jr_002_4209:
	ld hl, wc0e6

jr_002_420c:
	ld a, d
	and $0f
	ld [hl], a
	ld a, d
	and $30
	sla a
	ld d, a

jr_002_4216:
	ld b, $00
	ld hl, wc0de
	add hl, bc
	ld [hl], d

jr_002_421d:
	jp Jump_002_40e3


Jump_002_4220:
	ld a, d
	cp $e8
	jr nz, jr_002_4232

	ld b, $00
	ld hl, wc02e
	add hl, bc
	ld a, [hl]
	xor $01
	ld [hl], a
	jp Jump_002_40e3


jr_002_4232:
	cp $ea
	jr nz, jr_002_426a

	call Call_002_4722
	ld b, $00
	ld hl, wc04e
	add hl, bc
	ld [hl], a
	ld hl, wc06e
	add hl, bc
	ld [hl], a
	call Call_002_4722
	ld d, a
	and $f0
	swap a
	ld b, $00
	ld hl, wc056
	add hl, bc
	srl a
	ld e, a
	adc b
	swap a
	or e
	ld [hl], a
	ld a, d
	and $0f
	ld d, a
	ld hl, wc05e

Jump_002_4262:
	add hl, bc
	swap a
	or d
	ld [hl], a
	jp Jump_002_40e3


jr_002_426a:
	cp $eb
	jr nz, jr_002_42a2

	call Call_002_4722
	ld b, $00
	ld hl, wc076
	add hl, bc
	ld [hl], a
	call Call_002_4722
	ld d, a
	and $f0
	swap a
	ld b, a
	ld a, d
	and $0f
	call Call_002_4755
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
	call Call_002_4722
	ld d, a
	jp Jump_002_4407


jr_002_42a2:
	cp $ec
	jr nz, jr_002_42b7

	call Call_002_4722
	rrca
	rrca
	and $c0
	ld b, $00
	ld hl, wc03e
	add hl, bc
	ld [hl], a
	jp Jump_002_40e3


jr_002_42b7:
	cp $ed
	jr nz, jr_002_42f7

	ld a, c
	cp $04
	jr nc, jr_002_42db

	call Call_002_4722
	ld [wc0e8], a
	call Call_002_4722
	ld [wc0e9], a
	xor a
	ld [wc0ce], a
	ld [wc0cf], a
	ld [wc0d0], a
	ld [wc0d1], a
	jr jr_002_42f4

jr_002_42db:
	call Call_002_4722
	ld [wc0ea], a
	call Call_002_4722
	ld [wc0eb], a
	xor a
	ld [wc0d2], a
	ld [wc0d3], a
	ld [wc0d4], a
	ld [wc0d5], a

jr_002_42f4:
	jp Jump_002_40e3


jr_002_42f7:
	cp $ee
	jr nz, jr_002_4304

	call Call_002_4722
	ld [wc004], a
	jp Jump_002_40e3


jr_002_4304:
	cp $ef
	jr nz, jr_002_4323

	call Call_002_4722
	push bc
	call Call_002_4773
	pop bc
	ld a, [wc003]
	and a
	jr nz, jr_002_4320

	ld a, [wc02d]
	ld [wc003], a
	xor a
	ld [wc02d], a

jr_002_4320:
	jp Jump_002_40e3


Jump_002_4323:
jr_002_4323:
	cp $fc
	jr nz, jr_002_4341

	call Call_002_4722
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
	jp Jump_002_40e3


jr_002_4341:
	cp $f0
	jr nz, jr_002_434d

	call Call_002_4722
	ldh [rNR50], a
	jp Jump_002_40e3


jr_002_434d:
	cp $f8
	jr nz, jr_002_435c

	ld b, $00
	ld hl, wc036
	add hl, bc
	set 0, [hl]
	jp Jump_002_40e3


jr_002_435c:
	and $f0
	cp $e0
	jr nz, jr_002_436f

	ld hl, wc0d6
	ld b, $00
	add hl, bc
	ld a, d
	and $0f
	ld [hl], a
	jp Jump_002_40e3


jr_002_436f:
	cp $20
	jr nz, jr_002_43bc

	ld a, c
	cp $03
	jr c, jr_002_43bc

	ld b, $00
	ld hl, wc036
	add hl, bc
	bit 0, [hl]
	jr nz, jr_002_43bc

	call Call_002_4407
	ld d, a
	ld b, $00
	ld hl, wc03e
	add hl, bc
	ld a, [hl]
	or d
	ld d, a
	ld b, $01
	call Call_002_4735
	ld [hl], d
	call Call_002_4722
	ld d, a
	ld b, $02
	call Call_002_4735
	ld [hl], d
	call Call_002_4722
	ld e, a
	ld a, c
	cp $07
	ld a, $00
	jr z, jr_002_43af

	push de
	call Call_002_4722
	pop de

jr_002_43af:
	ld d, a
	push de
	call Call_002_4526
	call Call_002_44f5
	pop de
	call Call_002_4548
	ret


jr_002_43bc:
	ld a, c
	cp $04
	jr c, jr_002_43d8

	ld a, d
	cp $10
	jr nz, jr_002_43d8

	ld b, $00
	ld hl, wc036
	add hl, bc
	bit 0, [hl]
	jr nz, jr_002_43d8

	call Call_002_4722
	ldh [rNR10], a
	jp Jump_002_40e3


jr_002_43d8:
	ld a, c
	cp $03
	jr nz, jr_002_4407

	ld a, d
	and $f0
	cp $b0
	jr z, jr_002_43f2

	jr nc, jr_002_4407

	swap a
	ld b, a
	ld a, d
	and $0f
	ld d, a
	ld a, b
	push de
	push bc
	jr jr_002_43fa

jr_002_43f2:
	ld a, d
	and $0f
	push af
	push bc
	call Call_002_4722

jr_002_43fa:
	ld d, a
	ld a, [wc003]
	and a
	jr nz, jr_002_4405

	ld a, d
	call Call_002_4773

jr_002_4405:
	pop bc
	pop de

Call_002_4407:
Jump_002_4407:
jr_002_4407:
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
	call Call_002_4744
	ld a, c
	cp $04
	jr nc, jr_002_4428

	ld a, [wc0e8]
	ld d, a
	ld a, [wc0e9]
	ld e, a
	jr jr_002_443b

jr_002_4428:
	ld d, $01
	ld e, $00
	cp $07
	jr z, jr_002_443b

	call Call_002_4590
	ld a, [wc0ea]
	ld d, a
	ld a, [wc0eb]
	ld e, a

jr_002_443b:
	ld a, l
	ld b, $00
	ld hl, wc0ce
	add hl, bc
	ld l, [hl]
	call Call_002_4744
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
	jr nz, jr_002_4465

	ld hl, wc02e
	add hl, bc
	bit 2, [hl]
	jr z, jr_002_4465

	pop hl
	ret


jr_002_4465:
	pop af
	and $f0
	cp $c0
	jr nz, jr_002_449c

	ld a, c
	cp $04
	jr nc, jr_002_4479

	ld hl, wc02a
	add hl, bc
	ld a, [hl]
	and a
	jr nz, jr_002_449b

jr_002_4479:
	ld a, c
	cp $02
	jr z, jr_002_4482

	cp $06
	jr nz, jr_002_448f

jr_002_4482:
	ld b, $00
	ld hl, $4a1c
	add hl, bc
	ldh a, [rNR51]
	and [hl]
	ldh [rNR51], a
	jr jr_002_449b

jr_002_448f:
	ld b, $02
	call Call_002_4735
	ld a, $08
	ld [hli], a
	inc hl
	ld a, $80
	ld [hl], a

jr_002_449b:
	ret


jr_002_449c:
	swap a
	ld b, $00
	ld hl, wc0d6
	add hl, bc
	ld b, [hl]
	call Call_002_4755
	ld b, $00
	ld hl, wc02e
	add hl, bc
	bit 4, [hl]
	jr z, jr_002_44b5

	call Call_002_468c

jr_002_44b5:
	push de
	ld a, c
	cp $04
	jr nc, jr_002_44ca

	ld hl, wc02a
	ld d, $00
	ld e, a
	add hl, de
	ld a, [hl]
	and a
	jr nz, jr_002_44c8

	jr jr_002_44ca

jr_002_44c8:
	pop de
	ret


jr_002_44ca:
	ld b, $00
	ld hl, wc0de
	add hl, bc
	ld d, [hl]
	ld b, $02
	call Call_002_4735
	ld [hl], d
	call Call_002_4526
	call Call_002_44f5
	pop de
	ld b, $00
	ld hl, wc02e
	add hl, bc
	bit 0, [hl]
	jr z, jr_002_44ec

	inc e
	jr nc, jr_002_44ec

	inc d

jr_002_44ec:
	ld hl, wc066
	add hl, bc
	ld [hl], e
	call Call_002_4548
	ret


Call_002_44f5:
	ld b, $00
	ld hl, $4a24
	add hl, bc
	ldh a, [rNR51]
	or [hl]
	ld d, a
	ld a, c
	cp $07
	jr z, jr_002_4510

	cp $04
	jr nc, jr_002_4522

	ld hl, wc02a
	add hl, bc
	ld a, [hl]
	and a
	jr nz, jr_002_4522

jr_002_4510:
	ld a, [wc004]
	ld hl, $4a24
	add hl, bc
	and [hl]
	ld d, a
	ldh a, [rNR51]
	ld hl, $4a1c
	add hl, bc
	and [hl]
	or d
	ld d, a

jr_002_4522:
	ld a, d
	ldh [rNR51], a
	ret


Call_002_4526:
	ld b, $00
	ld hl, wc0b6
	add hl, bc
	ld d, [hl]
	ld a, c
	cp $02
	jr z, jr_002_4541

	cp $06
	jr z, jr_002_4541

	ld a, d
	and $3f
	ld d, a
	ld hl, wc03e
	add hl, bc
	ld a, [hl]
	or d
	ld d, a

jr_002_4541:
	ld b, $01
	call Call_002_4735
	ld [hl], d
	ret


Call_002_4548:
	ld a, c
	cp $02
	jr z, jr_002_4551

	cp $06
	jr nz, jr_002_457e

jr_002_4551:
	push de
	ld de, wc0e6
	cp $02
	jr z, jr_002_455c

	ld de, wc0e7

jr_002_455c:
	ld a, [de]
	add a
	ld d, $00
	ld e, a
	ld hl, $728f
	add hl, de
	ld e, [hl]
	inc hl
	ld d, [hl]
	ld hl, $ff30
	ld b, $0f
	ld a, $00
	ldh [rNR30], a

jr_002_4571:
	ld a, [de]
	inc de
	ld [hli], a
	ld a, b
	dec b
	and a
	jr nz, jr_002_4571

	ld a, $80
	ldh [rNR30], a
	pop de

jr_002_457e:
	ld a, d
	or $80
	and $c7
	ld d, a
	ld b, $03
	call Call_002_4735
	ld [hl], e
	inc hl
	ld [hl], d
	call Call_002_45b2
	ret


Call_002_4590:
	call Call_002_45e2
	jr nc, jr_002_45a8

	ld d, $00
	ld a, [wc0f2]
	add $80
	jr nc, jr_002_459f

	inc d

jr_002_459f:
	ld [wc0eb], a
	ld a, d
	ld [wc0ea], a
	jr jr_002_45b1

jr_002_45a8:
	xor a
	ld [wc0eb], a
	ld a, $01
	ld [wc0ea], a

jr_002_45b1:
	ret


Call_002_45b2:
	call Call_002_45e2

Call_002_45b5:
	jr nc, jr_002_45c3

	ld a, [wc0f1]
	add e
	jr nc, jr_002_45be

	inc d

jr_002_45be:
	dec hl
	ld e, a
	ld [hl], e
	inc hl

Call_002_45c2:
	ld [hl], d

jr_002_45c3:
	ret


Call_002_45c4:
	call Call_002_45e2
	jr nc, jr_002_45df

	ld hl, wc006
	ld e, c
	ld d, $00
	sla e
	rl d
	add hl, de
	ld a, [hl]
	sub $01
	ld [hl], a
	inc hl
	ld a, [hl]
	sbc $00
	ld [hl], a
	scf
	ret


jr_002_45df:
	scf
	ccf
	ret


Call_002_45e2:
	ld a, [wc02a]
	cp $14
	jr nc, jr_002_45eb

	jr jr_002_45f1

jr_002_45eb:
	cp $86
	jr z, jr_002_45f1

	jr c, jr_002_45f4

jr_002_45f1:
	scf
	ccf
	ret


jr_002_45f4:
	scf
	ret


Jump_002_45f6:
	ld hl, wc02e
	add hl, bc
	bit 5, [hl]
	jp nz, Jump_002_463d

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
	jp c, Jump_002_4683

	jr nz, jr_002_4670

	ld hl, wc0ae
	add hl, bc
	ld a, [hl]
	cp e
	jp c, Jump_002_4683

	jr jr_002_4670

Jump_002_463d:
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
	jr c, jr_002_4683

	jr nz, jr_002_4670

	ld hl, wc0ae
	add hl, bc
	ld a, e
	cp [hl]
	jr c, jr_002_4683

jr_002_4670:
	ld hl, wc09e
	add hl, bc
	ld [hl], e
	ld hl, wc096
	add hl, bc
	ld [hl], d
	ld b, $03
	call Call_002_4735
	ld a, e
	ld [hli], a
	ld [hl], d
	ret


Jump_002_4683:
jr_002_4683:
	ld hl, wc02e
	add hl, bc
	res 4, [hl]
	res 5, [hl]
	ret


Call_002_468c:
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
	jr nc, jr_002_46a4

	ld a, $01

jr_002_46a4:
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
	jr c, jr_002_46c0

	ld d, a
	ld b, $00
	ld hl, wc02e
	add hl, bc
	set 5, [hl]
	jr jr_002_46e3

jr_002_46c0:
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

jr_002_46e3:
	ld hl, wc076
	add hl, bc

jr_002_46e7:
	inc b
	ld a, e
	sub [hl]
	ld e, a
	jr nc, jr_002_46e7

	ld a, d
	and a
	jr z, jr_002_46f5

	dec a
	ld d, a
	jr jr_002_46e7

jr_002_46f5:
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


Call_002_470a:
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
	call Call_002_4735
	ld a, [hl]
	and $3f
	or d
	ld [hl], a
	ret


Call_002_4722:
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


Call_002_4735:
	ld a, c
	ld hl, $4a14
	add l
	jr nc, jr_002_473d

	inc h

jr_002_473d:
	ld l, a
	ld a, [hl]
	add b
	ld l, a
	ld h, $ff
	ret


Call_002_4744:
	ld h, $00

jr_002_4746:
	srl a
	jr nc, jr_002_474b

	add hl, de

jr_002_474b:
	sla e
	rl d
	and a
	jr z, jr_002_4754

	jr jr_002_4746

jr_002_4754:
	ret


Call_002_4755:
	ld h, $00
	ld l, a
	add hl, hl
	ld d, h
	ld e, l
	ld hl, $4a2c
	add hl, de
	ld e, [hl]
	inc hl
	ld d, [hl]
	ld a, b

jr_002_4763:
	cp $07
	jr z, jr_002_476e

	sra d
	rr e
	inc a
	jr jr_002_4763

jr_002_476e:
	ld a, $08
	add d
	ld d, a
	ret


Call_002_4773:
	ld [wc001], a
	cp $ff
	jp z, Jump_002_4931

	cp $b9
	jp z, Jump_002_484b

	jp c, Jump_002_484b

	cp $fe
	jr z, jr_002_478a

	jp nc, Jump_002_484b

jr_002_478a:
	xor a
	ld [wc000], a
	ld [wc003], a
	ld [wc0e9], a
	ld [wc0e6], a
	ld [wc0e7], a
	ld d, $08
	ld hl, wc016
	call Call_002_4986
	ld hl, wc006
	call Call_002_4986
	ld d, $04
	ld hl, wc026
	call Call_002_4986
	ld hl, wc02e
	call Call_002_4986
	ld hl, wc03e
	call Call_002_4986
	ld hl, wc046
	call Call_002_4986
	ld hl, wc04e
	call Call_002_4986
	ld hl, wc056
	call Call_002_4986
	ld hl, wc05e
	call Call_002_4986
	ld hl, wc066
	call Call_002_4986
	ld hl, wc06e
	call Call_002_4986
	ld hl, wc036
	call Call_002_4986
	ld hl, wc076
	call Call_002_4986
	ld hl, wc07e
	call Call_002_4986
	ld hl, wc086
	call Call_002_4986
	ld hl, wc08e
	call Call_002_4986
	ld hl, wc096
	call Call_002_4986
	ld hl, wc09e
	call Call_002_4986
	ld hl, wc0a6
	call Call_002_4986
	ld hl, wc0ae
	call Call_002_4986
	ld a, $01
	ld hl, wc0be
	call Call_002_4986
	ld hl, wc0b6
	call Call_002_4986
	ld hl, wc0c6
	call Call_002_4986
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
	jp Jump_002_498c


Jump_002_484b:
	ld l, a
	ld e, a
	ld h, $00
	ld d, h
	add hl, hl
	add hl, de
	ld de, $6f2e
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

Jump_002_4864:
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
	jr z, jr_002_48a0

	ld a, e
	cp $07
	jr nz, jr_002_4897

	ld a, [wc001]
	cp $14
	jr nc, jr_002_4890

	ret


jr_002_4890:
	ld a, [hl]
	cp $14
	jr z, jr_002_48a0

	jr c, jr_002_48a0

jr_002_4897:
	ld a, [wc001]
	cp [hl]
	jr z, jr_002_48a0

	jr c, jr_002_48a0

	ret


jr_002_48a0:
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
	jr nz, jr_002_4928

	ld a, $08
	ldh [rNR10], a

jr_002_4928:
	ld a, c
	and a
	jp z, Jump_002_498c

	dec c
	jp Jump_002_4864


Jump_002_4931:
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
	call Call_002_4986
	ld a, $01
	ld d, $18
	ld hl, wc0b6
	call Call_002_4986
	ld [wc0e8], a
	ld [wc0ea], a
	ld a, $ff
	ld [wc004], a
	ret


Call_002_4986:
	ld b, d

jr_002_4987:
	ld [hli], a
	dec b
	jr nz, jr_002_4987

	ret


Jump_002_498c:
	ld a, [wc001]
	ld l, a
	ld e, a
	ld h, $00
	ld d, h
	add hl, hl
	add hl, de
	ld de, $6f2e
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

Call_002_49a7:
	and $0f
	ld b, c
	inc b
	inc de
	ld c, $00

jr_002_49ae:
	cp c
	jr z, jr_002_49b6

	inc c
	inc hl
	inc hl
	jr jr_002_49ae

jr_002_49b6:
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
	jr c, jr_002_49cf

	ld hl, wc02e
	add hl, bc
	set 2, [hl]

jr_002_49cf:
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
	jr nz, jr_002_49ae

	ld a, [wc001]
	cp $14
	jr nc, jr_002_49e8

	jr jr_002_4a12

jr_002_49e8:
	ld a, [wc001]
	cp $86
	jr z, jr_002_4a12

	jr c, jr_002_49f3

	jr jr_002_4a12

jr_002_49f3:
	ld hl, wc02a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hl], a
	ld hl, wc012
	ld de, $4a13
	ld [hl], e
	inc hl
	ld [hl], d
	ld a, [wc005]
	and a
	jr nz, jr_002_4a12

	ldh a, [rNR50]
	ld [wc005], a
	ld a, $77
	ldh [rNR50], a

jr_002_4a12:
	ret


	db $ff, $10, $15, $1a

	rra

	db $10, $15, $1a, $1f, $ee, $dd, $bb

	ld [hl], a
	xor $dd
	cp e

	db $77, $11, $22, $44

	adc b

	db $11, $22, $44, $88, $2c, $f8, $9d, $f8, $07, $f9, $6b, $f9, $ca, $f9, $23, $fa
	db $77, $fa, $c7, $fa, $12, $fb, $58, $fb, $9b, $fb, $da, $fb

Call_002_4a44:
	ld c, $02
	ld a, $de
	call $0e35
	ld hl, wc006
	ld de, $609f
	call Call_002_4a5d
	ld de, $611a
	call Call_002_4a5d
	ld de, $61b2

Call_002_4a5d:
Jump_002_4a5d:
	ld a, e
	ld [hli], a
	ld a, d
	ld [hli], a
	ret


	ld c, $02
	ld a, $de
	call $0e35
	ld hl, wc006
	ld de, $6016
	jp Jump_002_4a5d


	call Call_002_4a44
	ld hl, wc006
	ld de, $6098
	jp Jump_002_4a5d


	ld a, $0a
	ld [wcfaf], a
	ld [wcfb0], a
	ld a, $ff
	ld [wcfae], a
	ld c, $64
	call $3781
	ld c, $02
	ld a, $c3
	call $0e35
	ld hl, wc006
	ld de, $596c
	jp Jump_002_4a5d


	db $ed, $00, $90, $f0, $77, $ec, $02, $e8, $dc, $81, $c1, $eb, $00, $4b, $b1, $eb
	db $00, $54, $b1, $eb, $00, $44, $41, $c3, $eb, $00, $3b, $43, $eb, $00, $4b, $b3
	db $ff, $ec, $02, $dc, $c3, $e4, $b3, $b3, $b1, $81, $dc, $c4, $e3, $47, $ff, $dc
	db $10, $e4, $41, $c1, $41, $c1, $41, $81, $45, $c1, $ff, $ed, $00, $98, $f0, $77
	db $ea, $04, $23, $ec, $02, $e8, $dc, $a1, $c3, $e4, $21, $25, $21, $25, $21, $20
	db $10, $e5, $b0, $e4, $10, $e5, $91, $91, $95, $e4, $11, $15, $11, $13, $e5, $91
	db $e4, $11, $e5, $b1, $e4, $13, $e5, $91, $95, $e4, $21, $25, $21, $25, $21, $20
	db $40, $20, $10, $e5, $b1, $91, $95, $e4, $11, $15, $e5, $91, $e4, $41, $e5, $91

	call c, $e4a2
	ld [hl], e
	ld b, e
	ld h, c
	call c, $e5a1
	sub c
	sub l
	sub c
	ld h, c
	sub e
	or c
	db $e4
	ld de, $b3e5
	sub c
	ld h, c
	sub e
	ld [hl], c
	ld b, c
	inc de
	sub c
	db $e4
	ld hl, $93e5
	or c
	ld [hl], c
	or e
	db $e4
	ld hl, $1141
	ld hl, $91e5
	sub c
	cp $00
	and $4a
	rst $38

	db $ec, $02, $dc, $d1, $fd, $62, $4b, $fd, $75, $4b, $fd, $62, $4b, $fd, $8a, $4b

	cp $00
	ld d, b
	ld c, e

	db $e4, $20, $40, $61, $61, $61, $20, $40, $61, $61, $61, $20, $40, $61, $61, $72
	db $60, $45, $ff, $10, $20, $41, $41, $41, $10, $20, $41, $41, $41, $10, $20, $41
	db $41, $60, $40, $40, $60, $23, $61, $ff, $10, $20, $41, $71, $61, $41, $21, $11
	db $e5, $b1, $e4, $11

	call c, $b3d2
	sub $d1
	push hl
	or b
	db $e4
	db $10
	call c, $e5d1
	or b
	sub b
	db $e4
	db $10
	dec h
	call c, $60d2
	ld [hl], b
	sub c
	sub c
	ld h, c
	ld hl, $21e3
	ld de, $b1e4
	db $e3
	ld de, $91e4
	ld h, c
	ld [hli], a
	ld h, b
	ld b, l
	ld h, b
	ld [hl], b
	sub c
	sub c
	ld h, c
	sub c
	db $e3
	ld hl, $e411
	or d
	ld [hl], b
	sub c
	db $e3
	ld hl, $4111
	ld hl, wd1dc
	db $e4
	ld hl, $ff21
	rst $38

	db $ea, $08, $25, $dc, $13, $c1, $e4, $23, $13, $e5, $b3, $93, $e4, $23, $e5, $93
	db $b3, $93, $e4, $13, $e5, $93, $b3, $e4, $03, $13, $e5, $93, $e4, $23, $e5, $93
	db $e4, $23, $13, $e5, $b3, $93, $e4, $23, $e5, $93, $b3, $93, $e4, $13, $e5, $b3
	db $93, $b3

	db $e4
	inc de
	push hl
	sub e
	db $e4
	inc hl
	push hl
	sub e
	db $e4
	daa
	push hl
	ld [hl], a
	sub a
	db $e4
	rla
	daa
	push hl
	ld [hl], a
	sub a
	db $e4
	dec h
	cp $00
	jp c, $ff4b

	db $dc, $c3, $b1, $0f, $c1, $b1, $0f, $c1, $b1, $0f, $c1, $b1, $0f, $c1, $b1, $0f
	db $c1, $b1, $0f, $c1, $b1, $0f, $b1, $0f, $c3, $b1, $0f, $c1, $b1, $0f, $c1, $b1
	db $0f, $c1, $b1, $0f, $c1, $b1, $0f, $c1, $b1, $0f, $b1, $0f, $b1, $0f, $b1, $0f
	db $c3, $b1, $0f, $c1, $b1, $0f, $c1, $b1, $0f, $c1, $b1, $0f, $c1, $b1, $0f, $c1
	db $b1, $0f, $c1, $b1, $0f, $b1, $0f, $c3, $b1, $0f, $c1, $b1, $0f, $c1, $b1, $0f
	db $c1, $b1, $0f

	pop bc
	or c
	rrca
	pop bc
	or c
	rrca
	pop bc
	or c
	rrca
	or c
	rrca
	or c
	rrca
	pop bc
	or c
	rrca
	or c
	rrca
	jp $0fb1


	or c
	rrca
	or c
	rrca
	pop bc
	or c
	rrca
	or c
	rrca
	jp $0fb1


	or c
	rrca
	or c
	rrca
	pop bc
	or c
	rrca
	or c
	rrca
	jp $0fb1


	or c
	rrca
	or c
	rrca
	pop bc
	or c
	rrca
	or c
	rrca
	or c
	rrca
	pop bc
	or c
	rrca
	or c
	rrca
	cp $00
	ld hl, $ff4c

	db $ed, $00, $98, $f0, $77, $ea, $09, $25, $ec, $01, $dc, $b2, $e6, $b3, $e5, $85
	db $61, $41, $30, $60, $41, $e6, $b1, $e5, $41, $91, $83, $63, $e6, $b3, $e5, $85
	db $61, $41, $30, $60, $b1, $e6, $b1, $e5, $41, $91, $83, $b3, $d8, $b2, $e4, $41
	db $e5, $91, $e4, $41, $41, $e5, $91, $e4, $41, $31, $e5, $81, $e4, $31, $31, $e5
	db $81, $e4, $31, $11, $e5, $61, $e4, $11, $11, $e5, $61, $e4, $11, $e5, $b1, $41
	db $b1, $b1, $41, $81, $61, $81, $91, $91, $61, $91, $61, $81, $91, $91, $61, $91
	db $81, $41, $b1, $b1, $41, $b1, $b1, $41, $b1, $b1, $41, $b1, $91, $b1, $91, $e4
	db $11, $e5, $b1, $e4, $11, $21, $e5, $b1, $e4, $21, $61, $41, $31, $41, $e5, $b1
	db $e4, $41, $41, $e5, $b1, $e4, $41, $41, $e5, $b1, $e4, $41, $41, $e5, $b1, $e4
	db $41, $fe, $00, $c0, $4c

	rst $38

	db $ea, $08, $26, $ec, $03, $dc, $d4, $e4, $45, $e5, $b0, $e4, $40, $65, $91, $82
	db $40, $67, $e5, $33, $e4, $45, $e5, $b0, $e4, $40, $65, $91, $82, $40, $b7, $e5
	db $83, $e3, $15, $e4, $b0, $90, $b5, $90, $80, $95, $80, $60, $83, $61, $41, $21
	db $20, $40, $67, $93, $82, $60, $47, $61, $41, $21, $20, $40, $61, $60, $80, $93
	db $e3, $13, $e4, $b2, $90, $87, $c3, $fe, $00, $51, $4d

	rst $38

	db $ea, $09, $28, $dc, $11, $e5, $41, $c1, $e6, $b5, $e5, $20, $10, $21, $31, $41
	db $c1, $e6, $b5, $e5, $20, $10, $e6, $91, $e5, $11, $41, $c1, $e6, $b5, $e5, $20
	db $10, $21, $31, $41, $c1, $e6, $b3, $e5, $11, $e6, $b1, $e5, $21, $61, $41, $c1
	db $e6, $91, $c1, $e5, $31, $c1, $e6, $81, $c1, $e5, $11, $c1, $e6, $61, $c1, $b1
	db $c1, $41, $81, $61, $c1, $91, $c1, $61, $c1, $91, $c1, $81, $c1, $b1, $c1, $81
	db $c1, $b1, $c1, $61, $c1, $91, $c1, $e5, $11, $c1, $e6, $91, $e5, $11, $e6, $b1
	db $c1, $e5, $41, $c1, $81, $c1, $41, $c1, $fe, $00, $9b, $4d

	rst $38

	db $dc, $b1, $03, $c1, $b0, $03, $c4, $b0, $03, $b0, $03, $b1, $03, $b1, $03, $b1
	db $03, $c1, $d8, $b1, $03, $b1, $03, $b1, $03, $b2, $03, $b2, $03, $dc, $b0, $03
	db $c2, $b1, $03, $c1, $b1, $03, $c3, $b0, $03, $b0, $03, $b1, $03, $c1, $b1, $03
	db $c1, $d8, $b1, $03, $b1, $03, $b1, $03, $b2, $03, $b2, $03, $b1, $03, $b1, $03
	db $b1, $03, $b2, $03, $c2, $dc, $b0, $03, $c4, $b0, $03, $b0, $03, $b1, $03, $b1
	db $03, $b1, $03, $c1, $d8, $b1, $03, $b1, $03, $b1, $03, $b2, $03, $c2, $dc, $b0
	db $03, $c2, $b1, $03, $c1, $b1, $03, $c3, $b0, $03, $b0, $03, $b1, $03, $b1, $03
	db $b1, $03, $c1, $d8, $b1, $03, $b1, $03, $b1, $03, $b2, $03, $c2, $b2, $03, $b2
	db $03, $b2, $03, $c2, $dc, $b0, $03, $c4, $b0, $03, $b0, $03, $b1, $03, $b1, $03
	db $b1, $03, $c1, $d8, $b1, $03, $b1, $03, $b1, $03, $b2, $03, $c2, $b2, $03, $c2
	db $fe, $00, $05, $4e

	rst $38
	db $ed
	nop
	sub h
	ldh a, [rPCM34]
	db $ec
	inc bc
	ld [$3406], a
	add sp, -$24
	or l
	push hl
	ld b, b
	ld h, b
	ld [hl], l
	ld d, b
	ld [hl], b
	ld b, b
	rst $08
	adc $dc
	or l
	ld b, l
	jr nz, jr_002_4f05

	inc bc
	ld b, e
	dec b
	jr nz, jr_002_4f0a

	ld d, c
	ld [hl], c
	ld [hl], c
	sub c
	call c, $a7a7
	ld d, a
	daa
	ld d, a
	call c, Call_002_45b5
	jr nz, @+$42

	inc bc
	ld b, e
	dec b
	jr nz, jr_002_4f1e

	ld d, c
	ld [hl], c
	ld [hl], c
	sub c
	call c, $a7a7
	and a
	daa
	ld d, a
	call c, $43b5
	ld b, c
	ld d, c
	ld [hl], e
	ld d, c
	ld b, c
	or c
	and $73
	push hl
	or a
	sub c
	ret c

	jp Jump_002_5393


	sub e
	ret c

	ld c, a
	sbc e
	ret c

	sub b
	ld e, e
	ld a, e
	cp $00
	ret nz

jr_002_4f05:
	ld c, [hl]
	ld [$2308], a
	db $ec

jr_002_4f0a:
	ld [bc], a
	call c, $e5c7
	ld [hl], b
	and b
	or l
	sub b
	or b
	db $e4
	nop
	adc $cf
	call c, $ecc7
	ld [bc], a
	db $e4
	dec b
	push hl

jr_002_4f1e:
	ld [hl], b
	db $e4
	nop
	ld c, c
	push hl
	ld [hl], c
	db $e4
	ld bc, $5171
	ld b, c
	ld hl, $2701
	ld d, a
	call c, $ecc5
	inc bc
	push hl
	and a
	sub a
	call c, $ecc7
	ld [bc], a
	db $e4
	dec b
	push hl
	ld [hl], b
	db $e4
	nop
	ld c, c
	push hl
	ld [hl], c
	db $e4
	ld bc, $5171
	ld b, c
	ld hl, $2701
	ld d, a
	call c, $ecc5
	inc bc
	push hl
	and a
	db $e4
	dec h
	call c, $ecc7
	ld [bc], a
	nop
	jr nz, jr_002_4f9a

	ld hl, $0741
	push hl
	or b
	db $e4
	nop
	ld hl, $73e5
	db $e4
	ld [hl], a
	ld d, b
	ld b, b
	ret c

	db $d3
	ld d, e
	ld b, e
	ret c

	call nz, wd803
	push bc
	dec bc
	call c, $eca0
	inc bc
	push hl
	sub a
	or a
	cp $00
	rla
	ld c, a
	ld [$1004], a
	sub $12
	db $e4
	ld [hl], c
	and c
	or a
	sub a
	ld [hl], c
	pop bc
	db $76
	ret nz

	ld [hl], b
	ret nz

	ld [hl], b
	ret nz

	ld [hl], c
	pop bc
	ld [hl], c
	pop bc
	ld [hl], a
	ld [hl], c
	pop bc
	db $76
	ret nz

	ld [hl], b
	ret nz

	ld [hl], b

jr_002_4f9a:
	ret nz

	ld [hl], c
	pop bc
	ld [hl], c
	pop bc
	ld [hl], a
	call c, $4012
	ret nz

	ld [hl], e
	ld b, b
	ld b, b
	ld b, b
	ret nz

	ld b, b
	ret nz

	ld [hl], e
	ld b, b
	ret nz

	ld [hl], e
	ld b, b
	ld b, b
	ld b, b
	ret nz

	ld b, b
	ret nz

	ld [hl], c
	sub c
	ld d, b
	ret nz

	and e
	ld d, b
	ld d, b
	ld d, b
	ret nz

	ld d, b
	ret nz

	and e
	ld d, b
	ret nz

	and e
	ld d, b
	ld d, b
	ld d, b
	ret nz

	ld d, b
	ret nz

	and c
	ld d, c
	ld b, b
	ret nz

	ld [hl], e
	ld b, b
	ld b, b
	ld b, b
	ret nz

	ld b, b
	ret nz

	ld [hl], e
	ld b, b
	ret nz

	ld [hl], e
	ld b, b
	ld b, b
	ld b, b
	ret nz

	ld b, b
	ret nz

	ld [hl], c
	sub c
	ld d, b
	ret nz

	and e
	ld d, b
	ld d, b
	ld d, b
	ret nz

	ld d, b
	ret nz

	and e
	ld d, b
	ret nz

	and e
	ld d, b
	ld d, b
	ld d, b
	ret nz

	ld d, b
	ret nz

	and c
	sub c
	ld [hl], b
	ret nz

	db $e3
	inc bc
	db $e4
	ld [hl], b
	ld [hl], b
	ld [hl], b
	ret nz

	ld [hl], b
	ret nz

	db $e3
	inc bc
	db $e4
	ld [hl], b
	ret nz

	db $e3
	inc hl
	db $e4
	ld [hl], b
	ld [hl], b
	ld [hl], b
	ret nz

	ld [hl], b
	ret nz

	db $e3
	inc hl
	db $e4
	ld d, b
	ret nz

	db $e3
	inc bc
	db $e4
	ld d, b
	ld d, b
	ld d, b
	ret nz

	ld d, b
	ret nz

	db $e3
	inc bc
	db $e4
	ld d, b
	ret nz

	sub e
	ld d, b
	ld d, b
	ld d, b
	ret nz

	ld d, b
	ret nz

	sub e
	cp $00
	and b
	ld c, a
	sub $b0
	inc de
	or b
	inc de
	or b
	ld [de], a
	or b
	ld [de], a
	or a
	ld de, $13b0
	or b
	inc de
	or b
	inc de
	or b
	inc de
	or b
	ld [de], a
	or b
	inc de
	or b
	ld [de], a
	or b
	ld [de], a
	cp e
	ld de, $11b1
	or c
	ld [de], a
	or e
	ld de, $11b3
	or b
	inc de
	or b
	inc de
	or b
	inc de
	or b
	inc de
	or b
	ld [de], a
	or b
	ld [de], a
	or b
	ld [de], a
	or b
	ld [de], a
	cp e
	ld de, $11b1
	or c
	ld [de], a
	or e
	ld de, $12b3
	or e
	ld de, $13b0
	or b
	inc de
	or b
	ld [de], a
	or b
	ld [de], a
	cp e
	ld de, $11b1
	or c
	ld [de], a
	or e
	ld de, $11b3
	or b
	inc de
	or b
	inc de
	or b
	inc de
	or b
	inc de
	or b
	ld [de], a
	or b
	ld [de], a
	or b
	ld [de], a
	or b
	ld [de], a
	cp e
	ld de, $11b1
	or c
	ld de, $11b3
	or a
	ld de, $13b0
	or b
	inc de
	or b
	ld [de], a
	or b
	ld [de], a
	cp e
	ld de, $11b1
	or c
	ld [de], a
	or e
	ld de, $11b9
	or b
	inc de
	or b
	inc de
	cp e
	ld de, $11b1

Call_002_50b5:
	or c
	inc de
	or e
	ld de, $11b3
	or b
	inc de
	or b
	inc de
	or b
	inc de
	or b
	inc de
	or b
	ld [de], a
	or b
	inc de
	or b
	ld [de], a
	or b
	ld [de], a
	cp e
	ld de, $11b1
	or c
	ld de, $11b3
	or a
	ld de, $13b0
	or b
	inc de
	or b
	ld [de], a
	or b
	ld [de], a
	cp e
	ld de, $11b1
	or c
	ld de, $11b3
	cp c
	ld de, $13b0
	or b
	inc de
	cp e
	ld de, $11b1
	or c
	ld de, $11b3
	or a
	ld de, $13b0
	or b
	inc de
	or b
	ld [de], a
	or b
	ld [de], a
	cp e
	ld de, $11b1
	or c
	ld de, $11b3
	or e
	ld de, $13b0
	or b
	inc de
	or b
	inc de
	or b
	inc de
	or b
	ld [de], a
	or b
	ld [de], a
	or b
	ld [de], a
	or b
	ld [de], a
	cp e
	ld de, $11b1
	or c
	ld de, $11b3
	cp c
	ld de, $13b0
	or b
	inc de
	cp e
	ld de, $11b1
	or c
	ld de, $11b3
	or a
	ld de, $12b0
	or b
	inc de
	or b
	ld [de], a
	or b
	inc de
	cp e
	ld de, $11b1
	or c
	ld de, $11b3
	or a
	ld de, $13b0
	or b
	inc de
	or b
	ld [de], a
	or b
	ld [de], a
	cp e
	ld de, $11b1
	or c
	ld de, $11b3
	or e
	ld de, $13b0
	or b
	inc de
	or b
	inc de
	or b
	inc de
	or b
	ld [de], a
	or b
	ld [de], a
	or b
	ld [de], a
	or b
	ld [de], a
	cp $00
	ld [hl], a
	ld d, b
	db $ed
	nop
	sub h
	ldh a, [rPCM34]
	db $ec
	inc bc
	ld [$340a], a
	add sp, -$24
	and d
	and $83
	add e
	add e
	call c, $837f
	call c, $83a2
	add e
	add e
	call c, $b0b7
	push hl
	ld b, b
	ld h, b
	or b
	call c, $b5b7
	ld b, c
	ld b, e
	db $e4
	ld b, e
	inc hl
	inc de
	push hl
	or e
	sub e
	call c, $82b1
	call c, Call_002_40b7
	ld l, e
	ld b, a
	inc sp
	ld h, e
	or l
	ld b, c
	ld b, e
	db $e4
	ld b, e
	inc hl
	inc de
	push hl
	or e
	db $e4
	inc de
	call c, $42b1
	call c, $30b7
	ld c, e
	push hl
	or d
	sub b
	add a
	db $e4
	ld b, e
	push hl
	ld hl, $6141
	add c
	sub c
	or c
	db $e4
	ld de, $2121
	push hl
	sub c
	ld h, c
	ld b, c
	ld hl, $6141
	sub c
	add c
	ld h, c
	ld b, c
	ld h, c
	add c
	sub c
	or c
	db $e4
	ld sp, $e541
	or c
	add c
	ld h, c
	ld b, c
	ld h, c
	add c
	or c
	ret c

	or l
	sub e
	add e
	ld h, e
	db $e4
	ld b, e
	inc sp
	inc de

Jump_002_51e3:
	inc de
	push hl
	or e
	sub e
	or e
	db $e4
	inc de
	inc sp
	push hl
	ld b, d
	ld h, d
	add d
	sub d
	or e
	db $e4
	inc de
	inc sp
	ld b, d
	push hl
	or d
	add d
	ld h, d
	ld b, d
	ld h, d
	add d
	sub d
	cp $00

jr_002_51ff:
	add a
	ld d, c
	ld [$240c], a
	db $ec
	ld bc, $92dc
	push hl
	ld b, d
	ld h, b
	call c, $4b90
	call c, $e692
	or d
	push hl
	nop
	call c, $e690
	or a
	db $ec
	inc bc
	call c, $e5c7
	ld b, b
	ld h, b
	or b
	db $e4
	jr nc, jr_002_51ff

	rst $00
	ld b, l
	push hl
	or c
	or e
	db $e4
	or e
	sub e
	add e
	ld h, e
	ld h, b
	sub b
	add b
	ld h, b
	call c, $82c2
	ld b, b
	call c, $e5a0
	cp e
	db $ec
	nop
	call c, $e6c2
	or d
	call c, $e5c7
	nop
	and $b7
	push hl
	inc sp
	db $ec
	inc bc
	db $e4
	ld b, l
	push hl
	or c
	or e
	db $e4
	or e
	sub e
	add e
	ld h, e
	sub b
	db $e3
	db $10
	db $e4
	or b
	sub b
	call c, $b2c2
	call c, $90c7
	call c, $85b0
	call c, $8590
	call c, $8570
	call c, $856f
	call c, $83c7
	ret c

	jp $8393


	ld h, e
	ret c

	sub b
	ld h, l
	ret c

	ld a, a
	ld h, l
	db $ec
	nop
	ret c

	sub b
	push hl
	ld h, e
	ld b, e
	ld h, e
	sub l
	db $ec
	inc bc
	ret c

	rst $00
	db $e4
	ld h, l
	add e
	ld h, e
	ret c

	call nz, wd843
	and b
	ld c, e
	db $ec
	nop
	ret c

	sub b
	push hl
	ld b, e
	inc sp
	ld b, e
	add l
	db $ec
	inc bc
	ret c

	rst $00
	db $e4
	ld b, l
	ld h, e
	inc sp
	push hl
	or e
	ret c

	and b
	db $e4
	cp a
	ret c

	and a
	or a
	ret c

	or b
	sub l
	ret c

	or a
	sub l
	call c, $80a7
	ld h, b
	call c, $4bb0
	call c, $47a0
	call c, Call_002_49a7
	cp $00
	ld [hli], a
	ld d, d
	call c, $e410
	ld b, b
	jp nz, $c240

	ld b, b
	jp nz, $c240

	ld b, b
	jp nz, $c240

	ld b, b
	jp nz, $c230

	ld b, b
	jp nz, $4040

	ld b, b
	ld b, b
	ld b, b
	ret nz

	ld b, b
	jp nz, wc040

	ld h, b
	jp nz, Jump_002_6060

	ld h, b
	ld h, b
	ld h, b
	ret nz

	ld h, b
	jp nz, wc090

	add b
	jp nz, $8080

	add b
	add b
	add b
	ret nz

	add b
	jp nz, wc080

	add b
	jp nz, $8080

	add b
	add b
	add b
	ret nz

	add b
	jp nz, wc080

	ld b, b
	jp nz, $4040

	ld b, b
	ld b, b

jr_002_530a:
	ld b, b
	ret nz

	ld b, b
	jp nz, wc040

	ld h, b
	jp nz, Jump_002_6060

	ld h, b
	ld h, b
	ld h, b
	ret nz

	ld h, b
	jp nz, wc090

	or b
	jp nz, $b0b0

	or b
	or b
	or b
	ret nz

	or b
	jp nz, wc0b0

	ld b, b
	jp nz, $4040

	ld b, b
	ld b, b
	ld b, b
	ret nz

	ld b, b
	ret nz

	ld b, b
	ret nz

	sub b
	ret nz

	ld h, b
	jp nz, Jump_002_6060

	ld h, b
	ld h, b
	ld h, b
	ret nz

	ld h, b
	jp nz, wc060

	jr nz, @-$3c

	jr nz, jr_002_5366

	jr nz, @+$22

	jr nz, jr_002_530a

	jr nz, @-$3c

	jr nz, @-$3e

	ld b, b
	jp nz, $4040

	ld b, b
	ld b, b
	ld b, b
	ret nz

	ld b, b
	jp nz, wc040

	add b
	jp nz, $8080

	add b
	add b
	add b
	ret nz

	add b
	jp nz, wc080

jr_002_5366:
	ld h, b
	jp nz, Jump_002_6060

	ld h, b
	ld h, b
	ld h, b
	ret nz

	ld h, b
	jp nz, wc060

	or b
	jp nz, $b0b0

	or b
	or b
	or b
	ret nz

	or b
	jp nz, wc0b0

	add b
	jp nz, $8080

	add b
	add b
	add b
	ret nz

	add b
	jp nz, wc080

	ld b, b
	jp nz, $4040

	ld b, b
	ld b, b
	ld b, b
	ret nz

	ld b, b

Jump_002_5393:
	jp nz, wc030

	cp $00
	call nc, wdc52
	rst $08
	res 6, b
	inc de
	or b
	inc de
	or b
	ld [de], a
	or b
	ld [de], a
	or e
	ld de, $13b0
	or b
	inc de
	or b
	ld [de], a
	or b
	ld [de], a
	or c
	ld de, $12b1
	or b
	inc de
	or b
	inc de
	or b
	ld [de], a
	or b
	ld [de], a
	or e
	ld de, $13b0
	or b
	inc de
	or b
	inc de
	or b
	ld [de], a
	or b
	ld [de], a

Call_002_53c7:
	or b
	ld [de], a
	or e
	ld de, $11b1
	or e
	ld de, $13b0
	or b
	inc de
	or b
	ld [de], a
	or b
	ld [de], a
	or c
	ld de, $11b1
	or c
	ld de, $13b0
	or b
	inc de
	or e
	ld de, $13b0
	or b
	inc de
	or b
	ld [de], a
	or b
	ld [de], a
	or c
	ld de, $11b1
	or b
	ld [de], a
	or b
	ld [de], a
	or b
	inc de
	or b
	inc de
	or e
	ld de, $13b0
	or b
	inc de
	or b
	ld [de], a
	or b
	ld [de], a
	or c
	ld de, $11b1
	or b
	inc de
	or b
	inc de
	or b
	ld [de], a
	or b
	ld [de], a
	or e
	ld de, $13b0
	or b
	inc de
	or b
	inc de
	or b
	inc de
	or b
	ld [de], a
	or b
	ld [de], a
	or e
	ld de, $11b1
	or e
	ld de, $13b0
	or b
	inc de
	or b
	ld [de], a
	or b
	ld [de], a
	or c
	ld de, $11b1
	or c
	ld de, $13b0
	or b
	inc de
	or e
	ld de, $13b0
	or b
	inc de
	or b
	ld [de], a
	or b
	ld [de], a
	or c
	ld de, $11b1
	or b
	inc de
	or b
	inc de
	or b
	ld [de], a
	or b
	ld [de], a
	or e
	ld de, $13b0
	or b
	inc de
	or b
	ld [de], a
	or b
	ld [de], a
	or c
	ld de, $11b1
	or b
	inc de
	or b
	inc de
	or b
	ld [de], a
	or b
	ld [de], a
	or e
	ld de, $13b0
	or b
	inc de
	or b
	inc de
	or b
	inc de
	or b
	ld [de], a
	or b
	ld [de], a
	or e
	ld de, $11b1
	or e
	ld de, $13b0
	or b
	inc de
	or b
	ld [de], a
	or b
	ld [de], a
	or c
	ld de, $11b1
	or c
	ld de, $13b0
	or b
	ld [de], a
	or e
	ld de, $13b0
	or b
	inc de
	or b
	ld [de], a
	or b
	ld [de], a
	or c
	ld de, $11b1
	or b
	inc de
	or b
	inc de
	or b
	ld [de], a
	or b
	ld [de], a
	or e
	ld de, $13b0
	or b
	inc de
	or b
	ld [de], a
	or b
	ld [de], a
	or c
	ld de, $11b1
	or b
	inc de
	or b
	inc de
	or b
	ld [de], a
	or b
	ld [de], a
	or e
	ld de, $13b0
	or b
	inc de
	or b
	inc de
	or b
	ld [de], a
	or b
	ld [de], a
	or b
	ld [de], a
	or e
	ld de, $11b1
	or e
	ld de, $13b0
	or b
	inc de
	or b
	ld [de], a
	or b
	ld [de], a
	or c
	ld de, $11b1
	or c
	ld de, $13b0
	or b
	ld [de], a
	or e
	ld de, $13b0
	or b
	inc de
	or b
	ld [de], a
	or b
	ld [de], a
	or c
	ld de, $11b1
	or c
	ld de, $11b1
	cp $00
	and l
	ld d, e
	db $ed
	nop
	add h
	ldh a, [rPCM34]
	db $ec
	inc bc
	ld [$3406], a
	add sp, -$24
	or d
	and $97
	sub a
	sub a
	sub e
	call c, $a3a4
	db $fd
	ld d, [hl]
	ld d, l
	call c, $e5b4
	inc hl
	db $fd
	ld d, [hl]
	ld d, l
	call c, $e5b4
	inc sp
	db $fd
	ld d, [hl]
	ld d, l
	call c, $e5b4
	inc hl
	db $fd
	ld d, [hl]
	ld d, l
	call c, $e6a0
	and e
	db $fd
	ld d, [hl]
	ld d, l
	call c, $e5b4
	inc hl
	call c, $e5d4
	sub e
	sub e
	sub e
	sub e
	sub e
	sub e
	sub e
	call c, $e5b4
	inc sp
	call c, $e5d4
	and e
	and e
	and e
	and e
	and e
	and e
	and e
	call c, $e5b4
	ld d, c
	call c, $e5b4
	ld [hl], c
	call c, $97b0
	and $97
	call c, $e5b7
	ld d, a
	call c, $e64e
	and a
	cp $00
	ld [bc], a
	ld d, l
	call c, $e6b2
	sub e
	sub e
	sub e
	sub e
	sub e
	sub e
	sub e
	rst $38
	db $ec
	inc bc
	ld [$2508], a
	call c, $e5c2
	daa
	daa
	daa
	inc hl
	call c, $335a
	db $fd
	xor h
	ld d, l
	call c, $93c5
	db $fd
	xor h
	ld d, l
	call c, $a3c5
	db $fd
	xor h
	ld d, l
	call c, $93c5
	db $fd
	xor h
	ld d, l
	call c, $13c7
	db $fd
	xor h
	ld d, l
	call c, $93c5
	db $fd
	xor h
	ld d, l
	call c, $a3c5
	db $fd
	xor h
	ld d, l
	call c, $e4c5
	ld bc, wc7dc
	db $e4
	ld de, $e527
	daa
	db $e4
	rlca
	call c, $e44d
	scf
	cp $00
	ld [hl], b
	ld d, l
	call c, $e5c2
	inc hl
	inc hl
	inc hl
	inc hl
	inc hl
	inc hl
	inc hl
	rst $38
	call c, $e410
	ld hl, $21c5
	push bc
	ld hl, $21c5
	pop bc
	inc sp
	db $fd
	ei
	ld d, l
	db $fd
	ei
	ld d, l
	db $fd
	ei
	ld d, l
	ld hl, $21c1
	pop bc
	ld hl, $21c1
	pop bc
	ld hl, $21c1
	pop bc
	ld hl, $63c1
	db $fd
	ei
	ld d, l
	db $fd
	ei
	ld d, l
	ld hl, $21c1
	pop bc
	ld hl, $21c1
	pop bc
	ld hl, $21c1
	pop bc
	ld hl, $a0c1
	ret nz

	and b
	ret nz

	sub a
	daa
	and a
	scf
	cp $00
	jp $e455


	ld hl, $21c1
	pop bc
	ld hl, $21c1
	pop bc
	ld hl, $21c1
	pop bc
	ld hl, $93c1
	rst $38
	sub $bf
	ld de, $11bf
	cp a
	ld de, $11b7
	or b
	inc de
	or b
	inc de
	or b
	inc de
	or b
	inc de
	or b
	ld [de], a
	or b
	ld [de], a
	or b
	ld [de], a
	or b
	ld [de], a
	db $fd
	adc [hl]
	ld d, [hl]
	db $fd
	ld a, e
	ld d, [hl]
	db $fd
	adc [hl]
	ld d, [hl]
	db $fd
	and l
	ld d, [hl]
	db $fd
	adc [hl]
	ld d, [hl]
	db $fd
	ld a, e
	ld d, [hl]
	db $fd
	adc [hl]
	ld d, [hl]
	db $fd
	and l
	ld d, [hl]
	db $fd
	adc [hl]
	ld d, [hl]
	db $fd
	ld a, e
	ld d, [hl]
	db $fd
	adc [hl]
	ld d, [hl]
	db $fd
	and l
	ld d, [hl]
	db $fd
	ld a, e
	ld d, [hl]
	db $fd
	and l
	ld d, [hl]
	cp a
	ld de, $11b7
	or a
	ld [de], a
	cp a
	ld de, $13b0
	or b
	inc de
	or b
	inc de
	or b
	inc de
	or b
	ld [de], a
	or b
	inc de
	or b
	ld [de], a
	or b
	inc de
	or b
	ld [de], a
	or b
	ld [de], a
	or b
	ld [de], a
	or b
	ld [de], a
	or b
	ld de, $11b0
	or b
	ld de, $11b0
	cp $00
	dec h
	ld d, [hl]
	or e
	ld de, $12b3
	or e
	inc de
	or e
	ld [de], a
	or e
	ld de, $12b3
	or e
	inc de
	or c
	inc de
	or c
	ld [de], a
	rst $38
	or e
	ld de, $12b3
	or e
	inc de
	or e
	ld [de], a
	or e
	ld de, $12b3
	or e
	inc de
	or b
	inc de
	or b
	inc de
	or b
	ld [de], a
	or b
	ld [de], a
	rst $38
	or e
	ld de, $12b3
	or e
	ld de, $12b3
	or e
	ld de, $11b3
	or b
	inc de
	or b
	inc de
	or b
	inc de
	or b
	inc de
	or b
	ld [de], a
	or b
	ld [de], a
	or b
	ld [de], a
	or b
	ld [de], a
	rst $38

	db $ed, $00, $a0, $f0, $77, $ec, $02, $dc, $c3, $e5, $b3, $e4, $01, $23, $71, $21
	db $01, $e5, $b3, $71, $e4, $23, $21, $01, $e5, $b1, $c1, $b1, $e4, $01, $e5, $b1
	db $e4, $07, $c1, $e5, $b1, $e4, $01, $e5, $91, $b1, $71, $91, $61, $b3, $e4, $01
	db $23, $71, $21, $01, $e5, $b3, $71, $e4, $23, $21, $71, $61, $43, $21, $03, $e5
	db $91, $b1, $e4, $01, $21, $01, $e5, $b1, $91, $73, $63, $e4, $01, $e5, $71, $41
	db $71, $e4, $21, $e5, $91, $61, $91, $dc, $b3, $b1, $71, $21, $71, $b1, $71, $21
	db $71, $e4, $01, $e5, $71, $41, $71, $e4, $21, $e5, $91, $61, $91, $b1, $71, $21
	db $71, $b1, $71, $21, $71, $91, $41, $01, $41, $91, $41, $01, $41, $91, $41, $01
	db $41, $91, $41, $01, $41, $61, $21, $01, $21, $71, $41, $01, $41, $71, $41, $01
	db $41, $61, $21, $01, $21, $fe, $00, $cb, $56

	rst $38

	db $ec, $02, $dc, $d3, $e3, $21, $dc, $a3, $01, $dc, $d3, $e4, $b1, $dc, $b3, $91
	db $dc, $d3, $e3, $71, $dc, $b3, $41, $dc, $d3, $61, $41, $25, $e4, $b1, $71, $71
	db $91, $b1, $e3, $09, $e4, $61, $71, $91, $b5, $e3, $00, $e4, $b0, $97, $e3, $21
	db $dc, $a3, $01, $dc, $d3, $e4, $b1, $dc, $b3, $e3, $21, $dc, $d3, $71, $dc, $a3
	db $61, $dc, $b3, $61, $dc, $d3, $71, $45, $21, $27, $01, $e4, $b1, $91, $71, $e3
	db $21, $01, $e4, $b1, $91, $79, $71, $91, $b1, $e3, $07, $25, $01, $e4, $b7, $c1
	db $71, $91, $b1, $e3, $03, $03, $25, $00, $20, $e4, $b7, $c1, $b1, $91, $71, $97
	db $43, $b3, $97, $73, $43, $67, $73, $b3, $b7, $97, $fe, $00, $5e, $57

	rst $38

	db $ea, $18, $28, $dc, $12, $e4, $75, $45, $63, $75, $95, $73, $45, $65, $43, $75
	db $45, $23, $75, $45, $63, $75, $95, $73, $45, $65, $93, $75, $45, $23, $07, $27
	db $77, $43, $23, $07, $27, $77, $93, $73, $47, $97, $47, $77, $67, $47, $47, $67
	db $fe, $00, $e0, $57

	rst $38
	db $ed
	nop
	sub b
	ldh a, [rPCM34]
	ld [$1605], a
	call c, $e210
	ld b, b
	ret nz

	db $e3
	or b
	ret nz

	ld [c], a
	db $10
	ret nz

jr_002_5823:
	db $e3
	or b
	ld [c], a
	ld b, b
	jp $c141


	jr nc, @-$3e

	db $e3
	or b
	ret nz

	ld [c], a
	db $10

jr_002_5831:
	ret nz

	db $e3
	or b
	ld [c], a
	jr nc, @-$37

	db $10
	ret nz

	jr nc, @-$3e

	db $10
	db $e3
	or b
	pop bc

jr_002_583f:
	ld [c], a
	db $10
	ret nz

	jr nc, @-$3e

	db $10
	db $e3
	or b
	pop bc
	ld [c], a
	inc sp
	inc de
	jr nc, jr_002_588d

	ret nz

	ld h, b
	ret nz

	db $e3
	or c
	ret nz

	ld [c], a
	ld b, b
	ret nz

	db $e3
	or b
	ret nz

	ld [c], a
	db $10
	ret nz

	db $e3
	or b
	ld [c], a
	ld b, b
	rst $00
	jr nc, jr_002_5823

	db $e3
	or b
	ret nz

	ld [c], a
	db $10
	ret nz

	db $e3
	or b
	ld [c], a
	jr nc, jr_002_5831

	db $e3
	or c
	pop bc
	ld [c], a
	db $10
	ret nz

	jr nc, @-$3e

	db $10
	db $e3
	or b
	pop bc
	ld [c], a
	db $10
	ret nz

	jr nc, jr_002_583f

	ld b, b
	ld h, b
	pop bc
	ld h, e
	ld b, e
	ld h, b
	add b
	ret nz

	ld h, b
	ret nz

	ld sp, $e3c2
	sub c

jr_002_588d:
	pop bc
	or c
	pop bc
	ld [c], a
	ld de, $41c1
	ld h, a
	pop bc
	ld b, c
	ld sp, $c111
	db $e3
	add c
	pop bc
	sub c
	pop bc
	or c
	pop bc
	ld [c], a
	ld sp, $c147
	ld sp, $3111
	db $e3
	sub c
	add c
	sub c
	and b
	or b
	jp $c161


	or c

jr_002_58b2:
	and c
	or c
	ld [c], a
	nop
	db $10
	rst $00
	db $e3

jr_002_58b9:
	ld h, c
	ld d, c
	ld h, c
	add c
	sub c
	ld [c], a
	ld b, c
	ld sp, $e311
	or c
	push bc
	or c
	push bc
	cp $00
	jr @+$5a

	rst $38
	db $ed
	nop
	sub b
	ldh a, [rPCM34]
	add sp, -$16
	ld b, $15
	call c, $e210
	ld b, b
	ret nz

	add b
	ret nz

	ld h, b

jr_002_58dd:
	ret nz

	sub b
	add b
	rst $00
	jr nc, @-$3e

	ld h, b

jr_002_58e4:
	ret nz

	ld b, b
	ret nz

	add b
	ld h, b
	jp $b1e3


	pop bc
	ld [c], a
	db $10
	ret nz

	jr nc, jr_002_58b2

	ld b, b
	ld h, b
	pop bc
	db $10
	ret nz

	jr nc, jr_002_58b9

	ld b, b
	ld h, b
	pop bc
	ld h, e
	ld b, e
	ld h, b
	add b
	ret nz

	ld h, b
	ret nz

	ld sp, $40c0
	ret nz

	add b
	ret nz

	ld h, b
	ret nz

	sub b
	add b
	jp $c141


	jr nc, @-$3e

	ld h, b
	ret nz

	ld b, b
	ret nz

	add b
	ld h, b
	rst $00
	db $10
	ret nz

	jr nc, jr_002_58dd

	ld b, b
	ld h, b
	pop bc
	db $10
	ret nz

	jr nc, jr_002_58e4

	ld b, b
	ld h, b
	pop bc
	ld h, e
	ld b, e
	ld h, b
	add b
	ret nz

	or b
	ret nz

	ld h, c
	ret nz

	ld de, $31c1
	pop bc
	ld b, c
	pop bc
	add c
	pop bc
	scf
	pop bc
	ld b, c
	ld sp, $e311
	or c
	pop bc
	ld [c], a
	ld de, $31c1
	pop bc
	ld h, c
	pop bc
	rla
	pop bc
	ld sp, $e311
	or c
	sub c
	add c
	sub c
	add b
	ld h, b
	rst $00
	or c
	and c
	or c
	sub b
	add b
	jp $c181


	ld h, c
	ld d, c
	ld h, c
	add c
	sub c
	ld b, c
	ld de, $6141
	push bc
	ld sp, $fec5
	nop
	push de
	ld e, b
	rst $38
	db $ed
	nop
	add sp, -$02
	nop
	db $76
	ld e, c

	db $ed, $00, $90, $f0, $77, $ea, $08, $24, $ec, $03, $dc, $c5, $e5, $83, $63, $41
	db $41, $61, $31, $41, $41, $31, $13, $33, $41, $33, $11, $41, $43, $dc, $a5, $13
	db $e6, $b5, $e5, $11, $13, $e6, $b3, $dc, $c5, $fd, $7a, $5a, $e5, $35, $41, $e6
	db $b3, $dc, $a5, $e5, $11, $e6, $b1, $93, $b3, $b1, $e5, $11, $31, $41, $31, $11
	db $31, $dc, $c5, $81, $41, $61, $41, $43, $61, $31, $43, $31, $13, $33, $41, $31
	db $11, $11, $41, $43, $dc, $a5, $11, $e6, $91, $b5, $e5, $11, $11, $e6, $b1, $b3
	db $dc, $c5, $fd, $7a, $5a, $e5, $33, $31, $41, $e6, $b1, $e5, $11, $81, $43, $e6
	db $b1, $e5, $41, $dc, $a5, $13, $e6, $b1, $e5, $33, $11, $43, $dc, $b3, $fd, $87
	db $5a, $91, $b1, $91, $81, $93, $63, $81, $41, $e6, $b1, $e5, $43, $81, $e6, $b1
	db $e5, $41, $41, $61, $41, $31, $41, $31, $11, $e6, $b1, $e5, $11, $31, $11, $e6
	db $b3, $b1, $e5, $11, $31, $fe, $02, $0f, $5a, $41, $e6, $b3, $e5, $43, $e6, $b1
	db $e5, $11, $81, $81, $e6, $b1, $e5, $61, $e6, $b1, $e5, $41, $e6, $b1, $e5, $31
	db $e6, $b1, $e5, $fd, $87, $5a, $91, $41, $91, $b1, $91, $81, $91, $61, $81, $41
	db $e6, $b1, $e5, $41, $11, $81, $11, $31, $b1, $41, $81, $41, $61, $43, $81, $61
	db $31, $e6, $b1, $e5, $33, $61, $31, $31, $61, $e6, $b1, $e5, $41, $e6, $b1, $e5
	db $31, $e6, $b1, $b1, $e5, $31, $dc, $b6, $67, $63, $33, $47, $dc, $84, $e6, $b3
	db $e5, $41, $61, $fe, $00, $7d, $59, $e5, $61, $33, $41, $33, $13, $e6, $b3, $e5
	db $11, $31, $11, $ff, $91, $41, $11, $43, $91, $11, $41, $ff, $ea, $05, $15, $fd
	db $fd, $5a, $e4, $81, $dc, $c4, $45, $dc, $c5, $ec, $03, $e5, $13, $33, $45, $65
	db $83, $fd, $fd, $5a, $e4, $81, $dc, $c4, $4d, $ec, $03, $e5, $45, $65, $83, $dc
	db $b7, $ec, $02, $ea, $08, $17, $e3, $1b, $e4, $93, $e3, $47, $61, $41, $31, $11
	db $e4, $bb, $83, $bf, $6b, $81, $91, $b3, $93, $83, $63, $8b, $43, $bf, $e3, $1b
	db $31, $41, $63, $43, $33, $13, $e4, $bb, $e3, $11, $31, $13, $e4, $b3, $93, $83
	db $9b, $b1, $e3, $01, $03, $e4, $b3, $93, $63, $dc, $b7, $97, $e3, $07, $e4, $bd
	db $dc, $84, $80, $dc, $a4, $90, $fe, $00, $8f, $5a, $ec, $02, $dc, $c3, $e4, $b3
	db $93, $dc, $c4, $89, $dc, $c3, $81, $91, $b3, $b1, $91, $81, $91, $dc, $c4, $69
	db $dc, $c5, $ec, $03, $e5, $43, $37, $43, $63, $dc, $c3, $ec, $02, $e4, $93, $83
	db $dc, $c4, $69, $dc, $c3, $61, $81, $93, $91, $81, $61, $ff, $dc, $11, $e8, $ea
	db $00, $00, $e4, $fd, $c2, $5b, $fd, $c2, $5b, $fd, $cb, $5b, $81, $41, $61, $81
	db $c1, $41, $61, $81, $fd, $c2, $5b, $b1, $41, $61, $81, $c1, $41, $61, $81, $fd
	db $c2, $5b, $fd, $cb, $5b, $81, $41, $61, $81, $c1, $81, $41, $b1, $c1, $41, $61
	db $41, $81, $41, $b1, $41, $ea, $08, $25, $97, $47, $97, $67, $87, $47, $8b, $43
	db $61, $61, $31, $43, $61, $31, $41, $61, $61, $b1, $91, $81, $91, $81, $61, $81
	db $81, $41, $81, $c1, $41, $61, $81, $c1, $41, $61, $81, $b1, $91, $81, $61, $97
	db $47, $97, $b1, $91, $81, $61, $87, $47, $b3, $43, $63, $83, $c1, $31, $41, $61
	db $c1, $61, $b1, $91, $93, $83, $61, $31, $91, $61, $c1, $41, $61, $81, $c1, $41
	db $60, $80, $40, $60, $83, $b1, $91, $81, $91, $81, $61, $fe, $00, $32, $5b, $c1
	db $41, $61, $81, $c1, $41, $61, $81, $ff, $91, $61, $81, $91, $c1, $91, $81, $61
	db $c1, $61, $81, $91, $c1, $91, $81, $61, $31, $31, $41, $61, $c1, $31, $41, $61
	db $c1, $31, $41, $61, $c1, $31, $41, $61, $ff, $dc, $fd, $33, $5c, $fd, $33, $5c
	db $fd, $42, $5c, $fd, $42, $5c, $fe, $02, $f0, $5b, $fd, $33, $5c, $fd, $5c, $5c
	db $fd, $4f, $5c, $b5, $06, $b5, $06, $b3, $07, $fd, $6b, $5c, $fd, $5c, $5c, $fd
	db $4f, $5c, $fd, $6b, $5c, $fd, $4f, $5c, $b5, $06, $b5, $06, $b1, $07, $b1, $06
	db $b5, $06, $b5, $06, $b3, $06, $b5, $06, $b5, $08, $b3, $08, $fe, $00, $ec, $5b
	db $b5, $08, $b5, $08, $b3, $08, $b5, $08, $b5, $08, $b1, $08, $b1, $08, $ff, $b5
	db $08, $b5, $08, $b3, $08, $b5, $08, $b5, $08, $b3, $08, $ff, $b5, $06, $b5, $06
	db $b3, $07, $b5, $06, $b5, $06, $b3, $07, $ff, $b5, $06, $b5, $06, $b3, $07, $b5
	db $06, $b5, $06, $b1, $07, $b1, $06, $ff, $b5, $06, $b5, $06, $b1, $07, $b1, $07
	db $ff

	ld hl, sp-$13
	ld bc, $f000
	ld [hl], a
	ld [$2606], a
	db $ec
	ld [bc], a
	add sp, -$2c
	or c
	push hl
	add c
	add c
	add c
	call c, $e4b3
	ld b, e
	rst $38
	ld hl, sp-$16
	ld [$ec27], sp
	ld [bc], a
	call nc, $e4c1
	ld b, c
	ld b, c
	ld b, c
	call c, $b3c3
	rst $38
	ld hl, sp-$2c
	db $10
	db $e4
	or b
	ret nz

	or b
	ret nz

	or b
	ret nz

	call c, $e410
	or c
	pop bc
	rst $38
	db $ed
	nop
	add b
	ldh a, [rPCM34]
	db $ec
	ld [bc], a
	add sp, -$24
	or c
	push hl
	or c
	sub c
	add c
	sub c
	add c
	ld h, c
	ld b, c
	ld sp, $b3e6
	or b
	push hl
	jr nc, jr_002_5d04

	add b
	cp c
	db $fd
	db $e4
	ld e, h
	db $fd
	jp hl


	ld e, h
	db $fd
	db $e4
	ld e, h
	ld b, e
	ld b, e
	ld b, c
	ld b, l
	db $fd
	db $e4
	ld e, h
	db $fd
	jp hl


	ld e, h
	db $fd
	db $e4
	ld e, h
	ld b, e
	ld b, e
	ld b, c
	ld b, l
	cp $00
	db $d3
	ld e, h
	ld b, c
	ld b, l
	ld h, c
	ld h, l
	rst $38
	ld b, c
	ld b, l
	ld hl, $ff25
	db $ec
	ld [bc], a
	call c, $e4c1
	ld b, c
	ld hl, $2111
	ld de, $b1e5
	sub c
	add c
	ld b, e
	ld b, b
	add b
	or b
	db $e4
	jr nc, jr_002_5d4a

	push hl

jr_002_5d04:
	sub c
	db $e4
	ld de, $2143
	ld h, c
	sub e
	push hl
	sub c
	db $e4
	ld de, $2143
	ld de, $b3e5
	sub c
	db $e4
	ld de, $2143
	ld h, c
	sub c
	sub c
	add c
	ld b, c
	ld h, c
	add c
	sub c
	sub c
	sub e
	push hl
	sub c
	db $e4
	ld de, wdc42
	add c
	ld b, b
	call c, $21c1
	ld h, c
	sub d
	call c, $9091
	call c, $e5c1
	sub c
	db $e4
	ld de, $2043
	stop
	push hl
	or b
	or d
	call c, $80a1
	call c, $91c1
	db $e4
	ld de, wdc42

jr_002_5d4a:
	sub c
	ld b, b
	call c, $21c1
	ld h, c
	sub d
	call c, $9081
	call c, $81c1
	ld b, b
	call c, Call_002_4081
	call c, $61c1
	call c, $6081
	call c, $80c1
	sub c
	sub c

jr_002_5d66:
	sub e
	cp $00
	inc hl
	ld e, l
	call c, wcf10
	db $e4
	ld b, b
	jp nz, $c240

	ld b, b
	ret z

	db $fd
	or l
	ld e, l
	sub b
	ret nz

	sub b
	call nz, wc080
	add b
	call nz, $b5fd
	ld e, l
	or b
	jp nz, $c280

	sub b
	ret nz

	sub b
	jp nz, $befd

	ld e, l
	jp nz, Jump_002_40e2

	ret nz

	db $e3
	sub b
	ret nz

	sub b
	jp nz, wc0b0

	add b
	ret nz

	add b
	jp nz, $befd

	ld e, l
	ret nz

	ld [c], a
	ld b, b
	ret nz

	jr nz, jr_002_5d66

	db $e3
	or b
	ret nz

	sub b
	ret nz

	add b
	jp nz, wc090

	sub b
	jp nz, $00fe

	adc e
	ld e, l
	sub b
	ret nz

	sub b
	call nz, wc090
	sub b
	call nz, $e2ff
	db $10
	ret nz

	db $e3
	sub b
	ret nz

	sub b
	jp nz, Jump_002_60e2

	ret nz

	db $e3
	sub b
	ret nz

	sub b
	rst $38
	call c, wcfcf
	rst $08
	rst $08
	rst $08
	call $b0d6
	inc de
	or b
	inc de
	or b
	ld [de], a
	or b
	ld [de], a
	or e
	ld de, $11b5
	or c
	ld de, $11b1
	or c
	ld de, $11b3
	or c
	ld de, $13b0
	or b
	inc de
	or l
	ld de, $13b0
	or b
	inc de
	or e
	ld de, $11b5
	or c
	ld de, $12b0
	or b
	ld [de], a
	or c
	ld de, $11b1
	or c
	ld de, $13b0
	or b
	inc de
	or b
	ld [de], a
	or b
	ld [de], a
	or l
	ld de, $11b1
	or e
	ld de, $11b3
	or b
	inc de
	or b
	inc de
	or c
	ld de, $12b0
	or b
	ld [de], a
	or c
	ld de, $11b3
	or e
	ld de, $11b1
	or b
	inc de
	or b
	inc de
	or b
	ld [de], a
	or b
	ld [de], a
	or c
	ld de, $11b1
	or e
	ld de, $11b1
	or b
	inc de
	or b
	inc de
	or b
	ld [de], a
	or b
	ld [de], a
	or l
	ld de, $13b0
	or b
	inc de
	or e
	ld de, $11b3
	or b
	inc de
	or b
	inc de
	or b
	ld [de], a
	or b
	ld [de], a
	cp $00
	sbc $5d

	db $ed, $00, $70, $f0, $77, $ec, $03, $e8, $dc, $b4, $e5, $60, $b0, $e4, $30, $40
	db $6b, $dc, $a2, $e5, $45, $b9, $45, $b9, $45, $33, $61, $63, $45, $33, $61, $63
	db $45, $b9, $45, $b9, $45, $33, $61, $63, $45, $33, $61, $63, $65, $43, $91, $93
	db $65, $43, $91, $93, $65, $43, $81, $83, $65, $43, $81, $83, $45, $33, $61, $63
	db $45, $33, $61

	ld h, e
	ld h, l
	ld b, e
	add c
	add e
	ld h, l
	ld b, e
	add c
	add e
	cp $00
	add d
	ld e, [hl]

	db $ea, $08, $11, $ec, $02, $dc, $c4, $e5, $b0, $e4, $30, $60, $a0, $bb, $dc, $b2
	db $e5, $b1, $e4, $11, $31, $43, $31, $13, $dc, $64, $e4, $b1, $e3, $11, $31, $43
	db $31, $13, $dc, $b2, $e5, $b1, $91, $81, $93, $b1, $b3, $dc, $81, $e4, $b1, $91
	db $81, $93, $b1, $b3, $dc, $b2, $e5, $b1, $e4, $11, $31, $43, $31, $13, $dc, $64
	db $e4, $b1, $e3, $11, $31, $43, $31, $13, $dc, $b2, $e5, $b1, $91, $81, $93, $b1
	db $b3, $dc, $81, $e4, $b1, $91, $81, $93, $b1, $b3, $dc, $b5, $e4, $15, $e5, $90
	db $e4, $10, $45, $10, $40, $63, $43, $33, $13, $e5, $b5, $80, $b0, $e4, $47, $dc
	db $65, $e4, $b5, $80, $b0, $e3, $47, $dc, $b5, $e5, $95, $60, $90, $e4, $37, $43
	db $33, $13

	inc bc
	push hl
	or l
	add b
	or b
	db $e4
	ld b, l
	push hl
	or b
	db $e4
	ld b, b
	call c, $8fb7
	cp $00
	ld [bc], a
	ld e, a

	db $dc, $12, $c9, $e4, $60, $c0, $b0, $c0, $e3, $10, $c0, $e4, $b0, $c4, $e3, $43
	db $c5, $e4, $b0, $c4, $e3, $43, $e4, $60, $c0, $b0, $c0, $e3, $10, $c0, $e4, $60
	db $c0, $60, $c0, $b0, $c0, $60, $c0, $b0, $c0, $60, $c0, $b0, $c0, $60, $c0, $b0
	db $c0, $60, $c0, $b0, $c0, $60, $c0, $b0, $c0, $60, $c0, $b0, $c0, $60, $c0, $b0
	db $c0, $40, $c0, $b0, $c0, $40, $c0, $b0, $c0, $40, $c0, $b0, $c0, $40, $c0, $b0
	db $c0, $40, $c0, $b0, $c0, $40, $c0, $b0, $c0, $40, $c0, $90, $c0, $b0, $c0, $60
	db $c0, $60, $c0, $b0, $c0, $60, $c0, $b0, $c0, $60, $c0, $b0, $c0, $60, $c0, $b0
	db $c0, $60, $c0, $b0, $c0, $60, $c0, $b0, $c0, $60, $c0, $70, $c0, $80, $c0, $e4
	db $90, $c0, $e3, $10, $c0, $e4, $90, $c0, $e3, $10, $c0, $e4, $90, $c0, $e3, $10
	db $c0, $e4, $90, $c0, $e3, $10, $c0, $fe, $02, $b9, $5f, $e4, $80, $c0, $b0, $c0
	db $80, $c0, $b0, $c0, $80, $c0, $b0, $c0, $80, $c0, $b0, $c0, $fe, $02, $d5, $5f
	db $60, $c0, $90, $c0, $60, $c0, $90, $c0, $60, $c0, $90, $c0, $60, $c0, $90, $c0
	db $fe, $02, $ea, $5f

	add b
	ret nz

	or b
	ret nz

	add b
	ret nz

	or b
	ret nz

	add b
	ret nz

	or b
	ret nz

	add b
	ret nz

	or b
	ret nz

	cp $02
	cp $5f
	cp $00
	cp c
	ld e, a
	db $ed
	nop
	ld h, h
	cp $00
	jr nz, jr_002_607d

	db $ed, $00, $70, $f0, $77, $ec, $03, $ea, $06, $34, $e8, $dc, $b3, $e4, $20, $10
	db $00, $e5, $b0, $a1, $90, $80, $70, $60, $55, $20, $c2, $20, $c4, $91, $71, $91
	db $b3, $a1, $93, $71, $e4, $03, $21, $c3, $23, $11, $01, $e5, $b1

	db $e4
	inc bc
	ld b, c
	inc hl
	ld bc, $b3e5
	db $e4
	ld bc, $73c3
	ld [hl], c
	ld h, c
	ld b, c
	ld hl, $e561
	sub c
	db $e4
	ld hl, $e561

Jump_002_6060:
	sub c
	db $e4
	ld hl, $21e5
	db $e4
	ld hl, $e5c1
	ld hl, $03e4
	push hl
	or c
	and c
	or c
	db $e4
	ld bc, $e551
	ld [hl], c
	db $e4
	ld bc, $3151
	ld bc, $a1e5
	ld [hl], c

jr_002_607d:
	jp $e4a3


	ld bc, $a1e5
	db $e4
	ld bc, $b7dc
	push hl
	ld [hl], e
	ld hl, $6355
	ld hl, $23c3
	call c, $91b3
	ld [hl], c
	sub c
	cp $00
	dec a
	ld h, b
	db $ed
	nop
	ld h, h
	cp $00
	and d
	ld h, b

	db $ed, $00, $70, $f0, $77, $ec, $03, $ea, $06, $34, $e8, $dc, $b3, $e5, $20, $c2
	db $20, $c4, $91, $71, $91, $fe, $00, $3d, $60, $ec, $03, $ea, $0a, $26, $dc, $c7
	db $e4, $b0, $a0, $90, $80, $71, $60, $50, $40, $30, $25, $e5, $70, $c2, $70, $c2
	db $20, $c0, $e4, $21, $51, $61, $dc, $c7, $73, $21, $55, $63, $71, $c3, $73, $71
	db $a1, $b1

	db $e3

Jump_002_60e2:
	inc bc
	db $e4
	ld [hl], c
	and l
	or e
	db $e3
	ld bc, $03c3
	ld bc, $b1e4
	db $e3
	ld bc, $b0dc
	cpl
	call c, $25b5
	call c, Call_002_53c7
	ld hl, $2101
	call c, $07b0
	call c, $07c7
	db $e4
	ld bc, $a3c3
	ld [hl], c
	ld d, c
	call c, Call_002_7fb0
	call c, Call_002_71b3
	push hl
	ld [hl], c
	jp $e473


	ld hl, $6151
	cp $00
	push de
	ld h, b

	db $ec, $03, $ea, $0a, $26, $dc, $c7, $e5, $70, $c2, $70, $c2, $20, $c0, $e4, $21
	db $51, $61, $fe, $00, $d5, $60, $dc, $14, $e3, $21, $c1, $11, $c1, $01, $c1, $e4
	db $b1, $c1, $70, $c2, $70, $c2, $70, $c0, $70, $c0, $70, $c0, $70, $c0, $71, $e3
	db $21, $e4, $71, $c1, $e3, $21, $e4, $71, $c1, $e3, $21, $e4, $71, $c3, $e3, $23
	db $e4, $71, $a1, $b1

	ld [hl], c
	db $e3
	ld bc, $71e4
	pop bc
	db $e3
	ld bc, $71e4
	pop bc
	or c
	db $e3
	ld bc, $03c3
	ld bc, $b1e4
	sub c
	ld h, c
	sub c
	pop bc
	ld h, c
	sub c
	ld h, c
	pop bc
	sub c
	ld h, c
	sub c
	pop bc
	ld h, c
	sub c
	ld h, c
	db $e3
	ld hl, $91e4
	ld b, c
	db $e3
	ld bc, $e4c1
	ld b, c
	db $e3
	ld bc, $41e4
	ld d, c
	ld [hl], c
	ld b, c
	jp $e341


	ld bc, $b1e4
	and c
	sub c
	ld [hl], c
	and c
	pop bc
	ld [hl], c
	and c
	ld [hl], c
	pop bc
	and c
	ld [hl], c
	db $e3
	ld hl, $71e4
	pop bc
	db $e3
	ld hl, $71e4
	pop bc
	db $e3
	ld hl, $00fe
	ld c, b
	ld h, c

	db $dc, $14, $e4, $70, $c2, $70, $c2, $70, $c0, $70, $c0, $70, $c0, $70, $c0, $fe
	db $00, $48, $61

	ld hl, sp-$13
	ld bc, $f000
	ld [hl], a
	db $ec
	ld [bc], a
	push de
	or c
	push hl
	sub c
	sub c
	ld [hl], c
	ld [hl], c
	ld d, c
	ld b, c
	ld d, c
	sub c
	db $e4
	inc bc
	ld b, e
	push hl
	ld d, e
	rst $38
	ld hl, sp-$14
	ld [bc], a
	push de
	jp nz, Jump_002_51e3

	ld b, b
	ret nz

	ld hl, wc000
	db $e4
	and c
	db $e3
	ld bc, $4121
	ld d, e
	ld [hl], e
	ld d, e
	rst $38
	ld hl, sp-$2b
	db $10
	db $e3
	nop
	ret nz

	db $e4
	ld d, c
	db $e3
	nop
	ret nz

	db $e4
	and b
	ret nz

	sub b
	ret nz

	ld [hl], b
	ret nz

	ld d, b
	ret nz

	ld b, b
	ret nz

	db $e3
	ld d, b
	jp nz, $c200

	db $e4
	ld d, c
	pop bc
	rst $38

jr_002_6213:
	ld hl, sp-$13

jr_002_6215:
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
	jr nc, jr_002_6213

	jr nc, jr_002_6215

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

	db $f8, $ed, $01, $00, $f0, $77, $ec, $02, $e8, $d5, $a4, $e5, $a3, $d5, $b1, $e4
	db $01, $00, $00, $d5, $a4, $33, $d5, $b1, $51, $50, $50, $d5, $b4, $a7, $ff, $f8
	db $ea, $04, $23, $ec, $02, $d5, $d1, $e4, $71, $70, $70, $d5, $c4, $33, $d5, $d1
	db $81, $80, $80, $a1, $a0, $a0, $d5, $c4, $e3, $37, $ff, $f8, $d5, $10, $e4, $33
	db $83, $73, $53, $37, $ff

	db $ed
	nop
	add b
	ldh a, [rPCM34]
	db $ec
	ld bc, $08ea
	inc [hl]
	add sp, -$24
	and h
	set 4, l
	ld b, c
	ld h, c
	ld b, e
	inc hl
	ld de, $4121
	pop bc
	ld b, e
	ld h, c
	ld hl, $6343
	add e
	jp $8343


	jp Jump_002_4111


	ld h, e
	inc hl
	ld b, e
	inc hl
	ld de, $4121
	pop bc
	ld b, e
	ld h, c
	ld hl, $6343
	add e
	ld h, e
	ld b, e
	ld h, e
	jp Jump_002_4111


	ld h, e
	inc hl
	ld b, e
	inc hl
	ld de, $4121
	pop bc
	ld b, e
	ld h, c
	ld hl, $6343
	add e
	ld h, a
	add e
	ld b, e
	jp $6143


	ld b, c
	inc hl
	jp Jump_002_4323


	inc de
	jp $2113


	ld de, $b3e6
	ld b, e
	or e
	push hl
	ld hl, $b1e6
	sub e
	jp $b193


	sub c
	add e
	jp $8313


	sub e
	jp $b393


	or e
	jp $27e5


	cp $00
	xor a
	ld h, d
	db $ec
	nop
	ld [$240c], a
	call c, $e5c5
	sub c
	ld b, c
	sub e
	or e
	db $e4
	inc hl
	ret c

	push bc
	ld de, $1121
	push hl
	or d
	sub d
	or l
	add l
	sub d
	or d
	db $e4
	dec d
	dec h
	ld [de], a
	push hl
	or d
	db $e4
	ld b, l
	ld [hli], a
	ld [de], a
	push hl
	or l
	db $e4
	ld [de], a
	push hl
	or d
	sub d
	ld b, d
	sub l
	or l
	db $e4
	dec h
	ld de, $1121
	push hl
	or d
	sub d
	or l
	add l
	sub d
	or d
	db $e4
	dec d
	dec h
	ld [de], a
	push hl
	or d
	db $e4
	ld b, l
	ld [hli], a
	ld [de], a
	push hl
	cp e
	sub d
	ld b, d
	sub l
	or l
	db $e4
	dec h
	ld de, $1121
	push hl
	or d
	sub d
	or l
	add l
	sub d
	or d
	db $e4
	dec d
	dec h
	ld [de], a
	push hl
	or d
	db $e4
	ld b, l
	ld [hli], a
	ld [de], a
	push hl
	cp e
	jp nz, $12e4

	push hl
	or d
	db $e4
	ld [de], a
	ld [de], a
	ld [hli], a
	ld [de], a
	ld [hli], a
	ld b, d
	push hl
	or d
	add d
	ld h, d
	ld b, d
	ld h, d
	add d
	or d
	jp nz, $8292

	sub d
	sub d
	or d
	sub d
	or d
	db $e4
	ld [de], a
	push hl
	add d
	ld h, d
	ld b, d
	ld b, d
	ld h, d
	add d
	or d
	jp nz, Jump_002_4262

	ld h, d
	ld h, d
	add d

Call_002_63a4:
	ld h, d
	add d
	sub d
	ld b, d
	ld [de], a
	and $b2
	sub d
	or d
	push hl
	ld [de], a
	ld b, d
	jp nz, Jump_002_4262

	ld h, d
	ld h, d
	add d
	sub d
	or d
	db $e4
	ld [de], a
	ld [hli], a
	ld [de], a
	push hl
	or d
	db $e4
	ld b, d
	ld [hli], a
	ld [de], a
	push hl
	or d
	cp $00
	dec de
	ld h, e
	call c, wcf13
	set 4, h
	or c
	add c
	sub a
	ld h, a
	add e
	jp $97b7


	or a
	sub a
	add a
	sub a
	ld h, a
	add a
	or a
	sub e
	ld b, e
	or e
	ld b, e
	sub e
	ld b, e
	add e
	ld b, e
	sub e
	ld b, e
	ld h, e
	ld [hl], e
	add e
	sub e
	db $e3
	daa
	rla
	rla
	db $e4
	or a
	or a
	sub a
	sub a
	add a
	add a
	ld h, a
	ld h, a
	ld b, a
	ld b, a
	ld h, a
	ld h, a
	add a
	or a
	cp $00
	ret z

	ld h, e
	db $ed
	nop
	sub h
	ldh a, [rPCM34]
	db $ec
	inc bc
	ld [$3208], a
	add sp, -$24
	or [hl]
	rst $00
	push hl
	ld b, c
	ld sp, $0111
	and $b1
	call $b3e5
	db $e4
	ld de, $2030
	inc de
	push hl
	or e
	add a
	ld b, a
	sub e
	add c
	ld h, c
	add c
	sub c
	or c
	db $e4
	ld de, $13cf
	push hl
	or c
	db $e4
	db $10
	jr nc, jr_002_6445

	push hl
	or e
	ld b, b
	ld b, b
	ld b, b
	ld b, b
	ld b, b
	jp nz, $b387

	sub c
	add c
	ld h, c
	add c
	sub c
	or c
	ld b, c
	ld h, c
	add c

jr_002_6445:
	pop bc
	db $e4
	ld b, e
	push hl
	or e
	ld h, c
	add c
	sub c
	pop bc
	db $e4
	ld h, e
	inc sp
	push hl
	ld b, c
	jp $c361


	sub c
	pop bc
	or c
	rst $08
	rst $08
	call $674f
	add e
	ld h, e
	ld b, c
	call $00fe
	rla
	ld h, h
	db $ec
	inc bc
	ld [$2308], a
	call c, $e4c2
	ld b, c
	ld sp, $e511
	or c
	sub c
	or c
	db $e4
	ld de, $4531
	call c, $ecc2
	ld [bc], a
	db $e4
	ld b, b
	push hl
	or b
	db $e4
	ld de, $4031
	ld h, b
	add b
	sub b
	call c, $85a6
	call c, $90c2
	add b
	call c, $6dc4
	call c, $40c2
	push hl
	or b
	db $e4
	ld de, $4031
	ld h, b
	add b
	sub b
	call c, $85c4
	call c, $40c2
	add b
	call c, $bdc5
	call c, $40c2
	push hl
	or b
	db $e4
	ld de, $4031
	ld h, b
	add b
	sub b
	call c, $85a6
	call c, $90c2
	add b
	call c, Call_002_67c4
	call c, $eca1
	ld bc, $80e5
	add b
	add b
	add b
	add b
	ret nz

	call c, $ecc2
	ld [bc], a
	db $e4
	ld b, b
	push hl
	or b
	db $e4
	ld de, $4031
	ld h, b
	add b
	sub b
	call c, $85c4
	ld b, b
	add b
	call c, $b7c6
	call c, $10c2
	push hl
	or b
	db $e4
	db $10
	jr nc, jr_002_652c

	call c, $83c7
	ld b, e
	call c, $30c2
	db $10
	jr nc, jr_002_6533

	ld h, e
	call c, $b3c7
	ld h, e
	call c, $10c2
	push hl
	or b
	db $e4
	db $10
	jr nc, jr_002_6542

	ld b, b
	jr nc, jr_002_6544

	ld h, b
	add c
	add b
	sub b
	add b
	sub b
	or b
	ld h, b
	jr nc, jr_002_651e

	push hl
	or b
	db $e4
	db $10
	jr nc, jr_002_6574

	call c, $b7c2
	call c, $e5b7
	ld b, a
	and $b3
	push hl

jr_002_651e:
	ld h, e
	add e
	sub e
	or a
	or a
	add e
	db $e4
	inc sp
	inc de
	inc sp
	ld b, c
	ld sp, $3111

jr_002_652c:
	call c, Call_002_45c2
	ld b, b
	push hl
	or b
	db $e4

jr_002_6533:
	ld de, $4031
	ld h, b
	add b
	sub b
	cp $00
	adc b
	ld h, h
	call c, wcf11
	db $e4
	ld b, c

jr_002_6542:
	add c
	ld b, c

jr_002_6544:
	add c
	ld b, c
	add c
	ld b, c
	add c
	ld h, c
	sub c
	ld h, c
	sub c
	or c
	sub c
	add c
	ld h, c
	ld b, c
	add c
	ld b, c
	add c
	ld b, c
	add c
	ld b, c
	add c
	ld h, c
	sub c
	ld h, c
	sub c
	or c
	sub c
	add c
	ld h, c
	ld b, c
	add c
	ld b, c
	add c
	ld b, c
	add c
	ld b, c
	add c
	ld h, c
	sub c
	ld h, c
	sub c
	or c
	sub c
	add c
	ld h, c
	ld b, c
	add c
	ld b, c

jr_002_6574:
	add c
	ld b, c
	add c
	ld b, c
	add c
	ld h, c
	sub c
	ld h, c
	sub c
	or c
	sub c
	add c
	ld h, c
	ld b, c
	add c
	ld b, c
	pop bc
	ld b, e
	add e
	ld h, c
	sub c
	ld h, c
	pop bc
	ld h, e
	sub e
	ld de, $41c3
	jp $9181


	or c
	rst $00
	sub c
	add c
	ld h, c
	ld b, c
	add c
	ld b, c
	add c
	ld b, c
	add c
	ld b, c
	add c
	ld h, c
	sub c
	ld h, c
	sub c
	or c
	sub c
	add c
	ld h, c
	ld b, c
	add c
	ld b, c
	add c
	ld b, c
	add c
	ld b, c
	add c
	ld h, c
	sub c
	ld h, c
	sub c
	or c
	sub c
	add c
	ld h, c
	ld b, c
	add c
	ld b, c
	add c
	ld b, c
	add c
	ld b, c
	add c
	cp $00
	ld c, c
	ld h, l
	db $ed
	nop
	sub b
	ldh a, [rPCM34]
	db $ec
	inc bc
	add sp, -$24
	cpl
	rst $00
	push hl
	daa
	db $ec
	ld [bc], a
	call c, $73b2
	or e
	ld [hl], c
	or e
	ld [hl], c
	ld b, b
	ld b, b
	ld [hl], b
	ld b, b
	or c
	db $e4
	ld bc, $97e5
	ld h, e
	sub e
	ld h, c
	sub l
	sub b
	or b
	db $e4
	nop
	push hl
	or b
	sub c
	or c
	ld [hl], e
	db $e4
	ld [hl], e
	push hl
	ld [hl], e
	or e
	ld [hl], c
	or e
	ld [hl], c
	ld b, b
	ld h, b
	ld [hl], b
	sub b
	or c
	db $e4
	ld bc, $97e5
	sub c
	or c
	db $e4
	ld bc, $b1e5
	sub c
	ld [hl], c
	ld h, c
	ld [hl], c
	ld h, e
	jr nz, jr_002_664e

	ld h, b
	ld [hl], b
	sub a
	call c, $b794
	ld [hl], e
	inc hl
	ld [hl], e
	sub c
	db $e4
	ld bc, $b7e5
	sub a
	ld h, e
	ld [hl], e
	sub e
	ld [hl], e
	ld h, e
	sub e
	or a
	ld [hl], e
	inc hl
	ld [hl], e
	sub c
	db $e4
	ld bc, $b7e5
	sub a
	ld h, e
	ld [hl], e
	sub e
	ld [hl], e
	ld h, e
	sub e
	cp $00
	pop de
	ld h, l
	db $ec
	inc bc
	call c, $e4c2
	jr nz, jr_002_664e

	jr nz, jr_002_6680

	ld h, b
	ld b, b
	ld h, b
	ld [hl], b
	call c, $97a0
	db $ec
	ld [bc], a
	call c, $e4c2
	or e
	ld [hl], e

jr_002_664e:
	or c
	ld [hl], l
	or b
	ld [hl], b
	sub b
	or b
	db $e3
	ld bc, $b1e4
	sub a
	sub e
	ld h, e
	sub c
	ld h, l
	sub b
	ld [hl], b
	ld h, b
	ld [hl], b
	sub c
	or c
	ld [hl], e
	or e
	or e
	ld [hl], e
	or c
	ld [hl], e
	push hl
	or c
	db $e4
	or b
	ld [hl], b
	sub b
	or b
	db $e3
	ld bc, $b1e4
	sub a
	sub c
	ld [hl], c
	ld h, c
	ld [hl], c
	ld h, c
	ld b, c
	ld hl, $2711
	db $e3
	daa

jr_002_6680:
	call c, $e4b4
	daa
	ld bc, $b1e5
	sub c
	or c
	db $e4
	ld b, e
	ld h, e
	daa
	rlca
	push hl
	sub c
	or c
	db $e4
	ld bc, $4121
	ld bc, $4121
	daa
	daa
	ld bc, $b1e5
	sub c
	or c
	db $e4
	ld b, e
	ld hl, $2741
	rlca
	sub c
	ld [hl], c
	ld h, c
	ld b, c
	ld h, c
	ld b, c
	ld hl, $2741
	cp $00
	ld b, a
	ld h, [hl]
	call c, wc713
	db $e3
	jr nz, @+$12

	jr nz, jr_002_66fa

	ld h, b
	ld b, b
	ld h, b
	ld [hl], b
	db $e4
	ld hl, $21b1
	or c
	ld hl, $21b1
	or c
	ld hl, $21b1
	or c
	ld hl, $2191
	sub c
	ld hl, $2191
	sub c
	ld hl, $2191
	sub c
	ld hl, $2191
	sub c
	ld hl, $21b1
	or c
	ld hl, $21b1
	or c
	ld hl, $21b1
	or c
	ld hl, $21b1
	or c
	ld hl, $2191
	sub c
	ld hl, $7191
	sub c
	ld [hl], c
	ld h, c
	ld b, c
	ld de, wc521
	ld h, c

jr_002_66fa:
	jp $7161


	db $e3
	ld hl, $71e4
	db $e3
	ld hl, $71e4
	db $e3
	ld hl, $71e4
	or c
	ld [hl], c
	db $e3
	ld b, c
	ld hl, $2101
	db $e4
	or c
	ld [hl], c
	db $e3
	ld bc, $61e4
	db $e3
	ld hl, $61e4
	db $e3
	ld hl, $61e4
	db $e3
	ld hl, $61e4
	db $e3
	ld hl, $61e4
	db $e3
	ld b, c
	ld hl, $2101
	db $e4
	or c
	sub c
	db $e3
	ld bc, $71e4
	db $e3
	ld hl, $71e4
	db $e3
	ld hl, $71e4
	db $e3
	ld hl, $71e4
	or c
	ld [hl], c
	db $e3
	ld b, c
	ld hl, $2101
	db $e4
	or c
	ld [hl], c
	db $e3
	ld bc, $61e4
	db $e3
	ld hl, $61e4
	db $e3
	ld hl, $61e4
	db $e3
	ld hl, $61e4
	db $e3
	ld hl, $61e4
	db $e3
	ld hl, $e401
	or c
	sub c
	ld [hl], c
	ld h, c
	ld b, c
	cp $00
	cp [hl]
	ld h, [hl]
	db $ed
	nop
	sub b
	ldh a, [rPCM34]
	db $ec
	inc bc
	ld [$340c], a
	add sp, -$24
	or l
	jp $23e5


	ld b, l
	ld de, $b1dc
	inc hl
	call c, $b3b5
	db $e4
	dec b
	push hl
	sub c
	call c, $b3b1
	call c, $73b5
	ld h, e
	ld b, c
	ld h, c
	call c, $73b1
	call c, $73b5
	ld h, e
	ld b, e
	inc hl
	ld b, e
	ld h, l
	sub c
	call c, $73b1
	call c, $b3b5
	db $e4
	dec b
	push hl
	sub c
	or e
	ld [hl], e
	ld h, d
	ld b, b
	ld h, c
	sub c
	call c, $73a2
	db $e4
	jr nz, @+$42

	inc hl
	call c, $2072
	ld b, b
	inc hl
	call c, $e5a7
	or l
	ld [hl], c
	ld b, a
	db $e4
	dec b
	push hl
	sub c
	ld h, a
	db $e4
	ld h, l

Call_002_67c4:
	ld hl, $b1e5
	sub c
	ld [hl], c
	ld h, c
	ld [hl], a
	ld h, e
	ld b, e
	cp $00
	ld [hl], l
	ld h, a
	db $ec
	inc bc
	ld [$230a], a
	call c, $e5c7
	ld [hl], l
	sub b
	or b
	db $e4
	dec b
	jr nz, jr_002_6820

	call c, $23c1
	call c, $73c7
	sub l
	ld [hl], b
	ld h, b
	ld b, e
	inc hl
	ld [bc], a
	push hl
	or b
	db $e4
	ld bc, $4020
	call c, $23c1
	call c, $e5c7
	or a
	sub e
	ld [hl], l
	sub b
	or b
	db $e4
	dec b
	jr nz, jr_002_6841

	call c, $23c1
	call c, $73c7
	sub l
	ld [hl], b
	ld h, b
	ld b, e
	inc hl
	ld [bc], a
	push hl
	or b
	db $e4
	ld bc, $4020
	call c, $23c1
	call c, $e5c7
	sub e
	ld [hl], e
	ld h, e
	call c, $e4b0
	dec h

jr_002_6820:
	push hl
	or c
	ld [hl], a
	db $e4
	ld b, l
	ld bc, $97e5
	db $e4
	sub l
	ld h, c
	ld hl, $e501
	or c
	sub c
	or e
	db $e4
	inc hl
	push hl
	or c
	sub l
	cp $00
	sub $67
	call c, $e410
	ld [hl], b
	jp nz, Jump_002_70b1

jr_002_6841:
	ld [hl], b
	sub b
	ret nz

	sub b
	ret nz

	db $e3
	ld bc, $60e4
	ret nz

	ld [hl], b
	jp nz, Jump_002_70b1

	ld [hl], b
	sub b
	ret nz

	sub b
	ret nz

	db $e3
	ld bc, $60e4
	ret nz

	ld [hl], b
	jp nz, Jump_002_70b1

	ld [hl], b
	sub b
	ret nz

	sub b
	ret nz

	db $e3
	ld bc, $60e4
	ret nz

	ld [hl], b
	jp nz, Jump_002_70b1

	ld [hl], b
	sub b
	ret nz

	sub b
	ret nz

	db $e3
	ld bc, $90e4
	ret nz

	ld [hl], b
	jp nz, Jump_002_70b1

	ld [hl], b
	sub b
	ret nz

	sub b
	ret nz

	db $e3
	ld bc, $60e4
	ret nz

	ld [hl], b
	jp nz, Jump_002_70b1

	ld [hl], b
	sub b
	ret nz

	sub b
	ret nz

	db $e3
	ld bc, $60e4
	ret nz

jr_002_6891:
	ld [hl], b
	jp nz, Jump_002_70b1

	ld [hl], b
	sub b
	ret nz

	sub b
	ret nz

	db $e3
	ld bc, $60e4
	ret nz

	ld [hl], b
	jp nz, $90b3

	ret nz

	sub b
	ret nz

	db $e3
	inc bc
	db $e4
	or b
	jp nz, $21e3

	db $e4
	or b
	or b
	or b
	ret nz

	or b
	ret nz

	db $e3
	ld bc, $b0e4
	ret nz

	ld [hl], b
	jp nz, Jump_002_41e3

	nop
	nop
	nop
	ret nz

	nop
	ret nz

	ld b, c
	nop
	ret nz

	db $e4
	sub b
	jp nz, $91e3

	ld h, b
	ld h, b
	jr nz, @-$3e

	jr nz, jr_002_6891

	ld hl, wc000
	db $e4
	or b
	jp nz, $21e3

	nop
	nop
	db $e4
	or b
	ret nz

	or b
	ret nz

	sub c
	db $e3
	nop
	ret nz

	cp $00
	inc a
	ld l, b
	db $ed
	nop
	sbc h
	ldh a, [rPCM34]
	db $ec
	inc bc
	ld [$340c], a
	add sp, -$24
	or l
	push hl
	ld b, e
	db $10
	jr nz, @+$43

	sub e
	or c
	sub c
	add c
	ld h, c
	ld b, c
	ld h, c
	sub e
	ld h, b
	add b
	sub c
	ld b, e
	ld de, $9141
	add c
	or c
	sub c
	add c
	ld b, c
	ld h, c
	add c
	ld de, $4121
	ld h, c
	ld b, e
	db $10
	jr nz, jr_002_6959

	sub e
	or c
	sub c
	add c
	ld h, c
	ld b, c
	ld h, c
	sub e
	ld h, b
	add b
	sub c
	ld b, e
	db $10
	jr nz, jr_002_6968

	sub c
	add c
	ld h, c
	sub c
	add c
	ld b, c
	ld h, c
	add c
	ld h, e
	ld b, e
	ld h, c
	add c
	ld h, c
	sub c
	add c
	or c
	sub c
	db $e4
	ld de, $1121
	push hl
	or c
	sub c
	add b
	sub b
	or c
	db $e4
	ld de, $e541
	sub c
	db $e4
	ld hl, $81e5
	db $e4
	ld de, $61e5
	or c
	add c
	sub c
	or c
	sub c
	add c
	ld h, c
	ld b, c
	ld h, c
	add c

jr_002_6959:
	or c
	cp $00
	di
	ld l, b
	db $ec
	inc bc
	ld [$230a], a
	call c, $e5c7
	sub a
	db $e4

jr_002_6968:
	inc hl
	inc de
	push hl
	or l
	sub b
	or b
	db $e4
	rla
	push hl
	sub a
	db $e4
	inc hl
	inc de
	push hl
	or l
	db $e4
	db $10
	push hl
	or b
	sub a
	sub a
	db $e4
	inc hl
	inc de
	push hl
	or l
	sub b
	or b
	db $e4
	rla
	push hl
	sub a
	db $e4
	inc hl
	inc de
	push hl
	or l
	db $e4
	db $10
	push hl
	or b
	sub a
	or e
	db $e4
	inc de
	inc hl
	ld b, e
	ld h, a
	or a
	sub e
	add e
	ld h, e
	ld b, e
	ld h, a
	ld b, a
	cp $00
	ld h, e
	ld l, c
	call c, $e410
	sub c
	ld b, c
	sub c
	ld b, c
	sub c
	ld b, c
	sub c
	ld b, c
	add c
	ld b, c
	add c
	ld b, c
	sub c
	add c
	ld h, c
	ld b, c
	sub c
	ld b, c
	sub c
	ld b, c
	sub c
	ld b, c
	sub c
	ld b, c
	add c
	ld b, c
	add c
	ld b, c
	sub c
	add c
	ld h, c
	add c
	sub c
	ld b, c
	sub c
	ld b, c
	sub c
	ld b, c
	sub c
	ld b, c
	add c
	ld b, c
	add c
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
	add c
	ld b, c
	add c
	ld b, c
	sub c
	ld b, c
	sub c
	ld b, c
	or c
	ld b, c
	sub c
	ld b, c
	add c
	ld b, c
	ld h, c
	ld b, c
	add c
	ld b, c
	add c
	ld b, c
	or c
	sub c
	add c
	ld h, c
	ld h, c
	ld b, c
	add c
	ld b, c
	sub c
	ld b, c
	or c
	ld b, c
	or c
	ld b, c
	or c
	ld b, c
	sub c
	ld b, c
	add c
	ld b, c
	cp $00
	and l
	ld l, c
	call c, $3cfd
	ld l, d
	or c
	ld b, $b0
	ld b, $b0
	ld b, $b1
	ld b, $b0
	ld b, $b0
	ld b, $b1
	ld b, $b0
	ld b, $b0
	ld b, $b0
	ld b, $b0
	ld b, $b0
	ld b, $b0
	ld b, $fe
	inc b
	dec bc
	ld l, d
	db $fd
	inc a
	ld l, d
	db $fd
	inc a
	ld l, d
	db $fd
	inc a
	ld l, d
	db $fd
	inc a
	ld l, d
	cp $00
	dec bc
	ld l, d
	or c
	ld b, $b0
	ld b, $b0
	ld b, $b1
	ld b, $b0
	ld b, $b0
	ld b, $b1
	ld b, $b0
	ld b, $b0
	ld b, $b1
	ld b, $b0
	ld b, $b0
	ld b, $ff
	db $ed
	nop
	sbc b
	ldh a, [rPCM34]
	db $ec
	ld bc, $eae8
	nop
	adc b
	call c, wcf87
	rst $08
	rst $08
	rst $08
	call c, $e5a7
	ld [hl], a
	ld [hl], a
	ld b, a
	ld b, a
	ld [hl], e
	ld h, e
	ld b, e
	or e
	rla
	rla
	ld [hl], a
	ld [hl], a
	ld h, a
	ld h, a
	or e
	ld [hl], e
	ld h, e
	or e
	db $e4
	rlca
	rlca
	push hl
	ld [hl], a
	ld [hl], a
	ld b, a
	ld b, a
	ld [hl], e
	ld h, e
	ld b, e
	or e
	rla
	rla
	ld [hl], a
	ld [hl], a
	ld h, a
	ld h, a
	or e
	ld [hl], e
	ld h, e
	or e
	rlca
	rlca
	rst $08
	rst $08
	rst $08
	rst $08
	cp $00
	ld l, b
	ld l, d
	ld [$3400], a
	db $ec
	inc bc
	call c, $e391
	inc bc
	ld [hl], e
	or e
	ld h, e
	cp $00
	and d
	ld l, d
	ld [$1104], a
	call c, wcf35
	rst $08
	rst $08
	rst $08
	call c, $e425
	ld c, a
	cpl
	rrca
	ld b, e
	inc bc
	push hl
	or e
	db $e4
	ld b, e
	ld c, a
	cpl
	rrca
	ld b, e
	inc bc
	push hl
	or e
	db $e4
	ld b, e
	ld c, a
	cpl
	rrca
	ld b, e
	inc bc
	push hl
	or e
	db $e4
	ld b, e
	call c, $e235
	or e
	ld [hl], e
	ld h, e
	or e
	call c, $b325
	ld [hl], e
	ld h, e
	or e
	pop hl
	or e
	ld [hl], e
	ld h, e
	or e
	db $e4
	ld b, e
	ld [hl], e
	ld h, e
	or e
	ld c, a
	cpl
	rrca
	ld b, e
	inc bc
	push hl
	or e
	db $e4
	ld b, e
	ld c, a
	cpl
	rrca
	ld b, e
	inc bc
	push hl
	or e
	db $e4
	ld b, e
	ld c, a
	cpl
	rrca
	ld b, e
	inc bc
	push hl
	or e
	db $e4
	ld b, e
	call c, $e225
	or e
	ld [hl], e
	ld h, e
	or e
	pop hl
	or e
	ld [hl], e
	ld h, e
	or e
	ldh [$b3], a
	ld [hl], e
	ld h, e
	or e
	db $e4
	ld b, e
	ld [hl], e
	ld h, e
	or e
	cp $00
	or [hl]
	ld l, d
	call c, wcfcf
	rst $08
	rst $08
	or a
	rlca
	or a
	rlca
	cp $00
	inc hl
	ld l, e
	db $ed
	nop
	add h
	ldh a, [rPCM34]
	ld [$3406], a
	add sp, -$14
	ld [bc], a
	call c, $e592
	db $eb
	nop
	ld c, c
	nop
	db $eb
	nop
	ld c, c
	ld [hl], b
	db $eb
	nop
	ld c, c
	nop
	db $eb
	nop
	ld c, c
	ld [hl], b
	jp $03ec


	db $fd
	ld e, h
	ld l, e
	call c, Call_002_63a4
	db $fd
	ld e, h
	ld l, e
	call c, Call_002_63a4
	cp $00
	ld c, h
	ld l, e
	call c, $e5a2
	inc bc
	ld [hl], e
	inc bc
	ld [hl], e
	inc bc
	ld [hl], e
	inc bc
	rst $38
	db $ec
	ld [bc], a
	ld [$2508], a
	call c, $e4a2
	ld [hl], b
	jr nz, jr_002_6be2

	jr nz, @-$3b

	db $ec
	inc bc
	db $fd
	add [hl]
	ld l, e
	call c, $93b5
	db $fd
	add [hl]
	ld l, e
	call c, $b3b5
	cp $00
	db $76
	ld l, e
	call c, $e5b2
	ld [hl], e
	inc hl
	ld [hl], e
	inc hl
	ld [hl], e
	inc hl
	ld [hl], e
	rst $38
	call c, wc710
	db $fd
	and d
	ld l, e
	db $e4
	sub e
	db $fd
	and d
	ld l, e
	db $e4
	or e
	cp $00
	sub h
	ld l, e
	push hl
	sub c
	pop bc
	db $e4
	ld hl, $e5c1
	sub c
	pop bc
	db $e4
	ld hl, $e5c1
	sub c
	pop bc
	db $e4
	ld hl, $e5c1
	sub c
	pop bc
	rst $38
	db $ed
	nop
	adc d
	ldh a, [rPCM34]
	db $ec
	inc bc
	ld [$2208], a
	add sp, -$24
	or l
	push hl
	ld [hl], l
	nop
	ld [hl], b
	ld d, l
	and $a0
	push hl
	ld d, b
	ld b, l
	and $90
	push hl
	ld b, b
	ld d, e
	ld [hl], e
	ld b, e
	ld d, c
	ld [hl], c
	ld d, c
	ld b, c
	ld hl, wdc01
	or c
	ld [hli], a
	call c, Call_002_40b5

jr_002_6be2:
	ld d, e
	ld b, c
	ld hl, $5141
	ld b, e
	ld d, c
	ld [hl], c
	ld d, c
	ld b, c
	ld hl, $2101
	jr nz, @+$42

	ld d, e
	ld b, c
	ld hl, $5141
	db $e4
	inc bc
	push hl
	and c
	db $e4
	ld bc, $a1e5
	sub c
	ld [hl], c
	ld d, c
	call c, $a2b1
	call c, Call_002_50b5
	ld d, e
	ld b, c
	ld hl, $5141
	db $e4
	inc bc
	push hl
	and c
	db $e4
	ld bc, $a1e5
	sub c
	ld [hl], c
	ld d, c
	ld hl, $4020
	ld d, e
	and c
	ld d, b
	and b
	db $e4
	inc hl
	push hl
	ld b, c
	ld bc, $7141
	ld d, c
	ld b, c
	ld hl, $5141
	ld hl, $0141
	ld hl, $0141
	ld hl, $0001
	jr nz, jr_002_6c78

	ld bc, $2141
	ld bc, $0041
	ld b, b
	ld d, e
	ld b, c
	ld hl, $5141
	ld b, c
	ld bc, $7141
	ld d, c
	ld b, c
	ld hl, $2141
	ld d, c
	ld hl, $0141
	ld hl, $2101
	ld bc, $2000
	ld b, e
	ld hl, $5141
	ld d, c
	ld [hl], c
	ld b, b
	ld [hl], b
	and c
	db $e4
	ld bc, $a1e5
	sub c
	ld [hl], c
	sub c
	cp $00
	push de
	ld l, e
	db $ec
	inc bc
	ld [$250a], a
	call c, $e4c7
	dec b
	push hl
	ld [hl], b
	db $e4
	nop
	push hl
	and l
	ld d, b

jr_002_6c78:
	and b
	call c, $9ba0
	call c, $b3c7
	db $e4
	dec bc
	push hl
	ld [hl], c
	db $e4
	ld bc, $c2dc
	ld [hli], a
	push hl
	and b
	call c, $abc7
	db $e4
	dec bc
	push hl
	ld [hl], c
	db $e4
	ld bc, wc4dc
	push hl
	and c
	call c, $a0c7
	db $e4
	nop
	dec hl
	ld c, e
	ld hl, wdc41
	jp nz, $2052

	call c, $23c7
	call c, $a2c2
	ld d, b
	call c, Call_002_53c7
	ld c, e
	ld hl, $5141
	jr nz, jr_002_6d04

	xor e
	push hl
	ld [hl], l
	db $e4
	dec b
	push hl
	ld [hl], e
	and e
	sub e
	ld [hl], e
	ld d, e
	call c, $41c3
	call c, $40c7
	ld d, b
	ld [hl], l
	ld [hl], c
	db $e4
	ld bc, $71e5
	and e
	sub e
	ld [hl], e
	ld bc, $7521
	db $e4
	dec b
	push hl
	ld [hl], e
	and e
	sub e
	ld [hl], e
	ld d, e
	call c, $41c3
	call c, $40c7
	ld d, b
	ld [hl], e
	call c, $71c3
	call c, $70c7
	sub b
	and e
	call c, $e4c4
	ld bc, wc7dc
	nop
	jr nz, jr_002_6d3e

	cp $00
	ld a, a
	ld l, h
	call c, wcf11
	ret


	db $e4
	ld [hl], c
	ld d, c
	ld hl, $38fd
	ld l, l
	db $fd
	ld b, c

jr_002_6d04:
	ld l, l
	db $fd
	jr c, @+$6f

	db $fd
	ld b, c
	ld l, l
	db $fd
	jr c, @+$6f

	db $fd
	ld b, c
	ld l, l
	db $fd
	jr c, @+$6f

	db $fd
	ld b, c
	ld l, l
	db $fd
	jr c, @+$6f

	db $fd
	ld c, d
	ld l, l
	db $fd
	jr c, @+$6f

	db $fd
	ld c, d
	ld l, l
	db $fd
	jr c, @+$6f

	db $fd
	ld c, d
	ld l, l
	db $fd
	jr c, @+$6f

	ld d, c
	and c
	ld d, c
	and c
	ld d, c
	and c
	sub c
	ld d, c
	cp $00
	rst $38
	ld l, h
	ld b, c
	ld [hl], c
	ld b, c
	ld [hl], c
	ld b, c
	ld [hl], c

jr_002_6d3e:
	ld b, c
	ld [hl], c
	rst $38
	ld hl, $2151
	ld d, c
	ld hl, $2151
	ld d, c
	rst $38
	ld d, c
	and c
	ld d, c
	and c
	ld d, c
	and c
	ld d, c
	and c
	rst $38

	db $ed, $00, $90, $f0, $77, $ec, $03, $ea, $0a, $22, $e8, $dc, $a3, $e5, $61, $51
	db $61, $dc, $b5, $e4, $23, $11, $e5, $b1, $91, $b1, $91, $71, $61, $41, $61, $71
	db $91, $dc, $a3, $91, $41, $91, $dc, $b5, $e4, $13, $e5, $b1, $91, $71, $61, $91
	db $b1, $e4, $11, $21, $11, $e5, $b1, $91, $dc, $a3, $61, $51, $61, $dc, $b5, $e4
	db $23, $11, $e5, $b1, $91, $b1, $91, $71, $61, $41, $61, $71, $91, $dc, $a3, $91
	db $41, $91, $dc, $b5, $e4, $13, $e5, $b1, $91, $71, $61, $41, $21, $41, $61, $71
	db $91, $b1, $61, $41, $23, $41, $61, $71, $91, $b1, $91, $73, $41, $61, $71, $91
	db $71, $61, $43, $11, $21, $41, $71, $61, $71, $91, $b1, $97, $e4, $21, $11, $e5
	db $b3, $91, $b1, $e4, $11, $21, $41, $21, $13, $e5, $b1, $e4, $11, $21, $41, $11
	db $e5, $b1, $93, $71, $91, $b1, $71, $91, $71, $61, $41, $21, $41, $61, $71, $fe
	db $00, $5e, $6d, $ea, $08, $25, $fd, $4b, $6e, $ec, $03, $dc, $a5, $e5, $93, $43
	db $fd, $5d, $6e, $21, $65, $ec, $03, $dc, $a5, $e5, $93, $43, $fd, $4b, $6e, $ec
	db $03, $dc, $a5, $e5, $93, $43, $fd, $5d, $6e, $27, $ec, $03, $dc, $a5, $e5, $23
	db $43, $ec, $02, $dc, $c6, $e4, $67, $97, $71, $91, $71, $61, $47, $17, $47, $61
	db $71, $61, $41, $27, $67, $97, $71, $61, $71, $91, $b7, $93, $71, $61, $77, $61
	db $71, $61, $41, $27, $fe, $00, $f9, $6d, $ec, $02, $dc, $c2, $e4, $21, $e5, $91
	db $e4, $21, $dc, $c3, $93, $73, $61, $41, $15, $ff, $ec, $02, $dc, $c2, $e4, $11
	db $e5, $91, $e4, $11, $dc, $c3, $63, $43, $11, $ff, $dc, $10, $e4, $21, $61, $21
	db $61, $21, $61, $71, $61, $fd, $d6, $6e, $fd, $df, $6e, $61, $91, $61, $91, $61
	db $91, $71, $91, $21, $61, $21, $61, $21, $61, $71, $61, $fd, $d6, $6e, $fd, $df
	db $6e, $21, $61, $21, $61, $21, $b1, $91, $71, $fd, $e8, $6e, $71, $b1, $71, $b1
	db $71, $b1, $71, $b1, $41, $71, $41, $71, $41, $71, $41, $71, $61, $91, $61, $91
	db $61, $91, $81, $91, $fd, $e8, $6e, $71, $b1, $71, $b1, $71, $b1, $71, $b1, $41
	db $71, $41, $71, $41, $71, $41, $71, $61, $91, $61, $91, $61, $71, $61, $41, $fe
	db $00, $6f, $6e, $41, $91, $41, $91, $41, $91, $41, $91, $ff, $41, $91, $41, $91
	db $41, $91, $71, $91, $ff, $61, $91, $61, $91, $61, $91, $61, $91, $ff

	xor a
	ld [wcfae], a
	ld [wd060], a
	dec a
	ld [wc0ee], a
	call $0e45
	call $0b31
	ld c, $08
	ld a, [wd039]
	and a
	jr z, jr_002_6f0e

	ld a, $ea
	jr jr_002_6f2b

jr_002_6f0e:
	ld a, [wd036]
	cp $c8
	jr c, jr_002_6f29

	cp $f3
	jr z, jr_002_6f25

	cp $f7
	jr nz, jr_002_6f21

	ld a, $ea
	jr jr_002_6f2b

jr_002_6f21:
	ld a, $ed
	jr jr_002_6f2b

jr_002_6f25:
	ld a, $f3
	jr jr_002_6f2b

jr_002_6f29:
	ld a, $f0

jr_002_6f2b:
	jp $0e35


	rst $38
	rst $38
	rst $38
	rlca
	dec hl
	ld [hl], d
	rlca
	cpl
	ld [hl], d

	db $07, $33, $72, $07

	scf
	ld [hl], d
	rlca
	dec sp
	ld [hl], d

	db $07, $4e, $72, $07, $52, $72, $07, $59, $72, $07

	ld e, l
	ld [hl], d
	rlca
	ld h, c
	ld [hl], d
	rlca
	ld h, l
	ld [hl], d
	rlca
	ld l, c
	ld [hl], d
	rlca
	ld l, l
	ld [hl], d
	rlca
	ld [hl], c
	ld [hl], d

	db $07, $75, $72, $07

	ld a, h
	ld [hl], d
	rlca
	add e
	ld [hl], d
	rlca
	add a
	ld [hl], d
	rlca
	adc e
	ld [hl], d
	add h
	or l
	ld a, b
	dec b
	call nz, $0778
	db $d3
	ld a, b

	db $84, $c5, $7a, $05, $d8, $7a, $07, $eb, $7a, $84

	ld a, [hld]
	ld a, d
	dec b
	ld c, c
	ld a, d
	rlca
	ld d, a
	ld a, d
	add h
	call nc, $0577
	di
	ld [hl], a
	rlca
	ld [de], a
	ld a, b
	add h
	add e
	ld a, e
	dec b
	and d
	ld a, e
	rlca
	pop bc
	ld a, e
	add h
	ld h, e
	ld a, c
	dec b
	db $76
	ld a, c
	rlca
	adc b
	ld a, c
	add h
	dec c
	ld a, c
	dec b
	daa
	ld a, c
	rlca
	jr z, jr_002_7022

	add h
	dec sp
	ld a, c
	dec b
	ld c, d
	ld a, c
	rlca
	ld e, c
	ld a, c
	add h
	ld d, e
	ld a, e
	dec b
	ld h, [hl]
	ld a, e
	rlca
	ld a, c
	ld a, e
	add h
	ld e, l
	db $76
	dec b
	ld a, d
	db $76
	rlca
	sbc e
	db $76
	add h
	ld hl, sp+$7a
	dec b
	rla
	ld a, e
	rlca
	ld a, [hld]
	ld a, e
	add h
	adc c
	ld a, c
	dec b
	or h
	ld a, c
	rlca
	db $d3
	ld a, c
	add h
	db $ec
	ld a, c
	dec b
	inc de
	ld a, d
	rlca
	add hl, sp
	ld a, d
	add h
	ld e, b
	ld a, d
	dec b
	ld [hl], a
	ld a, d
	rlca
	and [hl]
	ld a, d
	add h
	db $dd
	ld a, b
	dec b
	ldh a, [$78]
	rlca
	inc bc
	ld a, c
	add h
	rra
	ld a, b
	dec b
	ld a, [hld]
	ld a, b
	rlca
	ld d, l
	ld a, b
	add h
	ld h, l
	ld a, b
	dec b
	adc b
	ld a, b
	rlca
	xor e
	ld a, b
	add h
	ld b, c
	ld [hl], a
	dec b
	ld h, b
	ld [hl], a
	rlca
	add e
	ld [hl], a
	add h
	ld e, c
	ld a, h
	dec b
	ld l, h
	ld a, h
	rlca
	ld a, a
	ld a, h
	add h
	adc h
	ld a, h
	dec b
	and a
	ld a, h
	rlca
	jp nz, $847c

	push de
	ld a, h
	dec b

jr_002_7022:
	db $e4
	ld a, h
	rlca
	di
	ld a, h
	add h
	ld h, e
	ld a, l
	dec b
	ld a, [hl]
	ld a, l
	rlca
	sbc c
	ld a, l
	add h
	or $7b
	dec b
	dec b
	ld a, h
	rlca
	inc d
	ld a, h
	add h
	xor h
	ld a, l
	dec b
	cp a
	ld a, l
	rlca
	jp nc, $847d

	cp h
	ld a, [hl]
	dec b
	rst $18
	ld a, [hl]
	rlca
	ld [bc], a
	ld a, a
	add h
	call nc, $057b
	db $e3
	ld a, e
	rlca
	push af
	ld a, e
	add h
	dec l
	ld a, [hl]
	dec b
	ld c, b
	ld a, [hl]
	rlca
	ld h, e
	ld a, [hl]
	add h
	ld e, $7c
	dec b
	dec [hl]
	ld a, h
	rlca
	ld c, h
	ld a, h
	add h
	rst $18
	ld a, l
	dec b
	ld [bc], a
	ld a, [hl]
	rlca
	dec e
	ld a, [hl]
	add h
	db $76
	ld a, [hl]
	dec b
	sub c
	ld a, [hl]
	rlca
	xor h
	ld a, [hl]
	add h
	db $fd
	ld a, h
	dec b
	jr nz, @+$7f

	rlca
	ld b, a
	ld a, l
	add h
	dec d
	ld a, a
	dec b
	jr z, jr_002_7106

	rlca
	dec sp
	ld a, a
	add h
	ld c, b
	ld a, a
	dec b
	ld e, e
	ld a, a
	rlca
	ld l, [hl]
	ld a, a
	add h
	ld a, e
	ld a, a
	dec b
	sbc [hl]
	ld a, a
	rlca
	ret nz

	ld a, a
	add h
	pop bc
	ld a, a
	dec b
	call nc, $077f
	rst $20
	ld a, a
	add h
	or h
	db $76
	dec b
	bit 6, [hl]
	rlca
	sbc $76
	add h
	db $eb
	db $76

Jump_002_70b1:
	dec b
	ld c, $77
	rlca
	ld sp, $8477
	sbc c
	ld [hl], a
	dec b
	or b
	ld [hl], a
	rlca
	rst $00
	ld [hl], a
	add h
	ld [hl], h
	ld e, h
	dec b
	adc e
	ld e, h
	ld b, $9b
	ld e, h
	add h
	inc de
	ld h, d
	dec b
	ld [hld], a
	ld h, d
	ld b, $4a
	ld h, d
	inc b
	jr c, @+$75

	inc b
	push hl
	ld [hl], e
	inc b
	rlca
	ld [hl], h

	db $07, $f1, $72, $04, $90, $73, $84

	push bc
	ld h, c
	dec b
	sbc $61
	ld b, $f4
	ld h, c

	db $84, $5f, $62, $05, $7e, $62, $06, $9a, $62, $04

	db $f4
	ld [hl], e
	inc b
	inc e
	ld [hl], h

	db $04, $2b, $74, $04, $56, $74, $04

	ld l, c
	ld [hl], h

	db $04, $7c, $74, $04

jr_002_7106:
	sub a
	ld [hl], h

	db $04, $ae, $74, $04

	jp $0474


	sbc $74
	inc b
	ld sp, hl
	ld [hl], h

	db $04, $04, $75, $07

	rrca
	ld [hl], l
	rlca
	inc e
	ld [hl], l
	ld b, h
	ld c, l
	ld [hl], l
	dec b
	ld h, h
	ld [hl], l
	inc b
	ld [hl], a
	ld [hl], l
	rlca
	add d
	ld [hl], l
	ld b, h
	sbc e
	ld [hl], l
	dec b
	cp d
	ld [hl], l

	db $04, $d9, $75, $07

	rrca
	ld [hl], e

	db $07, $1f, $73, $44

	ld h, $73
	dec b
	dec l
	ld [hl], e
	ld b, h
	ld c, c
	ld [hl], e
	dec b
	ld d, b
	ld [hl], e

	db $44, $5b, $73, $05, $66, $73, $04, $75, $73, $07, $80, $73, $44, $a3, $73, $05
	db $c2, $73, $02

	ld hl, sp+$72
	inc b
	or $75

	db $80, $c2, $56, $01, $5c, $57, $02, $db, $57, $80, $53, $6d, $01, $f6, $6d, $02
	db $6d, $6e, $80

	cp b
	ld l, e
	ld bc, $6c68
	ld [bc], a
	rst $30
	ld l, h

	db $c0, $73, $59, $01, $8f, $5a, $02, $2f, $5b, $03, $ec, $5b, $80

	ld bc, $0164
	ld h, [hl]
	ld h, h
	ld [bc], a
	dec a
	ld h, l
	add b
	call nz, $0165
	scf
	ld h, [hl]
	ld [bc], a
	or d
	ld h, [hl]
	add b
	ld l, d
	ld h, a
	ld bc, $67d1
	ld [bc], a
	ld a, [hld]
	ld l, b
	ret nz

	add sp, $68
	ld bc, $695e
	ld [bc], a
	and e
	ld l, c
	inc bc
	ld a, [bc]
	ld l, d
	ret nz

	ld d, l
	ld l, d
	ld bc, $6a9b
	ld [bc], a
	xor e
	ld l, d

Call_002_71b3:
	inc bc
	ld e, $6b
	add b
	and h
	ld h, d
	ld bc, $6316
	ld [bc], a
	ret z

	ld h, e

	db $80, $56, $5e, $01, $a6, $5e, $02, $3a, $5f, $80, $1d, $60, $01, $b8, $60, $02
	db $30, $61, $c0

	xor e
	ld e, h
	ld bc, $5cee
	ld [bc], a
	ld l, e
	ld e, l
	inc bc
	adc $5d
	add b
	dec hl
	ld l, e
	ld bc, $6b67
	ld [bc], a
	sub c

jr_002_71e5:
	ld l, e

	db $80, $a0, $4a, $01, $c1, $4a, $02, $cf, $4a, $c0, $db, $4a, $01, $4e, $4b, $02
	db $d5, $4b, $03, $21, $4c, $c0, $b6, $4c, $01, $4c, $4d, $02, $98, $4d, $03, $05
	db $4e, $c0

	xor d
	ld c, [hl]
	ld bc, $4f06
	ld [bc], a
	ld a, h
	ld c, a
	inc bc

jr_002_7211:
	ld l, $50
	ret nz

	ld h, a
	ld d, c

jr_002_7216:
	ld bc, $5201
	ld [bc], a
	pop bc
	ld d, d
	inc bc
	sbc d
	ld d, e
	ret nz

	db $ed
	ld d, h
	ld bc, $5561
	ld [bc], a
	or a
	ld d, l
	inc bc
	inc c
	ld d, [hl]
	jr nz, @-$3d

	inc sp
	rst $38
	jr nz, @-$4d

	inc sp
	rst $38

	db $20, $a1, $33, $ff

	jr nz, @-$7d

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
	inc [hl]
	inc hl
	add d
	inc sp
	ld [hli], a
	add c
	ld [hld], a
	rst $38

	db $20, $51, $2a, $ff, $21, $41, $2b, $20, $61, $2a, $ff, $20, $81, $10, $ff

	jr nz, @-$7c

	inc hl
	rst $38
	jr nz, jr_002_71e5

	dec h
	rst $38
	jr nz, @-$7c

	ld h, $ff
	jr nz, @-$5d

	db $10
	rst $38
	jr nz, jr_002_7211

	ld de, $20ff
	and d
	ld d, b
	rst $38

	db $20, $a1, $18, $20, $31, $33, $ff

	ld [hli], a
	sub c
	jr z, jr_002_72a0

	ld [hl], c
	jr @+$01

	jr nz, jr_002_7216

	ld [hli], a
	rst $38
	jr nz, @+$73

	ld [hli], a
	rst $38
	jr nz, @+$63

	ld [hli], a
	rst $38

	db $a1, $72, $b1, $72, $c1, $72, $d1, $72, $e1, $72

	pop af
	ld [hl], d
	pop af
	ld [hl], d
	pop af
	ld [hl], d
	pop af

jr_002_72a0:
	ld [hl], d

	db $02, $46, $8a, $ce, $ff, $fe, $ed, $dc, $cb, $a9, $87, $65, $44, $33, $22, $11
	db $02, $46, $8a, $ce, $ef, $ff, $fe, $ee, $dd, $cb, $a9, $87, $65, $43, $22, $11
	db $13, $69, $bd, $ee, $ee, $ff, $ff, $ed, $de, $ff, $ff, $ee, $ee, $db, $96, $31
	db $02, $46, $8a, $cd, $ef, $fe, $de, $ff, $ee, $dc, $ba, $98, $76, $54, $32, $10
	db $01, $23, $45, $67, $8a, $cd, $ee, $f7, $7f, $ee, $dc, $a8, $76, $54, $32, $10
	db $21, $e2, $33, $28, $e1, $22, $ff

	ld [$1410], a
	call c, $e310
	ld b, c
	ld d, c
	ld [hl], e
	sub c
	ld [hl], c
	ld [c], a
	inc bc
	ld bc, $0121
	db $e3
	ld [hl], c
	sub c

jr_002_730b:
	ld d, c
	ld [hl], a
	set 7, a
	ld [hli], a
	rst $30
	inc h
	ld [hli], a
	rst $30
	inc [hl]
	inc h
	rst $30
	ld b, h
	jr z, @-$0a

	ld d, l
	jr z, @-$0d

	ld b, h
	rst $38

	db $29, $f1, $44, $28, $d1, $43, $ff

jr_002_7326:
	db $ec
	ld [bc], a
	jr z, jr_002_730b

	ld b, b
	rlca
	rst $38
	db $ec
	ld [bc], a
	ld [hli], a
	ld [$0000], sp
	jr z, @-$4d

	ld b, c
	rlca
	rst $38
	db $ec
	ld [bc], a
	db $10
	ld a, [hld]
	inc h
	ld a, [c]
	nop
	ld [bc], a
	db $10
	ld [hli], a
	jr z, jr_002_7326

	nop
	ld [bc], a
	db $10
	ld [$ecff], sp
	ld [bc], a
	inc h
	pop af
	add b
	rlca
	rst $38
	db $ec
	ld [bc], a
	ld hl, $0008
	nop
	inc h
	and c
	ld h, c
	rlca
	rst $38

	db $ec, $02, $24, $e1, $00, $07, $28, $f2, $e0, $07, $ff, $ec, $02, $21, $08, $00
	db $00, $24, $91, $c1, $06, $28, $a2, $a1, $07, $ff, $ec, $02, $10, $5a, $2f, $f1
	db $00, $03, $10, $08, $ff, $22, $f1, $54, $2c, $71, $23, $22, $b1, $54, $2c, $61
	db $23, $26, $41, $54, $ff, $ec, $02, $20, $91, $c0, $07, $20, $81, $d0, $07, $20
	db $91, $c0, $07, $2c, $a1, $d0, $07, $ff, $ec, $02, $22, $f4, $00, $07, $22, $e4
	db $00, $06, $22, $e4, $80, $06, $22, $e4, $c0, $06, $22, $e4, $00, $07, $22, $e4
	db $c0, $07, $2f, $f2, $e0, $07, $ff, $ec, $02, $22, $08, $00, $00, $22, $d4, $01
	db $07, $22, $c4, $01, $06, $22, $c4, $81, $06, $22, $c4, $c1, $06, $22, $c4, $01
	db $07, $22, $c4, $c1, $07, $2f, $d2, $e1, $07, $ff

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
	nop
	db $10
	inc d
	inc h
	ld a, [c]
	nop
	ld b, $fe
	inc b
	db $f4
	ld [hl], e
	cpl
	di
	nop
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
	ld [$ecff], sp
	ld [bc], a
	db $10
	dec d
	cpl
	ldh a, [$f0]
	inc b
	cpl
	ld a, [c]
	ld d, b
	ld b, $10
	db $08
	rst $38

	db $ec, $02, $2f, $f2, $c0, $07, $2f, $00, $00, $00

	inc hl
	and c
	add b
	rlca
	inc hl
	and c
	nop
	rlca
	inc hl
	and c
	ld b, b
	rlca
	inc hl
	and c
	nop
	rlca
	inc hl
	and c
	add b
	rlca
	inc hl
	and c
	nop
	rlca
	inc hl
	and c
	ret nz

	rlca
	jr z, @-$5d

	nop
	rlca
	rst $38

	db $ec, $02, $24, $f0, $00, $06, $24, $f0, $00, $04, $24, $f0, $00, $02, $21, $00
	db $00, $00, $ff

	db $ec
	ld [bc], a
	ld h, $f0
	nop
	rlca
	inc h
	nop
	nop
	nop
	ld h, $f0
	nop
	rlca
	ld hl, $0000
	nop
	rst $38

	db $ec, $01, $10, $17, $2f, $d7, $00, $06, $2f, $b7, $80, $05, $2f, $87, $00, $05
	db $2f, $47, $80, $04, $2f, $17, $00, $04

	db $10
	ld [$ecff], sp
	ld [bc], a
	inc h
	nop
	nop
	nop
	ld [hli], a
	pop af
	add b
	ld b, $21
	nop
	nop
	nop
	inc h
	pop af
	add b
	rlca
	inc h
	nop
	nop
	nop
	rst $38

	db $ec, $02, $10, $2c, $24, $f2, $00, $05, $10, $22, $22, $f1, $00, $05, $10, $08
	db $21, $00, $00, $00, $ff

	db $ec
	ld bc, $1710
	cpl
	rst $10
	nop
	dec b
	cpl
	or a
	add b
	dec b
	cpl
	add a
	nop
	ld b, $2f
	ld b, a
	add b
	ld b, $2f
	rla
	nop
	rlca
	db $10
	ld [$ecff], sp
	ld bc, $1710
	cpl
	rst $10
	nop
	rlca
	cpl
	or a
	add b
	ld b, $2f
	add a
	nop
	ld b, $2f
	ld b, a
	add b
	dec b
	cpl
	rla
	nop
	dec b
	db $10
	ld [$ecff], sp
	ld bc, $1610
	cpl
	jp nc, $0500

	db $10
	db $08
	rst $38

	db $ec, $02, $10, $95, $2f, $f2, $00, $04, $10, $08, $ff

	ld [hli], a
	pop af
	ld [hld], a
	ld [hli], a
	nop
	nop
	ld [hli], a
	pop af
	ld [hli], a
	ld hl, $0000
	rst $38
	ld [hli], a
	pop af
	ld [de], a
	ld [hli], a
	nop
	nop
	ld [hli], a
	and c
	ld [de], a
	ld [hli], a
	nop
	nop
	ld [hli], a
	pop de
	ld [de], a
	ld [hli], a
	nop
	nop
	ld [hli], a
	add c
	ld [de], a
	ld [hli], a
	nop
	nop
	ld [hli], a
	or c
	ld [de], a
	ld [hli], a
	nop
	nop
	ld [hli], a
	ld h, c
	ld [de], a
	ld [hli], a
	nop
	nop
	ld [hli], a
	sub c
	ld [de], a
	ld [hli], a
	nop
	nop
	ld [hli], a
	ld b, c
	ld [de], a
	ld [hli], a
	nop
	nop
	rst $38
	db $ec
	inc bc
	db $10
	ld e, d
	inc h
	ldh a, [rP1]
	dec b
	db $10
	ld [$0024], sp
	nop
	nop
	cpl
	ldh a, [rP1]
	dec b
	ld hl, $0000
	nop
	rst $38
	db $ec
	inc bc
	inc h
	ldh a, [rSB]
	inc b
	inc h
	nop
	nop
	nop
	cpl
	ldh a, [rSB]
	inc b
	ld hl, $0000
	nop
	rst $38
	db $ec

jr_002_7578:
	nop
	db $10
	rla
	cpl
	jp nc, $0700

	db $10
	ld [$24ff], sp
	and d
	inc hl
	jr z, jr_002_7578

	inc [hl]
	cpl
	nop

jr_002_758a:
	nop
	ld [hli], a
	rst $30
	inc h
	ld [hli], a
	rst $30
	inc [hl]
	inc h
	rst $30
	ld b, h
	jr z, jr_002_758a

	ld d, l
	jr z, jr_002_758a

	ld b, h
	rst $38
	db $ec
	ld [bc], a
	cpl
	ldh a, [rP1]
	dec b
	inc h
	nop
	nop
	nop
	cpl
	ldh a, [rP1]
	dec b
	cpl
	ldh a, [rP1]
	dec b
	cpl
	ldh a, [rP1]
	dec b
	cpl
	ldh a, [rP1]
	dec b
	cpl
	ld a, [c]
	nop
	dec b
	rst $38
	db $ec
	inc bc
	cpl
	ldh a, [$82]
	inc b
	inc h
	nop
	nop
	nop
	cpl
	ldh a, [$82]
	inc b
	cpl
	ldh a, [$82]
	inc b
	cpl
	ldh a, [$82]
	inc b
	cpl
	ldh a, [$82]
	inc b
	cpl
	ld a, [c]
	add d
	inc b
	rst $38

	db $ec, $01, $10, $3a, $24, $f2, $00, $05, $10, $22, $24, $e2, $00, $05, $10, $3a
	db $24, $f2, $00, $07, $10, $22, $2f, $e2, $00, $07, $10, $08, $ff

	db $ec
	ld [bc], a
	cpl
	di
	jr nc, jr_002_7603

	jr z, jr_002_7663

	jr nc, jr_002_7607

	cpl
	db $f4
	nop

jr_002_7603:
	rlca
	cpl
	ld [hl], h
	nop

jr_002_7607:
	rlca
	cpl
	ld b, h
	nop
	rlca
	cpl
	inc h
	nop
	rlca
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
	jr z, jr_002_7675

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

jr_002_7662:
	rlca

jr_002_7663:
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

jr_002_7673:
	rst $10
	rlca

jr_002_7675:
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

jr_002_76aa:
	jr z, jr_002_7662

	inc a
	ld h, $d4
	dec a
	jr z, jr_002_7673

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
	jr z, jr_002_76aa

	inc l
	rst $38
	db $fc
	ldh a, [$2f]
	rst $30
	add b
	ld b, $2a

jr_002_76f2:
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

jr_002_770e:
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

	jr z, jr_002_770e

	jr nc, jr_002_7766

	rst $38
	db $fc
	ld a, [bc]
	inc h

jr_002_7763:
	ld [$0000], sp

jr_002_7766:
	ld h, $a7
	ld b, c
	rlca
	jr z, jr_002_76f2

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
	ld h, $f4
	ld b, b
	rlca

jr_002_779f:
	cpl
	db $e3
	jr nc, jr_002_77aa

	inc h
	db $f4
	ld b, b
	rlca
	dec h
	or e
	ld c, b

jr_002_77aa:
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
	jr z, jr_002_779f

	inc l
	inc l
	add $3c
	ld a, [hli]
	or [hl]
	inc l

jr_002_77d0:
	jr z, jr_002_7763

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
	jr z, jr_002_77d0

	add d
	inc b
	rst $38
	inc l
	db $e4
	ld c, h
	ld a, [hli]
	rst $00

jr_002_7817:
	ld e, h
	inc l
	or [hl]
	ld c, h
	cpl
	and d
	ld e, h
	rst $38
	db $fc
	pop af
	inc h
	rst $30
	ret nz

	rlca
	inc l
	and $c2
	rlca
	ld h, $b5
	add b
	ld b, $24
	call nz, $0670
	inc h
	or l
	ld h, b
	ld b, $28
	pop bc
	ld b, b
	ld b, $ff
	db $fc
	call z, wc723
	add c
	rlca
	inc l
	or [hl]
	add b
	rlca
	ld h, $a5
	ld b, c
	ld b, $24
	call nz, $0632
	ld h, $b5
	ld hl, $2806
	and c

jr_002_7852:
	ld [bc], a
	ld b, $ff
	inc hl
	db $e4
	inc a
	inc l
	sub $2c
	inc h

jr_002_785c:
	db $e4
	inc a
	jr z, jr_002_7817

jr_002_7860:
	ld e, h
	cpl
	jp nz, $ff5d

	db $fc
	ret


	jr z, jr_002_7860

	add b
	ld b, $22
	rst $30
	ld h, b
	ld b, $21
	rst $20
	ld b, b
	ld b, $21
	rst $20
	jr nz, jr_002_787d

	cpl
	pop de
	nop
	ld b, $24
	rst $00

jr_002_787d:
	ld b, b
	rlca
	inc h
	and a
	jr nc, jr_002_788a

	cpl
	sub c
	jr nz, @+$09

	rst $38
	db $fc
	ld a, c

jr_002_788a:
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
	jr jr_002_78c2

	cpl
	push hl
	sbc b
	rlca
	jr z, jr_002_7852

	ld e, b

jr_002_78c2:
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

jr_002_78ce:
	jr z, jr_002_7941

	ld c, b
	rlca
	rst $38
	inc hl
	and c
	inc e
	ld l, $94
	inc l
	jr z, jr_002_785c

	inc e
	rst $38
	db $fc
	and l
	inc h
	pop hl
	nop
	rlca
	inc h
	ld a, [c]
	add b
	rlca
	ld [hli], a
	sub d
	ld b, b
	rlca
	jr z, jr_002_78ce

	nop
	ld b, $ff
	db $fc
	ld a, [bc]
	inc h
	or c
	pop hl
	ld b, $23
	jp nz, $06e1

	inc hl
	ld h, d
	add c
	ld b, $28
	or c
	pop hl
	dec b
	rst $38
	ld [hli], a
	ld h, c
	ld [hld], a
	ld [hli], a

jr_002_7907:
	ld h, c
	ld hl, $6128
	ld de, $fcff
	ld a, [$8326]
	ld b, a

jr_002_7912:
	ld [bc], a
	cpl

jr_002_7914:
	ld h, d
	ld h, $02

jr_002_7917:
	inc h
	ld d, d
	ld b, l
	ld [bc], a
	add hl, hl
	ld h, e
	ld b, $02
	cpl
	add d
	dec h
	ld [bc], a
	cpl
	ld b, d
	rlca
	ld [bc], a
	rst $38
	jr z, @-$2a

	adc h
	inc h
	ld [c], a
	sbc h
	cpl
	add $8c
	jr z, jr_002_7917

	xor h
	cpl
	rst $10
	sbc h
	cpl
	ld a, [c]
	xor h
	rst $38
	db $fc
	ldh a, [rNR50]
	di
	ldh [rTMA], a

jr_002_7941:
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
	jr z, jr_002_7912

	ld e, h

jr_002_7962:
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
	jr z, jr_002_7914

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
	jr z, jr_002_7907

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

jr_002_79a1:
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
	jr z, jr_002_7962

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

jr_002_79c8:
	ld b, c
	rlca
	inc h
	pop af
	add d
	rlca
	jr z, jr_002_79a1

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
	jr nz, jr_002_7a08

	ld [hli], a
	or d
	db $10
	ld b, $22
	and d

jr_002_7a08:
	jr jr_002_7a10

	ld [hli], a
	or d
	db $10
	ld b, $28
	pop bc

jr_002_7a10:
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

jr_002_7a33:
	reti


	dec b
	jr z, jr_002_79c8

	pop hl
	dec b
	rst $38
	db $ec
	nop
	jr z, jr_002_7a33

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

jr_002_7a70:
	jr nz, jr_002_7a78

	cp $02
	ld e, b
	ld a, d
	rst $38
	db $fc

jr_002_7a78:
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
	ld h, $d2
	inc e
	add hl, hl
	or c
	inc l
	jr z, jr_002_7a70

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

	db $fc, $a0, $24, $f3, $00, $06, $28, $d5, $60, $07, $23, $e2, $20, $07, $28, $d1
	db $10, $07, $ff, $fc, $5a, $25, $b3, $f1, $06, $27, $c5, $52, $07, $23, $a2, $11
	db $07, $28, $b1, $01, $06, $ff, $23, $a2, $3c, $2c, $94, $2c, $23, $82, $1c, $28
	db $71, $2c, $ff

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
	jr z, @-$57

	and c
	ld b, $26
	add [hl]

jr_002_7b23:
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
	jr z, jr_002_7b23

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
	jr z, @-$6d

	inc a
	rst $38
	db $fc
	ldh a, [$2f]
	or $65
	dec b
	ld a, [hli]

jr_002_7b5a:
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

	jr z, jr_002_7b5a

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
	jr nc, jr_002_7be9

	rst $38
	db $fc
	add c
	ld [hli], a
	jp nz, $0701

jr_002_7be9:
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

jr_002_7c0a:
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

jr_002_7c2d:
	db $e4
	ldh [rTMA], a
	jr z, @-$2d

	ret nc

	ld b, $ff
	db $fc
	ld a, [bc]
	daa
	and $81

jr_002_7c3a:
	ld b, $2e
	push de
	pop bc
	ld b, $24
	call nz, $06b1
	inc h
	call nc, $06a1
	jr z, jr_002_7c0a

jr_002_7c49:
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

jr_002_7c55:
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

	jr z, jr_002_7c3a

	add b
	inc b
	rst $38
	db $fc
	xor $2b
	jp nc, $0438

	ld l, $c6

jr_002_7c74:
	sbc b
	inc b
	inc hl

jr_002_7c77:
	or d
	adc b
	inc b
	jr z, jr_002_7c2d

	ld a, b
	inc b
	rst $38
	ld a, [hli]
	and $6c
	cpl

jr_002_7c83:
	jp nc, $235c

	jp nz, $286c

	pop de
	ld e, h
	rst $38
	db $fc
	inc sp
	cpl
	or $c0

jr_002_7c91:
	dec b
	jr z, jr_002_7c77

	cp h
	dec b
	ld h, $d2
	ret nc

	dec b
	ld h, $b2
	ldh [rTIMA], a
	ld h, $c2
	ldh a, [rTIMA]
	jr z, jr_002_7c55

	nop
	ld b, $ff
	db $fc
	sbc c
	ld l, $c6
	or c
	inc b
	daa
	jp $04ad


	dec h

jr_002_7cb2:
	or d
	pop bc
	inc b
	jr z, jr_002_7c49

	pop de
	inc b
	ld h, $a2
	pop hl
	inc b
	jr z, @-$6d

	pop af
	inc b
	rst $38
	ld a, [hli]
	and $5c

jr_002_7cc5:
	ld a, [hli]
	sub $6c
	inc h
	jp nz, $264c

jr_002_7ccc:
	db $d3
	ld e, h
	jr z, jr_002_7c83

	ld c, h
	jr z, jr_002_7c74

	ld e, h
	rst $38
	db $fc
	ldh a, [$28]
	db $e4

jr_002_7cd9:
	sub b
	rlca
	cpl
	push af
	ret nz

	rlca
	jr z, jr_002_7cb2

	ret c

jr_002_7ce2:
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
	jr z, jr_002_7c91

	or a
	rlca
	rst $38
	jr z, jr_002_7cd9

	ld c, h
	ld l, $c4
	inc a
	jr z, jr_002_7ccc

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

jr_002_7d3c:
	ld bc, $2607
	and d
	ld b, d
	rlca

jr_002_7d42:
	jr z, jr_002_7cc5

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

jr_002_7d5b:
	dec de
	dec h
	sub d
	ld a, [de]
	jr z, jr_002_7ce2

	jr @+$01

	db $fc
	ldh a, [rNR50]
	di
	add b
	rlca
	cpl
	rst $20
	nop
	rlca
	jr z, jr_002_7d42

	db $10
	rlca
	inc h
	jp nz, $0700

	inc h
	jp nc, $06f0

	jr z, jr_002_7d3c

	ldh [rTMA], a
	rst $38
	db $fc
	ld e, d
	ld h, $c3
	ld bc, $2e07
	or a
	add c
	ld b, $27
	or e
	sub d
	ld b, $23
	and d
	add c
	ld b, $24
	or d
	ld [hl], d
	ld b, $28
	and c
	ld h, c
	ld b, $ff
	ld h, $e3
	ld e, h
	ld l, $d6
	ld c, h
	ld h, $c6
	inc a
	inc hl
	or e
	ld c, h
	inc hl
	and d
	ld e, h
	jr z, jr_002_7d5b

	ld l, h
	rst $38
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

jr_002_7dec:
	rlca
	daa
	add $e0
	rlca

jr_002_7df1:
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

jr_002_7e16:
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
	jr z, jr_002_7dec

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


	jr z, jr_002_7e16

jr_002_7e45:
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
	jr z, jr_002_7df1

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
	jr z, jr_002_7e45

	inc l
	rst $38
	db $fc
	db $f4
	cpl
	ldh a, [rTIMA]
	rlca
	ld a, [hli]
	ldh [rP1], a
	rlca
	ld h, $b4
	db $10
	rlca
	inc h
	db $d3
	nop
	rlca
	ld h, $b2
	jr nz, jr_002_7e92

	jr z, @-$5d

	inc h
	ld b, $ff
	db $fc

jr_002_7e92:
	ld [hli], a
	cpl
	or b
	jp $2a06


	and b
	pop bc
	ld b, $26
	add h

jr_002_7e9d:
	jp nc, $2406

	sub e
	pop bc
	ld b, $26
	add d
	pop hl
	dec b
	jr z, @+$63

	add sp, $05
	rst $38
	ld h, $e6
	ld c, h
	cpl

jr_002_7eb0:
	sub $3c
	ld a, [hli]
	push bc
	ld c, d
	ld hl, $5bb2
	cpl
	jp nz, $ff4c

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

	jr z, jr_002_7e9d

	and b
	ld b, $ff
	db $fc
	rrca
	add hl, hl
	push de
	ld sp, $2306

jr_002_7ee6:
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

jr_002_7ef7:
	sub c
	ld b, $23
	jp nz, $0671

	jr z, jr_002_7eb0

	ld d, c
	ld b, $ff
	ld h, $e3
	ld c, h
	inc h
	jp $253c


jr_002_7f09:
	call nc, $243c
	call nz, $262c
	or h
	inc a
	jr z, @-$3d

	inc l
	rst $38

jr_002_7f15:
	db $fc
	and l
	inc hl
	db $f4
	ld b, c
	ld b, $2d
	sub $21
	rlca
	jr z, jr_002_7f15

	add hl, de
	rlca
	jr z, jr_002_7ee6

	ld a, [de]
	rlca
	rst $38
	db $fc
	call z, $f424

jr_002_7f2c:
	add b
	dec b
	ld l, $e6
	ldh [rTMA], a
	jr z, jr_002_7f09

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
	jr z, jr_002_7ef7

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

jr_002_7f60:
	dec b
	inc l

jr_002_7f62:
	pop de
	db $10
	dec b
	ld l, $c1
	inc c
	dec b
	jr z, jr_002_7f2c

	ld a, [bc]

jr_002_7f6c:
	dec b
	rst $38
	ld l, $f2
	ld h, l
	dec l
	ld [c], a

jr_002_7f73:
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

jr_002_7f7f:
	ld h, h
	dec b
	ld [hli], a
	ld [c], a

jr_002_7f83:
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
	jr z, jr_002_7f60

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
	jr z, jr_002_7f6c

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

Call_002_7fb0:
	jr z, jr_002_7f73

	and b
	inc b
	inc hl
	db $d3
	jr nz, @+$07

	inc hl
	call nz, $04e0
	jr z, jr_002_7f7f

	nop
	dec b
	rst $38
	db $fc
	ld de, $3d22
	add c
	inc bc
	daa
	push af
	ld bc, $2106
	jp nz, $0481

	jr z, jr_002_7f62

	add c
	inc bc
	rst $38
	db $fc
	xor $22
	ld a, $b0
	dec b
	daa
	push de
	ld e, l
	rlca
	ld hl, $b0b2
	ld b, $28
	ld h, c
	or b
	dec b
	rst $38
	ld [hli], a
	sub d
	ld c, c
	daa
	or l
	add hl, hl
	ld hl, $39a2
	jr z, jr_002_7f83

	ld c, c
	rst $38
	ld d, e
	dec c
	inc sp
	cpl
	adc a
	ld b, l
	add hl, hl
	pop hl
	ld d, l
	dec l
	ld [hl], l
	ld e, a
