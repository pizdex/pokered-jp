; Disassembly of "pokemon-red-jp.gb"

SECTION "ROM Bank $015", ROMX[$4000], BANK[$15]

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
	dec a
	add hl, bc
	dec a
	dec a
	dec bc
	dec bc
	rlca
	ld b, $0b
	dec bc
	dec bc
	inc l
	dec bc
	dec de
	dec bc
	dec [hl]

	db $00, $24, $0a, $9e, $40, $52, $52, $4f, $52, $0c, $02, $14, $47, $e8, $c6, $10
	db $14, $23, $0a, $bd, $c8, $01, $ee, $43, $58, $c9, $10, $14, $00, $0a, $03, $c7
	db $42, $40, $0f, $06, $09, $0c, $00, $2e, $0b, $03, $01, $2f, $13, $0f, $00, $30
	db $23, $10, $01, $31, $27, $0f, $02, $31, $2b, $03, $02, $32, $02, $41, $05, $03
	db $0b, $0b, $04, $02, $3d, $3a, $11, $ff, $ff, $81, $0a, $3d, $31, $11, $ff, $ff
	db $82, $23

	ccf
	rst $00
	add hl, bc
	inc c
	ld c, d
	rst $00
	dec bc
	inc bc
	sub b
	rst $00
	inc de
	rrca
	ld de, $23c8
	db $10
	jr nc, @-$36

	daa
	rrca
	ld c, d
	ret z

	dec hl
	inc bc
	ld [de], a
	rst $00
	rlca
	ld [bc], a
	ld [de], a
	rst $00
	add hl, bc
	rlca
	ld [de], a
	rst $00
	rlca
	ld [bc], a
	ld [de], a
	rst $00
	rlca
	ld [bc], a
	ld [de], a
	rst $00
	rlca
	ld [bc], a

	db $0f, $0f, $0f, $0f, $01, $0f, $0f, $0f, $0f, $0f, $0b, $0b, $0b, $0b, $01, $1b
	db $31, $31, $31, $31, $0b, $0b, $0b, $0b, $01, $1b, $31, $31, $31, $31, $0b, $0b
	db $0b, $0b, $01, $3e, $3f, $3f, $3b, $31, $31, $31, $31, $31, $31, $24, $06, $57
	db $25, $31, $6c, $6d, $32, $6c, $6c, $08, $31, $74, $74, $0a, $0a, $20, $21, $0a
	db $0a, $31, $31, $31, $31, $31, $52, $7c, $7e, $52, $52, $52, $52, $0a, $0a, $31
	db $55, $55, $55, $55, $0f, $0f, $0f, $0a, $0a, $31, $1a, $1a, $1a, $1a, $0f, $0f
	db $0f, $02, $03, $31, $0b, $01, $0b, $0b, $0f, $0f, $0f, $31, $31, $31, $0f, $0f
	db $0f, $0f, $0f, $0f, $0f, $32, $6c, $6c, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0a
	db $0a, $0a, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $07, $2f, $07, $0f, $0f, $0f, $0f
	db $0f, $0f, $0f, $0a, $0a, $74, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $07, $2f, $07
	db $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0a, $0a, $74, $0f, $0f, $0f, $0f, $0f, $0f
	db $0f, $52, $0a, $52, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $20, $0d, $21, $6c, $6d
	db $32, $6c, $6c, $0f, $0f, $7c, $7d, $7e, $0a, $20, $21, $0a, $0a, $0f, $0f, $0a
	db $0a, $0a, $52, $7c, $7e, $52, $52, $0f, $0f, $2f, $07, $07, $55, $55, $55, $55
	db $55, $6e, $0a, $0a, $0a, $0a, $1a, $1a, $1a, $1a, $01, $6e, $0a, $0a, $74, $74
	db $74, $01, $0b, $0b, $0b, $6e, $07, $2f, $07, $07, $74, $01, $0b, $0b, $0b, $6e
	db $0a, $0a, $0a, $0a, $74, $01, $0a, $6f, $6f, $6f, $34, $0a, $0a, $0a, $74, $01
	db $6e, $0f, $0f, $0f, $6d, $0a, $0a, $0a, $74, $01, $0a, $6c, $6c, $6c, $6d, $74
	db $0a, $0a, $74, $01, $31, $31, $31, $0a, $6d, $74, $74, $0a, $0f, $07, $07, $2f
	db $1a, $07, $34, $2f, $07, $07, $0f, $74, $74, $0a, $31, $0a, $6d, $0a, $0a, $0a
	db $0f, $31, $08, $31, $31, $0a, $6d, $74, $74, $0a, $0f, $01, $74, $74, $31, $0a
	db $6d, $74, $74, $0a, $0f, $01, $01, $01, $01, $6f, $34, $6f, $6f, $6f, $0f, $0f
	db $0f, $1b, $01, $0f, $0f, $0f, $0f, $0f

	nop
	add hl, bc
	inc hl
	ld [hl], l
	ld b, d
	sbc a
	ld d, d
	add [hl]
	ld d, d
	ld a, [bc]
	rrca
	ld a, [de]
	ld b, l
	inc b
	rst $00
	dec c
	dec l
	ld de, $b4ce
	ret z

	ld [bc], a
	dec bc
	ld b, [hl]
	add sp, -$3a
	rrca
	inc d
	ld [$1627], sp
	rst $00
	jr z, jr_015_426a

	inc l
	nop
	ld bc, $3b09
	ld a, [bc]
	add hl, bc
	inc c
	rrca
	dec a
	rst $38
	rst $38
	ld bc, $0a04
	ld c, $ff
	db $d3
	ld b, d
	jp z, $0404

	ld [$ff12], sp
	ret nc

	ld b, e
	ret


	ld bc, $0d06
	inc d
	rst $38
	jp nc, wcb44

	ld bc, $0904
	rla
	rst $38
	ret nc

	ld b, l
	jp z, $0605

	ld [$ff1b], sp
	jp nc, wcb46

	ld [bc], a
	inc b
	dec c
	ld a, [de]
	rst $38
	jp nc, wc947

	ld [bc], a
	inc b
	ld a, [bc]
	inc e
	rst $38
	db $d3

jr_015_426a:
	ld c, b
	jp z, $0606

	ld c, $25
	rst $38
	pop de
	ld c, c
	rlc e
	inc l
	inc l
	inc l
	inc l
	inc l
	inc l
	inc l
	inc l
	inc l
	inc l
	inc l
	inc l
	inc l
	inc l
	inc l
	inc l
	inc l
	inc l
	inc l
	inc l
	inc l
	inc l
	inc l
	inc l
	inc l
	inc l
	inc l
	add hl, hl
	ld l, l
	ld bc, $0101
	jr z, jr_015_42c3

	inc l
	inc l
	inc l
	inc l
	inc l
	dec hl
	ld d, a
	ld d, a
	ld d, a
	ld d, a
	ld d, a
	ld d, a
	ld d, a
	ld d, a
	ld d, a
	ld a, [hli]
	inc l
	dec hl
	ld d, a
	ld d, a
	ld d, a
	ld d, a
	ld d, a
	ld d, a
	ld d, a
	ld d, a
	ld a, [hli]
	inc l
	add hl, hl
	ld a, [bc]
	ld bc, $0101
	jr z, jr_015_42e6

	inc l
	inc l
	inc l
	inc l
	inc l
	add hl, hl
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]

jr_015_42c3:
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld [hl], h
	jr z, jr_015_42f7

	add hl, hl
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	jr z, @+$2e

	add hl, hl
	ld a, [bc]
	ld bc, $3f3e
	inc l
	inc l
	inc l
	ld d, a
	ld d, a
	ld d, a
	ld d, a
	dec h
	cpl
	rlca
	rlca

jr_015_42e6:
	ld b, d
	rlca
	rlca
	ld b, d
	rlca
	cpl
	inc h
	ld d, a
	dec h
	rlca
	cpl
	ld a, $3f
	dec sp
	rlca
	rlca
	cpl

jr_015_42f7:
	jr z, @+$2e

	add hl, hl
	rlca
	cpl
	inc h
	ld d, a
	ld d, a
	ld a, [hli]
	inc l
	ld bc, $400a
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld l, [hl]
	ld a, [bc]
	ld a, [bc]
	ld l, [hl]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	jr z, jr_015_4342

	add hl, hl
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	inc h
	ld d, a
	dec h
	ld a, [bc]
	ld d, [hl]
	dec bc
	dec bc
	dec bc
	jr z, jr_015_4350

	ld bc, $410a
	ld a, [bc]
	ld l, [hl]
	rlca
	rlca
	cpl
	ld b, d
	rlca
	rlca
	ld b, d
	dec bc
	dec bc
	dec bc
	dec bc
	dec bc
	dec bc
	dec bc
	jr z, jr_015_4365

	add hl, hl
	ld [hl], h
	ld [hl], h
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	dec bc

jr_015_4342:
	dec bc
	dec bc
	dec bc
	jr z, jr_015_4373

	ccf
	ccf
	ccf
	ccf
	dec sp
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]

jr_015_4350:
	ld a, [bc]
	ld a, [bc]
	ld l, [hl]
	dec bc
	dec bc
	dec bc
	dec bc
	dec bc
	dec bc
	dec bc
	jr z, jr_015_4388

	add hl, hl
	ld [hl], h
	ld [hl], h
	ld [hl], h
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	dec bc

jr_015_4365:
	dec bc
	dec bc
	dec bc
	jr z, jr_015_4396

	inc l
	inc l
	inc l
	inc l
	add hl, hl
	ld a, $3f
	ccf
	ccf

jr_015_4373:
	ccf
	ccf
	ccf
	dec sp
	rrca
	rrca
	rrca
	rrca
	rrca
	rrca
	jr z, jr_015_43ab

	add hl, hl
	ld a, $3f
	ccf
	ccf
	ccf
	ccf
	ccf
	ccf

jr_015_4388:
	ccf
	ccf
	ccf
	inc l
	inc l
	ld d, a
	ld d, a
	ld d, a
	ld d, a

jr_015_4391:
	dec h
	jr z, jr_015_43c0

	inc l
	inc l

jr_015_4396:
	inc l
	inc l
	inc l
	add hl, hl
	rrca
	rrca
	rrca
	rrca
	rrca
	rrca
	jr z, @+$2e

	add hl, hl
	jr z, @+$2e

	inc l
	inc l
	inc l
	inc l
	inc l
	inc l

jr_015_43ab:
	inc l
	inc l
	inc l
	inc l
	inc l
	nop
	add hl, bc
	dec l
	inc c
	ld b, h
	db $10
	ld d, [hl]
	rst $30
	ld d, l
	dec b
	ld c, $8b
	ld b, d
	ld c, h
	ret


	dec c

jr_015_43c0:
	inc hl
	nop
	ld [hld], a
	ld [de], a
	rst $00
	inc bc
	ld b, h
	ld c, b
	jr jr_015_4391

	rrca
	inc d
	ld [$0300], sp
	rst $00
	jp nc, $2c43

	inc bc
	dec b
	dec bc
	nop
	ld b, h

Call_015_43d8:
	dec b
	ld [de], a
	nop
	dec sp
	dec b
	jr @+$09

	inc a
	inc bc
	dec b
	inc c
	inc b
	rlca
	ld de, $0705
	dec de
	ld b, $03
	ld b, $0c
	dec c
	cp $00
	ld bc, $0706
	ld b, e
	rst $38
	db $d3
	ld b, d
	rlc h
	dec a
	rlca
	dec a
	rst $38
	rst $38
	add e
	call z, wc787
	dec b
	dec bc
	adc e
	rst $00
	dec b
	ld [de], a
	adc [hl]
	rst $00
	dec b
	jr jr_015_4439

	inc l
	inc l
	inc l
	dec hl
	ld d, a
	ld d, a
	ld a, [hli]
	inc l
	inc l
	inc l
	inc l
	inc l
	inc l
	inc l
	inc l
	inc l
	dec hl
	ld d, a
	ld d, a
	ld d, a
	ld d, a
	ld d, a
	ld d, a
	ld d, a
	ld d, a
	ld d, a
	ld d, a
	ld d, a
	ld d, a
	ld d, a
	ld d, a
	ld d, a
	ld d, a
	ld d, a
	ld d, a
	ld d, a
	ld d, a
	ld d, a
	ld d, a
	ld a, [hli]
	inc l
	inc l
	inc l
	inc l

jr_015_4439:
	inc l
	dec hl
	ld d, a
	ld d, a
	dec h
	jr nz, @+$23

	inc h
	ld a, [hli]
	inc l
	inc l
	inc l
	inc l
	inc l
	inc l
	inc l
	inc l
	add hl, hl
	ld a, [bc]
	ld e, b
	ld a, [bc]
	ld e, c
	ld e, c
	ld a, [bc]
	ld a, [bc]
	ld e, b
	ld a, [bc]
	ld e, b
	ld a, [bc]
	ld a, [bc]
	ld e, b
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld sp, $3131
	ld sp, $5724
	ld d, a
	ld d, a
	ld d, a
	inc l
	add hl, hl
	ld bc, $0101
	ld a, h
	ld [hl], d
	ld bc, $0624
	ld a, [hli]
	dec hl
	ld b, $57
	ld d, a
	ld d, a
	ld d, a
	dec h
	ld a, [bc]
	ld e, d
	cpl
	ld e, e
	ld e, c
	ld a, [bc]
	ld a, [bc]
	ld e, b
	ld a, [bc]
	ld e, b
	ld a, [bc]
	ld a, [bc]
	ld e, d
	rlca
	rlca
	rlca
	rlca
	rlca
	ld a, [de]
	ld a, [de]
	ld a, [de]
	ld a, [de]
	ld h, c
	ld h, c
	ld h, c
	ld h, c
	ld h, c
	inc l
	add hl, hl
	ld a, [de]
	ld a, [de]
	ld bc, $0101
	ld bc, $0108
	jr z, jr_015_44c8

	ld sp, $3108
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld e, c
	ld a, [bc]
	ld a, [bc]
	ld e, b
	ld a, [bc]
	ld e, d
	cpl
	rlca
	rlca
	rlca
	rlca
	rlca
	rlca
	rlca
	ld a, [de]
	ld a, [de]
	ld a, [de]
	ld a, [de]
	ld h, a
	rra
	rra
	rra
	rra
	inc l
	add hl, hl
	ld bc, $0101
	ld bc, $1a01

jr_015_44c8:
	ld a, [de]
	ld a, [de]
	jr z, @+$2b

	rlca
	rlca
	rlca
	rlca
	rlca
	cpl
	rlca
	rlca
	rlca
	rlca
	ld e, e
	ld a, [bc]
	ld a, [bc]
	ld e, d
	rlca
	rlca
	rlca
	rlca
	cpl

Call_015_44df:
Jump_015_44df:
	ld l, a
	rlca
	rlca
	rlca
	rlca
	ld a, [de]
	inc e
	ld a, [de]
	ld a, [de]
	inc d
	ld l, e
	ld l, e
	ld l, e
	ld l, e
	inc l
	add hl, hl
	ld a, [de]
	ld a, [de]
	ld a, [de]
	ld a, [de]
	ld bc, $0101
	ld bc, $2928
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld l, l
	dec bc
	dec bc
	dec bc
	dec bc
	dec bc
	ld l, [hl]
	ld sp, $3131
	ld sp, $3131
	ld sp, $292c
	ld bc, $0101
	ld bc, $1a01
	ld a, [de]
	ld a, [de]
	jr z, jr_015_4552

	ccf
	ccf
	ccf
	ccf
	ccf
	ccf
	ccf
	ccf
	dec sp
	cpl
	rlca
	rlca
	rlca
	rlca
	cpl
	rlca
	rlca
	rlca
	rlca
	ld l, l
	dec bc
	dec bc
	dec bc
	dec bc
	dec bc
	ld l, [hl]
	cpl
	rlca
	ld h, d
	ld d, c
	ld d, c
	ld d, c
	ld d, c
	inc l
	inc l
	dec sp
	ld a, [de]
	ld a, [de]
	ld bc, $0101
	ld bc, $2801

jr_015_4552:
	inc l
	inc l
	inc l
	inc l
	inc l
	inc l
	inc l
	inc l
	inc l
	add hl, hl
	ld [hl], h
	ld [hl], h
	ld [hl], h
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld l, l
	dec bc
	dec bc
	dec bc
	dec bc
	dec bc
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld c, [hl]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	inc l
	inc l
	add hl, hl
	ld bc, $0101
	ld a, [de]
	ld a, $3f
	ccf
	inc l
	inc l
	inc l
	inc l
	inc l

jr_015_4583:
	inc l
	inc l
	inc l
	inc l
	inc l
	inc l
	ccf
	ccf
	ccf
	ccf
	ccf
	ccf
	ccf
	ccf
	ccf
	ccf
	ccf
	ccf
	ccf
	ccf
	ccf
	ccf
	ccf
	ccf
	ccf
	ccf
	ccf
	dec sp
	ld [hl], h
	ld [hl], h
	nop
	ld [de], a
	ld a, [bc]
	ld a, [c]
	ld b, l
	db $e4
	ld d, [hl]
	pop hl
	ld d, [hl]
	inc c
	inc bc
	ld e, [hl]
	ld c, c
	add sp, -$3a
	db $10
	inc d
	inc hl
	ld a, [bc]
	cp l
	ret z

	ld a, [bc]
	sbc d
	ld c, d
	jr c, jr_015_4583

	db $10
	inc d
	nop
	ld a, [bc]
	inc bc
	rst $00
	jp $0a45


	dec b
	dec e
	ld a, [bc]
	inc bc
	ld b, [hl]
	dec e
	add hl, bc
	ld [bc], a
	ld b, [hl]
	ld hl, $000a
	ld b, [hl]
	dec de
	ld de, $4700
	dec d
	ld a, [bc]
	nop
	ld c, b
	ld bc, $111d
	ld bc, wde00
	rst $00
	dec e
	ld a, [bc]
	db $dd
	rst $00
	dec e
	add hl, bc
	cp $c7
	ld hl, wd10a
	rst $00
	dec de
	ld de, wc79e
	dec d
	ld a, [bc]
	ld l, l
	daa
	ld l, [hl]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld c, [hl]
	daa
	ld c, l
	ld l, l
	daa
	ld l, [hl]
	rlca
	rlca
	rlca
	rlca
	ld c, [hl]
	daa
	ld c, l
	ld l, l
	daa
	ld l, [hl]
	dec bc
	dec bc
	dec bc
	dec bc
	ld c, [hl]
	daa
	ld c, l
	ld l, l
	daa
	ld l, [hl]
	rlca
	rlca
	rlca
	rlca
	ld c, [hl]
	daa
	ld c, l
	ld l, l
	daa
	ld l, [hl]
	dec bc
	dec bc
	dec bc
	dec bc
	ld c, [hl]
	daa
	ld c, l
	ld l, l
	daa
	ld l, [hl]
	rlca
	rlca
	rlca
	rlca
	ld c, [hl]
	daa
	ld c, l
	ld l, l
	daa
	ld l, [hl]
	dec bc
	dec bc
	dec bc
	dec bc
	ld c, [hl]
	daa
	ld c, l
	ld l, l
	daa
	ld l, [hl]
	rlca
	rlca
	rlca
	rlca
	ld c, [hl]
	daa
	ld c, l
	ld l, l
	daa
	ld e, a
	ld sp, $3131
	ld sp, $271b
	ld c, l
	ld l, l
	daa
	ld e, a
	ld sp, $0e0c
	ld sp, $271b
	ld c, l
	ld l, l
	ld e, [hl]
	ld e, a
	ld sp, $1210
	ld sp, $5e1b
	ld c, l
	ld l, l
	ld bc, $1a5f
	ld a, [de]
	ld a, [de]
	ld a, [de]
	dec de
	ld bc, $6d4d
	ld bc, $0101
	ld bc, $0101
	ld bc, $2120
	ld l, l
	ld bc, $0101
	ld bc, $0101
	ld bc, $7e7c
	ld l, l
	ld bc, $0101
	dec de
	ld e, a
	ld bc, $0801
	ld c, l
	ld l, l
	ld bc, $2001
	dec c
	dec c
	ld hl, $0101
	ld c, l
	ld l, [hl]
	ld [hl], a
	ld [hl], a
	scf
	ld a, l
	ld a, [hld]
	ld a, [hl]
	ld [hl], a
	ld [hl], a
	ld l, l
	ld l, [hl]
	ld [hl], h
	ld [hl], h
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld [hl], h
	ld [hl], h
	ld l, l
	nop
	add hl, bc
	ld e, $1e
	ld b, a
	ld e, $57
	dec b
	ld d, a
	inc bc
	inc bc
	ld d, l
	ld c, b
	add sp, -$3a
	rrca
	inc d
	ld [$1627], sp
	rst $00
	dec d
	ld [hl], d
	ld b, e
	ld [hl], l
	rst $00
	inc c
	ld a, [bc]
	nop
	nop
	ld sp, hl
	add $c8
	ld b, [hl]
	inc l
	nop
	ld bc, $1907
	dec bc
	ld a, [bc]
	ld b, $0e
	ld de, wd2ff
	ld b, c
	adc $05
	rlca
	dec bc
	inc e
	rst $38
	jp nc, wcd42

	rlca
	rlca
	dec bc
	inc hl
	rst $38
	db $d3
	ld b, e
	call $0608
	inc c
	inc [hl]
	rst $38
	db $d3
	ld b, h
	adc $06
	ld c, $13
	inc d
	rst $38
	jp nc, wd145

	dec bc
	ld c, $07
	cpl
	rst $38
	jp nc, wd146

	ld b, $04
	ld b, $1a
	rst $38
	ret nc

	ld b, a
	jp z, $0e0d

	inc de
	ld sp, wd3ff
	ld c, b
	pop de
	dec b
	inc b
	inc c
	inc l
	rst $38
	db $d3
	ld c, c
	jp z, $3d0e

	inc de
	ld c, $ff
	rst $38
	adc d
	and $24
	ld d, a
	ld d, a
	ld d, a
	ld d, a
	ld d, a
	ld d, a
	ld d, a
	ld d, a
	ld d, a
	ld d, a
	ld d, a
	ld d, a
	ld d, a
	ld d, a
	ld d, a
	ld d, a
	ld a, [hli]
	dec hl
	ld d, a
	ld d, a
	ld d, a
	ld d, a
	ld d, a
	ld d, a
	ld d, a
	ld a, [hli]
	inc l
	inc l
	dec hl
	ld [hl], h
	ld [hl], h
	ld c, l
	dec bc
	dec bc
	dec bc
	dec bc
	dec bc
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, $3b
	dec bc
	dec bc
	jr z, jr_015_4778

	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	jr z, @+$2e

	inc l
	add hl, hl
	ld [hl], h
	ld [hl], h
	ld c, l
	dec bc
	dec bc
	dec bc
	dec bc
	dec bc
	ld a, $3b
	rlca
	rlca
	cpl
	jr z, @+$2b

	cpl
	rlca
	inc h
	dec h
	cpl
	rlca
	rlca
	rlca
	ld a, $3b
	rlca
	jr z, jr_015_47a2

	inc l
	add hl, hl

jr_015_4778:
	ld d, d
	ld d, d
	ld c, a
	rlca
	rlca
	rlca
	rlca
	ld c, h
	jr z, @+$2b

	ld sp, $0831
	inc h
	dec h
	ld sp, $3131
	ld sp, $3131
	ld sp, $2431
	dec h
	ld sp, $5724
	ld d, a
	dec h
	ld a, [bc]
	ld a, [bc]
	dec [hl]
	ld sp, $3131
	ld sp, $2c3e
	add hl, hl
	ld a, [de]
	ld a, [de]

jr_015_47a2:
	ld a, [de]
	rlca
	cpl
	ld a, $3b
	ld sp, $3b3e
	ld sp, $3b3e
	ld sp, $3131
	ld sp, $3131
	ld sp, $5151
	ld h, e
	ld a, $3b
	ld a, [de]
	ld a, [de]
	inc h
	ld d, a
	dec h
	ld sp, $3131
	ld sp, $240a
	dec h
	rlca
	inc h
	dec h
	cpl
	jr z, @+$2b

	ld a, [de]
	ld a, $3b
	ld a, [de]
	ld a, $3f
	ccf
	ld [hl], h
	ld [hl], h
	ld c, l
	jr z, jr_015_4800

	rlca
	rlca
	rlca
	rlca
	cpl
	ld a, [de]
	ld a, [de]
	ld a, $3b
	cpl
	rlca
	rlca
	rlca
	rlca
	rlca
	rlca
	inc h
	dec h
	ld a, [de]
	inc h
	dec h
	ld a, [de]
	jr z, jr_015_481b

	inc l
	ld [hl], h
	ld [hl], h
	ld c, l
	jr z, jr_015_481e

	ld sp, $3131
	ld sp, $3131
	ld sp, $2928
	ld a, [bc]
	ld a, [bc]

jr_015_4800:
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	jr z, jr_015_4839

	inc l
	ld [hl], h
	ld [hl], h
	ld c, l
	jr z, jr_015_483f

	ccf
	ccf
	ccf
	ccf
	ccf
	ccf
	ccf
	inc l

jr_015_481b:
	inc l
	ccf
	ccf

jr_015_481e:
	ccf
	ccf
	ccf
	ccf
	ccf
	ccf
	ccf
	ccf
	ccf
	ccf
	ccf
	inc l
	inc l
	inc l
	nop
	add hl, bc
	ld e, $ab
	ld c, b
	xor e
	ld e, d
	sub d
	ld e, d
	ld a, [bc]
	rla
	ld a, [hli]
	ld c, c

