; Disassembly of "pokemon-red-jp.gb"

SECTION "ROM Bank $007", ROMX[$4000], BANK[$7]

	ld b, $03
	inc bc
	rlca
	ld de, $1415
	db $10
	ld [$0500], sp
	add hl, bc
	ld c, $0f
	inc c
	dec c

	db $65, $66, $67, $68, $68, $6b, $6b, $05, $69, $6a, $05, $05, $05, $6d, $6e, $68
	db $68, $05, $68, $68, $05, $05, $05, $05, $05, $05, $05, $04, $05, $05

	inc b
	ld c, $05
	add hl, bc
	rrca
	ld bc, $0f02
	rrca
	inc c
	dec c
	rrca
	ld b, $0b
	rrca
	rlca
	dec b
	ld [de], a
	inc de
	add hl, bc
	rrca
	inc d
	dec d
	rrca
	rrca
	jr jr_007_4062

	rrca
	ld b, $0b
	rrca
	rlca
	ld a, [de]

Jump_007_404f:
	rra
	ld d, $17
	ld e, $1c
	dec e
	dec de
	rrca
	jr nz, jr_007_407a

	rrca
	ld b, $0b
	dec de
	ld [hli], a
	ld a, l
	ld a, l
	ld a, l
	ld a, l

jr_007_4062:
	ld b, $01
	ld bc, $067d
	ld bc, $7d27
	ld a, [bc]
	inc h
	inc b
	ld a, l
	nop
	add hl, bc
	ld a, [bc]
	rst $10
	ld b, b
	inc [hl]
	ld b, e
	call z, $0942
	jr nz, jr_007_40ab

jr_007_407a:
	ld d, d
	db $eb
	add $0a
	ld a, [bc]
	ld e, c
	nop
	cp c
	ret


	rra
	ld a, l
	ld b, c
	dec h
	rst $00
	add hl, bc
	ld [hld], a
	nop
	nop
	ld hl, $90c7
	ld b, b
	ld b, e
	dec b
	inc bc
	ld b, $01
	and l
	inc bc
	ld [de], a
	nop
	and [hl]
	add hl, bc
	ld b, $00
	and a
	dec bc
	dec bc
	nop
	xor e
	dec bc
	rrca
	nop
	xor h
	dec b
	dec b
	add hl, bc
	inc bc
	dec bc

jr_007_40ab:
	db $10
	inc b
	dec bc
	inc c
	dec b
	dec bc
	add hl, bc
	ld b, $03
	dec c
	rlca
	ld [bc], a
	dec c
	add hl, bc
	db $10
	cp $02
	ld bc, $0a0b
	ld [de], a
	rst $38
	rst $38
	ld [bc], a
	inc c
	rst $00
	inc bc
	ld b, $12
	rst $00
	inc bc
	ld [de], a
	inc a
	rst $00
	add hl, bc
	ld b, $4e
	rst $00
	dec bc
	dec bc
	ld d, b
	rst $00
	dec bc
	rrca
	jr @+$66

	jr nz, jr_007_40e8

	ld hl, $7b7b
	inc c
	dec c
	ld c, $18
	ld h, h
	scf
	ld a, [hld]
	ld a, [hl]
	ld a, e
	ld a, c

jr_007_40e8:
	db $10
	ld de, $1812
	ld h, h
	ld a, e
	ld a, e
	ld a, c
	ld a, e
	ld a, e
	ld a, e
	ld a, e
	ld a, e
	jr @+$66

	jr nz, jr_007_4106

	ld hl, $7b7b
	ld a, e
	ld a, e
	ld a, e
	jr @+$66

	scf
	ld a, [hld]
	ld a, [hl]
	jr nz, jr_007_4127

jr_007_4106:
	jr nz, jr_007_4129

	ld a, e
	jr @+$66

	ld a, e
	ld a, e
	ld a, c
	ld a, h
	ld [hl], d
	ld a, h
	ld [hl], e
	ld a, e
	jr @+$2f

	ld e, $7b
	ld a, e
	ld a, e
	ld a, e
	ld a, e
	ld a, e
	ld a, e
	jr @+$45

	dec l
	rra
	rra
	rra
	rra
	rra
	rra
	rra

jr_007_4127:
	inc d
	ld l, e

jr_007_4129:
	ld l, e
	ld l, e
	ld l, e
	ld l, e
	ld l, e
	ld l, e
	ld l, e
	ld l, e

	db $00, $12, $0a, $6a, $41, $06, $44, $03, $44, $0c, $01, $1a, $45, $e8, $c6, $10
	db $14, $23, $0a, $bd, $c8, $00, $fd, $42, $3b, $c8, $0a, $0a, $00, $00, $f9, $c6
	db $53, $41, $0b, $00, $01, $1b, $09, $03, $02, $04, $1c, $09, $fe, $01, $01, $04
	db $11, $13, $fe, $02, $02

	ld [de], a
	rst $00
	rlca
	ld [bc], a

	db $0a, $4d, $52, $52, $4f, $31, $50, $52, $52, $4e, $0a, $4d, $0a, $0a, $0a, $31
	db $0a, $0a, $74, $4e, $0a, $4d, $07, $07, $42, $1a, $1a, $31, $31, $4e, $0a, $6e
	db $74, $74, $6e, $0b, $0b, $0b, $0b, $6d, $0a, $6e, $07, $07, $42, $0b, $0b, $0b
	db $0b, $6d, $0a, $6e, $0a, $74, $74, $0a, $31, $31, $31, $6d, $0a, $6e, $6f, $07
	db $07, $6f, $1c, $0b, $0b, $6d, $0a, $4d, $0a, $0a, $74, $74, $31, $0b, $0b, $4e
	db $0a, $4d, $0a, $31, $31, $31, $31, $74, $74, $4e, $0a, $4d, $2f, $1a, $2f, $07
	db $07, $07, $07, $4e, $0a, $4d, $0a, $31, $31, $31, $31, $31, $31, $4e, $0a, $4d
	db $6f, $6f, $6f, $6f, $0b, $0b, $1a, $4e, $0a, $4d, $0a, $0a, $74, $74, $0b, $0b
	db $31, $4e, $0a, $4d, $1a, $31, $08, $1a, $1a, $1a, $1a, $4e, $0a, $6e, $0a, $0b
	db $0b, $31, $0a, $0b, $0b, $6d, $0a, $6e, $0b, $0b, $74, $31, $0b, $0b, $74, $6d
	db $0a, $6e, $51, $51, $63, $0b, $62, $51, $51, $6d, $0a, $6e, $0a, $0a, $4d, $0b
	db $4e, $0a, $0a, $6d

	call $03bf
	call $3e1d
	call $36ca
	call $36ea
	ld hl, $4255
	call $3c79
	ld hl, wc43a
	ld bc, $080f
	ld a, $07
	ld [wd0f1], a
	ld a, $14
	ld [wd0ea], a
	call $3130
	ld a, [wcc26]
	and a
	jp z, $09da

	ld b, $1c
	ld hl, $7fc6
	call $3620
	jp $09da


	nop
	cp l
	dec a
	jp Jump_007_7fc9


	adc l
	db $e3
	dec de
	ld [de], a
	db $e3
	adc a
	add e
	ret c

	add b
	db $dd
	ld c, a
	add a
	ret c

	add b
	ld a, a
	cp h
	rst $08
	cp l
	or [hl]
	and $57
	ld hl, $42be
	call $3c79
	ld hl, wcf62
	ld a, l
	ld [wcf72], a
	ld a, h
	ld [wcf73], a
	ld a, [wcc36]
	push af
	xor a
	ld [wcc26], a
	ld [wcc36], a
	ld [wcf7a], a
	ld a, $04
	ld [wcf7b], a
	call $16f7
	pop bc
	ld a, b
	ld [wcc36], a
	ret c

	ld hl, wd0eb
	set 7, [hl]
	ld hl, wcc5b
	ld a, [wcf79]
	add a
	ld d, $00
	ld e, a
	add hl, de
	ld a, [hli]
	ld b, a
	ld a, [hl]
	ld c, a
	ld hl, wd32e
	call Call_007_42b7

Call_007_42b7:
	inc hl
	inc hl
	ld a, b
	ld [hli], a
	ld a, c
	ld [hli], a
	ret


	nop
	push bc
	sbc $b6
	or d
	call $b27f
	or a
	rst $08
	cp l
	or [hl]
	and $57
	call $3c6c
	ld hl, wd0eb
	set 5, [hl]
	ld hl, wd715
	res 0, [hl]
	ld hl, wd722
	res 1, [hl]
	ld hl, $42e7
	ld a, [wd5b8]
	jp $3dc7


	db $eb
	ld b, d
	ld h, $43
	ld b, $2b
	call $34dd
	ret nz

	ld a, [wd2e0]
	cp $04
	ret nz

	ld a, [wd2e1]
	cp $12
	ret nz

	ld a, $08
	ld [wd4a7], a
	ld a, $08
	ldh [$8c], a
	call $13f1
	xor a
	ldh [$b4], a
	ld a, $01
	ld [wcd38], a
	ld a, $80
	ld [wccd3], a
	call $34d0
	xor a
	ld [wc109], a
	ld [wcd66], a
	ld a, $01
	ld [wd5b8], a
	ret


	ld a, [wcd38]
	and a
	ret nz

	call $3e07
	ld a, $00
	ld [wd5b8], a
	ret


	ld e, b
	ld b, e
	adc b
	ld b, e
	or c
	ld b, e
	sub [hl]
	rrca
	xor a
	rrca
	pop de
	ld b, e
	ldh [rSCX], a
	ld b, h
	ld b, e
	nop
	inc de
	add b
	add $ca
	ld c, a
	add l
	ld b, $26
	ld a, a
	or [hl]
	or [hl]
	rst $18
	jp $b27f


	ret nz

	ld d, [hl]
	rst $20
	ld d, a
	nop
	rlca
	and a
	xor e
	ld a, a
	dec bc
	sbc a
	ret


	ld a, a
	add l
	sub c
	and l
	jp z, $b94f

	sbc $b7
	pop hl
	or e
	inc l
	ld [c], a
	ld h, $7f
	inc sp
	or a
	reti


	ld a, a
	rst $08
	or h
	or [hl]
	rst $10
	ld d, l
	cp l
	sbc $33
	jp wcd7f


	sbc $2c
	sbc $7f
	push bc
	sbc $30
	rst $18
	jp $0057


	ld d, h
	ld a, a
	call nc, $b7bc
	jp z, $b94f

	sbc $b7
	pop hl
	or e
	ret


	ld a, a
	ret nz

	jp nc, $b67f

	ld h, $b8
	cp h
	ldh [rNR52], a
	ld d, l
	ret nz

	rst $08
	add $7f
	inc sp
	or d
	ret c

	ld a, a
	cp h
	call nz, Call_007_7fd9
	sub $b3
	jr nc, jr_007_4408

	nop
	cp d
	cp d
	jp z, $077f

	and a
	xor e
	ld a, a
	adc a
	add d
	xor e
	ld c, a
	rlca
	and a
	xor e
	ret


	ld a, a
	or c
	or [hl]
	jp z, $2c7f

	ld [c], a
	or e
	ret z

	jp nz, Jump_007_7fc9

	or d
	db $db
	ld d, a
	nop
	cp d
	cp d
	jp z, $547f

	ld a, a
	cp c
	sbc $b7
	pop hl
	or e
	inc l
	ld [c], a
	ld d, a
	nop
	rlca
	and a
	xor e
	ld a, a
	inc l
	rst $08
	ld a, a
	ld d, h
	ld a, a
	dec bc
	sbc a
	ld c, a
	ret c

	db $e3
	rrca
	db $e3
	ld a, a
	add l
	sub c
	and l
	ld d, l
	ret z

	rst $18
	cp c
	jp nz, $877f

	add c
	inc c
	ld a, a
	or l
	call nc, Call_007_572c

	jp $3c6c


	inc c
	ld b, h

jr_007_4408:
	sbc $44
	ld hl, $0845
	ld hl, wd73e
	bit 0, [hl]
	set 0, [hl]
	jr nz, jr_007_442e

	ld hl, $4437
	call $3c79
	ld bc, $1401
	call $3e5e
	jr nc, jr_007_4429

	ld hl, $4491
	jr jr_007_4431

jr_007_4429:
	ld hl, $44d1
	jr jr_007_4431

jr_007_442e:
	ld hl, $44a6

jr_007_4431:
	call $3c79
	jp $0f6a


	nop
	call c, $bcc0
	ld a, a
	sbc e
	and a
	xor e
	inc de
	ret c

	or b
	ld a, a
	adc e
	xor a
	xor h
	ld b, d
	ret


	ld c, a
	jp $b2de


	sbc $7f
	inc sp
	cp l
	ld d, c
	dec a
	sbc $d8
	push bc
	ld a, a
	inc [hl]
	or e
	jr z, jr_007_442e

	ld a, a
	inc sp
	cp l
	or [hl]
	rst $10
	ld c, a
	sub e
	add [hl]

jr_007_4462:
	xor c
	ld a, a
	adc e
	sub d
	or b
	inc sp
	ld d, l
	ld l, $cb
	ld a, a
	sub $df
	jp $b87f


	jr nc, jr_007_442e

	or d
	ret z

	rst $20
	ld d, c
	cp a
	or e
	jr nc, jr_007_4462

	ld c, a
	ret nc

	adc $de
	db $dd
	ld a, a
	cp e
	cp h
	or c
	add hl, hl
	rst $08
	cp h
	ld [c], a
	or e

jr_007_4489:
	ld d, l
	ld d, [hl]
	ld a, a
	inc [hl]
	or e
	cpl
	rst $20
	ld e, b
	nop
	ld d, d
	jp z, $704f

	ld d, b
	ld bc, wcf45
	nop
	ld [hl], c
	db $dd
	ld a, a
	db $d3
	rst $10
	rst $18
	ret nz

	rst $20
	ld d, b
	dec bc
	ld d, b
	nop
	ld d, h
	db $dd
	ld a, a
	jp nz, wcfb6

	or h
	reti


	ld c, a
	and c
	xor e
	adc h
	adc a
	db $e3
	inc e
	db $e3
	and [hl]
	ld a, a
	or [hl]
	or e
	ld a, a
	call nz, wd3b7
	ld d, l
	adc e
	xor a
	xor h

jr_007_44c3:
	ld b, d

jr_007_44c4:
	call $b27f

jr_007_44c7:
	rst $10
	cp h
	jp $b87f


	jr nc, jr_007_4489

	or d
	rst $20
	ld d, a
	nop
	add $d3
	jp nz, $7f26

	or d
	rst $18
	ld b, h
	or d
	jr nc, jr_007_44c4

	ld d, a
	nop

Call_007_44df:
	ret nc

	pop bc
	add $7f
	jr nc, jr_007_44c3

	cp e
	ld h, $7f
	or c
	reti


	jr nc, jr_007_44c7

	rst $20
	ld d, c
	call nz, Call_007_7f3b
	or l
	ret c

	reti


	ret


	jp z, wc14f

	ld [c], a
	rst $18
	call nz, $ba7f
	call c, $b9b2
	inc [hl]
	ld d, [hl]
	ld d, c
	sbc l
	adc d
	and l
	ld a, a
	adc a
	add d
	xor e
	add $7f
	or [hl]
	or h
	reti


	ld a, a
	call nz, wcab7
	ld c, a
	jp z, $b8d4

	ld a, a
	or [hl]
	or h
	jp c, Jump_007_7fc3

	or d
	or d
	sub $57
	nop
	cp d
	cp d
	jp z, $f77f

	ld a, [hld]
	sbc $7f
	inc [hl]
	or e
	db $db
	ld c, a
	sbc l
	adc d
	and l
	ld a, a
	adc a
	add d
	xor e
	ld a, a
	ld d, [hl]
	ld a, a
	sub e
	add [hl]
	xor c
	ld a, a
	adc e
	sub d
	or b
	ld d, a

	db $05, $06, $05, $10, $40, $c0, $4a, $4c, $45, $00, $a6, $55

	ld a, [wd6ca]
	bit 6, a
	call nz, Call_007_4ab4
	ld a, $01
	ld [wcf07], a
	xor a
	ld [wcc3c], a
	ld hl, $4566
	ld a, [wd56f]
	jp $3dc7


	db $8c, $45, $ac, $45, $c0, $45, $e0, $45, $10, $46, $3b, $46, $74, $46, $b0, $46
	db $be, $46, $3e, $47, $ab, $47, $f7, $47, $41, $48, $70, $48, $ab, $48, $ee, $48
	db $50, $49, $12, $4a, $47, $4a

	ld a, [wd6ca]
	bit 7, a
	ret z

	ld a, [wcf0b]
	and a
	ret nz

	ld a, $31
	ld [wcc4d], a
	ld a, $15
	call $3e9d
	ld hl, wd6ad
	res 4, [hl]
	ld a, $01
	ld [wd56f], a
	ret


	ld a, $08
	ldh [$8c], a
	ld de, $45bc
	call $3684
	ld a, $02
	ld [wd56f], a
	ret


	db $40, $40, $40, $ff

	ld a, [wd6af]
	bit 0, a
	ret nz

	ld a, $31
	ld [wcc4d], a
	ld a, $11
	call $3e9d
	ld a, $2e
	ld [wcc4d], a
	ld a, $15
	call $3e9d
	ld a, $03
	ld [wd56f], a
	ret


	call $3e07
	ld hl, wccd3
	ld de, $460d
	call $3556
	dec a
	ld [wcd38], a
	call $34d0
	ld a, $01
	ldh [$8c], a
	xor a
	ldh [$8d], a
	call $34f0
	ld a, $05
	ldh [$8c], a
	xor a
	ldh [$8d], a
	call $34f0
	ld a, $04
	ld [wd56f], a
	ret


	db $40, $08, $ff

	ld a, [wcd38]
	and a
	ret nz

	ld hl, wd6c6
	set 0, [hl]
	ld hl, wd6ca
	set 0, [hl]
	ld a, $01
	ldh [$8c], a
	ld a, $04
	ldh [$8d], a
	call $34f0
	call $0ebd
	ld hl, wd6b2
	res 1, [hl]
	call $0d9b
	ld a, $05
	ld [wd56f], a
	ret


	ld a, $fc
	ld [wcd66], a
	ld a, $11
	ldh [$8c], a
	call $13f1
	call $3e07
	ld a, $12
	ldh [$8c], a
	call $13f1
	call $3e07
	ld a, $13
	ldh [$8c], a
	call $13f1
	call $3e07
	ld a, $14
	ldh [$8c], a
	call $13f1
	ld hl, wd6ca
	set 1, [hl]
	xor a
	ld [wcd66], a
	ld a, $06
	ld [wd56f], a
	ret


	ld a, [wd2e0]
	cp $06
	ret nz

	ld a, $05
	ldh [$8c], a
	xor a
	ldh [$8d], a
	call $34f0
	ld a, $01
	ldh [$8c], a
	xor a
	ldh [$8d], a
	call $34f0
	call $0ebd
	ld a, $0c
	ldh [$8c], a
	call $13f1
	ld a, $01
	ld [wcd38], a
	ld a, $40
	ld [wccd3], a
	call $34d0
	ld a, $08
	ld [wd4a7], a
	ld a, $07
	ld [wd56f], a
	ret


	ld a, [wcd38]
	and a
	ret nz

	call $3e07
	ld a, $06
	ld [wd56f], a
	ret


	ld a, [wd696]
	cp $b0
	jr z, jr_007_46cb

	cp $b1
	jr z, jr_007_46e6

	jr jr_007_4703

jr_007_46cb:
	ld de, $46da
	ld a, [wd2e0]
	cp $04
	jr z, jr_007_4731

	ld de, $46e1
	jr jr_007_4731

	nop
	nop
	ret nz

	ret nz

	ret nz

	ld b, b
	rst $38
	nop
	ret nz

	ret nz

	ret nz

	rst $38

jr_007_46e6:
	ld de, $46f5
	ld a, [wd2e0]
	cp $04
	jr z, jr_007_4731

	ld de, $46fd
	jr jr_007_4731

	db $00, $00, $c0, $c0, $c0, $c0, $40, $ff

	nop
	ret nz

	ret nz

	ret nz

	ret nz

	rst $38

jr_007_4703:
	ld de, $472d
	ld a, [wd2e1]
	cp $09
	jr nz, jr_007_4731

	push hl
	ld a, $01
	ldh [$8c], a
	ld a, $04
	ldh [$8b], a
	call $3546
	push hl
	ld [hl], $4c
	inc hl
	inc hl
	ld [hl], $00
	pop hl
	inc h
	ld [hl], $08
	inc hl
	ld [hl], $09
	ld de, $472f
	pop hl
	jr jr_007_4731

	nop
	ret nz

	ret nz

	rst $38

jr_007_4731:
	ld a, $01
	ldh [$8c], a
	call $3684
	ld a, $09
	ld [wd56f], a
	ret


	ld a, [wd6af]
	bit 0, a
	ret nz

	ld a, $fc
	ld [wcd66], a
	ld a, $01
	ldh [$8c], a
	ld a, $04
	ldh [$8d], a
	call $34f0
	ld a, $0d
	ldh [$8c], a
	call $13f1
	ld a, [wcd3e]
	cp $02
	jr nz, jr_007_4766

	ld a, $2b
	jr jr_007_4770

jr_007_4766:
	cp $03
	jr nz, jr_007_476e

	ld a, $2c
	jr jr_007_4770

jr_007_476e:
	ld a, $2d

jr_007_4770:
	ld [wcc4d], a
	ld a, $11
	call $3e9d
	call $3e07
	ld a, [wcd3d]
	ld [wd694], a
	ld [wcf78], a
	ld [wd0e3], a
	call $1aab
	ld a, $01
	ldh [$8c], a
	ld a, $04
	ldh [$8d], a
	call $34f0
	ld a, $0e
	ldh [$8c], a
	call $13f1
	ld hl, wd6ca
	set 2, [hl]
	xor a
	ld [wcd66], a
	ld a, $0a
	ld [wd56f], a
	ret


	ld a, [wd2e0]
	cp $06
	ret nz

	ld a, $01
	ldh [$8c], a
	xor a
	ldh [$8d], a
	call $34f0
	ld a, $08
	ld [wd4a7], a
	ld c, $02
	ld a, $de
	call $0e35
	ld a, $0f
	ldh [$8c], a

Jump_007_47cb:
	call $13f1
	ld a, $01
	ldh [$9b], a
	ld a, $01
	swap a
	ldh [$95], a
	ld a, $22
	call $3e9d
	ldh a, [$95]
	dec a
	ldh [$95], a
	ld a, $20
	call $3e9d
	ld de, wcc97
	ld a, $01
	ldh [$8c], a
	call $3684
	ld a, $0b
	ld [wd56f], a
	ret


	ld a, [wd6af]
	bit 0, a
	ret nz

	ld a, $e1
	ld [wd036], a
	ld a, [wd694]
	cp $b1
	jr nz, jr_007_480d

	ld a, $01
	jr jr_007_4817

jr_007_480d:
	cp $99
	jr nz, jr_007_4815

	ld a, $02
	jr jr_007_4817

jr_007_4815:
	ld a, $03

jr_007_4817:
	ld [wd03a], a
	ld a, $01
	ld [wcf0e], a
	call $3337
	ld hl, $52e4
	ld de, $5304
	call $339c
	ld hl, wd6ac
	set 6, [hl]
	set 7, [hl]
	xor a
	ld [wcd66], a
	ld a, $08
	ld [wd4a7], a
	ld a, $0c
	ld [wd56f], a
	ret


	ld a, $f0
	ld [wcd66], a
	ld a, $08
	ld [wd4a7], a
	call $0ebd
	ld a, $01
	ld [wcf0e], a
	call $3341
	ld a, $01
	ldh [$8c], a
	xor a
	ldh [$8d], a
	call $34f0
	ld a, $07
	call $3e9d
	ld hl, wd6ca
	set 3, [hl]
	ld a, $0d
	ld [wd56f], a
	ret


	ld c, $14
	call $3781
	ld a, $10
	ldh [$8c], a
	call $13f1
	ld b, $02
	ld hl, $4a44
	call $3620
	ld a, $01
	ldh [$8c], a
	ld de, $48a4
	call $3684
	ld a, [wd2e1]
	cp $04
	jr nz, jr_007_4899

	ld a, $c0
	jr jr_007_489b

