; Disassembly of "pokemon-red-jp.gb"

SECTION "ROM Bank $01f", ROMX[$4000], BANK[$1f]

	db $ed
	nop
	adc h
	ldh a, [rPCM34]
	db $ec
	inc bc
	ld [$3408], a
	add sp, -$24
	or l
	db $e4
	ld b, l
	push hl
	sub b
	db $e4
	ld b, b
	dec h
	push hl
	ld [hl], b
	db $e4
	jr nz, @+$17

	push hl
	ld h, b
	db $e4
	db $10
	inc hl
	ld b, c
	db $10
	ld b, b
	db $10
	ret nz

	push hl
	ld b, b
	jp nz, Jump_01f_4040

	ld b, b
	ret nz

	ld b, b
	ret nz

	ld b, b
	jp nz, wc040

	ld b, b
	jp nz, Jump_01f_4040

	ld b, b
	ret nz

	ld b, b
	ret nz

	ld b, b
	ld b, b
	ld h, b
	ld [hl], b
	call c, $93b6
	ld b, c

Jump_01f_4040:
	sub c
	ld [hl], e
	sub c
	ld [hl], c
	or e
	sub e
	ld [hl], c
	ld h, c
	ld b, c
	ld hl, $4115
	sub e
	inc de
	ld b, e
	ld hl, $4111
	ld h, c
	ld [hl], c
	ld h, c
	sub e
	ld b, c
	sub c
	ld [hl], e
	sub c
	ld [hl], c
	or e
	sub e
	ld [hl], c
	sub c
	ld h, c
	ld hl, $1145
	sub e
	inc de
	ld b, e
	ld hl, $4111
	ld h, c
	ld [hl], c
	ld h, c
	ld [hl], e
	ld hl, $b171
	sub c
	ld [hl], c
	sub c
	inc hl
	ld b, c
	ld h, c
	ld [hl], c
	ld h, c
	ld b, c
	ld hl, $9145
	ld [hl], e
	ld h, e
	ld [hl], e
	ld h, e
	ld b, e
	inc hl
	ld [hl], e
	ld hl, $b171
	db $e4
	ld de, $b1e5
	sub c
	inc hl
	ld b, c
	ld h, c
	ld [hl], c
	ld h, c
	ld b, c
	ld hl, $b7dc
	ld b, l
	sub c
	ld [hl], e
	ld h, e
	call c, $93c7
	or e
	db $e4
	inc de
	inc hl
	push hl
	or c

Call_01f_40a1:
	sub c
	ld [hl], c
	ld h, c
	ld b, c
	ld h, c
	ld [hl], c
	sub c
	call c, Call_01f_7790
	ld h, a
	ld b, a
	daa
	rst $08
	rst $08
	rst $00
	call c, $45b6
	jr nc, jr_01f_40d6

	call c, $17a0
	call c, $17a7
	rst $08
	rst $08
	rst $00
	ld b, l
	db $10
	ld b, b
	call c, $97a0
	call c, $97a7
	call c, Call_01f_75b6
	inc hl
	ld [hl], c
	or e
	call c, Call_01f_77b7
	ld h, e
	add e
	call c, $9790

jr_01f_40d6:
	ld h, a
	ld b, a
	rla
	call c, $27b7
	rla
	and $b7
	push hl
	daa
	call c, $4790

Jump_01f_40e4:
	daa

Jump_01f_40e5:
	ld h, a
	ld b, a

Jump_01f_40e7:
	call c, $27a0
	ld b, a
	daa
	rlca
	ld [hl], a
	ld d, a
	ld b, a
	daa
	call c, $15a0
	call c, $15a7
	call c, $23b7
	ld b, a
	ld [hl], l
	ld h, b
	ld d, b
	call c, Call_01f_45a0
	call c, Call_01f_45a7
	call c, $23b7
	call c, $17a0
	call c, $17a7
	call c, Call_01f_45b7
	ld hl, $6373
	ld b, e
	ld h, e
	ld b, e
	inc hl
	ld b, e
	inc hl
	inc de
	inc hl
	inc de
	inc de
	ld b, e
	ld h, e
	call c, Call_01f_45a0
	call c, $21b7
	ld [hl], e
	ld h, e
	ld b, e
	ld h, e
	sub e
	or e
	call c, $e4a0
	rra
	rla
	call c, $17a7
	call c, $e5b5
	sub b
	ret nz

	sub b
	jp nz, $9090

	call c, $97b1
	rst $38
	db $ec
	inc bc
	ld [$250a], a
	call c, $e4c5
	sub l
	ld b, b
	sub b
	ld [hl], l
	jr nz, jr_01f_41be

	call c, $6bc7
	add c
	ld b, b
	add b
	call c, $91c2
	call c, $e5c1
	sub e
	sub b
	sub b
	sub c
	sub c
	sub e
	sub c
	sub e
	sub b
	sub b
	sub c
	sub c
	call c, $90c4
	ld h, b
	sub b
	or b
	call c, $e4c7
	dec d
	db $10
	jr nz, jr_01f_41b6

	inc de
	ld [hl], e
	ld h, e
	ld b, e
	inc hl
	dec d
	push hl
	sub c
	db $e4
	ld b, a
	push hl
	sub l
	ld b, c
	db $e4
	rla
	dec d
	db $10
	jr nz, jr_01f_41c9

	inc de
	ld [hl], e
	ld h, e
	ld b, e
	inc hl
	dec d
	push hl
	sub c
	db $e4
	ld b, a
	push hl
	sub l
	ld b, c
	call c, $e4b0
	rla
	call c, $25c7
	push hl
	or c
	db $e4
	ld [hl], a
	push hl
	ld [hl], l
	ld hl, wdcb7
	or b

Call_01f_41a4:
	db $e4
	dec d
	call c, $15b7
	inc hl
	call c, $47a0
	call c, $47a7
	call c, $25c7
	push hl
	or c
	db $e4

jr_01f_41b6:
	ld [hl], a
	push hl
	ld [hl], l
	ld hl, wdcb7
	or b
	db $e4

jr_01f_41be:
	ld b, [hl]
	call c, $46b7
	call c, $40c3
	add b
	call c, $97b0

jr_01f_41c9:
	call c, $97b7
	call c, Call_01f_73c6
	ld h, e
	ld b, e
	inc hl
	call c, $17a0
	call c, $17a7
	call c, $e590
	sub a
	call c, $9797
	call c, Call_01f_47b0
	call c, $47b7
	call c, $27c7
	ld [hl], l
	ld h, b
	ld d, b
	ld b, a
	call c, Call_01f_75b7
	ld h, b
	ld d, b
	call c, Call_01f_47b0
	call c, $47b7
	call c, $27b0
	call c, $27b7

jr_01f_41fd:
	call c, $e6c7
	or a
	push hl
	ld h, l
	jr nz, jr_01f_4265

	ld b, a
	or l
	ld [hl], b
	or b
	call c, $e4b0
	rla
	call c, $17b7
	call c, $27b0
	call c, $27b7
	call c, $e5c7
	or a
	db $e4
	dec h
	push hl
	or b
	db $e4
	jr nz, jr_01f_41fd

	or b
	dec d
	call c, $15b7
	call c, $e5c7
	or e
	call c, $97b0
	call c, $97b7
	call c, Call_01f_65b0
	call c, Call_01f_65b7
	call c, $83c7
	sub a
	ld h, a
	call c, $85b0
	call c, $85b7
	call c, $93c7
	or a
	add a
	call c, $95b0
	call c, $95b7
	call c, $b3c7
	db $e4
	rlca
	push hl
	sub a
	call c, $b5b0
	call c, $b5b7
	call c, $e4c7
	inc bc
	call c, $27b0
	push hl
	or a
	call c, $e4b0

jr_01f_4265:
	rra
	rla
	call c, $17b7
	call c, $e5b0
	sbc a
	sub a
	call c, $97b7
	call c, Call_01f_75c7
	or c
	db $e4
	daa
	push hl
	or l
	db $e4
	ld hl, $6075
	ld d, b
	ld b, a
	push hl
	ld [hl], l
	ld h, b
	ld d, b
	ld b, a
	inc de
	inc hl
	ld [hl], l
	or c
	db $e4
	daa
	push hl
	or l
	db $e4
	ld hl, wdc77
	or b
	sbc a
	call c, $97a0
	call c, $97a7
	call c, $91c1
	sub e
	sub b
	sub b
	call c, $97c1
	rst $38
	call c, $e310
	dec d
	db $e4
	sub b
	db $e3
	db $10
	dec h
	db $e4
	or b
	db $e3
	jr nz, jr_01f_4316

	jr nz, jr_01f_4313

	sub e
	add c
	ld b, b
	add b

Call_01f_42b7:
	sub b
	adc $cf
	db $fd
	add l
	ld b, e
	db $fd
	adc a
	ld b, e
	db $fd
	add l
	ld b, e
	db $e4
	ld b, c
	sub c
	ld b, c
	sub c
	ld b, c
	ld h, c
	ld [hl], c
	sub c
	db $fd
	add l
	ld b, e
	db $fd
	adc a
	ld b, e
	db $fd
	add l
	ld b, e
	db $fd
	add l
	ld b, e
	db $fd
	sbc c
	ld b, e
	db $fd
	sbc c
	ld b, e
	db $fd
	and d
	ld b, e
	db $e4
	sub c
	db $e3
	ld de, $91e4
	db $e3
	ld de, $91e4
	db $e3
	ld de, $b1e4
	sub c
	db $fd
	sbc c
	ld b, e
	db $fd
	sbc c
	ld b, e
	db $fd
	and d
	ld b, e
	db $fd
	and d
	ld b, e
	db $e4
	ld [hl], e
	sub e
	or e
	db $e3
	inc hl
	db $fd
	add l
	ld b, e
	db $fd
	add l
	ld b, e
	db $fd
	add l
	ld b, e
	db $fd
	add l
	ld b, e
	db $fd
	add l
	ld b, e
	db $fd
	add l

jr_01f_4313:
	ld b, e
	db $fd
	adc a

jr_01f_4316:
	ld b, e
	db $fd
	adc a
	ld b, e
	db $fd
	add l
	ld b, e
	ld b, e
	sub c
	ld b, e
	sub c
	ld b, c
	sub c
	db $fd
	adc a
	ld b, e
	db $fd
	adc a
	ld b, e
	db $fd
	add l
	ld b, e
	ld b, c
	sub c
	ld b, c
	sub c
	ld b, c
	sub c
	add c
	sub c
	db $fd
	or e
	ld b, e
	db $fd
	or e
	ld b, e
	db $fd
	cp h
	ld b, e
	db $fd
	cp h
	ld b, e
	ld d, c
	sub c
	ld d, c
	sub c
	ld d, c
	sub c
	ld d, c
	sub c
	ld d, c
	sub c
	ld [hl], c
	ld d, c
	ld b, c
	ld hl, $5141
	db $fd
	sbc c
	ld b, e
	db $fd
	sbc c
	ld b, e
	ld b, e
	sub e
	ld b, e
	sub e
	ld b, e
	sub e
	ld b, e
	sub e
	db $fd
	add l
	ld b, e
	db $fd
	add l
	ld b, e
	db $fd
	push bc
	ld b, e
	db $fd
	push bc
	ld b, e
	db $fd
	add l
	ld b, e
	db $fd
	add l
	ld b, e
	db $fd
	sbc c
	ld b, e
	db $fd
	sbc c
	ld b, e
	db $fd
	adc $43
	db $fd
	adc $43
	sub b
	ret nz

	sub b
	jp nz, $9090

	sub b
	add $ff
	db $e4
	ld b, c
	sub c
	ld b, c
	sub c
	ld b, c
	sub c
	ld b, c
	sub c
	rst $38
	db $e4
	ld hl, $2171
	ld [hl], c
	ld hl, $2171
	ld [hl], c
	rst $38
	ld [hl], c
	or c
	ld [hl], c
	or c
	ld [hl], c
	or c
	ld [hl], c
	or c
	rst $38
	db $e4

Jump_01f_43a3:
	sub c
	db $e3
	ld de, $91e4
	db $e3
	ld de, $91e4
	db $e3
	ld de, $91e4
	db $e3
	ld de, $21ff
	sub c
	ld hl, $2191
	sub c
	ld hl, $ff91
	ld b, c
	add c
	ld b, c
	add c

Call_01f_43c0:
	ld b, c
	add c

Call_01f_43c2:
	ld b, c
	add c
	rst $38
	ld b, c
	or c
	ld b, c
	or c
	ld b, c
	or c
	ld b, c
	or c
	rst $38
	sub b
	ret nz

	sub b
	jp nz, $9090

	sub b
	ret nz

Jump_01f_43d6:
	sub b
	ret nz

	sub b
	jp nz, $f0ff

	call c, $000e
	ld hl, $4410

jr_01f_43e2:
	cp [hl]

Jump_01f_43e3:
	jr c, jr_01f_43e9

	inc c
	inc hl
	jr jr_01f_43e2

jr_01f_43e9:
	push bc
	ld a, $ff
	ld [wc0ee], a
	call $3788
	pop bc
	ld b, $00
	ld hl, $4402
	add hl, bc
	add hl, bc
	ld a, [hli]
	ld c, [hl]
	call $0e35
	jp $0d9b


	and l
	rra
	sub c
	ld [bc], a
	add [hl]
	ld [bc], a
	sbc d
	ld [$0886], sp
	sub h
	ld [bc], a
	adc c
	ld [bc], a
	ld a, [bc]
	jr z, @+$3e

	ld e, d
	ld a, b
	sub [hl]
	rst $38

	ld c, $00

jr_01f_4419:
	ld b, $00
	ld hl, wc026
	add hl, bc
	ld a, [hl]
	and a
	jr z, jr_01f_4445

	ld a, c
	cp $04
	jr nc, jr_01f_4442

	ld a, [wc002]
	and a
	jr z, jr_01f_4442

	bit 7, a
	jr nz, jr_01f_4445

	set 7, a
	ld [wc002], a
	xor a
	ldh [rNR51], a
	ldh [rNR30], a
	ld a, $80
	ldh [rNR30], a
	jr jr_01f_4445

jr_01f_4442:
	call Call_01f_444c

jr_01f_4445:
	ld a, c
	inc c
	cp $07
	jr nz, jr_01f_4419

	ret


Call_01f_444c:
	ld b, $00
	ld hl, wc0b6
	add hl, bc
	ld a, [hl]
	cp $01
	jp z, Jump_01f_44e4

	dec a
	ld [hl], a
	ld a, c
	cp $04
	jr nc, jr_01f_4468

	ld hl, wc02a
	add hl, bc
	ld a, [hl]
	and a
	jr z, jr_01f_4468

	ret


jr_01f_4468:
	ld hl, wc02e
	add hl, bc
	bit 6, [hl]
	jr z, jr_01f_4473

	call Call_01f_4b21

jr_01f_4473:
	ld b, $00
	ld hl, wc036
	add hl, bc
	bit 0, [hl]
	jr nz, jr_01f_4485

	ld hl, wc02e
	add hl, bc
	bit 2, [hl]
	jr nz, jr_01f_4499

jr_01f_4485:
	ld hl, wc02e
	add hl, bc
	bit 4, [hl]
	jr z, jr_01f_4490

	jp Jump_01f_4a0d


jr_01f_4490:
	ld hl, wc04e
	add hl, bc
	ld a, [hl]
	and a
	jr z, jr_01f_449a

	dec [hl]

jr_01f_4499:
	ret


jr_01f_449a:
	ld hl, wc056
	add hl, bc
	ld a, [hl]
	and a
	jr nz, jr_01f_44a3

	ret


jr_01f_44a3:
	ld d, a
	ld hl, wc05e
	add hl, bc
	ld a, [hl]
	and $0f
	and a
	jr z, jr_01f_44b0

	dec [hl]
	ret


jr_01f_44b0:
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
	jr z, jr_01f_44d0

	res 3, [hl]
	ld a, d
	and $0f
	ld d, a
	ld a, e
	sub d
	jr nc, jr_01f_44ce

	ld a, $00

jr_01f_44ce:
	jr jr_01f_44dc

jr_01f_44d0:
	set 3, [hl]
	ld a, d
	and $f0
	swap a
	add e
	jr nc, jr_01f_44dc

	ld a, $ff

jr_01f_44dc:
	ld d, a
	ld b, $03
	call Call_01f_4b4c
	ld [hl], d
	ret


Jump_01f_44e4:
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
	call Call_01f_44fa
	ret


Call_01f_44fa:
Jump_01f_44fa:
	call Call_01f_4b39
	ld d, a
	cp $ff
	jp nz, Jump_01f_4588

	ld b, $00
	ld hl, wc02e
	add hl, bc
	bit 1, [hl]
	jr nz, jr_01f_4538

	ld a, c
	cp $03
	jr nc, jr_01f_4514

	jr jr_01f_4553

jr_01f_4514:
	res 2, [hl]
	ld hl, wc036
	add hl, bc
	res 0, [hl]
	cp $06
	jr nz, jr_01f_4528

	ld a, $00
	ldh [rNR30], a
	ld a, $80
	ldh [rNR30], a

jr_01f_4528:
	jr nz, jr_01f_4536

	ld a, [wc003]
	and a
	jr z, jr_01f_4536

	xor a
	ld [wc003], a
	jr jr_01f_4553

jr_01f_4536:
	jr jr_01f_455c

jr_01f_4538:
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
	jp Jump_01f_44fa


jr_01f_4553:
	ld hl, $4e33
	add hl, bc
	ldh a, [rNR51]
	and [hl]
	ldh [rNR51], a

jr_01f_455c:
	ld a, [wc02a]
	cp $14
	jr nc, jr_01f_4565

	jr jr_01f_4582

jr_01f_4565:
	ld a, [wc02a]
	cp $86
	jr z, jr_01f_4582

	jr c, jr_01f_4570

	jr jr_01f_4582

jr_01f_4570:
	ld a, c
	cp $04
	jr z, jr_01f_4579

	call Call_01f_49db
	ret c

jr_01f_4579:
	ld a, [wc005]
	ldh [rNR50], a
	xor a
	ld [wc005], a

jr_01f_4582:
	ld hl, wc026
	add hl, bc
	ld [hl], b
	ret


Jump_01f_4588:
	cp $fd
	jp nz, Jump_01f_45bd

	call Call_01f_4b39
	push af
	call Call_01f_4b39
	ld d, a
	pop af
	ld e, a
	push de
	ld d, $00
	ld a, c
	add a
	ld e, a
	ld hl, wc006

Call_01f_45a0:
	add hl, de
	push hl
	ld hl, wc016
	add hl, de
	ld e, l

Call_01f_45a7:
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

Call_01f_45b7:
	add hl, bc
	set 1, [hl]
	jp Jump_01f_44fa


Jump_01f_45bd:
	cp $fe
	jp nz, Jump_01f_45f8

	call Call_01f_4b39
	ld e, a
	and a
	jr z, jr_01f_45e1

	ld b, $00
	ld hl, wc0be
	add hl, bc
	ld a, [hl]
	cp e
	jr nz, jr_01f_45df

	ld a, $01
	ld [hl], a
	call Call_01f_4b39
	call Call_01f_4b39
	jp Jump_01f_44fa


jr_01f_45df:
	inc a
	ld [hl], a

jr_01f_45e1:
	call Call_01f_4b39
	push af
	call Call_01f_4b39
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
	jp Jump_01f_44fa


Jump_01f_45f8:
	and $f0
	cp $d0
	jp nz, Jump_01f_4637

	ld a, d
	and $0f
	ld b, $00
	ld hl, wc0c6
	add hl, bc
	ld [hl], a
	ld a, c
	cp $03
	jr z, jr_01f_4634

	call Call_01f_4b39
	ld d, a
	ld a, c
	cp $02
	jr z, jr_01f_4620

	cp $06
	jr nz, jr_01f_462d

	ld hl, wc0e7
	jr jr_01f_4623

jr_01f_4620:
	ld hl, wc0e6

jr_01f_4623:
	ld a, d
	and $0f
	ld [hl], a
	ld a, d
	and $30
	sla a
	ld d, a

jr_01f_462d:
	ld b, $00
	ld hl, wc0de
	add hl, bc
	ld [hl], d

jr_01f_4634:
	jp Jump_01f_44fa


Jump_01f_4637:
	ld a, d
	cp $e8
	jr nz, jr_01f_4649

	ld b, $00
	ld hl, wc02e
	add hl, bc
	ld a, [hl]
	xor $01
	ld [hl], a
	jp Jump_01f_44fa