jr_015_4839:
	rst $38
	add $0a
	ld a, [bc]
	ld l, e
	ret c

jr_015_483f:
	ld c, c
	jp z, $3919

	ld c, d
	ld d, h
	rst $00
	inc c
	ld a, [bc]
	nop
	inc de
	ld [bc], a
	rst $00
	ld c, [hl]
	ld c, b
	ld b, e
	nop
	inc bc
	dec c
	rrca
	dec bc
	dec b
	ld hl, $0b0c
	rra
	dec c
	ld a, [bc]
	rlca
	ld c, $35
	rst $38
	db $d3
	ld b, c
	rst $18
	ld bc, $0e06
	inc [hl]
	rst $38
	ret nc

	ld b, d
	adc $0c
	ld b, $0d
	rra
	rst $38
	ret nc

	ld b, e
	adc $0d
	ld b, $0e
	dec de
	rst $38
	jp nc, wce44

	ld c, $06
	add hl, bc
	ld [hl], $ff
	ret nc

	ld b, l
	adc $0f
	rlca
	ld [$ff10], sp
	db $d3
	ld b, [hl]
	rst $18
	ld [bc], a
	rrca
	ld a, [bc]
	dec h
	rst $38
	ret nc

	ld b, a
	jp c, $0f04

	ld a, [bc]
	inc h
	rst $38
	ret nc

	ld c, b
	jp c, $1205

	dec bc
	ld c, $ff
	pop de
	ld c, c
	jp nc, $0701

	ld de, $ff0b
	pop de
	ld c, d
	rst $18
	inc bc
	ld sp, $3131
	ld sp, $3131
	ld sp, $3131
	ld sp, $3131
	ld sp, $3131
	ld sp, $1c31
	rrca
	rrca
	rrca
	rrca
	rrca
	rrca
	rrca
	ld d, h
	ld b, e
	ld b, e
	ld b, e
	add hl, de
	ld [hl], a
	ld [hl], a
	ld [hl], a
	ld [hl], a
	ld [hl], a
	ld [hl], a
	ld [hl], a
	ld [hl], a
	ld [hl], a
	ld [hl], a
	ld [hl], a
	ld [hl], a
	ld [hl], a
	ld [hl], a
	ld [hl], a
	ld [hl], a
	ld [hl], a
	rrca
	ld l, h
	ld l, h
	ld l, h
	ld l, h
	ld l, h
	ld l, h
	rrca
	ld d, h
	ld b, e
	ld b, e
	ld b, e
	add hl, de
	ld [hl], a
	ld [hl], a
	ld [hl], a
	ld [hl], a
	ld [hl], a
	ld [hl], a
	ld bc, $7731
	ld [hl], a
	ld [hl], a
	ld [hl], a
	ld sp, $771b
	ld [hl], a
	ld d, [hl]
	inc [hl]
	ld a, [bc]
	dec bc
	dec bc
	dec bc
	dec bc
	dec bc
	ld l, [hl]
	ld d, h
	ld b, e
	ld b, e
	ld b, e
	add hl, de
	ld [hl], a
	ld [hl], a
	ld [hl], a
	ld [hl], a
	ld [hl], a
	ld sp, $7777
	dec de
	ld [hl], a
	ld [hl], a
	ld [hl], a
	ld [hl], a
	ld [hl], a
	ld [hl], a
	ld [hl], a
	ld bc, $6d0f
	dec bc
	dec bc
	dec bc
	dec bc
	dec bc
	ld l, [hl]
	ld d, h
	ld b, e
	ld b, e
	ld b, e
	add hl, de
	ld [hl], a
	ld [hl], a
	ld sp, $7777
	ld [hl], a
	dec de
	ld [hl], a
	ld [hl], a
	ld [hl], a
	ld [hl], a
	ld [hl], a
	ld [hl], a
	ld sp, $771b
	ld bc, $0f0f
	ld l, a
	ld l, a
	ld l, a
	ld l, a
	ld l, a
	rrca
	ld d, h
	ld b, e
	ld b, e
	ld b, e
	add hl, de
	ld [hl], a
	ld [hl], a
	ld [hl], a
	dec de
	ld sp, $7777
	ld [hl], a
	ld [hl], a
	ld [hl], a
	ld [hl], a
	ld sp, $771b
	ld [hl], a
	ld d, [hl]
	ld [hl], a
	ld sp, $5454
	ld d, h
	ld d, h
	ld d, h
	ld d, h
	ld d, h
	ld d, h
	ld b, e
	ld b, e
	ld b, e
	add hl, de
	dec de
	ld [hl], a
	ld [hl], a
	ld sp, $7777
	ld [hl], a
	ld d, [hl]
	dec de
	ld [hl], a
	ld [hl], a
	ld [hl], a
	ld [hl], a
	ld [hl], a
	ld [hl], a
	ld [hl], a
	ld [hl], a
	ld [hl], a
	ld a, b
	ld a, b
	ld a, b
	ld a, b
	ld a, b
	ld a, b
	ld a, b
	ld a, b
	ld b, e
	ld b, e

jr_015_497b:
	ld b, e
	add hl, de
	rrca
	rrca
	ld d, c
	ld d, c
	ld d, c
	ld d, c
	ld d, c
	ld d, c
	ld d, c
	rra
	rra
	rra
	rra
	rra
	rra
	rra
	rra
	ld l, d
	ld b, e

jr_015_4990:
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	add hl, de
	rrca
	rrca
	rra
	rra
	rra
	rra
	rra
	rra
	rra
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	add hl, de
	ld l, e
	ld l, e
	ld l, e
	ld l, e
	ld l, e
	ld l, e
	ld l, e
	ld l, e
	ld l, e
	ld l, e
	ld l, e
	dec d
	nop
	dec de
	ld a, [bc]
	ld [hld], a
	ld c, d
	dec de
	ld e, a
	ld [bc], a
	ld e, a
	inc bc
	ld a, [de]
	inc bc
	ld c, d
	jr c, jr_015_4990

	add hl, bc
	ld e, $dc
	dec sp
	ld a, [hli]
	rst $00
	jr jr_015_497b

	ld c, b
	dec h
	rst $00
	add hl, bc
	ld e, $00
	nop
	dec c
	rst $00
	db $db
	ld c, c
	ld b, e
	nop
	ld bc, $110d
	dec bc
	ld a, [bc]
	rlca
	ld [$ff08], sp
	ret nc

	ld b, c
	rst $18
	ld c, $07
	ld a, [bc]
	inc de
	rst $38
	ret nc

	ld b, d
	rst $18
	rrca
	rlca
	rrca
	db $10
	rst $38
	ret nc

	ld b, e
	rst $18
	db $10
	rlca
	inc de
	ld [de], a
	rst $38
	pop de
	ld b, h
	rst $18
	ld de, $2307
	inc de
	rst $38
	jp nc, wdf45

	inc b
	rlca
	dec [hl]
	ld a, [bc]
	rst $38
	pop de
	ld b, [hl]
	rst $18
	dec b
	ld [de], a
	dec hl
	add hl, bc
	rst $38
	ret nc

	ld b, a
	jp nc, $120d

	ld [hli], a
	ld [wd3ff], sp
	ld c, b
	jp nc, $120e

	ld [hli], a
	inc de
	rst $38
	jp nc, wd249

	rrca
	ld [de], a
	inc hl
	ld [wd3ff], sp
	ld c, d
	jp nc, $0a02

	ld c, l
	ld sp, $3131
	ld sp, $3131
	ld sp, $0a31
	ld c, l
	ld [hl], a
	ld [hl], a
	ld [hl], a
	ld [hl], a
	ld [hl], a
	ld [hl], a
	ld [hl], a
	ld [hl], a
	ld a, [bc]
	ld c, l
	ld sp, $7777
	ld [hl], a
	ld [hl], a
	ld [hl], a
	ld [hl], a
	ld [hl], a
	ld a, [bc]
	ld c, l
	ld [hl], a
	ld [hl], a
	ld [hl], a
	ld [hl], a
	ld [hl], a
	ld sp, $7777
	ld a, [bc]
	ld c, l
	ld [hl], a
	ld sp, $7777
	ld [hl], a
	ld [hl], a
	ld [hl], a
	ld [hl], a
	ld a, [bc]
	ld c, l
	ld [hl], a
	ld [hl], a
	ld [hl], a
	ld [hl], a
	ld sp, $7777
	ld [hl], a
	ld a, [bc]
	ld c, l
	ld sp, $3131
	ld a, [bc]
	ld d, l
	ld a, [bc]
	ld [$0a77], sp
	ld c, l
	ld sp, $3131
	ld a, [bc]
	ld d, l
	ld c, l
	rrca
	rrca
	ld a, [bc]
	ld c, l
	inc e
	inc e
	inc e
	ld a, [bc]
	ld d, l
	ld c, l
	rrca
	rrca
	ld a, [bc]
	ld c, l
	dec bc
	dec bc
	dec bc
	ld l, l
	ld d, l
	ld c, l
	rrca
	rrca
	ld a, [bc]
	ld c, l
	dec bc
	dec bc
	dec bc
	ld l, l
	ld d, l
	ld c, l
	rra
	rra
	ld a, [bc]
	ld c, l
	dec bc
	dec bc
	dec bc
	ld l, l
	ld d, l
	ld c, l
	ld b, e
	ld b, e
	ld a, [bc]
	ld c, l
	ld l, [hl]
	rlca
	rlca
	ld l, l
	ld d, l
	ld c, l
	ld b, e
	ld b, e
	ld a, [bc]
	ld c, l
	dec [hl]
	ld a, [bc]
	ld d, l
	ld l, l
	ld d, l
	ld c, l
	ld b, e
	ld b, e
	ld a, [bc]
	ld c, l
	ld a, [bc]
	ld a, [bc]
	ld d, l
	ld l, l
	ld d, l
	ld a, [bc]
	ld h, e
	ld b, e
	ld a, [bc]
	ld c, l
	ld a, [bc]
	ld a, [bc]
	ld d, l
	ld l, l
	ld d, l
	ld a, [bc]
	ld c, l
	ld b, e
	ld a, [bc]
	ld c, l
	ld a, [bc]
	ld a, [bc]
	ld d, l
	dec [hl]
	ld d, l
	ld a, [bc]
	ld c, l
	ld b, e
	ld a, [bc]
	ld c, l
	ld a, [bc]
	ld a, [bc]
	ld d, l
	ld l, l
	ld d, l
	ld a, [bc]
	ld c, l
	ld b, e
	inc de
	inc de
	ld a, [bc]
	ld a, [bc]
	ld d, l
	ld l, l
	ld d, l
	ld a, [bc]
	ld c, l
	ld b, e
	inc de
	inc de
	ld a, [bc]
	ld a, [bc]
	ld d, l
	ld l, l
	ld d, l
	ld a, [bc]
	ld c, l
	ld b, e
	ld d, l
	ld l, [hl]
	ld d, l
	ld d, l
	ld d, l
	ld a, [bc]
	ld d, l
	ld a, [bc]
	ld c, l
	ld b, e
	rlca
	dec [hl]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld d, l
	ld a, [bc]
	ld c, l
	ld b, e
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld d, l
	ld a, [bc]
	ld c, l
	ld b, e
	ld d, l
	ld d, l
	ld d, l
	ld d, l
	ld d, l
	ld d, l
	ld d, l
	ld a, [bc]
	ld c, l
	ld b, e
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld c, l
	ld b, e
	ld d, c
	ld d, c
	ld d, c
	ld d, c
	ld d, c
	ld d, c
	ld d, c
	ld d, c
	ld d, c
	ld b, e
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld b, e
	nop
	ld c, b
	ld a, [bc]
	ret z

	ld c, e
	ld l, d
	ld h, e
	ld d, c
	ld h, e
	inc c
	dec de
	jr jr_015_4b99

	db $eb
	add $0d
	inc d
	ld de, wd300
	rst $00
	dec e
	cp b
	ld c, h
	sbc e
	rrc l
	add hl, de
	nop
	nop
	ld [$62c7], sp
	ld c, e
	ld b, e
	nop
	ld b, $33
	add hl, bc
	dec bc
	ccf
	add hl, bc
	inc c
	ld c, e
	add hl, bc
	dec c
	ld d, a
	add hl, bc
	ld c, $6f
	add hl, bc
	rrca
	adc l
	add hl, bc
	db $10
	ld a, [bc]
	ld [de], a
	rla
	db $10
	rst $38
	jp nc, wd841

	inc b
	ld [de], a
	inc d
	rrca
	rst $38
	db $d3
	ld b, d
	ret c

	dec b
	ld [de], a
	ld d, $08
	rst $38
	pop de
	ld b, e
	jp nc, $1208

	inc h
	dec bc
	rst $38
	jp nc, wd244

	add hl, bc
	ld [de], a

jr_015_4b99:
	ld h, $12
	rst $38
	db $d3
	ld b, l
	jp nc, $120a

	ld a, $15
	rst $38
	jp nc, wd846

	ld b, $12
	ld c, b
	ld b, $ff
	db $d3
	ld b, a
	ret c

	rlca
	ld [de], a
	ld h, [hl]
	ld [de], a
	rst $38
	db $d3
	ld c, b
	ret c

	ld [$6612], sp
	add hl, bc
	rst $38
	jp nc, wd249

	dec bc
	ld [de], a
	ld a, d
	ld c, $ff
	ret nc

	ld c, d
	jp nc, $4e0c

	ld e, l
	ld [hl], h
	ld [hl], h
	ld e, l
	ld [hl], h
	ld c, [hl]
	ld h, l
	ld b, e
	ld b, e
	ld c, [hl]
	daa
	ld [hl], h
	ld [hl], h
	daa
	ld [hl], h
	ld c, [hl]
	ld h, l
	ld b, e
	ld b, e
	ld c, [hl]
	daa
	ld [hl], h
	ld [hl], h
	daa
	ld [hl], h
	ld d, c
	ld d, c
	ld d, c
	ld h, e
	ld c, [hl]
	daa
	ld [hl], h
	ld [hl], h
	daa
	ld [hl], h
	ld [hl], h
	ld [hl], h
	ld [hl], h
	ld c, l
	ld c, [hl]
	daa
	ld [hl], h
	ld [hl], h
	daa
	ld [hl], h
	dec bc
	dec bc
	dec bc
	ld c, l
	ld c, [hl]
	daa
	ld [hl], h
	ld [hl], h
	daa
	ld [hl], h
	dec bc
	dec bc
	dec bc
	ld c, l
	ld c, [hl]
	daa
	ld [hl], h
	ld [hl], h
	daa
	ld [hl], h
	dec bc
	dec bc
	dec bc
	ld c, l
	ld c, [hl]
	daa
	ld [hl], h
	ld [hl], h
	daa
	ld [hl], h
	dec bc
	dec bc
	dec bc
	ld c, l
	ld c, [hl]
	daa
	ld [hl], h
	ld [hl], h
	daa
	ld [hl], h
	dec bc
	dec bc
	dec bc
	ld c, l
	ld c, [hl]
	daa
	ld [hl], h
	ld [hl], h
	daa
	ld [hl], h
	dec bc
	dec bc
	dec bc
	ld c, l
	ld c, [hl]
	daa
	ld [hl], h
	ld [hl], h
	daa
	ld [hl], h
	ld [hl], h
	ld [hl], h
	ld [hl], h
	ld c, l
	ld c, [hl]
	daa
	ld [hl], h
	ld [hl], h
	daa
	ld [hl], h
	ld [hl], h
	ld [hl], h
	ld [hl], h
	ld c, l
	ld c, [hl]
	daa
	ld [hl], h
	ld [hl], h
	daa
	ld [hl], h
	ld [hl], h
	ld [hl], h
	ld [hl], h
	ld c, l
	ld c, [hl]
	daa
	ld [hl], h
	ld [hl], h
	daa
	dec e
	ld e, $5d
	ld [hl], h
	ld c, l
	ld c, [hl]
	daa
	ld [hl], h
	ld [hl], h
	daa
	ld h, l
	ld h, h
	daa
	ld [hl], h
	ld c, l
	ld c, [hl]
	daa
	ld [hl], h
	ld [hl], h
	daa
	ld h, l
	ld h, h
	daa
	ld [hl], h
	ld c, l
	ld c, [hl]
	daa
	ld [hl], h
	ld [hl], h
	daa
	ld h, l
	ld h, h
	daa
	ld [hl], h
	ld c, l
	ld c, [hl]
	daa
	ld [hl], h
	ld [hl], h
	daa
	ld h, l
	ld h, h
	daa
	ld [hl], h
	ld c, l
	ld c, [hl]
	daa
	ld [hl], h
	ld [hl], h
	ld e, [hl]
	ld h, l
	ld h, h
	daa
	ld [hl], h
	ld c, l
	ld c, [hl]
	daa
	dec e
	ld e, $31
	ld h, l
	ld h, h
	daa
	ld [hl], h
	ld c, l
	ld c, [hl]
	daa
	ld h, l
	ld h, h
	ld sp, $6465
	daa
	ld [hl], h
	ld c, l
	ld c, [hl]
	daa
	ld h, l
	ld h, h
	ld sp, $6465
	daa
	ld [hl], h
	ld c, l
	ld c, [hl]
	daa
	ld h, l
	ld h, h
	ld sp, $6465
	daa
	ld [hl], h
	ld c, l
	ld c, [hl]
	daa
	ld h, l
	ld h, h
	ld sp, $6465
	daa
	ld [hl], h
	ld c, l
	ld c, [hl]
	daa
	ld h, l
	ld h, h
	ld sp, $6465
	daa
	ld [hl], h
	ld c, l
	ld c, [hl]
	daa
	ld h, l
	ld h, h
	ld [$6465], sp
	daa
	ld [hl], h
	ld c, l
	ld c, [hl]
	daa
	ld h, l
	ld h, h
	ld sp, $6465
	daa
	ld [hl], h
	ld c, l
	ld c, [hl]
	daa
	ld h, l
	ld h, h
	ld sp, $6465
	daa
	ld [hl], h
	ld c, l
	ld c, [hl]
	daa
	ld h, l
	ld h, h
	ld sp, $6465
	daa
	ld [hl], h
	ld c, l
	ld c, [hl]
	daa
	ld h, l
	ld h, h
	ld sp, $6465
	daa
	ld [hl], h
	ld c, l
	ld c, [hl]
	daa
	ld h, l
	ld h, h
	ld sp, $6465
	daa
	ld [hl], h
	ld c, l
	ld c, [hl]
	daa
	ld h, l
	ld h, h
	ld [$6465], sp
	daa
	ld [hl], h
	ld c, l
	ld c, [hl]
	daa
	ld h, l
	ld h, h
	ld sp, $6465
	daa
	ld [hl], h
	ld c, l
	ld c, [hl]
	daa
	ld h, l
	ld h, h
	ld sp, $6465
	daa
	ld [hl], h
	ld c, l
	ld c, [hl]
	daa
	ld h, l
	ld h, h
	ld sp, $6465
	daa
	ld [hl], h
	ld c, l
	ld c, [hl]
	daa
	ld h, l
	ld h, h
	ld sp, $6465
	daa
	ld [hl], h
	ld c, l
	ld c, [hl]
	daa
	ld h, l
	ld h, h
	ld sp, $6465
	daa
	ld [hl], h
	ld c, l
	ld c, [hl]
	daa
	ld h, l
	ld h, h
	ld [$6465], sp
	daa
	ld [hl], h
	ld c, l
	ld c, [hl]
	daa
	ld h, l
	ld h, h
	ld sp, $6465
	daa
	ld [hl], h
	ld c, l
	ld c, [hl]
	daa
	ld h, l
	ld h, h
	ld sp, $6465
	daa
	ld [hl], h
	ld c, l
	ld c, [hl]
	daa
	ld h, l
	ld h, h
	ld sp, $6465
	daa
	ld [hl], h
	ld c, l
	ld c, [hl]
	daa
	ld h, l
	ld h, h
	ld sp, $6465
	daa
	ld [hl], h
	ld c, l
	ld c, [hl]
	daa
	ld h, l
	ld h, h
	ld sp, $6465
	daa
	ld [hl], h
	ld c, l
	ld c, [hl]
	daa
	ld [hl], h
	ld sp, $6508
	ld h, h
	daa
	ld [hl], h
	ld c, l
	ld c, [hl]
	daa
	ld [hl], h
	dec e
	rra
	ld l, $64
	daa
	ld [hl], h
	ld c, l
	ld c, [hl]
	daa
	ld [hl], h
	ld h, l
	ld b, e
	ld b, e
	ld h, h
	daa
	ld [hl], h
	ld c, l
	ld c, [hl]
	daa
	ld [hl], h
	ld h, l
	ld b, e
	ld b, e
	ld h, h
	daa
	ld [hl], h
	ld c, l
	ld c, [hl]
	daa
	ld [hl], h
	ld h, l
	ld b, e
	ld b, e
	ld h, h
	daa
	ld [hl], h
	ld c, l
	ld c, [hl]
	daa
	ld [hl], h
	ld h, l
	ld b, e
	ld b, e
	ld h, h
	daa
	ld [hl], h
	ld c, l
	ld c, [hl]
	daa
	ld [hl], h
	ld h, l
	ld b, e
	ld b, e
	ld h, h
	daa
	ld [hl], h
	ld c, l
	ld c, [hl]
	daa
	ld [hl], h
	ld h, l
	ld b, e
	ld b, e
	ld h, h
	daa
	ld [hl], h
	ld c, l
	ld c, [hl]
	daa
	ld [hl], h
	ld h, l
	ld b, e
	ld b, e
	ld h, h
	daa
	ld [hl], h
	ld c, l
	ld c, [hl]
	daa
	ld [hl], h
	ld h, l
	ld b, e
	ld b, e
	ld h, h
	daa
	ld [hl], h
	ld c, l
	ld c, [hl]
	daa
	ld [hl], h
	ld h, l
	ld b, e
	ld b, e
	ld h, h
	daa
	ld [hl], h
	ld c, l
	ld c, [hl]
	daa
	ld [hl], h
	ld h, l
	ld b, e
	ld b, e
	ld h, h
	daa
	ld [hl], h
	ld c, l
	ld c, [hl]
	daa
	ld sp, $0831
	ld sp, $2731
	ld sp, $4e4d
	daa
	ld sp, $1f1d
	rra
	ld e, $27
	ld sp, $4e4d
	daa
	ld sp, $4365
	ld b, e
	ld h, h
	daa
	ld sp, $4e4d
	daa
	ld sp, $4365
	ld b, e
	ld h, h
	daa
	ld sp, $4e4d
	daa
	ld sp, $3131
	ld sp, $2731
	ld sp, $4e4d
	ld e, [hl]
	ld sp, $3131
	ld sp, $5e31
	ld sp, $4e4d
	ld [hl], a
	ld [hl], a
	ld sp, $7777
	ld sp, $7777
	ld c, l
	ld h, a
	rra
	ld e, $5d
	ld sp, $5d31
	dec e
	rra
	ld l, d
	jr jr_015_4e83

	ld h, h
	daa
	ld sp, $2731
	ld h, l
	ld b, e
	add hl, de
	jr jr_015_4e8d

	ld h, h
	daa
	ld sp, $2731
	ld h, l
	ld b, e
	add hl, de
	jr jr_015_4e97

	ld h, h
	daa
	ld sp, $2731
	ld h, l
	ld b, e
	add hl, de
	jr jr_015_4ea1

	ld h, h
	daa
	ld sp, $2731
	ld h, l
	ld b, e
	add hl, de
	jr jr_015_4eab

	ld h, h
	daa
	ld sp, $2731
	ld h, l
	ld b, e
	add hl, de
	jr @+$45

	ld h, h
	daa
	ld sp, $2731
	ld h, l
	ld b, e
	add hl, de

jr_015_4e7a:
	jr jr_015_4ebf

	ld h, h
	daa
	ld sp, $2731
	ld h, l
	ld b, e

jr_015_4e83:
	add hl, de
	jr jr_015_4ec9

	ld h, h
	ld e, [hl]
	ld [$5e31], sp
	ld h, l
	ld b, e

jr_015_4e8d:
	add hl, de
	jr jr_015_4ed3

	ld h, h
	ld a, [de]
	ld a, [de]
	ld e, h
	ld a, [de]
	ld h, l
	ld b, e

jr_015_4e97:
	add hl, de
	nop
	dec de
	ld a, [bc]
	ld de, wcb4f
	ld h, a
	or d
	ld h, a

jr_015_4ea1:
	ld a, [bc]
	rlca
	or h
	ld c, l
	add sp, -$3a
	db $10
	inc d
	inc hl
	ld a, [bc]

jr_015_4eab:
	cp l
	ret z

	rra
	xor h
	ld b, c
	jr c, jr_015_4e7a

	add hl, bc
	ld [hld], a
	call c, Call_015_5263
	rst $00
	cp d
	ld c, [hl]
	ld b, e
	nop
	ld bc, $0b09

jr_015_4ebf:
	dec bc
	ld a, [bc]
	rlca
	dec bc
	inc c
	rst $38
	jp nc, wd741

	ld [bc], a

jr_015_4ec9:
	rlca
	dec bc
	ld de, wd2ff
	ld b, d
	rst $10
	inc bc
	ld [hli], a
	dec e