jr_007_4899:
	ld a, $80

jr_007_489b:
	ld [wcc5b], a
	ld a, $0e
	ld [wd56f], a
	ret


	db $e0, $00, $00, $00, $00, $00, $ff

	ld a, [wd6af]
	bit 0, a
	jr nz, jr_007_48ca

	ld a, $2a
	ld [wcc4d], a
	ld a, $11
	call $3e9d
	xor a
	ld [wcd66], a
	call $0d9b
	ld a, $12
	ld [wd56f], a
	jr jr_007_48ed

jr_007_48ca:
	ld a, [wcf0a]
	cp $05
	jr nz, jr_007_48e6

	ld a, [wd2e1]
	cp $04
	jr nz, jr_007_48df

	ld a, $0c
	ld [wc109], a
	jr jr_007_48ed

jr_007_48df:
	ld a, $08
	ld [wc109], a
	jr jr_007_48ed

jr_007_48e6:
	cp $04
	ret nz

	xor a
	ld [wc109], a

jr_007_48ed:
	ret


	xor a
	ldh [$b4], a
	call $3c6c
	ld a, $ff
	ld [wc0ee], a
	call $0e45
	ld b, $02
	ld hl, $4a44
	call $3620
	ld a, $15
	ldh [$8c], a
	call $13f1
	call Call_007_4a69
	ld a, $2a
	ld [wcc4d], a
	ld a, $15
	call $3e9d
	ld a, [wcd37]
	ld [wd11c], a
	ld b, $00
	ld c, a
	ld hl, wcc97
	ld a, $40
	call $372a
	ld [hl], $ff
	ld a, $01
	ldh [$8c], a
	ld de, wcc97
	call $3684
	ld a, $10
	ld [wd56f], a
	ret


Call_007_493b:
	ld a, $01
	ldh [$8c], a
	ld a, $04
	ldh [$8d], a
	call $34f0
	ld a, $08
	ldh [$8c], a
	xor a
	ldh [$8d], a
	jp $34f0


	ld a, [wd6af]
	bit 0, a
	ret nz

	call $3c6c
	call $0d9b
	ld a, $fc
	ld [wcd66], a
	call Call_007_493b
	ld a, $16
	ldh [$8c], a
	call $13f1
	call $0b31
	call Call_007_493b
	ld a, $17
	ldh [$8c], a
	call $13f1
	call $0b31
	call Call_007_493b
	ld a, $18
	ldh [$8c], a
	call $13f1
	call $0b31
	ld a, $19
	ldh [$8c], a
	call $13f1
	call $3e07
	ld a, $2f
	ld [wcc4d], a
	ld a, $11
	call $3e9d
	ld a, $30
	ld [wcc4d], a
	ld a, $11
	call $3e9d
	call Call_007_493b
	ld a, $1a
	ldh [$8c], a
	call $13f1
	ld a, $01
	ldh [$8c], a
	ld a, $0c
	ldh [$8d], a
	call $34f0
	call $3e07
	ld a, $1b
	ldh [$8c], a
	call $13f1
	ld hl, wd6ca
	set 5, [hl]
	ld hl, wd6cd
	set 0, [hl]
	ld a, $01
	ld [wcc4d], a
	ld a, $11
	call $3e9d
	ld a, $02
	ld [wcc4d], a
	ld a, $15
	call $3e9d
	ld a, [wd11c]
	ld b, $00
	ld c, a
	ld hl, wcc97
	xor a
	call $372a
	ld [hl], $ff
	ld a, $ff
	ld [wc0ee], a
	call $0e45
	ld b, $02
	ld hl, $4a44
	call $3620
	ld a, $01
	ldh [$8c], a
	ld de, wcc97
	call $3684
	ld a, $11
	ld [wd56f], a
	ret


	ld a, [wd6af]
	bit 0, a
	ret nz

	call $0d9b
	ld a, $2a
	ld [wcc4d], a
	ld a, $11
	call $3e9d
	ld hl, wd76a
	set 0, [hl]
	res 1, [hl]
	set 7, [hl]
	ld a, $22
	ld [wcc4d], a
	ld a, $15
	call $3e9d
	ld a, $05
	ld [wd570], a
	xor a
	ld [wcd66], a
	ld a, $12
	ld [wd56f], a
	ret


	ret


Call_007_4a48:
	ld hl, wd2a2
	ld bc, $0000

jr_007_4a4e:
	ld a, [hli]
	cp $ff
	ret z

	cp $46
	jr z, jr_007_4a5a

	inc hl
	inc c
	jr jr_007_4a4e

jr_007_4a5a:
	ld hl, wd2a1
	ld a, c
	ld [wcf79], a
	ld a, $01
	ld [wcf7d], a
	jp $16cc


Call_007_4a69:
	ld a, $7c
	ldh [$eb], a
	ld a, $08
	ldh [$ee], a
	ld a, [wd2e0]
	cp $03
	jr nz, jr_007_4a83

	ld a, $04
	ld [wcd37], a
	ld a, $30
	ld b, $0b
	jr jr_007_4aa6

jr_007_4a83:
	cp $01
	jr nz, jr_007_4a92

	ld a, $02
	ld [wcd37], a
	ld a, $30
	ld b, $09
	jr jr_007_4aa6

jr_007_4a92:
	ld a, $03
	ld [wcd37], a
	ld b, $0a
	ld a, [wd2e1]
	cp $04
	jr nz, jr_007_4aa4

	ld a, $40
	jr jr_007_4aa6

jr_007_4aa4:
	ld a, $20

jr_007_4aa6:
	ldh [$ec], a
	ld a, b
	ldh [$ed], a
	ld a, $01
	ld [wcf0e], a
	call $3341
	ret


Call_007_4ab4:
	ld hl, $4af6
	ld a, l
	ld [wd2eb], a
	ld a, h
	ld [wd2ec], a
	ret


	db $0c, $4b

	sbc e
	ld c, e

	db $ac, $4b

	cp l
	ld c, e

	db $6d, $4d

	sbc b
	ld d, b
	sbc b
	ld d, b
	add $50
	ret


	ld d, b
	ld a, d
	ld d, l
	ld a, d
	ld d, l

	db $45, $52, $68, $52, $80, $52, $a4, $52, $17, $53, $0a, $51, $28, $51, $f1, $51
	db $18, $52, $5a, $53, $63, $53, $83, $53, $a4, $53, $02, $54, $35, $54, $eb, $54

	inc c
	ld c, e
	sbc e
	ld c, e
	xor h
	ld c, e
	cp l
	ld c, e
	ld l, l
	ld c, l
	sbc b
	ld d, b
	sbc b
	ld d, b
	add $50
	ret


	ld d, b
	ld a, d
	ld d, l
	ld a, d
	ld d, l

	db $08

	ld a, [wd6ca]
	bit 0, a
	jr nz, jr_007_4b1c

	ld hl, $4b31
	call $3c79
	jr jr_007_4b2e

jr_007_4b1c:
	bit 2, a
	jr nz, jr_007_4b28

	ld hl, $4b4f
	call $3c79
	jr jr_007_4b2e

jr_007_4b28:
	ld hl, $4b81
	call $3c79

jr_007_4b2e:
	jp $0f6a


	db $00, $53, $72, $c5, $de, $30, $e3, $7f, $52, $b6, $e7, $4f, $84, $e3, $86, $13
	db $c9, $7f, $2c, $b2, $bb, $de, $c5, $d7, $7f, $b2, $c8, $e3, $d6, $57

	nop
	ld d, e
	ld [hl], d
	call $e3cd
	sbc $30
	rst $20
	ld a, a
	or l
	jp c, $4fca

	or l
	call nz, Call_007_7fc5
	jr nc, @-$48

	rst $10
	ld a, a
	ld h, $df
	jp nz, wc5b6

	or d
	ret


	cp e
	ld d, c
	ld d, d
	or [hl]
	rst $10
	ld a, a
	cp e
	or a
	add $4f
	or h
	rst $10
	ld a, [hld]
	cp [hl]
	jp wd47f


	reti


	ld l, $e7
	ld d, a
	nop
	ld d, e
	ld [hl], d
	or l
	jp c, Jump_007_7fc9

	or h
	rst $10
	sbc $30
	ld c, a
	ld d, h
	ret


	ld a, a
	adc $b3
	ld h, $7f
	jp nz, $bfd6

	or e
	jr nc, jr_007_4bc8

	ld d, a
	ld [$b13e], sp
	ld [wcd3d], a
	ld a, $03
	ld [wcd3e], a
	ld a, $b0
	ld b, $02
	jr jr_007_4bcc

	db $08

	ld a, $99
	ld [wcd3d], a
	ld a, $04
	ld [wcd3e], a
	ld a, $b1
	ld b, $03
	jr jr_007_4bcc

	ld [$b03e], sp
	ld [wcd3d], a
	ld a, $02
	ld [wcd3e], a

jr_007_4bc8:
	ld a, $99
	ld b, $04

jr_007_4bcc:
	ld [wcf78], a
	ld [wd0e3], a
	ld a, b
	ld [wcf0e], a
	ld a, [wd6ca]
	bit 2, a
	jp nz, Jump_007_4d3e

	bit 1, a
	jr nz, jr_007_4c05

	ld hl, $4beb
	call $3c79
	jp $0f6a


	nop
	and c
	xor e
	adc h
	adc a
	db $e3
	inc e
	db $e3
	and [hl]
	jr nc, @+$51

	push bc
	or [hl]
	add $7f
	ld d, h
	ld h, $7f
	jp z, wdfb2

	jp $2fd9


	rst $20
	ld d, a

jr_007_4c05:
	ld a, $05
	ldh [$8c], a
	ld a, $09
	ldh [$8b], a
	call $3546
	ld [hl], $00
	ld a, $01
	ldh [$8c], a
	ld a, $09
	ldh [$8b], a
	call $3546
	ld [hl], $0c
	ld hl, wd6af
	set 6, [hl]
	ld a, $46
	call $3e9d
	ld hl, wd6af
	res 6, [hl]
	call $1b86
	ld c, $0a
	call $3781
	ld a, [wcf0e]
	cp $02
	jr z, jr_007_4c43

	cp $03
	jr z, jr_007_4c61

	jr jr_007_4c7e

jr_007_4c43:
	ld hl, $4c48
	jr jr_007_4c9f

	nop
	adc $b3
	rst $20
	ld a, a
	adc $c9
	or l
	ret


	ld d, h
	ld c, a
	sbc d
	sub e
	add l
	ld [$7fc6], sp
	cp l
	reti


	sbc $2c
	ldh [$c5], a
	and $57

jr_007_4c61:
	ld hl, $4c66
	jr jr_007_4c9f

	db $00, $cc, $d1, $7f, $d0, $2d, $c9, $54, $4f, $0d, $95, $05, $a0, $c6, $7f, $b7
	db $d2, $d9, $c9, $2c, $e0, $c5, $e6, $57

jr_007_4c7e:
	ld hl, $4c83
	jr jr_007_4c9f

	nop
	cp a
	or e
	or [hl]
	rst $20
	ld a, a
	cp h
	ld [c], a
	cp b
	inc a
	jp nz, Jump_007_4f54

	sbc e
	adc e
	ld b, $0f
	sub a
	ld h, $7f
	or d
	or d
	sbc $2c
	ldh [$c5], a
	and $57

jr_007_4c9f:
	call $3c79
	ld a, $01
	ld [wcc3c], a
	call $3636
	ld a, [wcc26]
	and a
	jr nz, jr_007_4d0b

	ld a, [wcf78]
	ld [wd696], a
	ld [wd0e3], a
	call $1aab
	ld a, [wcf0e]
	cp $02
	jr nz, jr_007_4cc7

	ld a, $2b
	jr jr_007_4cd1

jr_007_4cc7:
	cp $03
	jr nz, jr_007_4ccf

	ld a, $2c
	jr jr_007_4cd1

jr_007_4ccf:
	ld a, $2d

jr_007_4cd1:
	ld [wcc4d], a
	ld a, $11
	call $3e9d
	ld a, $01
	ld [wcc3c], a
	ld hl, $4d0e
	call $3c79
	ld hl, $4d24
	call $3c79
	xor a
	ld [wcc49], a
	ld a, $05
	ld [wd0ec], a
	ld a, [wcf78]
	ld [wd0e3], a
	call $3971
	ld hl, wd6ad
	set 3, [hl]
	ld a, $fc
	ld [wcd66], a
	ld a, $08
	ld [wd56f], a

jr_007_4d0b:
	jp $0f6a


	db $00, $ba, $c9, $7f, $54, $ca, $4f, $ce, $de, $c4, $c6, $7f, $29, $de, $b7, $26
	db $7f, $b2, $b2, $2f, $e7, $58, $00, $52, $ca, $7f, $84, $e3, $86, $13, $b6, $d7
	db $4f, $50, $01, $68, $cd, $00, $dd, $7f, $d3, $d7, $df, $c0, $e7, $50, $11, $50

Jump_007_4d3e:
	ld a, $05
	ldh [$8c], a
	ld a, $09
	ldh [$8b], a
	call $3546
	ld [hl], $00
	ld hl, $4d54
	call $3c79
	jp $0f6a


	nop
	add h
	db $e3
	add [hl]
	inc de
	jp z, $beb6

	ret


	ld a, a
	ld d, h
	ld c, a
	cp e
	or d
	ld a, [hli]
	ret


	ld a, a
	or d
	rst $18
	ld b, l
	or a
	jr nc, @+$58

	rst $20
	ld d, a

	db $08

	ld a, [wd6c6]
	bit 6, a
	jr nz, jr_007_4d84

	ld hl, wd27b
	ld b, $13
	call $1690
	ld a, [wd0e3]
	cp $02
	jr c, jr_007_4d97

jr_007_4d84:
	ld hl, $5066
	call $3c79
	ld a, $01
	ld [wcc3c], a
	ld a, $56
	call $3e9d
	jp Jump_007_4e1a


jr_007_4d97:
	ld b, $04
	call $34dd
	jr nz, jr_007_4e14

	ld hl, wd27b
	ld b, $13
	call $1690
	ld a, [wd0e3]
	cp $02
	jr nc, jr_007_4e14

	ld a, [wd76a]
	bit 5, a
	jr nz, jr_007_4dfd

	ld a, [wd6ca]
	bit 5, a
	jr nz, jr_007_4df5

	bit 3, a
	jr nz, jr_007_4dd6

	ld a, [wd6ad]
	bit 3, a
	jr nz, jr_007_4dce

	ld hl, $4e1d
	call $3c79
	jr jr_007_4e1a

jr_007_4dce:
	ld hl, $4e32
	call $3c79
	jr jr_007_4e1a

jr_007_4dd6:
	ld b, $46
	call $34dd
	jr nz, jr_007_4de5

	ld hl, $4e69
	call $3c79
	jr jr_007_4e1a

jr_007_4de5:
	ld hl, $4e8c
	call $3c79
	call Call_007_4a48
	ld a, $0f
	ld [wd56f], a
	jr jr_007_4e1a

jr_007_4df5:
	ld hl, $4f2d
	call $3c79
	jr jr_007_4e1a

jr_007_4dfd:
	ld hl, wd6ca
	bit 4, [hl]
	set 4, [hl]
	jr nz, jr_007_4e14

	ld bc, $0405
	call $3e5e
	ld hl, $4f4f
	call $3c79
	jr jr_007_4e1a

jr_007_4e14:
	ld hl, $5035
	call $3c79

Jump_007_4e1a:
jr_007_4e1a:
	jp $0f6a


	nop
	add h
	db $e3
	add [hl]
	inc de
	ld [hl], d
	cp e
	or c
	ld a, a
	ld d, d
	ld c, a
	inc [hl]
	ret


	ld a, a
	ld d, h
	add $7f
	cp l
	reti


	and $57
	nop
	add h
	db $e3
	add [hl]
	inc de
	ld [hl], d
	cp a
	or e
	inc l
	ldh [$e7], a
	ld c, a
	call nc, $b2be
	ret


	ld a, a
	ld d, h
	ld h, $7f
	inc sp

jr_007_4e47:
	jp $b77f


	jp $51d3


	cp a
	or d
	jp nz, Jump_007_7fdd

	ret nz

	ret nz

	or [hl]
	call c, $c3be
	ld a, a
	or d
	cp c
	ld a, [hld]
	ld c, a
	call nz, wd8c5
	rst $08
	pop bc
	call $b27f
	cp c
	reti


	rst $20
	ld d, a
	nop
	add h
	db $e3
	add [hl]
	inc de
	ld [hl], d
	ld d, d
	db $d3
	ld c, a
	rst $08
	cp c
	dec l
	add $7f
	ld d, h
	db $dd
	ld d, l
	ret nz

	ret nz

	or [hl]
	call c, $c3be
	ld a, a
	cp a
	jr nc, jr_007_4e47

	reti


	call nz, $b27f
	or d
	cpl
	rst $20
	ld d, a

	db $00, $84, $e3, $86, $13, $72, $b5, $b5, $e7, $7f, $52, $51, $34, $e3, $30, $b2
	db $e6, $4f, $dc, $bc, $c9, $7f, $d4, $df, $c0, $54, $ca, $56, $ce, $b3, $51, $30
	db $b2, $3c, $4f, $c5, $c2, $b2, $c0, $7f, $d0, $c0, $b2, $30, $c5, $e6, $51, $b5
	db $cf, $b4, $7f, $54, $5d, $c9, $4f, $bb, $b2, $c9, $b3, $26, $7f, $b1, $d9, $c5
	db $e7, $51, $56, $b4, $7f, $dc, $bc, $c6, $7f, $dc, $c0, $bd, $7f, $d3, $c9, $26
	db $e6, $51, $52, $ca, $7f, $84, $e3, $86, $13, $7f, $ca, $b6, $be, $c6, $4f, $c4
	db $34, $b9, $d3, $c9, $dd, $7f, $dc, $c0, $bc, $c0, $e7, $50, $11, $00, $51, $b5
	db $b5, $e7, $7f, $ba, $da, $ca, $4f, $dc, $bc, $26, $7f, $c1, $e1, $b3, $d3, $de
	db $7f, $bc, $c3, $c0, $51, $c4, $b8, $be, $b2, $c9, $7f, $a1, $ab, $8c, $8f, $e3
	db $1c, $e3, $a6, $2c, $e0, $4f, $34, $b3, $d3, $7f, $b1, $d8, $26, $c4, $d6, $e7
	db $57

	nop
	cp [hl]
	or [hl]
	or d
	ld a, a
	inc l
	pop hl
	or e
	add $7f
	cp l
	sbc $33

Jump_007_4f3a:
	or d
	reti


	ld c, a
	ld d, h
	ret nz

	pop bc
	ld h, $55
	ld d, d
	db $dd
	ld a, a
	rst $08
	rst $18
	jp $b57f


	reti


	cpl
	db $e3
	rst $20
	ld d, a
	nop
	add h
	db $e3
	add [hl]
	inc de

Jump_007_4f54:
	ld [hl], d
	ld d, h
	db $dd
	ld c, a
	ret nz

	jr nc, jr_007_4fda

	ret nc

	jp nz, wc0b9

	jr nc, @-$45

	ld a, a
	inc sp
	jp z, $b855

	call c, $b2bc
	ld a, a
	ld [de], a
	db $e3
	adc a
	db $dd
	ld d, l
	jp Jump_007_7fc6


	or d
	jp c, Jump_007_7fd9

	cp d
	call nz, Call_007_7fca

jr_007_4f7a:
	inc sp
	or a
	sbc $e7
	ld d, c
	or [hl]
	push bc
	rst $10
	dec l
	ld c, a
	jp nz, wcfb6

	or h
	push bc
	cp c
	jp c, $7f3a

	push bc
	rst $10
	sbc $c9
	jr nc, jr_007_4f7a

	ld d, l
	adc $da
	ld a, a
	cp a
	ret


	ret nz

	jp nc, $56c6

	ld d, l
	set 0, d
	sub $b3
	push bc
	ld a, a
	inc [hl]
	or e
	jr z, @-$21

	ld a, a
	call c, $bfc0
	or e
	rst $20
	ld d, c
	ld d, d
	jp z, $fb7f

	cp d
	ld c, a
	and c
	xor e
	adc h
	adc a
	db $e3
	inc e
	db $e3
	and [hl]
	db $dd
	ld a, a
	db $d3

Jump_007_4fc0:
jr_007_4fc0:
	rst $10
	rst $18
	ret nz

	rst $20
	ld d, b
	ld de, $5100
	call nc, $b2be
	ret


	ld a, a
	ld d, h
	ld h, $4f
	call nz, $303b
	cp h
	jp $b77f


	ret nz

	rst $10
	ld a, a

jr_007_4fda:
	sub b
	xor l
	xor e
	adc h
	rst $20
	ld d, c
	and c
	xor e
	adc h

Call_007_4fe3:
	adc a
	db $e3
	inc e
	db $e3

Call_007_4fe7:
	and [hl]
	db $dd
	ld c, a
	ld b, e
	add c
	rst $20
	call nz, wc57f
	add hl, hl
	jp c, $553a

	ld d, h
	db $dd
	ld a, a
	jp nz, wcfb6

	or h
	ld a, a
	rst $10
	jp c, $e7d9

	ld d, c
	ret nz

	jr nc, jr_007_4fc0

	ld d, [hl]
	ld a, a
	or e
	rst $08
	cp b
	ld a, a
	call nz, wd9da

jr_007_500d:
	or [hl]
	ld c, a
	inc [hl]
	or e
	or [hl]
	jp z, wdc7f

	or [hl]
	rst $10
	sbc $2f
	rst $20
	ld d, c
	add hl, hl
	sbc $b7
	push bc
	ld a, a
	ld d, h
	jp z, wc67f

	add hl, hl
	call nc, $b2bd
	cp h
	ld c, a
	or e
	sbc $d3
	ld a, a
	or c
	reti


	or [hl]
	rst $10
	push bc
	rst $20
	ld d, a
	nop
	add h
	db $e3
	add [hl]
	inc de
	ld [hl], d
	call nz, $34b7
	or a
	jp z, wdc4f

	cp h
	ret


	ld a, a
	call nz, wc6ba
	ld a, a
	or [hl]
	or l
	db $dd
	ld a, a
	jr nc, jr_007_500d

	rst $20
	ld d, c
	ld d, h
	dec l
	or [hl]
	sbc $c9
	ld a, a
	ld b, a
	db $e3
	dec bc
	ld h, $4f
	or a
	add $7f
	push bc
	reti


	sbc $33
	push bc
	rst $20
	ld d, a
	nop
	add h
	db $e3
	add [hl]
	inc de
	ld [hl], d
	sub $b8
	ld a, a
	or a
	ret nz

	rst $20
	ld c, a
	ld d, h
	dec l
	or [hl]
	sbc $c9
	ld d, l
	pop bc
	ld [c], a
	or e
	cp h
	jp z, $347f

	or e
	or [hl]
	push bc
	and $55
	inc [hl]
	jp c, Jump_007_7f56

	pop bc
	ld [c], a
	rst $18
	call nz, wd055
	jp $b17f


	add hl, hl
	sub $b3
	or [hl]
	rst $20
	ld e, b
	ld [$a221], sp
	ld d, b
	call $3c79
	jp $0f6a


	nop
	dec l
	or [hl]
	sbc $7f
	ret nc

	ret nz

	or d
	push bc
	ld a, a