jr_01f_4649:
	cp $ea
	jr nz, jr_01f_4681

	call Call_01f_4b39
	ld b, $00
	ld hl, wc04e
	add hl, bc
	ld [hl], a
	ld hl, wc06e
	add hl, bc
	ld [hl], a
	call Call_01f_4b39
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
	add hl, bc
	swap a
	or d
	ld [hl], a
	jp Jump_01f_44fa


jr_01f_4681:
	cp $eb
	jr nz, jr_01f_46b9

	call Call_01f_4b39
	ld b, $00
	ld hl, wc076
	add hl, bc
	ld [hl], a
	call Call_01f_4b39
	ld d, a
	and $f0
	swap a
	ld b, a
	ld a, d
	and $0f
	call Call_01f_4b6c
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
	call Call_01f_4b39
	ld d, a
	jp Jump_01f_481e


jr_01f_46b9:
	cp $ec
	jr nz, jr_01f_46ce

	call Call_01f_4b39
	rrca
	rrca
	and $c0
	ld b, $00
	ld hl, wc03e
	add hl, bc
	ld [hl], a
	jp Jump_01f_44fa


jr_01f_46ce:
	cp $ed
	jr nz, jr_01f_470e

	ld a, c
	cp $04
	jr nc, jr_01f_46f2

	call Call_01f_4b39
	ld [wc0e8], a
	call Call_01f_4b39
	ld [wc0e9], a
	xor a
	ld [wc0ce], a
	ld [wc0cf], a
	ld [wc0d0], a
	ld [wc0d1], a
	jr jr_01f_470b

jr_01f_46f2:
	call Call_01f_4b39
	ld [wc0ea], a
	call Call_01f_4b39
	ld [wc0eb], a
	xor a
	ld [wc0d2], a
	ld [wc0d3], a
	ld [wc0d4], a
	ld [wc0d5], a

jr_01f_470b:
	jp Jump_01f_44fa


jr_01f_470e:
	cp $ee
	jr nz, jr_01f_471b

	call Call_01f_4b39
	ld [wc004], a
	jp Jump_01f_44fa


jr_01f_471b:
	cp $ef
	jr nz, jr_01f_473a

	call Call_01f_4b39
	push bc
	call Call_01f_4b8a
	pop bc
	ld a, [wc003]
	and a
	jr nz, jr_01f_4737

	ld a, [wc02d]
	ld [wc003], a
	xor a
	ld [wc02d], a

jr_01f_4737:
	jp Jump_01f_44fa


jr_01f_473a:
	cp $fc
	jr nz, jr_01f_4758

	call Call_01f_4b39
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
	jp Jump_01f_44fa


jr_01f_4758:
	cp $f0
	jr nz, jr_01f_4764

	call Call_01f_4b39
	ldh [rNR50], a
	jp Jump_01f_44fa


jr_01f_4764:
	cp $f8
	jr nz, jr_01f_4773

	ld b, $00
	ld hl, wc036
	add hl, bc
	set 0, [hl]
	jp Jump_01f_44fa


jr_01f_4773:
	and $f0
	cp $e0
	jr nz, jr_01f_4786

	ld hl, wc0d6
	ld b, $00
	add hl, bc
	ld a, d
	and $0f
	ld [hl], a
	jp Jump_01f_44fa


jr_01f_4786:
	cp $20
	jr nz, jr_01f_47d3

	ld a, c
	cp $03
	jr c, jr_01f_47d3

	ld b, $00
	ld hl, wc036
	add hl, bc
	bit 0, [hl]
	jr nz, jr_01f_47d3

	call Call_01f_481e
	ld d, a
	ld b, $00
	ld hl, wc03e
	add hl, bc
	ld a, [hl]
	or d
	ld d, a
	ld b, $01
	call Call_01f_4b4c
	ld [hl], d
	call Call_01f_4b39
	ld d, a

Call_01f_47b0:
	ld b, $02
	call Call_01f_4b4c
	ld [hl], d
	call Call_01f_4b39
	ld e, a
	ld a, c
	cp $07
	ld a, $00
	jr z, jr_01f_47c6

	push de
	call Call_01f_4b39
	pop de

jr_01f_47c6:
	ld d, a
	push de
	call Call_01f_493d
	call Call_01f_490c
	pop de
	call Call_01f_495f
	ret


jr_01f_47d3:
	ld a, c
	cp $04

Call_01f_47d6:
	jr c, jr_01f_47ef

	ld a, d
	cp $10
	jr nz, jr_01f_47ef

	ld b, $00
	ld hl, wc036
	add hl, bc
	bit 0, [hl]
	jr nz, jr_01f_47ef

	call Call_01f_4b39
	ldh [rNR10], a
	jp Jump_01f_44fa


jr_01f_47ef:
	ld a, c
	cp $03
	jr nz, jr_01f_481e

	ld a, d
	and $f0
	cp $b0
	jr z, jr_01f_4809

	jr nc, jr_01f_481e

	swap a
	ld b, a
	ld a, d
	and $0f
	ld d, a
	ld a, b
	push de
	push bc
	jr jr_01f_4811

jr_01f_4809:
	ld a, d
	and $0f
	push af
	push bc
	call Call_01f_4b39

jr_01f_4811:
	ld d, a
	ld a, [wc003]
	and a
	jr nz, jr_01f_481c

	ld a, d
	call Call_01f_4b8a

jr_01f_481c:
	pop bc
	pop de

Call_01f_481e:
Jump_01f_481e:
jr_01f_481e:
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
	call Call_01f_4b5b
	ld a, c
	cp $04
	jr nc, jr_01f_483f

	ld a, [wc0e8]
	ld d, a
	ld a, [wc0e9]
	ld e, a
	jr jr_01f_4852

jr_01f_483f:
	ld d, $01
	ld e, $00
	cp $07
	jr z, jr_01f_4852

	call Call_01f_49a7
	ld a, [wc0ea]
	ld d, a
	ld a, [wc0eb]
	ld e, a

jr_01f_4852:
	ld a, l
	ld b, $00
	ld hl, wc0ce
	add hl, bc
	ld l, [hl]
	call Call_01f_4b5b
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
	jr nz, jr_01f_487c

	ld hl, wc02e
	add hl, bc
	bit 2, [hl]
	jr z, jr_01f_487c

	pop hl
	ret


jr_01f_487c:
	pop af
	and $f0
	cp $c0
	jr nz, jr_01f_48b3

	ld a, c
	cp $04
	jr nc, jr_01f_4890

	ld hl, wc02a
	add hl, bc
	ld a, [hl]
	and a
	jr nz, jr_01f_48b2

jr_01f_4890:
	ld a, c
	cp $02
	jr z, jr_01f_4899

	cp $06
	jr nz, jr_01f_48a6

jr_01f_4899:
	ld b, $00
	ld hl, $4e33
	add hl, bc
	ldh a, [rNR51]
	and [hl]
	ldh [rNR51], a
	jr jr_01f_48b2

jr_01f_48a6:
	ld b, $02
	call Call_01f_4b4c
	ld a, $08
	ld [hli], a
	inc hl
	ld a, $80
	ld [hl], a

jr_01f_48b2:
	ret


jr_01f_48b3:
	swap a
	ld b, $00
	ld hl, wc0d6
	add hl, bc
	ld b, [hl]
	call Call_01f_4b6c
	ld b, $00
	ld hl, wc02e
	add hl, bc
	bit 4, [hl]
	jr z, jr_01f_48cc

	call Call_01f_4aa3

jr_01f_48cc:
	push de
	ld a, c
	cp $04
	jr nc, jr_01f_48e1

	ld hl, wc02a
	ld d, $00
	ld e, a
	add hl, de
	ld a, [hl]
	and a
	jr nz, jr_01f_48df

	jr jr_01f_48e1

jr_01f_48df:
	pop de
	ret


jr_01f_48e1:
	ld b, $00
	ld hl, wc0de
	add hl, bc
	ld d, [hl]
	ld b, $02
	call Call_01f_4b4c
	ld [hl], d
	call Call_01f_493d
	call Call_01f_490c
	pop de
	ld b, $00
	ld hl, wc02e
	add hl, bc
	bit 0, [hl]
	jr z, jr_01f_4903

	inc e
	jr nc, jr_01f_4903

	inc d

jr_01f_4903:
	ld hl, wc066
	add hl, bc
	ld [hl], e
	call Call_01f_495f
	ret


Call_01f_490c:
	ld b, $00
	ld hl, $4e3b
	add hl, bc
	ldh a, [rNR51]
	or [hl]
	ld d, a
	ld a, c
	cp $07
	jr z, jr_01f_4927

	cp $04
	jr nc, jr_01f_4939

	ld hl, wc02a
	add hl, bc
	ld a, [hl]
	and a
	jr nz, jr_01f_4939

jr_01f_4927:
	ld a, [wc004]
	ld hl, $4e3b
	add hl, bc
	and [hl]
	ld d, a
	ldh a, [rNR51]
	ld hl, $4e33
	add hl, bc
	and [hl]
	or d
	ld d, a

jr_01f_4939:
	ld a, d
	ldh [rNR51], a
	ret


Call_01f_493d:
	ld b, $00
	ld hl, wc0b6
	add hl, bc
	ld d, [hl]
	ld a, c
	cp $02
	jr z, jr_01f_4958

	cp $06
	jr z, jr_01f_4958

	ld a, d
	and $3f
	ld d, a
	ld hl, wc03e
	add hl, bc
	ld a, [hl]
	or d
	ld d, a

jr_01f_4958:
	ld b, $01
	call Call_01f_4b4c
	ld [hl], d
	ret


Call_01f_495f:
	ld a, c
	cp $02
	jr z, jr_01f_4968

	cp $06
	jr nz, jr_01f_4995

jr_01f_4968:
	push de
	ld de, wc0e6
	cp $02
	jr z, jr_01f_4973

	ld de, wc0e7

jr_01f_4973:
	ld a, [de]
	add a
	ld d, $00
	ld e, a
	ld hl, $7220
	add hl, de
	ld e, [hl]
	inc hl
	ld d, [hl]
	ld hl, $ff30
	ld b, $0f
	ld a, $00
	ldh [rNR30], a

jr_01f_4988:
	ld a, [de]
	inc de
	ld [hli], a
	ld a, b
	dec b
	and a
	jr nz, jr_01f_4988

	ld a, $80
	ldh [rNR30], a
	pop de

jr_01f_4995:
	ld a, d
	or $80
	and $c7
	ld d, a
	ld b, $03
	call Call_01f_4b4c
	ld [hl], e
	inc hl
	ld [hl], d
	call Call_01f_49c9
	ret


Call_01f_49a7:
	call Call_01f_49f9
	jr nc, jr_01f_49bf

	ld d, $00
	ld a, [wc0f2]
	add $80
	jr nc, jr_01f_49b6

	inc d

jr_01f_49b6:
	ld [wc0eb], a
	ld a, d
	ld [wc0ea], a
	jr jr_01f_49c8

jr_01f_49bf:
	xor a
	ld [wc0eb], a
	ld a, $01
	ld [wc0ea], a

jr_01f_49c8:
	ret


Call_01f_49c9:
	call Call_01f_49f9
	jr nc, jr_01f_49da

	ld a, [wc0f1]
	add e
	jr nc, jr_01f_49d5

	inc d

jr_01f_49d5:
	dec hl
	ld e, a
	ld [hl], e
	inc hl
	ld [hl], d

jr_01f_49da:
	ret


Call_01f_49db:
	call Call_01f_49f9
	jr nc, jr_01f_49f6

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


jr_01f_49f6:
	scf
	ccf
	ret


Call_01f_49f9:
	ld a, [wc02a]
	cp $14
	jr nc, jr_01f_4a02

	jr jr_01f_4a08

jr_01f_4a02:
	cp $86
	jr z, jr_01f_4a08

	jr c, jr_01f_4a0b

jr_01f_4a08:
	scf
	ccf
	ret


jr_01f_4a0b:
	scf
	ret


Jump_01f_4a0d:
	ld hl, wc02e
	add hl, bc
	bit 5, [hl]
	jp nz, Jump_01f_4a54

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
	jp c, Jump_01f_4a9a

	jr nz, jr_01f_4a87

	ld hl, wc0ae
	add hl, bc
	ld a, [hl]
	cp e
	jp c, Jump_01f_4a9a

	jr jr_01f_4a87

Jump_01f_4a54:
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
	jr c, jr_01f_4a9a

	jr nz, jr_01f_4a87

	ld hl, wc0ae
	add hl, bc
	ld a, e
	cp [hl]
	jr c, jr_01f_4a9a

jr_01f_4a87:
	ld hl, wc09e
	add hl, bc
	ld [hl], e
	ld hl, wc096
	add hl, bc
	ld [hl], d
	ld b, $03
	call Call_01f_4b4c
	ld a, e
	ld [hli], a
	ld [hl], d
	ret


Jump_01f_4a9a:
jr_01f_4a9a:
	ld hl, wc02e
	add hl, bc
	res 4, [hl]
	res 5, [hl]
	ret


Call_01f_4aa3:
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
	jr nc, jr_01f_4abb

	ld a, $01

jr_01f_4abb:
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
	jr c, jr_01f_4ad7

	ld d, a
	ld b, $00
	ld hl, wc02e
	add hl, bc
	set 5, [hl]
	jr jr_01f_4afa

jr_01f_4ad7:
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

jr_01f_4afa:
	ld hl, wc076
	add hl, bc

jr_01f_4afe:
	inc b
	ld a, e
	sub [hl]
	ld e, a
	jr nc, jr_01f_4afe

	ld a, d
	and a
	jr z, jr_01f_4b0c

	dec a
	ld d, a
	jr jr_01f_4afe

jr_01f_4b0c:
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


Call_01f_4b21:
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
	call Call_01f_4b4c
	ld a, [hl]
	and $3f
	or d
	ld [hl], a
	ret


Call_01f_4b39:
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


Call_01f_4b4c:
	ld a, c
	ld hl, $4e2b
	add l
	jr nc, jr_01f_4b54

	inc h

jr_01f_4b54:
	ld l, a
	ld a, [hl]
	add b
	ld l, a
	ld h, $ff
	ret


Call_01f_4b5b:
	ld h, $00

jr_01f_4b5d:
	srl a
	jr nc, jr_01f_4b62

	add hl, de

jr_01f_4b62:
	sla e
	rl d
	and a
	jr z, jr_01f_4b6b

	jr jr_01f_4b5d

jr_01f_4b6b:
	ret


Call_01f_4b6c:
	ld h, $00
	ld l, a
	add hl, hl
	ld d, h
	ld e, l
	ld hl, $4e43
	add hl, de
	ld e, [hl]
	inc hl
	ld d, [hl]
	ld a, b

jr_01f_4b7a:
	cp $07
	jr z, jr_01f_4b85

	sra d
	rr e
	inc a
	jr jr_01f_4b7a

jr_01f_4b85:
	ld a, $08
	add d
	ld d, a
	ret


Call_01f_4b8a:
	ld [wc001], a
	cp $ff
	jp z, Jump_01f_4d48

	cp $c2
	jp z, Jump_01f_4c62

	jp c, Jump_01f_4c62

	cp $fe
	jr z, jr_01f_4ba1

	jp nc, Jump_01f_4c62

jr_01f_4ba1:
	xor a
	ld [wc000], a
	ld [wc003], a
	ld [wc0e9], a
	ld [wc0e6], a
	ld [wc0e7], a
	ld d, $08
	ld hl, wc016
	call Call_01f_4d9d
	ld hl, wc006
	call Call_01f_4d9d
	ld d, $04
	ld hl, wc026
	call Call_01f_4d9d
	ld hl, wc02e
	call Call_01f_4d9d
	ld hl, wc03e
	call Call_01f_4d9d
	ld hl, wc046
	call Call_01f_4d9d
	ld hl, wc04e
	call Call_01f_4d9d
	ld hl, wc056
	call Call_01f_4d9d
	ld hl, wc05e
	call Call_01f_4d9d
	ld hl, wc066
	call Call_01f_4d9d
	ld hl, wc06e
	call Call_01f_4d9d
	ld hl, wc036
	call Call_01f_4d9d
	ld hl, wc076
	call Call_01f_4d9d
	ld hl, wc07e
	call Call_01f_4d9d
	ld hl, wc086
	call Call_01f_4d9d
	ld hl, wc08e
	call Call_01f_4d9d
	ld hl, wc096
	call Call_01f_4d9d
	ld hl, wc09e
	call Call_01f_4d9d
	ld hl, wc0a6
	call Call_01f_4d9d
	ld hl, wc0ae
	call Call_01f_4d9d
	ld a, $01
	ld hl, wc0be
	call Call_01f_4d9d
	ld hl, wc0b6
	call Call_01f_4d9d
	ld hl, wc0c6
	call Call_01f_4d9d
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
	jp Jump_01f_4da3


Jump_01f_4c62:
	ld l, a
	ld e, a
	ld h, $00
	ld d, h
	add hl, hl
	add hl, de
	ld de, $6ebf
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

Jump_01f_4c7b:
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
	jr z, jr_01f_4cb7

	ld a, e
	cp $07
	jr nz, jr_01f_4cae

	ld a, [wc001]
	cp $14
	jr nc, jr_01f_4ca7

	ret


jr_01f_4ca7:
	ld a, [hl]
	cp $14
	jr z, jr_01f_4cb7

	jr c, jr_01f_4cb7

jr_01f_4cae:
	ld a, [wc001]
	cp [hl]
	jr z, jr_01f_4cb7

	jr c, jr_01f_4cb7

	ret


jr_01f_4cb7:
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
	jr nz, jr_01f_4d3f

	ld a, $08
	ldh [rNR10], a

jr_01f_4d3f:
	ld a, c
	and a
	jp z, Jump_01f_4da3

	dec c
	jp Jump_01f_4c7b


Jump_01f_4d48:
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
	call Call_01f_4d9d
	ld a, $01
	ld d, $18
	ld hl, wc0b6
	call Call_01f_4d9d
	ld [wc0e8], a
	ld [wc0ea], a
	ld a, $ff
	ld [wc004], a
	ret


Call_01f_4d9d:
	ld b, d

jr_01f_4d9e:
	ld [hli], a
	dec b
	jr nz, jr_01f_4d9e

	ret


Jump_01f_4da3:
	ld a, [wc001]
	ld l, a
	ld e, a
	ld h, $00
	ld d, h
	add hl, hl
	add hl, de
	ld de, $6ebf
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

jr_01f_4dc5:
	cp c
	jr z, jr_01f_4dcd

	inc c
	inc hl
	inc hl
	jr jr_01f_4dc5

jr_01f_4dcd:
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
	jr c, jr_01f_4de6

	ld hl, wc02e
	add hl, bc
	set 2, [hl]

jr_01f_4de6:
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
	jr nz, jr_01f_4dc5

	ld a, [wc001]
	cp $14
	jr nc, jr_01f_4dff

	jr jr_01f_4e29

jr_01f_4dff:
	ld a, [wc001]
	cp $86
	jr z, jr_01f_4e29

	jr c, jr_01f_4e0a

	jr jr_01f_4e29

jr_01f_4e0a:
	ld hl, wc02a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hl], a
	ld hl, wc012
	ld de, $4e2a
	ld [hl], e
	inc hl
	ld [hl], d
	ld a, [wc005]
	and a
	jr nz, jr_01f_4e29

	ldh a, [rNR50]
	ld [wc005], a
	ld a, $77
	ldh [rNR50], a

jr_01f_4e29:
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

	db $ed
	nop
	sub b
	ldh a, [rPCM34]
	db $ec
	inc bc
	ld [$1408], a
	call c, $e5b5
	ld [hl], c
	db $e4
	inc bc
	inc hl
	ld b, c
	ld bc, $7141
	ld [hl], c
	ld d, c
	ld b, c
	ld d, e
	ld b, c
	ld hl, $2353
	push hl
	or c
	db $e4
	ld d, e
	inc hl
	ld b, c
	ld d, c
	ld [hl], c
	ld bc, $0141
	ld hl, wdc41
	or [hl]
	ld e, c
	call c, Call_01f_51a6
	ld b, c
	ld d, c
	ld a, c
	ld b, c
	ld hl, $5541
	add sp, -$24
	or e
	ld b, c
	ld hl, $4020
	ld d, c
	ld b, b
	ld d, b
	add sp, -$24
	or l
	ld [hl], l
	ld [hl], l
	sub c
	ld d, c
	ld [hl], l
	call c, $71b4
	ld d, e
	call c, Call_01f_41a4
	ld hl, $93dc
	push hl
	sub c
	db $e4
	inc bc
	ld bc, $b1e5
	sub b
	or b
	sub c
	or c
	db $e4
	ld bc, $0103
	push hl
	sub c
	or c
	or c
	sub c
	db $e4
	inc bc
	push hl
	sub c
	or b
	db $e4
	nop
	push hl
	or c
	db $e4
	inc hl
	push hl
	or c
	db $e4
	inc bc
	push hl
	or b
	db $e4
	nop
	jr nz, @-$19

	or b
	db $e4
	inc bc
	call c, $033d
	call c, Call_01f_55b4
	ld [hl], e
	ld d, b
	ld [hl], b
	ld d, e
	ld b, l
	ld d, c
	ld b, c
	jr nz, jr_01f_4f29

	ld hl, wdc01
	or l
	push hl
	sub e
	db $e4
	inc hl
	push hl
	or e
	db $e4
	ld b, e
	inc bc
	ld d, e
	inc hl
	ld h, e
	ld [$260a], a
	call c, $7f80
	ld [hl], e
	call c, Call_01f_7b87
	call c, $eab5
	ld [$fe14], sp
	nop
	ld l, c
	ld c, [hl]
	db $ec
	ld [bc], a
	ld [$1506], a
	call c, $e4c3
	ld bc, $5343
	ld [hl], e
	db $e3
	inc bc
	db $e4
	or l
	sub b
	or b
	sbc c
	ld d, c
	ld [hl], c
	sub c
	db $e3
	ld hl, $e401
	or c
	sub b
	or b