jr_015_4ed3:
	ld de, wd2ff
	ld b, e
	rst $10
	inc b
	ld [hli], a
	rra
	ld [wd3ff], sp
	ld b, h
	rst $10
	dec b
	ld [hli], a
	inc hl
	inc d
	rst $38
	pop de
	ld b, l
	rst $10
	ld b, $22
	rrca
	dec c
	rst $38
	ret nc

	ld b, [hl]
	rst $10
	rlca
	ld [hli], a
	cpl
	inc c
	rst $38
	jp nc, wda47

	inc c
	ld [hli], a
	cpl
	rrca
	rst $38
	db $d3
	ld c, b
	jp c, $220d

	ld l, $0d
	rst $38
	pop de
	ld c, c
	rst $10
	ld [$3022], sp
	ld c, $ff
	ret nc

	ld c, d
	jp c, $280e

	inc l
	add hl, hl
	ld a, [de]
	ld a, [de]
	ld a, [de]
	dec de
	jr z, jr_015_4f46

	add hl, hl
	jr z, jr_015_4f49

	add hl, hl
	ld a, [de]
	ld a, [de]
	ld a, [de]
	dec de
	inc h
	ld d, a
	dec h
	inc h

Call_015_4f26:
	ld d, a
	dec h
	ld a, [de]
	ld a, [de]
	ld a, [de]

Call_015_4f2b:
	dec de
	jr jr_015_4f71

	ld b, e
	ld b, e
	add hl, de
	ld sp, $3131
	ld sp, $1831
	ld b, e
	ld b, e
	ld l, e
	dec d
	ld sp, $3131
	ld [$1431], sp
	ld l, e
	ld l, e
	jr jr_015_4f88

	ld b, e

jr_015_4f46:
	ld b, e
	ld b, e
	ld b, e

jr_015_4f49:
	ld b, e
	ld b, e
	ld b, e
	add hl, de
	jr jr_015_4f92

	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e

Jump_015_4f56:
	add hl, de
	jr jr_015_4f9c

	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	add hl, de
	jr jr_015_4fa6

	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	add hl, de
	jr jr_015_4fb0

	ld b, e
	ld b, e
	ld b, e
	ld b, e

jr_015_4f71:
	ld b, e
	ld b, e
	ld b, e
	add hl, de
	jr jr_015_4fba

	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	add hl, de
	jr jr_015_4fc4

	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e

jr_015_4f88:
	add hl, de
	jr jr_015_4fce

	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e

jr_015_4f92:
	add hl, de
	jr jr_015_4fd8

	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e

jr_015_4f9c:
	add hl, de
	jr jr_015_4fe2

	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e

jr_015_4fa6:
	add hl, de
	jr jr_015_4fec

	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e

jr_015_4fb0:
	add hl, de
	jr jr_015_4ff6

	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e

jr_015_4fba:
	add hl, de
	jr jr_015_5000

	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e

jr_015_4fc4:
	add hl, de
	jr jr_015_500a

	ld b, e
	ld b, e
	ld b, e

Call_015_4fca:
Jump_015_4fca:
	ld b, e
	ld b, e
	ld b, e
	ld b, e

jr_015_4fce:
	add hl, de

Call_015_4fcf:
	inc de
	ld b, e
	ld b, e
	ld b, e

Jump_015_4fd3:
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e

jr_015_4fd8:
	add hl, de
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e

jr_015_4fe2:
	add hl, de
	ld b, e
	ld b, e
	ld b, e
	ld b, e

Call_015_4fe7:
Jump_015_4fe7:
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e

jr_015_4fec:
	add hl, de
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e

jr_015_4ff6:
	add hl, de
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e

jr_015_5000:
	add hl, de
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e

jr_015_500a:
	add hl, de
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	add hl, de
	ld l, e
	ld l, e
	ld l, e
	ld l, e
	ld l, e
	ld l, e
	ld l, e
	ld l, e
	ld l, e
	inc de
	nop
	dec l
	ld a, [bc]
	adc l
	ld d, b
	ld a, l
	ld l, e
	ld h, h
	ld l, e
	inc c
	nop
	add hl, sp
	ld b, e
	db $eb
	add $0a
	ld a, [bc]
	ld de, $7900
	rst $00
	ld [$40d7], sp
	db $eb
	ret


	ld a, [bc]
	ld a, [bc]
	nop
	nop
	ld sp, hl
	add $41
	ld d, b
	ld b, e
	nop
	nop
	add hl, bc
	cpl
	inc e
	ld [wd2ff], sp
	ld b, c
	sub $07
	cpl
	dec e

Call_015_504f:
	ld a, [bc]
	rst $38
	ret nc

	ld b, d
	sub $09
	ld [hli], a
	inc hl
	ld c, $ff
	pop de
	ld b, e
	rst $10
	inc c
	ld [hli], a
	ld [hli], a
	db $10
	rst $38
	db $d3
	ld b, h
	ret c

	add hl, bc
	ld [hli], a
	ld b, e
	inc d
	rst $38
	ret nc

	ld b, l
	rst $10
	dec c
	ld [hli], a
	ld c, e
	add hl, bc
	rst $38
	db $d3
	ld b, [hl]
	rst $10
	ld c, $22
	ld c, e
	inc de
	rst $38
	jp nc, wd747

	rrca
	cpl
	inc a
	ld [de], a
	rst $38
	jp nc, wd648

	ld [$3d2f], sp
	dec d
	rst $38
	db $d3
	ld c, c
	sub $0a

	db $51, $63, $65, $64, $51, $51, $51, $62, $51, $51, $0a, $4d, $65, $64, $0a, $74
	db $74, $4e, $0a, $0a, $74, $4d, $65, $64, $0b, $0b, $0b, $4e, $74, $0a

	ld [hl], h
	ld c, l
	ld h, l
	ld h, h
	dec bc
	dec bc
	dec bc
	ld c, [hl]
	ld a, [bc]
	ld a, [bc]
	ld [hl], h
	ld c, l
	ld h, l
	ld h, h
	dec bc
	dec bc
	dec bc
	ld c, [hl]
	ld a, [bc]
	ld a, [bc]
	ld [hl], h
	ld c, l
	ld h, l
	dec l
	rra
	rra
	rra

Jump_015_50c6:
	ld h, a
	rra
	rra
	ld d, d
	ld c, a
	ld h, l
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	jr jr_015_5115

	ld b, e
	ld h, a
	rra
	ld l, $43
	ld b, e
	ld b, e
	ld b, e
	inc d
	ld l, e
	ld l, e
	jr jr_015_5122

	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	add hl, de
	jr jr_015_512c

	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	add hl, de
	jr jr_015_5136

	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	add hl, de
	jr jr_015_5140

	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	add hl, de
	jr jr_015_514a

	ld d, h
	ld d, h
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	add hl, de
	jr jr_015_5154

	ld a, b
	ld a, b
	ld b, e
	ld b, e

jr_015_5115:
	ld b, e
	ld b, e
	ld b, e
	add hl, de
	jr jr_015_515e

	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e

jr_015_5122:
	add hl, de
	jr jr_015_5168

	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e

jr_015_512c:
	add hl, de
	jr jr_015_5172

	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e

jr_015_5136:
	add hl, de
	jr jr_015_517c

	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e

jr_015_5140:
	add hl, de
	jr jr_015_5186

	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e

jr_015_514a:
	add hl, de
	jr jr_015_5190

	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e

jr_015_5154:
	add hl, de
	jr jr_015_519a

	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e

jr_015_515e:
	add hl, de
	jr jr_015_51a4

	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e

jr_015_5168:
	add hl, de
	jr jr_015_51ae

	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e

jr_015_5172:
	add hl, de
	jr jr_015_51b8

	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e

jr_015_517c:
	add hl, de
	jr jr_015_51c2

	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e

jr_015_5186:
	add hl, de
	jr jr_015_51cc

	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e

jr_015_5190:
	add hl, de
	jr jr_015_51d6

	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e

jr_015_519a:
	add hl, de
	jr jr_015_51e0

	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e

jr_015_51a4:
	add hl, de
	jr jr_015_51ea

	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld d, h
	ld d, h

jr_015_51ae:
	add hl, de
	jr jr_015_51f4

	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld a, b
	ld a, b

jr_015_51b8:
	add hl, de
	jr jr_015_51fe

	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e

jr_015_51c2:
	add hl, de
	jr jr_015_5208

	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e

jr_015_51cc:
	add hl, de
	jr jr_015_5212

	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e

jr_015_51d6:
	add hl, de
	jr jr_015_521c

	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e

jr_015_51e0:
	add hl, de
	jr jr_015_5226

	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e

jr_015_51ea:
	add hl, de
	jr jr_015_5230

	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e

jr_015_51f4:
	add hl, de
	jr jr_015_523a

	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e

jr_015_51fe:
	add hl, de
	jr jr_015_5244

	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e

jr_015_5208:
	add hl, de
	jr jr_015_524e

	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e

jr_015_5212:
	add hl, de
	jr jr_015_5258

	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e

jr_015_521c:
	add hl, de
	jr @+$45

	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e

jr_015_5226:
	add hl, de
	jr jr_015_526c

	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e

jr_015_5230:
	add hl, de
	jr jr_015_5276

	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld l, e

jr_015_523a:
	dec d
	jr jr_015_5280

	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	add hl, de
	ld b, e

jr_015_5244:
	ld b, e
	jr @+$45

	ld b, e
	ld b, e
	ld b, e
	ld d, h
	ld b, e
	add hl, de
	ld b, e

jr_015_524e:
	ld b, e

	jp $3c6c


	push bc
	rrca
	push bc
	rrca
	ld e, d
	ld d, d

jr_015_5258:
	ld a, b
	ld d, d
	nop
	cp d
	cp d
	jp z, $f87f

	ld a, [hld]
	sbc $7f

Call_015_5263:
	inc [hl]
	or e
	db $db
	ld c, a
	sub e
	add [hl]
	xor c
	ld a, a
	adc e

jr_015_526c:
	sub d
	or b
	ld a, a
	ld d, [hl]
	ld a, a
	sub l
	ld a, [de]
	ld a, a
	adc e
	sub d

jr_015_5276:
	or b
	ld d, a
	nop
	cp d
	cp d
	jp z, $127f

	or b
	rlca

jr_015_5280:
	rrca
	ret


	ld a, a
	or c
	push bc
	ld d, a
	call $3c6c
	ld hl, $52b3
	ld de, $5299
	ld a, [wd577]
	call $31a8
	ld [wd577], a
	ret


	ld h, c
	ld [hld], a
	sub h
	ld [hld], a
	cp l
	ld [hld], a
	inc d
	ld d, e
	ld c, a
	ld d, e
	sbc [hl]
	ld d, e
	rst $38
	ld d, e
	ld b, l
	ld d, h
	xor d
	ld d, h
	ld bc, $5255
	ld d, l
	sbc b
	ld d, l
	call c, $0255
	jr nz, @+$44

	rst $10
	ld e, c
	ld d, e
	ld a, l
	ld d, e
	ld [hl], c
	ld d, e
	ld [hl], c
	ld d, e
	inc bc
	jr nc, jr_015_5304

	rst $10
	xor b
	ld d, e
	call nc, wc753
	ld d, e
	rst $00
	ld d, e
	inc b
	jr nz, jr_015_5310

	rst $10
	add hl, bc
	ld d, h
	dec hl
	ld d, h
	inc h
	ld d, h
	inc h
	ld d, h
	dec b
	db $10
	ld b, d
	rst $10
	ld c, a
	ld d, h
	ld [hl], a
	ld d, h
	ld h, c
	ld d, h
	ld h, c
	ld d, h
	ld b, $40
	ld b, d
	rst $10
	or h
	ld d, h
	rst $18
	ld d, h
	call z, wcc54
	ld d, h
	rlca
	jr nc, jr_015_5334

	rst $10
	dec bc
	ld d, l
	ld l, $55
	ld h, $55
	ld h, $55
	ld [$4230], sp
	rst $10
	ld e, h
	ld d, l
	ld a, [hl]
	ld d, l
	ld [hl], a

jr_015_5304:
	ld d, l
	ld [hl], a
	ld d, l
	add hl, bc
	jr nz, @+$44

	rst $10
	and d
	ld d, l
	jp nz, $b955

jr_015_5310:
	ld d, l
	cp c
	ld d, l
	rst $38
	nop
	call z, Call_015_56b3
	ld c, a
	cp d
	ret


	ld a, a
	call $33de
	ld d, [hl]
	ld d, l
	ld d, [hl]
	ld a, a
	set 0, h
	call nc, wd0bd
	ld a, a
	cp h
	jp $b27f


	cp d
	or e
	ld d, c
	sbc c
	sub h
	rrca
	ld a, a

jr_015_5334:
	adc e
	sub d
	or b
	or [hl]
	rst $10
	ld c, a
	inc [hl]
	or e
	cp b
	jp nz, $7fdd

	rst $00
	cp c
	jp $b77f


	ret nz

	rst $10
	ld d, l
	ld d, [hl]
	ld a, a
	jp nz, wdab6

	ret nz

	ld d, a
	ld [$b321], sp
	ld d, d
	call $3214
	jp $0f6a


	nop
	or l
	ld a, a
	or l
	rst $08
	or h
	jp z, $934f

	add [hl]
	xor c
	ret


	ld a, a
	db $d3
	ret c

	inc sp
	db $d3
	ld a, a
	or c
	rst $18
	ret nz

	push bc
	rst $20
	ld d, a
	nop
	cp b
	call nc, $b2bc
	cp c
	inc [hl]
	ld a, a
	rst $08
	cp c
	ret nz

	ld e, b
	nop
	cp d
	ret


	ld a, a
	or c
	ret nz

	ret c

	jp z, wd34f

	ret c

	ld a, a
	call nz, $7fca
	rst $08
	ret nz

	ld a, a
	pop bc
	ld h, $df
	ret nz

	ld d, l
	ld d, h
	ld h, $7f
	call nz, wd9da
	sbc $30
	rst $20
	ld d, a
	ld [$bf21], sp
	ld d, d
	call $3214
	jp $0f6a


	nop
	ret nz

	sbc $40
	xor e
	ld c, a
	or e
	ld a, [hli]
	or a
	ld a, a
	call nc, $b8bd
	rst $18
	jp $b27f


	or d
	ld l, $e7
	ld d, l
	or l
	rst $08
	or h
	db $d3
	ld a, a
	jp z, $3ab9

	and $57
	nop
	or d
	cp c
	reti


	call nz, $b57f
	db $d3
	rst $18
	ret nz

	ret


	add $58
	nop
	ld e, e
	ld a, a
	jp nz, $bcb3

	sbc $7f
	call nc, wc3df
	reti


	and $4f
	rst $30
	jp nz, Jump_015_7fc9

	inc e
	xor h
	add a
	adc h
	add $7f
	ld d, h
	db $dd
	ld d, l
	ld sp, hl
	or $45
	or a
	ld a, a
	rst $08
	inc sp
	ld a, a
	or c
	dec l
	cp c
	rst $10
	jp c, wd6d9

	ld d, a
	ld [wcb21], sp
	ld d, d
	call $3214
	jp $0f6a


	nop
	pop bc
	ld [c], a
	rst $18
	call nz, $b77f
	ret nc

	rst $20
	ld c, a
	or d
	rst $08
	ld a, a
	call c, $bcc0
	ret


	ld a, a
	adc $b3
	ld a, a
	ret nc

	ret nz

	inc sp
	cp h
	ld [c], a
	ld d, a
	nop
	db $d3
	or e
	ld a, a
	or d
	call nc, $0058
	inc l
	db $db
	inc l
	db $db
	ld a, a
	ret nc

	reti


	or [hl]
	rst $10
	ld c, a
	ret nz

	ret nz

	or [hl]
	or e
	ld a, a
	cp d
	call nz, $7fc6
	push bc
	reti


	ret


	sub $e7
	ld d, a
	ld [wd721], sp
	ld d, d
	call $3214
	jp $0f6a


Call_015_544f:
	nop
	or a
	ret nc

	ld a, a
	ld d, h
	ld a, a
	ld e, l
	and $4f
	inc l
	ldh [$7f], a
	cp e
	rst $18
	cp a
	cp b
	rst $20
	ld d, a
	nop
	or c
	ret nz

	rst $10
	cp h
	or d
	ld a, a
	ld d, h
	ld c, a
	db $d3
	rst $18
	jp $b87f


	jp c, $7f3a

	or [hl]
	jp wd6c0


	ld e, b
	nop
	ld e, e
	inc sp
	ld a, a
	ld d, h
	ld a, a
	or c
	dec l

Call_015_547f:
Jump_015_547f:
	cp c
	reti


	ld c, a
	inc e
	xor h
	add a
	adc h
	ld h, $7f
	or d
	rst $18
	ld b, h
	or d
	add $7f
	push bc
	rst $18
	ret nz

	rst $10
	ld d, l
	adc $b6
	ret


	ld a, a
	inc e
	xor h
	add a
	adc h
	add $55
	or a
	ret c

	or [hl]
	or h
	jp c, $7f3a

	or d
	or d
	sbc $30
	sub $57
	ld [$e321], sp
	ld d, d
	call $3214
	jp $0f6a


	nop
	or a
	ret nc

	ret


	ld a, a
	cp h
	cp [hl]
	sbc $e7
	ld c, a
	ld d, [hl]
	ld a, a
	push bc
	db $e3
	sbc $b6
	ld a, a
	or a
	add $7f
	push bc
	reti


	rst $20
	ld d, a
	nop
	or l
	sbc $c5
	ret


	cp d
	add $4f
	call nc, $bcbb
	cp b
	ld a, a
	inc sp
	or a
	push bc
	or d
	and $58
	nop
	db $d3
	cp h
	ld a, a
	ret nz

	ret nz

	or [hl]
	or d
	ret nz

	cp b
	ld a, a
	push bc
	or [hl]
	rst $18
	ret nz

	rst $10
	ld c, a
	cp h
	cp [hl]
	sbc $dd
	ld a, a
	or c
	call c, wc5be
	cp c
	jp c, $7f3a

	or d
	or d
	ret


	ld d, a
	ld [$ef21], sp
	ld d, d
	call $3214
	jp $0f6a


	nop
	push bc
	sbc $30
	sub $e7
	ld a, a
	or l
	rst $08
	or h
	jp z, wc04f

	sbc $40
	xor e
	ld a, a
	jp z, $c3b2

	ld a, a
	push bc
	or d
	inc l
	ldh [$de], a
	ld d, a
	nop
	rst $08
	cp c
	ret nz

	rst $08
	cp c
	ret nz

	ld e, b
	nop
	push bc
	jp nz, $7fd3

	call z, wd3d5
	ld c, a
	ret nz

	sbc $40
	xor e
	ld a, a

Call_015_553c:
	cp h
	or [hl]
	ld a, a
	jp z, wc5b6

	or d
	rst $20
	ld d, l
	cp a
	jp c, Jump_015_7f26

	or l
	jp c, Jump_015_7fc9

	ld b, e
	ret c

	adc e
	db $e3
	ld d, a
	ld [$fb21], sp
	ld d, d
	call $3214
	jp $0f6a


	nop
	call nz, $c3df
	ld a, a
	or a
	ret nz

	ld a, a
	ld a, [hld]
	or [hl]
	ret c

	ret


	ld a, a
	ld d, h
	ld c, a
	ret nz

	ret nz

	or [hl]
	call c, wd6be
	or e
	ld a, a
	or [hl]
	push bc
	rst $20
	ld d, a
	nop
	ld a, $db
	rst $08
	cp c
	jr nc, @+$5a

	nop
	call nc, Call_015_44df
	ret c

	ld d, [hl]
	ld a, a
	cp a
	jr nc, @-$3b

	ret nz

	ld c, a
	ld d, h
	ret


	ld a, a
	adc $b3
	ld h, $7f
	jp nz, $b2d6

	sbc $30
	push bc
	ld d, a
	ld [$0721], sp
	ld d, e
	call $3214
	jp $0f6a


	nop
	ld d, [hl]
	ld a, a
	or a
	ldh [$e7], a
	ld c, a
	or d
	rst $08
	ld a, a
	or [hl]
	rst $10
	jr nc, jr_015_562f

	cp e
	call c, wc5d7
	or [hl]
	rst $18
	ret nz

	and $57
	nop
	db $d3
	or e
	ld a, a
	or l
	call c, $e6d8
	ld e, b
	nop
	add h
	sub c
	add [hl]
	sbc [hl]
	call nc, wc9cf

Call_015_55ca:
	ld a, a
	call z, wc4d3
	ld a, a
	or [hl]
	rst $10
	jp z, $fa4f

	ld a, [hld]
	sbc $7f
	inc [hl]
	or e

Jump_015_55d9:
	db $db
	sub $57
	nop
	cp d
	cp d
	jp z, $f97f

	ld a, [hld]
	sbc $7f
	inc [hl]
	or e
	db $db
	ld c, a
	ld d, [hl]
	ld a, a
	cp d
	ret


	cp e
	or a
	ld a, a
	add h
	sub c
	add [hl]
	sbc [hl]
	call nc, Call_015_57cf
	call $3c6c
	ld hl, $561c
	ld de, $560a
	ld a, [wd578]
	call $31a8
	ld [wd578], a
	ret


	ld h, c
	ld [hld], a
	sub h
	ld [hld], a
	cp l
	ld [hld], a
	add hl, hl
	ld d, [hl]
	ld c, c
	ld d, [hl]
	push bc
	rrca
	xor a
	rrca
	xor e
	ld d, [hl]
	jp $0256


	jr nc, jr_015_5663

	rst $10
	ld d, e
	ld d, [hl]
	ld a, l

jr_015_5623:
	ld d, [hl]
	ld [hl], b
	ld d, [hl]
	ld [hl], b
	ld d, [hl]
	rst $38
	nop
	or d
	ret nz

	xor h
	rst $20
	ld c, a

jr_015_562f:
	jp nz, $32cf

	or d
	jp $ba7f


	db $db
	sbc $2c
	ldh [$df], a
	ret nz

	ld d, l
	ld d, h
	ret


	ld a, a
	add c
	adc e
	sub c
	dec de
	sub d
	jr nc, jr_015_5623

	rst $20
	ld d, a
	ld [$1c21], sp
	ld d, [hl]
	call $3214
	jp $0f6a


	nop
	call c, $bcc0
	ld a, a
	add h
	sub c
	add [hl]
	sbc [hl]
	call nc, wc6cf
	ld c, a
	add [hl]
	sbc b
	adc c

jr_015_5663:
	ret


	ld a, a
	ld d, h
	ld a, a
	call nz, wc6d8
	ld a, a
	or a
	ret nz

	ret


	rst $20
	ld d, a
	nop
	cp [hl]
	rst $18
	or [hl]
	cp b
	ld a, a

jr_015_5676:
	call nz, wc0df
	ret


	add $e7
	ld e, b
	nop
	cp d
	ret


	or c
	ret nz

	ret c

jr_015_5683:
	jp z, wd34f

	or e
	ld a, a
	add [hl]
	sbc b
	adc c
	ld a, a
	ret nc

	jp nz, wdeb6

	push bc
	or d
	or [hl]
	db $d3
	ld d, c
	jr nc, jr_015_5676

	jp $b17f


	ret nz

	cp h
	ld h, $4f
	ld l, $de
	inc a
	ld a, a
	call nz, wc1df
	ldh [$df], a
	ret nz

	db $d3
	sbc $57
	nop
	cp d
	cp d
	jp z, $847f

	sub c
	add [hl]

Call_015_56b3:
	sbc [hl]
	call nc, Call_015_4fcf
	ld d, [hl]
	ld a, a
	inc [hl]
	or e
	cp b
	jp nz, $b27f

	ret c

Jump_015_56c0:
	jr z, jr_015_5683

	ld d, a

Jump_015_56c3:
	nop
	cp d
	cp d
	jp z, $fa7f

	ld a, [hld]
	sbc $7f
	inc [hl]
	or e
	db $db
	ld c, a
	add h
	sub c
	add [hl]