jr_007_50ac:
	db $d3
	ret


	ld h, $7f
	or c
	reti


	rst $20
	ld c, a
	push bc
	or [hl]
	jp z, $bc7f

	db $db
	or d
	ld b, a
	db $e3
	dec bc
	ld a, a
	ld a, [hld]
	rst $18
	or [hl]
	ret c

	jr nc, jr_007_50ac

	ld d, a
	nop
	and $57
	ld [wd321], sp
	ld d, b
	call $3c79
	jp $0f6a


	nop
	or c
	or c
	ld a, a
	ret nc

	or h
	jp Jump_007_7fd3


	add h
	db $e3
	add [hl]
	inc de
	jp z, $beb6

	jp z, $544f

	ret


	ld a, a
	add h
	db $e3
	adc [hl]
	ret c

	sub d
	or b
	push bc
	ret


	rst $20
	ld d, c
	jp z, $beb6

	db $dd
	ld a, a
	cp a
	sbc $b9
	or d
	cp l
	reti


	ld c, a
	ld d, h
	ld a, a
	ld e, l
	db $d3
	ld a, a
	or l
	or l
	or d
	call c, $e7d6
	ld d, a

	db $08

	ld hl, $5114
	call $3c79
	jp $0f6a


	db $00, $53, $72, $2c, $b2, $bb, $de, $e7, $4f, $cf, $c1, $b8, $c0, $3b, $da, $c0
	db $2f, $e3, $e7, $57, $08

	ld hl, $5132
	call $3c79
	jp $0f6a


	db $00, $84, $e3, $86, $13, $72, $53, $b6, $e6, $4f, $56, $7f, $56, $7f, $56, $51
	db $b5, $b5, $7f, $bf, $b3, $b6, $4f, $dc, $bc, $26, $7f, $d6, $de, $30, $c9, $2c
	db $e0, $df, $c0, $e7, $55, $c1, $e2, $df, $c4, $7f, $cf, $df, $c3, $7f, $b5, $da
	db $e7, $51, $ce, $da, $7f, $52, $e7, $51, $bf, $ba, $c6, $7f, $f9, $3b, $b7, $4f
	db $54, $26, $7f, $b2, $d9, $7f, $2c, $e0, $db, $b3, $e7, $51, $ce, $df, $ce, $e7
	db $51, $a1, $ab, $8c, $8f, $e3, $1c, $e3, $a6, $c9, $7f, $c5, $b6, $c6, $4f, $54
	db $26, $7f, $b2, $da, $c3, $7f, $b1, $d9, $de, $2c, $e0, $51, $d1, $b6, $bc, $ca
	db $7f, $dc, $bc, $d3, $7f, $19, $d8, $19, $d8, $c9, $4f, $54, $7f, $5d, $c4, $bc
	db $c3, $55, $c5, $d7, $bc, $c0, $7f, $d3, $c9, $e7, $51, $b5, $b2, $3e, $da, $c0
	db $7f, $b2, $cf, $ca, $7f, $54, $d3, $4f, $f9, $3b, $b7, $7f, $bc, $b6, $7f, $c9
	db $ba, $df, $c4, $d7, $de, $26, $55, $b5, $cf, $b4, $c6, $7f, $f7, $45, $b7, $7f
	db $d4, $db, $b3, $e7, $55, $56, $7f, $bb, $b1, $7f, $b4, $d7, $3d, $e7, $57, $08

	ld hl, $51fb
	call $3c79
	jp $0f6a


	db $00, $53, $72, $b1, $ac, $e7, $7f, $2d, $d9, $b2, $e7, $4f, $2c, $b2, $bb, $de
	db $e7, $7f, $b5, $da, $c6, $d3, $7f, $b8, $da, $d6, $b5, $e7, $57, $08

	ld hl, $5222
	call $3c79
	jp $0f6a


	db $00, $84, $e3, $86, $13, $72, $cf, $e3, $e7, $4f, $b1, $dc, $c3, $d9, $c5, $7f
	db $53, $e7, $55, $b5, $cf, $b4, $d3, $7f, $bd, $b7, $c5, $d3, $c9, $dd, $7f, $c4
	db $da, $e7, $57, $08

	ld hl, $524f
	call $3c79
	jp $0f6a


	db $00, $84, $e3, $86, $13, $72, $ba, $d7, $7f, $34, $ba, $cd, $b2, $b8, $e7, $4f
	db $d3, $34, $df, $c3, $ba, $de, $b6, $e7, $57, $08

	ld hl, $5272
	call $3c79
	jp $0f6a


	db $00, $53, $72, $2c, $e0, $7f, $b5, $da, $ca, $7f, $ba, $da, $e7, $57, $08

	ld hl, $528a
	call $3c79
	jp $0f6a


	db $00, $53, $ca, $7f, $84, $e3, $86, $13, $b6, $d7, $4f, $50, $01, $68, $cd, $00
	db $dd, $7f, $d3, $d7, $df, $c0, $e7, $50, $11, $50, $08

	ld hl, $52ae
	call $3c79
	jp $0f6a


	db $00, $53, $72, $cf, $c3, $d6, $e7, $7f, $52, $e7, $4f, $be, $df, $b6, $b8, $7f
	db $2c, $e3, $bb, $de, $c6, $55, $54, $7f, $d3, $d7, $df, $c0, $de, $30, $2e, $e7
	db $51, $56, $7f, $c1, $e2, $df, $c4, $4f, $b5, $da, $c9, $7f, $b1, $b2, $c3, $7f
	db $bc, $c3, $d0, $db, $e7, $57, $00, $b4, $e3, $7f, $bf, $de, $c5, $7f, $19, $85
	db $c5, $e7, $4f, $b5, $cf, $b4, $c9, $7f, $54, $c6, $55, $bd, $d8, $e0, $b1, $7f
	db $d6, $b6, $df, $c0, $e7, $58

	nop
	ld d, e
	ld [hl], d
	call nc, $e3d8
	rst $20
	ld c, a
	or l
	jp c, wc3df

	ld a, a
	jp $bbde


	or d
	and $58

	db $08

	ld hl, $5321
	call $3c79
	jp $0f6a


	db $00, $53, $72, $d6, $e3, $bc, $e7, $4f, $ce, $b6, $c9, $7f, $54, $c4, $7f, $c0
	db $c0, $b6, $dc, $be, $c3, $55, $d3, $df, $c4, $7f, $d3, $df, $c4, $7f, $c2, $d6
	db $b8, $bd, $d9, $2e, $e7, $51, $52, $e7, $7f, $2c, $b2, $bb, $de, $e7, $4f, $bf
	db $de, $2c, $e0, $7f, $b1, $3a, $d6, $e7, $57, $00, $53, $72, $2c, $b2, $bb, $de
	db $e7, $57, $00, $53, $72, $bd, $df, $b6, $d8, $7f, $dc, $bd, $da, $c3, $c0, $e7
	db $4f, $b5, $da, $c6, $7f, $c5, $de, $b6, $7f, $d6, $e3, $2c, $7f, $30, $df, $c3
	db $e6, $57, $00, $84, $e3, $86, $13, $72, $b5, $b5, $7f, $bf, $b3, $2c, $e0, $e7
	db $4f, $b5, $cf, $b4, $c0, $c1, $c6, $7f, $c0, $c9, $d0, $26, $7f, $b1, $d9, $de
	db $2c, $e0, $57, $00, $c2, $b8, $b4, $c9, $7f, $b3, $b4, $c6, $7f, $b1, $d9, $c9
	db $ca, $4f, $dc, $bc, $26, $7f, $c2, $b8, $df, $c0, $7f, $54, $2d, $b6, $de, $e7
	db $51, $d0, $c2, $b9, $c0, $7f, $54, $c9, $7f, $12, $e3, $8f, $26, $4f, $2c, $34
	db $b3, $c3, $b7, $c6, $7f, $b6, $b7, $ba, $cf, $da, $c3, $55, $47, $e3, $0b, $26
	db $7f, $cc, $b4, $c3, $7f, $b2, $b8, $7f, $c4, $b2, $b3, $51, $c0, $b2, $cd, $de
	db $7f, $99, $81, $92, $87, $c5, $4f, $2d, $b6, $de, $7f, $c5, $c9, $2c, $e0, $e7
	db $57, $00, $84, $e3, $86, $13, $72, $52, $7f, $53, $4f, $ba, $da, $dd, $7f, $b5
	db $cf, $b4, $c0, $c1, $c6, $7f, $b1, $2d, $b9, $d9, $e7, $51, $52, $ca, $7f, $84
	db $e3, $86, $13, $b6, $d7, $4f, $54, $2d, $b6, $de, $dd, $7f, $d3, $d7, $df, $c0
	db $e7, $50, $11, $50, $00, $ba, $c9, $7f, $be, $b6, $b2, $c9, $7f, $bd, $3d, $c3
	db $c9, $4f, $54, $dd, $7f, $b7, $db, $b8, $bc, $c0, $55, $b6, $de, $47, $b7, $c5
	db $7f, $2d, $b6, $de, $dd, $7f, $c2, $b8, $d9, $ba, $c4, $e7, $51, $bf, $da, $26
	db $7f, $dc, $bc, $c9, $7f, $d5, $d2, $7f, $30, $df, $c0, $e7, $51, $bc, $b6, $bc
	db $7f, $dc, $bc, $d3, $7f, $d3, $b3, $7f, $0b, $0b, $81, $e7, $4f, $bf, $ba, $cf
	db $33, $7f, $9f, $d8, $ca, $7f, $33, $b7, $de, $e7, $51, $bf, $ba, $33, $7f, $b5
	db $cf, $b4, $7f, $c0, $c1, $c6, $ca, $4f, $dc, $bc, $c9, $7f, $b6, $dc, $d8, $c6
	db $55, $d5, $d2, $dd, $7f, $ca, $c0, $bc, $c3, $7f, $ce, $bc, $b2, $c9, $2c, $e0
	db $e7, $51, $bb, $b1, $7f, $cc, $c0, $d8, $c4, $d3, $4f, $bb, $df, $bf, $b8, $7f
	db $bc, $e1, $df, $44, $c2, $7f, $bc, $c3, $b8, $da, $b2, $e7, $51, $ba, $da, $ca
	db $7f, $54, $c9, $7f, $da, $b7, $bc, $c6, $7f, $c9, $ba, $d9, $4f, $b2, $30, $b2
	db $c5, $7f, $bc, $2a, $c4, $2c, $e0, $e3, $e7, $57, $00, $53, $72, $d6, $e3, $bc
	db $e7, $7f, $2c, $b2, $bb, $de, $e7, $4f, $2e, $de, $3c, $7f, $b5, $da, $c6, $7f
	db $cf, $b6, $be, $c5, $e3, $e7, $51, $52, $e7, $4f, $2b, $de, $c8, $de, $30, $26
	db $7f, $b5, $cf, $b4, $c9, $7f, $33, $3a, $de, $ca, $55, $cf, $df, $c0, $b8, $7f
	db $c8, $e3, $2e, $e7, $51, $bf, $b3, $30, $e7, $7f, $b3, $c1, $c9, $7f, $c8, $b4
	db $c1, $e0, $de, $7f, $b6, $d7, $4f, $8f, $82, $ab, $9d, $ac, $42, $dd, $7f, $b6
	db $d8, $c3, $7f, $b2, $ba, $b3, $e7, $51, $52, $7f, $c6, $ca, $7f, $b6, $bb, $c5
	db $b2, $7f, $d6, $b3, $c6, $4f, $c8, $b4, $c1, $e0, $de, $c6, $7f, $b2, $df, $c3
	db $7f, $b5, $b8, $b6, $d7, $55, $b5, $da, $de, $c1, $cd, $7f, $b7, $c3, $d3, $7f
	db $d1, $30, $7f, $30, $b6, $d7, $c5, $e7, $57

	ld [$8421], sp
	ld d, l
	call $3c79
	jp $0f6a


	nop
	call c, $bcc0
	db $d3
	ld a, a
	jp z, $beb6

	ret


	ld a, a
	inc l
	ld [c], a
	cp h
	pop hl
	ld a, a
	call nz, $c3bc
	ld c, a
	ld d, h
	db $dd
	ld a, a
	cp c
	sbc $b7
	pop hl
	or e
	ld a, a
	cp h
	jp $bdcf


	ld d, a

	db $03, $02, $0b, $04, $02, $ff, $0b, $05, $02, $ff, $00, $0b, $02, $07, $08, $ff
	db $ff, $41, $e1, $01, $3d, $07, $0a, $ff, $ff, $02, $3d, $07, $0b, $ff, $ff, $03
	db $3d, $07, $0c, $ff, $ff, $04, $03, $06, $09, $ff, $d0, $05, $41, $05, $06, $ff
	db $ff, $06, $41, $05, $07, $ff, $ff, $07, $03, $0e, $09, $ff, $d1, $08, $0d, $0d
	db $05, $fe, $01, $09, $20, $0e, $06, $ff, $ff, $0a, $20, $0e, $0c, $ff, $ff, $0b

	dec l
	rst $00
	dec bc
	inc b

	db $2d, $c7, $0b, $05, $02, $04, $04, $60, $57, $7c, $56, $0a, $56, $00, $3a, $57

	call Call_007_5619
	call $3c6c
	ld hl, $5631
	ld a, [wd58c]
	jp $3dc7


Call_007_5619:
	ld a, [wd6cd]
	bit 0, a
	jr nz, jr_007_5625

	ld hl, $567c
	jr jr_007_5628

jr_007_5625:
	ld hl, $5686

jr_007_5628:
	ld a, l
	ld [wd2eb], a
	ld a, h
	ld [wd2ec], a
	ret


	db $37, $56, $5c, $56, $7b, $56

	call $0ebd

Jump_007_563a:
	ld a, $04
	ldh [$8c], a
	call $13f1
	ld hl, wccd3
	ld de, $5657
	call $3556
	dec a
	ld [wcd38], a
	call $34d0

Jump_007_5651:
	ld a, $01
	ld [wd58c], a
	ret


	db $20, $01, $40, $02, $ff

	ld a, [wcd38]
	and a
	ret nz

	call $3e07
	ld a, $05
	ldh [$8c], a
	call $13f1
	ld bc, $4601
	call $3e5e
	ld hl, wd6cd
	set 1, [hl]
	ld a, $02
	ld [wd58c], a
	ret


	db $8c, $56

	nop
	ld d, a
	dec e
	ld d, a

	db $a1, $56, $ba, $56, $d6, $0e

	nop
	ld d, a
	dec e
	ld d, a

	db $00, $2c, $e0, $e7, $4f, $84, $e3, $86, $13, $7f, $ca, $b6, $be, $c6, $7f, $d6
	db $db, $bc, $b8, $e7, $57, $00, $b5, $e7, $7f, $b7, $d0, $ca, $4f, $9d, $8a, $a5
	db $7f, $8f, $82, $ab, $b6, $d7, $7f, $b7, $c0, $de, $30, $c8, $e6, $57, $00, $84
	db $e3, $86, $13, $7f, $ca, $b6, $be, $dd, $7f, $bc, $df, $c3, $d9, $c8, $e6, $51
	db $ba, $da, $7f, $c0, $c9, $cf, $da, $c3, $d9, $de, $30, $b9, $34, $4f, $dc, $c0
	db $bc, $c3, $7f, $b8, $da, $d9, $b6, $b2, $e7, $51, $52, $ca, $7f, $8b, $af, $ac
	db $42, $b6, $d7, $4f, $c4, $34, $b9, $d3, $c9, $dd, $7f, $b1, $2d, $b6, $df, $c0
	db $e7, $50, $11, $50

	nop
	ret z

	or h
	ld a, a
	cp d
	ret


	ld a, a
	ret nc

	cp [hl]
	ret


	ld a, a
	or e
	jp c, $2cbd

	jp z, $344f

	cp b
	cp c
	cp h
	ld a, a
	push bc
	sbc $30
	rst $18
	jp Jump_007_57e7


	nop
	push bc
	or d
	push bc
	db $e3
	ld a, a
	add [hl]
	inc c
	jr z, @-$41

	ret c

	ld d, [hl]
	ld c, a
	cp d
	cp d

Call_007_572c:
	inc sp
	jp z, $b37f

	ret c

	or a
	jp c, wd9c3

	ld a, a
	ret nc

	ret nz

	or d
	ld d, a

	db $00, $02, $07, $03, $01, $ff, $07, $04, $01, $ff, $00, $03, $26, $09, $04, $ff
	db $d3, $01, $04, $09, $09, $fe, $01, $02, $07, $07, $07, $ff, $ff, $03, $12, $c7
	db $07, $03

	inc de
	rst $00
	rlca
	inc b

	db $12, $13, $13, $09, $16, $0f, $14, $14, $18, $19, $15, $15, $17, $1a, $0b, $0f

	ld [$0404], sp
	ld a, $40
	ld a, a
	ld d, a
	ld a, h
	ld d, a
	nop
	cp [hl]
	ld d, a
	jp $3c6c


	add e
	ld d, a
	and c
	ld d, a
	nop
	call z, Call_007_4fe3
	sbc b
	db $e3
	sub e
	ret


	ld a, a
	push bc
	or [hl]
	ret


	ld a, a
	cp d
	call nz, wdc55
	ret nz

	cp h
	ld a, a
	ld l, $de
	inc a
	ld a, a
	or l
	ld a, $b4
	reti


	ret


	ld d, a
	nop
	jp z, $e7b2

	ld d, c
	cp d
	cp b
	ld a, [hld]
	sbc $c6
	ld a, a
	or [hl]
	or [hl]
	jp c, wd9c3

	ld a, a
	cp d
	call nz, wc14f
	ldh [$de], a
	call nz, wSpriteCurPosY
	jp Jump_007_57e7


	ld a, [bc]
	ld [bc], a
	rlca
	ld [bc], a
	ld [bc], a
	rst $38
	rlca
	inc bc
	ld [bc], a
	rst $38
	nop
	ld [bc], a
	dec e
	add hl, bc
	rlca
	rst $38
	pop de
	ld bc, $0506
	ld [wd0ff], sp
	ld [bc], a
	ld [de], a
	rst $00
	rlca
	ld [bc], a
	ld [de], a
	rst $00
	rlca
	inc bc
	ld [$0404], sp
	ld l, $40
	xor $57
	db $eb
	ld d, a

Call_007_57e7:
Jump_007_57e7:
	nop
	add h
	ld e, b
	nop
	jp $3c6c


	or $57
	jr c, jr_007_584a

	ld c, a
	ld e, b
	ld [hl], b
	ld e, b
	nop
	sub l
	xor h
	add a

jr_007_57fa:
	sub a
	db $e3
	sbc a
	db $dd
	ld a, a
	or [hl]
	sbc $26
	or h
	reti


	cp d
	call nz, $4fca
	ret nz

	ret


	cp h
	or d
	ld d, [hl]
	ld h, $7f
	pop de
	dec l
	or [hl]
	cp h
	or d
	rst $20
	ld d, c
	cp d
	rst $18
	ret nz

	ld a, a
	sub l
	xor h
	add a
	sub a
	db $e3
	sbc a
	db $d3
	ld a, a
	or d
	or d
	ld h, $4f
	or l
	ld a, $b4
	call nc, $b2bd
	ret


	ld h, $7f
	or d
	pop bc
	ld a, [hld]
	sbc $7f
	call nc, $e7c5
	ld d, a
	nop
	or e
	pop bc
	ret


	ld a, a
	call nz, wc1b3
	ldh [$de], a
	db $d3
	ld c, a
	ld d, h
	ld a, a
	jr nc, jr_007_57fa

	cp l
	or a

jr_007_584a:
	push bc
	ret


	sub $e7
	ld d, a
	ld [$6121], sp
	ld e, b
	call $3c79
	ld a, $05
	call $2dc7
	call $3790
	jp $0f6a


	nop
	add h
	sub l
	sub b
	xor l
	xor e
	ld [hl], d
	sub b
	xor [hl]
	ld a, a
	sub b
	xor [hl]
	xor e
	rst $20
	ld d, a
	nop
	add h
	sub l
	adc h
	inc c
	and b
	ld c, a
	jp nc, wd2b2

	or d
	ld a, a
	ld [hl], b
	add h
	sub l
	sub b
	xor l
	xor e
	ld [hl], c
	ld d, a
	ld a, [bc]
	ld [bc], a
	rlca
	ld [bc], a
	inc bc
	rst $38
	rlca
	inc bc
	inc bc
	rst $38
	nop
	inc b
	inc [hl]
	rlca
	add hl, bc
	rst $38
	rst $38
	ld bc, $0808
	dec b
	cp $01
	ld [bc], a
	add hl, bc
	add hl, bc
	add hl, bc
	cp $02
	inc bc
	ld b, d
	inc b
	ld [$ffff], sp
	inc b
	ld [de], a
	rst $00
	rlca
	ld [bc], a
	ld [de], a

jr_007_58ad:
	rst $00
	rlca
	inc bc
	ld [$0404], sp
	ld l, $40
	cp a
	ld e, b
	cp h
	ld e, b
	nop
	ld b, a
	ld e, c
	jp $3c6c


	push bc
	ld e, b
	db $dd
	ld e, b
	jp hl


	ld e, b
	nop
	sub l
	inc de
	and l
	xor e
	ld [hl], d
	add hl, de
	add d
	add hl, de
	add d
	rst $20
	ld d, b
	ld [$033e], sp
	call $2dc7
	call $3790
	jp $0f6a


	nop
	sub l
	inc de
	and l

jr_007_58e1:
	xor e
	ld a, a
	or l
	cp l
	call c, $e7d8
	ld d, a
	nop
	or e
	pop bc
	ret


	ld a, a
	ld d, h
	ld a, a
	sub $bf
	db $d3
	ret


	ld c, a
	jr nc, jr_007_58ad

	rst $10
	ld a, a
	or a
	ld a, a
	pop de
	dec l
	or [hl]
	cp h
	or d
	sub $51
	sub $bf
	db $d3
	ret


	ld a, a
	rst $18
	jp wcac9


	ld a, a
	set 0, h
	call nz, $ba4f
	or e
	or [hl]
	sbc $7f
	cp h
	ret nz

	ld a, a
	ld d, h
	jr nc, @-$28

	ld d, c
	cp a
	jr nc, jr_007_58e1

	ret


	jp z, wca7f

	call nc, $26b2
	ld c, a
	pop bc
	or [hl]
	rst $10
	ret


	push bc
	or d
	ld a, a
	ld e, l
	ret


	ld d, l
	or d
	or e
	cp d
	call nz, Call_007_7fca
	or a
	or [hl]
	sbc $e7
	ld d, c
	add hl, de
	xor h
	dec bc
	cp e
	or h
	ld a, a
	or c
	jp c, Jump_007_563a

	ld d, a
	ld a, [bc]
	ld [bc], a
	rlca