jr_01f_4f29:
	db $e3
	dec b
	db $e4
	sub c
	ld [hl], e
	db $ec
	inc bc
	call c, $a584
	db $ec
	ld [bc], a
	call c, $e3c5
	ld bc, $b1e4
	db $e3
	ld bc, $99e4
	db $e3
	ld bc, $b1e4
	db $e3
	ld bc, $79e4
	call c, $e3c3
	inc bc
	ld b, c
	ld hl, $e401
	or c
	db $e3
	ld bc, $b0dc
	inc hl
	call c, $29c7
	jr nz, jr_01f_4f5a

jr_01f_4f5a:
	call c, $e4b0
	or e
	call c, $bbc7
	call c, Call_01f_55c4
	ld d, c
	ld [hl], c
	ld d, c
	ld b, c
	ld hl, $4145
	ld d, c
	ld b, c
	ld hl, $5101
	ld b, c
	ld hl, $7351
	sub c
	ld d, c
	ld b, c
	ld [hl], e
	ld d, c
	ld b, l
	sub $c2
	ld d, b
	ld [hl], b
	sub b
	or b
	call c, $e3c3
	ld bc, $b1e4
	sub c
	db $e3
	ld bc, $b3e4
	sub e
	ld [hl], c
	and e
	sub c
	ld [hl], e
	ld d, c
	ld b, c
	ret c

	call nz, $7393
	ld d, e
	or e
	sub e
	ld [hl], e
	db $e3
	inc bc

jr_01f_4f9c:
	db $e4
	or e
	sub e
	db $e3
	inc hl
	ld b, e
	inc bc
	call c, $2bc7

jr_01f_4fa6:
	inc bc
	call c, $e4b0
	or e
	call c, $bbc7
	call c, $fec3
	nop
	dec d
	ld c, a
	call c, wc113
	db $e4
	nop
	ret nz

	ld b, b
	ret nz

	push hl
	ld [hl], b
	ret nz

	db $e4
	ld b, b
	ret nz

	nop
	ret nz

	ld b, b
	ret nz

	nop
	ret nz

	ld [hl], b
	ret nz

	ld d, b
	ret nz

	sub b
	ret nz

	nop
	ret nz

	sub b
	ret nz

	ld d, b
	ret nz

	sub b
	ret nz

	ld b, b
	ret nz

	sub b
	ret nz

	jr nz, jr_01f_4f9c

	ld d, b
	ret nz

jr_01f_4fde:
	push hl
	sub b
	ret nz

	db $e4
	ld d, b
	ret nz

	jr nz, jr_01f_4fa6

	ld d, b
	ret nz

jr_01f_4fe8:
	ld b, b
	ret nz

	ld d, b
	ret nz

jr_01f_4fec:
	ld b, b
	ret nz

	ld [hl], b
	ret nz

	nop
	ret nz

	ld [hl], b
	ret nz

jr_01f_4ff4:
	ld b, b
	ret nz

	ld [hl], b
	ret nz

jr_01f_4ff8:
	ld b, b
	ret nz

	ld [hl], b
	ret nz

jr_01f_4ffc:
	ld d, b
	ret nz

	sub b
	ret nz

jr_01f_5000:
	nop
	ret nz

	sub b
	ret nz

	ld d, b
	ret nz

jr_01f_5006:
	ld [hl], b
	ret nz

	sub b
	ret nz

jr_01f_500a:
	ld [hl], b
	ret nz

	ld b, b
	ret nz

	ld [hl], b
	ret nz

	nop
	ret nz

	ld [hl], b
	ret nz

jr_01f_5014:
	ld b, b
	ret nz

	ld [hl], b
	ret nz

	ld b, b
	ret nz

	ld [hl], b
	ret nz

	jr nz, jr_01f_4fde

jr_01f_501e:
	ld d, b
	ret nz

	push hl
	sub b

jr_01f_5022:
	ret nz

	db $e4
	ld d, b
	ret nz

	jr nz, jr_01f_4fe8

	ld d, b
	ret nz

	jr nz, jr_01f_4fec

	ld d, b
	ret nz

	ld [hl], b
	ret nz

	nop
	ret nz

	jr nz, jr_01f_4ff4

	ld [hl], b
	ret nz

jr_01f_5036:
	jr nz, jr_01f_4ff8

	ld [hl], b
	ret nz

	jr nz, jr_01f_4ffc

	ld [hl], b
	ret nz

	jr nz, jr_01f_5000

	push hl
	or b
	ret nz

	db $e4

jr_01f_5044:
	jr nz, jr_01f_5006

	ld [hl], b
	ret nz

	jr nz, jr_01f_500a

	ld [hl], b
	ret nz

	push hl
	or b
	ret nz

	db $e4
	ld [hl], b
	ret nz

	jr nz, jr_01f_5014

	ld d, b
	ret nz

	push hl
	sub b
	ret nz

	db $e4
	ld d, b
	ret nz

	jr nz, jr_01f_501e

	ld d, b
	ret nz

	jr nz, jr_01f_5022

	ld d, b
	ret nz

	ld b, b
	ret nz

	ld [hl], b
	ret nz

	nop
	ret nz

	ld [hl], b
	ret nz

	ld b, b
	ret nz

	ld [hl], b
	ret nz

	ld b, b
	ret nz

	ld [hl], b
	ret nz

	jr nz, jr_01f_5036

	ld d, b
	ret nz

	push hl
	sub b

jr_01f_507a:
	ret nz

	db $e4
	ld d, b
	ret nz

	ld d, b
	ret nz

	ld b, b
	ret nz

	jr nz, jr_01f_5044

	ld d, b
	ret nz

	ld b, b
	ret nz

	nop
	ret nz

	ld [hl], b
	ret nz

	nop
	ret nz

	ld b, b
	ret nz

	ld [hl], b
	ret nz

	ld b, b
	ret nz

	ld [hl], b
	ret nz

	ld d, b
	ret nz

	sub b
	ret nz

	nop
	ret nz

	sub b
	ret nz

	ld d, b
	ret nz

	sub b
	ret nz

	sub b
	ret nz

	ld d, b
	ret nz

	ld [hl], b
	ret nz

	and b
	ret nz

	ld b, b
	ret nz

	and b
	ret nz

	ld [hl], b
	ret nz

	and b
	ret nz

	and b
	ret nz

	ld [hl], b
	ret nz

	ld d, b
	ret nz

	jr nz, jr_01f_507a

	ld d, b
	ret nz

	sub b
	ret nz

	ld [hl], b
	ret nz

	ld b, b
	ret nz

	ld [hl], b
	ret nz

	or b
	ret nz

	sub b
	ret nz

	ld d, b
	ret nz

	sub b
	ret nz

	db $e3
	nop
	ret nz

	db $e4
	or b
	ret nz

	sub b
	ret nz

	db $e3
	nop
	ret nz

	db $e4
	sub b
	ret nz

	ld [hl], b
	ret nz

	db $e3
	nop
	ret nz

	db $e4
	ld [hl], b
	ret nz

	db $e3
	nop
	ret nz

	db $e4
	ld [hl], b
	ret nz

	db $e3
	nop
	ret nz

	db $e4
	ld [hl], b
	ret nz

	db $e3
	nop
	ret nz

	db $e4
	ld [hl], b
	ret nz

	or b
	ret nz

	ld [hl], b
	ret nz

	or b
	ret nz

	ld d, b
	ret nz

	sub b
	ret nz

	push hl
	or b
	ret nz

	db $e4
	ld d, b
	ret nz

	cp $00
	or a
	ld c, a
	call c, $fdc1
	ld b, a
	ld d, c
	db $fd
	ld d, h
	ld d, c
	db $fd
	ld b, a
	ld d, c
	db $fd
	ld h, d
	ld d, c
	db $fd
	ld d, h
	ld d, c
	db $fd
	ld d, h
	ld d, c
	db $fd
	ld b, a
	ld d, c
	db $fd
	ld b, a
	ld d, c
	db $fd
	ld b, a
	ld d, c
	db $fd
	ld b, a
	ld d, c
	db $fd
	ld d, h
	ld d, c
	db $fd
	ld b, a
	ld d, c
	db $fd
	ld h, d
	ld d, c
	db $fd
	ld b, a
	ld d, c
	db $fd
	ld d, h
	ld d, c
	db $fd
	ld b, a
	ld d, c
	db $fd
	ld b, a
	ld d, c
	db $fd
	ld b, a
	ld d, c
	db $fd
	ld b, a

jr_01f_5142:
	ld d, c
	cp $00
	ld a, [bc]
	ld d, c
	pop bc
	or c
	db $10

jr_01f_514a:
	pop bc
	or c
	db $10
	pop bc
	or c
	db $10
	pop bc
	or c
	db $10
	rst $38
	pop bc
	or c
	db $10
	pop bc
	or c
	db $10
	pop bc
	or c
	db $10
	or c
	db $10
	or c
	db $10
	rst $38
	pop bc
	or c
	db $10
	pop bc
	or c
	db $10
	pop bc
	or c
	db $10
	pop bc
	or b
	db $10
	or b
	db $10
	rst $38
	db $ed
	nop
	sub b
	ldh a, [rPCM34]
	db $ec
	inc bc
	add sp, -$16
	ld a, [bc]
	inc d
	call c, wc74d
	xor $ed
	db $e4
	ld h, a
	xor $ff
	call c, $e5b2
	db $fd
	ld c, d
	ld d, d
	cp $03
	adc b
	ld d, c
	ld b, b
	jr nc, jr_01f_5142

	and b
	ld [hl], b
	add b
	ret nz

	and b
	ld b, b
	jr nc, jr_01f_514a

	and b
	ld [hl], b
	add b
	sub b
	and b
	db $fd
	ld c, d
	ld d, d
	cp $04
	sbc a
	ld d, c

Call_01f_51a6:
	db $fd
	ld [hl], l
	ld d, d
	push hl
	ld [hl], b
	ld h, b
	ld b, b
	ld [hl], b
	db $fd
	ld [hl], l
	ld d, d
	push hl
	sub b
	ld [hl], b
	ld b, b
	sub b
	db $fd
	ld [hl], l
	ld d, d
	push hl
	or b
	sub b
	ld [hl], b
	ld h, b
	call c, Call_01f_73c3
	ld h, e
	ld b, e
	inc sp
	call c, $fdc2
	ld h, l
	ld d, d
	push hl
	or d
	db $fd
	ld h, l
	ld d, d
	ld [bc], a
	db $fd
	ld h, l
	ld d, d
	ld [de], a
	call c, $e5c3
	ld [hl], e
	ld h, e
	ld b, e
	inc sp
	ld b, e
	inc sp
	inc bc
	and $b3
	call c, $b0c2
	and b

Jump_01f_51e3:
	ld [hl], b
	and b
	or b
	and b
	ld [hl], b
	and b
	push hl
	nop
	and $b0
	add b
	or b
	push hl
	nop
	and $b0
	add b
	or b
	push hl
	stop
	and $90
	push hl
	nop
	stop
	and $90
	push hl
	nop
	jr nz, @+$12

	and $a0
	push hl
	db $10
	jr nz, jr_01f_521a

	and $a0
	push hl
	db $10
	rst $08
	cp $08
	ld c, $52
	call c, $fdc3
	ld e, e
	ld d, d
	or c
	ld [hl], c

jr_01f_521a:
	push hl
	inc de
	and $71
	sub e
	ld h, c
	db $fd
	ld e, e
	ld d, d
	and c
	ld [hl], c
	or e
	ld [hl], c
	ld h, c
	ld [hl], c
	ld sp, wc2dc
	db $fd
	ld h, l
	ld d, d
	push hl
	or d
	db $fd
	ld h, l
	ld d, d
	ld [bc], a
	db $fd
	ld h, l
	ld d, d
	ld [de], a
	call c, $e5c7
	ld h, a
	scf
	call c, $fdc2
	ld c, d
	ld d, d
	db $fd
	ld c, d
	ld d, d
	cp $00
	add l
	ld d, c
	ld b, b
	jr nc, @-$4e

	and b
	ld [hl], b
	add b
	ret nz

	and b
	ld b, b
	jr nc, @-$4e

	and b
	ld [hl], b
	add b
	ret nz

	and b
	rst $38
	and $71
	and e
	ld [hl], c
	push hl
	inc de
	and $71
	and c
	rst $38
	push hl
	ld b, b
	ld b, b
	ld d, b
	ld b, b
	ld [hl], b
	ld b, b
	sub b
	ld b, b
	and b
	ld b, b
	or b
	ld b, b
	db $e4
	nop
	rst $38
	ld b, b
	ld b, b
	jp Jump_01f_40e7


	jp nz, wc040

	rst $38
	ld [$150b], a
	db $ec
	inc bc
	call c, $e40f
	add a
	call c, $e34d
	daa
	call c, $fdc2
	scf
	ld d, e
	cp $03
	adc l
	ld d, d
	and $40
	ld b, b
	or b
	push hl
	nop
	pop bc
	nop
	and $b0
	ld b, b
	ld b, b
	sub b
	ld [hl], b
	ld d, b
	ld h, b

jr_01f_52a4:
	ld [hl], b
	jr nc, jr_01f_52a4

	scf
	ld d, e
	cp $04
	and [hl]
	ld d, d
	pop bc
	db $fd
	ld c, e
	ld d, e
	push hl
	inc bc
	db $fd
	ld c, e
	ld d, e
	push hl
	inc de
	db $fd
	ld c, e
	ld d, e
	push hl
	inc sp
	call c, $e4d3
	ld b, e
	inc sp
	inc bc
	push hl
	or e
	call c, $fdd2
	ld d, l
	ld d, e
	push hl
	ld h, e
	db $fd
	ld d, l
	ld d, e
	push hl
	ld [hl], e
	db $fd
	ld d, l
	ld d, e
	push hl
	and e
	call c, $e4d3
	ld b, e
	inc sp
	inc bc
	push hl
	or e
	db $e4
	inc bc
	push hl
	or e
	ld [hl], e
	ld h, c
	call c, Call_01f_47d6
	ld d, a
	ld h, a
	ld [hl], a
	call c, $fdd2
	ld e, d
	ld d, e
	ret


	ld b, b
	ret nz

	db $fd
	ld e, d
	ld d, e
	set 7, l
	ld e, d
	ld d, e
	set 7, l
	ld e, d
	ld d, e

Jump_01f_52fd:
	call wd3dc
	db $fd
	ld l, l
	ld d, e
	inc sp
	db $fd
	ld l, l
	ld d, e
	ld sp, wdcc1
	jp nc, $60fd

	ld d, e
	pop bc
	push hl
	ld h, e
	and $40
	ld b, b
	push hl
	or b
	ret nz

	db $e4
	nop
	ret nz

	db $10
	ret nz

	jr nz, jr_01f_532e

	pop bc
	push hl
	ld [hl], e
	db $fd
	ld h, b
	ld d, e
	push hl
	and e
	call c, $b7d6
	db $e4

jr_01f_532a:
	scf
	call c, $fdd2

jr_01f_532e:
	scf
	ld d, e
	db $fd
	scf
	ld d, e
	cp $00
	adc e
	ld d, d
	and $40
	ld b, b
	or b
	push hl
	nop
	pop bc
	nop
	and $b0
	ld b, b
	ld b, b
	or b
	push hl
	nop
	pop bc
	nop
	and $b0
	rst $38
	and $40
	ld b, b
	pop bc
	rst $20
	ld b, b
	jp nz, wc240

	rst $38
	and $40
	ld b, b
	ret


	rst $38
	rst $20
	ld b, b
	ld [hl], b
	ld b, b
	jr nc, @+$01

	and $40
	ld b, b
	db $e4
	ld b, b
	ret nz

	jr nc, @-$3e

	jr nz, jr_01f_532a

	stop
	rst $38
	push hl
	ld b, l
	ld [hl], l
	ld b, e
	sub l
	db $e4
	dec b
	push hl
	or e
	ld [hl], l
	and l
	ld h, e
	ld b, l
	ld h, l
	rst $38
	call c, $ea11
	ld [wcd26], sp
	db $e4
	jr nz, @+$32

	db $fd
	ldh [rHDMA3], a
	db $fd
	ldh [rHDMA3], a
	db $e3
	ld b, c
	jp Jump_01f_40e5


	jp nz, wc040

	db $e4
	ld h, e
	db $fd
	db $f4
	ld d, e
	db $e4
	ld [hl], e
	db $fd
	db $f4
	ld d, e
	db $e4
	sub e
	or e
	and e
	ld [hl], e
	ld h, e
	push bc
	db $fd
	rla
	ld d, h
	or e
	and e
	ld [hl], e
	ld h, e
	ld [hl], e
	ld h, e
	ld b, e
	inc sp
	db $fd
	cp $53
	set 7, l
	cp $53
	set 7, l
	cp $53
	ret


	ld b, b
	ret nz

	db $fd
	cp $53
	set 7, l
	cp $53
	set 7, l
	cp $53
	ret


	jr nz, @+$32

	db $fd
	inc b
	ld d, h
	db $fd
	inc b
	ld d, h
	ld b, c
	jp $17fd


	ld d, h
	or a
	ld h, l
	jr nz, jr_01f_540a

	rst $08
	rst $08
	cp $00
	add l
	ld d, e
	db $e3
	ld b, e
	or e
	and e
	ld [c], a
	inc hl
	inc de
	db $e3
	add e
	ld [hl], e
	or e
	and e
	ld b, e
	inc sp
	sub e
	add e
	ld b, e
	ld h, e
	inc sp
	rst $38
	ld [c], a
	ld b, b
	ld b, b
	jp Jump_01f_40e5


	jp nz, wc040

	rst $38
	push hl
	ld b, b
	ld [hl], b
	ld b, b
	jr nc, @+$01

	ld b, e
	or e
	and e
	db $e4
	inc hl
	inc de

jr_01f_540a:
	push hl
	add e
	ld [hl], e
	or e
	and e
	ld b, e
	inc sp
	sub e
	add e
	ld b, e
	ld h, e
	inc sp
	rst $38
	db $e4
	ld b, b
	jp nz, wc040

	ld h, e
	push bc
	ld b, b
	jp nz, wc040

	ld [hl], e
	push bc
	ld b, b
	jp nz, Jump_01f_4040

	and e
	rst $38
	call c, $b0cd
	inc c
	or b
	inc c
	db $fd
	sub c
	ld d, h
	cp $03
	jr nc, jr_01f_548b

	or e
	dec c
	or e
	inc c
	or e
	dec c
	or c
	inc c
	or c
	inc c
	db $fd
	sub c
	ld d, h
	cp $03
	ld b, c
	ld d, h
	or e
	dec c
	or e
	inc c
	or e
	dec c
	or e
	dec c
	db $fd
	sbc d
	ld d, h
	cp $03
	ld d, b
	ld d, h
	db $fd
	and d
	ld d, h
	db $fd
	sbc d
	ld d, h
	cp $03
	ld e, d
	ld d, h
	db $fd
	and d
	ld d, h
	or e
	add hl, bc
	or e
	ld a, [bc]
	or e
	ld a, [bc]
	pop bc
	or c
	add hl, bc
	or e
	dec c
	rst $08
	cp $0d
	ld l, a
	ld d, h
	set 7, l
	sbc d
	ld d, h
	cp $03
	ld [hl], l
	ld d, h
	or e
	inc c
	or e
	inc c
	or e
	inc c
	pop bc
	or b
	inc c
	or b
	inc c
	db $fd
	sub c
	ld d, h
	db $fd