Jump_015_56d3:
	sbc [hl]
	call nc, Call_015_7fcf
	ld d, [hl]
	ld a, a
	sbc c
	sub h
	rrca
	ld a, a
	adc e
	sub d
	or b
	ld d, a
	jp $3c6c


	and $56
	nop
	cp d
	cp d
	or [hl]
	rst $10
	ld a, a
	pop bc
	or [hl]
	ld a, a
	jp nz, wdbb3

	ld c, a
	sbc c
	sub h
	rrca
	ld a, a
	adc e
	sub d
	or b
	ld a, a
	ld d, [hl]
	ld a, a
	add a
	sub b
	add hl, de
	ld a, a
	adc e
	sub d
	or b
	ld d, a
	call $3c6c
	ld hl, $5734
	ld de, $5718
	ld a, [wd583]
	call $31a8
	ld [wd583], a
	ret


	ld h, c
	ld [hld], a
	sub h
	ld [hld], a
	cp l
	ld [hld], a
	and c
	ld d, a
	and a
	ld d, a
	xor l
	ld d, a
	or e
	ld d, a
	cp c
	ld d, a
	cp a
	ld d, a
	push bc
	ld d, a
	bit 2, a
	pop de
	ld d, a
	push bc
	rrca
	ld [hl], l
	ld e, d
	ld bc, $4e30
	rst $10
	db $db
	ld d, a
	db $fc
	ld d, a
	pop af
	ld d, a
	pop af
	ld d, a
	ld [bc], a
	jr nz, @+$50

	rst $10
	daa
	ld e, b
	ld d, b
	ld e, b
	ld c, c
	ld e, b
	ld c, c
	ld e, b
	inc bc
	ld b, b
	ld c, [hl]
	rst $10
	ld e, a
	ld e, b
	sub b
	ld e, b
	add [hl]
	ld e, b
	add [hl]
	ld e, b
	inc b
	jr nz, @+$50

	rst $10
	xor c
	ld e, b
	call wc158
	ld e, b
	pop bc
	ld e, b
	dec b
	jr nz, @+$50

	rst $10
	db $eb
	ld e, b
	ld hl, $0759
	ld e, c
	rlca
	ld e, c
	ld b, $30
	ld c, [hl]
	rst $10
	ld b, b
	ld e, c
	ld l, e
	ld e, c
	ld h, e
	ld e, c
	ld h, e
	ld e, c
	rlca
	ld b, b
	ld c, [hl]
	rst $10
	add b
	ld e, c
	jp $a559


	ld e, c
	and l
	ld e, c
	ld [$4e20], sp
	rst $10
	db $e4
	ld e, c
	rrca
	ld e, d
	ld hl, sp+$59
	ld hl, sp+$59
	add hl, bc
	jr nz, @+$50

	rst $10
	add hl, sp
	ld e, d
	ld e, h
	ld e, d
	ld d, d
	ld e, d
	ld d, d
	ld e, d
	rst $38
	ld [$3421], sp
	ld d, a
	jr jr_015_57d5

	ld [$4021], sp
	ld d, a
	jr jr_015_57d5

	ld [$4c21], sp
	ld d, a
	jr jr_015_57d5

	ld [$5821], sp
	ld d, a
	jr jr_015_57d5

	ld [$6421], sp
	ld d, a
	jr jr_015_57d5

	ld [$7021], sp
	ld d, a
	jr jr_015_57d5

	ld [$7c21], sp
	ld d, a
	jr jr_015_57d5

jr_015_57cb:
	ld [$8821], sp
	ld d, a

Call_015_57cf:
	jr jr_015_57d5

	ld [$9421], sp
	ld d, a

jr_015_57d5:
	call $3214
	jp $0f6a


	nop
	or c
	rst $10
	ld a, a
	ld d, h
	ld a, a
	db $d3
	rst $18
	jp wdcd9


Jump_015_57e6:
	ret z

Call_015_57e7:
	ld c, a
	ld d, [hl]
	ld a, a
	add l
	and c
	ld a, a
	jr nc, jr_015_57cb

	rst $20
	ld d, a
	nop
	or c
	rst $10
	and $7f
	jp nz, $b2d6

	call c, Call_015_58c8
	nop
	cp d
	ret


	ld a, a
	cp e
	or a
	ret


	ld a, a

jr_015_5804:
	sub e
	xor e
	sub a
	and [hl]
	ld c, a
	push bc
	or [hl]
	jp z, wcf7f

	rst $18
	cp b
	rst $10
	ld a, a

jr_015_5812:
	jr nc, @-$48

	rst $10
	ld d, l
	or c
	or [hl]
	ret c

	ld h, $7f
	push bc
	or d
	call nz, $bd7f
	cp l
	jp nc, wc57f

	or d
	call c, $0057
	jr nc, jr_015_5804

	jr nc, jr_015_5812

	ld c, a
	sub $bb
	add hl, hl
	push bc
	ld a, a
	ld d, h
	ld a, a
	db $d3
	rst $18
	jp wcc55


	rst $10
	call z, $7fd7
	or c
	reti


	or d
	call nz, $7fd9
	or l
	rst $08
	or h
	jp z, Jump_015_57e6

	nop
	rst $08
	cp c
	sub $df
	ret nz

	ld e, b
	nop
	cp b
	call nc, $b8bc
	jp wc57f


	ret nc

	jr nc, @-$2b

	ld a, a
	inc sp
	sbc $57

jr_015_585f:
	nop
	add c
	xor c
	and d
	sbc l
	ld a, a
	sub e
	xor e
	sub a

jr_015_5868:
	and [hl]
	ld a, a
	rst $00
	cp c
	jp $8b4f


	add h
	xor e
	ld a, a
	adc a
	add d
	xor e
	add $55
	or d
	cp b
	ld a, a
	call nz, wdbba
	ld a, a
	push bc
	sbc $30
	ld a, a
	cp c
	inc [hl]
	ld d, [hl]
	ld d, a
	nop
	inc [hl]
	or e
	db $d3
	ld a, a
	jr nc, jr_015_585f

	jr nc, @-$39

	ld e, b
	nop
	push bc
	sbc $30
	or d
	ld a, a

jr_015_5896:
	or a
	ret nc

	db $d3
	ld c, a
	add c
	xor c
	and d
	sbc l
	ld a, a
	sub e
	xor e
	sub a
	and [hl]
	ld a, a
	or d
	cp b
	ret


	or [hl]
	ld d, a
	nop
	or l
	sbc $c5
	ret


	cp d
	ld a, a
	jr nc, jr_015_5868

	rst $10
	rst $18
	jp $c34f


	or [hl]
	add hl, hl
	sbc $ca
	ld a, a
	push bc
	cp h
	ret z

	rst $20

Jump_015_58c0:
	ld d, a
	nop
	jr nc, jr_015_5896

	rst $20
	ld a, a
	or [hl]
	push bc

Call_015_58c8:
	call c, $b2c5
	call c, $0058
	or c
	push bc
	ret nz

	ld a, a
	or a
	rst $18
	call nz, Call_015_544f
	ret


	ld a, a
	cp e

jr_015_58da:
	or d
	ret


	or e
	ld a, a
	or c
	reti


	ret


	sub $55
	ld h, $de
	ld a, [hld]
	rst $18

Call_015_58e7:
	jp $e7c8


	ld d, a
	nop
	ld h, $ca
	jp z, Jump_015_4fe7

	pop bc
	ld [c], a
	or e

jr_015_58f4:
	inc [hl]
	ld a, a
	or d
	or d
	rst $20
	ld d, l
	ret nz

	or d
	cp b
	jp nz, $bc7f

	jp Jump_015_7fc0


	call nz, $30ba
	ld d, a
	nop
	rst $08
	jr nc, jr_015_58da

	jr nc, jr_015_58f4

	ld c, a
	ld d, [hl]
	ld a, a
	call nz, $b57f
	db $d3
	rst $18
	ret nz

	rst $10
	ld d, l
	db $d3
	or e
	ld a, a
	ld d, h
	ld h, $7f
	push bc
	or d
	ld e, b
	nop
	call nc, $b5cf
	call nz, wc6ba
	ld c, a
	dec sp
	dec sp
	rst $10
	dec l
	add $7f
	ret nz

	ret nz

	or [hl]
	or e
	call nz, Call_015_55ca
	ret nz

	or d
	cp h
	ret nz

	ld a, a
	db $d3

jr_015_593c:
	sbc $30
	rst $20
	ld d, a
	nop
	jp z, wdfe3

	jp z, wcadf

	xor h
	rst $20
	ld c, a
	add hl, hl
	sbc $b7
	push bc
	ld a, a
	ld a, $b3
	dec l
	ld a, a
	jr nc, jr_015_593c

	ld d, l
	or d
	rst $18
	pop bc
	ld [c], a
	or e
	ld a, a
	call nc, wc0df
	reti


	or [hl]
	rst $20
	ld d, a
	nop
	or l
	rst $18
	call nz, wc4df
	rst $20
	ld e, b
	nop
	jp z, wdfe3

	jp z, wcadf

	xor h
	rst $20
	ld c, a
	add hl, hl
	sbc $b7
	inc sp
	ld a, a
	cp c
	rst $18
	cp d
	or e
	rst $20
	ld d, a
	nop
	rst $08
	or d
	or c
	cp e
	ld a, a
	jp z, $b5d4

	or a
	ld a, a
	cp h
	jp $bf4f


	jr nc, @-$3b

	ret nz

	ld a, a
	cp e
	push bc
	daa
	ld h, $e7
	ld d, l
	call nc, wc4df
	ld a, a
	or [hl]
	or h
	rst $18
	ret nz

	sbc $30
	rst $20
	ld d, a
	nop
	or h
	db $e3

jr_015_59a8:
	xor h
	rst $20
	ld d, c
	ld a, $b8
	ret


	ld a, a
	jp z, $b5d4

	or a
	jp z, $b24f

	rst $18
	ret nz

	or d
	ld a, a
	push bc
	sbc $30
	rst $18
	ret nz

	sbc $30
	or c
	ld e, b
	nop
	jp nz, $b8d6

	ld a, a
	push bc
	reti


	add $ca
	ld a, a
	pop de
	cp h
	ld a, a
	ld d, h
	ret


	ld c, a

jr_015_59d3:
	adc $b6
	db $d3
	ld a, a
	cp e
	ld h, $bb
	push bc
	or d
	call nz, $0f7f
	and b
	ld a, a
	jr nc, jr_015_59a8

	ld d, a
	nop
	jp z, wcadf

	rst $18
	jp z, $ace3

	rst $20
	ld c, a
	or [hl]
	or [hl]
	rst $18
	jp $ba7f


	db $e3
	or d
	rst $20
	ld d, a
	nop
	jp z, wdfe3

	jp z, wcadf

	xor h
	rst $20
	ld c, a
	or c
	ret c

	ldh [$7f], a
	rst $08
	cp c
	ret nz

	ld a, a
	sub $b3
	jr nc, jr_015_59d3

	ld e, b
	nop
	jp z, wcadf

	rst $18
	jp z, $ace3

	rst $20
	ld c, a
	call nc, $b5cf
	call nz, wcaba

jr_015_5a1f:
	ld a, a
	cp d
	cp d
	db $db
	ld h, $7f
	set 3, e
	or d
	or [hl]
	rst $10
	ld d, l
	rst $08
	cp c
	jp $7fd3


	call c, wdfd7
	jp wc9d9


	jr nc, jr_015_5a1f

	ld d, a
	nop
	or l
	or d
	rst $10
	ret


	ld a, a
	or [hl]
	call c, $b2b2
	ld a, a
	pop de
	cp h
	ld a, a
	ld b, e
	adc b
	rst $20
	ld c, a
	cp a
	jp c, $b9b2

	db $e3
	rst $20
	ld d, a
	nop
	or l
	or d
	rst $10
	ret


	ld a, a
	pop de
	cp h
	ld d, [hl]
	ld e, b
	nop
	pop de
	cp h
	ld a, a
	ld d, h
	ret


	ld a, a
	sub $bb
	ld h, $4f
	call c, wd7b6
	push bc
	or d
	ld a, a
	call nc, wcac2
	ld a, a
	pop de
	cp h
	rst $20
	ld d, a
	nop
	cp d
	cp d
	jp z, $ff7f

	ld a, [hld]
	sbc $7f
	inc [hl]
	or e
	db $db
	ld c, a
	sbc c
	sub h
	rrca
	ld a, a
	ld d, [hl]
	ld a, a
	add c
	xor c
	and d
	sbc l
	ld a, a
	sub e
	xor e
	sub a
	and [hl]
	ld d, a
	call $3c6c
	ld hl, $5ac5
	ld de, $5aa5
	ld a, [wd599]
	call $31a8
	ld [wd599], a
	ret


	ld h, c
	ld [hld], a
	sub h
	ld [hld], a
	cp l
	ld [hld], a
	ld a, $5b
	sbc c
	ld e, e
	ld [$345b], a
	ld e, h
	adc e
	ld e, h
	db $ec
	ld e, h
	ld b, a
	ld e, l
	sbc l
	ld e, l
	di
	ld e, l
	jr z, jr_015_5b1d

	ld a, l
	ld e, [hl]
	and e
	ld e, [hl]
	db $e4
	ld e, [hl]
	ld bc, $5820
	rst $10
	ld c, b
	ld e, e
	ld a, l
	ld e, e
	ld h, l
	ld e, e
	ld h, l
	ld e, e
	ld [bc], a
	jr nz, @+$5a

	rst $10
	and e
	ld e, e
	ret z

	ld e, e
	ret nz

	ld e, e
	ret nz

	ld e, e
	inc bc
	jr nz, jr_015_5b38

	rst $10
	db $f4
	ld e, e
	ld [de], a
	ld e, h
	add hl, bc
	ld e, h
	add hl, bc
	ld e, h
	inc b
	jr nz, @+$5a

	rst $10
	ld a, $5c
	ld l, c
	ld e, h
	ld d, a
	ld e, h
	ld d, a
	ld e, h
	dec b
	ld b, b
	ld e, b
	rst $10
	sub l
	ld e, h
	bit 3, h
	or l
	ld e, h
	or l
	ld e, h
	ld b, $20
	ld e, b
	rst $10
	or $5c
	daa
	ld e, l
	ld [de], a
	ld e, l
	ld [de], a
	ld e, l
	rlca
	ld b, b
	ld e, b
	rst $10
	ld d, c
	ld e, l
	ld a, h
	ld e, l
	ld l, e
	ld e, l
	ld l, e
	ld e, l
	ld [$5820], sp
	rst $10

jr_015_5b1d:
	and a
	ld e, l
	push bc
	ld e, l
	or l
	ld e, l
	or l
	ld e, l
	add hl, bc
	jr nz, jr_015_5b80

	rst $10
	db $fd
	ld e, l
	jr jr_015_5b8b

	add hl, bc
	ld e, [hl]
	add hl, bc
	ld e, [hl]
	ld a, [bc]
	ld b, b
	ld e, b
	rst $10
	ld [hld], a
	ld e, [hl]
	ld d, a

jr_015_5b38:
	ld e, [hl]
	ld c, l
	ld e, [hl]
	ld c, l
	ld e, [hl]
	rst $38
	ld [wc521], sp
	ld e, d
	call $3214
	jp $0f6a


	nop
	ld a, $b8
	ret


	ld a, a
	call nz, Call_015_43d8
	adc b
	ld h, $7f
	or a
	ret nc

	ret nz

	pop bc
	call nz, wc04f
	ret nz

	or [hl]
	or d
	ld a, a
	ret nz

	ld h, $df
	jp $e7d9


	ld d, a
	nop
	ld b, e
	xor h
	ld b, e
	call nz, $417f
	dec bc
	xor a
	xor e
	ld c, a
	adc c
	xor e
	ld a, [de]
	ld h, $7f
	rst $08
	cp c
	reti


	ld a, a
	push bc
	sbc $c3
	ld e, b
	nop
	rst $08
	cp c

jr_015_5b80:
	jp $7fd3


	ld a, $b8
	ret


	ld a, a
	call nz, Call_015_43d8
	adc b

jr_015_5b8b:
	jp z, wcf4f

	sbc $2f
	cp b
	ld a, a
	cp h
	ret nz

	ld a, a
	ret nc

	ret nz

	or d
	ld d, a
	ld [wd121], sp
	ld e, d
	call $3214
	jp $0f6a


	nop
	or l
	sbc $c5
	ret


	cp d
	add $7f
	cp h
	jp Jump_015_4fca


	cp l
	inc l
	ld h, $7f
	or d
	or d
	rst $18
	jp wce7f


	jp nc, wdad7

	reti


	ret


	rst $20
	ld d, a
	nop
	rst $08
	cp c
	pop bc
	ldh [$df], a
	ret nz

	ld e, b
	nop
	or d
	jp nz, wcab6

	ld c, a
	jp nz, $b2d6

	ld a, a
	ld e, l
	add $7f
	push bc
	ret c

	ret nz

	or d
	ld d, l
	or a
	ld [c], a

jr_015_5bdc:
	or e
	or [hl]
	rst $10
	ld a, a
	rst $08
	ret nz

	ld a, a
	call nz, $b8df
	sbc $d6
	rst $20
	ld d, a
	ld [wdd21], sp

jr_015_5bed:
	ld e, d
	call $3214
	jp $0f6a


	nop
	or c
	rst $10
	rst $20
	ld c, a
	or [hl]
	rst $18
	cp d
	or d
	or d
	ld a, a
	add hl, de
	xor h
	dec bc
	ld a, a
	db $d3
	rst $18
	jp wc8d9


	ld d, a
	nop
	rst $08
	jr nc, jr_015_5bdc

	jr nc, jr_015_5c8e

	jr nc, jr_015_5bed

	ld e, b
	nop
	cp a
	ret


	add hl, de
	xor h
	dec bc
	ld d, [hl]
	ld c, a
	ret c

	db $e3
	rrca
	db $e3
	ld a, a
	or [hl]
	rst $10
	ld a, a
	db $d3
	rst $10
	rst $18
	ret nz

	sbc $33
	cp h
	ld [c], a
	ld d, l
	ld d, [hl]
	ld a, a
	cp h
	rst $18
	jp wdcd9


	sub $57
	ld [$e921], sp
	ld e, d
	call $3214
	jp $0f6a


	nop
	or [hl]
	call c, $b2b2
	ld a, a
	ld d, h
	ld a, a
	ret nz

	pop bc
	add $4f
	ld a, [hli]
	or c
	or d
	cp e
	jp nz, $7fdd

	cp e
	cp [hl]
	reti


	call c, Call_015_57e7
	nop
	or l
	ret nc

	ld a, [hli]
	call nz, Call_015_4fe7
	call c, $bcc0
	ret


	ld a, a
	or [hl]
	sbc $44
	or d
	ret z

	ld e, b
	nop
	ld d, h
	jp z, $ba7f

	or e
	call nc, wc3df
	ld c, a
	inc [hl]
	sbc $34
	sbc $7f
	ret nz

	ret nz

	or [hl]
	call c, $c3be
	ld d, l
	jp nz, $b8d6

	ld a, a
	cp h
	jp wc5b6


	or d
	call nz, Call_015_57e7
	ld [$f521], sp

jr_015_5c8e:
	ld e, d
	call $3214
	jp $0f6a


	nop
	inc [hl]
	or e
	cp b
	jp nz, wc07f

	sbc $b9
	sbc $c6
	ld a, a
	or d
	rst $18
	jp $814f


	xor e
	inc de
	and b
	adc a
	adc e
	xor e
	db $dd
	ld a, a
	set 3, e
	rst $18
	ret nz

	ret


	sub $57
	nop
	ld d, [hl]
	ld a, a
	dec hl
	sbc $c8
	sbc $e7
	ld c, a
	pop bc
	ld [c], a
	or e
	cp h
	ld h, $7f
	inc sp
	push bc
	or [hl]
	rst $18
	ret nz

	call c, $0058
	cp a
	or e
	ld a, a
	add c
	xor e
	inc de
	and b
	adc a
	adc e
	xor e
	ld a, a
	or c
	ret nz

	or h
	ret nz

	rst $10
	ld c, a
	ld d, h
	ret


	ld a, a
	cp l
	ld a, [hld]
	call nc, $26bb
	ld a, a
	or c
	ld h, $df
	ret nz

	ret


jr_015_5ceb:
	ld d, a
	ld [$0121], sp
	ld e, e
	call $3214
	jp $0f6a


	nop
	rst $08
	cp c
	push bc
	or d
	sub $e7
	ld a, a
	or [hl]
	ld l, $ca
	ld c, a
	ld a, $b8
	ret


	ld a, a
	adc $b3
	add $7f
	call z, wc3b2
	ld a, a
	or d
	reti


	rst $20
	ld d, a
	nop
	ld d, [hl]
	ld a, a
	or [hl]
	dec hl
	pop de
	or a
	ld h, $4f
	or [hl]
	call c, wc0df
	ld a, a
	ret nc

	ret nz

	or d
	ld a, a
	jr nc, jr_015_5ceb

	ld e, b
	nop
	ret nz

	ret nz

	or [hl]
	or e
	ld a, a
	add hl, hl
	sbc $b7
	db $d3
	ld a, a
	push bc
	or d
	call nc, wc44f
	ret c

	add $7f
	ret


	rst $18
	jp $b37f


	pop bc
	add $7f
	or [hl]
	or h
	db $db
	or e
	ld d, a
	ld [$0d21], sp
	ld e, e
	call $3214
	jp $0f6a


	nop
	or c
	rst $10
	ld d, [hl]
	ld a, a
	ld a, $b3
	call nc, $b14f
	or d
	jp $bc7f


	jp $b17f


	add hl, hl
	jp $7fd3


	or d
	or d
	call c, $57d6
	nop
	jp nz, $b2d6

	rst $20
	ld c, a
	or l
	call nz, $7fba
	rst $10
	cp h
	or d
	call c, $e7c8
	ld e, b
	nop
	ld d, h
	ret


	ld a, a
	cp [hl]
	or [hl]
	or d
	ld a, a
	inc sp
	jp z, $844f

	adc h
	ld a, a
	call nz, $a07f
	adc h
	ld d, l
	inc [hl]
	pop bc
	rst $10
	ld h, $7f
	jp nz, $b2d6

	ret


	ld a, a
	or [hl]
	cp h
	rst $10
	ld d, a
	ld [$1921], sp
	ld e, e
	call $3214
	jp $0f6a


	nop
	call c, $bcc0
	call nz, Call_015_547f
	ld a, a
	cp h
	ret nz

	or d
	ret


	and $57
	nop
	ld d, [hl]
	ld a, a
	db $d3
	or e
	ld c, a
	or l
	call c, wc1df
	ldh [$df], a
	ret nz

	ret


	ret z

	ld e, b
	nop
	call c, $bcc0
	ld a, a
	adc $de
	call nz, $7fca
	ld d, h
	ld c, a
	sub $b8
	ld a, a
	call c, wd7b6

jr_015_5dd7:
	push bc
	or d
	ret


	ld d, l
	jp nz, $b3b6

	ld a, a
	ld d, h
	db $d3
	ld d, l
	or [hl]
	rst $18
	cp d
	or e
	ld a, a
	jr nc, @-$45

	inc sp
	ld a, a
	or a
	jp nc, $e0c1

	or e
	ret


	sub $57
	ld [$2521], sp
	ld e, e
	call $3214
	jp $0f6a


	nop
	rst $18
	jr nc, jr_015_5dd7

	rst $20
	ld a, a
	rst $18
	cp [hl]
	db $e3
	push bc
	rst $20
	ld d, a
	nop
	rst $18
	ret nz

	cp b
	sub $e7
	ld c, a
	rst $18
	dec hl
	cp c
	sbc $c5
	sub $e7
	ld e, b
	nop
	rst $18
	cp [hl]
	db $e3
	push bc

jr_015_5e1d:
	rst $20
	ld c, a
	or c
	rst $18
	pop bc
	ld a, a
	or d
	cp c
	sub $e7
	ld d, a
	ld [$3121], sp
	ld e, e
	call $3214
	jp $0f6a


	nop
	dec l
	db $e3
	xor h
	call nz, wc47f
	ret c

	ld a, a
	ld d, h
	add $4f
	cp d
	jr nc, jr_015_5e1d

	rst $18
	jp $b77f


	ret nz

	ld a, a
	ld a, $b8
	inc sp
	cp l
	rst $20
	ld d, a
	nop
	pop bc
	or [hl]
	rst $10
	ld a, a
	jp nz, wc0b7

	ld d, [hl]
	ld e, b
	nop
	or c
	db $e3
	or c
	ld d, [hl]
	ld a, a
	ld a, $b8
	db $d3
	ld c, a
	ld b, e
	xor h
	ld b, e
	call nc, $1a7f
	dec bc
	xor a
	xor e
	ret


	ld a, a
	sub $b3
	add $55
	cp a
	rst $10
	db $dd
	ld a, a
	call nz, $33de
	ld a, a
	or d
	or a
	ret nz

	or d
	ld d, a
	nop
	ld d, [hl]
	ld a, a
	or l
	call nz, wc5b8
	ld a, a
	cp c
	or d
	inc l
	ld a, [hld]
	sbc $e7
	ld d, c
	cp a
	cp d
	ld a, a
	cp a
	cp d
	rst $20
	ld c, a
	cp b
	or d
	db $dd
	ld a, a
	jp z, wdebb

	inc sp
	ld a, a
	swap b
	ret c

	ld a, a
	ld h, $dc
	ld d, a
	nop
	ld d, [hl]
	ld a, a
	or l
	call nz, wc5b8
	ld a, a
	cp c
	or d
	inc l
	ld a, [hld]
	sbc $e7
	ld d, c
	inc [hl]
	or e
	jr z, jr_015_5f35

	add d
	or b
	xor e
	inc de
	add d
	inc sp
	ld c, a
	adc l
	and a
	add a
	sub e
	ld a, a
	inc e
	adc a
	xor e
	db $dd
	ld a, a
	or l
	cp l
	call nz, $3455
	or e
	jr z, @-$35

	ld a, a
	ld a, [hld]
	cp h
	ld [c], a
	db $dd
	ld d, l
	or d
	jp c, $b4b6

	reti


	ld a, a
	cp d
	call nz, Call_015_7f26
	inc sp
	or a
	reti


	rst $20
	ld d, a
	nop
	cp d
	cp d
	jp z, $f77f

	ld sp, hl
	ld a, [hld]
	sbc $7f
	inc [hl]
	or e
	db $db
	ld c, a
	or a
	ret nz

	ld a, a
	ld d, [hl]
	ld a, a
	adc d
	add c
	and a
	xor e
	inc c
	ld a, a
	dec de
	ret c

	xor h
	dec bc
	ld d, a
	call $3c6c
	ld hl, $5f31
	ld de, $5f15
	ld a, [wd59a]
	call $31a8
	ld [wd59a], a
	ret


	ld h, c
	ld [hld], a
	sub h
	ld [hld], a
	cp l
	ld [hld], a
	xor d
	ld e, a
	inc de
	ld h, b
	ld h, b
	ld h, b
	call nc, $2f60
	ld h, c
	ld a, a
	ld h, c
	rst $10
	ld h, c
	inc sp
	ld h, d
	ld a, l
	ld h, d
	push hl
	ld h, d
	dec [hl]
	ld h, e
	ld bc, $5a20
	rst $10