jr_007_594a:
	ld [bc], a
	inc bc
	rst $38
	rlca
	inc bc
	inc bc
	rst $38
	nop
	inc bc
	dec b
	add hl, bc
	ld [wd2ff], sp
	ld bc, $0935
	rlca
	rst $38
	db $d3
	ld [bc], a
	ld a, [bc]
	ld b, $05
	rst $38
	rst $38
	inc bc
	ld [de], a
	rst $00
	rlca
	ld [bc], a
	ld [de], a
	rst $00
	rlca
	inc bc
	ld [$0404], sp
	ld l, $40
	ld a, h
	ld e, c
	ld a, c
	ld e, c
	nop
	ld hl, sp+$59
	jp $3c6c


	add b
	ld e, c
	or a
	ld e, c
	nop
	ld d, h
	db $dd
	ld a, a
	cp a
	jr nc, jr_007_594a

	jp $b27f


	cp b
	call nz, wdc4f
	dec hl
	db $dd
	ld a, a
	or l
	ld a, $b4
	reti


	rst $20
	ld d, c
	cp h
	or [hl]
	cp h
	ld a, a
	set 0, h
	or [hl]
	rst $10
	ld a, a
	or l
	cp a
	call c, wc5d7
	cp c
	jp c, Jump_007_4f3a

	or l
	ld a, $b4
	push bc
	or d
	ld a, a
	call c, wd32b
	ld a, a
	or c
	reti


	cpl
	ld d, a
	nop
	ret z

	pop de
	ret c

	ld a, a
	inc [hl]
	cp b
	ld a, a
	call nc, $34b9
	ld a, a
	sbc l
	sbc d
	ld d, [hl]
	ld c, a
	ld d, h
	ret


	ld a, a
	ret nz

	or d
	pop bc
	ld [c], a
	or e
	ld h, $7f
	call c, $b2d9
	call nz, wc255
	or [hl]
	rst $08
	or h
	ld a, a
	call nc, $b2bd
	sub $55
	inc sp
	db $d3
	ld d, [hl]
	ld a, a
	or [hl]
	push bc
	rst $10
	dec l
	ld a, a
	call nz, wd9da
	ld d, l
	call c, $2cb9
	ldh [$7f], a
	push bc
	or d
	ret nc

	ret nz

	or d
	ld d, a
	ld a, [bc]
	ld [bc], a
	rlca
	ld [bc], a
	dec b
	rst $38
	rlca
	inc bc
	dec b
	rst $38
	nop
	ld [bc], a
	dec bc
	rlca
	ld b, $ff
	db $d3
	ld bc, $0904
	ld [$ffff], sp
	ld [bc], a
	ld [de], a
	rst $00
	rlca
	ld [bc], a
	ld [de], a
	rst $00
	rlca
	inc bc
	ld [$0404], sp
	ld c, [hl]
	ld b, b
	jr z, @+$5c

	inc h
	ld e, d
	nop
	ld [hld], a
	ld e, e
	call $3c6c
	ret


	ld l, $5a
	ld [$135a], a
	ld e, e
	ld [$e406], sp
	ld a, $1c
	call $3e9d
	and b
	jr z, jr_007_5a41

	ld hl, $5aa5
	call $3c79
	jr jr_007_5a47

jr_007_5a41:
	ld hl, $5a4a
	call $3c79

jr_007_5a47:
	jp $0f6a


	nop
	cp b
	or e
	ld d, [hl]
	rst $20
	ld a, a
	ld e, [hl]
	jp nc, $51e7

	or l
	jp c, Jump_007_7fc9

	or d
	or h
	db $dd
	ld c, a
	cp d
	sbc $c5
	add $7f
	cp h
	pop bc
	rst $08
	or d
	call nc, wdf26
	jp $51e7


	rst $00
	cp l
	rst $08
	jp c, Jump_007_7fc0

	ld e, h
	jp z, $9d4f

	xor e
	add [hl]
	db $e3
	call nc, $8a7f
	xor e
	inc de
	add $51

jr_007_5a7f:
	inc l
	jp nc, wc6de

	ld a, a
	or c
	push bc
	db $dd
	ld a, a
	adc $d9
	ld a, a
	call c, wdd2b
	ld c, a
	or l
	cp h
	or h
	reti


	ld a, a
	db $d3
	ret


jr_007_5a96:
	jr nc, jr_007_5a7f

	ld d, c
	or c
	jp c, Jump_007_7fca

	ret nz

	or [hl]
	or [hl]
	rst $18
	ret nz

	ret


	add $57
	nop
	rst $00
	cp l
	rst $08
	jp c, Jump_007_7fc0

	db $d3
	ret


	jp z, wd34f

	inc [hl]
	rst $18
	jp $ba7f


	push bc
	or d
	call nz, $b17f
	or a
	rst $10
	jp nc, $51c3

	or e
	pop bc
	ret


	ld a, a
	ld [de], a
	or b
	rlca
	rrca
	add $ca
	ld c, a
	or a
	push bc
	ld h, $c6
	ld a, a
	cp a
	jr nc, jr_007_5a96

	push bc
	ld h, $d7
	ld d, c
	or c
	push bc
	adc $d8
	db $dd
	ld c, a
	or l
	cp h
	or h
	reti


	ld a, a
	cp d
	call nz, Call_007_7fc6
	cp h
	ret nz

	sub $57
	nop
	ld e, [hl]
	ld d, [hl]
	rst $20
	ld c, a
	ld d, h
	add $7f
	or c
	push bc
	db $dd
	ld a, a
	adc $d7
	cp [hl]
	jp $b751


	rst $18
	call nz, wcf7f
	ret nz

	ld c, a
	call c, $30d9
	cp b
	ret nc

	db $dd
	ld a, a
	or [hl]
	sbc $26
	or h
	jp wc9d9


	sub $e7
	ld d, a
	nop
	or [hl]
	dec a
	add $7f
	or c
	push bc
	ld h, $7f
	or c
	or d
	jp $e7d9


	ld c, a
	cp d
	cp d
	or [hl]
	rst $10
	ld a, a
	cp a
	call nz, Call_007_7fc6
	inc sp
	rst $10
	jp c, $2fd9

	rst $20
	ld d, a
	ld a, [bc]
	inc bc
	rlca
	ld [bc], a
	nop
	rst $38
	rlca
	inc bc
	nop
	rst $38
	nop
	inc bc
	rlca
	rst $38
	ld bc, $0300
	inc bc
	ld [bc], a
	daa
	dec b
	ld b, $ff
	ret nc

	ld bc, $0a0d
	add hl, bc
	cp $02
	ld [bc], a
	ld [de], a
	rst $00
	rlca
	ld [bc], a
	ld [de], a
	rst $00
	rlca
	inc bc
	db $f4
	add $00
	inc bc
	ld [$0404], sp
	ld l, $40
	ld l, h
	ld e, e
	ld l, c
	ld e, e
	nop
	pop bc
	ld e, e
	jp $3c6c


	ld [hl], b
	ld e, e
	or e
	ld e, e
	nop
	or e
	pop bc
	ret


	ld a, a
	inc l
	or d
	cp e
	rst $08
	ld c, a
	ld d, h
	ret


	ld a, a
	cp d
	or e
	or [hl]
	sbc $c6
	ld a, a
	cp d
	rst $18
	jp wc9d9


	ld d, c
	ld a, $b3
	call nc, $544f
	ld a, a
	dec l
	or [hl]
	sbc $7f
	or c
	jp nz, wc3d2

	reti


	push bc
	rst $10
	ld d, c
	cp d
	or e
	or [hl]
	sbc $c9
	ld a, a
	or c
	or d
	jp $bc4f


	jp $b17f


	add hl, hl
	jp $b87f


	jp c, $b6d9

	cp h
	rst $10
	ld d, a
	ld [$063e], sp
	ld [wcd3d], a
	ld a, $54
	call $3e9d
	jp $0f6a


	ld a, [bc]
	ld [bc], a
	rlca
	ld [bc], a
	ld bc, $07ff
	inc bc
	ld bc, $00ff
	ld [bc], a
	jr z, jr_007_5bd7

	add hl, bc
	rst $38
	jp nc, $0b01

	ld b, $05
	rst $38

jr_007_5bd7:
	rst $38
	ld [bc], a
	ld [de], a
	rst $00
	rlca
	ld [bc], a
	ld [de], a
	rst $00
	rlca
	inc bc
	dec d
	inc b
	inc b
	sub l
	ld e, [hl]
	ldh a, [$5b]
	db $ed
	ld e, e
	nop
	ld l, a
	ld e, [hl]
	jp $3c6c


	or $5b
	db $dd
	ld e, l
	add hl, de
	ld e, [hl]
	ld [wdefa], sp
	sub $cb
	ld b, a
	jr z, jr_007_5c07

	ld hl, $5d7d
	call $3c79
	jp Jump_007_5c9d


jr_007_5c07:
	ld b, $2d
	call $34dd
	jr z, jr_007_5c3d

	ld hl, $5d1c
	call $3c79
	ld bc, $0601
	call $3e5e
	jr nc, jr_007_5c35

	ld a, $2d
	ldh [$db], a
	ld b, $05
	ld hl, $7fae
	call $3620
	ld hl, wd6de
	set 0, [hl]
	ld hl, $5d4a
	call $3c79
	jr jr_007_5c9d

jr_007_5c35:
	ld hl, $5dcc
	call $3c79
	jr jr_007_5c9d

jr_007_5c3d:
	ld hl, $5cb4
	call $3c79
	xor a
	ld [wcc26], a
	ld [wcc2a], a
	ld a, $03
	ld [wcc29], a
	ld a, $01
	ld [wcc28], a
	ld a, $02
	ld [wcc24], a
	ld a, $01
	ld [wcc25], a
	ld hl, wd6af
	set 6, [hl]
	ld hl, wc3a0
	ld b, $04
	ld c, $0f
	call $03d2
	call $0ebd
	ld hl, wc3ca
	ld de, $5ca0
	call $0405
	ld hl, $5ce9
	call $3c79
	call $3b08
	bit 1, a
	jr nz, jr_007_5c97

	ld hl, wd6af
	res 6, [hl]
	ld a, [wcc26]
	and a
	jr nz, jr_007_5c97

	ld hl, $5d05
	call $3c79

jr_007_5c97:
	ld hl, $5d65
	call $3c79

Jump_007_5c9d:
jr_007_5c9d:
	jp $0f6a


	inc l
	jp $bcde


	ldh [$7f], a
	rst $30
	or $f6
	or $f6
	or $f6
	ldh a, [$4e]
	or [hl]
	call c, $b2c5
	ld d, b
	nop
	jp z, Jump_007_7fb2

	jp z, $e7b2

	ld a, a
	or d
	rst $10
	rst $18
	cp h
	ldh [$b2], a
	rst $20
	ld c, a
	cp d
	cp d
	jp z, $9e7f

	and l
	add a
	and [hl]
	ld a, a
	inc l
	jp $bcde


	ldh [$d4], a
	rst $20
	ld d, c
	adc $d8
	jr nc, @-$42

	db $d3
	ret


	ld a, a
	or c
	reti


	sub $e3
	rst $20
	ld c, a
	or [hl]
	rst $18
	jp $e3b8


	and $58
	nop
	or [hl]
	rst $18
	cp d
	or d
	or d
	ld a, a
	inc l
	jp $bcde


	ldh [$7f], a
	or c
	reti


	cp c
	inc [hl]
	ld c, a
	or [hl]
	rst $18
	jp $b27f


	or [hl]
	push bc
	or d
	and $57
	nop
	or l
	or a
	ldh [hLoadedROMBank], a
	cp e
	sbc $e7
	ld c, a
	or l
	or [hl]
	ret z

	ld h, $7f
	ret nz

	ret c

	rst $08
	cp [hl]
	sbc $c5
	db $e3
	rst $20
	ld e, b
	nop
	or c
	db $e3
	ld a, a
	cp a
	jp c, $56ca

	rst $20
	ld d, c
	inc l
	jp $bcde


	ldh [$7f], a
	res 6, a
	or [hl]
	or h
	cp c
	sbc $e7
	ld d, c
	ld d, [hl]
	call c, wd8b6
	rst $08
	cp h
	ret nz

	rst $20
	ld c, a
	cp e
	cp e
	rst $18
	ld a, a
	cp d
	jp c, Jump_007_7fdd

	inc [hl]
	or e
	cpl
	rst $20
	ld e, b
	nop
	ld d, d
	jp z, wcb7f

	or a
	or [hl]
	or h
	cp c
	sbc $33
	ld c, a
	inc l
	jp $bcde


	ldh [$dd], a
	ld a, a
	db $d3
	rst $10
	rst $18
	ret nz

	rst $20
	ld d, b
	ld de, $0050
	rst $08
	ret nz

	ld a, a
	sub $db
	cp h
	cp b
	rst $20
	ld c, a
	or c
	ret c

	ld h, $c4
	or e
	ld a, a
	ld a, [hli]
	dec hl
	or d
	rst $08
	cp h
	ret nz

	rst $20
	ld d, a
	nop
	call nc, $7fb1
	cp d
	sbc $c1
	jp z, Jump_007_7fe7

	inc l
	jp $bcde


	ldh [$c9], a
	ld c, a
	ret


	ret c

	ld a, [hli]
	cp d
	pop bc
	jp z, $b27f

	or [hl]
	ld h, $7f
	inc sp
	cp l
	and $51
	or c
	ret


	ld a, a
	inc l
	jp $bcde


	ldh [$7f], a
	push bc
	rst $10
	ld c, a
	adc d
	add c
	add a
	ret c

	xor e
	rlca
	ld a, a
	xor b
	db $e3
	inc de
	jp z, wd37f

	pop bc
	db $db
	sbc $55
	inc [hl]
	or e
	cp b
	jp nz, $307f

	rst $18
	jp wca7f


	cp h
	jp c, $e0c1

	or e
	sub $e7
	ld d, a
	nop
	inc l
	jp $bcde


	ldh [$dd], a
	ld a, a
	db $d3
	rst $18
	jp $b9b2


	push bc
	or d
	sub $57
	ld [$e721], sp
	ld e, l
	call $3c79
	jp $0f6a


	nop
	or e
	db $e3
	sbc $56
	rst $20
	ld c, a
	call nc, Call_007_44df
	ret c

	ld a, a
	sbc l
	sbc l
	sub b
	xor l
	ret c

	ld a, a
	or [hl]
	cp h
	rst $10
	and $51
	sbc l
	add d
	xor e
	sub d
	xor e
	ld a, a
	add hl, de
	add c
	add a
	add $4f
	or [hl]
	or d
	db $d3
	ret


	add l
	add hl, bc
	ld a, a
	add $b1
	call c, $b2c5
	ld a, a
	db $d3
	sbc $57
	ld [wdefa], sp
	sub $cb
	ld b, a
	ld hl, $5e55
	jr nz, jr_007_5e27

	ld hl, $5e2d

jr_007_5e27:
	call $3c79
	jp $0f6a


	nop
	cp d
	ret


	ld a, a
	ret nc

	cp [hl]
	ret


	ld a, a
	inc l
	jp $bcde


	ldh [rVBK], a
	db $d3
	ret


	jp z, $b27f

	or d
	cp c
	inc [hl]
	ld a, a
	ret nz

	or [hl]
	or d
	sub $e7
	ld d, l
	ld a, $b8
	add $ca
	ld a, a
	or [hl]
	or h
	push bc
	or d
	ret z

	ld d, a
	nop
	or a
	ret nc

	ret


	ld a, a
	inc l
	jp $bcde


	ldh [$7f], a
	or [hl]
	rst $18
	cp d
	or d
	or d
	ld c, a
	or e
	rst $10
	call nc, $bccf
	or d
	push bc
	or c
	ld d, a
	ld c, $02
	rlca
	ld [bc], a
	inc b
	rst $38
	rlca
	inc bc
	inc b
	rst $38
	nop
	inc bc
	dec d
	ld b, $0a
	rst $38

Jump_007_5e7f:
	rst $38
	ld bc, $0a1c
	add hl, bc
	cp $01
	ld [bc], a
	inc b
	rlca
	dec b
	rst $38
	pop de
	inc bc
	ld [de], a
	rst $00
	rlca
	ld [bc], a
	ld [de], a
	rst $00
	rlca
	inc bc
	inc b
	dec b
	ld [bc], a
	inc bc
	ld [$0608], sp
	rlca
	dec bc
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld bc, $090a
	ld [$0404], sp
	ld l, $40
	or l
	ld e, [hl]
	or c
	ld e, [hl]
	nop
	dec [hl]
	ld h, c
	call $3c6c
	ret


	pop bc
	ld e, [hl]
	jr nz, jr_007_5f18

	and [hl]
	ld e, a
	cp e
	ld e, a
	pop de
	ld e, a
	push af
	ld h, b
	ld [$5ffa], sp
	rst $10
	bit 7, a
	jr nz, jr_007_5ed1

	ld hl, $5eda
	call $3c79
	jr jr_007_5ed7

jr_007_5ed1:
	ld hl, $5eff
	call $3c79

jr_007_5ed7:
	jp $0f6a


	nop
	or l
	rst $18
	or [hl]
	cp h
	or d
	push bc
	db $e3
	rst $20
	ld c, a
	sbc e
	dec bc
	ld a, a

jr_007_5ee7:
	db $db
	or e
	inc l
	sbc $26
	ld a, a
	or d
	push bc
	or d
	cpl
	rst $20
	ld d, l
	inc [hl]
	cp d
	add $7f
	or d
	rst $18
	ret nz

	ret


	or [hl]
	push bc
	and $57
	nop
	sbc e
	dec bc
	ld a, a
	db $db
	or e
	inc l
	sbc $7f
	add l
	and l
	add l
	and l
	ret


	ld a, a
	jp c, wddb2

	ld c, a
	push bc
	jr z, @-$43

	jp nc, Jump_007_7fc6

jr_007_5f18:
	or d
	rst $18
	jp wdec0


	jr nc, jr_007_5ee7

	ld d, a
	ld [$5ffa], sp
	rst $10
	bit 7, a
	jr nz, jr_007_5f30

	ld hl, $5f39
	call $3c79
	jr jr_007_5f36

jr_007_5f30:
	ld hl, $5f82
	call $3c79

jr_007_5f36:
	jp $0f6a


	nop
	cp d
	cp d
	jp z, wd37f

	call nz, wc4d3
	ld c, a
	sbc e
	dec bc
	ld a, a
	inc l
	or d
	pop bc
	ldh [$de], a
	ret


	ld a, a
	or l
	or e
	pop bc
	ld a, a
	push bc
	ret


	ld d, c
	inc l
	or d
	pop bc
	ldh [$de], a
	ld a, a
	call nc, $bcbb
	or d
	ret


	sub $e7
	ld d, c
	cp l
	jp wdad7


	ret nz

	ret c

	ld a, a
	or [hl]
	or h
	push bc
	cp b
	push bc
	rst $18
	ret nz

	ld c, a
	ld d, h
	db $dd
	ld a, a
	or c
	dec l
	or [hl]
	rst $18
	jp $be55


	call c, $bc7f
	jp wc9d9


	ld d, a
	nop
	jp z, $7fb1

	or c
	rst $18
	ret nz

	or [hl]

jr_007_5f8a:
	or d
	ld d, [hl]
	rst $20
	ld c, a
	ld d, h
	rst $18
	jp $307f


	rst $18
	cp d
	ld a, a
	cp l
	reti


	call nz, $b155
	rst $18
	ret nz

	or [hl]
	or d
	sbc $30
	sub $c8
	db $e3
	rst $20
	ld d, a
	nop
	adc c
	rrca
	xor h
	add a
	ld [hl], d
	jr z, jr_007_5f8a

	rst $18
	ld b, h
	rst $20
	ld d, b
	ld [$2f3e], sp
	call $2dc7
	jp $0f6a


	nop
	sub l
	inc de
	ret c

	db $e3
	sbc b
	ld [hl], d
	ld h, $78
	db $e3
	rst $18
	rst $20
	ld d, b
	ld [$a73e], sp
	call $2dc7
	jp $0f6a


	ld [$ebfa], sp
	sub $cb
	ld b, a
	jr nz, jr_007_5ffc

	ld hl, $6005
	call $3c79
	ld bc, $4901
	call $3e5e
	jr nc, jr_007_5ff4

	ld hl, $6066
	call $3c79
	ld hl, wd6eb
	set 0, [hl]
	jr jr_007_6002

jr_007_5ff4:
	ld hl, $60c8
	call $3c79
	jr jr_007_6002

jr_007_5ffc:
	ld hl, $60d5
	call $3c79

jr_007_6002:
	jp $0f6a


	nop
	sbc e
	dec bc
	ld [hl], d
	cp e
	jp $527f


	cp b
	sbc $56
	ld d, c
	ld d, h
	dec l
	or [hl]
	sbc $7f
	ld [hld], a
	cp b
	ret c

	jp z, $544f

	add $7f
	ret nz

	or d
	cp h
	jp wcc55


	or [hl]
	or d
	ld a, a
	or c
	or d
	inc l
	ld [c], a
	or e
	ld h, $7f
	push bc
	or d
	call nz, $b655
	sbc $be
	or d
	jp z, wc07f

	or d
	call Call_007_7fde
	pop de
	dec l
	or [hl]
	cp h
	or d
	ld d, c
	cp a
	ret


	ld a, a
	ret nz

	cp l
	cp c
	add $7f
	push bc
	reti


	or [hl]
	ld a, a
	call c, wd7b6
	sbc $26
	ld c, a
	cp d
	jp c, Jump_007_7fdd

	or c
	push bc
	ret nz

	add $7f
	cp e
	cp h
	or c
	add hl, hl
	sub $b3
	rst $20
	ld e, b
	nop
	ld d, d
	jp z, $9b7f

	dec bc
	ld a, a
	db $db
	or e
	inc l
	sbc $b6
	rst $10
	ld c, a
	ld d, b
	ld bc, wcf45
	nop
	db $dd
	ld a, a
	db $d3
	rst $10
	rst $18
	ret nz

	rst $20
	ld d, b
	ld de, $5100
	ld d, h
	ret


	call z, wddb4
	ld a, a
	call z, wc4b8
	ld c, a
	rlca
	db $e3
	rlca
	db $e3
	ld a, a
	ret z

	pop de
	rst $18
	jp Jump_007_7fd9


jr_007_6099:
	ld d, h
	inc sp
	db $d3
	ld d, l
	add hl, hl
	sbc $b7
	ld h, $7f
	call c, $c3b2
	ld a, a
	call nz, $b53b
	or a
	reti


	rst $20
	ld d, c
	ld d, h
	ld h, $7f
	or d
	ret z

	pop de
	ret c

	ld a, a
	cp h
	jp $ba4f


	rst $08
	rst $18
	ret nz

	rst $10
	ld a, a
	jp nz, wdfb6

	jp wSpriteCurPosY


	push bc
	cp e
	or d
	ld d, a
	nop
	add $d3
	jp nz, $7f26

	or d
	rst $18
	ld b, h
	or d
	jr nc, jr_007_6099

	ld d, a
	nop
	sbc e
	dec bc
	ld [hl], d
	cp d
	ret


	or c
	or d
	jr nc, jr_007_615e

	cp e
	cp h
	or c
	add hl, hl
	ret nz

	ld c, a
	call z, wcab4
	ld a, a
	call nc, wc6b8
	ld a, a
	ret nz

	rst $18
	jp $b6d9


	push bc
	and $57
	nop
	ld a, [hli]
	or e
	or [hl]
	ld a, a
	cp h
	ld [c], a
	or e
	set 3, [hl]
	ld h, $7f
	or c
	ret nz

	reti


	rst $20
	ld c, a
	add hl, hl
	rst $18
	or [hl]
	sbc $7f
	ld d, h
	ret


	ld a, a
	call nz, $55d3
	ld a, [de]
	xor h
	rlca
	ld [hl], h
	ld b, d
	and a
	dec c
	xor e
	sub e
	rst $20
	ld d, c
	ld d, [hl]
	or l
	or e
	ld a, $7f
	adc $b3
	adc $b3
	jp z, Jump_007_5651

	or c
	rst $10
	ld a, a
	or a
	ret c

	call nz, $c3df
	ld a, a
	or c
	reti


	rst $20
	ld d, a
	ld a, [bc]
	ld [bc], a
	rlca
	ld [bc], a
	ld [bc], a
	rst $38
	rlca
	inc bc
	ld [bc], a
	rst $38

jr_007_613f:
	nop
	ld b, $0c
	add hl, bc
	rlca
	rst $38
	rst $38
	ld bc, $0708
	ld a, [bc]
	rst $38
	ret nc

	ld [bc], a
	dec b
	ld [$ff0a], sp
	pop de
	inc bc
	dec b
	rlca
	dec b
	rst $38
	rst $38
	inc b
	ld d, $05
	rlca
	rst $38
	rst $38