jr_01f_548b:
	sub c
	ld d, h
	cp $00
	jr nc, jr_01f_54e5

	or e
	dec c
	or e
	inc c
	or e
	dec c
	or e
	inc c
	rst $38
	or b
	inc c
	or b
	inc c
	ret


	or e
	ld c, $ff
	or e
	add hl, bc
	or e
	ld a, [bc]
	or e
	ld a, [bc]
	or e
	dec bc
	rst $38
	db $ed
	nop
	ld a, b
	ldh a, [rPCM34]
	db $ec
	inc bc
	ld [$340c], a
	add sp, -$24
	or l
	push hl
	sub l
	call c, $81b1
	ld h, c
	ld b, c
	ld sp, $3f11
	call c, $e5b5
	inc de
	and $83
	push hl
	ld b, e
	and $b3
	push hl
	sub c
	add a
	call c, $81a7
	sub c
	or c
	call c, $85b5
	ld b, c
	ld h, c
	ld b, c
	ld sp, wdc41
	and a
	ld h, a
	scf
	call c, $33b5
	and $b3

jr_01f_54e5:
	push hl
	ld h, e
	inc sp
	or c
	sub a
	call c, $e4b7
	ld b, c
	ld sp, $3541
	ld de, $31e5
	ld b, c
	ld h, c
	ld [hl], c
	add c
	call c, $8097
	ld [hl], b
	add b
	ld [hl], b
	add c
	call c, Call_01f_67b7
	call c, $13b5
	and $83
	push hl
	ld b, e
	and $b3
	push hl
	sub c
	add a
	call c, $81b7
	sub c
	or c
	add l
	ld b, c
	ld h, c
	ld b, c
	ld sp, $6741
	call c, $3397
	inc de
	call c, $33b5
	and $b3
	push hl
	ld h, e
	inc sp
	or c
	sub a
	call c, $61b7
	add c
	sub c
	or e
	sub e
	or c
	sub c
	add c
	ld h, c

jr_01f_5533:
	call c, Call_01f_43c2
	and $b3
	push hl
	ld b, c
	ld b, e
	ld b, e
	call c, $e6b7
	or c
	push hl
	ld de, $3921
	and $b1
	push hl
	ld de, $4731
	call c, $e4b5
	inc sp
	push hl
	or e
	ld h, e
	inc sp
	call c, Call_01f_42b7
	jr nc, jr_01f_5533

	or d
	ld de, $4931
	call c, $e6b7
	or c
	push hl
	ld de, $3921
	and $b1
	push hl
	ld de, $4731
	call c, $e4b5
	inc sp
	push hl
	or e
	ld h, e
	sub e
	call c, $81b7
	add b
	ld [hl], b
	add b
	ld [hl], b
	add b
	ld [hl], b
	add a
	cp $00
	jp nz, $ec54

	ld [bc], a
	ld [$230a], a
	call c, $e4c6
	dec d
	call c, $e5c1
	or c
	sub c
	add c
	ld h, c
	ld b, c
	ld h, c
	db $ec
	inc bc
	or b
	and b
	or b
	and b
	or b
	and b
	or a
	db $ec
	ld [bc], a
	call c, $e5c7
	ld b, e
	and $b3
	push hl
	add e
	ld b, e
	db $e4
	ld de, $bde5
	db $e4
	ld b, l
	ld sp, $e511
	or c
	sub c
	add c
	sbc a
	ld h, e
	inc sp

Call_01f_55b4:
	sub e
	ld h, e
	db $e4
	ld sp, $651d
	ld b, c
	ld sp, $e511
	or c
	and c
	cp a
	ld b, e
	and $b3

Call_01f_55c4:
	push hl
	add e
	ld b, e
	db $e4
	ld de, $bde5
	db $e4
	ld b, l
	ld sp, $e511
	or c
	sub c
	add c
	sbc a
	ld h, e
	inc sp
	sub e
	ld h, e
	db $e4
	ld sp, $651d
	ld b, c
	ld sp, $6141
	add c
	call c, $41c1
	call c, Call_01f_40a1
	jr nc, jr_01f_5629

	jr nc, jr_01f_562b

	jr nc, jr_01f_562e

	call c, $e5c7
	or c
	db $e4
	ld de, $3921
	push hl
	or c
	db $e4
	ld de, $4931
	push hl
	or c
	db $e4
	ld de, wdc31
	push bc
	ld h, e
	inc sp
	push hl

jr_01f_5605:
	or e
	db $e4
	sub e
	add d
	sub b
	call c, $81c2
	ld h, c
	ld b, c
	call c, $e5c7
	or c
	db $e4
	ld de, $3921
	push hl
	or c
	db $e4
	ld de, $4931
	push hl
	or c
	db $e4
	ld de, $6331
	inc sp
	sub e
	ld h, e

jr_01f_5626:
	cp a
	cp $00

jr_01f_5629:
	sbc d
	ld d, l

jr_01f_562b:
	call c, $e313

jr_01f_562e:
	db $10
	call nz, Call_01f_60e4
	ret nz

	add b
	ret nz

	sub b
	ret nz

	and b
	ret nz

	and b
	ret nz

	or b
	ret z

	push hl
	or b
	ret nz

	db $e4
	db $10
	ret nz

	jr nc, jr_01f_5605

	db $fd
	cp b
	ld d, [hl]
	db $fd
	call $fd56
	ld [c], a
	ld d, [hl]
	db $fd
	rst $30
	ld d, [hl]
	db $fd
	inc c
	ld d, a
	db $fd
	ld hl, $fd57
	ld [hl], $57
	jr nc, @-$3e

	sub b
	ret nz

	push hl
	or b
	ret nz

	db $e4
	sub b
	ret nz

	jr nc, jr_01f_5626

	sub b
	ret nz

	add b
	ret nz

	ld h, b
	ret nz

	db $fd
	cp b
	ld d, [hl]
	db $fd
	call $fd56
	ld [c], a
	ld d, [hl]
	db $fd
	rst $30
	ld d, [hl]
	db $fd
	inc c
	ld d, a
	db $fd
	ld hl, $fd57
	ld [hl], $57
	ld b, b
	jp nz, $b0e5

	jp nz, Jump_01f_40e4

	ret nz

	ld b, b
	jp nz, wc0b0

	db $fd
	inc c
	ld d, a
	db $fd
	cp b
	ld d, [hl]
	db $fd
	ld c, e
	ld d, a
	ld b, b
	ret nz

	add b
	ret nz

	push hl
	or b
	ret nz

	db $e4
	add b
	ret nz

	ld b, b

jr_01f_56a1:
	ret nz

	add b
	ret nz

	ld h, b
	ret nz

	ld b, b
	ret nz

	db $fd
	inc c
	ld d, a
	db $fd
	cp b
	ld d, [hl]
	db $fd
	ld c, e
	ld d, a
	db $fd
	call $fe56
	nop
	ld b, l
	ld d, [hl]
	ld b, b

jr_01f_56b9:
	ret nz

	add b
	ret nz

	push hl
	or b
	ret nz

	db $e4
	add b
	ret nz

	ld b, b

jr_01f_56c3:
	ret nz

	add b
	ret nz

	push hl
	or b
	ret nz

	db $e4
	add b
	ret nz

	rst $38
	ld b, b

jr_01f_56ce:
	ret nz

	add b
	ret nz

	push hl
	or b
	ret nz

	db $e4
	add b
	ret nz

	ld b, b

jr_01f_56d8:
	ret nz

	push hl
	or b
	ret nz

	db $e4
	db $10
	ret nz

	jr nc, jr_01f_56a1

	rst $38
	ld b, b

jr_01f_56e3:
	ret nz

	or b
	ret nz

	push hl
	or b
	ret nz

	db $e4
	or b
	ret nz

	ld b, b

jr_01f_56ed:
	ret nz

	or b
	ret nz

	push hl
	or b
	ret nz

	db $e4
	or b

jr_01f_56f5:
	ret nz

	rst $38
	jr nc, jr_01f_56b9

	sub b
	ret nz

	push hl
	or b
	ret nz

	db $e4
	sub b
	ret nz

	jr nc, jr_01f_56c3

	sub b
	ret nz

	push hl
	or b
	ret nz

	db $e4
	sub b
	ret nz

	rst $38
	jr nc, jr_01f_56ce

	ld h, b
	ret nz

	push hl
	or b
	ret nz

	db $e4
	ld h, b
	ret nz

	jr nc, jr_01f_56d8

	ld h, b
	ret nz

	push hl
	or b
	ret nz

	db $e4
	ld h, b
	ret nz

	rst $38
	jr nc, jr_01f_56e3

	ld h, b
	ret nz

	push hl
	or b
	ret nz

	db $e4
	ld h, b
	ret nz

	jr nc, jr_01f_56ed

	push hl
	or b
	ret nz

	db $e4
	db $10
	ret nz

	jr nc, jr_01f_56f5

	rst $38
	ld h, b
	ret nz

	or b
	ret nz

	push hl
	or b
	ret nz

	db $e4
	or b
	ret nz

	ld h, b
	ret nz

	or b
	ret nz

	push hl
	or b
	ret nz

	db $e4
	or b
	ret nz

	rst $38
	ld h, b
	ret nz

	sub b
	ret nz

	push hl
	or b
	ret nz

	db $e4
	sub b
	ret nz

	ld h, b
	ret nz

	sub b
	ret nz

	push hl
	or b
	ret nz

	db $e4
	sub b
	ret nz

	rst $38

	db $ed, $00, $90, $f0, $77, $ea, $09, $34, $ec, $03, $dc, $c1, $e6, $40, $70, $b0
	db $e5, $20, $e6, $73, $75, $70, $70, $73, $73, $73, $d8, $c1, $91, $91, $91, $91
	db $91, $61, $fd, $e1, $57, $fd, $ea, $57, $fd, $e1, $57, $e5, $07, $d8, $c6, $43
	db $43, $03, $dc, $c6, $e6, $b7, $d8, $e7, $e5, $53, $43, $03, $dc, $e7, $29, $dc
	db $c6, $e6, $b1, $e5, $01, $21, $fd, $e1, $57, $fd, $ea, $57, $fd, $e1, $57, $05
	db $05, $43, $25, $51, $71, $23, $71, $75, $93, $51, $91, $e4, $01, $e5, $2b, $43
	db $57, $73, $53, $4b, $53, $77, $dc, $b6, $e4, $03, $13, $fd, $fc, $57, $d8, $b4
	db $e4, $03, $03, $13, $fd, $fc, $57, $d8, $b2, $e5, $43, $43, $13, $fe, $00, $82
	db $57, $dc, $c6, $e5, $25, $e6, $b1, $e5, $27, $ff, $05, $55, $03, $27, $dc, $e7
	db $55, $40, $30, $27, $d8, $c6, $03, $e6, $b3, $e5, $03, $ff, $dc, $c1, $20, $c0
	db $e6, $20, $20, $20, $c0, $20, $20, $20, $c0, $20, $20, $20, $c0, $20, $20, $20
	db $c0, $20, $20, $20, $c0, $20, $20, $ff, $ea, $10, $46, $ec, $01, $dc, $e1, $e6
	db $70, $b0, $e5, $20, $60, $73, $75, $70, $70, $73, $73, $73, $d8, $e1, $51, $51
	db $51, $51, $51, $61, $ea, $10, $46, $fd, $c2, $58, $e6, $93, $53, $fd, $cc, $58
	db $e6, $97, $bf, $fd, $c2, $58, $e6, $95, $51, $d8, $e7, $e4, $03, $e5, $b3, $e4
	db $03, $dc, $e7, $27, $dc, $95, $e6, $25, $20, $60, $7f, $fd, $c2, $58, $e6, $91
	db $55, $fd, $cc, $58, $e5, $01, $e6, $95, $b5, $71, $57, $fd, $c2, $58, $d8, $95
	db $e6, $73, $54, $92, $d8, $e6, $e4, $53, $43, $53, $dc, $e7, $75, $a1, $77, $ea
	db $10, $26, $ec, $03, $dc, $0b, $77, $dc, $e7, $97, $ec, $01, $dc, $e7, $a5, $51
	db $57, $e5, $27, $e4, $a3, $b3, $e3, $05, $e4, $71, $77, $e5, $47, $dc, $d7, $e3
	db $03, $13, $fd, $d6, $58, $c2, $20, $c2, $20, $d8, $e5, $e3, $03, $03, $13, $fd
	db $d6, $58, $20, $c1, $20, $c2, $20, $d8, $e3, $e3, $03, $03, $e4, $b3, $fe, $00
	db $34, $58, $dc, $e7, $e5, $75, $b1, $e4, $27, $dc, $95, $ff, $dc, $e7, $e4, $55
	db $40, $30, $27, $dc, $95, $ff, $dc, $e1, $20, $c1, $e4, $20, $c2, $20, $c2, $20
	db $c2, $20, $ff, $dc, $10, $e5, $70, $c0, $20, $c0, $70, $c2, $70, $c4, $70, $70
	db $70, $c2, $70, $c2, $70, $c2, $d8, $10, $51, $51, $51, $51, $51, $91, $fd, $69
	db $59, $fd, $70, $59, $fd, $69, $59, $fd, $69, $59, $fd, $69, $59, $fd, $70, $59
	db $fe, $03, $04, $59, $fd, $69, $59, $75, $22, $95, $52, $92, $52, $fd, $77, $59
	db $a2, $52, $fd, $77, $59, $b2, $72, $fd, $7c, $59, $e4, $02, $e5, $72, $fd, $7c
	db $59, $e4, $12, $e5, $92, $fd, $85, $59, $e3, $eb, $00, $42, $23, $c3, $e2, $eb
	db $00, $32, $23, $e3, $eb, $00, $42, $23, $c1, $d8, $10, $e4, $03, $03, $13, $fd
	db $85, $59, $e2, $eb, $00, $32, $23, $c3, $e3, $eb, $00, $42, $23, $c5, $d8, $10
	db $e4, $03, $03, $e5, $b3, $fe, $00, $fe, $58, $75, $22, $75, $22, $72, $22, $ff
	db $55, $02, $55, $02, $52, $02, $ff, $a5, $52, $a5, $52, $ff, $e4, $05, $e5, $72
	db $e4, $05, $e5, $72, $ff, $dc, $10, $e4, $20, $c4, $ff, $d6, $c3, $b0, $03, $b0
	db $03, $b0, $04, $b0, $04, $dc, $b0, $02, $c2, $b0, $02, $c4, $b0, $02, $b0, $02
	db $b0, $02, $c2, $b0, $02, $c2, $b0, $02, $c2, $d8, $b1, $03, $b1, $04, $b1, $02
	db $b1, $03, $b1, $02, $b1, $01, $dc, $b0, $02, $c2, $b0, $02, $c4, $b0, $02, $b0
	db $02, $b0, $03, $c2, $fd, $d4, $5a, $fd, $d4, $5a, $b0, $02, $c2, $b0, $02, $c4
	db $b0, $02, $b0, $02, $b0, $03, $c0, $b0, $03, $b0, $02, $fd, $e2, $5a, $b0, $02
	db $c2, $b0, $02, $c4, $b0, $02, $b0, $03, $b0, $02, $c0, $b0, $02, $c0, $fd, $e2
	db $5a, $b0, $02, $c2, $b0, $02, $c4, $b0, $02, $b0, $03, $b0, $02, $c0, $d6, $b0
	db $03, $b0, $03, $b0, $04, $b0, $04, $dc, $fd, $d4, $5a, $fd, $e2, $5a, $b0, $02
	db $c2, $b0, $02, $c4, $b0, $02, $b0, $03, $b0, $02, $c2, $b0, $02, $c2, $b0, $02
	db $c4, $b0, $03, $b0, $02, $b0, $02, $c0, $b0, $03, $b0, $02, $fd, $d4, $5a, $fd
	db $e2, $5a, $b0, $02, $c2, $b0, $02, $c4, $b0, $03, $b0, $02, $b0, $02, $c0, $b0
	db $04, $b0, $03, $b0, $02, $c2, $b0, $03, $c4, $b0, $02, $b0, $04, $b0, $02, $c0
	db $d6, $b0, $03, $b0, $03, $b0, $04, $b0, $04, $dc, $b0, $01, $c2, $b0, $02, $c4
	db $b0, $03, $b0, $02, $b0, $01, $c2, $b0, $02, $c2, $b0, $03, $c4, $b0, $03, $b0
	db $02, $b0, $03, $c2, $b0, $02, $c2, $b0, $03, $c4, $b0, $02, $b0, $03, $b0, $04
	db $c0, $b0, $03, $b0, $02, $b0, $02, $c2, $b0, $03, $c4, $b0, $02, $b0, $03, $b0
	db $02, $c2, $b0, $05, $c4, $b0, $02, $c2, $b0, $03, $b0, $02, $b0, $01, $c4, $b0
	db $02, $b0, $03, $b0, $02, $c0, $b0, $01, $c0, $d8, $b3, $02, $b3, $03, $b3, $01
	db $dc, $b0, $05, $c4, $b0, $02, $c2, $b0, $03, $b0, $02, $b0, $03, $c4, $b0, $02
	db $b0, $03, $b0, $01, $c0, $b0, $03, $b0, $02, $d8, $b3, $02, $b3, $03, $b3, $02
	db $fe, $00, $b6, $59, $b0, $02, $c2, $b0, $02, $c4, $b0, $02, $b0, $03, $b0, $02
	db $c2, $ff, $b0, $02, $c2, $b0, $02, $c4, $b0, $03, $b0, $02, $b0, $02, $c2, $ff
	db $f8, $ed, $01, $00, $f0, $77, $ea, $06, $26, $ec, $02, $e8, $d4, $b1, $e5, $81
	db $81, $81, $dc, $b3, $e4, $43, $ff, $f8, $ea, $08, $27, $ec, $02, $d4, $c1, $e4
	db $41, $41, $41, $dc, $c3, $b3, $ff, $f8, $d4, $10, $e4, $b0, $c0, $b0, $c0, $b0
	db $c0, $dc, $10, $e4, $b1, $c1, $ff, $ed, $00, $90, $f0, $77, $ec, $03, $e8, $ea
	db $0a, $14, $dc, $b2, $e4, $43, $43, $43, $43, $a3, $a3, $a3, $a3, $43, $43, $43
	db $43, $e3, $13, $13, $13, $13, $e5, $43, $43, $43, $43, $a3, $a3, $a3, $a3, $e6
	db $71, $a3, $71, $e5, $13, $e6, $71, $a1, $b1, $71, $e5, $13, $e6, $71, $93, $61
	db $fe, $02, $32, $5b, $dc, $1f, $e5, $4f, $0f, $2f, $e6, $af, $cf, $cf, $cf, $cf
	db $cf, $cf, $cf, $cf, $fe, $00, $32, $5b, $ea, $0b, $15, $ec, $03, $dc, $c2, $e5
	db $43, $43, $43, $43, $03, $03, $03, $03, $43, $43, $43, $43, $03, $03, $03, $03
	db $b3, $b3, $b3, $b3, $e4, $63, $63, $63, $63, $23, $23, $23, $23, $73, $73, $73
	db $63, $fe, $02, $7b, $5b, $e5, $41, $71, $41, $31, $41, $41, $e3, $41, $c1, $31
	db $c1, $21, $c1, $11, $01, $e4, $41, $71, $e5, $a1, $11, $a1, $91, $a1, $71, $e3
	db $71, $c1, $61, $c1, $51, $c1, $41, $31, $21, $11, $cf, $cf, $cf, $cf, $dc, $c7
	db $ec, $01, $e4, $4f, $2f, $0f, $2f, $fe, $00, $7b, $5b, $dc, $13, $ea, $08, $26
	db $fd, $71, $5c, $fe, $10, $e0, $5b, $43, $c3, $c3, $43, $03, $c3, $c3, $03, $23
	db $c3, $c3, $23, $e5, $a3, $c3, $c3, $a3, $e3, $41, $c1, $b1, $c1, $a1, $c1, $e2
	db $21, $c1, $11, $c1, $e3, $81, $c1, $71, $c1, $b1, $c1, $a1, $c1, $41, $c1, $31
	db $c1, $91, $c1, $81, $c1, $41, $c1, $61, $c1, $31, $c1, $fe, $03, $f8, $5b, $e4
	db $43, $b3, $a3, $e3, $23, $13, $e4, $83, $73, $b3, $a3, $43, $33, $93, $83, $43
	db $63, $33, $e5, $4f, $0f, $2f, $e6, $af, $e5, $4f, $5f, $7f

	push hl
	cp a
	rst $08
	rst $08
	rst $08
	rst $08
	db $fd
	ld [hl], c
	ld e, h
	db $fd
	ld [hl], c
	ld e, h
	db $fd
	ld [hl], c
	ld e, h
	db $fd
	ld [hl], c
	ld e, h
	db $fd
	ld [hl], c
	ld e, h
	db $fd
	ld [hl], c
	ld e, h
	db $fd
	ld [hl], c
	ld e, h
	db $fd
	ld [hl], c
	ld e, h
	cp $00
	ldh [$5b], a
	and $71
	and e
	ld [hl], c
	push hl
	inc de
	and $71
	sub c
	and c
	ld [hl], c
	push hl
	inc de
	and $71
	and c
	ld [hl], c
	pop bc
	rst $38

	db $e4, $41, $c3, $e5, $40, $c2, $40, $c0, $e4, $63, $ff, $dc, $b3, $0c, $b3, $0d
	db $b3, $0c, $b3, $0a, $b3, $0c, $b3, $0d, $b3, $0b, $b3, $09, $fe, $00, $7d, $5c

	db $ed
	nop
	and b
	ldh a, [rPCM34]
	db $ec
	inc bc
	add sp, -$16
	ld [wdc14], sp
	jp Jump_01f_52fd


	ld e, l
	cp $03
	sbc [hl]
	ld e, h
	and $b1
	push hl
	ld sp, $e671
	or c
	push hl
	ld sp, $3171
	ld b, c
	db $fd
	ld h, c
	ld e, l
	cp $04
	or c
	ld e, h
	db $fd
	ld d, d
	ld e, l
	cp $04
	cp b
	ld e, h
	db $e4
	ld d, c
	ld d, c
	pop bc
	ld d, c
	ld b, c
	ld b, c
	ld sp, wc131
	ld sp, $2121
	db $fd
	sbc h
	ld e, l
	db $e4
	ld hl, wc121
	ld hl, $3131
	ld b, c
	ld b, c
	pop bc
	ld b, c
	ld d, c
	ld d, c
	db $fd
	ld l, [hl]
	ld e, l
	cp $04
	call c, $fd5c
	ld a, l
	ld e, l
	cp $03
	db $e3
	ld e, h
	push hl
	ld de, $91e6
	ld d, c
	push hl
	ld de, $91e6
	ld d, c
	push hl
	sub c
	ld d, c
	db $e4
	ld de, $91e5
	ld d, c
	db $e4
	ld de, $91e5
	ld d, c
	sub c
	ld d, c
	db $e4
	ld de, $91e5
	ld d, c
	db $e4
	ld de, $91e5
	ld d, c
	db $e4
	ld de, $91e5
	ld d, c
	db $e4
	ld de, $91e5
	ld d, c
	db $e4
	ld de, $91e5
	ld d, c
	db $e4
	ld de, $91e5
	ld d, c
	add c
	ld b, c
	db $e4
	ld bc, $81e5
	ld b, c
	db $e4
	ld bc, $8afd
	ld e, l
	db $fd
	adc d
	ld e, l
	push hl
	add c
	ld b, c
	db $e4
	ld bc, $81e5
	ld b, c
	db $e4
	ld bc, $81e5
	ld b, c
	rst $08
	rst $00
	db $fd
	sub a
	ld e, l
	db $fd
	sub a
	ld e, l
	db $fd
	sub a
	ld e, l
	db $fd
	sub a
	ld e, l
	ld sp, wcfcf
	cp $00
	sbc h
	ld e, h
	and $b1
	push hl
	ld sp, $e671
	or c
	push hl
	ld sp, $e671
	or c
	push hl
	ld sp, $41ff
	add c
	db $e4
	ld bc, $41e5
	add c
	db $e4
	ld bc, $41e5
	add c
	rst $38
	push hl
	ld sp, $b1e6
	push hl
	ld [hl], c
	ld sp, $b1e6
	push hl
	ld [hl], c
	ld sp, $b1e6
	rst $38
	sub c
	ld d, c
	push hl
	ld de, $91e6
	ld d, c
	push hl
	ld de, $91e6
	ld d, c
	rst $38
	push hl
	add c
	ld b, c
	add c
	ld b, c
	db $e4
	ld bc, $81e5
	ld b, c
	db $e4
	ld bc, $31ff
	ld [hl], c
	ld sp, $ff15
	db $ed
	nop
	xor b
	rst $20
	and b
	or b
	and $00
	db $10
	jr nz, jr_01f_5dd7

	ld b, b
	ld d, b
	db $ed
	nop
	or b
	rst $20
	and b
	or b
	and $00
	db $10
	jr nz, jr_01f_5de4

	ld b, b
	ld d, b
	db $ed
	nop
	cp b
	rst $20
	and b
	or b
	and $00
	db $10
	jr nz, jr_01f_5df1

	ld b, b
	ld d, b
	db $ed
	nop
	ret nz

	rst $20
	sub b
	and b
	or b
	and $00
	db $10
	jr nz, jr_01f_5dff

	ld b, b
	db $ed
	nop
	ret z

	rst $20
	add b
	sub b
	and b