jr_015_5f35:
	or h
	ld e, a
	and $5f
	reti


	ld e, a
	reti


	ld e, a
	ld [bc], a
	jr nz, jr_015_5f9a

	rst $10
	dec e
	ld h, b
	ld b, h
	ld h, b
	ld a, [hld]
	ld h, b
	ld a, [hld]
	ld h, b
	inc bc
	ld b, b
	ld e, d
	rst $10
	ld l, d
	ld h, b
	and d
	ld h, b
	sbc c
	ld h, b
	sbc c
	ld h, b
	inc b
	jr nc, @+$5c

	rst $10
	sbc $60
	dec bc
	ld h, c
	inc b
	ld h, c
	inc b
	ld h, c
	dec b
	jr nc, jr_015_5fbe

	rst $10
	add hl, sp
	ld h, c
	ld h, c
	ld h, c
	ld d, l
	ld h, c
	ld d, l
	ld h, c
	ld b, $40
	ld e, d
	rst $10
	adc c
	ld h, c
	xor a
	ld h, c
	and h
	ld h, c
	and h
	ld h, c
	rlca
	ld b, b
	ld e, d
	rst $10
	pop hl
	ld h, c
	inc de
	ld h, d
	nop
	ld h, d
	nop
	ld h, d
	ld [$5a40], sp
	rst $10
	dec a
	ld h, d
	ld h, e
	ld h, d
	ld e, c
	ld h, d
	ld e, c
	ld h, d
	add hl, bc
	jr nc, jr_015_5fee

	rst $10
	add a
	ld h, d
	cp b
	ld h, d
	xor e

jr_015_5f9a:
	ld h, d
	xor e
	ld h, d
	ld a, [bc]
	ld b, b
	ld e, d
	rst $10
	rst $28
	ld h, d
	ld [de], a
	ld h, e
	rlca
	ld h, e
	rlca
	ld h, e
	rst $38
	ld [$3121], sp
	ld e, a
	call $3214
	jp $0f6a


	nop
	jp nz, $b2d6

	ld a, a
	ld d, h
	add $7f
	cp l
	reti


jr_015_5fbe:
	push bc
	rst $10
	ld c, a
	call nc, Call_015_44df
	ret c

	ld a, a
	ld e, h
	inc sp
	ld d, l
	or d
	or d
	ld a, a
	call c, wdd2b
	ld a, a
	or l
	cp h
	or h
	push bc
	or d
	call nz, $e7c8
	ld d, a
	nop
	rst $08
	jr nc, @-$2f

	jr nc, jr_015_5fbe

	jp $b67f


	sbc $2c
	jr nc, jr_015_603e

	nop
	or a
	ret nc

	ld a, a
	swap e
	sbc $9d

jr_015_5fee:
	adc e
	xor e
	db $d3
	ld a, a
	db $d3
	rst $18
	jp wc8d9


	ld c, a
	or c
	jp c, $7f33

	or l
	ld a, $b4
	ret nz

	ld a, a
	call c, wca2b
	ld d, l
	ld d, h
	jp z, $f87f

	inc [hl]
	call nz, wdc7f
	cp l
	jp c, $b2c5

	sub $57
	ld [$3d21], sp
	ld e, a
	call $3214
	jp $0f6a


	nop
	ld a, $b8
	ret


	ld a, a
	call nz, Call_015_7fd8
	ld d, h
	ld c, a
	cp a
	db $db
	cp a
	db $db
	ld d, [hl]
	ld d, l
	ret nz

	ret nz

	or [hl]
	call c, $c3be
	ld a, a
	ret nc

	sub $b3
	or [hl]
	rst $20
	ld d, a
	nop
	rst $08
	jr nc, @+$81

jr_015_603e:
	jp z, $b6d4

	rst $18
	ret nz

	ld e, b
	nop
	db $d3
	rst $18
	call nz, wc27f
	sub $b2
	ld a, a
	call c, Call_015_4f2b
	or l
	cp h
	or h
	jp $b67f


	rst $10
	ld a, a
	ret nz

	ret nz

	or [hl]
	call c, wd6be
	or e
	ld d, a
	ld [$4921], sp
	ld e, a
	call $3214
	jp $0f6a


	nop
	ld e, h
	jp z, $8f4f

	sbc l
	sbc a
	adc e
	ld a, a
	ld [de], a
	ld b, b
	db $e3
	sub e
	ld a, a
	inc sp
	db $d3
	ld a, a
	or [hl]
	or h
	reti


	rst $20
	ld d, l
	inc sp
	db $d3
	ld a, a
	swap e
	sbc $9d
	adc e
	xor e
	ld a, a
	db $d3
	rst $18
	jp Jump_015_55d9


	set 0, h
	jp z, $bd7f

	cp b
	push bc
	or d
	ret z

	ld d, a
	nop
	db $d3
	or e
	ld a, a
	rrca
	adc d
	rrca
	adc d
	ld e, b
	nop
	ld d, h
	ret


	ld a, a
	adc a
	add c
	ld b, d
	call nz, $b57f
	push bc
	inc l
	ld c, a
	adc a
	add c
	ld b, d
	ret


	ld a, a
	call c, wdd2b
	ld a, a
	or l
	cp h
	or h
	reti


	call nz, wdc55
	dec hl
	ret


	ld a, a
	or d
	ret c

	ld [c], a
	cp b
	ld h, $55
	or l
	or l

jr_015_60ca:
	or a
	cp b
	push bc
	reti


	ld a, a
	rst $10
	cp h
	or d
	sub $57
	ld [$5521], sp
	ld e, a
	call $3214
	jp $0f6a


	nop
	or a
	ret nc

	ret


	ld a, a
	call nz, Call_015_7fd8
	ld d, h
	jp z, $b74f

	ret nc

jr_015_60eb:
	db $dd
	ld a, a
	ret


	cp [hl]
	jp $bf7f


	rst $10
	db $dd
	ld a, a
	call nz, Call_015_553c
	call c, wca2b
	ld a, a
	or l
	ld a, $b4
	ret nz

	or [hl]
	or d
	and $57
	nop
	ld a, $db
	rst $08
	cp c
	rst $20
	ld e, b
	nop
	ld a, $b8
	rst $10
	jp z, wc47f

	ret c

	ld d, h
	ld h, $4f
	jr nc, jr_015_60ca

	cp l
	or a
	ld a, a
	jr nc, @-$48

	rst $10
	ld d, [hl]
	ld d, l
	cp a
	jp c, $b6bc

	ld a, a
	cp a
	jr nc, jr_015_60eb

	ret nz

	cp b
	ld a, a
	push bc
	or d
	sub $57
	ld [$6121], sp
	ld e, a
	call $3214
	jp $0f6a


	nop
	inc sp
	sbc $be
	jp nz, Jump_015_7fc9

	ld d, h
	ld a, a
	call nz, $b3b2
	ld c, a
	jp z, $bcc5

	ld a, a
	or a
	or d
	ret nz

	ld a, a
	cp d
	call nz, $b17f
	reti


	and $57
	nop
	inc [hl]
	or e
	cp h
	jp wcf7f


	cp c
	ret nz

	or [hl]
	push bc
	ld e, b
	nop
	inc sp
	sbc $be

jr_015_6165:
	jp nz, Jump_015_7fc9

	ld d, h
	jp z, $f94f

	cp h
	pop hl
	reti


	or d
	ld a, a
	or d
	jp $bd55


	dec a
	jp wc47f


	ret c

	ld a, a
	ld d, h
	jr nc, jr_015_6165

	ld d, a
	ld [$6d21], sp
	ld e, a
	call $3214
	jp $0f6a


	nop
	or a
	ld h, $7f
	ret


	rst $10
	push bc
	or d
	ld a, a
	cp c
	inc [hl]
	ld d, [hl]
	ld c, a
	cp h
	ld [c], a
	or e
	ld h, $7f
	push bc
	or d
	rst $20
	ld a, a
	call nc, $b6d9
	rst $20
	ld d, a
	nop
	or c
	or c
	ld d, [hl]
	ld a, a
	call nc, Call_015_44df
	ret c

	push bc
	ld e, b
	nop
	cp a
	rst $10
	ret


	ld a, a
	set 3, e
	cp e
	add $7f
	cp b
	rst $10
	dec a
	ret nz

	rst $10
	ld c, a
	or [hl]
	pop bc
	ld a, a
	rst $08
	cp c
	ld a, a
	push bc
	sbc $c3
	ld d, l
	inc [hl]
	or e
	rst $18
	jp $ba7f


	call nz, wc57f
	or d
	ret


	cp e
	rst $20

jr_015_61d6:
	ld d, a
	ld [$7921], sp
	ld e, a
	call $3214
	jp $0f6a


	nop
	or l
	jp c, $b57f

	jp c, $7fca

	cp [hl]
	rst $18
	or [hl]
	pop bc
	jr nc, jr_015_61d6

	ld c, a
	jp z, $b8d4

	ld a, a
	jp z, $b8d4

	ld a, a
	jp z, $b8d4

	ld a, a
	cp h
	db $db
	rst $20
	ld d, a
	nop
	rst $08
	cp c
	ret nz

	ld a, a
	rst $08
	cp c
	ret nz

	ld c, a
	or l
	call c, $30d8
	ld a, a
	inc l
	ldh [$b1], a
	push bc
	ld e, b
	nop
	push bc
	sbc $30
	ld a, a
	push bc
	sbc $30
	ld a, a
	push bc
	sbc $30
	rst $20
	ld c, a
	rst $08
	jr nc, @+$81

	sub $b3
	inc l
	ld h, $7f
	or c
	reti


	ld a, a
	or c
	reti


	ld a, a
	ret


	or [hl]
	rst $20
	ld d, a
	ld [$8521], sp
	ld e, a
	call $3214
	jp $0f6a


	nop
	pop bc
	ld [c], a
	or e
	inc [hl]
	ld a, a
	or d
	or d
	ld l, $e7
	ld c, a
	jp nz, $ba3d

	dec a
	ld a, a
	or d
	call c, wc62d
	ld a, a
	or c
	or d
	jp $bc7f


	push bc
	ld d, a
	nop
	push bc
	sbc $30
	ld a, a
	cp d
	rst $10
	or c
	rst $20
	ld e, b
	nop
	inc [hl]
	or e
	db $d3
	ld a, a
	pop bc
	rst $08
	pop bc
	rst $08
	call nz, $bf4f
	jr nc, @-$3b

	reti


	ld a, a
	ret


	jp z, wc67f

	ld h, $c3
	jr nc, @+$30

	rst $20
	ld d, a
	ld [$9121], sp
	ld e, a
	call $3214
	jp $0f6a


jr_015_6287:
	nop
	cp d
	ret


	ld a, a
	or c
	ret nz

	ret c

	jp z, wc04f

	jp wc9d3


	ld h, $7f
	cp l
	cp b
	ret z

	or h
	ld a, a
	or [hl]
	rst $10
	ld d, l
	sub $b8
	ld a, a
	jp z, wd8bc

	add $7f
	cp b
	reti


	ld l, $e7
	ld d, a
	nop
	or l
	rst $18
	call nz, $ba7f
	cp c
	pop bc
	rst $08
	rst $18
	ret nz

	rst $20
	ld e, b
	nop
	sub $b8
	ld a, a
	cp a
	cp d
	rst $08
	inc sp
	ld a, a
	cp a
	jr nc, jr_015_6287

	ret nz

	push bc
	rst $20
	ld c, a
	push bc
	sbc $c6
	cp h
	jp Jump_015_56d3


	ld d, c
	jp nz, $b2d6

	rst $18
	jp $ba7f


	call nz, Call_015_4fca
	ret nz

	or d
	cp h
	ret nz

	ld a, a
	db $d3
	sbc $30
	ld l, $e7
	ld d, a
	ld [$9d21], sp
	ld e, a
	call $3214
	jp $0f6a


	nop
	ld d, h
	ld a, a
	ret nz

	or d
	cp c
	jp nz, $e7b6

	ld c, a
	or l
	db $d3
	cp h
	db $db
	or d
	rst $20
	ld a, a
	jp nz, $b1b7

	or e
	ld l, $e7
	ld d, a
	nop
	push bc
	rst $18
	call nz, Call_015_7fb8
	or d
	or [hl]
	ret z

	or h
	ld e, b
	nop
	or l
	jp c, $7fc4

	or l
	rst $08
	or h
	ret


	ld c, a
	pop bc
	ld [c], a
	cp b
	cp [hl]
	jp nz, wc07f

	or d
	cp c
	jp nz, $307f

	rst $18
	ret nz

	rst $10
	ld d, l
	or l
	jp c, Jump_015_7f26

	or [hl]
	jp nz, $e72e

	ld d, a
	nop
	cp d
	cp d
	jp z, $f77f

	ld a, [wde3a]
	ld a, a
	inc [hl]
	or e
	db $db
	ld c, a
	add $bc
	ld a, a
	ld d, [hl]
	ld a, a
	adc l
	add [hl]
	sub b
	add a
	ld a, a
	adc e
	sub d
	or b
	ld d, a
	call $3c6c
	ld hl, $638a
	ld de, $6364
	ld a, [wd59b]
	call $31a8
	ld [wd59b], a
	ret


	ld h, c
	ld [hld], a
	sub h
	ld [hld], a
	cp l
	ld [hld], a
	inc bc
	ld h, h
	ld e, l
	ld h, h
	sbc l
	ld h, h
	reti


	ld h, h
	rra
	ld h, l
	ld h, b
	ld h, l
	cp c
	ld h, l
	cp $65
	ccf
	ld h, [hl]
	add h
	ld h, [hl]
	cp e
	ld h, [hl]
	reti


	ld h, [hl]
	inc hl
	ld h, a
	ld d, a
	ld h, a
	ld [hl], c
	ld h, a
	sbc b
	ld h, a
	ld bc, $6030
	rst $10
	dec c
	ld h, h
	inc [hl]
	ld h, h
	inc l
	ld h, h
	inc l
	ld h, h
	ld [bc], a
	ld b, b
	ld h, b
	rst $10
	ld h, a
	ld h, h
	adc b
	ld h, h
	add b
	ld h, h
	add b
	ld h, h
	inc bc
	ld b, b
	ld h, b
	rst $10
	and a
	ld h, h
	cp a
	ld h, h
	cp b
	ld h, h
	cp b
	ld h, h
	inc b
	ld b, b
	ld h, b
	rst $10
	db $e3
	ld h, h
	ld a, [bc]
	ld h, l
	nop
	ld h, l
	nop
	ld h, l
	dec b
	jr nc, @+$62

	rst $10
	add hl, hl
	ld h, l
	ld b, h
	ld h, l
	dec a
	ld h, l
	dec a
	ld h, l
	ld b, $20
	ld h, b
	rst $10
	ld l, d
	ld h, l
	sub d
	ld h, l
	adc d
	ld h, l
	adc d
	ld h, l
	rlca
	ld b, b
	ld h, b
	rst $10
	jp $e665


	ld h, l
	call nc, wd465
	ld h, l
	ld [$6020], sp
	rst $10
	ld [$2766], sp
	ld h, [hl]
	ld hl, $2166
	ld h, [hl]
	add hl, bc
	jr nc, jr_015_644d

	rst $10
	ld c, c
	ld h, [hl]
	ld l, c
	ld h, [hl]
	ld h, e
	ld h, [hl]
	ld h, e
	ld h, [hl]
	ld a, [bc]
	ld b, b
	ld h, b
	rst $10
	adc [hl]
	ld h, [hl]
	xor h
	ld h, [hl]
	and l
	ld h, [hl]
	and l
	ld h, [hl]
	rst $38
	ld [$8a21], sp
	ld h, e
	call $3214
	jp $0f6a


	nop
	cp d
	inc [hl]
	db $d3
	ld a, a
	or c
	or d
	jp $7fc6


	ret nz

	ret nz

	or [hl]
	rst $18
	jp Jump_015_4fd3


	cp h
	ld [c], a
	or e
	or a
	sbc $ca
	ld a, a
	ret nz

	rst $08
	rst $10
	ret z

	or h
	rst $20
	ld d, a
	nop
	db $d3
	or h
	jp nz, wc0b7

	ld l, $58
	nop
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
	jp z, $b54f

	call nz, wd3bc
	ret


	ld h, $7f
	or l
	or l
	or d
	rst $20
	ld d, l

jr_015_644d:
	set 3, e
	rst $18
	jp $b37f


	jp c, $7f3a

	db $d3
	or e
	or [hl]
	reti


	ld l, $b4
	ld d, a
	ld [$9621], sp
	ld h, e
	call $3214
	jp $0f6a


	nop
	ret nz

	or d
	ret c

	ld [c], a
	cp b
	ld a, a
	add $ca
	ld c, a
	inc l
	cp h
	sbc $7f
	or c
	reti


	ld l, $b4
	ld d, [hl]
	ld a, a
	cp d
	or d
	sub $e7
	ld d, a
	nop
	ld a, $d6
	sub $e3
	sbc $e7
	ld e, b
	nop
	jp nz, $33b2

	add $4f
	or l
	push bc
	or [hl]
	inc sp
	db $d3
	ld a, a
	cp e
	call c, $c3df
	ld a, a
	ret nc

	reti


jr_015_649b:
	or [hl]
	ld d, a
	ld [$a221], sp
	ld h, e
	call $3214
	jp $0f6a


	nop
	adc l
	add [hl]
	sub b
	add a
	ld a, a
	adc e
	sub d
	or b
	add $7f
	or d
	cp b
	ret


	or [hl]
	and $57
	nop
	or c
	set 4, d
	db $e3
	rst $20
	ld e, b
	nop
	cp b
	jr nc, jr_015_649b

	dec hl
	or [hl]
	ld a, a
	or d
	rst $18
	or a

jr_015_64c9:
	add $7f
	or l
	ret c

	reti


	call nz, $b74f
	db $d3
	pop bc
	ld a, a
	or d
	or d
	ld l, $e7
	ld d, a
	ld [$ae21], sp
	ld h, e
	call $3214
	jp $0f6a


	nop
	or l
	jp c, wc1c0

	ld a, a
	ld a, $b3
	cp a
	or e
	ld a, a
	cpl
	cp b
	rst $20
	ld c, a
	push bc
	cp b
	ld a, a

jr_015_64f5:
	cp d
	db $d3
	ld a, a
	jr nc, jr_015_64c9

	rst $10
	cp [hl]
	reti


	ld l, $e7
	ld d, a
	nop
	ld h, $cf
	sbc $7f
	push bc
	rst $10
	ret z

	or h
	ld e, b
	nop
	push bc
	or [hl]
	push bc
	or [hl]
	ld d, [hl]
	ld c, a
	inc [hl]
	or a
	ld [c], a
	or e
	ld a, a
	or c
	reti


	ld a, a
	inc l
	ldh [$c8], a
	or h
	or [hl]
	ld d, a
	ld [$ba21], sp
	ld h, e
	call $3214
	jp $0f6a


	nop
	or e
	ret c

	ldh [$b1], a
	rst $20
	ld c, a
	ld a, [de]
	ret c

	ret c

	rrca
	sbc l
	add $7f
	cp h
	dec sp
	jp c, $e7db

	ld d, a
	nop
	jr z, jr_015_64f5

	xor h
	ld d, [hl]
	rst $20
	ld e, b
	nop
	cp d
	ret


	ld a, a
	ld a, [de]
	ret c

	ret c

	rrca
	sbc l
	jp z, wd14f

	inc l
	sbc $7f
	jp z, $33c2

	sbc $bc
	ld [c], a
	inc sp
	ld a, a
	call nz, wc0df
	ld l, $57
	ld [wc621], sp
	ld h, e
	call $3214
	jp $0f6a


	nop
	or l
	jp c, Jump_015_7fc9

	ld d, h
	ld a, a
	and a
	dec a
	and [hl]
	ld a, a
	or c
	add hl, hl
	jp Jump_015_4fd3


	push bc
	or [hl]
	push bc
	or [hl]
	ld a, a
	cp h
	sbc $b6
	ld a, a
	cp h
	push bc
	or d
	ld l, $b4

jr_015_6588:
	rst $20
	ld d, a
	nop
	cp d
	ret


	ld a, a
	call nc, $e7db
	ld e, b
	nop
	cp a
	or e
	or d
	or h
	ld a, [hld]
	ld a, a
	ld d, h
	add $7f
	sub $df
	jp $b24f


	cp h
	db $dd
	ld a, a
	or [hl]
	dec hl
	cp l
	call nz, $bc55
	sbc $b6
	ld a, a
	cp l
	reti


	or [hl]
	db $d3
	ld a, a
	cp h
	jp c, $b2c5

	ld l, $b4
	ld d, a
	ld [wd221], sp
	ld h, e
	call $3214
	jp $0f6a


	nop
	set 0, h
	or c
	cp [hl]
	ld a, a
	or [hl]
	or d
	jp wd47f


	cp [hl]
	reti


	or [hl]
	or c
	rst $20
	ld d, a
	nop
	jr nc, jr_015_6588

	rst $20
	ld c, a
	or c
	jp nz, Jump_015_7fb2

	ret nz

	ret nz

	or [hl]
	or d
	ld a, a
	jr nc, jr_015_6612

	or h
	ld e, b
	nop
	or c
	cp [hl]
	ld a, a
	or [hl]
	or d
	jp $bd4f


	cp d
	cp h
	ld a, a
	call nc, wc0be
	ld a, a
	or a
	ld h, $7f
	cp l
	reti


	ld l, $b4
	ld d, a
	ld [wde21], sp
	ld h, e
	call $3214
	jp $0f6a


	nop
	jp nz, Jump_015_44df

	reti


jr_015_660d:
	ld a, a
	cp d
	call nz, Call_015_4f26

jr_015_6612:
	or l
	call nz, wc9ba
	ld a, a
	cp b
	sbc $bc
	ld [c], a
	or e
	jr nc, jr_015_664c

	or h
	rst $20
	ld d, a
	nop
	ld h, $e3
	xor h
	rst $20
	ld e, b
	nop
	or l
	call nz, $7fba
	jr nc, jr_015_660d

	ret nz

	rst $10
	ld c, a
	cp h
	sbc $2c
	reti


	ld a, a
	ret nc

	pop bc
	db $dd
	ld a, a
	or d
	cp c
	or h
	rst $20
	ld d, a
	ld [$ea21], sp
	ld h, e
	call $3214
	jp $0f6a


	nop
	or d
	or [hl]

jr_015_664c:
	cp l
	ld a, a
	inc l
	jp $bcde


	ldh [$30], a
	push bc
	rst $20
	ld c, a
	ret


	ret c

	ld a, [hli]
	cp d
	pop bc
	jp z, $347f

	or e
	jr nc, @-$18

	ld d, a
	nop
	cp b
	cp a
	or e
	rst $20
	ld e, b
	nop
	cp e

jr_015_666b:
	or [hl]
	ret nc

	pop bc
	inc sp
	ret


	ld a, a
	sbc c
	xor e
	inc de
	and [hl]
	ld a, a
	cp e
	ld a, [hld]
	or a
	ld c, a
	pop de
	dec l
	or [hl]
	cp h
	or d
	ld a, a
	jr nc, @-$23

	rst $20
	ld d, a
	ld [$f621], sp
	ld h, e
	call $3214
	jp $0f6a


	nop
	ld d, [hl]
	ld a, a
	jr nc, jr_015_666b

	or d
	sub $56
	ld a, a
	ret z

	ret nc

	or d
	sub $4f
	jp nc, $34de

	cp b
	cp [hl]
	or h
	ld d, [hl]
	rst $20
	ld d, a
	nop
	or l
	call c, wc0df
	or [hl]
	ld e, b
	nop
	db $d3
	or e
	ld a, a
	add hl, de
	xor h
	add a
	and a
	jp wc87f


	jp wd6b4


	ld d, a
	nop
	sub b
	and l
	adc e
	ld h, $7f
	jp z, $c3df

	or c
	reti


	rst $20
	ld d, c
	ld d, [hl]
	ld a, a
	inc [hl]
	or e
	jr z, jr_015_674d

	push bc
	add hl, hl
	cp l
	jp wc17f


	pop hl

jr_015_66d5:
	or e
	or d
	rst $20
	ld d, a
	nop
	ld d, [hl]
	ld a, a
	or l
	call nz, wc5b8
	ld a, a
	cp c
	or d
	inc l
	ld a, [hld]
	sbc $e7
	ld d, c
	or l
	push bc
	inc l
	ld a, a
	ld d, h
	ld a, a
	or l
	push bc
	inc l
	ld a, a
	and a
	dec a
	and [hl]
	inc sp
	db $d3
	ld c, a
	call nz, wc0d9
	dec sp
	add $7f
	ld b, b
	and l
	and b
	db $e3
	adc a
	ld h, $7f
	cp l
	cp d
	cp h
	ld d, l
	pop bc
	ld h, $df
	jp Jump_015_56c3


	ld a, a
	cp a
	jr nc, jr_015_66d5

	call nz, wc155
	ld h, $b2
	ld h, $7f
	or l
	or l
	or a
	cp b
	ld a, a
	push bc
	reti


	rst $20
	ld d, a
	nop
	ld d, [hl]
	ld a, a
	or l
	call nz, wc5b8
	ld a, a
	cp c
	or d
	inc l
	ld a, [hld]
	sbc $e7
	ld d, c
	inc e
	adc a
	xor e
	db $dd
	ld a, a
	or l
	cp h
	jp $3ada


	ld c, a
	cp e
	or [hl]
	ret nc

	pop bc
	inc sp
	db $d3
	ld a, a
	inc l
	jp $bcde


	ldh [$c9], a
	ld d, l
	adc a
	add c