jr_007_615e:
	dec b
	ld b, c
	rlca
	rlca
	rst $38
	rst $38
	ld b, $12
	rst $00
	rlca
	ld [bc], a
	ld [de], a
	rst $00
	rlca
	inc bc
	ld [$0404], sp
	ld l, $40
	ld a, l
	ld h, c
	ld a, c
	ld h, c
	nop
	add hl, hl
	ld h, d
	call $3c6c
	ret


	add c
	ld h, c
	sbc b
	ld h, c
	nop
	add l
	and l
	add l
	and l
	ld [hl], d
	or a
	ldh [$d9], a
	jr z, jr_007_613f

	db $e3
	rst $18
	ld d, b
	ld [$113e], sp
	call $2dc7
	jp $0f6a


	ld [$5ffa], sp
	rst $10
	bit 7, a
	jr nz, jr_007_61a8

	ld hl, $61b1
	call $3c79
	jr jr_007_61ae

jr_007_61a8:
	ld hl, $61f6
	call $3c79

jr_007_61ae:
	jp $0f6a


	nop
	call c, $bcc0
	ld d, [hl]
	rst $20
	ld c, a
	ld e, [hl]
	db $dd
	ld a, a
	push de
	reti


	cp e
	push bc
	or d
	call c, $51e7
	or c
	cp a
	cp d
	add $7f
	or d
	reti


	ld a, a
	add l
	and l
	add l
	and l
	ret


	ld c, a
	or l
	or [hl]
	or c
	cp e
	sbc $26
	ld d, [hl]
	ld d, c
	ld e, [hl]
	add $7f
	jp nz, wcfb6

	rst $18
	jp wc64f


	add hl, hl
	reti


	ld a, a
	call nz, $e1c1
	or e

jr_007_61ea:
	ld d, l
	cp d
	db $db
	cp e
	jp c, wc17f

	ldh [$df], a
	ret nz

	ret


	ld d, a
	nop
	ld d, h
	ld a, a
	adc a
	xor c
	db $e3
	ret


	ld c, a
	push de
	or e
	jp c, Jump_007_7fb2

	inc sp
	push bc
	cp b
	ld a, a
	push bc
	rst $18
	ret nz

	rst $18
	jp $51e7


	jr nc, jr_007_61ea

	or [hl]
	ld h, $7f
	rst $08
	sub $b4
	reti


	ld a, a
	ret nz

	rst $08
	cp h
	or d
	db $dd
	ld c, a
	cp h
	dec l
	jp nc, Jump_007_7fc3

	cp b
	jp c, wc9c0

	ret z

	ld d, a
	ld a, [bc]
	ld [bc], a
	rlca
	ld [bc], a
	inc b
	rst $38
	rlca
	inc bc
	inc b
	rst $38
	nop
	ld [bc], a
	dec b
	add hl, bc
	rlca
	rst $38
	pop de
	ld bc, $081d
	ld b, $ff
	db $d3
	ld [bc], a
	ld [de], a
	rst $00
	rlca
	ld [bc], a
	ld [de], a
	rst $00
	rlca
	inc bc
	ld [$0404], sp
	ld l, $40
	sub a
	ld h, d
	ld d, l
	ld h, d
	nop
	ld b, d
	ld h, h
	jp $3c6c


Call_007_6258:
	call $3c79
	call $3636
	ld a, [wcc26]
	and a
	ret


Call_007_6263:
	ld hl, wd233
	ld bc, $0006
	ld a, [wcf79]
	call $3ad1
	ld de, wd11d
	ld c, $06
	call Call_007_628a
	jr c, jr_007_6295

	ld hl, wd137
	ld bc, $002c
	ld a, [wcf79]
	call $3ad1
	ld de, wd2d8
	ld c, $02

Call_007_628a:
jr_007_628a:
	ld a, [de]
	cp [hl]
	jr nz, jr_007_6295

	inc hl
	inc de
	dec c
	jr nz, jr_007_628a

	and a
	ret


jr_007_6295:
	scf
	ret


	sbc c
	ld h, d
	ld [$3ecd], sp
	scf
	ld hl, $62f3
	call Call_007_6258
	jr nz, jr_007_62ee

	ld hl, $633a
	call $3c79
	xor a
	ld [wd05a], a
	ld [wcfb2], a
	call $2df3
	push af
	call $3e04
	call $3dee
	call $0b3c
	pop af
	jr c, jr_007_62ee

	call $2fab
	call Call_007_6263
	ld hl, $63fb
	jr c, jr_007_62e8

	ld hl, $6351
	call Call_007_6258
	jr nz, jr_007_62ee

	ld hl, $639e
	call $3c79
	ld b, $01
	ld hl, $64fa
	call $3620
	jr c, jr_007_62ee

	ld hl, $63b8

jr_007_62e8:
	call $3c79
	jp $0f6a


jr_007_62ee:
	ld hl, $63e8
	jr jr_007_62e8

	nop
	jp z, Jump_007_7fb2

	jp z, $e7b2

	ld c, a
	call c, $bcc0
	jp z, $be7f

	or d
	jp nc, Jump_007_7fb2

	jp z, $30de

	sbc $bc
	ld d, l
	or d
	or e
	push bc
	jp c, $7f3a

	push bc
	rst $08
	or h
	ret


	ld a, a
	or e
	rst $10
	push bc
	or d
	inc sp
	cp l
	ld d, c
	jp z, Jump_007_7fb2

	or c
	push bc
	ret nz

	ret


	ld a, a
	ld d, h
	ret


	ld c, a
	sub l
	xor h
	add a
	sub a
	db $e3
	sbc a
	ld a, a
	or e
	rst $10
	push bc
	rst $18
	jp $b17f


	add hl, hl
	reti


	sub $57
	nop
	inc [hl]
	ret


	ld a, a
	ld d, h
	ret


	ld c, a
	sub l
	xor h
	add a
	sub a
	db $e3
	sbc a
	db $dd
	ld a, a
	or e
	rst $10
	push bc
	or e
	or [hl]
	ret z

	and $58
	nop
	or e
	db $e3
	pop de
	ld a, a
	ld d, b
	ld bc, wcd68
	nop
	or [hl]
	ld d, [hl]
	ld c, a
	push bc
	or [hl]
	push bc
	or [hl]
	ld d, l
	or d
	or d
	ld a, a
	sub l
	xor h
	add a
	sub a
	db $e3
	sbc a
	db $dd
	ld a, a
	jp nz, wc0b9

	ret z

	ld d, c
	inc sp
	db $d3
	ret z

	db $e3
	ld c, a
	db $d3
	or e
	ld a, a
	cp l
	cp d
	cp h
	jr nc, @-$45

	ld a, a
	or d
	or d
	ld a, a
	push bc
	rst $08
	or h
	ld d, c
	call c, $bcc0
	ld h, $7f
	jp nz, wc3b9

	ld a, a
	or c
	add hl, hl
	sub $b3
	or [hl]
	and $4f
	inc [hl]
	or e
	or [hl]
	push bc
	and $57
	nop
	cp a
	or e
	or [hl]
	ld a, a
	inc sp
	jp z, $344f

	sbc $c5
	ld a, a
	sub l
	xor h
	add a
	sub a
	db $e3
	sbc a
	add $7f
	cp h
	sub $b3

jr_007_63b5:
	or [hl]
	push bc
	ld e, b
	nop
	sub $bc
	ld a, a
	cp d
	jp c, wd7b6

	ld c, a
	cp d
	ret


	ld a, a
	ld d, h
	jp z, $507f

	ld bc, wcee4
	nop
	jr nc, jr_007_63b5

	ld d, c
	rst $08
	or h
	sub $d8
	ld a, a
	or d
	or d
	ld a, a
	push bc
	rst $08
	or h
	ld a, a
	inc l
	ldh [$c5], a
	or d
	or [hl]
	ld c, a
	sub $b6
	rst $18
	ret nz

	push bc
	rst $20
	ld d, a
	nop
	cp a
	or e
	or [hl]
	ld c, a
	call c, wdfb6
	ret nz

	ld a, a
	rst $08
	ret nz

	ld a, a
	or a
	push bc
	cp e
	or d
	sub $57
	nop
	or e
	pop de
	ld a, a
	ld d, b
	ld bc, wcd68
	nop
	or [hl]
	rst $20
	ld c, a
	cp d
	jp c, Jump_007_7fca

	cp l
	ld a, [hld]
	rst $10
	cp h
	or d
	ld a, a
	sub l
	xor h
	add a
	sub a
	db $e3
	sbc a
	jr nc, jr_007_646e

	cp c
	pop bc
	ret


	ld a, a
	jp nz, wd6b9

	or e
	db $d3
	push bc
	or d
	rst $20
	ld d, c
	cp d
	jp c, wd7b6

	db $d3
	ld a, a
	ld d, b
	ld bc, wcd68
	nop
	db $dd
	ld c, a
	or [hl]
	call c, $26b2
	rst $18
	jp $b17f


	add hl, hl
	push bc
	cp e
	or d
	sub $e7
	ld d, a
	ld a, [bc]
	ld [bc], a
	rlca
	ld [bc], a
	dec b
	rst $38
	rlca
	inc bc
	dec b
	rst $38
	nop
	ld bc, $072b
	add hl, bc
	rst $38
	jp nc, $1201

	rst $00
	rlca
	ld [bc], a
	ld [de], a
	rst $00
	rlca
	inc bc
	ld [$0404], sp
	ld l, $40
	ld l, h
	ld h, h
	ld l, b
	ld h, h
	nop
	push af
	ld h, h
	call $3c6c
	ret


	ld [hl], d
	ld h, h

jr_007_646e:
	sub a
	ld h, h
	xor [hl]
	ld h, h
	nop
	or a
	ret nz

	ret


	ld a, a
	and d
	sbc l
	dec de
	add [hl]
	adc e
	sub d
	or b
	rst $08
	inc sp
	ld c, a
	ld b, e
	xor h
	ld b, e
	add $7f
	jp wd026


	db $dd
	ld d, l
	call nz, $b934
	jp wd37f


	rst $10
	or e
	ret


	cp e
	rst $20
	ld d, a
	nop
	ld b, e
	xor h
	ld b, e
	ld [hl], d
	add a
	and [hl]
	xor h
	add a
	db $e3
	ld d, b
	ld [$243e], sp
	call $2dc7
	call $3790
	jp $0f6a


	nop
	ld d, [hl]
	ld b, c
	ld b, c
	pop bc
	ldh [$de], a
	ld c, a
	cp d
	sbc $34
	ld a, a
	or c
	cp a
	dec sp
	add $7f
	or d
	or a
	ret nz

	or d
	ld a, a
	inc sp
	cp l
	ld d, c
	and d
	sbc l
	dec de
	add [hl]
	ld a, a
	adc e
	sub d
	or b
	inc sp
	jp z, Jump_007_5e7f

	ret


	ld c, a
	inc l
	cp c
	sbc $26
	ld a, a
	or l
	or l
	or d
	ld a, a
	cp a
	or e
	inc sp
	cp l
	ret z

	ld d, c
	add a
	sub b
	add hl, de
	jp z, $bf7f

	or e
	inc sp
	db $d3
	ld a, a
	or c
	ret c

	rst $08
	cp [hl]
	sbc $56
	ld d, a
	ld a, [bc]
	ld [bc], a
	rlca
	ld [bc], a
	inc b
	rst $38
	rlca
	inc bc
	inc b
	rst $38
	nop
	inc bc
	inc b
	rlca
	add hl, bc
	rst $38
	jp nc, $0901

	add hl, bc
	rlca
	cp $02
	ld [bc], a
	ld b, b
	rlca
	ld [$ffff], sp
	inc bc
	ld [de], a
	rst $00
	rlca
	ld [bc], a
	ld [de], a
	rst $00
	rlca
	inc bc
	ld c, $06
	ld c, $ac
	ld h, [hl]
	sub h
	ld h, [hl]
	daa
	ld h, l
	nop
	sbc b
	ld h, [hl]
	call $3c6c
	ld hl, wd782
	bit 4, [hl]
	jr nz, jr_007_6562

	bit 0, [hl]
	ret z

	ld a, [wd3ae]
	cp $01
	ret nz

	bit 2, [hl]
	jp z, Jump_007_6570

	set 4, [hl]
	call $3e07
	ld hl, wd6af
	set 7, [hl]
	ld hl, wccd3
	ld a, $40
	ld [hli], a
	ld [hli], a
	ld [hl], a
	ld a, $03
	ld [wcd38], a
	xor a
	ld [wc206], a
	ld [wcd3b], a
	dec a
	ld [wcd66], a
	ret


jr_007_6562:
	bit 5, [hl]
	ret nz

	ld a, [wcd38]
	and a
	ret nz

	ld [wcd66], a
	set 5, [hl]
	ret


Jump_007_6570:
	set 2, [hl]
	ld a, $ff
	ld [wcd66], a
	ld [wc0ee], a
	call $0e45
	ld c, $1f
	ld a, $d6
	call $0e35
	ld b, $1e
	ld hl, $5fec
	call $3620
	xor a
	ld [wc102], a
	ld c, $78
	call $3781
	ld b, $9c
	call $0386
	ld hl, wc468
	ld bc, $0078
	ld a, $14
	call $372a
	ld a, $01
	ldh [$ba], a
	call $3e07
	xor a
	ldh [$ba], a
	ld [wcd3d], a
	ldh [rOBP1], a
	ld a, $58
	ld [wcd3e], a
	ld hl, wd4a5
	ld c, [hl]
	inc hl
	ld b, [hl]
	push bc
	push hl
	ld a, $a9
	call $3788
	ld a, $ff
	ld [wcfb2], a
	ld d, $00
	ld e, $08

jr_007_65cf:
	ld hl, $0002
	add hl, bc
	ld a, l
	ld [wd4a5], a
	ld a, h
	ld [wd4a6], a
	push hl
	push de
	call $28e4
	call Call_007_662e
	pop de
	ld b, $10

jr_007_65e6:
	call Call_007_6617
	ld c, $08

jr_007_65eb:
	call Call_007_6651
	dec c
	jr nz, jr_007_65eb

	inc d
	dec b
	jr nz, jr_007_65e6

	pop bc
	dec e
	jr nz, jr_007_65cf

	xor a
	ldh [rWY], a
	ldh [$b0], a
	call Call_007_6669
	ld a, $90
	ldh [$b0], a
	ld a, $01
	ld [wcfb2], a
	pop hl
	pop bc
	ld [hl], b
	dec hl
	ld [hl], c
	call $23ae
	ld hl, wd32d
	dec [hl]
	ret


Call_007_6617:
	push bc
	push de
	ld hl, wOAMBuffer + $11
	ld a, [wcd3d]
	swap a
	ld c, a
	ld de, $0004

jr_007_6625:
	inc [hl]
	inc [hl]
	add hl, de
	dec c
	jr nz, jr_007_6625

	pop de
	pop bc
	ret


Call_007_662e:
	ld a, [wcd3e]
	sub $10
	ld [wcd3e], a
	ld c, a
	ld b, $64
	ld a, [wcd3d]
	inc a
	ld [wcd3d], a
	ld a, $01
	ld de, $6649
	call $3ae1
	ret


	db $fc
	db $10
	db $fd
	db $10
	cp $10
	rst $38
	db $10

Call_007_6651:
	ld h, d
	ld l, $50
	call Call_007_665b
	ld h, $00
	ld l, $80

Call_007_665b:
jr_007_665b:
	ldh a, [rLY]
	cp l
	jr nz, jr_007_665b

	ld a, h
	ldh [rSCX], a

jr_007_6663:
	ldh a, [rLY]
	cp h
	jr z, jr_007_6663

	ret


Call_007_6669:
	ld hl, wcc5b
	ld bc, $00b4
	ld a, $14
	call $372a
	ld hl, $9940
	ld de, wcc5b
	ld bc, $000c
	call $02dd
	ld hl, wc754
	ld a, $0d
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hl], a
	ld a, $a9
	call $0e45
	ld c, $78
	call $3781
	ret


	sub [hl]
	ld h, [hl]
	nop
	ld d, a
	rrca
	ld [bc], a
	nop
	ld c, $05
	rst $38
	ld [bc], a
	ld c, $01
	ld e, a
	nop
	nop
	inc b
	rst $00
	nop
	ld c, $18
	rst $00
	ld [bc], a
	ld c, $0e
	inc c
	inc c
	inc c
	inc c
	inc c
	ld d, $15
	inc c
	inc c
	inc bc
	inc c
	inc c
	ld c, $13
	ld bc, $0101
	ld bc, $0504
	ld b, $07
	ld bc, $0101
	ld bc, $110c
	dec c
	dec c
	dec c
	dec c
	ld [$0a09], sp
	dec bc
	dec c
	dec c
	dec c
	dec c
	inc c
	ld de, $0d0d
	dec c
	dec c
	dec c
	dec c
	dec c
	dec c
	dec c
	dec c
	dec c
	dec c
	inc c
	ld de, $0d0d
	dec c
	dec c
	dec c
	dec c
	dec c
	dec c
	dec c
	dec c
	dec c
	dec c
	inc c
	db $10
	ld [de], a
	ld [de], a
	ld [de], a
	ld [de], a
	ld [de], a
	ld [de], a
	ld [de], a
	ld [de], a
	ld [de], a
	ld [de], a
	ld [de], a
	ld [de], a
	ld c, $08
	inc b
	inc b
	ld a, $40
	rrca
	ld h, a
	inc c
	ld h, a
	nop
	add h
	ld h, a
	jp $3c6c


	inc de
	ld h, a
	ld l, [hl]
	ld h, a
	nop
	cp d
	cp b
	ld a, [hld]
	sbc $c6
	db $d3
	ld a, a
	or [hl]
	or d
	ret nz

	ld h, $56
	ld c, a
	call c, wc6bc
	ld a, a
	call c, wd7b6
	rst $00
	ld a, a
	cp d
	call nz, Call_007_7fca
	push bc
	or d
	ld d, l
	ld [$9fe3], sp
	inc e
	db $e3
	add c
	ret


	ld a, a
	push bc
	or [hl]
	add $55
	cp [hl]
	or [hl]
	or d
	ld h, $7f
	or c
	reti


	cp d
	call nz, $e7d3
	ld d, c
	ld l, $cb
	rst $20
	ld a, a
	call nz, $30d3
	pop bc
	db $dd
	ld a, a
	cp e
	cp a
	rst $18
	jp $544f


	ret


	ld a, a
	cp d
	or e
	or [hl]
	sbc $dd
	ld d, l
	ret nz

	ret


	cp h
	sbc $33
	ld a, a
	cp b
	jp c, wcfc0

	or h
	rst $20
	ld d, a
	ld [$1901], sp
	ld h, [hl]
	call $3e78
	jr nc, jr_007_6781

	ld a, $45
	ld [wcc4d], a
	ld a, $11
	call $3e9d

jr_007_6781:
	jp $0f6a


	ld a, [bc]
	ld [bc], a
	rlca
	ld [bc], a
	ld [bc], a
	add e
	rlca
	inc bc
	ld [bc], a
	add e
	nop
	ld [bc], a
	ld c, $06
	ld b, $ff
	ret nc

	ld bc, $073d
	ld [$ffff], sp
	ld [bc], a
	ld [de], a
	rst $00
	rlca
	ld [bc], a
	ld [de], a
	rst $00
	rlca
	inc bc
	ld [bc], a
	inc b
	inc b
	inc a
	ld l, b
	or e
	ld h, a
	or b
	ld h, a
	nop
	ld d, $68
	jp $3c6c


	dec sp
	rrca
	cp c
	ld h, a
	db $ec
	ld h, a
	nop
	adc d
	sbc e
	jp hl


	ret c

	ld c, $e3
	xor e
	rst $20
	ld a, a
	call nz, $b67f
	or [hl]
	jp c, Jump_007_4fc0

	ld b, a
	sub h
	xor e
	sub e
	jp z, wc57f

	or d
	ret


	or [hl]
	ret z

	and $51
	pop bc
	ld [c], a
	or e
	pop bc
	sbc $ca
	and $4f
	add l
	and a
	xor e
	rrca
	db $e3
	db $d3
	ld a, a
	push bc
	or d
	ret


	or [hl]
	rst $20
	ld d, a
	nop
	adc h
	ld b, c
	db $e3
	rrca
	db $e3
	jp z, $b67f

	rst $18
	jp wSpriteCurPosY


	ret nz

	and $4f
	ret nz

	ret nz

	or [hl]
	or e
	ld a, a
	ld d, h
	ret


	ld a, a
	cp l
	ld a, [hld]
	call nc, wddbb
	ld d, l
	or d
	pop bc
	inc l
	jp wc6b7


	ld a, a
	or c
	add hl, hl
	reti


	ret


	ld d, a
	nop
	ld [bc], a
	rlca
	inc bc
	nop
	rst $38
	rlca
	inc b
	nop
	rst $38
	nop
	inc bc
	ld h, $09
	inc b
	rst $38
	db $d3
	ld bc, $060a
	ld [$ffff], sp
	ld [bc], a
	ld b, $09
	ld a, [bc]
	cp $01
	inc bc
	ld [de], a
	rst $00
	rlca
	inc bc
	inc de
	rst $00
	rlca
	inc b
	ld [de], a
	inc de
	inc de
	add hl, bc
	ld d, $0f
	inc d
	inc d
	jr jr_007_685f

	dec d
	dec d
	rla
	ld a, [de]
	dec bc
	rrca
	ld [$0404], sp
	ld l, $40
	ld e, e
	ld l, b
	ld e, b
	ld l, b
	nop
	ld hl, wOAMBuffer + $69
	ld l, h
	inc a
	ld h, e
	ld l, b
	sbc d
	ld l, b

jr_007_685f:
	xor [hl]
	ld l, b
	db $db
	ld l, b
	nop
	ld d, [hl]
	ld a, a
	or l
	jp wd026


	ld a, a
	or c
	ret c

	ld h, $c4
	or e
	rst $20
	ld c, a
	jp z, $b8d4

	ld a, a
	or c
	push bc
	ret nz

	add $7f
	or c
	or d
	ret nz

	or d
	push bc
	ld d, [hl]
	ld d, c
	or d
	call nc, wdee3
	rst $20
	ld c, a
	jp wd026


	ld a, a
	or [hl]
	or d
	jp $30de


	or [hl]
	rst $10
	ld a, a
	ret nc

	push bc
	or d
	inc sp
	rst $20
	ld d, a
	nop
	ld b, e
	xor h
	ld b, e
	ld [hl], d
	add a
	and [hl]
	xor h
	add a
	db $e3
	ld d, b
	ld [$243e], sp
	call $2dc7
	jp $0f6a


	nop
	db $d3
	ret


	rst $08
	ret z

	ld a, a
	pop de
	cp l
	jp nc, wc3df

	ld a, a
	or [hl]
	call c, $b2b2
	rst $20
	ld c, a
	or [hl]
	ret


	inc l
	ld [c], a
	add $7f
	ld b, c
	xor h
	ld b, c
	add $de
	daa
	ld [c], a
	or e
	ld d, l
	ld b, d
	and a
	dec c
	xor e
	sub e
	ld a, a
	cp l
	reti


	sbc $30
	rst $20
	ld d, a
	nop
	ld d, [hl]
	ld a, a
	cp d
	ret


	ld a, a
	or c
	or d
	jr nc, @+$51

	ld b, e
	add c
	xor e
	sub e
	ld a, a
	add b
	xor h
	ld b, d
	ld a, a
	db $d3
	rst $10
	rst $18
	ret nz

	ret


	ld d, c
	cp l
	ld a, [hli]
	cp b
	ld a, a
	jp nz, $b2d6

	ld a, a
	call c, wdf2b
	jp Jump_007_404f


	xor c
	db $e3
	ld a, a
	ld b, e
	add c
	xor e
	sub e
	ld a, a
	cp l
	cp b
	push bc
	or d
	cp c
	inc [hl]
	ld d, l
	cp d
	jp c, Jump_007_7f33

	call z, $bed4
	ld a, [hld]
	ld a, a
	or d
	or d
	ret


	ret z

	ld d, [hl]
	and $57
	ld a, [bc]
	ld [bc], a
	rlca
	ld [bc], a
	inc bc
	rst $38
	rlca
	inc bc
	inc bc
	rst $38
	nop
	inc b
	dec e
	rlca
	ld b, $ff
	db $d3
	ld bc, $0809
	inc b
	cp $01
	ld [bc], a
	inc b
	dec b
	ld [wd0ff], sp
	inc bc
	ld b, b
	rlca
	rlca
	rst $38
	rst $38
	inc b
	ld [de], a
	rst $00
	rlca
	ld [bc], a
	ld [de], a
	rst $00
	rlca
	inc bc
	ld [$0404], sp
	ld l, $40
	ld e, h
	ld l, c
	ld e, c
	ld l, c
	nop
	dec d
	ld l, d
	jp $3c6c


	ld e, [hl]
	ld l, c
	ld [$3cfa], sp
	rst $10
	bit 0, a
	jr nz, jr_007_6989

	ld hl, $6992
	call $3c79
	ld bc, $e501
	call $3e5e
	jr nc, jr_007_6981

	ld hl, $69a9
	call $3c79
	ld hl, wd73c
	set 0, [hl]
	jr jr_007_698f