jr_01f_5dd7:
	or b

jr_01f_5dd8:
	and $00
	db $10
	jr nz, jr_01f_5e0d

	db $ed
	nop
	ret nc

	rst $20
	ld [hl], b
	add b
	sub b

jr_01f_5de4:
	and b
	or b
	and $00
	db $10
	jr nz, jr_01f_5dd8

	nop
	ret c

	rst $20
	ld h, b
	ld [hl], b
	add b

jr_01f_5df1:
	sub b
	and b
	or b
	and $00
	db $10
	db $ed
	nop
	ldh [$e7], a
	ld d, b
	ld h, b
	ld [hl], b
	add b

jr_01f_5dff:
	sub b
	and b
	or b
	and $00
	db $ed
	nop
	and b
	rst $38
	ld [$150b], a
	db $ec
	inc bc

jr_01f_5e0d:
	call c, $e4d3
	dec [hl]
	dec d
	push hl
	or c
	db $e4
	ld de, $7131
	ld sp, $e515
	or c
	db $e4
	ld de, $7131
	ld sp, $e515
	or c
	and c
	or l
	db $e4
	rla
	pop bc
	add l
	ld h, l
	ld b, c
	ld h, c
	add c
	db $e3
	ld bc, $81e4
	ld h, l
	ld b, c
	ld h, c
	add c
	db $e3
	ld bc, $81e4
	ld h, l
	ld b, c
	ld sp, $6545
	ld b, e
	dec [hl]
	dec d
	push hl
	or c
	db $e4
	ld de, $7131
	ld sp, $e515
	or c
	db $e4
	ld de, $7131
	ld sp, $e515
	or c
	and c
	or l
	db $e4
	rla
	pop bc
	add c
	add c
	pop bc
	add c
	sub c
	sub c
	and c
	and c
	pop bc
	and c
	or c
	or c
	rst $00
	rst $00
	rst $00
	rst $00
	rst $00
	rst $00
	rst $00
	rst $00
	db $e4
	or c
	or c
	pop bc
	or c
	and c
	and c
	sub c
	sub c
	pop bc
	sub c
	add c
	add c
	rla
	pop bc
	push hl
	or l
	and c
	or c
	db $e4
	ld sp, $3171
	dec d
	push hl
	or c
	db $e4
	ld de, $7131
	ld sp, $e515
	or c
	db $e4
	ld de, $7535
	push hl
	ld [hl], a
	pop bc
	ld d, l
	ld b, c
	ld d, c
	sub c
	db $e4
	ld de, $91e5
	ld [hl], l
	ld d, c
	ld [hl], c
	sub c
	db $e4
	ld de, $91e5
	ld [hl], l
	sub l
	db $e4
	dec d
	ld [hl], a
	pop bc
	ld d, l
	ld b, c
	ld d, c
	sub c
	db $e3
	ld de, $91e4
	ld [hl], l
	sub c
	db $e3
	ld de, $91e4
	ld [hl], l
	sub l
	db $e3
	dec d
	db $e4
	ld h, a
	pop bc
	ld b, l
	ld sp, $8141
	db $e3
	ld bc, $81e4
	ld h, l
	ld b, c
	ld h, c
	add c
	db $e3
	ld bc, $81e4
	ld h, l
	add l
	db $e3
	dec b
	push hl
	ld sp, $3171
	dec d
	ld sp, $3171
	dec d
	and $41
	add c
	push hl
	ld bc, $8141
	db $e4
	ld bc, $8141
	ld bc, $8141
	ld bc, $8141
	ld bc, $8141
	ld bc, $8141
	ld bc, $8141
	ld bc, $e631
	or c
	push hl
	ld sp, $e671
	or c
	push hl
	ld sp, $e671
	or c
	push hl
	ld sp, $b1e6
	push hl
	ld sp, $e671
	or c
	push hl
	ld sp, $e671
	or c
	push hl
	ld sp, $00fe
	dec c
	ld e, [hl]
	call c, wcf12
	rst $08
	rst $08
	rst $08
	rst $08
	rst $08
	rst $08
	rst $08
	rst $08
	rst $08
	rst $08
	set 2, [hl]
	db $10
	push hl
	or b
	db $e4
	nop
	db $10
	jr nz, jr_01f_5f61

	ld b, b
	pop bc
	nop
	db $10
	jr nz, jr_01f_5f67

	ld b, b
	ld d, b
	rst $08
	rst $08
	ret


	db $e3
	ld b, a
	db $e4
	or a
	db $e3
	scf
	db $e4
	and a
	db $e3
	daa
	db $e4
	sub a
	db $e3
	rla
	db $e4
	add a
	db $e3
	rlca
	db $e4
	ld [hl], a
	or a
	ld h, a
	and a
	ld d, a
	sub a
	ld b, a
	rst $08
	rst $08
	rst $00
	ld d, b
	ld b, b
	jr nc, jr_01f_5f7d

	stop
	pop bc

Call_01f_5f60:
	ld b, b

jr_01f_5f61:
	jr nc, jr_01f_5f83

	stop
	push hl
	or b

jr_01f_5f67:
	ret


	rst $08
	call c, wcf10
	rst $08
	rst $08
	rst $08
	rst $08
	rst $08
	rst $08
	rst $08
	rst $08
	rst $08
	rst $08
	rst $08
	rst $08
	rst $08
	rst $08
	rst $08
	rst $08
	rst $08

jr_01f_5f7d:
	rst $08
	rst $08
	ret


	cp $00
	ld a, [de]

jr_01f_5f83:
	ld e, a
	call c, wcfcf
	rst $08
	rst $08
	rst $08
	rst $08
	rst $08
	rst $08
	rst $08
	rst $08
	rst $08
	rst $08
	rst $08
	rst $08
	rst $08
	rst $08
	rst $08
	rst $08
	rst $08
	rst $08
	rst $08
	rst $08
	rst $08
	rst $08
	rst $08
	rst $08
	rst $08
	rst $08
	rst $08
	rst $08
	rst $08
	rst $08
	rst $08
	rst $08
	rst $08
	rst $08
	rst $08
	rst $08
	rst $08
	rst $08
	ret


	rst $38
	db $ed
	nop
	sub b
	ldh a, [rPCM34]
	ld [$250b], a
	db $ec
	ld [bc], a
	call c, $e362
	ld b, b
	ld b, b
	db $e4
	or b
	or b
	nop
	pop bc
	db $e3
	or c
	ld b, c
	db $e4
	ld bc, $41b1
	nop
	db $e3
	or b
	pop bc
	cp $0e
	cp c
	ld e, a
	call c, wcfa5
	rst $08
	adc $e4
	nop
	db $e3
	or b
	or c
	cp $00
	cp c
	ld e, a
	db $ec
	ld [bc], a
	add sp, -$16
	ld a, [bc]
	inc h
	call c, wcfc2
	rst $08
	cp $04
	add sp, $5f
	call c, $fdc2
	inc c
	ld h, b
	cp $03
	ldh a, [$5f]
	push hl
	ld b, e
	inc sp
	or e
	and e
	ld [hl], e
	add e
	jp Jump_01f_43a3


	inc sp
	or e
	and e
	ld [hl], e
	add e
	ld [hl], e
	inc sp
	cp $00
	xor $5f
	push hl
	ld b, e
	inc sp
	or e
	and e
	ld [hl], e
	add e
	sub e
	and e
	ld b, e
	inc sp
	or e
	and e
	ld [hl], e
	add e
	jp $ffa3


	call c, $e611
	or c
	pop bc
	push hl
	ld b, c
	pop bc
	ld b, c
	pop bc
	ld b, c
	pop bc
	ld b, c
	pop bc
	ld b, c
	pop bc
	ld b, c
	pop bc
	ld b, c
	pop bc
	ld bc, $e5c1
	ld sp, $31c1
	pop bc
	ld sp, $31c1
	pop bc
	ld sp, $31c1
	pop bc
	ld sp, $fec1
	ld [$6020], sp
	ld c, a
	ccf
	ld a, a
	add a
	scf
	cp $00
	jr nz, jr_01f_60b0

	sub $cf
	rst $08
	rst $08
	rst $08
	or c
	inc c
	or c
	inc c
	or e
	dec c
	or c
	inc c
	or c
	inc c
	or e
	dec c
	or c
	inc c
	or c
	inc c
	or e
	dec c
	or c
	inc c
	or c
	inc c
	or e
	ld c, $b1
	inc c
	or c
	inc c
	pop bc
	ret


	rst $00
	or a
	ld c, $fe
	nop
	ld d, l
	ld h, b
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
	jp nz, Jump_01f_51e3

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

jr_01f_60b0:
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
	jp nz, wc200

	db $e4
	ld d, c
	pop bc
	rst $38

jr_01f_60c8:
	ld hl, sp-$13

jr_01f_60ca:
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

Call_01f_60e4:
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
	jr nc, jr_01f_60c8

	jr nc, jr_01f_60ca

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
	db $83, $73, $53, $37, $ff, $ed, $00, $8c, $f0, $77, $ec, $03, $ea, $10, $12, $e8
	db $dc, $b3, $e6, $b0, $e5, $10, $20, $40, $60, $80, $90, $b0, $e4, $13, $e5, $b1
	db $e4, $11, $e5, $93, $81, $91, $b0, $c2, $95, $80, $b0, $e4, $13, $e5, $93, $81
	db $91, $63, $41, $61, $80, $c2, $67, $43, $95, $40, $90, $e4, $27, $15, $e5, $90
	db $e4, $10, $47, $23, $13, $e5, $b3, $93, $80, $c2, $43, $63, $83, $fe, $00, $70
	db $61, $ec, $03, $ea, $0a, $25, $dc, $c4, $e5, $80, $90, $b0, $e4, $10, $20, $40
	db $60, $80, $95, $80, $60, $45, $30, $40, $60, $c2, $47, $43, $65, $40, $20, $15
	db $e5, $b0, $e4, $10, $20, $c2, $17, $13, $25, $e5, $90, $e4, $20, $67, $45, $10
	db $40, $97, $83, $91, $81, $63, $81, $61, $40, $c0, $e5, $80, $c0, $90, $c0, $b0
	db $c0, $e4, $10, $c0, $20, $c0, $40, $c0, $60, $c0, $fe, $00, $b6, $61, $dc, $11
	db $c1, $e4, $80, $c0, $60, $c0, $40, $c0, $10, $c0, $90, $c2, $90, $c2, $90, $c0
	db $40, $c0, $90, $c0, $10, $c0, $90, $c2, $90, $c2, $90, $c0, $40, $c0, $90, $c0
	db $e5, $90, $c0, $e4, $60, $c2, $60, $c2, $60, $c0, $10, $c0, $60, $c0, $e5, $90
	db $c0, $e4, $60, $c2, $60, $c2, $60, $c0, $10, $c0, $60, $c0, $20, $c0, $60, $c2
	db $60, $c2, $60, $c0, $20, $c0, $60, $c0, $40, $c0, $90, $c2, $90, $c2, $90, $c0
	db $40, $c0, $90, $c0, $e5, $b0, $c0, $e4, $80, $c2, $80, $c0, $20, $c0, $60, $c2
	db $60, $c0, $40, $c4, $80, $c2, $60, $c2, $40, $c0, $10, $c0, $90, $c0, $10, $c0
	db $90, $c0, $10, $c0, $90, $c0, $40, $c0, $90, $c0, $10, $c0, $90, $c0, $10, $c0
	db $90, $c0, $10, $c0, $90, $c0, $10, $c0, $90, $c0, $e5, $90, $c0, $e4, $60, $c0
	db $e5, $90, $c0, $e4, $60, $c0, $e5, $90, $c0, $e4, $60, $c0, $10, $c0, $60, $c0
	db $e5, $90, $c0, $e4, $60, $c0, $e5, $90, $c0, $e4, $60, $c0, $e5, $90, $c0, $e4
	db $60, $c0, $10, $c0, $60, $c0, $20, $c0, $60, $c0, $20, $c0, $60, $c0, $20, $c0
	db $60, $c0, $20, $c0, $60, $c0, $40, $c0, $90, $c0, $40, $c0, $90, $c0, $40, $c0
	db $90, $c0, $40, $c0, $90, $c0, $e5, $b0, $c0, $e4, $80, $c0, $e5, $b0, $c0, $e4
	db $80, $c0, $20, $c0, $60, $c0, $20, $c0, $60, $c0, $40, $c2, $80, $c2, $60, $c2
	db $40, $c2, $fe, $00, $fc, $61

	db $ed
	nop
	sbc b
	ldh a, [rPCM34]
	db $ec
	inc bc
	add sp, -$16
	inc c
	inc hl
	call c, $c380
	db $e4
	cp e
	call c, $e4b4
	ld [hl], b
	add $70
	add $e5
	or b
	add $b0
	jp nz, wc2b0

	or b
	add $b0
	add $b0
	add $e4
	ld h, b
	add $00
	push hl

jr_01f_6313:
	or b
	ld [hl], b

jr_01f_6315:
	call nz, wc640
	ld b, b
	add $60
	add $40
	add $70
	add $70
	add $60
	add $60
	add $70
	add $40
	add $20
	add $40
	add $70
	add $70
	add $60
	add $b0
	add $b0
	add $e4
	nop
	add $00
	add $10
	add $10
	add $00
	add $00
	jp nz, $84dc

	nop
	jp nz, $b4dc

	jr nz, jr_01f_6313

	jr nz, jr_01f_6315

	push hl
	sub b
	add $90
	add $dc
	and a
	or a
	or a
	db $e4
	rlca
	rlca
	rla
	rla
	call c, $2fa6
	rst $08
	rst $08
	rst $08
	rst $08
	call c, $b392
	db $e3
	ld b, e
	inc hl
	inc bc
	db $e4
	or e
	db $e3
	ld b, e
	inc hl
	inc bc
	db $e4
	or e
	db $e3
	ld b, e
	inc hl
	inc bc

jr_01f_6377:
	db $e4
	or e
	ld [hl], e
	ld h, e
	ld b, e
	db $e3
	rrca
	rrca
	cp $00
	ld a, [$ea62]
	inc d
	inc [hl]
	db $ec
	inc bc
	call c, $e3a0
	dec bc
	db $e4
	ld b, e
	call c, $e3c1
	rlca
	db $e4
	or e
	call c, Call_01f_70c4
	ld h, b
	ld b, b
	jr nc, jr_01f_6377

	or b
	ld [hl], a
	db $e3
	rlca
	db $e4
	or e
	ld [hl], e
	ld b, e
	ld [hl], e
	db $e3
	rlca
	call c, $07b7
	call c, $e4c2
	ld [hl], b
	ld h, b
	ld b, b
	ret nz

	call c, $e596
	ld [hl], e
	call c, Call_01f_73c7
	or e
	ld [hl], e
	or e
	db $e4
	inc bc
	push hl
	or e
	call c, $e4b0
	rrca
	ld b, a
	call c, $4bb7
	call c, $e3c5
	inc bc
	db $e4
	or e
	ld [hl], e
	or e
	ld [hl], e
	ld h, e
	ld b, e
	call c, $6bb0
	ld [hl], e
	call c, $67b0
	call c, Call_01f_67b7
	call c, $b3b0
	ld [hl], e
	ld h, e
	ld b, e
	cp a
	call c, $e3b0
	inc bc
	db $e4
	ld [hl], e
	ld h, e
	ld b, e
	call c, $e390
	rrca
	call c, $23b0
	db $e4
	sub e
	add e
	ld h, e
	call c, $e32f
	cpl
	call c, Call_01f_43c0
	db $e4
	or e
	sub e
	ld [hl], e
	db $e3
	ld d, e
	inc bc
	db $e4
	and e
	add e
	db $e3
	ld h, e
	inc hl
	inc bc
	db $e4
	and e
	add e
	ld h, e
	ld b, e
	inc hl
	call c, $07b0
	call c, $0790
	call c, $0780
	call c, $0770
	call c, $0760
	call c, $0767
	rst $08
	call c, $e3a0
	ld a, a
	ld [c], a
	rrca
	db $e3
	or a
	ld [hl], a
	ld b, a
	ld [hl], a
	ld [c], a
	rrca
	ld [$3400], a
	call c, $0fa7
	cp $00
	adc [hl]
	ld h, e
	ld [$1104], a