jr_015_674d:
	and d
	ld h, $7f
	cp l
	dec a
	rst $10
	push bc
	or d
	rst $20
	ld d, a
	nop
	cp d
	cp d
	jp z, $f77f

	db $fd
	ld a, [hld]
	sbc $7f
	inc [hl]
	or e
	db $db
	ld c, a
	adc a
	sbc l
	sbc a
	adc e
	ld a, a
	ld d, [hl]
	ld a, a
	adc l
	add [hl]
	sub b
	add a
	ld d, a
	nop
	sub b
	and l
	adc e
	ld h, $7f
	jp z, $c3df

	or c
	reti


	rst $20
	ld d, c
	ld [$9fe3], sp
	db $dd
	ld a, a
	push bc
	add hl, hl
	reti


	push bc
	rst $20
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
	push bc
	add hl, hl
	db $db
	rst $20
	ld d, a
	nop
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
	ld c, a
	ld d, [hl]
	ld a, a
	cp e
	or [hl]
	ret nc

	pop bc
	jp z, $ba7f

	cp d
	rst $08
	inc sp
	rst $20
	ld d, a
	call $3c6c
	ld hl, $67e1
	ld de, $67c5
	ld a, [wd59c]
	call $31a8
	ld [wd59c], a
	ret


	ld h, c
	ld [hld], a
	sub h
	ld [hld], a
	cp l
	ld [hld], a
	ld e, d
	ld l, b
	and l
	ld l, b
	ld a, [c]
	ld l, b
	ld [hld], a
	ld l, c
	ld [hl], l
	ld l, c
	ret nz

	ld l, c
	dec c
	ld l, d
	ld h, [hl]
	ld l, d
	xor [hl]
	ld l, d
	db $f4
	ld l, d
	ld c, b
	ld l, e
	ld bc, $6440
	rst $10
	ld h, h
	ld l, b
	adc h
	ld l, b
	add c
	ld l, b
	add c
	ld l, b
	ld [bc], a
	jr nc, jr_015_6854

	rst $10
	xor a
	ld l, b
	push de
	ld l, b
	call wcd68
	ld l, b
	inc bc
	jr nc, @+$66

	rst $10
	db $fc
	ld l, b
	inc e
	ld l, c
	inc d
	ld l, c
	inc d
	ld l, c
	inc b
	ld b, b
	ld h, h
	rst $10
	inc a
	ld l, c
	ld e, [hl]
	ld l, c
	ld d, [hl]
	ld l, c
	ld d, [hl]
	ld l, c
	dec b
	ld b, b
	ld h, h
	rst $10
	ld a, a
	ld l, c
	and l
	ld l, c
	sbc l
	ld l, c
	sbc l
	ld l, c
	ld b, $40
	ld h, h
	rst $10
	jp z, $f269

	ld l, c
	rst $20
	ld l, c
	rst $20
	ld l, c
	rlca
	jr nc, jr_015_6890

	rst $10
	rla
	ld l, d
	ld b, h
	ld l, d
	ld a, [hld]
	ld l, d
	ld a, [hld]
	ld l, d
	ld [$6440], sp
	rst $10
	ld [hl], b
	ld l, d
	sub e
	ld l, d
	adc h
	ld l, d
	adc h
	ld l, d
	add hl, bc
	ld b, b
	ld h, h
	rst $10
	cp b
	ld l, d
	sbc $6a
	pop de
	ld l, d
	pop de
	ld l, d
	ld a, [bc]
	ld b, b
	ld h, h
	rst $10
	cp $6a
	ld [hli], a

jr_015_6854:
	ld l, e
	dec de
	ld l, e
	dec de
	ld l, e
	rst $38
	ld [$e121], sp
	ld h, a
	call $3214
	jp $0f6a


	nop
	ret nc

	dec l
	add $7f
	jp z, wd9b2

	ld a, a
	rst $08
	or h
	add $4f
	inc l
	pop hl
	sbc $3b
	ld a, a
	ret nz

	or d
	cp a
	or e
	ld a, a
	cp h
	push bc
	or a
	ldh [$e7], a
	ld d, a
	nop
	ret nz

	or d
	cp a
	or e
	ld a, a
	or l
	call c, $e7d8
	ld e, b
	nop
	sub $bc
	xor h

jr_015_6890:
	rst $20
	ld a, a
	or l
	or [hl]
	add hl, hl
	inc sp
	ld c, a
	or d
	or d
	ld a, a
	or e
	sbc $34
	or e
	add $7f
	push bc
	rst $18
	ret nz

	rst $20
	ld d, a
	ld [$ed21], sp
	ld h, a
	call $3214
	jp $0f6a


	nop
	rst $08
	jp $b17f


	call c, wd9c3
	push bc
	rst $20
	ld c, a
	cp h
	sbc $2f
	or e
	ld a, a
	sbc l
	sbc d
	add $7f
	push bc
	rst $18
	ret nz

	rst $10
	ld a, a
	inc [hl]
	or e
	cp l
	reti


	ld d, a
	nop
	or e
	db $e3
	ld a, a
	cp e
	pop de
	or d
	ld e, b
	nop
	and b
	sbc b
	add a
	and l
	ld [$7fc6], sp
	cp e
	cp e
	jp c, $b2c5

	sub $b3
	ld c, a
	or a
	db $dd
	ld a, a
	jp nz, wc3b9

	ld a, a
	or l
	sub $29
	sub $e7
	ld d, a
	ld [$f921], sp
	ld h, a
	call $3214
	jp $0f6a


	nop
	or l
	sub $28
	ret


	ld a, a
	jr nc, @-$4c

	cp l
	or a
	rst $20
	ld c, a
	ld d, [hl]
	ld a, a
	or a
	ret nc

	jp z, $347f

	or e
	push bc
	ret


	and $57
	nop
	inc de
	xor h
	ld b, e
	db $e3
	xor e
	rst $20
	ld e, b
	nop
	or l
	sub $27
	ld a, a
	push bc
	rst $10
	ld c, a
	or e
	ret nc

	ret


	ld a, a
	ld d, h
	add $d3
	ld a, a
	rst $08
	cp c
	push bc
	or d
	rst $20
	ld d, a
	ld [$0521], sp
	ld l, b
	call $3214
	jp $0f6a


	nop
	cp l
	or d
	call $beb2
	sbc $c9
	ld a, a
	pop de
	cp d
	or e
	ld c, a
	ld d, [hl]
	ld a, a
	push bc
	add $26
	ld a, a
	or c
	reti


	sbc $30
	db $db
	and $57
	nop
	or c
	ret c

	ldh [$d8], a
	ldh [rRP], a
	ld e, b
	nop
	ld d, [hl]
	ld a, a
	pop de

jr_015_6962:
	cp d
	or e
	add $4f
	or d
	cp b

jr_015_6968:
	jp nz, Jump_015_7fb6

	cp h
	rst $08
	ld h, $7f
	ret nc

	or h
	reti


	cpl
	rst $20
	ld d, a
	ld [$1121], sp
	ld l, b
	call $3214
	jp $0f6a


	nop
	db $d3
	jr z, jr_015_6962

jr_015_6983:
	jp $7f56


	or e
	ret nc

	ld a, a
	ld d, h
	ld c, a
	call nz, $b3db
	call nz, wc0bc
	cp c
	inc [hl]
	ld a, a
	jr nc, jr_015_6968

	ld a, a
	ret nc

	ret nz

	or d
	jr nc, jr_015_6983

	ld d, a
	nop
	ld a, [hli]
	ld a, $7f
	ld a, [hli]
	ld a, $ac
	ld e, b
	nop
	or e
	ret nc

	ret


	ld a, a
	ld d, h
	jp z, wd47f

	rst $18
	ld b, h
	ret c

	ld c, a
	jp nz, $33d8

	ld a, a
	call nz, $7fd9
	cp h
	or [hl]
	ld a, a
	push bc
	or d
	call nc, $0857
	ld hl, $681d
	call $3214
	jp $0f6a


	nop
	or c
	or l
	or d
	ld a, a
	or e
	ret nc

	db $dd
	ld a, a
	ret nc

	jp $3ada


	ld c, a
	or d
	call nc, Call_015_7fc5
	cp d
	call nz, $7fd3
	call c, wdabd
	reti


	cpl
	rst $20
	ld d, a
	nop
	or d
	call nc, Call_015_7fc5
	rst $08
	cp c
	or [hl]
	ret nz

	jr nc, jr_015_6a4a

	nop
	or c
	or l
	or d
	ld a, a
	or e
	ret nc

	db $dd
	ld a, a
	ret nc

	jp Jump_015_4f56


	or d
	call nc, Call_015_7fc5
	cp d
	call nz, $7fdd
	call c, wdabd
	sub $b3
	ld d, a
	ld [$2921], sp
	ld l, b
	call $3214
	jp $0f6a


	nop
	rst $08
	rst $20
	ld a, a
	or d
	or d
	ld a, a
	db $d3
	ret


	add $7f
	ret


	rst $18
	jp wdcd9


	ret z

	ld c, a
	or [hl]
	rst $18
	ret nz

	rst $10
	ld a, a
	call c, $bcc0
	add $7f
	pop bc

jr_015_6a34:
	ld [c], a
	or e
	jr nc, @-$4c

	rst $20
	ld d, a
	nop
	call c, $bcc0
	ret


	ld a, a
	rst $08
	cp c
	or [hl]
	ld e, b
	nop
	call z, $2ac0
	inc l
	rst $08

jr_015_6a4a:
	ld a, a
	rst $08
	inc sp
	ld c, a
	rst $08
	jr nc, jr_015_6ad0

	or c
	ret c

	cp a
	or e
	jr nc, @-$42

	ld d, [hl]
	ld d, l
	adc l
	add [hl]
	sub b
	add a
	add $7f
	or [hl]
	or h
	ret c

	ret nz

	or d
	call c, $0857
	ld hl, $6835
	call $3214
	jp $0f6a


	nop
	or l
	sub $28
	ret


	ld a, a
	cp l
	or a
	ld a, a
	jr nc, jr_015_6a34

	inc [hl]
	ld c, a
	set 2, h
	cp c
	ld a, a
	cp l
	reti


	ret


	jp z, $b27f

	call nc, wdc30
	rst $20
	ld d, a
	nop
	cp b
	rst $10
	cp b
	rst $10
	ld d, [hl]
	ld e, b
	nop
	or [hl]
	jp c, Jump_015_7f26

	call z, $2ac0
	inc l
	rst $08
	ld a, a
	rst $08
	inc sp
	ld c, a
	or l
	sub $2a
	or e
	rst $18
	jp $b27f


	rst $18
	ret nz

	ret


	sub $57
	ld [$4121], sp
	ld l, b
	call $3214
	jp $0f6a


	nop
	cp a
	cp d
	ret


	ld a, a
	cp h
	ld [c], a
	or e
	ret z

	sbc $e7
	ld c, a
	cp d
	ret


	ld a, a
	or e
	ret nc

	jp z, $b77f

	cp c
	sbc $30
	rst $20

jr_015_6ad0:
	ld d, a
	nop
	or c
	inc a
	push bc
	or d
	ld a, a
	jp nc, $7fc6

	or c
	rst $18
	ret nz

	ld e, b
	nop
	or c
	ld a, a
	or c
	cp h
	ld h, $7f
	jp nz, wc0df

	rst $20
	ld c, a
	inc a
	cp b
	ld d, [hl]
	ld a, a
	inc a
	cp b
	inc a
	cp b
	ld d, [hl]
	ld d, a
	ld [$4d21], sp
	ld l, b
	call $3214
	jp $0f6a


	nop
	ret nc

	sbc $c5
	inc sp
	ld a, a
	cp d
	cp d
	rst $08
	inc sp
	ld a, a
	or l
	sub $b2
	inc sp
	ld c, a
	or a
	ret nz

	cp c
	inc [hl]
	ld d, [hl]
	ld a, a
	cp b
	ret nz

	dec sp
	jp c, wdcc0

	ld d, a
	nop
	jp nz, wdab6

	ret nz

	ld d, [hl]
	ld e, b
	nop
	or e
	ret nc

	inc sp
	ld a, a
	ld d, h
	add $7f
	ret


	reti


	push bc
	rst $10
	ld c, a
	and l
	ld b, d
	and l
	adc h
	ld h, $7f
	or d
	or d
	call c, $b555
	or l
	or a
	or d
	or [hl]
	rst $10
	ld a, a
	rst $00
	jp c, $b2c5

	ld a, a
	db $d3
	ret


	ld d, a
	nop
	cp d
	cp d
	jp z, $f77f

	rst $38
	ld a, [hld]
	sbc $7f
	cp l
	or d
	inc [hl]
	or e
	ld c, a
	adc l
	add [hl]
	sub b
	add a
	ld a, a
	ld d, [hl]
	ld a, a
	call z, $2ac0
	inc l
	rst $08
	ld d, a
	call $3c6c
	ld hl, $6b8f
	ld de, $6b77
	ld a, [wd59d]
	call $31a8
	ld [wd59d], a
	ret


	ld h, c
	ld [hld], a
	sub h
	ld [hld], a
	cp l
	ld [hld], a
	db $fc
	ld l, e
	ccf
	ld l, h
	sub b
	ld l, h
	call z, $0f6c
	ld l, l
	ld c, [hl]
	ld l, l
	and b
	ld l, l
	rst $10
	ld l, l
	inc sp
	ld l, [hl]
	ld bc, $6800
	rst $10
	ld b, $6c
	inc l
	ld l, h
	inc hl
	ld l, h
	inc hl
	ld l, h
	ld [bc], a
	nop
	ld l, b
	rst $10
	ld c, c
	ld l, h
	ld a, b
	ld l, h
	ld h, l
	ld l, h
	ld h, l
	ld l, h
	inc bc
	ld b, b
	ld l, b
	rst $10
	sbc d
	ld l, h
	or h
	ld l, h
	xor [hl]
	ld l, h
	xor [hl]
	ld l, h
	inc b
	ld b, b
	ld l, b
	rst $10
	sub $6c
	ld a, [c]
	ld l, h
	db $ec
	ld l, h
	db $ec
	ld l, h
	dec b
	ld b, b
	ld l, b
	rst $10
	add hl, de
	ld l, l
	scf
	ld l, l
	ld l, $6d
	ld l, $6d
	ld b, $40
	ld l, b
	rst $10
	ld e, b
	ld l, l
	ld a, a
	ld l, l
	db $76
	ld l, l
	db $76
	ld l, l
	rlca
	jr nc, jr_015_6c42

	rst $10
	xor d
	ld l, l
	add $6d
	cp l
	ld l, l
	cp l
	ld l, l
	ld [$6800], sp
	rst $10
	pop hl
	ld l, l
	ld [de], a
	ld l, [hl]
	db $fd
	ld l, l
	db $fd
	ld l, l
	add hl, bc
	nop
	ld l, b
	rst $10
	dec a
	ld l, [hl]
	ld h, h
	ld l, [hl]
	ld e, b
	ld l, [hl]
	ld e, b
	ld l, [hl]
	rst $38
	ld [$8f21], sp
	ld l, e
	call $3214
	jp $0f6a


	nop
	ld [hl], b
	jp nz, wcfda

	cp l
	or [hl]
	and $71
	call nz, Call_015_7fb6
	or l
	rst $08
	or h
	jp z, $b74f

	or a
	ret nz

	or d
	sbc $2c
	ldh [$c5], a
	or d
	ret


	and $57
	nop
	or c
	db $e3
	ld a, a
	call nc, wdad7
	ret nz

	ld e, b
	nop
	or d
	or d
	ld a, a
	ld d, h
	ld a, a
	jp nz, wc8da

	db $e3
	sub $e7
	ld c, a
	ld l, $de
	ld l, $de
	rst $20
	ld d, a
	ld [$9b21], sp

jr_015_6c42:
	ld l, e
	call $3214
	jp $0f6a


	nop
	ret nz

	or d
	ret c

	ld [c], a
	or e
	rst $20
	ld a, a
	ret nz

	or d
	ret c

	ld [c], a
	or e
	rst $20
	ld c, a
	or l
	jp c, Jump_015_7fc9

	ld d, h
	call nz, wc07f
	ret nz

	or [hl]

jr_015_6c62:
	or e
	and $57
	nop
	cp e
	cp l
	ld h, $c6
	ld c, a
	adc c
	add c
	add [hl]
	xor e
	rlca
	ld a, a
	inc l
	ldh [$7f], a
	rrca
	and b
	or [hl]
	ld e, b
	nop
	push bc
	ld l, $b6
	ld a, a
	adc c
	add c
	add [hl]
	xor e
	rlca
	ld c, a
	ld a, [hld]
	rst $18
	or [hl]
	ret c

	ld a, a
	jp nz, wd9da

	sbc $30
	sub $e7

jr_015_6c8f:
	ld d, a
	ld [$a721], sp
	ld l, e
	call $3214
	jp $0f6a


	nop
	or e
	ret nc

	jp z, $ace3

	ld c, a
	or l
	call nz, wc9ba
	ld a, a
	xor b
	sbc l
	xor e
	jr nc, @-$1b

	xor h
	rst $20
	ld d, a
	nop
	jr nc, jr_015_6c62

	db $e3
	rst $20
	ld e, b
	nop
	or e
	ret nc

	db $d3
	ld a, a
	or d
	or d
	cp c
	inc [hl]
	ld c, a
	inc l
	jp nz, $7fca

	call nc, wd3cf
	ld a, a
	cp l
	or a
	jr nc, jr_015_6c8f

	rst $20

jr_015_6ccb:
	ld d, a
	ld [$b321], sp
	ld l, e
	call $3214
	jp $0f6a


	nop
	or l
	jp c, wdf30

	jp wc07f


	rst $08
	add $ca
	ld c, a
	or l
	sub $27
	add $7f
	cp b
	reti


	ld l, $e7
	ld d, a
	nop
	jr z, jr_015_6ccb

	call c, Call_015_58e7
	nop
	or e
	or a
	call nc, $bfbd
	or e
	ld a, a
	jr nc, @-$3a

	and $4f
	or e
	reti


	cp [hl]
	db $e3
	ld a, a
	or l
	or l
	or a
	push bc
	ld a, a
	or l
	cp [hl]
	call c, $ac30
	rst $20
	ld d, a
	ld [$bf21], sp
	ld l, e
	call $3214
	jp $0f6a


	nop
	add d
	sub b
	ret


	ld a, a
	ld d, h
	jp z, $b34f

	ret nc

	inc sp
	ld a, a
	call nz, $c3df
	ld a, a
	or a
	rst $08
	cp h
	ret nz

	ld d, a
	nop
	or e
	db $e3
	ld a, a
	ret nc

	db $e3
	xor h
	rst $20
	ld e, b
	nop
	or a
	ret nc

	ret


	ld a, a
	ld d, h
	jp z, $344f

	cp d
	inc sp
	ld a, a
	call nz, $c3df
	ld a, a
	or a
	ret nz

	ret


	or [hl]
	push bc
	and $57
	ld [wcb21], sp
	ld l, e
	call $3214
	jp $0f6a


	nop
	inc l
	jp nz, $7fca

	or d
	rst $08
	ld a, a
	sub e
	and l
	add c
	add b
	adc h
	xor b
	xor e
	ret


	ld c, a
	rst $08
	rst $18
	cp e
	or d
	pop bc
	pop hl
	or e
	ld a, a
	push bc
	ret


	jr nc, @-$17

	ld d, a
	nop
	jp z, $7f56

	jp z, $ace3

	rst $20
	ld e, b
	nop
	ld a, [hld]
	ld a, a
	ld a, [hld]
	jp Jump_015_56c0


	rst $20
	ld c, a
	or c
	call nz, $7f56
	inc l
	jp $bcde


	ldh [$c4], a
	ld d, l
	sbc l
	and l
	adc [hl]
	xor e
	ld h, $7f
	or c
	reti


	ret


	add $56
	rst $20
	ld d, a
	ld [wd721], sp
	ld l, e
	call $3214
	jp $0f6a


	nop
	or c
	db $e3
	xor h
	rst $20
	ld c, a
	sra e
	cp h
	ld h, $7f
	or a
	db $d3
	pop bc
	or d
	db $e3
	ld l, $e7
	ld d, a

jr_015_6dbd:
	nop
	or l
	jp c, Jump_015_7fc9

	rst $08
	cp c
	rst $20
	ld e, b
	nop
	call nc, wc0b9
	ld a, a
	call nc, wc0b9
	rst $20
	ld a, a
	rst $08
	rst $18
	cp b
	db $db
	jr nc, jr_015_6dbd

	ld d, a
	ld [$e321], sp
	ld l, e
	call $3214
	jp $0f6a


	nop
	cp d
	rst $08
	reti


	push bc
	db $e3
	ld a, a
	or a
	ret nc

	rst $20
	ld c, a
	or e
	ret nc

	db $dd
	ld a, a
	or c
	rst $10
	cp e
	push bc
	or d
	inc sp
	ld a, a
	cp b
	jp c, wcfc0

	or h
	ld d, a
	nop
	call c, $b2d9
	rst $20
	ld c, a
	jp nz, wc5da

	or d
	ret


	inc sp
	ld a, a
	or a
	ld h, $7f
	ret nz

	rst $18
	jp Jump_015_58c0


	nop
	jp nz, wdeda

	push bc
	or c
	rst $20
	ld c, a
	rst $08
	cp e
	or [hl]
	ld a, a
	cp d
	cp d
	jp z, $b57f

	rst $18
	or a
	push bc
	ld d, l
	ld b, d
	db $e3
	and [hl]
	ld a, a
	jr nc, @-$1f

	ret nz

	ret c

	ld a, a
	cp h
	jp $0857


	ld hl, $6bef
	call $3214
	jp $0f6a


	nop
	add b
	adc a
	ret c

	ld h, $7f
	cp b
	reti


	rst $08
	inc sp
	ld c, a
	or l
	rst $08
	or h
	ret


	ld a, a
	or c
	or d
	jp wd333


	ld a, a
	cp h
	jp $b3d6


	ld d, a
	nop
	set 1, a
	jp nz, $bc3c

	add $7f
	push bc
	rst $18
	ret nz

	ld e, b
	nop
	ld d, [hl]
	ld a, a
	rst $08
	jp $7fe7


	or d
	rst $08
	ld a, a
	or c
	ret nz

	ret c

	ld h, $ac
	rst $20
	ld c, a
	or c
	ld d, [hl]
	rst $20
	ld a, a
	res 6, d
	jp $7fd9


	res 6, d
	jp $e7d9


	ld d, a
	ld [$0404], sp
	nop
	ld b, b
	sub e
	ld l, [hl]
	sub b
	ld l, [hl]
	nop
	rst $00
	ld l, a
	jp $3c6c


	sub l
	ld l, [hl]
	ld [$a7fa], sp
	sub $cb
	ld e, a
	jr nz, jr_015_6ec8

	ld hl, $6ed1
	call $3c79
	call $3636
	ld a, [wcc26]
	and a
	jr nz, jr_015_6ec3

	ld bc, $4c01
	call $3e5e
	jr nc, jr_015_6ebe

	ld hl, wd6a7
	set 3, [hl]
	ld hl, $6f02
	jr jr_015_6ecb

jr_015_6ebe:
	ld hl, $6fa3
	jr jr_015_6ecb

jr_015_6ec3:
	ld hl, $6f80
	jr jr_015_6ecb

jr_015_6ec8:
	ld hl, $6f8d

jr_015_6ecb:
	call $3c79
	jp $0f6a


	nop
	call c, wcabc
	ld a, a
	jp nz, $b5d8

	call nc, $7f2c
	inc l
	ldh [$e7], a
	ld d, c
	db $d3
	or e
	ld a, a
	cp h
	rst $00
	adc $34
	ld c, a
	jp nz, $26d8

	ld a, a
	cp l
	or a
	ld a, a
	push bc
	sbc $30
	ld h, $51
	or a
	ret nc

	jp z, wc27f

	ret c

	ld a, a
	cp l
	or a

jr_015_6efd:
	ld a, a
	or [hl]
	push bc
	and $57
	nop
	cp a
	or e
	or [hl]
	rst $20
	ld c, a
	or a
	ret nc

	call nz, $7fca
	or a
	ld h, $7f
	or c
	or d
	cp a
	or e
	jr nc, jr_015_6efd

	ld d, c
	cp d
	jp c, $b17f

	add hl, hl
	reti


	or [hl]
	rst $10
	ld c, a
	or a
	ret nc

	db $d3
	ld a, a
	jp nz, Jump_015_7fd8

	rst $08
	cp b
	ret c

	push bc
	cp e
	or d
	sub $e7
	ld d, c
	ld d, d
	jp z, wc27f

	ret c

	or l
	call nc, $b62c
	rst $10
	ld c, a
	ld d, b
	ld bc, wcf45
	nop
	db $dd
	ld a, a
	db $d3