jr_007_6981:
	ld hl, $6a07
	call $3c79
	jr jr_007_698f

jr_007_6989:
	ld hl, $69c4
	call $3c79

jr_007_698f:
	jp $0f6a


	nop
	ld d, [hl]
	ld a, a
	ld d, [hl]
	ld a, a
	call c, wdfb6
	ret nz

	rst $20
	ld d, c
	cp d
	jp c, $7f26

	adc $bc
	or d
	ld a, a
	ret


	or [hl]
	rst $20
	ld e, b
	nop
	ld d, d
	jp z, $837f

	adc h
	ld b, b
	db $e3
	ld a, a
	or [hl]
	rst $10
	ld c, a
	ld d, b
	ld bc, wcf45
	nop
	db $dd
	ld a, a
	db $d3
	rst $10
	rst $18
	ret nz

	rst $20
	ld d, b
	dec bc
	ld d, b
	nop
	ld d, [hl]
	ld a, a
	call c, wdfb6
	jp wc5d9


	and $4f
	ld e, h
	ld hl, sp-$01
	jp z, $8a7f

	add c
	adc c
	add [hl]
	sub a
	adc e
	adc h
	rst $20
	ld d, c
	ld d, [hl]
	ld a, a
	or e
	rst $08
	cp b
	ld a, a
	or d
	cp c
	ld a, [hld]
	ld c, a
	or c
	or d
	jp Jump_007_7fc9


	call nz, $bcb8
	pop hl
	ld a, a
	ret


	or e
	ret c

	ld [c], a
	cp b
	db $dd
	ld d, l
	cp e
	add hl, hl
	rst $10

jr_007_69fb:
	jp c, Jump_007_7fd9

	or [hl]
	db $d3
	ld a, a
	cp h
	jp c, $b2c5

	rst $20
	ld d, a
	nop
	db $d3
	pop bc
	db $d3
	ret


	ld h, $7f
	or d
	rst $18
	ld b, h
	or d
	jr nc, jr_007_69fb

	ld d, a
	ld a, [bc]
	ld [bc], a
	rlca
	ld [bc], a
	rlca
	rst $38
	rlca
	inc bc
	rlca
	rst $38
	nop
	ld bc, $0727
	add hl, bc
	rst $38
	jp nc, $1201

	rst $00
	rlca
	ld [bc], a
	ld [de], a
	rst $00
	rlca
	inc bc
	ld de, $0404
	ld e, [hl]
	ld b, b
	ld b, e
	ld l, d
	dec sp
	ld l, d
	nop
	ld a, b
	ld l, d
	ld a, $0d
	ld [wd2e4], a
	jp $3c6c


	ld b, l
	ld l, d
	nop
	add c
	xor c
	and d
	sbc l
	sub e
	xor e
	sub a
	and [hl]
	add $7f
	or d
	rst $18
	ret nz

	cp c
	inc [hl]
	ld c, a
	rst $08
	rst $18
	cp b
	rst $10
	inc sp
	ld a, a
	cp d
	call c, wd6b2
	ld d, c
	ld d, h
	add $7f
	sbc e
	and l
	xor h
	adc e
	xor [hl]
	inc sp
	ld c, a
	or c
	or [hl]
	reti


	cp b
	ld a, a
	cp e
	cp [hl]
	jp c, wc53a

	or c
	ld d, [hl]
	ld d, a
	ld a, l
	inc bc
	rlca
	ld [bc], a
	nop
	rst $38
	rlca
	inc bc
	nop
	rst $38
	inc b
	inc b

jr_007_6a84:
	nop
	push bc
	nop
	ld bc, $0727
	rlca
	rst $38
	rst $38
	ld bc, wc712
	rlca
	ld [bc], a
	ld [de], a
	rst $00
	rlca
	inc bc
	add hl, bc
	rst $00
	inc b
	inc b
	ld [$0404], sp
	ld l, $40
	xor c
	ld l, d
	and [hl]
	ld l, d
	nop
	ld hl, sp+$6a
	jp $3c6c


	xor l
	ld l, d
	ld [$006a], a
	ld d, h
	ret


	ld a, a
	set 3, [hl]
	cp h
	ld a, a
	inc l
	ld [c], a
	or e
	ret nz

	or d
	jp z, wc04f

	ret nz

	or [hl]
	or e
	ld a, a
	add hl, hl
	sbc $b7
	ld h, $7f
	push bc
	or d
	ld a, a
	jr nc, jr_007_6a84

	inc sp
	ld d, c
	or d
	or c
	or d
	daa
	ret c

	ld a, a
	push bc
	inc [hl]
	ret


	ld a, a
	call c, wca2b
	ld c, a
	or d
	jp nz, wc9d3

	ld a, a
	sub $b3
	add $7f
	jp nz, $b4b6

	reti


	rst $20
	ld d, a
	ld [$013e], sp
	ld [wcd3d], a
	ld a, $54
	call $3e9d
	jp $0f6a


	ld a, [bc]
	ld [bc], a
	rlca
	ld [bc], a
	ld [bc], a
	rst $38
	rlca
	inc bc
	ld [bc], a
	rst $38
	nop
	ld [bc], a
	jr nz, @+$0a

	ld b, $ff
	db $d3
	ld bc, $0537
	ld [wd0ff], sp
	ld [bc], a
	ld [de], a
	rst $00
	rlca
	ld [bc], a
	ld [de], a
	rst $00
	rlca
	inc bc
	inc c
	inc bc
	inc b
	bit 5, h
	sub l
	ld l, e
	inc h
	ld l, e
	nop
	and c
	ld l, h
	call $3c6c
	ld a, [wd5e1]
	ld hl, $6b30
	jp $3dc7


	ld b, c
	ld l, e
	add l
	ld l, e

Call_007_6b34:
	ld a, $40
	ld [wccd3], a
	ld a, $01
	ld [wcd38], a
	jp $34d0


	ld a, [wd6a7]
	bit 6, a
	ret nz

	ld hl, $6b80
	call $3509
	ret nc

	ld a, $02
	ld [wd4a7], a
	xor a
	ldh [$b4], a
	ld b, $16
	ld hl, $7fcc
	call $3620
	ldh a, [$db]
	and a
	jr nz, jr_007_6b73

	ld a, $02
	ldh [$8c], a
	call $13f1
	call Call_007_6b34
	ld a, $01
	ld [wd5e1], a
	ret


jr_007_6b73:
	ld a, $03
	ldh [$8c], a
	call $13f1
	ld hl, wd6a7
	set 6, [hl]
	ret


	inc bc
	inc bc
	inc bc
	inc b
	rst $38
	ld a, [wcd38]
	and a
	ret nz

	call $3e07
	xor a
	ld [wcd66], a
	ld [wd5e1], a
	ret


	sbc e
	ld l, e
	ret c

	ld l, e
	dec c
	ld l, h
	ld [$a7fa], sp
	sub $cb
	ld [hl], a
	jr nz, jr_007_6bcf

	ld b, $16
	ld hl, $7fcc
	call $3620
	ldh a, [$db]
	and a
	jr nz, jr_007_6bc1

	ld hl, $6bd8
	call $3c79
	call Call_007_6b34
	ld a, $01
	ld [wd5e1], a
	jp $0f6a


jr_007_6bc1:
	ld hl, $6c0d
	call $3c79
	ld hl, wd6a7
	set 6, [hl]
	jp $0f6a


jr_007_6bcf:
	ld hl, $6c90
	call $3c79
	jp $0f6a


	nop
	call c, $bcc0
	ld a, a
	rst $08
	inc l
	jp nc, Jump_007_7fc5

jr_007_6be2:
	cp c
	or d
	dec sp
	or d
	sbc $4f
	jp z, $56e3

	ld d, l
	ret


	inc [hl]
	ld h, $7f
	or [hl]
	call c, wc0b2
	rst $20
	ld d, l
	or l
	rst $18
	call nz, $bf7f
	rst $18
	pop bc
	jp z, $b255

	rst $08
	ld a, a
	jp nz, $bab3

	or e
	ld a, a
	or a
	sbc $bc
	jr nc, jr_007_6be2

	ld d, a
	nop
	or c
	ld a, a
	cp a
	jp c, $55ca

	or l
	or d
	cp h
	cp a
	or e
	push bc
	ld a, a
	ret


	ret nc

	db $d3
	ret


	ld d, [hl]
	ld d, l
	ld d, [hl]
	ld a, a
	ld d, [hl]
	ld d, l
	or h
	and $55
	ld a, $b8
	add $7f
	cp b
	jp c, $e6d9

	ld d, l
	adc d
	xor e
	add [hl]
	xor [hl]
	db $e3
	rst $20
	ld d, b
	ld de, $5100
	ld d, [hl]
	ld a, a
	ld d, [hl]
	ld d, l
	add hl, bc
	add a
	add hl, bc
	add a
	ld d, [hl]
	ld d, l
	ld d, [hl]
	ld d, l
	add hl, bc
	add a
	add hl, bc
	add a
	ld d, [hl]
	ld a, a
	ld d, [hl]
	ld d, l
	and d
	sbc l
	dec de
	add [hl]
	ld a, a
	adc e
	sub d
	or b
	add $55
	or d
	cp b
	ld a, a
	push bc
	rst $10
	ld d, [hl]
	ld d, l
	ld d, [hl]
	ld d, l
	ld d, [hl]
	ld a, a
	ld d, [hl]

jr_007_6c65:
	ld d, l
	call nz, wdfb5
	jp $b27f


	or d
	sub $55
	dec bc
	xor [hl]
	db $e3
	adc h
	db $dd
	ld d, l
	pop de
	cp d
	or e
	ret


	ld a, a
	ld [$93e3], sp
	ret


	ld d, l
	cp c
	or d
	dec sp
	or d
	sbc $c6
	db $d3
	ld a, a
	call c, $c3b9
	or c
	add hl, hl
	sub $b3
	ld d, [hl]
	ld d, a
	nop
	or c
	ld d, [hl]
	ld c, a
	cp d
	ret


	ld a, a
	or c
	or d
	jr nc, jr_007_6c65

	ld a, a
	inc [hl]
	db $e3
	db $d3
	rst $20
	ld d, a
	ld a, [bc]
	inc b
	dec b
	inc bc
	ld [bc], a
	rst $38
	dec b
	inc b
	ld [bc], a
	rst $38
	nop
	inc bc
	ld bc, $00ff
	inc b
	nop
	rst $38
	nop
	ld bc, $0731
	dec b
	rst $38
	db $d3
	ld bc, wc708
	dec b
	inc bc
	add hl, bc
	rst $00
	dec b
	inc b
	db $f4
	add $00
	inc bc
	push af
	add $00
	inc b
	ld d, $6b
	ld l, d
	rla
	ld [bc], a
	add hl, bc
	ld [$1801], sp
	ld l, h
	ld l, c
	add hl, de
	inc c
	inc bc
	inc b
	adc [hl]
	ld l, l
	ld e, [hl]
	ld l, l
	db $e3
	ld l, h
	nop
	ld h, h
	ld l, l
	call $3c6c
	ld hl, $6cf0
	ld a, [wd5b5]
	call $3dc7
	ret


	db $f4
	ld l, h
	scf
	ld l, l
	ld a, [wd6a7]
	bit 6, a
	ret nz

	ld hl, $6d32
	call $3509
	ret nc

	ld a, $01
	ld [wd4a7], a
	xor a
	ldh [$b4], a
	ld b, $16
	ld hl, $7fcc
	call $3620
	ldh a, [$db]
	and a
	jr nz, jr_007_6d26

	ld a, $02
	ldh [$8c], a
	call $13f1
	call Call_007_6d47
	ld a, $01
	ld [wd5b5], a
	ret


jr_007_6d26:
	ld hl, wd6a7
	set 6, [hl]
	ld a, $03
	ldh [$8c], a
	jp $13f1


	ld [bc], a
	inc bc
	ld [bc], a
	inc b
	rst $38
	ld a, [wcd38]
	and a
	ret nz

	call $3e07
	xor a
	ld [wcd66], a
	ld [wd5b5], a
	ret


Call_007_6d47:
	ld hl, wd6af
	set 7, [hl]
	ld a, $80
	ld [wccd3], a
	ld a, $01
	ld [wcd38], a
	xor a
	ld [wc206], a
	ld [wcd3b], a
	ret


	sbc e
	ld l, e
	ret c

	ld l, e
	dec c
	ld l, h
	ld a, [bc]
	inc b
	dec b
	inc bc
	ld [bc], a
	rst $38
	dec b
	inc b
	ld [bc], a
	rst $38
	nop
	inc bc
	ld bc, $00ff
	inc b
	ld bc, $00ff
	ld bc, $0631
	ld a, [bc]
	rst $38
	jp nc, $0801

	rst $00
	dec b
	inc bc
	add hl, bc
	rst $00
	dec b
	inc b
	db $f4
	add $00
	inc bc
	push af
	add $00
	inc b
	ld d, $6b
	ld l, d
	rla
	ld [bc], a
	add hl, bc
	ld [$1801], sp
	ld l, h
	ld l, c
	add hl, de
	inc c
	inc b
	inc bc
	ld d, l
	ld l, [hl]
	dec h
	ld l, [hl]
	and [hl]
	ld l, l
	nop
	dec hl
	ld l, [hl]
	call $3c6c
	ld a, [wd5e2]
	ld hl, $6db3
	call $3dc7
	ret


	adc $6d
	ld [de], a
	ld l, [hl]

Call_007_6db7:
	ld hl, wd6af
	set 7, [hl]
	ld a, $20
	ld [wccd3], a
	ld a, $01
	ld [wcd38], a
	xor a
	ld [wc206], a
	ld [wcd3b], a
	ret


	ld a, [wd6a7]
	bit 6, a
	ret nz

	ld hl, $6e0d
	call $3509
	ret nc

	ld a, $08
	ld [wd4a7], a
	xor a
	ldh [$b4], a
	ld b, $16
	ld hl, $7fcc
	call $3620
	ldh a, [$db]
	and a
	jr nz, jr_007_6e00

	ld a, $02
	ldh [$8c], a
	call $13f1
	call Call_007_6db7
	ld a, $01
	ld [wd5e2], a
	ret


jr_007_6e00:
	ld a, $03
	ldh [$8c], a
	call $13f1
	ld hl, wd6a7
	set 6, [hl]
	ret


	inc bc
	inc bc
	inc b
	inc bc
	rst $38
	ld a, [wcd38]
	and a
	ret nz

	call $3e07
	xor a
	ld [wcd66], a
	ld [wd5e2], a
	ld [wd97c], a
	ret


	sbc e
	ld l, e
	ret c

	ld l, e
	dec c
	ld l, h
	ld a, [bc]
	inc b
	inc bc
	nop
	inc bc
	rst $38
	inc b
	nop
	inc bc
	rst $38
	inc bc
	dec b
	nop
	rst $38
	inc b
	dec b
	ld bc, $00ff
	ld bc, $0531
	rlca
	rst $38
	ret nc

	ld bc, wc6fb
	inc bc
	nop
	inc b
	rst $00
	inc b
	nop
	db $fd
	add $03
	dec b
	ld b, $c7
	inc b
	dec b
	inc e
	rra
	dec e
	ld [hl], b
	ld hl, $6e6f
	dec h
	ld l, l
	jr @+$20

	add hl, de
	inc c
	inc b
	inc bc
	rla
	ld l, a
	rst $20
	ld l, [hl]
	ld l, l
	ld l, [hl]
	nop
	db $ed
	ld l, [hl]
	call $3c6c
	ld hl, $6e79
	ld a, [wd5b6]
	jp $3dc7


	sub h
	ld l, [hl]
	rst $10
	ld l, [hl]

Call_007_6e7d:
	ld hl, wd6af
	set 7, [hl]
	ld a, $10
	ld [wccd3], a
	ld a, $01
	ld [wcd38], a
	xor a
	ld [wc206], a
	ld [wcd3b], a
	ret


	ld a, [wd6a7]
	bit 6, a
	ret nz

	ld hl, $6ed2
	call $3509
	ret nc

	ld a, $02
	ld [wd4a7], a
	xor a
	ldh [$b4], a
	ld b, $16
	ld hl, $7fcc
	call $3620
	ldh a, [$db]
	and a
	jr nz, jr_007_6ec6

	ld a, $02
	ldh [$8c], a
	call $13f1
	call Call_007_6e7d
	ld a, $01
	ld [wd5b6], a
	ret


jr_007_6ec6:
	ld hl, wd6a7
	set 6, [hl]
	ld a, $03
	ldh [$8c], a
	jp $13f1


	inc bc
	ld [bc], a
	inc b
	ld [bc], a
	rst $38
	ld a, [wcd38]
	and a
	ret nz

	call $3e07
	xor a
	ld [wcd66], a
	ld [wd5b6], a
	ret


	sbc e
	ld l, e
	ret c

	ld l, e
	dec c
	ld l, h
	ld a, [bc]
	inc b
	inc bc
	nop
	nop
	rst $38
	inc b
	nop
	ld bc, $03ff
	dec b
	ld [bc], a
	rst $38
	inc b
	dec b
	inc bc
	rst $38
	nop
	ld bc, $0531
	ld b, $ff
	ret nc

	ld bc, wc6fb
	inc bc
	nop
	inc b
	rst $00
	inc b
	nop
	db $fd
	add $03
	dec b
	ld b, $c7
	inc b
	dec b
	inc e
	rra
	dec e
	ld [hl], b
	ld hl, $6e6f
	dec h
	ld l, l
	jr jr_007_6f40

	add hl, de
	inc c
	inc b
	inc b
	nop
	ld b, b
	scf
	ld l, a
	cpl
	ld l, a
	nop
	ld h, [hl]
	ld l, a
	ld a, $13
	ld [wd2e4], a
	jp $3c6c


	add hl, sp
	ld l, a
	nop
	or c
	push bc
	ret nz

	jp z, wd67f

jr_007_6f40:
	cp b
	ld a, a
	or d
	cp b
	ret


	and $4f
	adc a
	sbc l
	sbc a
	adc e
	ld a, a
	adc e
	sub d
	or b
	ret


	ld a, a
	ld [de], a
	ld b, b
	db $e3
	sub e
	ld d, l
	or d
	db $db
	or d
	db $db
	ld a, a
	or e
	rst $18
	jp Jump_007_7fc3


	dec a
	sbc $d8
	sub $c8
	ld d, a
	ld a, [bc]
	inc bc
	rlca
	inc bc
	inc b
	rst $38
	rlca
	inc b
	inc b
	rst $38
	inc b
	inc b
	ld bc, $0079
	ld bc, $080d
	rlca
	rst $38
	rst $38
	ld bc, wc712
	rlca
	inc bc
	inc de
	rst $00
	rlca
	inc b
	add hl, bc
	rst $00
	inc b
	inc b
	ld d, $12
	inc d
	jr jr_007_6ffe

	xor l
	ld l, a
	sub h
	ld l, a
	nop
	sub c
	ld [hl], b
	call $3c6c
	ld hl, $6fc9
	ld de, $6fa7
	ld a, [wd5e2]
	call $31a8
	ld [wd5e2], a
	ret


	ld h, c
	ld [hld], a
	sub h
	ld [hld], a
	cp l
	ld [hld], a
	ld b, d
	ld [hl], b
	ld c, b
	ld [hl], b
	ld c, [hl]
	ld [hl], b
	ld d, h
	ld [hl], b
	ld e, d
	ld [hl], b
	ld h, b
	ld [hl], b
	ld h, [hl]
	ld [hl], b
	ld l, h
	ld [hl], b
	ld [hl], d
	ld [hl], b
	push bc
	rrca
	push bc
	rrca
	push bc
	rrca
	push bc
	rrca
	push bc
	rrca
	ld bc, $5200
	rst $10
	ld a, b
	ld [hl], b
	ld a, b
	ld [hl], b
	ld a, b
	ld [hl], b
	ld a, b
	ld [hl], b
	ld [bc], a
	nop
	ld d, d
	rst $10
	ld a, b
	ld [hl], b
	ld a, b
	ld [hl], b
	ld a, b
	ld [hl], b
	ld a, b
	ld [hl], b
	inc bc
	nop
	ld d, d
	rst $10
	ld a, b
	ld [hl], b
	ld a, b
	ld [hl], b
	ld a, b
	ld [hl], b
	ld a, b
	ld [hl], b
	inc b
	nop
	ld d, d
	rst $10
	ld a, b
	ld [hl], b
	ld a, b
	ld [hl], b
	ld a, b
	ld [hl], b
	ld a, b
	ld [hl], b
	dec b
	nop
	ld d, d
	rst $10
	ld a, b

jr_007_6ffe:
	ld [hl], b
	ld a, b
	ld [hl], b
	ld a, b
	ld [hl], b
	ld a, b
	ld [hl], b
	ld b, $00
	ld d, d
	rst $10
	ld a, b
	ld [hl], b
	ld a, b
	ld [hl], b
	ld a, b
	ld [hl], b
	ld a, b
	ld [hl], b
	rlca
	nop
	ld d, d
	rst $10
	ld a, b
	ld [hl], b
	ld a, b
	ld [hl], b
	ld a, b
	ld [hl], b
	ld a, b
	ld [hl], b
	ld [$5200], sp
	rst $10
	ld a, b
	ld [hl], b
	ld a, b
	ld [hl], b
	ld a, b
	ld [hl], b
	ld a, b
	ld [hl], b
	add hl, bc
	nop
	ld d, d
	rst $10
	ld a, [hl]
	ld [hl], b
	ld a, [hl]
	ld [hl], b
	ld a, [hl]
	ld [hl], b
	ld a, [hl]
	ld [hl], b
	rst $38

jr_007_7036:
	call $3214
	ld a, [wd97c]
	ld [wd5e2], a
	jp $0f6a


	ld [wc921], sp
	ld l, a
	jr jr_007_7036

	ld [wd521], sp
	ld l, a
	jr jr_007_7036

	ld [$e121], sp
	ld l, a
	jr jr_007_7036

	ld [$ed21], sp
	ld l, a
	jr jr_007_7036

	ld [$f921], sp
	ld l, a
	jr jr_007_7036

	ld [$0521], sp
	ld [hl], b
	jr jr_007_7036

	ld [$1121], sp
	ld [hl], b
	jr jr_007_7036

	ld [$1d21], sp
	ld [hl], b
	jr jr_007_7036

	ld [$2921], sp
	ld [hl], b
	jr jr_007_7036

	nop
	ld a, [de]
	ret c

	ret c

	rst $20
	ld d, a
	nop
	ld b, $a2
	db $e3
	add h
	rst $20
	ld d, b
	ld [$4b3e], sp
	call $2dc7
	call $3790
	jp $0f6a


	ld l, $03
	inc hl
	inc b
	inc bc
	rst $38
	inc hl
	dec b
	inc bc
	rst $38
	dec bc
	nop
	inc bc
	rst $38
	nop
	ld c, $3d
	jr jr_007_70b1

	rst $38
	rst $38
	ld b, c
	ld b, $28
	dec a
	ld d, $24
	rst $38
	rst $38
	ld b, d
	ld b, $28