jr_01f_643d:
	call c, wc713
	db $e3
	ld [hl], a
	ld b, b
	add $40
	add $40
	add $40
	jp nz, $3040

	ld h, b
	jr nc, jr_01f_648f

	add $70
	add $40
	add $b0
	add $40
	jr nc, jr_01f_643d

	or b

jr_01f_645a:
	call nz, wc6b0
	or b
	add $b0
	add $e3
	nop
	add $00
	add $00
	add $00
	add $e4
	or b
	add $b0
	add $b0
	add $b0
	add $e3
	nop
	add $00
	add $00
	add $00
	add $40
	add $40
	add $40
	add $40
	add $40
	add $40
	add $40
	add $40
	jp nz, wc270

	ld h, b

jr_01f_648f:
	add $60
	add $20
	add $20
	jp nz, wc020

	jr nc, jr_01f_645a

	ld b, b

jr_01f_649b:
	add $40
	add $50

jr_01f_649f:
	add $50
	add $60
	add $60
	add $70
	adc $dc
	dec d
	db $e4
	ld h, b
	jp nz, wc260

	ld [hl], b
	jp nz, wc260

	ld h, b
	adc $60
	jp nz, wc260

	ld [hl], b
	jp nz, wc260

	ld h, b
	add $dc
	inc de
	ld [c], a
	ld b, b
	ret nz

	jr nc, @-$3e

	ld h, b
	ret nz

	jr nc, @-$3e

	ld b, b
	adc $40
	adc $40
	adc $40
	adc $40
	adc $40
	add $e3
	ld b, b
	ret nz

	jr nc, jr_01f_649b

	ld h, b
	ret nz

	jr nc, jr_01f_649f

	cp $00
	ld b, d
	ld h, h
	db $ed
	nop
	and b
	ldh a, [rPCM34]
	db $ec
	inc bc
	add sp, -$16
	ld [wd622], sp
	or e
	and $40
	ld h, b
	add b
	and b
	push hl
	nop
	sub $a0
	dec bc
	sub $b3
	ld bc, $b0e6
	and b
	add b
	ld h, b
	ld b, b
	ld b, c
	pop bc
	or c
	push bc
	or c
	push bc
	or c
	push bc
	or c
	pop bc
	ld [hl], c
	pop bc
	or c
	push bc
	or c
	push bc
	and c
	push bc
	or c
	push bc
	or c
	push bc
	or c
	pop bc
	push hl
	ld bc, $01c1
	push bc
	ld bc, $01c5
	push bc
	ld bc, $e6c5
	and c
	push bc
	or c
	pop bc
	ld [hl], c
	ret


	ld b, b
	ld h, b
	add b
	sub b
	sub $a0
	cp e
	sub $b3
	or b
	sub b
	ld [hl], b
	ld d, b
	ld b, b
	jp z, $8050

	and b
	or b
	sub $a0
	push hl
	dec bc
	sub $b3
	nop
	and $b0
	sub b
	ld [hl], b
	ld d, b
	jp z, $b060

	push hl
	nop
	db $10
	sub $a0
	dec hl
	sub $b3
	jr nz, jr_01f_6559

jr_01f_6559:
	and $a0
	ld [hl], b
	ld d, b
	jp z, $8050

	and b
	or b
	sub $a0
	push hl
	dec bc
	sub $b3
	nop
	and $b0
	add b
	ld d, b
	ld b, b
	add $d6
	add b
	cp a
	sub $b0
	push hl
	ld b, a
	db $ed
	nop
	ld a, h
	sub $b3
	and $b1
	ret


	or c
	ret


	or c
	push bc
	or c
	rst $08
	push bc
	sub c
	push bc
	or c
	and c
	or c
	push hl
	ld bc, $b1e6
	and c
	or c
	and c
	or c
	push hl
	ld bc, $b1e6
	and c
	or c
	and c
	or c
	push hl
	ld bc, $b1e6
	and c
	or c
	push hl
	ld bc, $b1e6
	and c
	or c
	push hl
	ld bc, $b1e6
	and c
	or c
	and c
	sub c
	and c
	or c

Call_01f_65b0:
	and c
	db $fd
	sub b
	ld h, [hl]
	db $fd
	sub b
	ld h, [hl]

Call_01f_65b7:
	db $fd
	sub b
	ld h, [hl]
	jp wc501


	ld bc, $01c5
	push bc
	and $b1
	push bc
	or c
	push bc
	or c
	push bc
	or c
	push bc
	and c
	push bc
	sub c
	push bc
	sub c
	push bc
	sub c
	push bc
	sub c
	push bc
	sub c
	push bc
	sub c
	push bc
	and c
	push bc
	and c
	push bc
	or c
	push bc
	or c
	push bc
	or c
	push bc
	or c
	push bc
	or c
	push bc
	or c
	push bc
	push hl
	ld bc, $01c5
	push bc
	and $b1
	push bc
	or c
	push bc
	or c
	push bc
	or c
	push bc
	push hl
	or c
	push bc
	or c
	push bc
	db $e4
	ld bc, $01c5
	push bc
	and $b1
	push bc
	or c
	push bc
	or c
	push bc
	or c
	push bc
	db $e4
	ld b, c
	push bc
	ld b, c
	push bc
	ld sp, $31c5
	pop bc
	and $b0
	and b
	add b
	ld h, b

jr_01f_6617:
	ld b, b
	sub $60
	ld c, a
	ld c, d
	sub $b3
	ld b, b
	ld h, b
	add b
	and b
	push hl
	nop
	sub $3f
	rrca
	sub $a0
	ld a, [bc]
	sub $93
	and $b0
	and b
	add b
	ld h, b
	ld b, b
	sub $3f
	ld c, a
	sub $90
	ld c, d
	sub $b3
	ld d, b
	ld [hl], b
	and b
	push hl
	nop
	jr nz, jr_01f_6617

	ccf
	cpl
	sub $a7
	ld a, [hli]
	jp $edc3


	nop
	add b
	jp $edc3


	nop
	adc b
	jp $edc3


	nop
	sub b
	jp $edc3


	nop
	and b
	jp $edc3


	nop
	ret nz

	jp $edc3


	ld bc, wOAMBuffer + $20
	jp $01ed


	and b
	jp $04ed


	nop
	jp $00ed


	and b
	jp Jump_01f_43d6


	and $b1
	push bc
	sub $63
	or c
	push bc
	sub $83
	or c
	push bc
	sub $50
	or a
	sub $b3
	or c
	push bc
	or c
	push bc
	or c
	push bc
	or c
	pop bc
	cp $00
	dec c
	ld h, l
	and $b1
	and c
	or c
	push hl
	ld bc, $b1e6
	and c
	or c
	push hl
	ld bc, $b1e6
	and c
	or c
	push hl
	ld bc, $b1e6
	and c
	or c
	push hl
	ld bc, $eaff
	ld a, [bc]
	ld [hld], a
	db $ec
	inc bc
	sub $c3
	push hl
	ld b, b
	ld h, b
	add b
	and b
	db $e4
	nop
	sub $b0
	dec bc
	sub $c3
	ld bc, $b0e5
	and b
	add b
	ld h, b
	ld b, b
	ld b, c
	pop bc
	and $71
	push bc
	ld h, c
	push bc
	ld [hl], c
	push bc
	add c
	pop bc
	ld b, c
	pop bc
	ld [hl], c
	push bc
	ld [hl], c
	push bc
	ld [hl], c
	push bc
	ld h, c
	push bc
	ld [hl], c
	push bc
	add c
	pop bc
	ld b, c
	pop bc
	add c
	push bc
	add c
	push bc
	add c
	push bc
	add c
	push bc
	add c
	push bc
	add c
	pop bc
	sub $b7
	db $ec
	ld [bc], a
	db $e4
	ld b, a
	scf
	ld b, a
	ld d, a
	ld b, a
	scf
	daa
	scf
	ld b, a
	ld d, a
	ld h, a
	ld [hl], a
	add a
	scf
	daa
	scf
	db $ec
	inc bc
	sub $6f
	ld c, a
	sub $c0
	cp a
	sub $c4
	push hl
	ld b, e
	inc sp
	ld b, e
	ld d, e
	ld b, e
	inc sp
	inc hl
	inc sp
	ld b, e
	ld d, e
	ld h, e
	ld [hl], e
	add e
	inc sp
	inc hl
	inc sp
	sub $c2
	db $ec
	ld bc, $43e4
	inc sp
	ld b, e
	ld d, e
	ld b, e
	inc sp
	inc hl
	inc sp
	ld b, e
	sub $c4
	db $ec
	inc bc
	push hl
	ld d, e
	ld h, e
	ld [hl], e
	add e
	inc sp
	inc hl
	inc sp
	ld b, e
	inc sp
	ld b, e
	sub $c0
	ld d, a
	sub $b7
	ld d, a
	sub $8a
	ld d, e
	sub $c4
	db $ec
	inc bc
	ld d, e
	ld b, e
	ld d, e
	sub $a0
	ld h, a
	sub $b0
	ld h, a
	sub $99
	ld h, e
	sub $c4
	ld h, e
	ld d, e
	ld h, e
	sub $90
	ld a, e
	sub $59
	ld [hl], a
	sub $c4
	ld [hl], e
	ld h, e
	ld [hl], e
	ld h, e
	ld d, e
	ld h, e
	ld d, e
	ld b, e
	ld d, e
	ld b, e
	inc sp
	inc hl
	inc de
	inc hl
	inc sp
	inc hl
	sub $c2
	db $ec
	ld bc, $6353
	ld [hl], e
	add e
	sub e
	sub $b4
	db $ec
	inc bc
	inc sp
	inc hl
	inc sp
	sub $c2
	db $ec
	ld bc, $6353
	ld [hl], e
	add e
	and e
	sub $b4
	db $ec
	inc bc
	inc sp
	inc hl
	inc sp
	sub $c2
	db $ec
	ld bc, $6353
	ld [hl], e
	add e
	or e
	sub $b4
	db $ec
	inc bc
	inc sp
	inc hl
	inc sp
	sub $c2
	db $ec
	ld bc, $6353
	ld [hl], e
	add e
	db $e4
	inc bc
	sub $b4
	db $ec
	inc bc
	push hl
	inc sp
	inc hl
	inc sp
	jp wc571


	ld [hl], c
	push bc
	ld [hl], c
	push bc
	ld [hl], c

Call_01f_67b7:
	pop bc
	db $ec
	nop
	db $e4
	ld b, c
	pop bc
	add c
	push bc
	add c
	push bc
	add c
	push bc
	add c
	push bc
	db $ec
	inc bc
	push hl
	ld [hl], c
	push bc
	ld [hl], c
	push bc
	ld [hl], c
	push bc
	ld [hl], c
	pop bc
	db $ec
	nop
	db $e4
	ld b, c
	pop bc
	or c
	push bc
	or c
	push bc
	or c
	push bc
	or c
	pop bc
	db $ec
	inc bc
	push hl
	ld [hl], c
	pop bc
	ld [hl], c
	pop bc
	or c
	pop bc
	ld [hl], c
	pop bc
	or c
	pop bc
	ld [hl], c
	pop bc
	or c
	pop bc
	ld [hl], c
	pop bc
	db $e4
	ld bc, $e5c1
	ld [hl], c
	pop bc
	db $e4
	ld bc, $e5c1
	ld [hl], c
	pop bc
	db $e4
	ld bc, $e5c1
	ld [hl], c
	pop bc
	db $e4
	ld bc, $e5c1
	ld [hl], c
	pop bc
	or c
	pop bc
	ld [hl], c
	pop bc
	or c
	pop bc
	ld [hl], c
	pop bc
	or c
	pop bc
	ld [hl], c
	pop bc
	ld b, c
	pop bc
	ld [hl], c
	pop bc
	db $e4
	ld bc, $e5c1
	ld [hl], c
	pop bc
	ld b, c
	pop bc
	ld [hl], c
	pop bc
	or c
	pop bc
	ld [hl], c
	pop bc
	db $e4
	ld bc, $e5c1
	ld [hl], c
	pop bc
	sub $87
	db $e3
	ld b, e
	inc sp
	ld b, e
	ld d, e
	ld b, e
	inc sp
	inc hl
	inc sp
	ld b, e
	ld d, e
	ld h, e
	ld [hl], e
	add e
	inc sp
	inc hl
	inc sp
	jp Jump_01f_43d6


	and $71
	push bc
	sub $63
	ld h, c
	push bc
	sub $83
	ld [hl], c
	push bc
	sub $4f
	add a
	sub $b4
	ld [hl], c
	push bc
	ld h, c
	push bc
	ld [hl], c
	push bc
	add c
	pop bc
	cp $00
	adc $66
	ld [$1108], a
	call c, wcb11
	db $e3
	ld b, e
	inc sp
	ld b, e
	ld d, e
	ld b, e
	inc sp
	inc hl
	inc sp
	ld b, e
	ld d, e
	ld h, e
	ld [hl], e
	add e

jr_01f_6872:
	inc sp
	inc hl
	inc sp
	ld b, b
	ret nz

	ld [hl], b
	jp nz, wc260

	ld [hl], b

jr_01f_687c:
	jp nz, wc080

	ld b, b
	ret nz

	ld [hl], b
	jp nz, wc280

	ld [hl], b
	jp nz, wc260

	ld [hl], b
	jp nz, wc080

	ld d, b
	ret nz

	add b
	jp nz, wc280

	ld [hl], b
	jp nz, wc080

	ld b, b
	ret nz

	add b
	jp nz, wc270

	ld [hl], b
	jp nz, wc270

	ld [hl], b
	jp nz, wc070

	db $e4
	ld b, b
	call nz, wc450
	ld d, b
	jp nz, wca40

	jr nc, jr_01f_6872

	ld b, b
	call nz, wc450
	ld d, b
	jp nz, wca40

	jr nc, jr_01f_687c

	ld b, b
	ret nz

	ld d, b
	jp nz, wc250

	ld d, b
	jp nz, wc050

	ld d, b
	ret nz

	ld h, b
	jp nz, wc260

	ld h, b
	jp nz, wc060

	ld h, b
	ret nz

	ld [hl], b
	jp nz, wc270

	ld [hl], b
	jp nz, wc270

	ld [hl], b
	jp nz, wc260

	ld d, b
	jp nz, wc240

	ld d, b
	jp nz, wc240

	jr nc, @-$3c

	jr nz, @-$3e

	daa
	ld d, a
	daa
	ld h, a
	daa
	ld [hl], a
	daa
	sub a
	ld b, e
	inc sp
	ld b, e
	ld d, e
	db $e3
	ld b, c
	ld sp, $5141
	ld b, c
	ld sp, $3121
	db $e4
	ld b, e
	inc sp
	ld b, e
	ld d, e
	db $e3
	ld b, c
	ld d, c
	ld h, c
	ld [hl], c
	add c
	ld sp, $3121
	ld [c], a
	ld b, e
	inc sp
	ld b, e
	ld d, e
	ld b, e
	inc sp
	inc hl
	inc sp
	ld b, e
	ld d, e
	ld h, e
	ld [hl], e
	add e
	inc sp
	inc hl
	inc sp
	sub $11
	jp $c3c3


	jp $c3c3


	jp $c3c3


	jp $c3c3


	jp $c3c3


	jp $11dc


	jp $c3c3


	jp Jump_01f_43e3


	inc sp
	ld b, e
	ld d, e
	cp $00
	ld l, c
	ld l, b
	db $ed
	nop
	ld a, h
	ldh a, [rPCM34]
	db $ec
	ld [bc], a
	add sp, -$24
	or c
	jp $21e5


	ld de, $4fdc
	inc hl
	call c, $23a1
	inc hl
	inc hl
	call c, $2370
	cp $00
	ld c, [hl]
	ld l, c
	db $ec
	ld bc, $b6dc
	push hl
	or c
	and c
	or a
	call c, $e4c2
	ld sp, $1121
	ld bc, $b3e5
	or e
	or e
	or e
	or e
	call c, $a34f
	call c, $71c2
	add c
	sub c
	and c
	or e
	or e
	or e
	or e
	or e
	call c, $a33f
	call c, $fec2
	nop
	ld h, d
	ld l, c
	call c, wc710
	db $e4
	ld h, b
	ret nz

	ld d, b
	ret nz

	ld h, b
	jp nz, wc260

	ld h, b
	jp nz, $fea3

	nop
	adc [hl]
	ld l, c
	db $ed
	nop
	ld a, h
	ldh a, [rPCM34]
	db $ec
	ld bc, wdce8
	or d
	push hl
	add l
	db $e4
	ld b, c
	ld sp, $0111
	call c, $e581
	ld b, e
	cp $0c
	xor h
	ld l, c
	ld b, e
	and $b3
	or e
	push hl
	ld b, e
	cp $00
	xor h
	ld l, c
	db $ec
	ld [bc], a
	call c, $e5c2
	or c
	call c, $e4c7
	cp e
	call c, $e5c2
	or e
	db $e4
	inc sp
	ld b, e
	inc sp
	ld de, $e501
	or c
	sub c
	add c
	sub c
	and c
	db $e4
	ld de, $b3e5
	db $e4
	inc de
	push hl
	or e
	sub e
	add c
	ld h, c
	ld b, c
	ld sp, $6141
	add c
	sub c
	cp $00
	add $69
	call c, wc710
	db $e3
	db $10
	ret nz

	db $e4
	or b
	ret nz

	sub b
	ret nz

	db $fd
	db $10
	ld l, d
	add b
	jp nz, wc240

	add b
	jp nz, wc240

	db $fd
	db $10
	ld l, d
	add b
	jp nz, wc240

	add b
	jp nz, wc2b0

	cp $00
	or $69
	add b
	jp nz, wc240

	add b
	jp nz, wc040

	ld h, b
	ret nz

	rst $38

	db $ed, $00, $70, $f0, $77, $ec, $03, $ea, $14, $33, $e8, $dc, $b4, $e5, $10, $20
	db $30, $40, $5b, $cf

	push hl
	or e
	sub e
	add c
	ld h, c
	ld b, c
	ld sp, $4563
	ld d, c
	ld h, e
	ld [hl], a
	db $e4
	daa
	ld c, a
	cp $00
	cpl
	ld l, d

	db $ec, $03, $ea, $18, $22, $dc, $c4, $e4, $40, $30, $20, $10, $e5, $bb, $c1, $40
	db $c2, $40, $c8

	call c, $e4c4
	ld b, l
	dec [hl]
	inc de
	push hl
	or c
	sub c
	add c
	ld h, c
	add c
	sub c
	or c
	db $e4
	ld de, wc7dc
	ld e, a
	call c, $e5c5
	ld h, a
	db $e4
	rla
	cp $00
	ld d, l
	ld l, d

	db $dc, $10, $c5, $e4, $b0, $c0, $40, $c0, $b0, $c2, $b0, $c0, $40, $c0, $b0, $c2
	db $b0, $c2, $40, $c0, $50, $c0, $60, $c0

	ld b, b
	ret nz

	or b
	ret nz

	ld b, b
	ret nz

	or b
	ret nz

	ld b, b
	ret nz

	or b
	ret nz

	ld b, b
	ret nz

	or b
	ret nz

	ld h, b
	ret nz

	db $e3
	db $10
	ret nz

	db $e4