jr_015_6f43:
	rst $10
	rst $18
	ret nz

	rst $20
	ld d, b
	dec bc
	nop
	ld d, c
	jp nz, Jump_015_7fd8

	cp d
	cp a
	ld c, a
	or l
	call nz, wc9ba
	ld a, a
	xor b
	sbc l
	xor e
	ld a, a
	jr nc, jr_015_6f43

	ld d, c
	or e
	ret nc

	inc sp
	db $d3
	ld a, a
	or [hl]
	call c, wd333
	rst $20
	ld d, c
	or h
	sbc $d8
	ld [c], a
	ld a, a
	push bc
	cp b
	ld c, a
	jp nz, $2bd8

	or l
	db $dd
	ld a, a
	jp nz, wdfb6

	jp $b87f


	jp c, $e7b2

	ld d, a
	nop
	push bc
	sbc $2c
	ldh [rRP], a
	ld a, a
	ld h, $df
	or [hl]
	ret c

	jr nc, jr_015_6fe4

	nop
	call nc, Call_015_7fe3
	ld d, d
	cp b
	sbc $e7
	ld d, c
	jp nz, Jump_015_7fd8

	rst $08
	cp b
	rst $18
	call nz, $7fd9
	or [hl]
	ret z

	rst $20
	ld d, a
	nop
	or c
	ret c

	ldh [$e3], a
	rst $20
	ld d, c
	or d
	or d
	db $d3
	ret


	ld a, a
	or c
	add hl, hl
	sub $b3
	call nz, $bc7f
	ret nz

	ret


	add $4f
	add $d3
	jp nz, Jump_015_7f26

	or d
	rst $18
	ld b, h
	or d
	inc l
	ldh [$e7], a
	ld d, a
	ld a, [bc]
	ld [bc], a
	rlca
	ld [bc], a
	ld [$07ff], sp
	inc bc
	ld [$00ff], sp
	ld bc, $0827
	ld b, $ff
	db $d3
	ld bc, wc712
	rlca
	ld [bc], a
	ld [de], a
	rst $00
	rlca
	inc bc
	ld [de], a
	inc b
	ld a, [bc]

jr_015_6fe4:
	and h
	ld [hl], b
	ldh a, [$6f]
	db $ed
	ld l, a
	nop
	ld l, l
	ld [hl], b
	jp $3c6c


	ld a, [bc]
	rrca
	ld d, $0f
	ld a, [$326f]
	ld [hl], b
	ld d, e
	ld [hl], b
	nop
	adc e
	and [hl]
	add hl, de
	db $e3
	adc h
	ld b, d
	and a
	db $e3
	jp z, wd67f

	call c, $4fb2
	ld d, h
	ld h, $7f
	call nz, $333b
	jp $ba7f


	push bc
	cp b
	push bc
	reti


	ld d, c
	adc $b3
	rst $20
	ld a, a
	pop de
	cp h
	sub $b9
	adc h
	ld b, d
	and a
	db $e3
	ret


	ld c, a
	or a
	ld [c], a
	or e
	ret c

	ld [c], a
	cp b
	push bc
	ld a, a
	call nc, $30c2
	push bc
	ld d, a
	nop
	call nz, $33b5
	ld a, a
	cp l
	reti


	push bc
	rst $10
	ld c, a
	add hl, hl
	sbc $b7
	ret


	or [hl]
	cp c
	rst $10
	jp z, $b655

	rst $18
	call nz, wc0b2
	ld a, a
	adc $b3
	ld h, $7f
	or d
	or d
	call c, $0057
	ld e, l
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
	ld hl, sp-$4a
	or d
	ld d, [hl]
	ld e, l
	inc c
	ld [hl], h
	sbc l
	db $e3
	adc b
	xor h
	sub e
	ld d, a
	rrca
	inc bc
	ld bc, $040c
	ld a, d
	ld bc, $0110
	ld a, h
	ld bc, $0001
	ld a, a
	ld bc, $0e01
	dec b
	inc b
	ld h, $07
	add hl, bc
	rst $38
	ret nc

	ld bc, $0726
	ld a, [bc]
	rst $38
	ret nc

	ld [bc], a
	ld a, [bc]
	add hl, bc
	rla
	rst $38
	rst $38
	inc bc
	dec c
	ld [$fe12], sp
	ld bc, $ff04
	add $01
	inc c
	ld bc, $01c7
	db $10
	ld sp, hl
	add $01
	ld bc, $0d0c
	jr @+$1b

	ld bc, $0301
	dec h
	ld [bc], a
	ld bc, $0b0b
	inc d
	rla
	dec bc
	ld a, [de]
	ld a, [de]
	dec bc
	ld a, [de]
	ld a, [de]
	dec bc
	dec bc
	dec d
	ld d, $0b
	ld e, $1e
	dec bc
	ld e, $1e
	dec bc
	dec bc
	dec bc
	dec bc
	dec bc
	ld a, [bc]
	ld a, [bc]
	dec bc
	ld a, [bc]
	ld a, [bc]
	dec c
	inc b
	inc b
	db $10
	ld b, b
	db $db
	ld [hl], b
	ret c

	ld [hl], b
	nop
	daa
	ld [hl], d
	jp $3c6c


	db $dd
	ld [hl], b
	ld [$a7fa], sp
	sub $cb
	ld h, a
	jr nz, jr_015_7110

	ld hl, $7119
	call $3c79
	call $3636
	ld a, [wcc26]
	and a
	jr nz, jr_015_710b

	ld bc, $4d01
	call $3e5e
	jr nc, jr_015_7106

	ld hl, wd6a7
	set 4, [hl]
	ld hl, $714e
	jr jr_015_7113

jr_015_7106:
	ld hl, $7203
	jr jr_015_7113

jr_015_710b:
	ld hl, $71e0
	jr jr_015_7113

jr_015_7110:
	ld hl, $71ed

jr_015_7113:
	call $3c79
	jp $0f6a


	nop
	call c, wcabc
	ld a, a
	jp nz, $b5d8

	call nc, wc92c
	ld a, a
	or c
	add $7f
	inc l
	ldh [$e7], a
	ld d, c
	db $d3
	or e
	ld a, a
	cp h
	rst $00
	adc $34
	ld c, a
	jp nz, $26d8

	ld a, a
	cp l
	or a
	ld a, a
	push bc
	sbc $30
	ld h, $51
	or a
	ret nc

	jp z, wc27f

	ret c

	ld a, a
	cp l
	or a

jr_015_7149:
	ld a, a
	or [hl]
	push bc
	and $57
	nop
	cp a
	or e
	or [hl]
	rst $20
	ld c, a
	or a
	ret nc

	call nz, $7fca
	or a
	ld h, $7f
	or c
	or d
	cp a
	or e
	jr nc, jr_015_7149

	ld d, c
	cp d
	jp c, $b17f

	add hl, hl
	reti


	or [hl]
	rst $10
	ld c, a
	or a
	ret nc

	db $d3
	ld a, a
	jp nz, Jump_015_7fd8

	rst $08
	cp b
	ret c

	push bc
	cp e
	or d
	sub $e7
	ld d, c
	ld d, d
	jp z, wc27f

	ret c

	or l
	call nc, $b62c
	rst $10
	ld c, a
	ld d, b
	ld bc, wcf45
	nop
	db $dd
	ld a, a
	db $d3

jr_015_718f:
	rst $10
	rst $18
	ret nz

	rst $20
	ld d, b
	dec bc
	ld d, b
	ld d, c
	jp nz, Jump_015_7fd8

	cp d
	cp a
	ld c, a
	or l
	call nz, wc9ba
	ld a, a
	xor b
	sbc l
	xor e
	ld a, a
	jr nc, jr_015_718f

	ld d, c
	call $b23e
	jp nz, $2bd8

	or l
	jp z, $894f

	add c
	add [hl]
	xor e
	rlca
	cp h
	or [hl]
	ld a, a
	jp nz, Jump_015_7fda

	push bc
	sbc $30
	ld h, $4f
	cp d
	ret


	ld a, a
	or d
	or d
	jp nz, $2bd8

	or l
	push bc
	rst $10
	ld c, a
	db $d3
	rst $18
	call nz, $b27f
	or d
	db $d3
	sbc $26
	ld a, a
	jp nz, wd9da

	sbc $2c
	ldh [$e7], a
	ld d, a
	nop
	push bc
	sbc $2c
	ldh [rRP], a
	ld a, a
	ld h, $df
	or [hl]
	ret c

	jr nc, jr_015_7244

	nop
	call nc, Call_015_7fe3
	ld d, d
	cp b
	sbc $e7
	ld d, c
	jp nz, Jump_015_7fd8

	rst $08
	cp b
	rst $18
	call nz, $7fd9
	or [hl]
	ret z

	rst $20
	ld d, a
	nop
	or c
	ret c

	ldh [$e3], a
	rst $20
	ld d, c
	or d
	or d
	db $d3
	ret


	ld a, a
	or c
	add hl, hl
	sub $b3
	call nz, $bc7f
	ret nz

	ret


	add $4f
	add $d3
	jp nz, Jump_015_7f26

	or d
	rst $18
	ld b, h
	or d
	inc l
	ldh [$e7], a
	ld d, a
	inc c
	inc bc
	nop
	ld [bc], a
	ld [$07ff], sp
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
	db $d3
	ld bc, wc6f4
	nop
	ld [bc], a
	ld [de], a
	rst $00
	rlca

jr_015_7244:
	ld [bc], a
	ld [de], a
	rst $00
	rlca
	inc bc
	ld [$0404], sp
	nop
	ld b, b
	ld e, b
	ld [hl], d
	ld d, l
	ld [hl], d
	nop
	and l
	ld [hl], l
	jp $3c6c


	ld e, d
	ld [hl], d
	ld [$3ecd], sp
	scf
	ld a, [wd984]
	and a
	jr nz, jr_015_72e3

	ld hl, $7411
	call $3c79
	call $3636
	ld a, [wcc26]
	and a
	ld hl, $752a
	jp nz, Jump_015_740b

	ld a, [wd123]
	dec a
	ld hl, $754e
	jp z, Jump_015_740b

	ld hl, $742d
	call $3c79
	xor a
	ld [wcfb2], a
	ld [wd05a], a
	call $2df3
	push af
	call $3e04
	call $3dee
	call $0b3c
	pop af
	ld hl, $751f
	jp c, Jump_015_740b

	ld hl, $4322
	ld b, $08
	call $3620
	ld hl, $7564
	jp c, Jump_015_740b

	xor a
	ld [wcc2b], a
	ld a, [wcf79]
	ld hl, wd257
	call $2fb1
	ld hl, $7442
	call $3c79
	ld a, $01
	ld [wd984], a
	ld a, $03
	ld [wcf7c], a
	call $3ab2
	xor a
	ld [wcf7c], a
	call $3969
	ld a, [wcf78]
	call $2dc7
	ld hl, $7459
	jp Jump_015_740b


jr_015_72e3:
	xor a
	ld hl, wd985
	call $2fb1
	ld a, $03
	ld [wcc49], a
	call $2d68
	ld hl, $4f8e
	ld b, $16
	call $3620
	ld a, d
	cp $64
	jr c, jr_015_7317

	ld d, $64
	ld hl, $4fb5
	ld b, $16
	call $3620
	ld hl, wd99f
	ldh a, [$96]
	ld [hli], a
	ldh a, [$97]
	ld [hli], a
	ldh a, [$98]
	ld [hl], a
	ld d, $64

jr_015_7317:
	xor a
	ld [wcd3e], a
	ld hl, wd994
	ld a, [hl]
	ld [wcd3d], a
	cp d
	ld [hl], d
	ld hl, $74f8
	jr z, jr_015_7335

	ld a, [wcd3d]
	ld b, a
	ld a, d
	sub b
	ld [wcd3e], a
	ld hl, $7472

jr_015_7335:
	call $3c79
	ld a, [wd123]
	cp $06
	ld hl, $7534
	jp z, Jump_015_7405

	ld de, wcd3f
	xor a
	ld [de], a
	inc de
	ld [de], a
	ld hl, wcd41
	ld a, $01
	ld [hli], a
	ld [hl], $00
	ld a, [wcd3e]
	inc a
	ld b, a
	ld c, $02

jr_015_7359:
	push hl
	push de
	push bc
	ld a, $0b
	call $3e9d
	pop bc
	pop de
	pop hl
	dec b
	jr nz, jr_015_7359

	ld hl, $74bd
	call $3c79
	ld a, $13
	ld [wd0ea], a
	call $3130
	call $3636
	ld hl, $751f
	ld a, [wcc26]
	and a
	jp nz, Jump_015_7405

	ld hl, wcd3f
	ldh [$9f], a
	ld a, [hli]
	ldh [$a0], a
	ld a, [hl]
	ldh [$a1], a
	call $35f0
	jr nc, jr_015_7398

	ld hl, $759b
	jp Jump_015_7405


jr_015_7398:
	xor a
	ld [wd984], a
	ld hl, wcd3e
	ld [hli], a
	inc hl
	ld de, wd2cd
	ld c, $03
	ld a, $0c
	call $3e9d
	ld a, $b2
	call $3788
	ld a, $13
	ld [wd0ea], a
	call $3130
	ld hl, $7583
	call $3c79
	ld a, $02
	ld [wcf7c], a
	call $3ab2
	ld a, [wd991]
	ld [wcf78], a
	ld a, [wd123]
	dec a
	push af
	ld bc, $002c
	push bc
	ld hl, wd133
	call $3ad1
	ld d, h
	ld e, l

jr_015_73dd:
	ld a, $01
	ld [wcee4], a
	ld a, $3e
	call $3e9d
	pop bc

jr_015_73e8:
	pop af
	ld hl, wd12c
	call $3ad1
	ld d, h
	ld e, l
	ld bc, $0021
	add hl, bc
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hl]
	ld [de], a
	ld a, [wcf78]

jr_015_73fd:
	call $2dc7
	ld hl, $74dd
	jr jr_015_740b

Jump_015_7405:
	ld a, [wcd3d]
	ld [wd994], a

Jump_015_740b:
jr_015_740b:
	call $3c79
	jp $0f6a


	nop
	call c, $bcc0
	jp z, $bf7f

	jr nc, jr_015_73dd

	call nc, wdebb
	ld c, a
	push bc
	add $b6
	ld a, a
	cp a
	jr nc, jr_015_73e8

	jp wSpriteCurPosY


	reti


	or [hl]
	ret z

	and $57
	nop
	cp a
	jp c, wca33

	ld c, a
	push bc
	add $dd
	ld a, a
	cp a
	jr nc, jr_015_73fd

	jp wSpriteCurPosY


	reti


	or [hl]
	ret z

	and $58
	nop
	call c, wdfb6
	ret nz

	ld c, a
	cp h
	ld a, [hld]
	rst $10
	cp b
	ld d, b
	ld bc, wcd68
	nop
	db $dd
	ld a, a
	or c
	dec l
	or [hl]

jr_015_7456:
	db $db
	or e
	ld e, b
	nop
	jp wc4b7


	or e
	add $7f
	inc l
	or [hl]
	sbc $26
	ld a, a
	ret nz

	rst $18
	ret nz

	rst $10
	ld c, a
	rst $08
	ret nz

	ld a, a
	or a
	push bc
	cp e
	or d
	ld d, a
	nop
	or l
	rst $08
	or h
	ret


	ld a, a
	ld d, b
	ld bc, wcd68
	nop
	ld c, a
	dec l
	or d
	inc a
	sbc $c4
	ld a, a
	cp [hl]
	or d
	pop bc

jr_015_7487:
	ld [c], a
	or e
	cp h
	ret nz

	cpl
	ld d, c
	cp a
	or e
	jr nc, jr_015_7456

	ld a, a
	and a
	dec a
	and [hl]
	inc sp
	ld a, a
	or d
	or e
	call nz, Call_015_504f
	add hl, bc
	ld a, $cd
	inc de
	nop
	cp b
	rst $10

jr_015_74a3:
	or d
	ld a, a
	cp a
	jr nc, jr_015_7487

	jp wc5d9


	ld d, c
	call nc, Call_015_44df
	ret c

	ld a, a
	call c, $bcc0
	jp z, $c37f

	sbc $bb
	or d
	jr nc, jr_015_74a3

	ld e, b
	nop
	ld d, [hl]
	inc sp
	ld a, a
	ld d, h
	db $dd
	ld a, a
	res 6, a
	call nz, wc5d9
	rst $10
	ld c, a
	ret c

	ld [c], a
	or e
	or a
	sbc $ca
	ld a, a
	ld d, b
	ld [bc], a
	ccf
	call $00c2
	ldh a, [$7f]
	jr nc, @-$28

	ld d, a
	nop
	ld d, d
	jp z, $bf7f

	jr nc, @-$3b

	call nc, wdebb
	or [hl]
	rst $10
	ld c, a
	ld d, b
	ld bc, wd985
	nop
	db $dd

jr_015_74f0:
	ld a, a
	res 6, a
	call nz, wc0df
	rst $20
	ld d, a
	nop
	push bc
	sbc $30
	ld a, a
	db $d3
	or e
	ld a, a
	or a
	ret nz

	ret


	or [hl]
	ld c, a
	or l
	rst $08
	or h
	ret


	ld a, a
	ld d, b
	ld bc, wcd68
	nop
	jp z, $5156

jr_015_7512:
	rst $08
	jr nc, @+$81

	inc l
	or [hl]
	sbc $26
	ld a, a
	or [hl]
	or [hl]
	reti


	cpl
	ld e, b
	nop
	cp a
	or e
	or [hl]
	ld a, a
	cp a
	jp c, $e02c

jr_015_7528:
	ld c, a
	ld d, b
	nop
	rst $08
	ret nz

	ld a, a
	or a
	push bc
	cp e
	or d
	sub $57
	nop
	jr nc, jr_015_74f0

	inc [hl]
	ld a, a
	jp nz, wc3da

	or d
	cp b
	add $ca
	ld c, a
	ld d, h
	ld h, $7f
	or d
	rst $18
	ld b, h
	or d
	ret


	sub $b3
	jr nc, jr_015_7512

	ld d, a
	nop
	or l
	call nc, $7fe6
	ld d, h
	ld h, $4f
	rst $30
	ld b, l
	or a
	cp h
	or [hl]
	ld a, a
	or d
	push bc
	or d
	sub $b3
	jr nc, jr_015_7528

	ld d, a
	nop
	call c, $b2d9
	cp c
	inc [hl]
	ld a, a
	swap e
	sbc $c9
	call c, wdd2b
	ld a, a
	db $d3
	rst $18
	ret nz

	ld c, a
	ld d, h
	jp z, $b17f

	dec l
	or [hl]
	jp c, $b2c5

	push bc
	db $76
	ld d, a
	nop
	adc $b2
	ld a, a
	ret nz

	cp h
	or [hl]
	add $e7
	ld c, a
	inc l
	ldh [$7f], a
	ld d, h
	ld a, a
	jp nz, wc3da

	ld a, a
	or d
	or a
	push bc
	sub $58
	nop
	or [hl]
	ret z

	ld h, $7f
	ret nz

	rst $10
	sbc $c5
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
	ld bc, $0710
	ld b, $ff
	db $d3
	ld bc, wc712
	rlca
	ld [bc], a
	ld [de], a
	rst $00
	rlca
	inc bc
	ld [$0404], sp
	nop
	ld b, b
	adc $75
	bit 6, l
	nop
	ld [hld], a
	ld [hl], a
	jp $3c6c


	ret nc

	ld [hl], l
	ld [$a7fa], sp
	sub $cb
	ld l, a
	jr nz, jr_015_7603

	ld hl, $760c
	call $3c79
	call $3636
	ld a, [wcc26]
	and a
	jr nz, jr_015_75fe

	ld bc, $4e01
	call $3e5e
	jr nc, jr_015_75f9

	ld hl, wd6a7
	set 5, [hl]
	ld hl, $7646
	jr jr_015_7606

jr_015_75f9:
	ld hl, $770e
	jr jr_015_7606

jr_015_75fe:
	ld hl, $76c4
	jr jr_015_7606

jr_015_7603:
	ld hl, $76d1

jr_015_7606:
	call $3c79
	jp $0f6a


	nop
	call c, wcabc
	ld c, a
	jp nz, $b5d8

	call nc, wc92c
	ld a, a
	or l
	call nz, wc4b3
	ld a, a
	inc l
	ldh [$e7], a
	ld d, c
	db $d3
	or e
	ld a, a
	ret nz

	rst $08
	rst $10
	sbc $7f
	adc $34
	ld c, a
	jp nz, $26d8

	ld a, a
	cp l
	or a
	ld a, a
	push bc
	sbc $30
	ld h, $51
	or a
	ret nc

	jp z, wc27f

	ret c

	ld a, a
	cp l
	or a

jr_015_7641:
	ld a, a
	or [hl]
	push bc
	and $57
	nop
	cp a
	or e
	or [hl]
	rst $20
	ld c, a
	or a
	ret nc

	call nz, $7fca
	or a
	ld h, $7f
	or c
	or d
	cp a
	or e
	jr nc, jr_015_7641

	ld d, c
	cp d
	jp c, $b17f

	add hl, hl
	reti


	or [hl]
	rst $10
	ld c, a
	or a
	ret nc

	db $d3
	ld a, a
	jp nz, Jump_015_7fd8

	rst $08
	cp b
	ret c

	push bc
	cp e
	or d
	sub $e7
	ld d, c
	ld d, d
	jp z, wc27f

	ret c

	or l
	call nc, $b62c
	rst $10
	ld c, a
	ld d, b
	ld bc, wcf45
	nop
	db $dd
	ld a, a
	db $d3

jr_015_7687:
	rst $10
	rst $18
	ret nz

	rst $20
	ld d, b
	dec bc
	nop
	ld d, c
	jp nz, Jump_015_7fd8

	cp d
	cp a
	ld c, a
	or l
	call nz, wc9ba
	ld a, a
	xor b
	sbc l
	xor e
	ld a, a
	jr nc, jr_015_7687

	ld d, c
	or e
	ret nc

	inc sp
	db $d3
	ld a, a
	or [hl]
	call c, wd333
	rst $20
	ld d, c
	or h
	sbc $d8
	ld [c], a
	ld a, a
	push bc
	cp b
	ld c, a
	jp nz, $2bd8

	or l
	db $dd
	ld a, a
	jp nz, wdfb6

	jp $b87f


	jp c, $e7b2

	ld d, a
	nop
	push bc
	sbc $2c
	ldh [rRP], a
	ld a, a
	ld h, $df
	or [hl]
	ret c

	jr nc, @+$59

	nop
	call nc, Call_015_7fe3
	ld d, d
	cp b
	sbc $e7
	ld d, c
	cp l
	ld a, [hli]
	or d
	jp nz, $2bd8

	or l
	jp z, $3a4f

	cp h
	ld [c], a
	db $dd
	ld a, a
	or [hl]
	or h
	reti


	call nz, wc255
	jp c, $7fd9

	ld d, h
	db $d3
	ld a, a
	or [hl]
	call c, $e7d9
	ld d, c
	or c
	rst $18
	pop bc
	cp d
	rst $18
	pop bc
	inc sp
	ld c, a
	jp nz, Jump_015_7fd8

	rst $08
	cp b
	rst $18
	jp $b87f


	jp c, $e7b2

	ld d, a
	nop
	or c
	ret c

	ldh [$e3], a
	rst $20
	ld d, c
	or d
	or d
	db $d3
	ret


	ld a, a
	or c
	add hl, hl
	sub $b3
	call nz, $bc7f
	ret nz

	ret


	add $4f
	add $d3
	jp nz, Jump_015_7f26

	or d
	rst $18
	ld b, h
	or d
	inc l
	ldh [$e7], a
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
	ld bc, $0827
	ld b, $ff
	db $d3
	ld bc, wc712
	rlca
	ld [bc], a
	ld [de], a
	rst $00
	rlca
	inc bc
	ld d, $09
	dec c
	ld h, c
	ld a, c
	pop de
	ld [hl], a
	ld e, b
	ld [hl], a
	nop
	rlca
	ld a, c
	call Call_015_776e
	call $3c6c
	ld hl, $77d9
	ld de, $77cb
	ld a, [wd5c8]
	call $31a8
	ld [wd5c8], a
	ret


Call_015_776e:
	ld hl, wd0eb
	bit 5, [hl]
	res 5, [hl]
	ret z

	ld hl, $7792
	call Call_015_7795
	call Call_015_77c1
	ld a, [wd7b1]
	bit 0, a
	ret nz

	ld a, $5f
	ld [wd07c], a
	ld bc, $0403
	ld a, $17
	jp $3e9d


	inc b
	inc bc
	rst $38

Call_015_7795:
	push hl
	ld hl, wd6be
	ld a, [hli]
	ld b, a
	ld a, [hl]
	ld c, a
	xor a
	ldh [$e0], a
	pop hl

jr_015_77a1:
	ld a, [hli]
	cp $ff
	jr z, jr_015_77bd

	push hl
	ld hl, $ffe0
	inc [hl]
	pop hl
	cp b
	jr z, jr_015_77b2

	inc hl
	jr jr_015_77a1

jr_015_77b2:
	ld a, [hli]
	cp c
	jr nz, jr_015_77a1

	ld hl, wd6be
	xor a
	ld [hli], a
	ld [hl], a
	ret


jr_015_77bd:
	xor a
	ldh [$e0], a
	ret