jr_007_70b1:
	dec a
	dec e
	add hl, de
	rst $38
	rst $38
	ld b, e
	ld b, $28
	dec a
	ld d, $1d
	rst $38
	rst $38
	ld b, h
	adc l
	dec hl
	dec a
	ld h, $1b
	rst $38
	rst $38
	ld b, l
	ld b, $28
	dec a
	jr nz, jr_007_70ea

	rst $38
	rst $38
	ld b, [hl]
	ld b, $28
	dec a
	ld [de], a
	add hl, de
	rst $38
	rst $38
	ld b, a
	adc l
	dec hl
	dec a
	inc h
	add hl, hl
	rst $38
	rst $38
	ld c, b
	ld b, $28
	add hl, bc
	dec c
	ld [wd1ff], sp
	ld c, c
	ld c, e
	ld [hld], a
	dec a

jr_007_70ea:
	dec e
	dec bc
	rst $38
	rst $38
	adc d
	ld h, $3d
	rlca
	jr nz, @+$01

	rst $38
	adc e
	inc hl
	dec a
	rlca
	ld h, $ff
	rst $38
	adc h
	jr z, jr_007_713c

	inc h
	ld e, $ff
	rst $38
	adc l
	pop hl
	dec a
	inc h
	jr @+$01

	rst $38
	adc [hl]
	jp hl


	cp a
	ret z

	inc hl
	inc b
	cp a
	ret z

	inc hl
	dec b
	add l
	rst $00
	dec bc
	nop
	ld b, b
	ld h, c
	ld h, c
	ld h, c
	ld l, b
	ld h, l
	ld h, l
	ld l, c
	ld h, l
	ld h, l
	ld h, l
	ld h, l
	ld l, c
	ld h, l
	ld h, l
	ld h, l
	ld h, l
	ld h, l
	ld h, l
	ld l, c
	ld b, h
	rlca
	ld b, $0e
	ld [hl], b
	rlca
	ld sp, $065d
	rlca
	rlca
	ld c, $46
	ld b, $1a
	dec [hl]

jr_007_713c:
	dec [hl]
	add hl, de
	ld b, $5d
	ld b, h
	ld c, $0e
	ld c, $68
	ld a, [hli]
	ld h, a
	ld l, c
	ld h, e
	dec hl
	ld h, c
	ld e, c
	ld b, [hl]
	jr c, @+$33

	ld b, $35
	inc e
	ld c, $5d
	ld b, b
	ld h, e
	ld c, $67
	ld e, h
	jr c, @+$33

	ld e, l
	ld h, e
	ld c, $06
	ld b, h
	ld b, [hl]
	ld b, $0e
	ld b, $38
	ld c, $31
	ld e, l
	ld b, h
	ld c, $0e
	ld c, $5c
	ld b, $31
	ld e, l
	ld c, $0e
	ld sp, $4644
	jr c, @+$10

	ld b, $0e
	ld b, $06
	ld e, l
	ld [hl], b
	ld c, $0e
	ld c, $5c
	jr c, jr_007_7191

	ld [hl], c
	ld c, $0e
	ld c, $44
	ld b, [hl]
	ld c, $0e
	jr c, jr_007_719b

	ld sp, $5d06
	ld l, b

jr_007_7191:
	ld h, l
	ld h, l
	ld b, c
	ld b, b
	ld b, c
	ld h, l
	ld l, c
	ld h, e
	dec hl
	ld h, c

jr_007_719b:
	ld b, h
	ld d, [hl]
	ld c, c
	ld e, b
	ld c, $57
	ld c, c
	ld c, c
	ld d, c
	ld e, h
	rlca
	ld c, $0e
	ld [hl], b
	ld c, $31
	ld e, l
	ld c, c
	ld c, c
	ld c, c
	ld c, b
	ld c, c
	ld c, c
	ld c, c
	ld c, c
	ld c, c
	ld e, b
	ld d, d
	ld b, [hl]
	ld e, h
	ld c, $0e
	ld c, $52
	ld c, $0e
	ld e, l
	ld b, $1d
	dec e
	dec e
	ld c, $1d
	dec e
	dec e
	dec e
	ld c, $44
	ld b, [hl]
	ld h, b
	ld h, c
	ld a, [hli]
	ld c, $5c
	ld b, $38
	ld e, l
	rlca
	ld b, $1a
	dec [hl]
	inc e
	dec [hl]
	dec [hl]
	dec [hl]
	dec e
	ld c, $44
	ld b, [hl]
	ld h, h
	ld c, $0e
	ld c, $44
	rlca
	ld c, $71
	ld c, $1d
	dec e
	dec e
	dec e
	dec e
	dec e
	dec e
	dec e
	ld c, $44
	ld b, [hl]
	ld b, h
	ld sp, $6161
	ld a, [hli]
	dec hl
	ld h, c
	ld h, d
	ld c, c
	ld c, c
	ld c, c
	ld c, c
	ld c, c
	ld c, c
	ld c, c
	ld c, c
	ld c, c
	ld c, c
	ld d, l
	ld b, [hl]
	ld b, h
	ld c, $0e
	rlca
	ld b, $38
	ld c, $66
	rlca
	ld b, $38
	ld b, $06
	ld b, $07
	ld sp, $0706
	ld c, $5d
	ld l, b
	ld h, e
	ld c, $67
	ld l, b
	ld h, l
	ld a, [hli]
	ld d, [hl]
	ld c, $0e
	ld c, $31
	rlca
	ld c, $0e
	ld c, $07
	ld c, $31
	ld e, l
	ld e, h
	jr c, @+$10

	ld b, $6b
	ld c, $0e
	ld c, $0e
	ld b, $0e
	ld c, $0e
	ld sp, $3106
	ld b, $06
	ld b, $5d
	ld e, h
	ld c, $31
	ld b, $6b
	ld a, [hli]
	ld h, a
	ld h, c
	ld h, c
	ld h, l
	ld h, c
	ld h, c
	ld b, b
	ld h, e
	ld b, $2b
	ld h, c
	ld h, c
	ld h, l
	ld l, c
	ld b, h
	ld c, $0e
	ld sp, $0e5c
	ld c, $07
	ld b, $0e
	ld c, $06
	ld b, h
	ld e, $0e
	dec e
	dec e
	jr nz, jr_007_7287

	ld b, [hl]
	ld c, b
	ld e, b
	inc l
	ld d, a
	ld c, b
	ld c, c
	ld c, c
	ld c, c
	ld c, c
	ld c, c
	ld c, c
	ld c, c
	ld c, b
	ld c, c
	ld c, c
	ld c, c
	ld c, c
	ld c, c
	ld c, c
	ld c, d
	ld de, $0404
	ld e, [hl]
	ld b, b
	sub l
	ld [hl], d

jr_007_7287:
	adc h
	ld [hl], d
	nop
	call nc, wcd72
	ld l, h
	inc a
	ld a, $16
	ld [wd2e4], a
	ret


	sub a
	ld [hl], d
	nop
	ret nz

	rst $08
	add hl, hl
	ret nz

	ld a, a
	db $d3
	sbc $30
	rst $20
	ld c, a
	cp d
	ret


	ld a, a
	push bc
	ld h, $e3
	or d
	ld a, a
	inc [hl]
	or e
	cp b
	jp nz, $55e7

	ld [de], a
	or b
	rlca
	rrca
	ld h, $7f
	adc $df
	ret nz

	sbc $30
	call nz, $51e7
	sub e
	add [hl]
	xor c
	ld a, a
	adc e
	sub d
	or b
	rst $08
	inc sp
	ld c, a
	jp nz, $26c5

	rst $18
	call nz, Call_007_7fd9
	cp a
	or e
	jr nc, @-$17

	ld d, a
	ld a, l
	inc bc
	rlca
	ld [bc], a
	inc b
	rst $38
	rlca
	inc bc
	inc b
	rst $38
	inc b
	inc b
	ld bc, $00c5
	ld bc, $070b
	ld b, $ff
	rst $38
	ld bc, wc712
	rlca
	ld [bc], a
	ld [de], a
	rst $00
	rlca
	inc bc
	add hl, bc
	rst $00
	inc b
	inc b
	ld [$0404], sp
	ld l, $40
	dec b
	ld [hl], e
	ld [bc], a
	ld [hl], e
	nop
	db $ed
	ld [hl], e
	jp $3c6c


	add hl, bc
	ld [hl], e
	adc $73
	ld [$5ffa], sp
	rst $10
	bit 6, a
	ld hl, $738b
	jr nz, jr_007_732f

	ld hl, $7335
	call $3c79
	ld bc, wc501
	call $3e5e
	jr nc, jr_007_732c

	ld hl, wd75f
	set 6, [hl]
	ld hl, $736d
	jr jr_007_732f

jr_007_732c:
	ld hl, $73bf

jr_007_732f:
	call $3c79
	jp $0f6a


	nop
	or c
	rst $10
	rst $08
	ld d, [hl]
	rst $20
	ld c, a
	ret nc

	jp nz, wdfb6

	pop bc
	ldh [$df], a
	ret nz

	call c, $e7c8
	ld d, c
	call c, $bcc0
	ret


	ld a, a
	cp d
	call nz, $304f
	jp c, wd3c6

	ld a, a
	or d
	call c, $b2c5
	inc sp
	ld d, l
	cp d
	jp c, $b17f

	add hl, hl
	reti


	ld a, a
	or [hl]
	rst $10
	ld d, l
	ld d, [hl]
	ld a, a

jr_007_7367:
	or l
	ret z

	ld h, $b2
	sub $58
	nop
	ld d, d
	jp z, $b57f

	sbc $c5
	ret


	cp d
	or [hl]
	rst $10
	ld c, a
	swap e
	sbc $9d
	adc e
	xor e
	or $f8
	db $dd
	ld a, a
	db $d3
	rst $10
	rst $18
	ret nz

	rst $20
	ld d, b
	ld de, $0050
	swap e
	sbc $9d
	adc e
	xor e
	or $f8
	jp z, $bf7f

	rst $10
	db $dd
	call nz, $e73c
	ld c, a
	call nz, wd3c3
	ld a, a
	dec a
	sbc $d8
	push bc
	ld d, l
	cp l
	ld a, [hld]
	rst $10
	cp h
	or d
	ld a, a
	call c, Call_007_7f2b
	push bc
	ret


	rst $20
	ld d, c
	jr nc, jr_007_7367

	inc l
	add $7f
	jp nz, wdfb6

	jp $e7c8


	ld d, a
	nop
	or c
	push bc
	ret nz

	ld a, a
	add $d3
	jp nz, $b27f

	rst $18
	ld b, h
	or d
	sub $57
	ld [$e021], sp
	ld [hl], e
	call $3c79
	ld a, $23
	call $2dc7
	call $3790
	jp $0f6a


	nop
	add h
	sub l
	inc de
	ret c

	and [hl]
	ld [hl], d
	add [hl]
	xor [hl]
	add c
	xor e
	rst $20
	ld d, a
	ld a, [bc]
	ld [bc], a
	rlca
	ld [bc], a
	ld [$07ff], sp
	inc bc
	ld [$00ff], sp
	ld [bc], a
	dec e
	rlca
	ld b, $ff
	db $d3
	ld bc, $0809
	ld a, [bc]
	cp $00
	ld [bc], a
	ld [de], a
	rst $00
	rlca
	ld [bc], a
	ld [de], a
	rst $00
	rlca
	inc bc
	inc c
	inc b
	dec b
	ld c, [hl]
	ld [hl], l
	ld [hl], l
	ld [hl], h
	add hl, de
	ld [hl], h
	nop
	inc h
	ld [hl], l
	call $3c6c
	ld hl, $7434
	ld a, [wd58d]
	call $3dc7
	ld a, [wd2e0]
	cp $04
	ld a, $22
	jr c, jr_007_7430

	ld a, $21

jr_007_7430:
	ld [wd2e4], a
	ret


	ld a, [hld]
	ld [hl], h
	ld h, e
	ld [hl], h
	ld [hl], h
	ld [hl], h
	ld hl, $744b
	call $3509
	ret nc

	xor a
	ldh [$b4], a
	ld a, $01
	ldh [$8c], a
	jp $13f1


	ld [bc], a
	inc b
	ld [bc], a
	dec b
	rst $38

Call_007_7450:
	ld a, $01
	ld [wcd38], a
	ld a, $80
	ld [wccd3], a
	ld [wc109], a
	ld [wcd66], a
	jp $34d0


	ld a, [wcd38]
	and a
	ret nz

	xor a
	ld [wcd66], a
	call $3e07
	ld a, $00
	ld [wd58d], a
	ret


	ld [hl], a
	ld [hl], h
	ld [wd5fa], sp
	jp nc, Jump_007_47cb

	jr nz, jr_007_748c

	ld hl, $749a
	call $3c79
	call Call_007_7450
	ld a, $01
	jr jr_007_7494

jr_007_748c:
	ld hl, $74fb
	call $3c79
	ld a, $02

jr_007_7494:
	ld [wd58d], a
	jp $0f6a


	nop
	cp d
	cp d
	or [hl]
	rst $10
	ld a, a
	cp e
	or a
	jp z, wce4f

	sbc $c4
	or e
	add $7f
	jp nz, $b2d6

	ld d, l
	ld d, h
	ld e, l
	jr nc, @-$45

	ld a, a
	call nz, wdab5
	rst $08
	cp l
	ld d, c
	or c
	push bc
	ret nz

	jp z, wcf7f

	jr nc, jr_007_7510

	rlca
	and a
	db $e3
	add hl, de
	xor h
	dec bc
	db $dd
	ld a, a
	db $d3
	rst $18
	jp wcf7f


	cp [hl]
	sbc $c8
	rst $20
	ld d, b
	ld [$a53e], sp
	call $3788
	call $3790
	ld hl, $74e0
	ret


	nop
	ld d, c
	or a
	rst $08
	ret c

	ld a, a
	inc sp
	cp l
	or [hl]
	rst $10
	ld c, a
	call nz, $bdb5
	ld a, a
	call c, wc6b9
	jp z, $b27f

	or a
	rst $08
	cp [hl]
	sbc $e7
	ld d, a
	nop
	or l
	or l
	db $e3
	xor h
	rst $20
	ld c, a
	cp a
	jp c, Jump_007_7fca

	ret nz

	cp h
	or [hl]
	add $7f
	rlca
	and a
	db $e3
	add hl, de
	xor h

jr_007_7510:
	dec bc
	rst $20
	ld d, l
	inc [hl]
	or e
	cpl
	ld a, a
	call nz, wdfb5
	jp $b87f


	jr nc, @-$43

	or d
	rst $20
	ld d, b
	dec bc
	ld d, b
	ld a, [bc]
	inc b
	rlca
	inc b
	nop
	rst $38
	rlca
	dec b
	nop
	rst $38
	nop
	inc b
	nop
	rst $38
	nop
	dec b
	ld bc, $00ff
	ld bc, $0631
	ld a, [bc]
	rst $38
	jp nc, $1701

	rst $00
	rlca
	inc b
	rla
	rst $00
	rlca
	dec b
	or $c6
	nop
	inc b
	or $c6
	nop
	dec b
	inc bc
	ld l, $28
	cpl
	inc bc
	nop
	nop
	inc b
	nop
	nop
	nop
	nop
	inc b
	nop
	nop
	nop
	inc l
	inc b
	dec l
	nop
	db $10
	inc b
	inc b
	ld bc, $3879
	db $76
	ld l, [hl]
	ld [hl], l
	nop
	db $db
	ld a, b
	call $3c6c
	ld a, [wd5e0]
	ld hl, $757a
	jp $3dc7


	add [hl]
	ld [hl], l
	add a
	ld [hl], l
	xor d
	ld [hl], l
	ret


	ld [hl], l
	ld de, $2b76
	db $76
	ret


	ld a, [wc109]
	and a
	ld de, $75a0
	jr nz, jr_007_7593

	ld de, $75a4

jr_007_7593:
	ld a, $01
	ldh [$8c], a
	call $3684
	ld a, $02
	ld [wd5e0], a
	ret


	ld b, b
	ld b, b
	ld b, b
	rst $38
	ret nz

	ld b, b
	ld b, b
	add b
	ld b, b
	rst $38
	ld a, [wd6af]
	bit 0, a
	ret nz

	ld a, $61
	ld [wcc4d], a
	ld a, $11
	call $3e9d
	ld hl, wd771
	set 6, [hl]
	xor a
	ld [wcd66], a
	ld a, $03
	ld [wd5e0], a
	ret


	ld a, [wd771]
	bit 3, a
	ret z

	ld a, $f0
	ld [wcd66], a
	ld a, $02
	ld [wcf0e], a
	ld a, $0c
	ldh [$eb], a
	ld a, $40
	ldh [$ec], a
	ld a, $06
	ldh [$ed], a
	ld a, $05
	ldh [$ee], a
	call $3341
	ld a, $62
	ld [wcc4d], a
	ld a, $15
	call $3e9d
	ld c, $08
	call $3781
	ld a, $02
	ldh [$8c], a
	ld de, $760b
	call $3684
	ld a, $04
	ld [wd5e0], a
	ret


	nop
	ret nz

	ret nz

	ret nz

	nop
	rst $38
	ld a, [wd6af]
	bit 0, a
	ret nz

	xor a
	ld [wcd66], a
	ld hl, wd771
	set 5, [hl]
	ld hl, wd770
	set 0, [hl]
	ld a, $00
	ld [wd5e0], a
	ret


	ld a, $04
	ldh [$8c], a
	call $13f1
	ld a, $00
	ld [wd5e0], a
	ret


	ld b, c
	db $76
	ld e, [hl]
	ld [hl], a
	and c
	ld a, b
	ld b, b
	db $76
	db $fd
	ld [$6921], sp
	db $76
	call $3c79
	call $3636
	ld a, [wcc26]
	and a
	jr nz, jr_007_765e

jr_007_7651:
	ld hl, $76e7
	call $3c79
	ld a, $01
	ld [wd5e0], a
	jr jr_007_7666

jr_007_765e:
	ld hl, $771a
	call $3c79
	jr jr_007_7651

jr_007_7666:
	jp $0f6a


	nop
	cp d
	sbc $c1
	call c, Call_007_4fe7
	ld a, $b8
	ld a, a
	ld d, h
	ld d, [hl]
	rst $20
	ld d, l
	ld d, [hl]
	ld a, a
	pop bc
	ldh [$b3], a
	call c, $e7b2
	ld d, c
	call c, wcab2
	ld a, a
	sbc l
	adc d
	add [hl]
	rst $20
	ld c, a
	set 0, h
	ld a, a
	sub $de
	inc sp
	ld a, a
	ld d, h
	sbc l
	sub l
	add b
	call nc, $55e7
	or c
	xor h
	ld a, a
	push bc
	sbc $d4
	ld a, a
	cp a
	ret


	jp nc, $e6ca

	ld d, l
	or c
	sbc $bb
	sbc $7f
	cp h
	sbc $d6
	or e
	ld a, a
	cp h
	jp wdecd


	push bc
	ld d, c
	sbc h
	xor e
	sub e
	call nc, $e733
	ld c, a
	inc l
	rst $18
	cp c
	sbc $c6
	ld a, a
	cp h
	rst $18
	ld b, h
	or d
	ld a, a
	cp h
	jp $5455


	call nz, $b87f
	rst $18
	jp nz, wc3b2

	ld a, a
	db $d3
	or e
	ret nz

	sbc $d4
	ld d, c
	push bc
	xor h
	rst $20
	ld c, a
	ret nz

	cp l
	cp c
	jp $b87f


	jp c, wdecd

	and $57
	nop
	call c, $26b2
	ld c, a
	jp $bfde


	or e
	ld a, a
	sbc l
	adc e
	xor e
	add $7f

jr_007_76f6:
	jp z, wd9b2

	cp e
	or [hl]
	or d
	ld d, l
	inc a
	sbc $d8
	ld a, a
	ld b, d
	xor b
	rlca
	and l
	sbc a
	db $dd
	ld a, a
	ret nz

	ret


	pop de
	inc sp
	rst $20
	ld d, l
	cp a
	or e
	call nc, $bf7f
	cp d
	ret


	ld a, a
	ld e, e
	call nc, Call_007_57e7
	nop
	cp a
	sbc $c5
	or c
	ld d, [hl]
	ld c, a
	jp nz, wc0d2

	or d
	ld a, a
	cp d
	call nz, $b27f
	call c, wc4de
	or d
	jp wd655


	xor h
	ld d, [hl]
	ld a, a
	or d
	db $db
	or l
	call nz, $e7ba
	ld d, l
	add $b8
	or d
	ret z

	db $e3
	xor h
	ld d, l
	jr nc, jr_007_76f6

	call nz, wd8b3
	ld [c], a
	or e
	rst $20
	ld d, l
	adc $c5
	rst $20
	ld a, a
	add h
	xor h
	adc b
	db $e3
	ld a, a
	call nc, $e7c5
	ld d, l
	or a
	rst $08
	ret c

	call nc, $58e7
	ld [$71fa], sp
	rst $10
	bit 4, a
	jr nz, jr_007_7793

	ld hl, $77a4
	call $3c79
	ld bc, $3f01
	call $3e5e
	jr nc, jr_007_779b

	ld hl, $7811
	call $3c79
	ld hl, wd771
	set 4, [hl]
	ld a, $07
	ld [wcc4d], a
	ld a, $15
	call $3e9d
	ld a, $09
	ld [wcc4d], a
	ld a, $11
	call $3e9d

jr_007_7793:
	ld hl, $783c
	call $3c79
	jr jr_007_77a1

jr_007_779b:
	ld hl, $782b
	call $3c79