jr_01f_6aa0:
	ld h, b
	ret nz

	db $e3
	db $10
	ret nz

	db $e4
	ld h, b
	ret nz

	db $e3
	db $10
	ret nz

	db $e4
	ld h, b
	ret nz

	db $e3
	db $10
	ret nz

	db $e4
	ld [hl], b
	ret nz

	db $e3
	jr nz, @-$3e

	db $e4
	ld [hl], b
	ret nz

	db $e3
	jr nz, @-$3e

	db $e4
	ld [hl], b
	ret nz

	db $e3
	jr nz, @-$3e

	db $e4
	ld [hl], b
	ret nz

	db $e3
	jr nz, @-$3e

	db $e4
	ld h, b
	ret nz

	db $e3
	db $10
	ret nz

	db $e4
	ld h, b
	ret nz

	db $e3
	db $10
	ret nz

	db $e4
	ld h, b
	ret nz

	db $e3
	db $10
	ret nz

	db $e4
	ld h, b
	ret nz

	jr nc, jr_01f_6aa0

	cp $00
	adc d
	ld l, d

	db $ed, $00, $66, $f0, $77, $ec, $03, $ea, $06, $34, $e8, $dc, $b1, $c7, $e6, $91
	db $91, $dc, $b4, $e5, $23, $dc, $b1, $e6, $91, $91, $dc, $b4, $e5, $33, $dc, $b1
	db $e6, $91, $91, $dc, $b4, $e5, $23, $dc, $b1, $e6, $91, $91, $dc, $a0, $a3, $dc
	db $b1, $91, $91, $dc, $b4, $e5, $23, $dc, $b1, $e6, $91, $91, $dc, $29, $e5, $73
	db $dc, $b0, $97, $e6, $97, $dc, $b7, $e5, $57, $dc, $4f, $e6, $57, $dc, $b1, $91
	db $91, $dc, $b4, $e5, $23, $dc, $b1, $e6, $91, $91, $dc, $b4, $e5, $33, $dc, $b1
	db $e6, $91, $91, $dc, $b4, $e5, $53, $dc, $b1, $e6, $91, $91, $dc, $b4, $e5, $73
	db $dc, $b0, $6f, $dc, $b1, $e4, $2f, $ff, $ec, $03, $ea, $08, $25, $dc, $c2, $c7
	db $e5, $21, $21, $dc, $c5, $93, $dc, $c2, $21, $21, $dc, $c5, $a3, $dc, $c2, $21
	db $21, $dc, $c5, $93, $dc, $c2, $21, $21, $dc, $b7, $13, $dc, $c2, $21, $21, $dc
	db $c5, $93, $dc, $c2, $e5, $21, $21, $dc, $c7, $e4, $13, $27, $e5, $27, $e4, $07
	db $e5, $07, $dc, $c2, $21, $21, $dc, $c5, $93, $dc, $c2, $21, $21, $dc, $c5, $a3
	db $dc, $c2, $21, $21, $dc, $c5, $e4, $03, $dc, $c2, $e5, $21, $21, $dc, $c5, $e4
	db $13, $dc, $2f, $2f, $dc, $c1, $e3, $2f, $ff, $dc, $10, $c7, $e4, $20, $c0, $20
	db $c0, $93, $20, $c0, $20, $c0, $93, $20, $c0, $20, $c0, $93, $20, $c0, $20, $c0
	db $63, $20, $c0, $20, $c0, $93, $20, $c0, $20, $c0, $a3, $97, $27, $a7, $27, $20
	db $c0, $20, $c0, $93, $20, $c0, $20, $c0, $93, $20, $c0, $20, $c0, $a3, $20, $c0
	db $20, $c0, $a3, $9f, $20, $ce, $ff, $d6, $b0, $13, $b0, $13, $b0, $13, $b0, $13
	db $b0, $12, $b0, $13, $b0, $12, $b0, $13, $b0, $12, $b0, $13, $b0, $12, $b0, $12
	db $b0, $12, $b0, $12, $b0, $11, $b0, $11, $b3, $11, $b3, $11, $b0, $13, $b0, $13
	db $b0, $13, $b0, $13, $b0, $12, $b0, $12, $b0, $12, $b0, $12, $b3, $11, $b3, $11
	db $b7, $11, $b3, $11, $b3, $11, $b7, $11, $b3, $11, $b3, $11, $b0, $13, $b0, $13
	db $b0, $13, $b0, $13, $b0, $12, $b0, $12, $b0, $12, $b0, $12, $b3, $11, $b3, $11
	db $b7, $11, $b3, $11, $b3, $11, $b3, $11, $b0, $13, $b0, $13, $b0, $12, $b0, $12
	db $bf, $11, $bf, $11, $bf, $11, $b0, $13, $b0, $13, $b0, $13, $b0, $13, $b0, $12
	db $b0, $13, $b0, $12, $b0, $13, $b0, $12, $b0, $12, $b0, $12, $b0, $12, $b0, $11
	db $b0, $11, $b0, $11, $b0, $11, $b3, $11, $b3, $11, $b7, $11, $b3, $11, $b3, $11
	db $b0, $13, $b0, $13, $b0, $13, $b0, $13, $b0, $12, $b0, $12, $b0, $12, $b0, $12
	db $b3, $11, $b3, $11, $b7, $11, $b3, $11, $b7, $11, $b3, $11, $bf, $11, $bf, $11
	db $b1, $11, $cf, $cd, $ff

	db $ed
	nop
	and b
	ldh a, [rPCM34]
	db $ec
	inc bc
	ld [$340c], a
	add sp, -$24
	or l
	push bc
	and $91
	add d
	ld h, b
	ld b, l
	push hl
	add c
	ld h, c
	add e
	call c, $41b2
	ld b, e
	ld b, c
	ld b, e
	ld hl, $2123
	inc hl
	ld hl, wdc23
	or c
	ld h, d
	call c, $22b2
	ld b, c
	ld b, e
	ld b, c
	ld b, e
	sub c
	sub e
	add c
	add e
	ld h, c
	ld h, e
	ld b, c
	ld b, e
	add c
	add e
	call c, $62b1
	call c, $80b2
	call c, $91b4
	or c
	db $e4
	ld bc, $b7dc
	dec d
	call c, $21b3
	ld de, $b1e5
	sub c
	add c
	ld h, c
	ld b, c
	ld h, c
	add c
	sub c
	add c
	ld h, c
	add c
	ld h, c
	ld b, c
	add c
	ld h, c
	add c
	sub c
	add c
	ld h, c
	add c
	sub c
	or c
	db $e4
	ld hl, $e511
	or c
	sub c
	add c
	ld h, c
	ld b, c
	ld h, c
	add c
	sub c
	add c
	sub c
	ld b, c
	add c
	or c
	db $e4
	ld hl, $e511
	or c
	db $e4
	ld de, $b1e5
	sub c
	add c
	ld h, c
	ld b, e
	cp $00
	ret nc

	ld l, h
	db $ec
	inc bc
	ld [$2510], a
	call c, $e5c6
	sub c
	add d
	ld h, b
	ld b, l
	add l
	db $e4
	ld b, c
	ld hl, $b1e5
	call c, $e4c6
	ld b, l
	inc d
	ld b, b
	dec h
	push hl
	or l
	db $e4
	dec h
	push hl
	or c
	call c, $e4c1
	ld h, d
	call c, $20c6
	ld b, l
	dec d
	ld b, l
	inc d
	ld b, b
	ld h, l
	dec h
	ld h, l
	ld b, c
	call c, $62c1
	call c, $40c6
	sub l
	sub l
	or c
	sub d
	jr nz, jr_01f_6ddc

	ld b, c
	ld h, d
	ld b, b
	dec d
	ld hl, $e512
	or b
	db $e4
	ld h, l
	ld b, c
	ld [hld], a
	ld b, b
	sub l
	or c
	sub d
	jr nz, jr_01f_6dee

	ld b, c
	ld h, d
	add b
	sub l
	add c
	ld h, d
	ld b, b
	add l
	sub c
	add d
	sub b
	db $e3
	dec d
	cp $00
	ld c, [hl]
	ld l, l
	call c, wcb10
	db $e3
	ld b, l
	db $e4
	ld b, c
	ld h, c
	add c
	push hl
	sub c
	db $e4
	sub c
	sub c
	ld b, c
	sub c
	sub c
	push hl
	or c
	db $e4
	add c
	add c
	ld b, c
	add c
	add c
	push hl
	or c
	db $e4
	add c
	add c
	ld b, c
	add b
	pop bc
	ld b, b
	ld de, $9191
	ld b, c
	sub c
	sub c
	ld de, $9191
	ld b, c
	sub c
	sub c
	push hl
	or c
	db $e4
	add c
	add c
	ld b, c
	add c
	add c
	push hl
	or c
	db $e4
	add c
	add c
	ld b, c
	add b
	pop bc
	ld b, b
	ld de, $9191

jr_01f_6ddc:
	ld b, c
	sub c
	sub c
	ld hl, $6161
	push hl
	sub c
	db $e4
	ld h, c
	ld h, c
	ld b, c
	sub c
	sub c
	ld de, $9191
	ld b, c

jr_01f_6dee:
	add c
	add c
	push hl
	or c
	db $e4
	add c
	add c
	ld b, c
	sub c
	sub c
	push hl
	sub c
	db $e4
	sub c
	sub c
	ld hl, $6161
	push hl
	sub c
	db $e4
	ld h, c
	ld h, c
	ld b, c
	sub c
	sub c
	ld de, $9191
	ld b, c
	add c
	add c
	push hl
	or c
	db $e4
	add c
	add c
	ld b, c
	sub c
	sub c
	ld de, $4121
	cp $00
	and e
	ld l, l
	db $ed
	nop
	sub b
	ldh a, [rPCM34]
	ld [$2408], a
	db $ec
	ld [bc], a
	db $fc
	and l
	add sp, -$23
	ld h, a
	db $e4
	ld b, a
	call c, $b167
	add l
	ld h, a
	add c
	sub l
	add a
	ld h, e
	add e
	ld c, c
	rst $38
	ld [$1505], a
	db $ec
	ld [bc], a
	db $fc
	ld a, [bc]
	call c, $e4a7
	ld b, a
	or c
	add l
	ld h, a
	add c
	sub l
	add a
	ld h, e
	add e
	ld c, c
	rst $38
	db $ed
	nop
	ld [hl], b
	ldh a, [rPCM34]
	db $ec
	inc bc
	ld [$220c], a
	add sp, -$24
	or e
	rst $08
	rst $08
	rst $08
	set 4, l
	jr nz, jr_01f_6ea3

	ld d, b
	ld h, b
	call c, $e480
	rrca
	ld c, a
	ld l, a
	call c, Call_01f_5f60
	cp $03
	ld h, l
	ld l, [hl]
	rst $08
	rst $08
	rst $08
	rst $08
	cp $00
	ld h, l
	ld l, [hl]
	ld [$2508], a
	db $ec
	inc bc
	call c, $e5c4
	ld [hl], c
	ld hl, $9971
	ld [hl], c
	ld hl, $e471
	inc bc
	push hl
	or e
	sub c
	ld [hl], c
	ld hl, $9971
	ld d, c
	ld bc, $a351
	sub e
	ld d, c
	cp $00
	ld a, a
	ld l, [hl]
	call c, $e412
	ld hl, $2171
	ld [hl], c

jr_01f_6ea3:
	ld hl, $2171
	ld [hl], c
	cp $0c
	sbc [hl]
	ld l, [hl]
	inc hl
	ld [hl], e
	inc hl
	ld [hl], e
	ld b, e
	ld [hl], e
	ld b, e
	ld [hl], e
	ld h, e
	sub e
	ld h, e
	sub e
	ld b, e
	ld [hl], e
	ld b, e
	ld [hl], e
	cp $00
	sbc h
	ld l, [hl]
	rst $38
	rst $38
	rst $38

	db $07, $bc, $71, $07, $c0, $71, $07, $c4, $71, $07, $c8, $71, $07, $cc, $71, $07

	rst $18
	ld [hl], c
	rlca
	db $e3
	ld [hl], c
	rlca
	db $ea
	ld [hl], c

	db $07, $ee, $71, $07, $f2, $71, $07, $f6, $71, $07, $fa, $71, $07, $fe, $71, $07

	ld [bc], a
	ld [hl], d
	rlca
	ld b, $72
	rlca
	dec c
	ld [hl], d

	db $07, $14, $72, $07, $18, $72, $07, $1c, $72, $84

	cp l
	ld a, b
	dec b
	call z, $0778
	db $db
	ld a, b
	add h
	call $057a
	ldh [$7a], a
	rlca
	di
	ld a, d
	add h
	ld b, d
	ld a, d
	dec b
	ld d, c
	ld a, d
	rlca
	ld e, a
	ld a, d
	add h
	call c, $0577
	ei
	ld [hl], a
	rlca
	ld a, [de]
	ld a, b

	db $84, $8b, $7b, $05, $aa, $7b, $07, $c9, $7b, $84

	ld l, e
	ld a, c
	dec b
	ld a, [hl]
	ld a, c
	rlca
	sub b
	ld a, c
	add h
	dec d
	ld a, c
	dec b
	cpl
	ld a, c
	rlca
	jr nc, jr_01f_6fb3

	add h
	ld b, e
	ld a, c
	dec b
	ld d, d
	ld a, c
	rlca
	ld h, c
	ld a, c
	add h
	ld e, e
	ld a, e
	dec b
	ld l, [hl]
	ld a, e
	rlca
	add c
	ld a, e
	add h
	ld h, l
	db $76
	dec b
	add d
	db $76
	rlca
	and e
	db $76
	add h
	nop
	ld a, e
	dec b
	rra
	ld a, e
	rlca
	ld b, d
	ld a, e
	add h
	sub c
	ld a, c
	dec b
	cp h
	ld a, c
	rlca
	db $db
	ld a, c
	add h
	db $f4
	ld a, c
	dec b
	dec de
	ld a, d
	rlca
	ld b, c
	ld a, d
	add h
	ld h, b
	ld a, d
	dec b
	ld a, a
	ld a, d
	rlca
	xor [hl]
	ld a, d
	add h
	push hl
	ld a, b
	dec b
	ld hl, sp+$78
	rlca
	dec bc
	ld a, c
	add h
	daa
	ld a, b
	dec b
	ld b, d
	ld a, b
	rlca
	ld e, l
	ld a, b
	add h
	ld l, l
	ld a, b
	dec b
	sub b
	ld a, b
	rlca
	or e
	ld a, b
	add h
	ld c, c
	ld [hl], a
	dec b
	ld l, b
	ld [hl], a
	rlca
	adc e
	ld [hl], a
	add h
	ld h, c
	ld a, h
	dec b
	ld [hl], h
	ld a, h
	rlca
	add a
	ld a, h
	add h
	sub h
	ld a, h
	dec b
	xor a
	ld a, h
	rlca
	jp z, $847c

	db $dd
	ld a, h
	dec b

jr_01f_6fb3:
	db $ec
	ld a, h
	rlca
	ei
	ld a, h
	add h
	ld l, e
	ld a, l
	dec b
	add [hl]
	ld a, l
	rlca
	and c
	ld a, l

	db $84, $fe, $7b, $05, $0d, $7c, $07, $1c, $7c, $84

	or h
	ld a, l
	dec b
	rst $00
	ld a, l
	rlca
	jp c, $847d

	call nz, $057e
	rst $20
	ld a, [hl]
	rlca
	ld a, [bc]
	ld a, a
	add h
	call c, $057b
	db $eb
	ld a, e
	rlca
	db $fd
	ld a, e
	add h
	dec [hl]
	ld a, [hl]
	dec b
	ld d, b
	ld a, [hl]
	rlca
	ld l, e
	ld a, [hl]
	add h
	ld h, $7c
	dec b
	dec a
	ld a, h
	rlca
	ld d, h
	ld a, h

	db $84, $e7, $7d, $05, $0a, $7e, $07, $25, $7e, $84, $7e, $7e, $05, $99, $7e, $07
	db $b4, $7e, $84

	dec b
	ld a, l
	dec b
	jr z, jr_01f_708c

	rlca
	ld c, a
	ld a, l
	add h
	dec e
	ld a, a
	dec b
	jr nc, jr_01f_7097

	rlca
	ld b, e
	ld a, a
	add h
	ld d, b
	ld a, a
	dec b
	ld h, e
	ld a, a
	rlca
	db $76
	ld a, a
	add h
	add e
	ld a, a
	dec b
	and [hl]
	ld a, a
	rlca
	ret z

	ld a, a
	add h
	ret


	ld a, a
	dec b
	call c, $077f
	rst $28
	ld a, a
	add h
	cp h
	db $76
	dec b
	db $d3
	db $76
	rlca
	and $76
	add h
	di
	db $76
	dec b
	ld d, $77
	rlca
	add hl, sp
	ld [hl], a
	add h
	and c
	ld [hl], a
	dec b
	cp b
	ld [hl], a
	rlca
	rst $08
	ld [hl], a

	db $84, $f0, $5a, $05, $07, $5b, $06, $17, $5b, $84

	ret z

	ld h, b
	dec b
	rst $20
	ld h, b
	ld b, $ff
	ld h, b
	inc b
	or d
	ld [hl], d

	db $04, $5f, $73, $04, $81, $73, $07, $82, $72, $04, $0a, $73, $84

	ld a, d
	ld h, b
	dec b
	sub e
	ld h, b
	ld b, $a9
	ld h, b

	db $84, $14, $61, $05, $33, $61, $06, $4f, $61, $04, $6e, $73, $04

	sub [hl]
	ld [hl], e
	inc b
	and l

jr_01f_708c:
	ld [hl], e
	inc b
	call nc, $0473
	rst $20
	ld [hl], e
	inc b
	ld a, [$0473]

jr_01f_7097:
	dec d
	ld [hl], h
	inc b
	inc l
	ld [hl], h
	inc b
	ld b, c
	ld [hl], h
	inc b
	ld e, h
	ld [hl], h
	inc b
	ld [hl], a
	ld [hl], h
	inc b
	add d
	ld [hl], h
	rlca
	adc l
	ld [hl], h
	rlca
	sbc d
	ld [hl], h
	ld b, h
	bit 6, h
	dec b
	ld [c], a
	ld [hl], h
	inc b
	push af
	ld [hl], h
	rlca
	nop
	ld [hl], l
	ld b, h
	add hl, de
	ld [hl], l
	dec b
	jr c, jr_01f_7135

	inc b
	ld d, a
	ld [hl], l
	rlca

Call_01f_70c4:
	adc c
	ld [hl], d
	rlca
	sbc c
	ld [hl], d
	ld b, h
	and b
	ld [hl], d
	dec b
	and a
	ld [hl], d
	ld b, h
	jp $0572


	jp z, $4472

	push de
	ld [hl], d
	dec b
	ldh [$72], a

	db $04, $ef, $72, $07, $fa, $72, $44, $1d, $73, $05, $3c, $73, $07, $74, $75, $07
	db $8d, $75, $07, $91, $75, $07, $95, $75, $07, $9f, $75, $07, $a6, $75, $04

	or [hl]
	ld [hl], l
	inc b
	push bc
	ld [hl], l
	ld b, h
	ret nc

	ld [hl], l
	dec b
	rst $18
	ld [hl], l

	db $04, $ee, $75, $c0, $60, $57, $01, $18, $58, $02, $e3, $58, $03, $8b, $59, $80

	nop
	ld b, b
	ld bc, $4140
	ld [bc], a
	and e
	ld b, d
	add b
	ld c, a
	ld l, [hl]
	ld bc, $6e7a
	ld [bc], a
	sbc h
	ld l, [hl]

	db $80, $59, $61, $01, $a5, $61, $02, $f2, $61, $40

	dec e
	ld l, [hl]
	ld bc, $6e3a

jr_01f_7135:
	ret nz

	ld e, e
	ld c, [hl]
	ld bc, $4f0c
	ld [bc], a
	or h
	ld c, a
	inc bc
	ld [$8051], sp
	cp c
	ld l, h
	ld bc, $6d3c
	ld [bc], a
	sbc d
	ld l, l
	add b
	xor e
	ld d, h
	ld bc, $557f
	ld [bc], a
	dec hl
	ld d, [hl]

	db $c0, $e4, $6a, $01, $5c, $6b, $02, $bd, $6b, $03, $fb, $6b, $c0

	ld [hl], c
	ld d, c
	ld bc, $527e
	ld [bc], a
	ld a, h
	ld d, e
	inc bc
	ld a, [hli]
	ld d, h

	db $c0, $27, $5b, $01, $78, $5b, $02, $db, $5b, $03, $7c, $5c, $c0

	sub c
	ld e, h
	ld bc, $5e08
	ld [bc], a
	ld a, [de]
	ld e, a
	inc bc
	add h
	ld e, a
	ret nz

	xor a
	ld e, a
	ld bc, $5fe0
	ld [bc], a
	ld e, $60
	inc bc
	ld d, b
	ld h, b
	add b
	ld [$0162], a
	add e
	ld h, e
	ld [bc], a
	ld a, [hld]
	ld h, h
	add b
	db $e3
	ld h, h
	ld bc, $66a9
	ld [bc], a
	ld e, [hl]
	ld l, b
	add b
	dec a
	ld l, c
	ld bc, $695a
	ld [bc], a
	add [hl]