Call_015_77c1:
	ldh a, [$e0]
	and a
	ret z

	ld hl, wd7b1
	set 0, [hl]
	ret


	ld h, c
	ld [hld], a
	sub h
	ld [hld], a
	cp l
	ld [hld], a
	cp $77
	dec [hl]
	ld a, b
	ld [hl], a
	ld a, b
	ret nz

	ld a, b
	ld [bc], a
	ld b, b
	or b
	rst $10
	ccf
	ld a, b
	ld e, l
	ld a, b
	ld d, d
	ld a, b
	ld d, d
	ld a, b
	inc bc
	ld b, b
	or b
	rst $10
	add c
	ld a, b
	and c
	ld a, b
	sub a
	ld a, b
	sub a
	ld a, b
	inc b
	ld b, b
	or b
	rst $10
	jp z, $ee78

	ld a, b
	db $e3
	ld a, b
	db $e3
	ld a, b
	rst $38
	ld [$b7fa], sp
	rst $10
	bit 7, a
	ld hl, $7827
	jr nz, jr_015_780c

	ld hl, $7812

jr_015_780c:
	call $3c79
	jp $0f6a


	nop
	adc e
	and [hl]
	sbc e
	jp z, wc97f

	rst $18
	call nz, wdad7
	jp $564f


	ld a, a
	or l
	call c, $b6d8
	push bc
	ld d, a
	nop
	or c
	ret c

	ld h, $c4
	or e
	ld a, a
	ret nz

	cp l
	or [hl]
	rst $18
	ret nz

	rst $20
	ld d, a
	ld [wd921], sp
	ld [hl], a
	call $3214
	jp $0f6a


	nop
	cp d
	cp d
	or [hl]
	rst $10
	ld a, a
	cp e
	or a
	jp z, $b27f

	or [hl]
	cp [hl]
	ld a, a
	push bc
	or d
	ld l, $e7
	ld d, a
	nop
	or a
	or c
	or d
	ld h, $7f
	ret nz

	ret c

	sbc $b6
	ld e, b
	nop
	jp z, $b8d4

	ld a, a
	res 6, a
	or [hl]
	or h
	cp e
	push bc
	or d
	call nz, $564f
	ld a, a
	push bc

jr_015_786e:
	or [hl]
	rst $08
	db $dd
	ld a, a
	sub $3c
	ld l, $e7
	ld d, a
	ld [$e521], sp
	ld [hl], a
	call $3214
	jp $0f6a


	nop
	cp l
	or a
	ld a, a
	or [hl]
	rst $18
	jp wd47f


	rst $10
	jp c, $e0c1

jr_015_788e:
	ld c, a
	cp d
	rst $08
	reti


	sbc $30
	ld l, $e7
	ld d, a
	nop
	ld d, [hl]
	and $7f
	rst $08
	cp c
	ret nz

	ret


	or [hl]
	ld e, b
	nop
	inc [hl]
	or e
	jr nc, jr_015_786e

	and $4f
	jp nc, wdbb2

	ret


	ld a, a
	sub $b3
	push bc
	ld d, l
	adc e
	and [hl]
	sbc e
	ld a, a
	ld a, [de]
	and [hl]
	ret


	ld a, a
	or [hl]
	sbc $bf
	or e
	jp z, Jump_015_57e6

	ld [$f121], sp
	ld [hl], a
	call $3214
	jp $0f6a


	nop
	or l
	jp c, $bfba

	jp z, $a84f

	adc b
	xor h
	sub e
	ld a, a
	ld a, [$e2b7]
	or e
	jr nc, jr_015_788e

	ret


	ld a, a
	set 0, h
	ret c

	rst $20
	ld d, a
	nop
	add $b2
	cp e
	sbc $7f
	rst $08
	cp c
	ret nz

	sub $58
	nop
	rst $08
	or c
	ld a, a
	or d
	or d
	ld c, a
	or c
	add $b7
	ld h, $7f
	or [hl]
	ret nz

	or a
	db $dd
	ld a, a
	call nz, $c3df
	ld a, a
	cp b
	jp c, $57d9

	ld l, $07
	nop
	db $10
	ld bc, $00e9
	ld c, $00
	call nc, $1200
	nop
	db $ec
	dec bc
	inc bc
	ld b, $d5
	rrca
	inc bc
	inc b
	rst $08
	dec b
	dec bc
	dec b
	rst $08
	add hl, bc
	dec bc
	inc bc
	push de
	nop
	inc b
	inc l
	ld b, $08
	rst $38
	rst $38
	ld bc, $0618
	rla
	rst $38
	jp nc, $e642

	inc hl
	jr nz, jr_015_793d

	ld c, $ff
	ret nc

	ld b, e
	db $e4
	add hl, bc

jr_015_793d:
	jr jr_015_7952

	db $10
	rst $38
	db $d3
	ld b, h
	and $24
	inc b
	rst $00
	nop
	db $10
	inc bc
	rst $00
	nop
	ld c, $05
	rst $00
	nop
	ld [de], a
	ld e, h

jr_015_7952:
	rst $00
	dec bc
	inc bc
	add d
	rst $00
	rrca
	inc bc
	daa
	rst $00
	dec b
	dec bc
	ld c, l
	rst $00
	add hl, bc
	dec bc
	ld b, b
	ld b, c
	ld b, c
	ld b, d
	ld h, c
	ld h, c
	ld h, d
	inc h
	ld a, l
	ld a, h
	dec a
	dec a
	ld a, $44
	inc [hl]
	inc [hl]
	ld b, [hl]
	ld c, $0e
	ld h, [hl]
	ld c, $0e
	ld c, $0e
	ld c, $46
	ld b, h
	ld [hl], $36
	ld b, [hl]
	ld c, $2f
	ld b, [hl]
	ld c, $40
	ld b, c
	ld b, c
	ld b, c
	ld b, d
	ld b, h
	ld [hl], $36
	ld d, [hl]
	ld c, $57
	ld d, c
	ld c, $44
	ld b, e
	ld b, e
	add hl, bc
	ld b, [hl]
	ld b, h
	scf
	ld [hl], $0e
	ld c, $2f
	ld b, [hl]
	ld c, $44
	ld c, $0e
	ld c, $46
	ld b, h
	cpl
	scf
	ld e, d
	ld c, $47
	ld b, [hl]
	ld c, $44
	ld b, a
	ld c, $09
	ld b, [hl]
	ld d, b
	ld c, c
	ld c, c
	ld c, d
	ld c, $57
	ld c, d
	ld c, $48
	ld e, b
	ld c, $57
	ld d, c
	ld [de], a
	cpl
	ld c, $0e
	ld c, $0e
	ld c, $0e
	ld c, $0e
	ld c, $0e
	ld b, [hl]
	ld c, b
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
	ld c, c
	ld c, d

	ld a, [wd0f0]
	cp $04
	ret z

	call Call_015_7bf3
	ld hl, wd12b
	xor a
	ld [wcf79], a

Jump_015_79e6:
	inc hl
	ld a, [hli]
	or [hl]
	jp z, Jump_015_7bbd

	push hl
	ld hl, wd035
	ld a, [wcf79]
	ld c, a
	ld b, $02
	ld a, $10
	call $3e9d
	ld a, c
	and a
	pop hl
	jp z, Jump_015_7bbd

	ld de, $0010
	add hl, de
	ld d, h
	ld e, l
	ld hl, wcfe9
	ld c, $05

jr_015_7a0c:
	ld a, [hli]
	ld b, a
	ld a, [de]
	add b
	ld [de], a
	jr nc, jr_015_7a21

	dec de
	ld a, [de]
	inc a
	jr z, jr_015_7a1c

	ld [de], a
	inc de
	jr jr_015_7a21

jr_015_7a1c:
	ld a, $ff
	ld [de], a
	inc de
	ld [de], a

jr_015_7a21:
	dec c
	jr z, jr_015_7a28

	inc de
	inc de
	jr jr_015_7a0c

jr_015_7a28:
	xor a
	ldh [$96], a
	ldh [$97], a
	ld a, [wcfef]
	ldh [$98], a
	ld a, [wcfda]
	ldh [$99], a
	call $38f5
	ld a, $07
	ldh [$99], a
	ld b, $04
	call $3902
	ld hl, $fff2
	add hl, de
	ld b, [hl]
	inc hl
	ld a, [wd2d8]
	cp b
	jr nz, jr_015_7a58

	ld b, [hl]
	ld a, [wd2d9]
	cp b
	ld a, $00
	jr z, jr_015_7a5d

jr_015_7a58:
	call Call_015_7c26
	ld a, $01

jr_015_7a5d:
	ld [wcf47], a
	ld a, [wd034]
	dec a
	call nz, Call_015_7c26
	inc hl
	inc hl
	inc hl
	ld b, [hl]
	ldh a, [$98]
	ld [wcf46], a
	add b
	ld [hld], a
	ld b, [hl]
	ldh a, [$97]
	ld [wcf45], a
	adc b
	ld [hl], a
	jr nc, jr_015_7a7f

	dec hl
	inc [hl]
	inc hl

jr_015_7a7f:
	inc hl
	push hl
	ld a, [wcf79]
	ld c, a
	ld b, $00
	ld hl, wd124
	add hl, bc
	ld a, [hl]
	ld [wd092], a
	call $2f2e
	ld d, $64
	ld hl, $4fb5
	ld b, $16
	call $3620
	ldh a, [$96]
	ld b, a
	ldh a, [$97]
	ld c, a
	ldh a, [$98]
	ld d, a
	pop hl
	ld a, [hld]
	sub d
	ld a, [hld]
	sbc c
	ld a, [hl]
	sbc b
	jr c, jr_015_7ab5

	ld a, b
	ld [hli], a
	ld a, c
	ld [hli], a
	ld a, d
	ld [hld], a
	dec hl

jr_015_7ab5:
	push hl
	ld a, [wcf79]
	ld hl, wd257
	call $2fb1
	ld hl, $7c39
	call $3c79
	xor a
	ld [wcc49], a
	call $2d68
	pop hl
	ld bc, $0013
	add hl, bc
	push hl
	ld b, $16
	ld hl, $4f8e
	call $3620
	pop hl
	ld a, [hl]
	cp d
	jp z, Jump_015_7bbd

	ld a, [wd0ec]
	push af
	push hl
	ld a, d
	ld [wd0ec], a
	ld [hl], a
	ld bc, $ffdf
	add hl, bc
	ld a, [hl]
	ld [wd092], a
	ld [wd0e3], a
	call $2f2e
	ld bc, $0023
	add hl, bc
	push hl
	ld a, [hld]
	ld c, a
	ld b, [hl]
	push bc
	ld d, h
	ld e, l
	ld bc, $ffee
	add hl, bc
	ld b, $01
	call $3980
	pop bc
	pop hl
	ld a, [hld]
	sub c
	ld c, a
	ld a, [hl]
	sbc b
	ld b, a
	ld de, $ffe0
	add hl, de
	ld a, [hl]
	add c
	ld [hld], a
	ld a, [hl]
	adc b
	ld [hl], a
	ld a, [wcc2f]
	ld b, a
	ld a, [wcf79]
	cp b
	jr nz, jr_015_7b7e

	ld de, wcffc
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hl]
	ld [de], a
	ld bc, $001f
	add hl, bc
	push hl
	ld de, wd009
	ld bc, $000b
	call $01bb
	pop hl
	ld a, [wd041]
	bit 3, a
	jr nz, jr_015_7b4f

	ld de, wcd0f
	ld bc, $000b
	call $01bb

jr_015_7b4f:
	xor a
	ld [wd0e3], a
	ld hl, $708a
	ld b, $0f
	call $3620
	ld hl, $700b
	ld b, $0f
	call $3620
	ld hl, $710a
	ld b, $0f
	call $3620
	ld hl, $4ebe
	ld b, $0f
	call $3620
	ld hl, $7186
	ld b, $0f
	call $3620
	call $3761

jr_015_7b7e:
	ld hl, $7c82
	call $3c79
	xor a
	ld [wcc49], a
	call $2d68
	ld d, $01
	ld hl, $782c
	ld b, $04
	call $3620
	call $38ae
	call $376d
	xor a
	ld [wcc49], a
	ld a, [wd092]
	ld [wd0e3], a
	ld a, $1a
	call $3e9d
	ld hl, wccd3
	ld a, [wcf79]
	ld c, a
	ld b, $01
	ld a, $10
	call $3e9d
	pop hl
	pop af
	ld [wd0ec], a

Jump_015_7bbd:
	ld a, [wd123]
	ld b, a
	ld a, [wcf79]
	inc a
	cp b
	jr z, jr_015_7bd7

	ld [wcf79], a
	ld bc, $002c
	ld hl, wd12b
	call $3ad1
	jp Jump_015_79e6


jr_015_7bd7:
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
	jp $3e9d


Call_015_7bf3:
	ld a, [wd035]
	ld b, a
	xor a
	ld c, $08
	ld d, $00

jr_015_7bfc:
	xor a
	srl b
	adc d
	ld d, a
	dec c
	jr nz, jr_015_7bfc

	cp $02
	ret c

	ld [wd0e3], a
	ld hl, wcfe9
	ld c, $07

jr_015_7c0f:
	xor a
	ldh [$95], a
	ld a, [hl]
	ldh [$96], a
	ld a, [wd0e3]
	ldh [$99], a
	ld b, $02
	call $3902
	ldh a, [$98]
	ld [hli], a
	dec c
	jr nz, jr_015_7c0f

	ret


Call_015_7c26:
	ldh a, [$97]
	ld b, a
	ldh a, [$98]
	ld c, a
	srl b
	rr c
	add c
	ldh [$98], a
	ldh a, [$97]
	adc b
	ldh [$97], a
	ret


	db $01, $68, $cd, $00, $ca, $50, $08

	ld a, [wcc5b]
	ld hl, $7c54
	and a
	ret nz

	ld hl, $7c6c
	ld a, [wcf47]
	and a
	ret z

	ld hl, $7c65
	ret


	nop
	ld a, a
	ld h, $b8
	cp h
	pop hl
	or e
	cp a
	or e
	pop bc
	inc sp
	ld d, b
	ld [$6c21], sp
	ld a, h
	ret


	nop
	ld a, a
	or l
	or l
	jp nc, Jump_015_50c6

	db $00, $4f, $50, $09, $45, $cf, $24, $00, $7f, $b9, $b2, $b9, $de, $c1, $dd, $7f
	db $d3, $d7, $df, $c0, $e7, $58, $01, $68, $cd, $00, $ca, $4f, $a7, $3d, $a6, $50
	db $09, $ec, $d0, $13, $00, $7f, $c6, $7f, $b1, $26, $df, $c0, $e7, $50, $0b, $50

	call $373e
	call $3e04
	call $03bf
	xor a
	ld [wcfb2], a
	ld hl, wd6af
	set 6, [hl]
	call $0167
	ld hl, $7de6
	ld de, $9700
	ld bc, $0010
	ld a, $0b
	call $028c
	ld hl, wc3a0
	ld bc, $1012
	ld a, $27
	call $3e9d
	ld hl, $7d42
	ld c, $05

jr_015_7ccf:
	push bc
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	ld a, [hli]
	push hl
	ld h, [hl]
	ld l, a
	call $0405
	pop hl
	inc hl
	pop bc
	dec c
	jr nz, jr_015_7ccf

	call Call_015_7d35
	ld hl, wc3fe
	add hl, bc
	ld de, wd11d
	call $0405
	ld b, $01
	ld hl, $4921
	call $3620
	ld hl, wOAMBuffer + $01
	ld bc, $8028

jr_015_7cfc:
	ld a, [hl]
	add $4b
	ld [hli], a
	inc hl
	ld a, b
	ld [hli], a
	inc hl
	dec c
	jr nz, jr_015_7cfc

	call $0181
	ld b, $01
	ld hl, $5911
	call $3620
	ld b, $08
	call $3e1f
	call $3e07
	call $3e0c
	ld a, $90
	ldh [rOBP0], a
	call $38ae
	ld hl, wd6af
	res 6, [hl]
	call $3e04
	call $3dee
	call $3e07
	jp $3e0c


Call_015_7d35:
	ld hl, wd11d
	ld bc, $ff00

jr_015_7d3b:
	ld a, [hli]
	cp $50
	ret z

	dec c
	jr jr_015_7d3b

	ld d, [hl]
	ld a, l
	adc $c3
	ld e, a
	ld a, l
	di
	jp Jump_015_7d65


	rst $38
	jp Jump_015_7d68


	ld l, $c4
	sbc e
	ld a, l
	rst $10
	call nz, $bc70
	ld [c], a
	or e
	inc l
	ld [c], a
	or e
	ld [hl], b
	ld d, b
	ld b, d
	and a
	db $e3
	and d
	db $e3
	ld d, b

Jump_015_7d65:
	cp e
	rst $08
	ld d, b

Jump_015_7d68:
	or c
	push bc
	ret nz

	jp z, Jump_015_547f

	dec l
	or [hl]
	sbc $dd
	ld c, [hl]
	ret nc

	ld a, [hli]
	call nz, $b67f
	sbc $be
	or d
	ld a, a
	cp e
	cp [hl]
	rst $08
	cp h
	ret nz

	rst $20
	ld c, [hl]
	cp a
	ret


	ld a, a
	or d
	jr nc, jr_015_7d3b

	push bc
	ld a, a
	cp d
	or e
	cp [hl]
	or a
	db $dd
	ld c, [hl]
	cp h
	ld [c], a
	or e
	jp nc, Jump_015_7fb2

	cp h
	rst $08
	cp l
	ld d, b
	ld [$9fe3], sp
	sbc e
	ret c

	db $e3
	add a
	ld d, b

	ld hl, wc100
	ld de, $0004
	ld a, [wcf0e]
	ldh [$8c], a
	call Call_015_7ead
	ld a, [hli]
	ldh [$eb], a
	inc hl
	ld a, [hl]
	ldh [$ec], a
	ld de, $00fe
	add hl, de
	ld a, [hli]
	ldh [$ed], a
	ld a, [hl]
	ldh [$ee], a
	ret


	ld hl, wc100
	ld de, $0004
	ld a, [wcf0e]
	ldh [$8c], a
	call Call_015_7ead
	ld a, [hli]
	ld [wd0f5], a
	inc hl
	ld a, [hl]
	ld [wd0f6], a
	ld de, $00fe
	add hl, de
	ld a, [hli]
	ld [wd0f7], a
	ld a, [hl]
	ld [wd0f8], a
	ret


	ld hl, wc100
	ld de, $0004
	ld a, [wcf0e]
	ldh [$8c], a
	call Call_015_7ead
	ldh a, [$eb]
	ld [hli], a
	inc hl
	ldh a, [$ec]
	ld [hl], a
	ld de, $00fe
	add hl, de
	ldh a, [$ed]
	ld [hli], a
	ldh a, [$ee]
	ld [hl], a
	ret


	ld hl, wc100
	ld de, $0004
	ld a, [wcf0e]
	ldh [$8c], a
	call Call_015_7ead
	ld a, [wd0f5]
	ld [hli], a
	inc hl
	ld a, [wd0f6]
	ld [hl], a
	ld de, $00fe
	add hl, de
	ld a, [wd0f7]
	ld [hli], a
	ld a, [wd0f8]
	ld [hl], a
	ret


	ld a, [wcf0e]
	swap a
	ld [wcd3d], a
	call Call_015_7f38
	ld a, [wcd3f]
	and a
	jr z, jr_015_7e46

	cp $04
	jr z, jr_015_7e5a

	cp $08
	jr z, jr_015_7e86

	jr jr_015_7e70

jr_015_7e46:
	ld a, [wcd40]
	ld b, a
	ld a, $3c
	call $367d
	cp $10
	ret z

	swap a
	dec a
	ld c, a
	xor a
	ld b, a
	jr jr_015_7e9a

jr_015_7e5a:
	ld a, [wcd40]
	ld b, a
	ld a, $3c
	call $367d
	cp $10
	ret z

	swap a
	dec a
	ld c, a
	ld b, $00
	ld a, $40
	jr jr_015_7e9a

jr_015_7e70:
	ld a, [wcd41]
	ld b, a
	ld a, $40
	call $367d
	cp $10
	ret z

	swap a
	dec a
	ld c, a
	ld b, $00
	ld a, $c0
	jr jr_015_7e9a

jr_015_7e86:
	ld a, [wcd41]
	ld b, a
	ld a, $40
	call $367d
	cp $10
	ret z

	swap a
	dec a
	ld c, a
	ld b, $00
	ld a, $80

jr_015_7e9a:
	ld hl, wcc97
	ld de, wcc97
	call $372a
	ld [hl], $ff
	ld a, [wcf0e]
	ldh [$8c], a
	jp $3687


Call_015_7ead:
	push de
	add hl, de
	ldh a, [$8c]
	swap a
	ld d, $00
	ld e, a
	add hl, de
	pop de
	ret


	push hl
	push de
	ld a, [wcd3d]
	add $02
	ld d, $00
	ld e, a
	ld hl, wc100
	add hl, de
	ld a, [hl]
	sub $ff
	jr nz, jr_015_7ecf

	jp Jump_015_7f32


jr_015_7ecf:
	ld a, [wcd3d]
	add $09
	ld d, $00
	ld e, a
	ld hl, wc100
	add hl, de
	ld a, [hl]
	ld [wcd3f], a
	call Call_015_7f38
	ld a, [wcd40]
	ld b, a
	ld a, $3c
	cp b
	jr z, jr_015_7ef8

	ld a, [wcd41]
	ld b, a
	ld a, $40
	cp b
	jr z, jr_015_7f0b

	xor a
	jp Jump_015_7f32


jr_015_7ef8:
	ld a, [wcd41]
	ld b, a
	ld a, $40
	call $367d
	jr z, jr_015_7f32

	call Call_015_7f59
	jr c, jr_015_7f1f

	xor a
	jr jr_015_7f32

jr_015_7f0b:
	ld a, [wcd40]
	ld b, a
	ld a, $3c
	call $367d
	jr z, jr_015_7f32

	call Call_015_7f59
	jr c, jr_015_7f1f

	xor a
	jp Jump_015_7f32


jr_015_7f1f:
	call Call_015_7f8d
	ld a, [wcd3d]
	and a

Call_015_7f26:
Jump_015_7f26:
	jr z, jr_015_7f32

	ld hl, wcd5b
	set 0, [hl]
	call $33b2
	ld a, $ff

Jump_015_7f32:
jr_015_7f32:
	ld [wcd3d], a
	pop de
	pop hl
	ret


Call_015_7f38:
	ld a, [wcd3d]
	add $04
	ld d, $00
	ld e, a
	ld hl, wc100
	add hl, de
	ld a, [hl]
	ld [wcd40], a
	ld a, [wcd3d]
	add $06
	ld d, $00
	ld e, a
	ld hl, wc100
	add hl, de
	ld a, [hl]
	ld [wcd41], a
	ret


Call_015_7f59:
	ld b, a
	ld a, [wcd3e]
	cp b
	jr nc, jr_015_7f62

	jr jr_015_7f8b

jr_015_7f62:
	ld a, [wcd3f]
	cp $00
	jr z, jr_015_7f77

	cp $04
	jr z, jr_015_7f77

	cp $08
	jr z, jr_015_7f81

	cp $0c
	jr z, jr_015_7f81

	jr jr_015_7f8b

jr_015_7f77:
	ld a, [wcd41]
	ld b, a
	cp $40
	jr z, jr_015_7f89

	jr jr_015_7f8b

jr_015_7f81:
	ld a, [wcd40]
	ld b, a
	cp $3c
	jr nz, jr_015_7f8b

jr_015_7f89:
	scf
	ret


jr_015_7f8b:
	and a
	ret


Call_015_7f8d:
	ld a, [wd2dd]
	cp $53
	jp z, Jump_015_7fec

	ld a, [wcd3d]
	add $04
	ld d, $00
	ld e, a
	ld hl, wc100
	add hl, de
	ld a, [hl]
	cp $fc
	jr nz, jr_015_7fa8

	ld a, $0c

jr_015_7fa8:
	ld [wcd40], a
	ld a, [wcd3d]
	add $06
	ld d, $00

Jump_015_7fb2:
	ld e, a
	ld hl, wc100

Call_015_7fb6:
Jump_015_7fb6:
	add hl, de
	ld a, [hl]

Call_015_7fb8:
	ld [wcd41], a
	ld a, [wcd3f]
	cp $00

Jump_015_7fc0:
	jr nz, jr_015_7fcb

	ld a, [wcd40]

Call_015_7fc5:
	cp $3c
	jr c, jr_015_7fec

Jump_015_7fc9:
	jr jr_015_7ff0

jr_015_7fcb:
	cp $04
	jr nz, jr_015_7fd8

Call_015_7fcf:
	ld a, [wcd40]
	cp $3c
	jr nc, jr_015_7fec

	jr jr_015_7ff0

Call_015_7fd8:
Jump_015_7fd8:
jr_015_7fd8:
	cp $08

Jump_015_7fda:
	jr nz, jr_015_7fe5

	ld a, [wcd41]
	cp $40
	jr nc, jr_015_7fec

Call_015_7fe3:
	jr jr_015_7ff0

jr_015_7fe5:
	ld a, [wcd41]
	cp $40
	jr nc, jr_015_7ff0

Jump_015_7fec:
jr_015_7fec:
	ld a, $ff
	jr jr_015_7ff1

jr_015_7ff0:
	xor a

jr_015_7ff1:
	ld [wcd3d], a
	ret


	ld h, c
	ld d, c
	add b
	db $10
	add c
	jr nz, @+$42

	nop
	nop
	ld b, b
	nop