jr_007_77a1:
	jp $0f6a


	nop
	sbc l
	adc d
	add [hl]
	ld [hl], d
	call nc, $e3b1
	rst $20
	ld c, a
	or l
	or l
	or a
	add $7f
	or l
	or l
	or a
	add $7f
	ret nz

	cp l
	or [hl]
	rst $18
	ret nz

	call c, $51e7
	inc sp
	ld d, [hl]
	ld a, a
	or c
	sbc $bb
	sbc $e7
	ld c, a
	call c, wc9c3
	ld a, a
	ld d, h
	ld a, a
	adc c
	and a
	add a
	adc e
	xor a
	xor e
	ld d, l
	ret nc

	add $7f
	or a
	ret nz

	ret


	ld a, a
	pop bc
	ldh [$b3], a
	sbc $b6
	and $55
	push bc
	sbc $d4
	ld a, a
	or l
	db $d3
	db $db
	push bc
	or d
	push bc
	db $e3
	ld d, l
	or c
	or c
	ld a, a
	cp a
	call nc, $51e7
	or l
	jp c, Jump_007_7fb2

	rst $18
	pop bc
	pop hl
	db $e3
	ret


	db $d3
	ld c, a
	push bc
	sbc $d4
	cp c
	inc [hl]
	ld d, [hl]
	ld a, a
	cp d
	jp c, wd47f

	reti


	call c, $58e7
	nop
	ld d, d
	jp z, $9d7f

	adc d
	add [hl]
	or [hl]
	rst $10
	ld c, a
	ld d, b
	ld bc, wcf45
	nop
	db $dd
	ld a, a
	db $d3
	rst $10
	rst $18
	ret nz

	rst $20
	ld d, b
	ld de, $5006
	nop
	add $d3
	jp nz, $b27f

	rst $18
	ld b, h
	or d
	inc sp
	ld a, a
	db $d3
	jp wdecd


	sub $57
	nop
	or d
	rst $08
	ld a, a
	add a
	sub b
	add hl, de
	ret


	ld a, a
	ret nc

	push bc
	call nz, $4fc6
	adc d
	xor e
	sub e
	add b
	xor e
	sub [hl]
	ld a, a
	ld a, [hli]
	or e
	ld h, $7f
	or a
	call nz, wc9de
	call nc, $5455
	ld a, a
	ld e, l
	db $d3
	ld d, l
	daa
	ld [c], a
	or e
	cp e
	sbc $7f
	cp b
	reti


	ld a, a
	rst $10
	cp h
	or d
	inc sp
	ld d, c
	sub b
	adc b
	xor h
	sub e
	ld a, a
	db $d3
	db $db
	ret nz

	ret


	jp z, $b47f

	or h
	sbc $d4
	cp c
	inc [hl]
	ld c, a
	ld b, b
	db $e3
	sub d
	or b
	call nz, Call_007_7fb6
	cp l
	or a
	call nc, wc57f
	or d
	or [hl]
	rst $10
	push bc
	ld d, l
	or [hl]
	call c, wc6d8
	ld a, a
	or d
	rst $18
	jp $b17f


	cp a
	sbc $33
	or h
	push bc
	ld d, a
	ld [$ab21], sp
	ld a, b
	call $3c79
	jp $0f6a


	nop
	sbc l
	adc d
	add [hl]
	ld [hl], d
	cp a
	call nc, $51e7
	call c, wc9c3
	ld a, a
	ld d, h
	ld a, a
	adc c
	and a
	add a
	adc e
	xor a
	xor e
	ld c, a
	pop bc
	dec sp
	rst $18
	call nz, $307f
	cp c
	ld a, a
	ret nc

	cp [hl]
	ret nz

	db $db
	or [hl]
	and $55
	call c, wc9c3
	ld a, a
	ld e, e
	ld a, a
	ret nc

	jp $6ed0


	ld d, a
	dec c
	ld [bc], a
	rlca
	ld [bc], a
	nop
	rst $38
	rlca
	inc bc
	nop
	rst $38
	nop
	inc bc
	dec b
	add hl, bc
	ld a, [bc]
	rst $38
	rst $38
	ld bc, $080c
	ld [$ffff], sp
	ld [bc], a
	inc c
	add hl, bc
	ld a, [bc]
	rst $38
	rst $38
	inc bc
	ld [de], a
	rst $00
	rlca
	ld [bc], a
	ld [de], a
	rst $00
	rlca
	inc bc
	inc b
	dec b
	ld b, $07
	ld [$0a09], sp
	dec bc
	ld bc, $0e02
	ld c, $03
	inc c
	inc bc
	inc bc
	call $373e
	ld hl, $7970
	call $3c79
	ld hl, $7937
	call $3c79
	call $3636
	ld a, [wcc26]
	and a
	jr nz, jr_007_792e

	ld a, $56
	call $3e9d

jr_007_792e:
	ld hl, $7955
	call $3c79
	jp $374a


	nop
	add hl, hl
	sbc $2b
	or d
	ret


	ld a, a
	ld d, h
	dec l
	or [hl]
	sbc $dd
	ld c, a
	set 4, d
	or e
	or [hl]
	ld a, a
	cp h
	jp wd37f


	rst $10
	or d
	ld a, a
	rst $08

jr_007_7951:
	cp l
	or [hl]
	and $57
	nop
	ld d, [hl]
	ld a, a
	add h
	db $e3
	add [hl]
	inc de
	ret


	ld a, a
	ld e, e
	call nz, $4fc9
	cp [hl]
	jp nz, $b82f

jr_007_7966:
	db $dd
	ld a, a
	or l
	call c, wc0df
	rst $20
	ld d, b
	dec c
	ld d, b
	nop
	add h
	db $e3
	add [hl]
	inc de
	ret


	ld a, a
	ld e, e
	call nz, wc27f
	push bc
	or d
	jr nc, jr_007_7966

	ld d, c
	ld d, h
	ld a, a
	dec l
	or [hl]
	sbc $4f
	set 4, d
	or e
	or [hl]
	ld a, a
	adc e
	adc h
	sub d
	sbc a
	db $dd
	ld a, a
	sub $3b
	jr nc, jr_007_7951

	ret nz

	rst $20
	ld e, b
	call $3c6c
	ld a, $39
	jp $3f25


	nop
	ld b, c
	xor h
	add l
	ld b, c
	add l
	ret


	ld a, a
	inc l
	jp $bcde


	ldh [$30], a
	rst $20
	ld d, a
	call $3c6c
	ld a, $05
	jp $3f25


	nop
	adc h
	adc a
	db $e3
	sub e
	ld a, a
	inc e
	adc a
	xor e
	db $dd
	ld a, a
	ld b, d
	adc e
	xor [hl]
	rst $20
	ld c, a
	or l
	cp l
	call nz, $a07f
	sub l
	xor [hl]
	db $e3
	ld h, $7f
	set 2, a
	cp b
	push bc
	ret c

	ld d, a
	call $3c6c
	ld hl, wd27b
	ld b, $13
	call $1690
	ld a, [wd0e3]
	cp $02
	ld a, $06
	jr c, jr_007_79ee

	ld a, $07

jr_007_79ee:
	jp $3f25


	nop
	adc l
	db $e3
	dec de
	cp l
	reti


	add $ca
	ld a, a
	ld d, h
	ld a, a
	and a
	ld b, e
	db $e3
	sub e
	ld c, a
	cp d
	rst $08
	jp nc, Jump_007_7fc6

	or [hl]
	cp b
	call nz, $b27f
	or d
	push bc
	ret c

	ld d, a
	nop
	ld d, h
	jp z, $8f7f

	add c
	ld b, d
	add $7f
	sub $df
	jp wc44f


	cp b
	or d
	push bc
	ld a, a
	adc a
	add c
	ld b, d
	ld d, l
	add $26
	jp Jump_007_7fc5


	adc a
	add c
	ld b, d
	ld h, $7f
	or d
	reti


	push bc
	ret c

	ld d, a

	ld hl, wd70f
	bit 7, [hl]
	jr z, jr_007_7a57

	ld a, [wd983]
	and a
	jr z, jr_007_7a5c

	jr jr_007_7a57

	ld a, [wd68c]
	ld b, a
	ld a, [wd68d]
	ld c, a
	or b
	jr z, jr_007_7a5c

	dec bc
	ld a, b
	ld [wd68c], a
	ld a, c
	ld [wd68d], a

jr_007_7a57:
	xor a
	ld [wd982], a
	ret


jr_007_7a5c:
	call $3c6c
	xor a
	ld [wcfae], a
	dec a
	call $0e45
	ld c, $02
	ld a, $b9
	call $0e35

jr_007_7a6e:
	ld a, [wc02a]
	cp $b9
	jr nz, jr_007_7a6e

	ld a, $d3
	ldh [$8c], a
	call $13f1
	xor a
	ld [wd4a7], a
	ld a, $9c
	ldh [$8b], a
	ld a, $03
	ld [wd3ae], a
	ld a, $05
	ld [wd59e], a
	ld hl, wd70f
	set 6, [hl]
	ld a, $01
	ld [wd982], a
	ret


	xor a
	ld [wcd66], a
	ld hl, $7aa3
	jp $3c79


	ld [$83fa], sp
	reti


	and a
	jr z, jr_007_7ab0

	ld hl, $7ab9
	call $3c79

jr_007_7ab0:
	ld hl, $7ad2
	call $3c79
	jp $0f6a


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
	inc l
	or [hl]
	sbc $26
	ld a, a
	or a
	rst $08
	cp h
	ret nz

	rst $20
	ld e, b
	nop
	add b
	sub h
	add d
	xor e
	adc h
	ld [hl], d
	adc d
	sbc e
	jp hl


	ret c

	ld a, a
	ld [$9fe3], sp
	ld c, a
	or l
	call c, Call_007_7fd8
	inc sp
	db $e3
	cp l
	rst $20
	ld d, a
	ld a, [wc109]
	cp $04
	ret nz

	call $3c6c
	ld a, $31
	jp $3f25


	ld [$eaaf], sp
	ld a, e
	reti


	ld a, [wcd3d]
	push af
	and $0f
	ldh [$db], a
	pop af
	and $f0
	swap a
	ldh [$dc], a
	ld hl, $7b2f
	call $3c79
	ldh a, [$db]
	dec a
	add a
	ld d, $00
	ld e, a
	ld hl, $7bb4
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	call $3c79
	ld a, $01
	ld [wcc3c], a
	call Call_007_7c84
	jp $0f6a


	nop
	ld d, h
	ld a, a
	add a
	add c
	inc c
	rst $20
	ld d, c
	cp [hl]
	or d
	or [hl]
	or d
	ld a, a
	cp l
	reti


	call nz, $137f
	add b
	ld h, $7f
	or c
	or d
	jp wc24f


	daa
	call $bd7f
	cp l
	jp nc, $bdcf

	rst $20
	ld d, c
	rst $08
	pop bc
	ld h, $b4
	ret nz

	rst $10
	ld a, a
	inc sp
	cp h
	ret


	ld a, a

jr_007_7b5e:
	ld e, l
	call nz, wc04f
	ret nz

	or [hl]
	rst $18
	jp $b27f


	ret nz

	jr nc, @-$47

	rst $08

jr_007_7b6c:
	cp l
	rst $20
	ld d, c
	cp d
	cp d
	ret


	ld a, a
	ret c

	db $e3
	rrca
	db $e3
	add $7f
	or c
	or e
	ld a, a
	rst $08
	inc sp
	ld c, a
	ld d, h
	ret


	ld a, a
	ret nz

	or d
	ret c

	ld [c], a
	cp b
	db $dd
	ld d, l
	call nz, $c3df
	ld a, a
	or l
	or a
	ret nz

	or d
	push bc
	rst $10
	rst $20
	ld d, c
	ld h, $de
	ld a, [hld]
	rst $18
	jp $ba7f


	ret nz

	or h
	jp $b87f


	jr nc, jr_007_7b5e

	or d
	rst $20
	ld c, a
	inc sp
	jp z, $b57f

	cp d
	ret nz

	or h
	ld a, a
	cp b
	jr nc, jr_007_7b6c

	or d
	rst $20
	ld e, b
	ret nz

	ld a, e
	call c, $f97b
	ld a, e
	ld de, $3d7c
	ld a, h
	ld h, h
	ld a, h
	nop
	ld d, h
	ld a, a
	add [hl]
	xor l
	adc a
	ld b, c
	db $e3
	ld h, $7f
	cp h
	sbc $b6
	cp l
	reti


	call nz, $194f
	adc a
	sbc e
	ret c

	db $e3
	add $7f
	push bc
	reti


	and $57
	nop
	ld d, h
	ld a, a
	ret c

jr_007_7be0:
	db $e3
	rlca
	ld a, a
	add $de
	jp $4fb2


	add hl, de
	xor h
	dec bc
	jp z, $2e7f

	sbc $3c
	inc sp
	ld a, a
	rst $38
	cp h
	pop hl
	reti


	or d
	and $57
	nop
	sub l
	xor a
	xor b
	and c
	jp z, $f97f

	or [hl]
	or d
	ld a, a
	cp h
	sbc $b6
	cp l
	reti


	ld c, a
	ld d, h
	ld a, a
	inc sp
	or c
	reti


	and $57
	nop
	or [hl]
	ret nc

	push bc
	ret c

	ld a, a
	adc a
	add c
	ld b, d
	ret


	ld a, a
	call c, wdd2b
	ld c, a
	cp b
	ret c

	jr nc, jr_007_7be0

	ret nz

	ld a, a
	call nz, $51b7
	inc l
	jp nc, Jump_007_7fde

	adc a
	add c
	ld b, d
	ret


	ld a, a
	ld d, h
	add $ca
	ld c, a
	sub $b8
	ld a, a
	or a
	cp b
	and $57
	nop
	or l
	push bc
	inc l
	ld a, a
	and a
	dec a
	and [hl]
	ret


	ld a, a
	or l
	push bc
	inc l
	ld a, a
	ld d, h
	ld c, a
	inc sp
	db $d3
	ld a, a
	jp nz, wcfb6

	or h
	reti


	ld a, a
	ret nz

	dec sp
	add $55
	jp nz, $bbd6

	jp z, wc17f

	ld h, $b3
	and $57
	nop
	ld [hl], b
	ld e, h
	ld hl, sp-$02
	ld [hl], c
	call nz, $4fca
	ld [hl], b
	cp h
	ret z

	cp h
	ret z

	cp d
	or e
	cp [hl]
	sbc $71
	inc sp
	or c
	reti


	and $57

Call_007_7c7c:
	ld hl, wd71b
	ld a, $10
	jp $3e9d


Call_007_7c84:
	call $3636
	ldh a, [$dc]
	ld c, a
	ld a, [wcc26]
	cp c
	jr nz, jr_007_7caa

	ld hl, wd0eb
	set 5, [hl]
	ldh a, [$db]
	ldh [$e0], a
	ld hl, $7cd5
	call $3c79
	ldh a, [$e0]
	ld c, a
	ld b, $01
	call Call_007_7c7c
	jp Jump_007_7d15


jr_007_7caa:
	call $3790
	ld a, $a5
	call $0e45
	call $3790
	ld hl, $7d0a
	call $3c79
	ldh a, [$db]
	add $02
	ld c, a
	ld b, $02
	ld hl, wd719
	ld a, $10
	call $3e9d
	ld a, c
	and a
	ret nz

	ldh a, [$db]
	add $02
	ld [wd97b], a
	ret


	dec bc
	nop
	or c
	ret nz

	ret c

	ld a, a
	inc sp
	cp l
	rst $20
	ld d, c
	cp e
	or a
	call $bd7f
	cp l
	sbc $33
	ld a, a
	or d
	or d
	inc sp
	cp l
	ld d, b
	ld b, $08
	ldh a, [$e0]
	ld c, a
	ld b, $02
	call Call_007_7c7c
	ld a, c
	and a
	jp nz, $0f6a

	call $3790
	ld a, $ad
	call $0e45
	call $3790
	jp $0f6a


	nop
	ld a, [hld]
	or [hl]
	ld a, a
	jp z, wda2d

	inc sp
	cp l
	ld d, [hl]
	ld e, b

Jump_007_7d15:
	ld a, $06
	ldh [$db], a

jr_007_7d19:
	ldh a, [$db]
	dec a
	add a
	add a
	ld d, $00
	ld e, a
	ld hl, $7d53
	add hl, de
	ld a, [hli]
	ld b, [hl]
	ld c, a
	inc hl
	ld a, [hl]
	ld [wd0f4], a
	push bc
	ldh a, [$db]
	ldh [$e0], a
	ld c, a
	ld b, $02
	call Call_007_7c7c
	ld a, c
	and a
	jr nz, jr_007_7d41

	ld a, [wd0f4]
	jr jr_007_7d43

jr_007_7d41:
	ld a, $0e

jr_007_7d43:
	pop bc
	ld [wd07c], a
	ld a, $17
	call $3e9d
	ld hl, $ffdb
	dec [hl]
	jr nz, jr_007_7d19

	ret


	add hl, bc
	inc bc
	ld d, h
	nop
	ld b, $03
	ld d, h
	nop
	ld b, $06
	ld d, h
	nop
	inc bc
	ld [$005f], sp
	ld [bc], a
	ld b, $54
	nop
	ld [bc], a
	inc bc
	ld d, h
	nop
	call $3c6c
	ld a, $30
	call $3f25
	ret


	nop
	ld d, h
	ld a, a
	dec hl
	rst $18
	cp h
	ld h, $7f
	push bc
	rst $10
	sbc $33
	reti


	rst $20
	ld d, c
	ld d, [hl]
	ld d, h
	ld a, a
	jp $e2c1


	or e
	ld d, c
	ld d, [hl]
	ld d, h
	ld a, a
	rlca
	and l
	sbc e
	ld d, a
	call $3c6c
	ld a, [wc109]
	cp $04
	ret nz

	ld a, [wd771]
	bit 7, a
	jr nz, jr_007_7df6

	bit 3, a
	jr nz, jr_007_7daa

	bit 6, a
	jr nz, jr_007_7daf

jr_007_7daa:
	ld a, $2d
	jp $3f25


jr_007_7daf:
	ld a, $01
	ld [wcc3c], a
	ld a, $2e
	call $3f25
	ld c, $20
	call $3781
	ld a, $8c
	call $0e45
	call $3790
	ld c, $50
	call $3781
	ld a, $9c
	call $0e45
	call $3790
	ld c, $30
	call $3781
	ld a, $8c
	call $0e45
	call $3790
	ld c, $20
	call $3781
	ld a, $86
	call $0e45
	call $3790
	call $0d9b
	ld hl, wd771
	set 3, [hl]
	ret


jr_007_7df6:
	ld a, $01
	ld [wcc3c], a
	ld a, $2f
	call $3f25
	ret


	nop
	ld e, e
	ret


	ld a, a
	ld h, $d2
	sbc $c6
	ld c, a
	jp $bfde


	or e
	sbc l
	adc e
	xor e
	call nz, $337f
	jp $bdcf


	rst $20
	ld d, a
	nop
	ld d, d
	jp z, $c37f

	sbc $bf
	or e
	sbc l
	adc e
	xor e
	ret


	ld c, a
	inc a
	sbc $d8
	ld a, a
	ld b, d
	xor b
	rlca
	and l
	sbc a
	db $dd
	ld a, a
	or a
	inc [hl]
	or e
	ld a, a
	cp h
	ret nz

	rst $20
	ld d, b
	ld b, $08
	ld a, $ff
	ld [wc0ee], a
	call $0e45
	ld c, $10
	call $3781
	ld a, $9d
	call $0e45
	call $3790
	ld c, $3c
	call $3781
	jp $0f6a


	ld [$61cd], sp
	scf
	ld hl, $7ed2
	call $3c79
	xor a
	ld [wd059], a
	ld [wcc26], a
	ld [wcc2a], a
	ld a, $03
	ld [wcc29], a
	ld a, $04
	ld [wcc28], a
	ld a, $02
	ld [wcc24], a
	ld a, $01
	ld [wcc25], a

jr_007_7e80:
	ld hl, wd6af
	set 6, [hl]
	ld hl, wc3a0
	ld b, $0a
	ld c, $09
	call $03d2
	ld hl, wc3ca
	ld de, $7ee7
	call $0405
	ld hl, $7f07
	call $3c79
	call $373e
	call $3b08
	bit 1, a
	jr nz, jr_007_7ec7

	ld a, [wcc26]
	add $66
	cp $66
	jr z, jr_007_7ebf

	cp $67
	jr z, jr_007_7ebf

	cp $68
	jr z, jr_007_7ebf

	cp $69
	jr z, jr_007_7ebf

	jr jr_007_7ec7

jr_007_7ebf:
	call $34e5
	call $374a
	jr jr_007_7e80

jr_007_7ec7:
	ld hl, wd6af
	res 6, [hl]
	call $374a
	jp $0f6a


	nop
	sbc l
	adc d
	add [hl]
	cp b
	sbc $c9
	ld c, a
	or l
	or a
	add $b2
	ret c

	ld a, a
	ld d, h
	ld a, a
	ret c

	adc h
	sub e
	rst $20
	ld e, b
	add c
	db $e3
	dec de
	add c
	ld c, [hl]
	dec de
	db $e3
	adc h
	adc a
	db $e3
	ld c, [hl]
	adc d
	xor e
	rrca
	db $e3
	adc h
	ld c, [hl]
	adc e
	xor l
	xor c
	db $e3
	inc c
	ld c, [hl]
	ret nc

	reti


	ret


	db $dd
	ld a, a
	call nc, wd9d2
	ld d, b
	nop
	inc [hl]
	jp c, Jump_007_7fdd

	ret nc

	cp [hl]
	jp wd37f


	rst $10
	or d
	ld a, a

jr_007_7f14:
	rst $08
	cp l
	or [hl]
	and $57
	ld a, [wc109]
	cp $04
	ret nz

	call $3c6c
	ld a, $08
	jp $3f25


	nop
	ld e, e
	db $dd
	ld a, a

Call_007_7f2b:
	ret nc

	reti


	call nz, wc54f
	sbc $c4
	ld a, a

Jump_007_7f33:
	inc sp
	sbc $bc
	and b
	db $e3
	and [hl]
	ld h, $7f

Call_007_7f3b:
	or a
	jp wc0b2


	rst $20
	ld d, c
	ld d, [hl]
	ld a, a
	ld d, [hl]
	ld a, a
	ld d, [hl]
	ld d, c
	ld d, h
	db $dd
	ld a, a
	jp nz, $b8d6

	ld a, a
	cp a
	jr nc, jr_007_7f14

	jp wc04f


	ret nz

	or [hl]

Jump_007_7f56:
	or e
	ld a, a
	ld d, h
	ld a, a
	ld e, l
	rst $20
	ld d, l
	cp d
	cp d
	add $7f

jr_007_7f61:
	cp e
	or d

jr_007_7f63:
	or a
	ld [c], a
	or e
	ret


	ld d, l
	ld e, l
	ld h, $7f
	or c
	jp nz, wd8cf

	ld a, a
	rst $08
	cp h
	ret nz

	ld d, c
	ld a, [hld]
	cp h
	ld [c], a
	jp z, $8d7f

	add [hl]
	add e
	add c
	ld a, a
	cp d
	or e
	add hl, hl
	sbc $c9
	ld c, a
	ld d, h
	ld a, a
	ret c

	db $e3
	rlca
	ld a, a
	adc $de
	inc a
	ld a, a
	inc sp
	cp l
	rst $20
	ld d, l
	add h
	db $e3
	add [hl]
	inc de
	jp z, $beb6

	db $d3
	ld d, l
	or d
	pop bc
	inc [hl]
	ld a, a
	ld a, [hli]
	rst $10
	sbc $7f
	cp b
	jr nc, jr_007_7f61

	or d
	ld d, l
	ld d, [hl]
	ld a, a
	ld d, h
	ld a, a
	ret c

	db $e3
	rlca
	ld a, a
	sub $d8

Jump_007_7fb2:
	ld d, l
	ld d, [hl]
	ld a, a
	ld d, [hl]

Call_007_7fb6:
	ld a, a
	ld d, [hl]
	ld d, a
	ld d, [hl]
	ld a, a
	ld d, [hl]
	ld d, a
	xor c
	and [hl]
	rrca

Jump_007_7fc0:
	dec b
	rst $20
	and e

Jump_007_7fc3:
	rst $28
	dec c

Call_007_7fc5:
Jump_007_7fc5:
	db $ed

Call_007_7fc6:
Jump_007_7fc6:
	jr nz, jr_007_7f63

	ld c, l

Jump_007_7fc9:
	add l

Call_007_7fca:
Jump_007_7fca:
	ld l, c
	xor a
	ld bc, $0165
	push hl
	adc c
	ld b, c
	push bc

Jump_007_7fd3:
	ld b, a
	pop bc
	dec l
	rlca
	ld a, a

Call_007_7fd8:
	dec c

Call_007_7fd9:
Jump_007_7fd9:
	inc hl
	ld d, c
	dec [hl]
	ld b, e

Jump_007_7fdd:
	db $e3

Call_007_7fde:
Jump_007_7fde:
	ld bc, $f741
	daa
	and c
	dec c
	ld c, $e3
	and c

Jump_007_7fe7:
	sbc a
	ld c, c
	ld h, c
	ld b, c
	cpl
	di
	pop af
	sbc c
	add $6f
	ld bc, wc14b
	sub a
	ccf
	add hl, bc
	ld l, l
	xor a
	ld bc, $ef29
	pop bc
	add a
	add e
	ld e, e