jr_01f_71a9:
	ld l, c
	add b
	sbc c
	ld l, c
	ld bc, $69bc
	ld [bc], a
	db $eb
	ld l, c

	db $80, $1b, $6a, $01, $42, $6a, $02, $72, $6a, $20, $c1, $33, $ff, $20, $b1, $33
	db $ff, $20, $a1, $33, $ff, $20, $81, $33, $ff, $27, $84, $37, $26, $84, $36, $25
	db $83, $35, $24, $83, $34, $23, $82, $33, $22, $81, $32, $ff

	jr nz, @+$53

	ld a, [hli]
	rst $38
	ld hl, $2b41
	jr nz, @+$63

	ld a, [hli]
	rst $38
	jr nz, @-$7d

	db $10
	rst $38

	db $20, $82, $23, $ff, $20, $82, $25, $ff, $20, $82, $26, $ff, $20, $a1, $10, $ff
	db $20, $a2, $11, $ff

	jr nz, @-$5c

	ld d, b
	rst $38
	jr nz, jr_01f_71a9

	jr jr_01f_722a

	ld sp, $ff33
	ld [hli], a
	sub c
	jr z, jr_01f_7231

	ld [hl], c
	jr @+$01

	db $20, $91, $22, $ff, $20, $71, $22, $ff, $20, $61, $22, $ff, $32, $72, $42, $72

	ld d, d
	ld [hl], d

	db $62, $72

	ld [hl], d
	ld [hl], d

jr_01f_722a:
	add d
	ld [hl], d
	add d
	ld [hl], d
	add d
	ld [hl], d
	add d

jr_01f_7231:
	ld [hl], d

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

jr_01f_7260:
	sub [hl]
	db $31

	db $02, $46, $8a, $cd, $ef, $fe, $de, $ff, $ee, $dc, $ba, $98, $76, $54, $32, $10

	ld bc, $4523
	ld h, a
	adc d
	call $f7ee
	ld a, a
	xor $dc
	xor b
	db $76
	ld d, h
	ld [hld], a
	db $10

	db $21, $e2, $33, $28, $e1, $22, $ff

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
	add hl, hl
	pop af
	ld b, h
	jr z, @-$2d

	ld b, e
	rst $38

jr_01f_72a0:
	db $ec
	ld [bc], a
	jr z, @-$1d

	ld b, b
	rlca
	rst $38
	db $ec
	ld [bc], a
	ld [hli], a
	ld [$0000], sp
	jr z, jr_01f_7260

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
	jr z, jr_01f_72a0

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

jr_01f_72cf:
	nop
	inc h
	and c
	ld h, c
	rlca
	rst $38
	db $ec
	ld [bc], a
	inc h
	pop hl
	nop
	rlca
	jr z, jr_01f_72cf

	ldh [rTAC], a
	rst $38
	db $ec
	ld [bc], a
	ld hl, $0008
	nop
	inc h
	sub c
	pop bc
	ld b, $28
	and d
	and c
	rlca
	rst $38

	db $ec, $02, $10, $5a, $2f, $f1, $00, $03, $10, $08, $ff, $22, $f1, $54, $2c, $71
	db $23, $22, $b1, $54, $2c, $61, $23, $26, $41, $54, $ff, $ec, $02, $20, $91, $c0
	db $07, $20, $81, $d0, $07, $20, $91, $c0, $07, $2c, $a1, $d0, $07, $ff, $ec, $02
	db $22, $f4, $00, $07, $22, $e4, $00, $06, $22, $e4, $80, $06, $22, $e4, $c0, $06
	db $22, $e4, $00, $07, $22, $e4, $c0, $07, $2f, $f2, $e0, $07, $ff, $ec, $02, $22
	db $08, $00, $00, $22, $d4, $01, $07, $22, $c4, $01, $06, $22, $c4, $81, $06, $22
	db $c4, $c1, $06, $22, $c4, $01, $07, $22, $c4, $c1, $07, $2f, $d2, $e1, $07, $ff
	db $ec, $02, $10, $17, $2f, $f0, $f0, $04, $2f, $f2, $50, $06, $10, $08, $ff, $ec
	db $00, $10, $14, $24, $f2, $00, $06, $fe, $04, $6e, $73, $2f, $f3, $00, $06, $10
	db $08, $ff, $ec, $02, $10, $14, $24, $f2, $00, $06, $24, $f2, $00, $06, $10, $17
	db $2f, $f3, $00, $06, $10, $08, $ff

	db $ec
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
	ld [$ecff], sp
	ld [bc], a
	cpl
	ld a, [c]
	ret nz

	rlca
	cpl
	nop
	nop
	nop
	cpl
	nop
	nop
	nop
	inc hl
	add c
	add b
	rlca
	inc hl
	add c
	nop
	rlca
	inc hl
	add c
	ld b, b
	rlca
	inc hl
	add c
	nop
	rlca

Call_01f_73c3:
	inc hl
	add c
	add b

Call_01f_73c6:
	rlca

Call_01f_73c7:
	inc hl
	add c
	nop
	rlca
	inc hl
	add c
	ret nz

	rlca
	inc hl
	add c
	nop
	rlca
	rst $38
	db $ec
	ld [bc], a
	inc h
	ldh a, [rP1]
	ld b, $24
	ldh a, [rP1]
	inc b
	inc h
	ldh a, [rP1]
	ld [bc], a
	ld hl, $0000
	nop
	rst $38
	db $ec
	ld [bc], a
	inc h
	ldh a, [rP1]
	rlca
	inc h
	nop
	nop
	nop
	inc h
	ldh a, [rP1]
	rlca
	ld hl, $0000
	nop
	rst $38
	db $ec
	ld bc, $1710
	cpl
	rst $10
	nop
	ld b, $2f
	or a
	add b
	dec b
	cpl
	add a
	nop
	dec b
	cpl
	ld b, a
	add b
	inc b
	cpl
	rla
	nop
	inc b
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
	db $ec
	ld [bc], a
	db $10
	inc l
	inc h
	ld a, [c]
	nop
	dec b
	db $10
	ld [hli], a
	ld [hli], a
	pop af
	nop
	dec b
	db $10
	ld [$0021], sp
	nop
	nop
	rst $38
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
	ld [$ecff], sp
	ld [bc], a
	db $10
	sub l
	cpl
	ld a, [c]
	nop
	inc b
	db $10
	ld [$22ff], sp
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

jr_01f_74f6:
	nop
	db $10
	rla
	cpl
	jp nc, $0700

	db $10
	ld [$24ff], sp
	and d
	inc hl
	jr z, jr_01f_74f6

	inc [hl]
	cpl
	nop

jr_01f_7508:
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
	jr z, jr_01f_7508

	ld d, l
	jr z, jr_01f_7508

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

jr_01f_754e:
	cpl
	ldh a, [$82]
	inc b
	cpl
	ld a, [c]
	add d
	inc b
	rst $38
	db $ec
	ld bc, $3a10
	inc h
	ld a, [c]
	nop
	dec b
	db $10
	ld [hli], a
	inc h
	ld [c], a
	nop
	dec b
	db $10
	ld a, [hld]
	inc h
	ld a, [c]
	nop
	rlca
	db $10
	ld [hli], a
	cpl
	ld [c], a
	nop
	rlca
	db $10
	db $08
	rst $38

	db $26, $20, $10, $26, $2f, $40, $26, $4f, $41, $26, $8f, $41, $26, $cf, $42, $28
	db $d7, $42, $2f, $e7, $43, $2f, $f2, $43, $ff, $24, $d1, $41, $ff, $24, $c1, $42
	db $ff, $22, $6f, $21, $22, $af, $31, $2f, $f2, $41, $ff, $22, $d2, $32, $2f, $f2
	db $43

	rst $38

	db $28, $3c, $20, $26, $a0, $20, $28, $b0, $21, $2a, $c0, $22, $2f, $d2, $23, $ff

Call_01f_75b6:
	db $ec

Call_01f_75b7:
	ld [bc], a
	ld hl, $a0f2
	ld b, $21
	ld a, [c]
	ldh [rTMA], a
	jr z, @-$0d

	nop
	rlca
	rst $38
	db $ec
	ld [bc], a

Call_01f_75c7:
	ld [hli], a
	pop af
	nop
	rlca
	jr z, jr_01f_754e

	ldh [rTAC], a
	rst $38
	db $ec
	inc bc
	dec h
	pop hl
	nop
	rlca
	ld [hli], a
	pop hl
	add b
	rlca
	cpl
	pop af
	ret nz

	rlca
	rst $38
	db $ec
	ld [bc], a
	inc h
	pop bc
	pop bc
	ld b, $22
	pop bc
	ld b, c
	rlca
	cpl
	pop de
	add c
	rlca
	rst $38

	db $ec, $02, $10, $5f, $24, $40, $e0, $07, $24, $60, $e0, $07, $24, $80, $e0, $07
	db $28, $a0, $e0, $07, $28, $a0, $e0, $07, $28, $80, $e0, $07, $28, $60, $e0, $07
	db $28, $30, $e0, $07, $2f, $12, $e0, $07, $10, $08, $ff

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
	jr z, jr_01f_767d

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

jr_01f_766a:
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

jr_01f_767b:
	rst $10
	rlca

jr_01f_767d:
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

jr_01f_76b2:
	jr z, jr_01f_766a

	inc a
	ld h, $d4
	dec a
	jr z, jr_01f_767b

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
	jr z, jr_01f_76b2

	inc l
	rst $38
	db $fc
	ldh a, [$2f]
	rst $30
	add b
	ld b, $2a

jr_01f_76fa:
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

jr_01f_7716:
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

	jr z, jr_01f_7716

	jr nc, jr_01f_776e

	rst $38
	db $fc
	ld a, [bc]
	inc h

jr_01f_776b:
	ld [$0000], sp

jr_01f_776e:
	ld h, $a7
	ld b, c
	rlca
	jr z, jr_01f_76fa

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

Call_01f_7790:
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

jr_01f_77a7:
	cpl
	db $e3
	jr nc, jr_01f_77b2

	inc h
	db $f4
	ld b, b
	rlca
	dec h
	or e
	ld c, b

jr_01f_77b2:
	rlca
	jr z, @-$2d

	ld d, b
	rlca

Call_01f_77b7:
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
	jr z, jr_01f_77a7

	inc l
	inc l
	add $3c
	ld a, [hli]
	or [hl]
	inc l

jr_01f_77d8:
	jr z, jr_01f_776b

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
	jr z, jr_01f_77d8

	add d
	inc b
	rst $38
	inc l
	db $e4
	ld c, h
	ld a, [hli]
	rst $00

jr_01f_781f:
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

jr_01f_785a:
	ld [bc], a
	ld b, $ff
	inc hl
	db $e4
	inc a
	inc l
	sub $2c
	inc h

jr_01f_7864:
	db $e4
	inc a
	jr z, jr_01f_781f

jr_01f_7868:
	ld e, h
	cpl
	jp nz, $ff5d

	db $fc
	ret


	jr z, jr_01f_7868

	add b
	ld b, $22
	rst $30
	ld h, b
	ld b, $21
	rst $20
	ld b, b
	ld b, $21
	rst $20
	jr nz, jr_01f_7885

	cpl
	pop de
	nop
	ld b, $24
	rst $00

jr_01f_7885:
	ld b, b
	rlca
	inc h
	and a
	jr nc, jr_01f_7892

	cpl
	sub c
	jr nz, @+$09

	rst $38
	db $fc
	ld a, c

jr_01f_7892:
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
	jr jr_01f_78ca

	cpl
	push hl
	sbc b
	rlca
	jr z, jr_01f_785a

	ld e, b

jr_01f_78ca:
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

jr_01f_78d6:
	jr z, jr_01f_7949

	ld c, b
	rlca
	rst $38
	inc hl
	and c
	inc e
	ld l, $94
	inc l
	jr z, jr_01f_7864

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
	jr z, jr_01f_78d6

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

jr_01f_790f:
	ld h, c
	ld hl, $6128
	ld de, $fcff
	ld a, [$8326]
	ld b, a

jr_01f_791a:
	ld [bc], a
	cpl

jr_01f_791c:
	ld h, d
	ld h, $02

jr_01f_791f:
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
	jr z, jr_01f_791f

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

jr_01f_7949:
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
	jr z, jr_01f_791a

	ld e, h

jr_01f_796a:
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
	jr z, jr_01f_791c

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
	jr z, jr_01f_790f

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

jr_01f_79a9:
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
	jr z, jr_01f_796a

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

jr_01f_79d0:
	ld b, c
	rlca
	inc h
	pop af
	add d
	rlca
	jr z, jr_01f_79a9

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
	jr nz, jr_01f_7a10

	ld [hli], a
	or d
	db $10
	ld b, $22
	and d

jr_01f_7a10:
	jr jr_01f_7a18

	ld [hli], a
	or d
	db $10
	ld b, $28
	pop bc

jr_01f_7a18:
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

jr_01f_7a3b:
	reti


	dec b
	jr z, jr_01f_79d0

	pop hl
	dec b
	rst $38
	db $ec
	nop
	jr z, jr_01f_7a3b

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

jr_01f_7a78:
	jr nz, jr_01f_7a80

	cp $02
	ld h, b
	ld a, d
	rst $38
	db $fc

jr_01f_7a80:
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

jr_01f_7aae:
	ld h, $d2
	inc e
	add hl, hl
	or c
	inc l
	jr z, jr_01f_7a78

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

jr_01f_7ace:
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
	jr nz, jr_01f_7ae2

	jr z, jr_01f_7aae

	db $10
	rlca
	rst $38
	db $fc
	ld e, d

jr_01f_7ae2:
	dec h
	or e
	pop af
	ld b, $27
	push bc
	ld d, d
	rlca

jr_01f_7aea:
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
	jr z, jr_01f_7b6f

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
	jr z, jr_01f_7ace

	and c
	ld b, $26
	add [hl]

jr_01f_7b2b:
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
	jr z, jr_01f_7b2b

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
	jr z, jr_01f_7aea

	inc a
	rst $38
	db $fc
	ldh a, [$2f]
	or $65
	dec b
	ld a, [hli]
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

jr_01f_7b6f:
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

Call_01f_7b87:
	cpl
	jp nz, $ff4c

	db $fc, $f0, $24, $f7, $a0, $06, $28, $e6, $a4, $06, $24, $d6, $a0, $06, $2c, $d3
	db $20, $06, $28, $c3, $24, $06, $24, $c2, $20, $06, $28, $b1, $10, $06, $ff, $fc
	db $5a, $24, $e7, $01, $06, $28, $d6, $03, $06, $24, $c6, $01, $06, $2c, $c3, $81
	db $05, $28, $b3, $83, $05, $24, $b2, $82, $05, $28, $a1, $71, $05, $ff, $27, $d6
	db $5c, $28, $e6, $4c, $24, $d4, $5c, $24, $d4, $4c, $27, $c3, $4c, $28, $a1, $5c
	db $ff

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
	jr nc, jr_01f_7bf1

	rst $38
	db $fc
	add c
	ld [hli], a
	jp nz, $0701

jr_01f_7bf1:
	inc h
	jp nz, $0708

	cpl
	rst $10
	ld b, c
	rlca
	cpl
	and d
	ld bc, $ff07

	db $fc, $f0, $2f, $d7, $80, $07, $24, $e6, $a0, $07, $2f, $d2, $40, $07, $ff, $fc
	db $5a, $2f, $c7, $53, $07, $25, $b6, $72, $07, $2f, $c2, $11, $07, $ff, $2d, $f6
	db $4c, $24, $e6, $3c, $2f, $f2, $4c, $ff

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

jr_01f_7c35:
	db $e4
	ldh [rTMA], a
	jr z, @-$2d

	ret nc

	ld b, $ff
	db $fc
	ld a, [bc]
	daa
	and $81

jr_01f_7c42:
	ld b, $2e
	push de
	pop bc
	ld b, $24
	call nz, $06b1
	inc h
	call nc, $06a1
	jr z, @-$3d

jr_01f_7c51:
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

jr_01f_7c5d:
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

	jr z, jr_01f_7c42

	add b
	inc b
	rst $38
	db $fc
	xor $2b
	jp nc, $0438

	ld l, $c6

jr_01f_7c7c:
	sbc b
	inc b
	inc hl

jr_01f_7c7f:
	or d
	adc b
	inc b
	jr z, jr_01f_7c35

	ld a, b
	inc b
	rst $38
	ld a, [hli]
	and $6c
	cpl

jr_01f_7c8b:
	jp nc, $235c

	jp nz, $286c

	pop de
	ld e, h
	rst $38
	db $fc
	inc sp
	cpl
	or $c0

jr_01f_7c99:
	dec b
	jr z, jr_01f_7c7f

	cp h
	dec b
	ld h, $d2
	ret nc

	dec b
	ld h, $b2
	ldh [rTIMA], a
	ld h, $c2
	ldh a, [rTIMA]
	jr z, jr_01f_7c5d

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

jr_01f_7cba:
	or d
	pop bc
	inc b
	jr z, jr_01f_7c51

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

jr_01f_7ccd:
	ld a, [hli]
	sub $6c
	inc h
	jp nz, $264c

jr_01f_7cd4:
	db $d3
	ld e, h
	jr z, jr_01f_7c8b

	ld c, h
	jr z, jr_01f_7c7c

	ld e, h
	rst $38
	db $fc
	ldh a, [$28]
	db $e4

jr_01f_7ce1:
	sub b
	rlca
	cpl
	push af
	ret nz

	rlca
	jr z, jr_01f_7cba

	ret c

jr_01f_7cea:
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
	jr z, jr_01f_7c99

	or a
	rlca
	rst $38
	jr z, jr_01f_7ce1

	ld c, h
	ld l, $c4
	inc a
	jr z, jr_01f_7cd4

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

jr_01f_7d44:
	ld bc, $2607
	and d
	ld b, d
	rlca

jr_01f_7d4a:
	jr z, jr_01f_7ccd

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

jr_01f_7d63:
	dec de
	dec h
	sub d
	ld a, [de]
	jr z, jr_01f_7cea

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
	jr z, jr_01f_7d4a

	db $10
	rlca
	inc h
	jp nz, $0700

	inc h
	jp nc, $06f0

	jr z, jr_01f_7d44

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
	jr z, jr_01f_7d63

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

	db $fc, $f5, $27, $d6, $e1, $07, $26, $c6, $e2, $07, $29, $d6, $e1, $07, $27, $c6
	db $e0, $07, $25, $b6, $e2, $07, $27, $c6, $e1, $07, $26, $b6, $e0, $07, $28, $a1
	db $df, $07, $ff, $fc, $44, $26, $c3, $c9, $07, $26, $b3, $c7, $07, $2a, $c4, $c3
	db $07, $28, $b4, $c7, $07, $26, $c3, $c9, $07, $2f, $a2, $c5, $07, $ff, $2d, $19
	db $7c, $2d, $f7, $8c, $2c, $d6, $7c, $28, $c4, $6c, $2f, $b3, $5c, $ff

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


	jr z, @-$2d

jr_01f_7e4d:
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
	jr z, @-$6d

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
	jr z, jr_01f_7e4d

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

jr_01f_7eee:
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

jr_01f_7eff:
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


jr_01f_7f11:
	call nc, $243c
	call nz, $262c
	or h
	inc a
	jr z, @-$3d

	inc l
	rst $38

jr_01f_7f1d:
	db $fc
	and l
	inc hl
	db $f4
	ld b, c
	ld b, $2d
	sub $21
	rlca
	jr z, jr_01f_7f1d

	add hl, de
	rlca
	jr z, jr_01f_7eee

	ld a, [de]
	rlca
	rst $38
	db $fc
	call z, $f424

jr_01f_7f34:
	add b
	dec b
	ld l, $e6
	ldh [rTMA], a
	jr z, jr_01f_7f11

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
	jr z, jr_01f_7eff

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

jr_01f_7f68:
	dec b
	inc l

jr_01f_7f6a:
	pop de
	db $10
	dec b
	ld l, $c1
	inc c
	dec b
	jr z, jr_01f_7f34

	ld a, [bc]

jr_01f_7f74:
	dec b
	rst $38
	ld l, $f2
	ld h, l
	dec l
	ld [c], a

jr_01f_7f7b:
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

jr_01f_7f87:
	ld h, h
	dec b
	ld [hli], a
	ld [c], a

jr_01f_7f8b:
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
	jr z, jr_01f_7f68

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
	jr z, jr_01f_7f74

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
	jr z, jr_01f_7f7b

	and b
	inc b
	inc hl
	db $d3
	jr nz, @+$07

	inc hl
	call nz, $04e0
	jr z, jr_01f_7f87

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

	jr z, jr_01f_7f6a

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
	jr z, jr_01f_7f8b

	ld c, c
	rst $38
	ld a, [bc]
	add e
	nop
	nop
