; Disassembly of "pokemon-red-jp.gb"

SECTION "ROM Bank $01a", ROMX[$4000], BANK[$1a]

	INCBIN "gfx/auto/image_01a_4000.2bpp"

	INCBIN "gfx/auto/image_01a_4600.2bpp"

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
	dec b
	dec b
	dec b
	dec b
	db $10
	db $10
	db $10
	db $10
	ld de, $1111
	ld de, $1111
	ld de, $1411
	inc d
	inc d
	inc d
	inc d
	inc d
	inc d
	inc d
	inc d
	inc d
	inc d
	inc d
	inc d
	inc d
	inc d
	inc d

	db $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f
	db $11, $11, $11, $11, $11, $11, $11, $11, $06, $06, $06, $06, $16, $16, $16, $16
	db $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11

	ld de, $1111
	ld de, $1111
	ld de, $0211
	jr c, @+$09

	ld [$1312], sp
	rla
	jr @+$13

	ld de, $1111
	ld de, $1111
	ld de, $0807
	ld [bc], a
	jr c, @+$19

	jr @+$14

	inc de
	rlca
	ld [$0807], sp
	rla
	jr @+$19

	jr @+$09

	ld [$1111], sp
	rla
	jr @+$13

	ld de, $0807
	rlca
	ld [$1817], sp
	rla
	jr @+$13

	ld de, $0807
	ld de, $1711
	jr @+$09

	ld [$0807], sp
	rla
	jr @+$19

	jr @+$13

	ld de, $1111
	ld de, $1111
	ld de, $1111
	ld de, $1111
	ld de, $1111
	rlca
	ld [$0807], sp
	rla
	jr @+$19

	jr @+$09

	ld [$1111], sp
	rla
	jr @+$13

	ld de, $0807
	rlca
	ld [$1817], sp
	rla
	jr @+$13

	ld de, $0807
	ld de, $1711
	jr @+$09

	ld [$0807], sp
	rla
	jr jr_01a_4746

	jr @+$09

	ld [$1111], sp
	rla
	jr @+$13

	ld de, $0807
	ld de, $1711
	jr @+$13

	ld de, $1111
	rlca
	ld [$1111], sp

jr_01a_4746:
	rla
	jr @+$13

	ld de, $0807
	ld de, $1711
	jr @+$24

	inc hl
	ld de, $3211
	inc sp
	ld de, $1111
	ld de, $1111
	ld de, $1111
	ld de, $1111
	ld [hli], a
	inc hl
	ld de, $3211
	inc sp
	ld de, $1111
	ld de, $1111
	ld de, $1111
	ld de, $1111
	ld de, $1111
	ld de, $0807
	ld de, $1711
	jr @+$13

	ld de, $1111
	ld de, $1111
	ld de, $1111
	ld de, $0711
	ld [$1111], sp
	rla
	jr jr_01a_4796

	dec b
	dec b
	dec b
	db $10
	db $10

jr_01a_4796:
	db $10
	db $10
	add hl, bc
	ld a, [bc]
	add hl, bc
	ld a, [bc]
	add hl, de
	ld a, [de]
	add hl, de
	ld a, [de]
	add hl, bc
	ld a, [bc]
	inc d
	inc d
	add hl, de
	ld a, [de]
	inc d
	inc d
	add hl, bc
	ld a, [bc]
	inc d
	inc d
	add hl, de
	ld a, [de]
	inc d
	inc d
	inc d
	inc d
	add hl, bc
	ld a, [bc]
	inc d
	inc d
	add hl, de
	ld a, [de]
	inc d
	inc d
	add hl, bc
	ld a, [bc]
	inc d
	inc d
	add hl, de
	ld a, [de]
	inc d
	inc d
	inc d
	inc d
	inc d
	inc d
	inc d
	inc d
	inc d
	inc d
	inc d
	inc d
	inc d
	inc d
	inc d
	inc d
	add hl, bc
	ld a, [bc]
	add hl, bc
	ld a, [bc]
	add hl, de
	ld a, [de]
	add hl, de
	ld a, [de]
	add hl, bc
	ld a, [bc]
	add hl, bc
	ld a, [bc]
	add hl, de
	ld a, [de]
	add hl, de
	ld a, [de]
	ld [bc], a
	jr c, @+$03

	ld bc, $1312
	ld de, $2211
	inc hl
	ld de, $3211
	inc sp
	ld de, $1411
	inc d
	ld [bc], a
	jr c, jr_01a_4809

	inc d
	ld [de], a
	inc de
	inc d
	inc d
	ld [hli], a
	inc hl
	inc d
	inc d
	ld [hld], a
	inc sp
	ld de, $1111
	ld de, $1111
	ld de, $0411

jr_01a_4809:
	inc b
	inc b
	inc b
	inc d
	inc d
	inc d
	inc d
	ld de, $0411
	inc b
	ld de, $1411
	inc d
	ld de, $1411
	inc d
	ld de, $1411
	inc d
	inc b
	inc b
	ld de, $1411
	inc d
	ld de, $1411
	inc d
	ld de, $1411
	inc d
	ld de, $0411
	inc b
	inc b
	inc b
	inc d
	inc d
	inc d
	inc d
	ld bc, $0101
	ld bc, $1111
	ld de, $0411
	inc b
	ld de, $1411
	inc d
	ld de, $0111
	ld bc, $1111
	ld de, $1111
	ld de, $0404
	inc b
	inc b
	inc d
	inc d
	inc d
	inc d
	inc d
	inc d
	inc d
	inc d
	inc d
	inc d
	inc d
	inc d
	dec b
	dec b
	dec b
	dec b
	db $10
	db $10
	db $10
	db $10
	inc d
	inc d
	inc d
	inc d
	inc d
	inc d
	inc d
	inc d
	ld bc, $0101
	ld bc, $1111
	ld de, $1111
	ld de, $1111
	ld de, $1111
	ld de, $1414
	inc d
	inc d
	inc d
	inc d
	inc d
	inc d
	ld bc, $0101
	ld bc, $1111
	ld de, $2011
	ld hl, $2120
	jr nc, jr_01a_48c7

	jr nc, @+$33

	ld de, $1111
	ld de, $1111
	ld de, $4511
	ld b, [hl]
	dec b
	dec b
	ld d, [hl]
	ld d, [hl]
	ld d, [hl]
	ld d, [hl]
	ld de, $1111
	ld de, $1111
	ld de, $4511
	ld b, [hl]
	add hl, hl
	ld a, [hli]
	ld d, [hl]
	ld d, [hl]
	dec c
	ld c, $0b
	inc c
	dec c
	ld c, $1b
	inc e
	dec e
	ld e, $11
	ld de, $1111
	ld de, $1111

jr_01a_48c7:
	ld de, $1111
	dec bc
	inc c
	ld de, $1b11
	inc e
	ld de, $1111
	ld de, $1111
	ld de, $0211
	jr c, @+$13

	ld de, $1312
	ld de, $1111
	ld de, $1111
	ld de, $1111
	ld de, $1111
	ld [bc], a
	jr c, jr_01a_48fe

	ld de, $1312
	inc h
	ld h, $26
	ld h, $25
	rrca
	rrca
	rrca
	ld b, h
	dec b
	ld b, l
	ld b, [hl]
	ld d, h
	ld d, [hl]

jr_01a_48fe:
	ld d, [hl]
	ld d, [hl]
	ld h, $26
	ld h, $27
	rrca
	rrca
	rrca
	dec [hl]
	ld b, l
	ld b, [hl]
	dec b
	ld b, a
	ld d, [hl]
	ld d, [hl]
	ld d, [hl]
	ld d, a
	dec h
	rrca
	rrca
	dec [hl]
	dec h
	rrca
	rrca
	dec [hl]
	dec h
	rrca
	rrca
	dec [hl]
	dec h
	rrca
	rrca
	dec [hl]
	rra
	rra
	rra
	rra
	rra
	rra
	rra
	rra
	ld de, $1111
	ld de, $1111
	ld de, $1111
	ld de, $1111
	ld de, $1111
	ld de, $1f1f
	rra
	rra
	rra
	rra
	rra
	rra
	rra
	rra
	ld de, $1f11
	rra
	ld de, $1f11
	rra
	ld de, $1f11
	rra
	ld de, $1111
	ld de, $1f1f
	ld de, $1f11
	rra
	ld de, $1f11
	rra
	ld de, $1f11
	rra
	ld [bc], a
	jr c, jr_01a_4974

	ld de, $1312
	ld de, $2211
	inc hl
	ld de, $3211
	inc sp
	ld de, $1111
	ld de, $3802

jr_01a_4974:
	ld de, $1211
	inc de
	ld de, $2211
	inc hl
	ld de, $3211
	inc sp
	inc bc
	dec hl
	dec hl
	dec hl
	dec hl
	dec hl
	inc bc
	dec hl
	inc bc
	dec hl
	dec hl
	dec hl
	dec hl
	dec hl
	inc bc
	dec hl
	inc l
	dec l
	inc l
	dec l
	ld l, $2f
	ld l, $2f
	inc l
	dec l
	inc l
	dec l
	ld l, $2f
	ld l, $2f
	dec hl
	dec hl
	dec hl
	dec hl
	dec hl
	dec hl
	dec hl
	dec hl
	inc l
	dec l
	dec hl
	dec hl
	ld l, $2f
	dec hl
	dec hl
	dec hl
	dec hl
	inc l
	dec l
	dec hl
	dec hl
	ld l, $2f
	dec hl
	dec hl
	dec hl
	dec hl
	dec hl
	dec hl
	dec hl
	dec hl
	ld e, b
	ld e, c
	ld e, c
	ld e, d
	add hl, de
	ld a, [de]
	add hl, de
	ld a, [de]
	add hl, bc
	ld a, [bc]
	add hl, bc
	ld a, [bc]
	add hl, de
	ld a, [de]
	add hl, de
	ld a, [de]
	inc l
	dec l
	inc l
	dec l
	ld l, $2f
	ld l, $2f
	inc l
	dec l
	dec hl
	dec hl
	ld l, $2f
	dec hl
	dec hl
	inc l
	dec l
	inc l
	dec l
	ld l, $2f
	ld l, $2f
	dec hl
	dec hl
	inc l
	dec l
	dec hl
	dec hl
	ld l, $2f
	inc l
	dec l
	inc l
	dec l
	ld l, $2f
	ld l, $2f
	dec hl
	dec hl
	dec hl
	dec hl
	dec hl
	dec hl
	dec hl
	dec hl
	inc l
	dec l
	dec hl
	dec hl
	ld l, $2f
	dec hl
	dec hl
	inc l
	dec l
	inc l
	dec l
	ld l, $2f
	ld l, $2f
	ld b, b
	ld b, c
	dec hl
	dec hl
	ld d, b
	ld d, c
	dec hl
	dec hl
	inc l
	dec l
	dec hl
	dec hl
	ld l, $2f
	dec hl
	dec hl
	dec hl
	dec hl
	inc l
	dec l
	dec hl
	dec hl
	ld l, $2f
	dec hl
	dec hl
	ld b, b
	ld b, c
	dec hl
	dec hl
	ld d, b
	ld d, c
	dec hl
	dec hl
	inc l
	dec l
	dec hl
	dec hl
	ld l, $2f
	inc l
	dec l
	inc l
	dec l
	ld l, $2f
	ld l, $2f
	dec hl
	dec hl
	dec hl
	dec hl
	dec hl
	dec hl
	dec hl
	dec hl
	inc l
	dec l
	ld b, b
	ld b, c
	ld l, $2f
	ld d, b
	ld d, c
	ld de, $1111
	ld de, $1111
	ld de, $1111
	ld de, $3f3f
	ld de, $3f11
	ccf
	ld de, $3f11
	ccf
	ld de, $3f11
	ccf
	ld de, $1111
	ld de, $1111
	ld de, $1111
	ld de, $3c3c
	ld de, $4c11
	ld c, h
	ld de, $3c11
	inc a
	ld de, $4c11
	ld c, h
	ld de, $1111
	ld de, $1111
	ld de, $3c11
	dec a
	inc a
	dec a
	inc a
	dec a
	inc a
	dec a
	inc h
	ld h, $26
	daa
	dec h
	rrca
	rrca
	dec [hl]
	dec h
	rrca
	rrca
	dec [hl]
	dec h
	rrca
	rrca
	dec [hl]
	dec h
	rrca
	rrca
	dec [hl]
	dec h
	rrca
	rrca
	dec [hl]
	dec h
	rrca
	rrca
	dec [hl]
	ld b, d
	db $10
	db $10
	ld a, $11
	ld de, $1111
	ld de, $1111
	ld de, $2624
	ld h, $27
	ld b, d
	db $10
	db $10
	ld a, $11
	ld de, $1111
	ld de, $1111
	ld de, $3f3f
	inc a
	dec a
	ccf
	ccf
	inc a
	dec a
	inc h
	ld h, $26
	daa
	ld b, d
	db $10
	db $10
	ld a, $11
	ld de, $1111
	ld de, $1111
	ld de, $2724
	dec b
	dec b
	dec h
	dec [hl]
	db $10
	db $10
	dec h
	dec [hl]
	ld de, $2511
	dec [hl]
	ld de, $0511
	dec b
	inc h
	daa
	db $10
	db $10
	dec h
	dec [hl]
	ld de, $2511
	dec [hl]
	ld de, $2511
	dec [hl]
	inc h
	daa
	ld de, $2511
	dec [hl]
	ld de, $2511
	dec [hl]
	ld de, $2511
	dec [hl]
	ld de, $1111
	ld de, $2724
	ld de, $2511
	dec [hl]
	ld de, $2511
	dec [hl]
	ld de, $2511
	dec [hl]
	inc h
	ld h, $26
	daa
	ld b, d
	db $10
	dec h
	dec [hl]
	ld de, $2511
	dec [hl]
	ld de, $2511
	dec [hl]
	ld de, $1111
	ld de, $1111
	ld de, $2411
	ld h, $26
	daa
	ld b, d
	db $10
	dec h
	dec [hl]
	ld de, $2411
	daa
	ld de, $2511
	dec [hl]
	ld de, $2511
	dec [hl]
	ld de, $2511
	dec [hl]
	inc h
	daa
	ld de, $2511
	dec [hl]
	ld de, $2511
	dec [hl]
	ld de, $4211
	ld a, $11
	ld de, $1111
	inc h
	daa
	ld de, $2511
	dec [hl]
	ld de, $2511
	dec [hl]
	ld de, $4211
	ld a, $24
	daa
	ld de, $2511
	dec [hl]
	ld de, $2511
	rrca
	ld h, $27
	ld b, d
	db $10
	db $10
	ld a, $11
	ld de, $1111
	ld de, $1111
	ld de, $1111
	inc h
	daa
	ld de, $2511
	dec [hl]
	dec h
	dec [hl]
	ld de, $4211
	ld a, $11
	ld de, $1111
	inc h
	daa
	ld de, $2511
	dec [hl]
	ld de, $2511
	dec [hl]
	ld de, $4211
	ld a, $11
	ld de, $1111
	ld de, $1111
	ld de, $1111
	ld de, $1111
	ld de, $1111
	inc h
	ld h, $26
	daa
	dec h
	dec [hl]
	db $10
	ld a, $3d
	dec a
	ld de, $4d11
	ld c, l
	ld de, $2411
	ld h, $26
	daa
	ld b, d
	db $10
	db $10
	ld a, $11
	ld de, $2624
	ld de, $4211
	db $10
	ccf
	ccf
	dec a
	dec a
	ccf
	ccf
	ld c, l
	ld c, l
	ld de, $3f11
	ccf
	ld de, $3f11
	ccf
	inc h
	ld h, $26
	daa
	ld b, d
	db $10
	db $10
	ld a, $24
	ld h, $26
	daa
	ld b, d
	db $10
	db $10
	ld a, $11
	ld de, $3f3f
	ld de, $3f11
	ccf
	ld h, $27
	ld de, $1011
	ld a, $11
	ld de, $1111
	ld de, $1111
	ld de, $1111
	ld c, h
	ld c, l
	ccf
	ccf
	ld c, h
	ld c, l
	ccf
	ccf
	ld de, $1111
	ld de, $1111
	ld de, $0511
	dec b
	dec b
	dec b
	db $10
	db $10
	db $10
	db $10
	ld de, $3c11
	inc a
	ld de, $4c11
	ld c, h
	ld de, $3f11
	ccf
	ld de, $3f11
	ccf
	inc h
	ld h, $26
	daa
	ld b, d
	db $10
	dec h
	dec [hl]
	dec b
	dec b
	dec b
	dec b
	db $10
	db $10
	db $10
	db $10
	ld de, $3f11
	ccf
	ld de, $3f11
	ccf
	ld c, h
	ld c, l
	inc h
	daa
	ld c, h
	ld c, l
	dec h
	dec [hl]
	ld de, $2511
	dec [hl]
	ld de, $4211
	ld a, $11
	ld de, $1111
	ld de, $1111
	ld de, $3f3f
	ld de, $3f11
	ccf
	ld de, $3f11
	ccf
	ld de, $3f11
	ccf
	ld de, $1111
	ld de, $1111
	ld de, $1111
	ld de, $1111
	dec a
	dec a
	ld de, $4d11
	ld c, l
	ld de, $2411
	daa
	ld de, $2511
	dec [hl]
	ld de, $1111
	ld de, $1111
	ld de, $2611
	daa
	ld de, $1011
	ld a, $11
	db $11

	db $05, $05, $05, $05, $10, $10, $10, $10, $5b, $5c, $5d, $5e, $36, $37, $55, $5f
	db $05, $05, $05, $05, $10, $10, $10, $10, $29, $3b, $3b, $2a, $4e, $39, $39, $4f
	db $34, $43, $34, $43, $52, $53, $52, $53, $11, $11, $11, $11, $11, $11, $11, $11
	db $29, $2a, $29, $2a, $0d, $0e, $0d, $0e, $0d, $0e, $0d, $0e, $1d, $1e, $1d, $1e
	db $11, $11, $11, $11, $11, $11, $11, $11, $29, $3b, $3b, $3b, $4e, $39, $39, $39
	db $11, $11, $11, $11, $11, $11, $11, $11, $3b, $2a, $11, $11, $39, $4f, $11, $11
	db $58, $59, $59, $5a, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11

	add hl, bc
	ld a, [bc]
	add hl, bc
	ld a, [bc]
	add hl, de
	ld a, [de]
	add hl, de
	ld a, [de]
	ld b, $06
	ld b, $06
	ld d, $16
	ld d, $16

	db $58, $59, $59, $59, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11
	db $59, $5a, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11

	ld de, $2411
	daa
	ld de, $2511
	dec [hl]
	inc h
	ld h, $0f
	dec [hl]
	ld b, d
	db $10
	db $10
	ld a, $48
	ld c, c
	inc h
	daa
	ld c, d
	ld c, e
	dec h
	dec [hl]
	ld de, $2511
	dec [hl]
	ld de, $2511
	dec [hl]
	ld de, $1111
	ld de, $1111
	ld de, $2411
	daa
	ld de, $2511
	dec [hl]
	ld de, $0211
	jr c, @+$22

	ld hl, $1312
	jr nc, @+$33

	ld [hli], a
	inc hl
	ld de, $3211
	inc sp
	ld de, $2011
	ld hl, $3802
	jr nc, @+$33

	ld [de], a
	inc de
	ld de, $2211
	inc hl
	ld de, $3211
	inc sp

	INCBIN "gfx/auto/image_01a_4d90.2bpp"

	db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
	db $03, $28, $10, $29, $13, $28, $10, $29, $01, $0b, $10, $29, $11, $1b, $10, $29
	db $28, $3a, $3b, $28, $28, $4a, $4b, $28, $48, $4c, $4d, $49, $48, $06, $16, $49

	ld bc, $010b
	dec bc
	ld de, $111b
	dec de
	ld bc, $010b
	dec bc
	ld de, $111b
	dec de

	db $08, $08, $08, $0a, $18, $19, $18, $19, $01, $0b, $01, $0b, $11, $1b, $11, $1b
	db $08, $08, $04, $05, $18, $19, $14, $15, $01, $0b, $01, $0b, $11, $1b, $11, $1b

	jr c, @+$0a

	ld [$1808], sp
	add hl, de
	jr @+$1b

	ld bc, $010b
	dec bc
	ld de, $111b
	dec de

	db $08, $08, $08, $08, $18, $19, $18, $19, $01, $0b, $01, $0b, $11, $1b, $11, $1b
	db $24, $25, $39, $0b, $34, $35, $3c, $1b, $26, $27, $36, $0b, $2a, $2b, $1a, $1b
	db $28, $28, $28, $28, $4e, $4f, $4e, $4f, $4c, $4d, $4c, $4d, $17, $1d, $17, $1d
	db $01, $0b, $01, $0b, $11, $1b, $11, $1b, $01, $0b, $0c, $0c, $11, $1b, $1c, $1c
	db $01, $0b, $01, $0b, $11, $1b, $11, $1b, $0c, $0c, $01, $0b, $1c, $1c, $11, $1b
	db $28, $28, $28, $28, $28, $28, $28, $28, $01, $0b, $01, $0b, $11, $1b, $11, $1b

	ld e, h
	ld e, l
	jr z, @+$2a

	ld e, [hl]
	ld e, a
	jr z, @+$2a

	ld bc, $010b
	dec bc
	ld de, $111b
	dec de

	db $20, $21, $20, $21, $30, $31, $30, $31, $22, $23, $22, $23, $32, $33, $32, $33
	db $01, $0b, $01, $0b, $11, $1b, $11, $1b, $01, $0b, $01, $0b, $11, $1b, $11, $1b
	db $3b, $28, $28, $02, $4b, $28, $28, $12, $4d, $07, $36, $0b, $16, $0d, $1a, $1b

	ld bc, $010b
	dec bc
	ld a, [de]
	dec de
	ld de, $361b
	dec bc
	ld bc, $1a0b
	dec de
	db $11
	dec de

	db $28, $28, $28, $28, $4e, $4f, $4e, $4f, $4c, $4d, $4c, $4d, $17, $1d, $17, $1d
	db $5a, $5b, $5a, $5b, $2c, $2d, $2c, $2d, $2e, $2f, $2e, $2f, $3e, $3f, $3e, $3f
	db $01, $0b, $01, $0b, $11, $1b, $11, $1b, $40, $41, $41, $43, $50, $51, $51, $53
	db $44, $45, $45, $47, $54, $55, $55, $57, $01, $0b, $01, $0b, $11, $1b, $11, $1b
	db $36, $0b, $01, $0b, $1a, $1b, $11, $1b, $40, $41, $41, $43, $50, $51, $51, $53
	db $38, $08, $10, $29, $19, $18, $19, $18, $36, $0b, $01, $0b, $1a, $1b, $11, $1b
	db $28, $28, $28, $59, $28, $28, $10, $29, $36, $0b, $0e, $0f, $1a, $1b, $1e, $1f
	db $36, $0b, $01, $0b, $1a, $1b, $11, $1b, $36, $0b, $01, $0b, $1a, $1b, $11, $1b
	db $36, $0b, $01, $0b, $1a, $1b, $11, $1b, $01, $0b, $0c, $0c, $11, $1b, $1c, $1c

	ld bc, $090b
	ld e, b
	ld de, $111b
	dec de
	ld bc, $010b
	dec bc
	ld de, $111b
	dec de
	ld [$0808], sp
	ld [$1918], sp
	jr @+$1b

	ld bc, $420b
	ld b, [hl]
	ld de, $521b
	ld d, [hl]
	ld b, b
	ld b, c
	ld b, c
	ld b, e
	ld d, b
	ld d, c
	ld d, c
	ld d, e
	ld b, h
	ld b, l
	ld b, l
	ld b, a
	ld d, h
	ld d, l
	ld d, l
	ld d, a
	ld bc, $010b
	dec bc
	ld de, $111b
	dec de
	ld e, d
	ld e, e
	ld e, d
	ld e, e
	inc d
	jr z, @+$2a

	jr z, jr_01a_5582

	dec bc

jr_01a_5582:
	ld bc, $110b
	dec de
	ld de, $5a1b
	ld e, e
	ld e, d
	ld e, e
	jr z, @+$2a

	jr z, jr_01a_55b8

	db $10, $29, $28, $3a, $10, $29, $28, $4a, $10, $29, $48, $4c, $10, $29, $48, $06
	db $04, $05, $38, $08, $14, $15, $18, $19, $01, $0b, $01, $0b, $11, $1b, $11, $1b

	ld e, d
	ld e, e
	ld bc, $190b
	jr jr_01a_55c8

	dec de

jr_01a_55b8:
	ld bc, $010b
	dec bc
	ld de, $111b
	dec de
	ld e, d
	ld e, e
	ld [$1908], sp
	jr @+$1a

	add hl, de

jr_01a_55c8:
	ld bc, $420b
	ld b, [hl]
	ld de, $521b
	ld d, [hl]
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld e, d
	ld e, e
	ld e, d
	ld e, e
	jr z, @+$2a

	jr z, @+$2a

	INCBIN "gfx/auto/image_01a_55e0.2bpp"

	INCBIN "gfx/auto/image_01a_5ae0.2bpp"

	db $11, $01, $11, $01, $01, $11, $01, $11, $11, $01, $11, $01, $01, $11, $01, $11

	ld de, $2001
	ld hl, $1101
	ld [hld], a
	inc sp
	ld de, $2001
	ld hl, $1101
	ld [hld], a
	inc sp
	jr nz, jr_01a_5c13

	ld de, $3201
	inc sp
	ld bc, $2011
	ld hl, $0111
	ld [hld], a
	inc sp
	ld bc, $0011
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld de, $1101
	ld bc, $1101
	ld bc, $3711
	jr c, @+$3a

jr_01a_5c13:
	scf
	scf
	jr c, jr_01a_5c4f

	scf
	scf
	jr c, @+$3a

	scf
	scf
	jr c, jr_01a_5c57

	scf
	ld a, [bc]
	dec bc
	ld de, $1a01
	dec de
	ld bc, $1111
	ld bc, $0111
	ld bc, $0111
	ld de, $0605
	nop
	nop
	dec d
	ld d, $00
	nop
	dec h
	ld h, $11
	ld bc, $3635
	ld bc, $0011
	nop
	dec b
	ld b, $00
	nop
	dec d
	ld d, $11
	ld bc, $2625
	ld bc, $3511

jr_01a_5c4f:
	ld [hl], $11
	ld bc, $1817
	ld bc, $1711

jr_01a_5c57:
	jr @+$13

	ld bc, $1817
	ld bc, $1711
	jr @+$19

	jr @+$13

	ld bc, $1817
	ld bc, $1711
	jr @+$13

	ld bc, $1817
	db $01
	db $11

	db $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10
	db $11, $01, $11, $01, $01, $11, $01, $11, $04, $04, $04, $04, $14, $14, $14, $14

	ld de, $0701
	add hl, bc
	ld bc, $3211
	inc sp
	inc b
	inc b
	ld de, $1401
	inc d
	ld bc, $0911
	ld [$0605], sp
	ld [hld], a
	inc sp
	dec d
	ld d, $11
	ld bc, $2625
	ld bc, $3511
	ld [hl], $05
	ld b, $07
	add hl, bc
	dec d
	ld d, $32
	inc sp
	dec h
	ld h, $11
	ld bc, $3635
	ld bc, $0911
	ld [$0111], sp
	ld [hld], a
	inc sp
	ld bc, $1111
	ld bc, $0404
	ld bc, $1411
	inc d
	add hl, bc
	ld [$0111], sp
	rla
	jr @+$03

	ld de, $1817
	ld de, $1701
	jr @+$03

	ld de, $0111
	rlca
	add hl, bc
	ld bc, $1711
	jr jr_01a_5cfa

	ld bc, $1817
	ld bc, $1711
	jr jr_01a_5d02

	ld bc, $0111
	ld bc, $0111
	ld de, $0807

jr_01a_5cfa:
	ld de, $1701
	jr @+$03

	ld de, $0111

jr_01a_5d02:
	ld de, $0101
	ld de, $1101
	ld de, $0701
	ld [$1101], sp
	rla
	jr @+$13

	ld bc, $0907
	ld bc, $3211
	inc sp
	ld de, $1101
	ld bc, $1101
	ld bc, $0911
	ld [$0111], sp
	ld [hld], a
	inc sp
	ld bc, $1111
	ld bc, $0111
	ld bc, $0111
	ld de, $2120
	rlca
	ld [$3332], sp
	ld [hli], a
	inc hl
	jr nz, @+$23

	ld [hli], a
	inc hl
	ld [hld], a
	inc sp
	ld [hli], a
	inc hl
	rlca
	ld [$2120], sp
	ld [hli], a
	inc hl
	ld [hld], a
	inc sp
	ld [hli], a
	inc hl
	jr nz, jr_01a_5d6d

	ld [hli], a
	inc hl
	ld [hld], a
	inc sp
	jr nz, jr_01a_5d73

	ld de, $3201
	inc sp
	ld bc, $2011
	ld hl, $2120
	ld [hld], a
	inc sp
	ld [hld], a
	inc sp
	ld de, $2001
	ld hl, $1101
	ld [hld], a
	inc sp
	jr nz, jr_01a_5d8b

	jr nz, @+$23

	ld [hld], a

jr_01a_5d6d:
	inc sp
	ld [hld], a
	inc sp
	rla
	jr @+$13

jr_01a_5d73:
	ld bc, $3332
	ld bc, $1111
	ld bc, $0111
	ld bc, $0111
	ld de, $0111
	rla
	jr @+$03

	ld de, $3332
	ld de, $1101

jr_01a_5d8b:
	ld bc, $1101
	ld bc, $2011
	ld hl, $2120
	ld [hld], a
	inc sp
	ld [hld], a
	inc sp
	jr nz, @+$23

	ld de, $3201
	inc sp
	ld bc, $2011
	ld hl, $2120
	ld [hld], a
	inc sp
	ld [hld], a
	inc sp
	ld de, $2001
	ld hl, $1101
	ld [hld], a
	inc sp
	ld de, $1101
	ld bc, $1101
	ld bc, $2011
	ld hl, $2120
	ld [hld], a
	inc sp
	ld [hld], a
	inc sp
	jr nz, jr_01a_5de3

	jr nz, jr_01a_5de5

	ld [hld], a
	inc sp
	ld [hld], a
	inc sp
	ld de, $1101
	ld bc, $1101
	ld bc, $1111
	ld bc, $0907
	ld bc, $3211
	inc sp
	ld de, $1101
	ld bc, $1101
	ld bc, $0911
	add hl, bc
	add hl, bc

jr_01a_5de3:
	add hl, bc
	ld [hld], a

jr_01a_5de5:
	inc sp
	ld [hld], a
	inc sp
	ld de, $1101
	ld bc, $1101
	ld bc, $0911
	ld [$0111], sp
	ld [hld], a
	inc sp
	ld bc, $1111
	ld bc, $0111
	ld bc, $0111
	ld de, $0d0c
	jr nz, @+$23

	inc e
	dec e
	ld [hld], a
	inc sp
	jr nz, jr_01a_5e2b

	jr nz, jr_01a_5e2d

	ld [hld], a
	inc sp
	ld [hld], a
	inc sp
	ld de, $1101
	ld bc, $1101
	ld bc, $1111
	ld bc, $0907
	ld bc, $3211
	inc sp
	ld de, $1101
	ld bc, $1101
	ld bc, $0911
	add hl, bc
	add hl, bc

jr_01a_5e2b:
	add hl, bc
	ld [hld], a

jr_01a_5e2d:
	inc sp
	ld [hld], a
	inc sp
	ld de, $1101
	ld bc, $1101
	ld bc, $0911
	ld [$0111], sp
	ld [hld], a
	inc sp
	ld bc, $2011
	ld hl, $0111
	ld [hld], a
	inc sp
	ld bc, $1711
	jr jr_01a_5e5c

	ld bc, $1817
	ld bc, $2b11
	add hl, hl
	dec hl
	add hl, hl
	dec sp
	ld a, [hli]
	dec sp
	ld a, [hli]
	scf
	jr c, jr_01a_5e93

	scf

jr_01a_5e5c:
	scf
	jr c, @+$3a

	scf
	ld de, $1101
	ld bc, $1101
	ld bc, $2011
	ld hl, $0907
	ld [hld], a
	inc sp
	ld [hld], a
	inc sp
	rla
	jr jr_01a_5e84

	ld bc, $1817
	ld bc, $2011
	ld hl, $0111
	ld [hld], a
	inc sp
	ld bc, $1111
	ld bc, $2120

jr_01a_5e84:
	ld bc, $3211
	inc sp
	ld de, $1701
	jr @+$03

	ld de, $1817
	ld de, $1101

jr_01a_5e93:
	ld bc, $1101
	ld c, $0f
	ld de, $1e01
	rra
	ld bc, $3211
	inc sp
	ld de, $1101
	ld bc, $0f0e
	ld bc, $1e11
	rra
	ld de, $3201
	inc sp
	ld bc, $0011
	nop
	nop
	nop
	nop
	nop
	ld c, $0f
	ld de, $1e01
	rra
	ld bc, $3211
	inc sp
	nop
	nop
	nop
	nop
	ld c, $0f
	nop
	nop
	ld e, $1f
	ld de, $3201
	inc sp
	ld bc, $1711
	jr jr_01a_5ee4

	ld bc, $1817
	ld bc, $2011
	ld hl, $2120
	ld [hld], a
	inc sp
	ld [hld], a
	inc sp
	add hl, bc
	ld [$2120], sp

jr_01a_5ee4:
	ld [hld], a
	inc sp
	ld [hld], a
	inc sp
	ld de, $1101
	ld bc, $1101
	ld bc, $2011
	ld hl, $0907
	ld [hld], a
	inc sp
	ld [hld], a
	inc sp
	ld de, $1101
	ld bc, $1101
	ld bc, $3a11
	ld a, [hld]
	dec l
	dec a
	ld a, [hld]
	dec l
	dec a
	ld a, [hld]
	dec l
	dec a
	ld a, [hld]
	ld a, [hld]
	dec a
	ld a, [hld]
	ld a, [hld]
	dec l
	ld a, [hld]
	ld a, [hld]
	dec l
	ld a, $3a
	dec l
	dec a
	ld a, $2d
	dec a
	ld a, [hld]
	ld a, $3d
	ld a, [hld]
	ld a, [hld]
	ld a, $3e
	ld a, [hld]
	dec l
	dec a
	ld a, $2d
	dec a
	ld a, [hld]
	ld a, $3d
	ld a, [hld]
	ld a, [hld]
	ld a, $3a
	ld a, [hld]
	dec l
	ld de, $2401
	inc h
	ld bc, $3411
	inc [hl]
	ld de, $3901
	add hl, sp
	ld bc, $0111
	ld de, $2424
	ld de, $3401
	inc [hl]
	ld bc, $3911
	add hl, sp
	ld de, $0101
	ld de, $1101
	ld de, $0201
	inc bc
	ld bc, $1211
	inc de
	ld de, $1101
	ld bc, $1101
	ld bc, $1111
	ld bc, $0111
	ld bc, $0111
	ld de, $0111
	ld a, [bc]
	dec bc
	ld bc, $1a11
	dec de

	db $05, $06, $11, $01, $15, $16, $01, $11, $25, $26, $11, $01, $35, $36, $01, $11

	ld [bc], a
	inc bc
	ld de, $1201
	inc de
	ld bc, $1111
	ld bc, $0111
	ld bc, $0111
	ld de, $4848
	ld c, b
	ld c, b
	ld c, d
	ld c, d
	ld c, d
	ld c, d
	ld de, $1101
	ld bc, $1101
	ld bc, $4811
	ld c, b
	ld c, b
	ld c, b
	ld c, d
	ld c, d
	ld c, d
	ld c, d
	ld b, b
	ld b, c
	ld b, d
	ld b, e
	ld d, b
	ld d, c
	ld d, d
	ld d, d
	ld c, b
	ld c, b
	ld c, b
	ld c, b
	ld c, d
	ld c, d
	ld c, d
	ld c, d
	ld b, h
	ld b, l
	ld de, $5401
	ld d, l
	ld bc, $5611
	ld d, a
	ld e, b
	ld e, c
	ld [hld], a
	inc sp
	ld [hld], a
	inc sp
	ld de, $1101
	ld bc, $1101
	ld bc, $1111
	ld bc, $2827
	ld bc, $3011
	ld b, [hl]
	ld de, $3101
	inc a
	ld bc, $3211
	inc sp
	jr z, jr_01a_600a

	jr z, @+$2a

	ld b, a
	ld a, [hld]
	ld a, [hld]
	ld b, [hl]
	ld d, e
	ccf
	inc a
	inc a
	ld [hld], a
	inc sp
	ld [hld], a
	inc sp
	ld [bc], a
	inc bc
	ld de, $1201
	inc de
	ld bc, $0211
	inc bc
	ld de, $1201
	inc de
	ld bc, $4811
	ld c, b
	ld c, b
	ld c, b
	ld c, d
	ld c, d
	rlca
	ld [$0111], sp

jr_01a_600a:
	rla
	jr @+$03

	ld de, $1817
	ld de, $1101
	ld bc, $1101
	ld bc, $1111
	ld bc, $2827
	ld bc, $3011
	ld b, [hl]
	ld de, $1101
	ld bc, $1101
	ld bc, $2811
	jr z, @+$2a

	jr z, jr_01a_6074

	ld a, [hld]
	ld a, [hld]
	ld b, [hl]
	rla
	jr jr_01a_6044

	ld bc, $1817
	ld bc, $1711
	jr @+$13

	ld bc, $1817
	ld bc, $1111
	ld bc, $0111

jr_01a_6044:
	ld bc, $0111
	ld de, $0807
	ld de, $1701
	jr @+$03

	ld de, $0111
	ld sp, $013c
	ld de, $3332
	ld de, $1101
	ld bc, $1101
	ld bc, $5311
	ccf
	inc a
	inc a
	ld [hld], a
	inc sp
	ld [hld], a
	inc sp
	ld de, $1101
	ld bc, $1101
	ld bc, $1111
	ld bc, $1817

jr_01a_6074:
	ld bc, $1711
	jr @+$13

	ld bc, $1817
	ld bc, $3211
	inc sp
	ld e, d
	ld e, e
	ld de, $3201
	inc sp
	ld bc, $1111
	ld bc, $0111
	ld bc, $0111
	ld de, $0111
	rla
	jr @+$03

	ld de, $1817
	ld de, $1701
	jr @+$03

	ld de, $1817
	rlca
	ld [$0807], sp
	ld [hli], a
	inc hl
	ld [hli], a
	inc hl
	ld [hli], a
	inc hl
	ld [hli], a
	inc hl
	ld [hli], a
	inc hl
	ld [hli], a
	inc hl
	ld [bc], a
	inc bc
	ld de, $1201
	inc de
	ld bc, $0211
	inc bc
	ld de, $1201
	inc de
	ld bc, $4c11
	ld c, l
	ld de, $5c01
	ld e, l
	ld bc, $1111
	ld bc, $0111
	ld bc, $0111
	ld de, $4848
	ld c, [hl]
	ld c, a
	ld c, d
	ld c, d
	ld c, d
	ld c, d
	ld de, $1101
	ld bc, $1101
	ld bc, $1111
	ld bc, $0111
	ld bc, $0111
	ld de, $0909
	add hl, bc
	add hl, bc
	ld [hld], a
	inc sp
	ld [hld], a
	inc sp
	ld de, $1101
	ld bc, $1101
	ld bc, $1111
	ld bc, $0d0c
	ld bc, $1c11
	dec e
	jr z, jr_01a_611b

	ld de, $4701
	inc l
	ld bc, $3c11
	inc l
	ld de, $3201
	inc sp
	ld bc, $1111
	ld bc, $0111
	ld bc, $0111
	ld de, $0909
	add hl, bc

jr_01a_611b:
	ld [$3332], sp
	ld [hld], a
	inc sp
	ld de, $1101
	ld bc, $1101
	ld bc, $0711
	add hl, bc
	add hl, bc
	add hl, bc
	ld [hld], a
	inc sp
	ld [hld], a
	inc sp
	ld de, $1101
	ld bc, $1101
	ld bc, $1111
	ld bc, $0b0a
	ld bc, $1a11
	dec de
	ld de, $1101
	ld bc, $1101
	ld bc, $2811
	add hl, de
	ld de, $4701
	inc l
	ld bc, $1111
	ld bc, $2827
	ld bc, $3011
	ld l, $11
	ld bc, $3c31
	ld bc, $3211
	inc sp
	jr z, @+$2a

	jr z, jr_01a_618c

	ld l, $3a
	ld a, [hld]
	ld l, $53
	ccf
	inc a
	inc a
	ld [hld], a
	inc sp
	ld [hld], a
	inc sp
	jr z, @+$1b

	ld de, $2e01
	inc l
	ld bc, $3c11
	inc l
	ld de, $3201
	inc sp
	ld bc, $3c11
	inc l
	ld de, $3201
	inc sp
	ld bc, $1111
	ld bc, $0111

jr_01a_618c:
	ld bc, $0111
	db $11

	db $48, $48, $48, $48, $4a, $4a, $4a, $4a, $11, $01, $11, $01, $01, $11, $01, $11

	dec hl
	add hl, hl
	dec hl
	add hl, hl
	dec sp
	ld a, [hli]
	dec sp
	ld a, [hli]
	ld de, $1101
	ld bc, $1101
	db $01
	db $11

	db $48, $48, $48, $48, $4a, $4a, $4a, $4a, $11, $01, $11, $01, $01, $11, $01, $11
	db $48, $48, $48, $48, $4a, $4a, $4a, $4a, $11, $01, $11, $01, $01, $11, $01, $11
	db $11, $01, $11, $01, $01, $11, $01, $11, $07, $08, $11, $01, $17, $18, $01, $11
	db $17, $18, $11, $01, $32, $33, $01, $11, $11, $01, $11, $01, $01, $11, $01, $11
	db $07, $08, $11, $01, $17, $18, $01, $11, $17, $18, $11, $01, $32, $33, $01, $11
	db $07, $08, $05, $06, $17, $18, $15, $16, $17, $18, $25, $26, $32, $33, $35, $36
	db $11, $01, $05, $06, $01, $11, $15, $16, $07, $08, $25, $26, $17, $18, $35, $36
	db $17, $18, $05, $06, $32, $33, $15, $16, $11, $01, $25, $26, $01, $11, $35, $36

	ld e, [hl]
	ld e, [hl]
	ld de, $3801
	jr c, @+$03

	ld de, $3838
	ld de, $5e01
	ld e, [hl]
	ld bc, $1111
	ld bc, $5e5e
	ld bc, $3811
	jr c, jr_01a_625a

	ld bc, $3838
	ld bc, $5e11
	ld e, [hl]
	db $10
	db $10
	db $10
	db $10
	db $10
	db $10
	db $10
	db $10
	jr nz, @+$23

jr_01a_625a:
	jr nz, @+$23

	ld [hld], a
	inc sp
	ld [hld], a
	inc sp
	ld de, $1701
	jr @+$03

	ld de, $3332
	jr c, jr_01a_62a1

	ld de, $3801
	scf
	ld bc, $3811
	scf
	ld de, $3801
	scf
	ld bc, $1111
	ld bc, $0807
	ld bc, $1711
	jr jr_01a_6292

	ld bc, $3837
	ld bc, $3711
	jr c, @+$09

	ld [$0111], sp
	rla
	jr @+$03

	ld de, $1817

jr_01a_6292:
	ld de, $3201
	inc sp
	ld bc, $1111
	ld bc, $3837
	ld bc, $3711
	jr c, @+$13

jr_01a_62a1:
	ld bc, $3838
	ld bc, $5e11
	ld e, [hl]
	add hl, bc
	ld [$0111], sp
	ld [hld], a
	inc sp
	ld bc, $3811
	jr c, jr_01a_62c4

	ld bc, $5e5e
	ld bc, $1111
	ld bc, $0907
	ld bc, $3211
	inc sp
	add hl, bc
	ld [$0111], sp

jr_01a_62c4:
	ld [hld], a
	inc sp
	ld bc, $1111
	ld bc, $5e5e
	ld bc, $3811
	jr c, jr_01a_62e2

	ld bc, $0907
	ld bc, $3211
	inc sp
	ld e, [hl]
	ld e, [hl]
	ld de, $3801
	jr c, @+$03

	ld de, $3837

jr_01a_62e2:
	jr c, jr_01a_631b

	scf
	jr c, @+$3a

	scf
	ld de, $1101
	ld bc, $1101
	ld bc, $1111
	ld bc, $0111
	ld bc, $0111
	ld de, $3837
	jr c, jr_01a_6333

	scf
	jr c, jr_01a_6337

	scf

	db $48, $48, $2b, $29, $4a, $4a, $3b, $2a, $11, $01, $11, $01, $01, $11, $01, $11

	ld de, $0501
	ld b, $01
	ld de, $1615
	ld de, $2501

jr_01a_631b:
	ld h, $01
	ld de, $3635
	ld h, h
	ld h, l
	ld h, [hl]
	ld h, a
	ld [hl], h
	ld [hl], l
	db $76
	ld [hl], a
	add h
	add l
	add [hl]
	add a
	sub h
	sub l
	sub [hl]
	sub a
	ld l, b
	ld l, c
	ld l, d

jr_01a_6333:
	ld l, e
	ld a, b
	ld a, c
	ld a, d

jr_01a_6337:
	ld a, e
	adc b
	adc c
	adc d
	adc e
	sbc b
	sbc c
	sbc d
	sbc e
	ld l, b
	ld l, c
	ld l, d
	ld l, e
	ld a, b
	ld a, c
	ld a, d
	ld a, e
	adc b
	adc c
	adc d
	adc e
	sbc b
	sbc c
	sbc d
	sbc e
	ld h, b
	ld h, c
	ld h, d
	ld h, e
	ld [hl], b
	ld [hl], c
	ld [hl], d
	ld [hl], e
	add b
	add c
	add d
	add e
	sub b
	sub c
	sub d
	sub e
	ld h, h
	ld h, l
	ld h, [hl]
	ld h, a
	ld [hl], h
	ld [hl], l
	db $76
	ld [hl], a
	add h
	add l
	add [hl]
	add a
	sub h
	sub l
	sub [hl]
	sub a
	ld l, b
	ld l, c
	ld l, d
	ld l, e
	ld a, b
	ld a, c
	ld a, d
	ld a, e
	adc b
	adc c
	adc d
	adc e
	sbc b
	sbc c
	sbc d
	sbc e
	ld l, h
	ld l, l
	ld l, [hl]
	ld l, a
	ld a, h
	ld a, l
	ld a, [hl]
	ld a, a
	adc h
	adc l
	adc [hl]
	adc a
	sbc h
	sbc l
	sbc [hl]
	sbc a
	and b
	and c
	and d
	and e
	or b
	or c
	or d
	or e
	ret nz

	pop bc
	jp nz, wd0c3

	pop de
	jp nc, $a4d3

	and l
	and [hl]
	and a
	or h
	or l
	or [hl]
	or a
	call nz, wc6c5
	rst $00
	call nc, wd6d5
	rst $10
	xor b
	xor c
	xor d
	xor e
	cp b
	cp c
	cp d
	cp e
	ret z

	ret


	jp z, wd8cb

	reti


	jp c, $acdb

	xor l
	xor [hl]
	xor a
	cp h
	cp l
	cp [hl]
	cp a
	call z, wcecd
	rst $08
	call c, wdedd
	rst $18

	INCBIN "gfx/auto/image_01a_63d0.2bpp"

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

	db $34, $20, $20, $20, $20, $20, $20, $34, $20, $34, $20, $20, $20, $20, $20, $34
	db $04, $05, $06, $07, $23, $15, $16, $17, $24, $25, $26, $27, $00, $35, $36, $30
	db $33, $33, $33, $33, $33, $33, $33, $33, $33, $33, $33, $33, $33, $33, $33, $33

	jr nz, @+$22

	jr nz, @+$22

	jr nz, @+$22

	jr nz, @+$22

	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [de], a
	inc de
	ld [de], a
	inc de
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [de], a
	inc de
	ld [de], a
	inc de
	jr nz, @+$22

	jr nz, @+$22

	jr nz, @+$22

	jr nz, jr_01a_6a50

	db $02, $03, $20, $20, $12, $13, $20, $20, $02, $03, $20, $20, $12, $13, $20, $20
	db $20, $20, $02, $03, $20, $20, $12, $13, $20, $20, $02, $03, $20, $20, $12, $13

jr_01a_6a50:
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [de], a
	inc de
	ld [de], a
	inc de
	ld [bc], a
	inc bc
	jr nz, jr_01a_6a7c

	ld [de], a
	inc de
	jr nz, jr_01a_6a80

	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [de], a
	inc de
	ld [de], a
	inc de
	jr nz, jr_01a_6a8a

	ld [bc], a
	inc bc
	jr nz, jr_01a_6a8e

	ld [de], a
	inc de
	ld [bc], a
	inc bc
	jr nz, jr_01a_6a94

	ld [de], a
	inc de
	jr nz, jr_01a_6a98

	ld [bc], a
	inc bc
	ld [bc], a
	inc bc

jr_01a_6a7c:
	ld [de], a
	inc de
	ld [de], a
	inc de

jr_01a_6a80:
	jr nz, jr_01a_6aa2

	ld [bc], a
	inc bc
	jr nz, jr_01a_6aa6

	ld [de], a
	inc de
	ld [bc], a
	inc bc

jr_01a_6a8a:
	ld [bc], a
	inc bc
	ld [de], a
	inc de

jr_01a_6a8e:
	ld [de], a
	inc de
	jr nz, jr_01a_6ab2

	jr nz, jr_01a_6ab4

jr_01a_6a94:
	jr nz, jr_01a_6ab6

	jr nz, jr_01a_6ab8

jr_01a_6a98:
	ld [bc], a
	inc bc
	jr nz, jr_01a_6abc

	ld [de], a
	inc de
	jr nz, jr_01a_6ac0

	jr nz, jr_01a_6ac2

jr_01a_6aa2:
	jr nz, jr_01a_6ac4

	jr nz, jr_01a_6ac6

jr_01a_6aa6:
	jr nz, jr_01a_6ac8

	jr nz, jr_01a_6aca

	ld [bc], a
	inc bc
	jr nz, jr_01a_6ace

	ld [de], a
	inc de
	ld [bc], a
	inc bc

jr_01a_6ab2:
	jr nz, jr_01a_6ad4

jr_01a_6ab4:
	ld [de], a
	inc de

jr_01a_6ab6:
	jr nz, jr_01a_6ad8

jr_01a_6ab8:
	jr nz, jr_01a_6ada

	jr nz, jr_01a_6adc

jr_01a_6abc:
	jr nz, jr_01a_6ade

	jr nz, jr_01a_6ae0

jr_01a_6ac0:
	jr nz, jr_01a_6ae2

jr_01a_6ac2:
	ld [bc], a
	inc bc

jr_01a_6ac4:
	jr nz, jr_01a_6ae6

jr_01a_6ac6:
	ld [de], a
	inc de

jr_01a_6ac8:
	jr nz, jr_01a_6aea

jr_01a_6aca:
	jr nz, jr_01a_6aec

	jr nz, jr_01a_6aee

jr_01a_6ace:
	jr nz, jr_01a_6af0

	jr nz, jr_01a_6af2

	jr nz, jr_01a_6af4

jr_01a_6ad4:
	jr nz, jr_01a_6af6

	jr nz, jr_01a_6af8

jr_01a_6ad8:
	jr nz, jr_01a_6afa

jr_01a_6ada:
	ld d, h
	ld d, l

jr_01a_6adc:
	jr nz, jr_01a_6afe

jr_01a_6ade:
	ld d, [hl]
	ld d, a

jr_01a_6ae0:
	jr nz, jr_01a_6b02

jr_01a_6ae2:
	jr nz, jr_01a_6b04

	jr nz, jr_01a_6b06

jr_01a_6ae6:
	jr nz, jr_01a_6b08

	ld d, h
	ld d, l

jr_01a_6aea:
	jr nz, jr_01a_6b0c

jr_01a_6aec:
	ld d, [hl]
	ld d, a

jr_01a_6aee:
	jr nz, @+$22

jr_01a_6af0:
	jr nz, @+$22

jr_01a_6af2:
	ld d, h
	ld d, l

jr_01a_6af4:
	jr nz, @+$22

jr_01a_6af6:
	ld d, [hl]
	ld d, a

jr_01a_6af8:
	jr nz, @+$22

jr_01a_6afa:
	jr nz, @+$22

	jr nz, @+$22

jr_01a_6afe:
	jr nz, @+$22

	ld d, h
	ld d, l

jr_01a_6b02:
	jr nz, @+$22

jr_01a_6b04:
	ld d, [hl]
	ld d, a

jr_01a_6b06:
	jr nz, @+$22

jr_01a_6b08:
	jr nz, @+$22

	jr nz, @+$22

jr_01a_6b0c:
	jr nz, @+$22

	jr nz, @+$22

	db $30, $30, $30, $30, $30, $30, $30, $30, $04, $05, $06, $07, $23, $15, $16, $17
	db $30, $30, $02, $03, $30, $30, $12, $13, $21, $22, $02, $03, $31, $32, $12, $13
	db $21, $22, $20, $20, $31, $32, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20

	jr nc, jr_01a_6b72

	jr nc, jr_01a_6b74

	jr nc, jr_01a_6b76

	jr nc, jr_01a_6b78

	ld b, d
	ld b, d
	ld b, d
	ld b, d
	ld b, e
	ld b, e
	ld b, e
	ld b, e

	db $24, $25, $26, $27, $00, $35, $36, $30, $30, $30, $30, $30, $30, $30, $30, $30

	ld [$0909], sp
	add hl, bc
	jr jr_01a_6b7f

	add hl, de
	add hl, de
	jr z, jr_01a_6b93

	ld a, [hli]
	dec hl
	jr c, jr_01a_6b97

	ld a, [hld]
	dec sp
	add hl, bc
	add hl, bc

jr_01a_6b72:
	add hl, bc
	inc c

jr_01a_6b74:
	add hl, de
	add hl, de

jr_01a_6b76:
	add hl, de
	inc e

jr_01a_6b78:
	db $10
	ld de, $2c29
	add hl, hl
	add hl, hl
	add hl, hl

jr_01a_6b7f:
	inc a

	db $30, $30, $30, $30, $30, $30, $30, $30, $30, $30, $30, $30, $30, $30, $30, $30

	add hl, bc
	add hl, bc
	add hl, bc

jr_01a_6b93:
	inc c
	add hl, de
	add hl, de
	add hl, de

jr_01a_6b97:
	inc e
	ld bc, $2901
	inc l
	add hl, hl
	add hl, hl
	add hl, hl
	inc a
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [de], a
	inc de
	ld [de], a
	inc de
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [de], a
	inc de
	ld [de], a
	inc de
	jr nc, @+$32

	jr nc, @+$32

	jr nc, @+$32

	jr nc, @+$32

	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [de], a
	inc de
	ld [de], a
	inc de
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [de], a
	inc de
	ld [de], a
	inc de
	jr nc, jr_01a_6bfa

	jr nc, jr_01a_6bfc

	jr nc, jr_01a_6bfe

	jr nc, jr_01a_6c00

	ld e, [hl]
	ld e, [hl]
	ld e, [hl]
	ld e, [hl]
	inc [hl]
	inc [hl]
	ld e, [hl]
	ld e, [hl]
	ld e, [hl]
	inc [hl]
	inc [hl]
	ld e, [hl]
	ld e, [hl]
	ld e, [hl]
	ld e, [hl]
	ld e, [hl]

	db $21, $22, $30, $30, $31, $32, $30, $30, $30, $30, $30, $30, $30, $30, $30, $30

	jr nz, jr_01a_6c12

	jr nc, jr_01a_6c24

	jr nz, jr_01a_6c16

	jr nc, jr_01a_6c28

	jr nz, jr_01a_6c1a

jr_01a_6bfa:
	jr nz, jr_01a_6c1c

jr_01a_6bfc:
	jr nz, jr_01a_6c1e

jr_01a_6bfe:
	jr nz, jr_01a_6c20

jr_01a_6c00:
	jr nc, jr_01a_6c32

	jr nz, jr_01a_6c24

	jr nc, jr_01a_6c36

	jr nz, jr_01a_6c28

	jr nz, jr_01a_6c2a

	jr nz, jr_01a_6c2c

	jr nz, jr_01a_6c2e

	jr nz, jr_01a_6c30

	jr nz, jr_01a_6c32

jr_01a_6c12:
	jr nz, jr_01a_6c34

	jr nz, jr_01a_6c36

jr_01a_6c16:
	jr nz, jr_01a_6c38

	jr nz, jr_01a_6c3a

jr_01a_6c1a:
	jr nc, jr_01a_6c4c

jr_01a_6c1c:
	jr nz, jr_01a_6c3e

jr_01a_6c1e:
	jr nc, jr_01a_6c50

jr_01a_6c20:
	jr nz, jr_01a_6c42

	jr nz, jr_01a_6c44

jr_01a_6c24:
	jr nz, jr_01a_6c46

	jr nz, jr_01a_6c48

jr_01a_6c28:
	jr nc, jr_01a_6c5a

jr_01a_6c2a:
	jr nz, jr_01a_6c4c

jr_01a_6c2c:
	jr nc, jr_01a_6c5e

jr_01a_6c2e:
	jr nz, jr_01a_6c50

jr_01a_6c30:
	jr nc, @+$32

jr_01a_6c32:
	jr nc, @+$32

jr_01a_6c34:
	jr nc, @+$32

jr_01a_6c36:
	ld a, [bc]
	dec bc

jr_01a_6c38:
	ld b, d
	ld b, d

jr_01a_6c3a:
	ld a, [de]
	dec de
	ld b, e
	ld b, e

jr_01a_6c3e:
	ld c, e
	ld c, h
	jr nc, jr_01a_6c72

jr_01a_6c42:
	jr nc, jr_01a_6c74

jr_01a_6c44:
	ld a, [bc]
	dec bc

jr_01a_6c46:
	jr nc, jr_01a_6c78

jr_01a_6c48:
	ld a, [de]
	dec de
	ld b, d
	ld b, d

jr_01a_6c4c:
	ld c, e
	ld c, h
	ld b, e
	ld b, e

jr_01a_6c50:
	ld e, [hl]
	ld e, [hl]
	ld e, [hl]
	ld e, [hl]
	ld e, [hl]
	ld e, [hl]
	ld e, [hl]
	ld e, [hl]
	ld e, [hl]
	ld e, [hl]

jr_01a_6c5a:
	ld e, [hl]
	ld e, [hl]
	ld e, [hl]
	ld e, [hl]

jr_01a_6c5e:
	ld e, [hl]
	ld e, [hl]

	db $30, $30, $30, $30, $30, $30, $30, $30, $30, $30, $30, $30, $30, $30, $37, $30

	jr nc, jr_01a_6ca2

jr_01a_6c72:
	jr nc, jr_01a_6ca4

jr_01a_6c74:
	ld a, [bc]
	dec bc
	jr nc, jr_01a_6ca8

jr_01a_6c78:
	ld a, [de]
	dec de
	jr nc, jr_01a_6cac

	ld c, e
	ld c, h
	jr nc, jr_01a_6cb0

	jr nc, jr_01a_6cb2

	jr nc, jr_01a_6cb4

	jr nc, jr_01a_6cb6

	ld a, [bc]
	dec bc
	jr nc, jr_01a_6cba

	ld a, [de]
	dec de
	jr nc, jr_01a_6cbe

	ld c, e
	ld c, h
	jr nc, @+$32

	jr nc, @+$32

	add hl, sp
	ld e, a
	jr nc, jr_01a_6cc8

	jr nc, jr_01a_6cca

	jr nc, jr_01a_6ccc

	jr nc, jr_01a_6cce

	jr nc, jr_01a_6cd0

	inc d
	inc d

jr_01a_6ca2:
	inc d
	inc d

jr_01a_6ca4:
	inc d
	inc d
	inc d
	inc d

jr_01a_6ca8:
	inc d
	inc d
	inc d
	inc d

jr_01a_6cac:
	inc d
	inc d
	inc d
	inc d

jr_01a_6cb0:
	jr nc, jr_01a_6ce2

jr_01a_6cb2:
	jr nc, jr_01a_6ce4

jr_01a_6cb4:
	jr nc, jr_01a_6ced

jr_01a_6cb6:
	jr nc, jr_01a_6ce8

	jr nc, jr_01a_6cea

jr_01a_6cba:
	add hl, sp
	ld e, a
	jr nc, jr_01a_6cee

jr_01a_6cbe:
	jr nc, jr_01a_6cf0

	inc [hl]
	jr nz, jr_01a_6ce3

	jr nz, jr_01a_6ce5

	jr nz, jr_01a_6ce7

	inc [hl]

jr_01a_6cc8:
	jr nz, jr_01a_6cfe

jr_01a_6cca:
	jr nz, jr_01a_6cec

jr_01a_6ccc:
	jr nz, jr_01a_6cee

jr_01a_6cce:
	jr nz, jr_01a_6d04

jr_01a_6cd0:
	jr nz, jr_01a_6cf2

	ld c, l
	inc d
	jr nz, jr_01a_6cf6

	ld c, b
	inc d
	jr nz, jr_01a_6cfa

	jr nz, jr_01a_6cfc

	jr nz, jr_01a_6cfe

	jr nz, jr_01a_6d00

	inc d
	inc d

jr_01a_6ce2:
	inc d

jr_01a_6ce3:
	inc d

jr_01a_6ce4:
	inc d

jr_01a_6ce5:
	inc d
	inc d

jr_01a_6ce7:
	inc d

jr_01a_6ce8:
	ld c, l
	inc d

jr_01a_6cea:
	inc d
	ld c, [hl]

jr_01a_6cec:
	ld c, b

jr_01a_6ced:
	inc d

jr_01a_6cee:
	inc d
	ld c, d

jr_01a_6cf0:
	inc d
	ld c, [hl]

jr_01a_6cf2:
	jr nz, jr_01a_6d14

	inc d
	ld c, d

jr_01a_6cf6:
	jr nz, jr_01a_6d18

	jr nz, jr_01a_6d1a

jr_01a_6cfa:
	jr nz, jr_01a_6d1c

jr_01a_6cfc:
	jr nz, jr_01a_6d1e

jr_01a_6cfe:
	jr nz, jr_01a_6d20

jr_01a_6d00:
	jr nc, jr_01a_6d32

	jr nc, jr_01a_6d34

jr_01a_6d04:
	jr nc, jr_01a_6d36

	jr nc, jr_01a_6d38

	jr nc, jr_01a_6d3a

	ld hl, $3022
	jr nc, @+$33

	ld [hld], a
	jr nc, @+$32

	jr nc, @+$32

jr_01a_6d14:
	jr nc, @+$32

	jr nc, @+$32

jr_01a_6d18:
	jr nc, @+$32

jr_01a_6d1a:
	ld [bc], a
	inc bc

jr_01a_6d1c:
	jr nc, @+$32

jr_01a_6d1e:
	ld [de], a
	inc de

jr_01a_6d20:
	jr nc, jr_01a_6d52

	jr nc, jr_01a_6d54

	jr nc, jr_01a_6d56

	jr nc, jr_01a_6d58

	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [de], a
	inc de
	ld [de], a
	inc de
	jr nc, @+$32

jr_01a_6d32:
	jr nc, @+$32

jr_01a_6d34:
	jr nc, @+$32

jr_01a_6d36:
	jr nc, @+$32

jr_01a_6d38:
	ld [bc], a
	inc bc

jr_01a_6d3a:
	jr nc, @+$32

	ld [de], a
	inc de
	jr nc, jr_01a_6d70

	db $02, $03, $30, $30, $12, $13, $30, $30, $02, $03, $30, $30, $12, $13, $30, $30

	jr nc, @+$32

jr_01a_6d52:
	ld [bc], a
	inc bc

jr_01a_6d54:
	jr nc, @+$32

jr_01a_6d56:
	ld [de], a
	inc de

jr_01a_6d58:
	jr nc, @+$32

	jr nc, @+$32

	jr nc, @+$32

	jr nc, jr_01a_6d90

	db $02, $03, $02, $03, $12, $13, $12, $13, $30, $30, $30, $30, $30, $30, $30, $30

jr_01a_6d70:
	ld [bc], a
	inc bc
	jr nc, jr_01a_6da4

	ld [de], a
	inc de
	jr nc, jr_01a_6da8

	jr nc, jr_01a_6daa

	jr nc, jr_01a_6dac

	jr nc, jr_01a_6dae

	jr nc, jr_01a_6db0

	db $30, $30, $02, $03, $30, $30, $12, $13, $30, $30, $02, $03, $30, $30, $12, $13

jr_01a_6d90:
	jr nc, @+$1f

	ld e, $1e
	dec e
	dec l
	ld l, $2e
	dec l
	dec l
	ld l, $2e
	dec l
	dec l
	ld l, $2e
	ld e, $1e
	ld e, $1e

jr_01a_6da4:
	ld l, $2e
	ld l, $2e

jr_01a_6da8:
	ld l, $2e

jr_01a_6daa:
	ld l, $2e

jr_01a_6dac:
	ld l, $2e

jr_01a_6dae:
	ld l, $2e

jr_01a_6db0:
	ld e, $1e
	rra
	jr nc, @+$30

	ld l, $2f
	rra
	ld l, $2e
	cpl
	cpl
	ld l, $2e
	cpl
	cpl
	ld l, $2e
	ld l, $2e
	ld l, $2e
	ld l, $2e
	ld a, $0e
	ld l, $2e
	ld c, $2d
	ld l, $2e
	dec l
	dec l
	ld l, $2e
	dec l
	dec l
	ld l, $2e
	dec l
	dec l
	ld l, $2e
	dec l
	dec l
	ld l, $2e
	ld l, $2e
	ld l, $2e
	ld l, $2e
	ld l, $2e
	ld l, $2e
	ld l, $2e
	ld l, $2e
	ld l, $2e
	ld l, $2e
	cpl
	cpl
	ld l, $2e
	cpl
	cpl
	ld l, $2e
	cpl
	cpl
	ld l, $2e
	cpl
	cpl
	ld l, $2e
	ld l, $2e
	ld l, $2e
	ld l, $2e
	ld l, $2e
	rrca
	ld a, $2e
	ld l, $2f
	rrca
	dec l
	dec l
	ld l, $2e
	dec l
	dec l
	ld l, $2e
	dec l
	dec a
	ld a, $3e
	dec a
	ld a, $3e
	ld a, $2e
	ld l, $2e
	ld l, $2e
	ld l, $2e
	ld l, $3e
	ld a, $3e
	ld a, $3e
	ld a, $3e
	ld a, $2e
	ld l, $2f
	cpl
	ld l, $2e
	cpl
	cpl
	ld a, $3e
	ccf
	cpl
	ld a, $3e
	ld a, $3f
	ld l, $2e
	ld l, $2e
	ld l, $2e
	ld l, $2e
	ld b, b
	ld b, c
	ld a, $3e
	ld b, b
	ld b, c
	ld a, $3e
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [de], a
	inc de
	ld [de], a
	inc de
	ld [bc], a
	inc bc
	jr nc, jr_01a_6e8c

	ld [de], a
	inc de
	jr nc, jr_01a_6e90

	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [de], a
	inc de
	ld [de], a
	inc de
	jr nc, jr_01a_6e9a

	ld [bc], a
	inc bc
	jr nc, jr_01a_6e9e

	ld [de], a
	inc de
	ld e, $1e
	ld l, $2e
	ld l, $2e
	ld l, $2e
	ld l, $2e
	ld l, $2e
	ld l, $2e
	ld l, $2e
	ld l, $2e
	ld e, $1e
	ld l, $2e
	ld l, $2e
	ld l, $2e
	ld l, $2e

jr_01a_6e8c:
	ld l, $2e
	ld l, $2e

jr_01a_6e90:
	ld [bc], a
	inc bc
	jr nc, jr_01a_6ec4

	ld [de], a
	inc de
	jr nc, jr_01a_6ec8

	ld [bc], a
	inc bc

jr_01a_6e9a:
	ld [bc], a
	inc bc
	ld [de], a
	inc de

jr_01a_6e9e:
	ld [de], a
	inc de
	jr nc, jr_01a_6ed2

	ld [bc], a
	inc bc
	jr nc, jr_01a_6ed6

	ld [de], a
	inc de
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [de], a
	inc de
	ld [de], a
	inc de
	ld e, $1e
	rra
	jr nc, jr_01a_6ee3

	ld l, $2f
	rra
	ld hl, $2f22
	cpl
	ld sp, $2f32
	cpl
	ld c, c
	inc d
	inc d
	inc d

jr_01a_6ec4:
	inc d
	inc d
	inc d
	inc d

jr_01a_6ec8:
	inc d
	inc d
	inc d
	inc d
	inc d
	inc d
	inc d
	inc d
	jr nc, jr_01a_6f02

jr_01a_6ed2:
	ld c, c
	ld c, c
	jr nc, jr_01a_6f06

jr_01a_6ed6:
	ld c, b
	inc d
	jr nc, jr_01a_6f0a

	ld c, b
	inc d
	jr nc, jr_01a_6f0e

	ld c, b
	inc d
	ld c, c
	ld c, c
	ld c, c

jr_01a_6ee3:
	ld c, c
	inc d
	inc d
	inc d
	inc d
	inc d
	inc d
	inc d
	inc d
	inc d
	inc d
	inc d
	inc d
	ld c, c
	ld c, c
	ld c, c
	ld c, c
	inc d
	inc d
	inc d
	ld c, d
	inc d
	inc d
	inc d
	ld c, d
	inc d
	inc d
	inc d
	ld c, d
	ld l, $2e

jr_01a_6f02:
	ld l, $2e
	ld l, $2e

jr_01a_6f06:
	ld l, $2e
	ld a, $3e

jr_01a_6f0a:
	ld b, b
	ld b, c
	ld a, $3e

jr_01a_6f0e:
	ld b, b
	ld b, c
	jr nc, @+$32

	ld c, b
	inc d
	jr nc, @+$32

	ld c, b
	inc d
	jr nc, jr_01a_6f4a

	ld c, b
	inc d
	jr nc, jr_01a_6f4e

	ld c, b
	inc d
	ld c, l
	inc d
	inc d
	inc d
	ld c, b
	inc d
	inc d
	inc d
	ld c, b
	inc d
	inc d
	inc d
	ld c, b
	inc d
	inc d
	inc d
	jr nc, jr_01a_6f62

	jr nc, jr_01a_6f64

	ld d, d
	jr nc, @+$32

	jr nc, jr_01a_6f8b

	jr nc, @+$32

	jr nc, @+$32

	jr nc, jr_01a_6f6f

	jr nc, jr_01a_6f71

	jr nc, jr_01a_6f73

	jr nc, jr_01a_6f75

	jr nc, jr_01a_6f77

	ld d, e
	jr nc, jr_01a_6f7a

jr_01a_6f4a:
	jr nc, jr_01a_6f9f

	jr nc, jr_01a_6f7e

jr_01a_6f4e:
	jr nc, jr_01a_6f80

	db $30, $50, $50, $30, $30, $30, $30, $30, $30, $30, $30, $30, $30, $30, $30, $30

	jr nc, jr_01a_6f92

jr_01a_6f62:
	jr nc, jr_01a_6f94

jr_01a_6f64:
	jr nc, jr_01a_6f96

	jr nc, jr_01a_6f98

	jr nc, jr_01a_6f9a

	jr nc, jr_01a_6f9c

	jr nc, jr_01a_6fbf

	ld d, c

jr_01a_6f6f:
	jr nc, jr_01a_6fb9

jr_01a_6f71:
	inc d
	inc d

jr_01a_6f73:
	inc d
	ld c, b

jr_01a_6f75:
	inc d
	inc d

jr_01a_6f77:
	inc d
	ld c, b
	inc d

jr_01a_6f7a:
	inc d
	inc d
	ld c, b
	inc d

jr_01a_6f7e:
	inc d
	inc d

jr_01a_6f80:
	inc d
	inc d
	inc d
	ld c, d
	inc d
	inc d
	inc d
	ld c, d
	inc d
	inc d
	inc d

jr_01a_6f8b:
	ld c, d
	inc d
	inc d
	inc d
	ld c, d
	ld c, c
	ld c, c

jr_01a_6f92:
	ld c, c
	ld c, c

jr_01a_6f94:
	ld c, b
	inc d

jr_01a_6f96:
	inc d
	inc d

jr_01a_6f98:
	ld c, b
	inc d

jr_01a_6f9a:
	inc d
	inc d

jr_01a_6f9c:
	ld c, b
	inc d
	inc d

jr_01a_6f9f:
	inc d
	inc d
	inc d
	inc d
	ld c, [hl]
	inc d
	inc d
	inc d
	ld c, d
	inc d
	inc d
	inc d
	ld c, d
	inc d
	inc d
	inc d
	ld c, d
	inc d
	inc d
	inc d
	ld c, c
	inc d
	inc d
	inc d
	inc d
	inc d

jr_01a_6fb9:
	inc d
	inc d
	inc d
	inc d
	inc d
	inc d

jr_01a_6fbf:
	inc d
	ld c, b
	inc d
	inc d
	ld c, [hl]
	ld c, b
	inc d
	inc d
	ld c, d
	ld c, b
	inc d
	inc d
	ld c, d
	ld c, b
	inc d
	inc d
	ld c, d
	ld c, c
	inc d
	inc d
	ld c, d
	inc d
	inc d
	inc d
	ld c, d
	inc d
	inc d
	inc d
	ld c, d
	inc d
	inc d
	inc d
	ld c, d
	ld hl, $2e22
	ld l, $31
	ld [hld], a
	ld l, $2e
	ld l, $2e
	rrca
	ld a, $2e
	ld l, $2f
	rrca
	dec e
	ld e, $1e
	rra
	dec l
	ld l, $2e
	cpl
	dec l
	ld l, $2e
	cpl
	dec a
	ld a, $3e
	ccf
	ld b, h
	ld b, l
	ld b, h
	ld b, l
	ld b, [hl]
	ld b, a
	ld b, [hl]
	ld b, a
	ld b, h
	ld b, l
	ld b, h
	ld b, l
	ld b, [hl]
	ld b, a
	ld b, [hl]
	ld b, a
	ld e, b
	ld e, c
	jr nc, jr_01a_7044

	ld e, d
	ld e, e
	jr nc, jr_01a_7048

	jr nc, jr_01a_704a

	jr nc, jr_01a_704c

	jr nc, jr_01a_704e

	jr nc, jr_01a_7050

	jr nc, jr_01a_7052

	jr nc, jr_01a_7054

	jr nc, jr_01a_7056

	jr nc, jr_01a_7058

	ld e, b
	ld e, c
	jr nc, jr_01a_705c

	ld e, d
	ld e, e
	jr nc, jr_01a_7060

	dec c
	ld c, a
	jr nc, jr_01a_7064

	ld e, h
	ld e, l
	jr nc, jr_01a_7068

	jr nc, jr_01a_706a

	jr nc, jr_01a_706c

	jr nc, jr_01a_706e

	jr nc, jr_01a_7070

	jr nc, jr_01a_7072

	jr nc, jr_01a_7074

jr_01a_7044:
	jr nc, jr_01a_7076

	jr nc, jr_01a_7078

jr_01a_7048:
	dec c
	ld c, a

jr_01a_704a:
	jr nc, jr_01a_707c

jr_01a_704c:
	ld e, h
	ld e, l

jr_01a_704e:
	jr nc, jr_01a_7080

jr_01a_7050:
	inc d
	ld c, d

jr_01a_7052:
	jr nc, jr_01a_7084

jr_01a_7054:
	inc d
	ld c, d

jr_01a_7056:
	jr nc, jr_01a_7088

jr_01a_7058:
	inc d
	ld c, d
	jr nc, jr_01a_708c

jr_01a_705c:
	inc d
	ld c, d
	jr nc, jr_01a_7090

jr_01a_7060:
	inc d
	ld c, [hl]
	jr nc, jr_01a_7094

jr_01a_7064:
	inc d
	ld c, d
	jr nc, jr_01a_7098

jr_01a_7068:
	inc d
	ld c, d

jr_01a_706a:
	jr nc, jr_01a_709c

jr_01a_706c:
	inc d
	ld c, d

jr_01a_706e:
	jr nc, jr_01a_70a0

jr_01a_7070:
	jr nc, jr_01a_70a2

jr_01a_7072:
	ld c, l
	inc d

jr_01a_7074:
	jr nc, jr_01a_70a6

jr_01a_7076:
	ld c, b
	inc d

jr_01a_7078:
	jr nc, jr_01a_70aa

	ld c, b
	inc d

jr_01a_707c:
	jr nc, jr_01a_70ae

	ld c, b
	inc d

jr_01a_7080:
	ld b, h
	ld b, l
	inc d
	inc d

jr_01a_7084:
	ld b, [hl]
	ld b, a
	inc d
	inc d

jr_01a_7088:
	ld b, h
	ld b, l
	inc d
	inc d

jr_01a_708c:
	ld b, [hl]
	ld b, a
	inc d
	inc d

jr_01a_7090:
	inc d
	inc d
	inc d
	inc d

jr_01a_7094:
	inc d
	inc d
	inc d
	inc d

jr_01a_7098:
	ld b, h
	ld b, l
	ld b, h
	ld b, l

jr_01a_709c:
	ld b, [hl]
	ld b, a
	ld b, [hl]
	ld b, a

jr_01a_70a0:
	ld b, h
	ld b, l

jr_01a_70a2:
	ld b, h
	ld b, l
	ld b, [hl]
	ld b, a

jr_01a_70a6:
	ld b, [hl]
	ld b, a
	inc d
	inc d

jr_01a_70aa:
	inc d
	inc d
	inc d
	inc d

jr_01a_70ae:
	inc d
	inc d
	ld c, c
	ld c, c
	ld c, b
	inc d
	inc d
	inc d
	inc d
	inc d
	inc d
	inc d
	inc d
	inc d
	inc d
	inc d
	inc d
	inc d
	inc d
	ld c, c
	ld c, c
	ld c, b
	inc d
	inc d
	inc d
	inc d
	inc d
	inc d
	inc d
	inc d
	inc d
	inc d
	inc d
	inc d
	inc d
	inc d
	ld b, h
	ld b, l
	inc d
	inc d
	ld b, [hl]
	ld b, a
	inc d
	inc d
	ld b, h
	ld b, l
	inc d
	inc d
	ld b, [hl]
	ld b, a
	ld c, c
	ld c, c
	ld b, h
	ld b, l
	inc d
	inc d
	ld b, [hl]
	ld b, a
	inc d
	inc d
	ld b, h
	ld b, l
	inc d
	inc d
	ld b, [hl]
	ld b, a
	ld c, b
	inc d
	inc d
	inc d
	ld c, b
	inc d
	inc d
	inc d
	ld b, h
	ld b, l
	ld b, h
	ld b, l
	ld b, [hl]
	ld b, a
	ld b, [hl]
	ld b, a
	ld c, b
	inc d
	inc d
	ld c, d
	ld c, b
	inc d
	inc d
	ld c, d
	ld c, b
	inc d
	inc d
	ld c, d
	ld c, b
	inc d
	inc d
	ld c, d
	dec e
	ld e, $1e
	ld e, $2d
	ld l, $2e
	ld l, $2d
	ld l, $2e
	ld l, $2d
	ld l, $2e
	ld l, $1e
	rra
	inc d
	inc d
	ld l, $2f
	inc d
	inc d
	ld l, $2f
	inc d
	inc d
	ld l, $2f
	inc d
	inc d
	inc d
	inc d
	dec e
	ld e, $14
	inc d
	dec l
	ld l, $14
	inc d
	dec l
	ld l, $14
	inc d
	dec l
	ld l, $1e
	ld e, $1e
	rra
	ld l, $2e
	ld l, $2f
	ld l, $2e
	ld l, $2f
	ld l, $2e
	ld l, $2f
	dec l
	ld l, $2e
	ld l, $2d
	ld l, $2e
	ld l, $2d
	ld l, $2e
	ld l, $3d
	ld a, $3e
	ld a, $2e
	cpl
	inc d
	inc d
	ld l, $2f
	inc d
	inc d
	ld l, $2f
	inc d
	inc d
	ld a, $3f
	inc d
	inc d
	inc d
	inc d
	dec l
	ld l, $14
	inc d
	dec l
	ld l, $14
	inc d
	dec l
	ld l, $14
	inc d
	dec a
	ld a, $2e
	ld l, $2e
	cpl
	ld l, $2e
	ld l, $2f
	ld l, $2e
	ld l, $2f
	ld a, $3e
	ld a, $3f
	jr nc, jr_01a_71c2

	jr nc, jr_01a_71c4

	jr nc, jr_01a_71c6

	jr nc, jr_01a_71c8

	ld d, h
	ld d, l
	ld d, h
	ld d, l
	ld d, [hl]
	ld d, a
	ld d, [hl]
	ld d, a
	ld d, h
	ld d, l
	ld d, h
	ld d, l
	ld d, [hl]
	ld d, a
	ld d, [hl]
	ld d, a
	jr nc, jr_01a_71da

	jr nc, jr_01a_71dc

	jr nc, jr_01a_71de

	jr nc, jr_01a_71e0

	jr nc, jr_01a_71e2

	ld d, h
	ld d, l
	jr nc, jr_01a_71e6

	ld d, [hl]
	ld d, a
	jr nc, jr_01a_71ea

	ld d, h
	ld d, l
	jr nc, jr_01a_71ee

	ld d, [hl]
	ld d, a
	ld d, h
	ld d, l

jr_01a_71c2:
	jr nc, jr_01a_71f4

jr_01a_71c4:
	ld d, [hl]
	ld d, a

jr_01a_71c6:
	jr nc, jr_01a_71f8

jr_01a_71c8:
	ld d, h
	ld d, l
	jr nc, jr_01a_71fc

	ld d, [hl]
	ld d, a
	jr nc, jr_01a_7200

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

jr_01a_71da:
	nop
	nop

jr_01a_71dc:
	nop
	nop

jr_01a_71de:
	nop
	nop

jr_01a_71e0:
	ldh a, [rP1]

jr_01a_71e2:
	ldh a, [rP1]
	ldh a, [rP1]

jr_01a_71e6:
	ldh a, [rP1]
	rrca
	nop

jr_01a_71ea:
	rrca
	nop
	rrca
	nop

jr_01a_71ee:
	rrca
	nop
	rst $38
	rst $38
	nop
	nop

jr_01a_71f4:
	rst $38
	nop
	rst $38
	nop

jr_01a_71f8:
	rst $38
	nop
	rst $38
	nop

jr_01a_71fc:
	rst $38
	nop
	rst $38
	nop

jr_01a_7200:
	nop
	nop
	nop
	nop
	rlca
	rlca
	inc b
	inc b
	db $fc
	db $fc
	add h
	add h
	add h
	add h
	adc l
	add h
	ccf
	ccf
	ld hl, $e121
	pop hl
	ld hl, $2121
	ld hl, $2161
	pop hl
	ld hl, $21e1
	xor d
	jr nz, jr_01a_72a0

	ld e, b
	cp $66
	rst $28
	sub l
	db $e3
	ld a, l
	ret nc

	xor a
	rst $20
	ld a, a
	rst $38
	ld sp, hl
	xor [hl]
	inc b
	ld e, a
	ld a, [de]
	ei
	ld h, a
	pop af
	xor a
	ld b, [hl]
	cp a
	sbc a
	pop af
	or $ce
	sbc l
	ld hl, sp-$55
	ld bc, $0054
	xor d
	inc bc
	ld e, a
	ld c, $b4
	ld e, $4e
	dec c
	cp h
	ld l, $7e
	cpl
	ld bc, $0200
	nop
	rst $38
	rst $38
	rst $38
	add c
	rst $38
	add c
	rst $38
	rst $38
	add c
	rst $38
	rst $38
	rst $38
	rst $38
	rst $38
	rst $38
	add b
	ret nz

	cp a
	ret nz

	and b
	ret nz

	and b
	ret nz

	and b
	ret nz

	and b
	ret nz

	and b
	rst $38
	rst $38
	rst $38
	ld bc, $fd03
	inc bc
	dec b
	inc bc
	dec b
	inc bc
	dec b
	inc bc
	dec b
	inc bc
	dec b
	rst $38
	rst $38
	rst $38
	rst $38
	rst $38
	rst $38
	rst $38
	rst $38
	add a
	add a
	add a
	add a
	add a
	add h
	add a
	add h
	rst $38
	rst $38
	rst $38
	rst $38
	rst $38
	rst $38
	rst $38
	rst $38
	rst $38
	rst $38
	rst $38
	rst $38
	rst $38
	ccf
	rst $38
	ccf

jr_01a_72a0:
	rst $38
	rst $38
	add b
	add b
	cp a
	add b
	cp a
	add b
	cp a
	add b
	cp a
	add b
	cp a
	add b
	cp a
	add b
	rst $38
	rst $38
	ld bc, $fd01
	ld bc, $01fd
	db $fd
	ld bc, $01fd
	db $fd
	ld bc, $01fd
	ld l, d
	ret nz

	push de
	ld b, b
	ld l, d
	ret nz

	push af
	ld [hl], b
	xor d
	ld a, b
	ld [hl], l
	or b
	cp [hl]
	ld [hl], h
	ld a, l
	db $f4
	nop
	nop
	nop
	nop
	nop
	nop

jr_01a_72d6:
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
	rst $38
	nop
	rst $38
	nop
	rst $38
	nop
	rst $38
	nop
	rst $38
	nop
	rst $38
	nop
	rst $38
	nop
	rst $38
	rst $38
	nop
	rst $38
	nop
	nop
	rst $38
	rst $38
	rst $38
	nop
	rst $38
	rst $38
	rst $38
	rst $38
	rst $38
	rst $38
	rst $38
	sbc a
	add h
	cp a
	add h
	rst $38
	add h
	rst $38
	add a
	db $fc
	add a
	db $fc
	rst $38
	add b
	rst $38
	add b
	rst $38
	nop
	inc a
	nop
	adc c
	nop
	ld h, b
	nop
	rst $30
	nop
	rst $20
	nop
	rst $20
	nop
	sbc e
	nop
	call c, $66f9
	pop de
	cp [hl]
	rst $30
	ld c, d
	push hl
	sbc e
	db $eb
	rst $18
	rst $38
	sbc e
	rst $38
	ld d, l
	ld [hl], l
	ld hl, $66df
	rrca
	ld sp, hl
	and d
	rst $18
	xor e
	push de
	db $db
	rst $30
	rst $38
	reti


	rst $38
	ld [$667f], a
	xor a
	scf
	ld h, a
	jr c, jr_01a_72d6

	inc a
	scf
	ld e, a
	db $d3
	inc a
	add hl, hl
	ld e, h
	sub a
	cpl
	ld e, d
	dec b
	add c
	rst $38
	add c
	rst $38
	add c
	rst $38
	rst $38
	rst $38
	add c
	rst $38
	rst $38
	rst $38
	ld b, d
	nop
	add c
	nop
	ret nz

	and b
	ret nz

	cp a
	rst $38
	add b
	rst $38
	rst $38
	ret nz

	cp a
	ret nz

	cp a
	ret nz

	cp a
	rst $38
	rst $38
	inc bc
	dec b
	inc bc
	db $fd
	rst $38
	ld bc, $ffff
	inc bc
	db $fd
	inc bc
	db $fd
	inc bc
	db $fd
	rst $38
	rst $38
	add a
	add h
	add a
	add h
	add a
	add h
	add a
	add h
	add a
	add h
	add a
	add h
	add a
	add h
	rst $38
	rst $38
	pop hl
	ccf
	pop hl
	ccf
	pop hl
	ccf
	pop hl
	ccf
	pop hl
	ccf
	pop hl
	ccf
	pop hl
	ccf
	rst $38
	rst $38
	cp a
	add b
	cp a
	add b
	cp a
	add b
	cp a
	add b
	cp a
	add b
	cp a
	add b
	cp a
	add b
	cp a
	add b
	db $fd
	ld bc, $01fd
	db $fd
	ld bc, $01fd
	db $fd
	ld bc, $01fd
	db $fd
	ld bc, $01fd
	or $ec
	push hl
	inc e
	ld c, $f8
	db $eb
	db $fc
	inc c
	ld a, [$f41b]
	or $e8
	and l
	ld d, b
	add b
	inc e
	add b
	ld c, $80
	rlca
	add b
	inc bc
	add b
	ld bc, $0080
	add b
	nop
	rst $38
	nop
	rst $38
	nop
	add b
	nop
	add b
	nop
	add b
	ld bc, $0380
	add b
	rlca
	add b
	ld c, $80
	inc e
	xor d
	ld d, l
	ld d, l
	xor d
	ld d, l
	nop
	xor d
	nop
	ld d, l
	nop
	xor d
	nop
	xor d
	ld d, l
	ld d, l
	xor d
	ldh a, [rP1]
	db $fc
	inc c
	rst $38
	ccf
	ldh [$3f], a
	ld l, a
	ld a, a
	ld l, h
	ld a, [hl]
	add hl, hl
	inc a
	ld a, [hli]
	jr c, @+$09

	rlca
	dec b
	ld b, $05
	ld b, $05
	ld b, $05
	ld b, $05
	ld b, $05
	ld b, $05
	ld b, $ff
	ldh [$bf], a
	ld h, b
	cp a
	ld h, b
	cp a
	ld h, b
	cp a
	ld h, b
	cp a
	ld h, b
	cp a
	ld h, b
	cp a
	ld h, b
	and a
	add [hl]
	sbc l
	add e
	rlca
	nop
	add e
	inc c
	ld d, l
	cp a
	xor e
	ld a, a
	rst $10
	cp $ff
	ld a, b
	ld bc, $3601
	ld [hl], $7a
	ld c, [hl]
	ld sp, $142f
	rra
	ld [hli], a
	dec sp
	ld h, b
	ld a, a
	sbc h
	sbc [hl]
	rst $38
	rst $38
	cp a
	add b
	cp a
	add b
	rst $38
	rst $38
	add b
	rst $38
	adc a
	rst $38
	ld hl, sp-$10
	rst $28
	ret nc

	rst $38
	rst $38
	db $fd
	ld bc, $01fd
	rst $38
	rst $38
	ld bc, $f1ff
	rst $38
	rra
	rrca
	rst $30
	dec bc
	rst $38
	rst $38
	nop
	nop
	rst $38
	rst $38
	rst $38
	rst $38
	rst $38
	rst $38
	rst $38
	rst $38
	rst $38
	rst $38
	rst $38
	nop
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	db $fd
	db $fd
	db $fd
	db $fd
	db $fd
	db $fd
	db $fd
	db $fd
	db $fd
	db $fd
	db $fd
	db $fd
	db $fd
	db $fd
	db $fd
	db $fd
	rst $38
	rst $38
	add b
	add b
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	rst $38
	add b
	rst $38
	rst $38
	ld bc, $fd01
	db $fd
	db $fd
	db $fd
	db $fd
	db $fd
	db $fd
	db $fd
	db $fd
	db $fd
	db $fd
	ld bc, $8080

jr_01a_74c2:
	ld l, h
	ld l, h
	ld d, [hl]
	ld a, d
	adc h
	db $f4
	jr z, jr_01a_74c2

	ld b, h
	call c, $fe06
	cp c
	ld a, c
	ld bc, $0138
	ld [hl], b
	ld bc, $01e0
	ret nz

	ld bc, $0180
	nop
	ld bc, $ff00
	nop
	rst $38
	nop
	ld bc, $0100
	nop
	ld bc, $0180
	ret nz

	ld bc, $01e0
	ld [hl], b
	ld bc, $aa38
	nop
	ld d, l
	nop
	xor d
	inc d
	nop
	ld d, l
	xor d
	ld b, c
	ld d, l
	nop
	xor d
	nop
	ld d, l
	nop
	rst $38
	rst $38
	rst $38
	rst $38
	rst $38
	rst $38
	rst $38
	rst $38
	rst $38
	rst $38
	rst $38
	rst $38
	rst $38
	rst $38
	rst $38
	rst $38
	rst $38
	rst $38
	dec e
	inc bc
	dec c
	inc bc
	dec b
	inc bc
	rst $38
	rst $38
	db $fd
	inc bc
	db $fd
	inc bc
	db $fd
	inc bc
	rst $38
	nop
	rst $38
	nop
	rst $38
	nop
	rst $38
	nop
	rst $38
	nop
	rst $38
	nop
	rst $38
	nop
	rst $38
	nop
	add d
	ldh a, [$80]
	db $fc
	xor e
	rst $38
	push af
	ld a, a
	sbc e
	ld a, a
	rst $20
	ld e, $f9
	rlca
	rst $38
	nop
	xor e
	sbc e
	ld d, h
	ld a, h
	inc sp
	ccf
	ld d, b
	ld a, b
	ret c

	cp b
	db $ec
	cp h
	db $e3
	xor e
	db $fc
	sbc a
	ret nz

	add b
	ret nz

	add b
	ret nz

	add b
	ret nz

	add b
	ret nz

	add b
	ret nz

	add b
	ret nz

	add b
	ret nz

	add b
	inc bc
	ld bc, $0103
	inc bc
	ld bc, $0103
	inc bc
	ld bc, $0103
	inc bc
	ld bc, $0103
	rst $38
	rst $38
	nop
	rst $38
	rst $38
	nop
	nop
	rst $38
	nop
	rst $38
	rst $38
	nop
	nop
	rst $38
	rst $38
	rst $38
	rst $38
	rst $38
	ret nz

	cp a
	rst $38
	add b
	ret nz

	cp a
	ret nz

	cp a
	rst $38
	add b
	ret nz

	cp a
	rst $38
	rst $38
	rst $38
	rst $38
	inc bc
	db $fd
	rst $38
	ld bc, $fd03
	inc bc
	db $fd
	rst $38
	ld bc, $fd03
	rst $38
	rst $38
	rst $38
	rst $38
	cp a
	add b
	cp a
	sbc a
	or b
	sub b
	or b
	sub b
	cp a
	sbc a
	ld a, a
	ret nz

	ccf
	rst $38
	rst $38
	rst $38
	ld sp, hl
	rlca
	ld sp, hl
	rst $38
	add hl, bc
	rrca
	add hl, bc
	rrca
	ld sp, hl
	rst $38
	ld a, [$fc07]
	rst $38
	db $d3
	reti


	ld a, [hli]
	ld a, $cc
	db $fc
	ld a, [bc]
	ld e, $1b
	dec e
	scf
	dec a
	rst $00
	push de
	ccf
	ld sp, hl
	rst $38
	nop
	rst $38
	nop
	rst $38
	rst $38
	nop
	nop
	rst $38
	nop
	rst $38
	nop
	rst $38
	nop
	nop
	nop
	cp l
	add c
	cp l
	add c
	cp l
	add c
	cp l
	add c
	cp l
	add c
	cp l
	add c
	cp l
	add c
	cp l
	add c
	sub [hl]
	ld b, c
	ld l, c
	add d
	sub [hl]
	ld b, c
	ld l, c
	add d
	sub [hl]
	ld b, c
	ld l, c
	add d
	sub [hl]
	ld b, c
	ld l, c
	add d
	rst $38
	rst $38
	add b
	add b
	add b
	add b
	add b
	add b
	rst $38
	rst $38
	rst $38
	add b
	rst $38
	add b
	rst $38
	add b
	rst $38
	rst $38
	add c
	rst $38
	rst $38
	rst $38
	jp wc3ff


	rst $38
	rst $18
	ld b, d
	rst $18
	ld b, d
	ld a, [hl]
	ld a, [hl]
	rst $38
	rst $38
	nop
	rst $38
	rst $38
	rst $38
	nop
	rst $38
	rst $38
	rst $38
	rst $38
	nop
	rst $38
	nop
	nop
	nop
	ldh a, [rP1]
	ldh a, [$30]
	db $fc
	db $fc
	inc b
	db $fc
	rst $30
	cp $37
	ld a, [hl]
	sub a
	inc a
	ld d, a
	inc e
	rst $38
	ldh [$1f], a
	rra
	ldh [$e0], a
	rst $38
	rst $38
	rst $38
	rst $38
	rst $38
	cp $ff
	db $e4
	rst $38
	rra
	ld [$e938], a
	inc a
	db $ec
	ld a, [hl]
	rst $28
	ld a, a
	jr nz, jr_01a_7699

	ccf
	ccf
	rrca
	inc c
	rrca
	nop
	ld d, h
	inc e
	sub h
	inc a
	ld [hl], $7e
	or $fe
	rlca
	db $fc
	rst $38
	db $fc
	ccf
	jr nc, jr_01a_767e

	nop
	add b
	rst $38
	cp a
	rst $38
	or e
	rst $38
	xor l
	rst $38
	xor l
	rst $38
	or e
	rst $38
	cp a
	rst $38

jr_01a_767e:
	add b
	rst $38
	ld bc, $fdff
	rst $38
	call $b5ff
	rst $38
	or l
	rst $38
	call $fdff
	rst $38
	ld bc, $ffff
	rst $38
	add b
	rst $38
	add b
	rst $38
	add b
	rst $38
	add b

jr_01a_7699:
	rst $38
	add b
	rst $38
	xor b
	rst $38
	rst $38
	rst $38
	rst $38
	rst $38
	ld bc, $01ff
	rst $38
	ld bc, $01ff
	rst $38
	ld bc, $15ff
	rst $38
	rst $38
	rst $38
	pop hl
	ld hl, $3fff
	pop hl
	ccf
	pop hl
	rst $38
	ld bc, $01ff
	rst $38
	ld bc, $01ff
	rst $38
	push de
	xor e
	ld b, h
	ld e, [hl]
	sbc b
	dec a
	ld e, l
	cp d
	inc a
	ld d, a
	ld a, h
	xor a
	dec sp
	rst $30
	rst $38
	pop hl
	rst $38
	rst $38
	nop
	rst $38
	rst $38
	rst $38
	rst $38
	inc h
	rst $20
	inc h
	jr @+$01

	nop
	nop
	rst $38
	rst $38
	rst $38
	rst $38
	add c
	rst $38
	rst $38
	rst $38
	cp l
	rst $20
	and l
	rst $20

jr_01a_76ea:
	sbc c
	rst $38
	add c
	add c
	rst $38
	rst $38
	xor d
	ld d, l
	ld d, l
	xor d
	xor d
	ld d, l
	ld d, l
	xor d
	xor d
	ld d, l
	ld d, l
	xor d
	xor d
	ld d, l
	ld d, l
	xor d
	rst $38
	jr jr_01a_76ea

	inc h
	rst $38
	ld b, e
	cp $5a
	and $66
	pop hl
	ld hl, $40c1
	pop bc
	ld b, b
	rst $38
	ld h, b
	sbc a
	sbc b
	and a
	xor h
	ld d, a
	ld c, h
	rla
	inc c
	xor e
	adc h
	ld a, c
	ld a, [hl]
	ld b, l
	ld b, [hl]
	ldh a, [rP1]
	ldh a, [rP1]
	ldh a, [rP1]
	ldh a, [rP1]
	rrca
	nop
	scf
	ld [$5cbf], sp
	rst $38
	rst $38
	rst $38
	rst $38
	add c
	add c
	cp l
	add c
	cp l
	add c
	cp l
	add c
	cp l
	add c
	cp l
	add c
	cp l
	add c
	rst $38
	rst $38
	nop
	rst $38
	nop
	rst $38
	rst $38
	nop
	nop
	rst $38
	nop
	rst $38
	rst $38
	nop
	nop
	rst $38
	cp l
	add c
	cp l
	add c
	cp l
	add c
	cp l
	add c
	cp l
	add c
	cp l
	add c
	add c
	add c
	rst $38
	rst $38
	nop
	rst $38
	rst $38
	nop
	nop
	rst $38
	nop
	rst $38
	rst $38
	nop
	nop
	rst $38
	nop
	rst $38
	rst $38
	rst $38
	rst $38
	rst $38
	rst $38
	add b
	rst $38
	add b
	rst $38
	add b
	rst $38
	rst $38
	add b
	add b
	add b
	add b
	add b
	add b
	rst $38
	rst $38
	db $fd
	inc bc
	db $fd
	inc bc
	db $fd
	inc bc
	rst $38
	rst $38
	ld a, l
	inc bc
	dec a
	inc bc
	dec e
	inc bc
	ret nz

	ld b, b
	ld a, a
	ret nz

	ld a, a
	ldh [$7f], a
	rst $38
	push de
	ld a, a
	ld l, d
	rst $38
	dec [hl]
	rst $38
	rra
	rst $38
	inc bc
	ld [bc], a
	cp $03
	cp $07
	cp $ff
	ld d, a
	cp $ac
	rst $38
	ld d, h
	rst $38
	ld hl, sp-$01
	rst $38
	nop
	add c
	nop
	add c
	inc a
	nop
	cp l
	add c
	inc a
	add c
	inc a
	add c
	nop
	nop
	rst $38
	rst $38
	ld a, a
	add b
	add b
	ld l, a
	cpl
	rst $38
	ld a, a
	rst $38
	ld a, a
	rst $38
	cp a
	rst $38
	rlca
	rst $38
	ld hl, sp+$00
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
	ld de, $1111
	ld de, $1111
	ld de, $1111
	ld de, $1111
	ld de, $1111
	ld de, $0101
	jr nz, @+$32

	ld bc, $2001
	jr nc, @+$23

	ld sp, $0101
	ld hl, $0131
	ld bc, $0101
	ld sp, $0131
	ld bc, $3030
	ld sp, $0131
	ld bc, $3030
	ld bc, $0101
	ld bc, $2222
	ld bc, $5201
	ld d, d
	ld bc, $5201
	ld d, d
	ld bc, $2201
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld bc, $5201
	ld d, d
	ld bc, $5201
	ld d, d
	ld bc, $2201
	ld [hli], a
	ld bc, $5301
	ld d, h
	ld d, e
	ld d, h
	ld [hl], $26
	ld [hl], $26
	ld d, e
	ld d, h
	ld d, e
	ld d, h
	ld [hl], $26
	ld [hl], $26
	ld d, e
	ld d, h
	ld d, e
	ld d, h
	ld [hl], $26
	ld [hl], $26
	ld bc, $0101
	ld bc, $0101
	ld bc, $4201
	ld d, d
	ld d, d
	ld b, d
	ld b, d
	ld d, d
	ld d, d
	ld b, d
	ld bc, $0101
	ld bc, $0101
	ld bc, $0101
	ld bc, $0605
	ld bc, $1501
	ld d, $01
	ld bc, $0f07
	ld bc, $1701
	rra
	add hl, bc
	ld a, [bc]
	ld bc, $1901
	ld a, [de]
	ld bc, $0101
	ld bc, $0101
	ld bc, $0101
	ld bc, $0605
	dec b
	ld b, $15
	ld d, $15
	ld d, $07
	rrca
	rlca
	rrca
	rla
	rra
	rla
	rra
	dec b
	ld b, $2d
	ld l, $15
	ld d, $2b
	inc l
	rlca
	rrca
	dec hl
	inc l
	rla
	rra
	dec hl
	inc l
	dec b
	ld b, $01
	ld bc, $1615
	ld bc, $0701
	rrca
	ld bc, $1701
	rra
	ld bc, $0101
	ld bc, $0101
	ld bc, $0101
	ld bc, $0101
	ld bc, $0101
	ld bc, $0101
	ld bc, $2101
	ld hl, $0101
	jr nz, jr_01a_78e8

	ld bc, $2101
	ld hl, $0101
	jr nz, @+$22

	ld a, [hli]
	ld a, [hli]
	ld a, [hli]
	ld a, [hli]
	ld a, [hld]
	ld a, [hld]
	ld a, [hld]
	ld a, [hld]
	dec c
	ld c, $01
	ld bc, $1e1d
	ld bc, $0101
	ld bc, $0a09
	ld bc, $1901
	ld a, [de]

jr_01a_78e8:
	ld bc, $0101
	ld bc, $0101
	ld bc, $2b01
	inc l
	dec b
	ld b, $2b
	inc l
	dec d
	ld d, $2b
	inc l
	rlca
	rrca
	dec hl
	inc l
	rla
	rra
	add hl, bc
	ld a, [bc]
	add hl, bc
	ld a, [bc]
	add hl, de
	ld a, [de]
	add hl, de
	ld a, [de]
	ld e, [hl]
	ld e, [hl]
	ld bc, $5e01
	ld e, [hl]
	ld bc, $0901
	ld a, [bc]
	ld bc, $1901
	ld a, [de]
	ld bc, $0101
	ld bc, $3121
	ld bc, $2101
	ld sp, $5e5e
	add hl, bc
	ld a, [bc]
	ld e, [hl]
	ld e, [hl]
	add hl, de
	ld a, [de]
	ld bc, $0901
	ld a, [bc]
	ld bc, $1901
	ld a, [de]
	add hl, bc
	ld a, [bc]
	dec hl
	inc l
	add hl, de
	ld a, [de]
	dec hl
	inc l
	add hl, bc
	ld a, [bc]
	dec hl
	inc l
	add hl, de
	ld a, [de]
	dec hl
	inc l
	ld hl, $0931
	ld a, [bc]
	ld hl, $1931
	ld a, [de]
	ld bc, $0901
	ld a, [bc]
	ld bc, $1901
	ld a, [de]
	add hl, bc
	ld a, [bc]
	add hl, bc
	ld a, [bc]
	add hl, de
	ld a, [de]
	add hl, de
	ld a, [de]
	add hl, bc
	ld a, [bc]
	ld bc, $1901
	ld a, [de]
	ld bc, $0901
	ld a, [bc]
	add hl, bc
	ld a, [bc]
	add hl, de
	ld a, [de]
	add hl, de
	ld a, [de]
	ld bc, $0101
	ld bc, $0101
	ld bc, $0901
	ld a, [bc]
	add hl, bc
	ld a, [bc]
	add hl, de
	ld a, [de]
	add hl, de
	ld a, [de]
	ld bc, $0901
	ld a, [bc]
	ld bc, $1901
	ld a, [de]
	add hl, bc
	ld a, [bc]
	ld bc, $1901
	ld a, [de]
	ld bc, $2101
	ld hl, $0101
	jr nz, jr_01a_79ae

	ld bc, $0901
	ld a, [bc]
	ld bc, $1901
	ld a, [de]
	ld bc, $0901
	ld a, [bc]
	add hl, bc
	ld a, [bc]
	add hl, de
	ld a, [de]
	add hl, de
	ld a, [de]
	ld bc, $0101
	ld bc, $0101
	ld bc, $0901
	ld a, [bc]
	add hl, bc
	ld a, [bc]
	add hl, de
	ld a, [de]

jr_01a_79ae:
	add hl, de
	ld a, [de]
	ld bc, $0901
	ld a, [bc]
	ld bc, $1901
	ld a, [de]
	add hl, bc
	ld a, [bc]
	add hl, bc
	ld a, [bc]
	add hl, de
	ld a, [de]
	add hl, de
	ld a, [de]
	ld b, b
	ld b, b
	ld b, b
	ld b, b
	ld d, b
	ld d, b
	ld d, b
	ld d, b
	ld de, $1111
	ld de, $1111
	ld de, $0111
	ld bc, $0a09
	ld bc, $1901
	ld a, [de]
	ld bc, $0901
	ld a, [bc]
	ld bc, $1901
	ld a, [de]
	ld bc, $0101
	ld bc, $0101
	ld bc, $0b01
	inc c
	ld bc, $1b01
	inc e
	ld bc, $0101
	ld bc, $0101
	ld bc, $0101
	ld bc, $0202
	ld [bc], a
	ld [bc], a
	ld [de], a
	ld [de], a
	ld [de], a
	ld [de], a
	dec e
	ld e, $01
	ld bc, $1e1d
	ld bc, $1d01
	ld e, $01
	ld bc, $1212
	ld bc, $0b01
	inc c
	ld d, a
	ld d, a
	dec de
	inc e
	ld e, c
	ld e, c
	ld bc, $0101
	ld bc, $0101
	ld bc, $1d01
	ld e, $01
	ld bc, $1e1d
	ld bc, $1d01
	ld e, $01
	ld bc, $1e1d
	ld bc, $0101
	ld bc, $0a09
	ld bc, $1901
	ld a, [de]
	ld sp, $0131
	ld bc, $3030
	ld bc, $0101
	ld bc, $3131
	ld bc, $3001
	jr nc, jr_01a_7a6a

	ld sp, $0101
	ld hl, $0131
	ld bc, $0e0d
	dec c
	ld c, $4c
	ld c, l
	ld c, h
	ld c, l
	ld a, [hli]
	ld a, [hli]
	ld a, [hli]
	ld a, [hli]
	ld a, [hld]
	ld a, [hld]
	ld a, [hld]
	ld a, [hld]
	ld bc, $5e01
	ld e, [hl]
	ld bc, $5e01
	ld e, [hl]
	add hl, bc
	ld a, [bc]

jr_01a_7a6a:
	add hl, bc
	ld a, [bc]
	add hl, de
	ld a, [de]
	add hl, de
	ld a, [de]
	ld a, [hli]
	ld l, $01
	ld bc, $3c3a
	ld bc, $0101
	ld bc, $0101
	ld bc, $0101
	ld bc, $0101
	dec l
	ld a, [hli]
	ld bc, $3b01
	ld a, [hld]
	ld bc, $0101
	ld bc, $0101
	ld bc, $0101
	ld bc, $0101
	ld bc, $0101
	ld bc, $5242
	ld d, d
	ld b, d
	ld b, d
	ld d, d
	ld d, d
	ld b, d
	ld bc, $0101
	ld bc, $0101
	ld bc, $0801
	ld [$0808], sp
	jr jr_01a_7ac6

	jr @+$1a

	inc sp
	inc sp
	inc sp
	inc sp
	inc sp
	inc sp
	inc sp
	inc sp
	inc sp
	inc sp
	inc sp
	inc sp
	inc sp
	inc sp
	inc sp
	inc sp
	ld bc, $0101
	ld bc, $0101

jr_01a_7ac6:
	ld bc, $0101
	ld bc, $3121
	ld bc, $2001
	jr nc, jr_01a_7b03

	ld [hld], a
	ld [hld], a
	ld [hld], a
	ld [hld], a
	ld [hld], a
	ld [hld], a
	ld [hld], a
	ld [hld], a
	ld [hld], a
	ld [hld], a
	ld [hld], a
	ld [hld], a
	ld [hld], a
	ld [hld], a
	ld [hld], a
	ld bc, $5301
	ld d, h
	ld bc, $3601
	ld h, $01
	ld bc, $5453
	ld bc, $3601
	ld h, $03
	inc b
	ld bc, $1301
	ld c, [hl]
	ld bc, $0301
	inc b
	ld bc, $1301
	ld c, [hl]
	ld bc, $0901
	ld a, [bc]
	add hl, bc

jr_01a_7b03:
	ld a, [bc]
	add hl, de
	ld a, [de]
	add hl, de
	ld a, [de]
	ld a, [hli]
	ld a, [hli]
	ld a, [hli]
	ld a, [hli]
	ld a, [hld]
	ld a, [hld]
	ld a, [hld]
	ld a, [hld]
	ld bc, $0101
	ld bc, $0101
	ld bc, $0d01
	ld [bc], a
	ld [bc], a
	ld c, $1d
	dec [hl]
	dec [hl]
	ld e, $09
	ld a, [bc]
	add hl, bc
	ld a, [bc]
	add hl, de
	ld a, [de]
	add hl, de
	ld a, [de]
	add hl, bc
	ld a, [bc]
	add hl, bc
	ld a, [bc]
	add hl, de
	ld a, [de]
	add hl, de
	ld a, [de]
	dec e
	dec [hl]
	dec [hl]
	ld e, $1d
	dec [hl]
	dec [hl]
	ld e, $1d
	dec [hl]
	dec [hl]
	ld e, $1d
	dec [hl]
	dec [hl]
	ld e, $1d
	dec [hl]
	dec [hl]
	ld e, $44
	ld b, l
	ld b, l
	ld b, h
	ld bc, $0101
	ld bc, $0101
	ld bc, $5301
	ld d, h
	ld bc, $3601
	ld h, $01
	ld bc, $5453
	ld bc, $3601
	ld h, $01
	ld bc, $0a09
	ld bc, $1901
	ld a, [de]
	ld bc, $0901
	ld a, [bc]
	ld bc, $1901
	ld a, [de]
	ld bc, $4201
	ld d, d
	inc bc
	inc b
	ld b, d
	ld d, d
	inc de
	ld c, [hl]
	ld b, d
	ld d, d
	ld d, d
	ld d, d
	ld b, d
	ld d, d
	ld d, d
	ld d, d
	ld d, d
	ld d, d
	ld d, d
	ld b, d
	ld d, d
	ld d, d
	ld d, d
	ld b, d
	ld d, d
	ld d, d
	ld d, d
	ld b, d
	ld d, d
	ld d, d
	ld d, d
	ld b, d
	dec l
	ld l, $57
	ld d, a
	dec hl
	inc l
	ld e, c
	ld e, c
	dec hl
	inc l
	ld bc, $2b01
	inc l
	ld bc, $5701
	ld d, a
	ld d, a
	ld d, a
	ld e, c
	ld e, c
	ld e, c
	ld e, c
	ld bc, $0101
	ld bc, $0101
	ld bc, $5701
	ld d, a
	dec l
	ld l, $59
	ld e, c
	dec hl
	inc l
	ld bc, $2b01
	inc l
	ld bc, $2b01
	inc l
	ld b, d
	ld d, d
	ld d, d
	ld d, d
	ld b, d
	ld d, d
	ld d, d
	ld d, d
	ld b, d
	ld d, d
	ld d, d
	ld d, d
	ld b, d
	ld d, d
	ld d, d
	ld d, d
	dec l
	ld a, [hli]
	ld a, [hli]
	ld a, [hli]
	dec hl
	inc l
	ld a, [hld]
	ld a, [hld]
	dec hl
	inc l
	ld bc, $2b01
	inc l
	ld bc, $2a01
	ld a, [hli]
	ld a, [hli]
	ld a, [hli]
	ld a, [hld]
	ld a, [hld]
	ld a, [hld]
	ld a, [hld]
	ld bc, $0101
	ld bc, $0101
	ld bc, $2a01
	ld a, [hli]
	ld a, [hli]
	ld l, $3a
	ld a, [hld]
	dec hl
	inc l
	ld bc, $2b01
	inc l
	ld bc, $2b01
	inc l
	jr z, jr_01a_7c2b

	ld bc, $3801
	add hl, sp
	ld bc, $3801
	add hl, sp
	ld bc, $1901
	ld a, [de]
	ld bc, $2b01
	inc l
	ld bc, $2b01
	inc l
	ld bc, $2b01
	inc l
	ld bc, $2b01
	inc l
	ld bc, $0101
	ld bc, $0101
	ld bc, $2701
	cpl
	ld bc, $3701

jr_01a_7c2b:
	ccf
	ld bc, $3d01
	ld a, $01
	ld bc, $2c2b
	ld bc, $2b01
	inc l
	ld bc, $2b01
	inc l
	ld bc, $2b01
	inc l
	dec c
	ld [bc], a
	ld [bc], a
	ld c, $1d
	dec [hl]
	dec [hl]
	ld e, $1d
	dec [hl]
	dec [hl]
	ld e, $44
	ld b, l
	ld b, l
	ld b, h
	dec hl
	inc l
	ld bc, $2b01
	inc l
	ld bc, $2d01
	ld a, [hli]
	ld a, [hli]
	ld a, [hli]
	dec sp
	ld a, [hld]
	ld a, [hld]
	ld a, [hld]
	ld bc, $0101
	ld bc, $0101
	ld bc, $2a01
	ld a, [hli]
	ld a, [hli]
	ld a, [hli]
	ld a, [hld]
	ld a, [hld]
	ld a, [hld]
	ld a, [hld]
	ld bc, $2b01
	inc l
	ld bc, $2b01
	inc l
	ld a, [hli]
	ld a, [hli]
	ld a, [hli]
	ld l, $3a
	ld a, [hld]
	ld a, [hld]
	inc a
	ld a, [hli]
	ld a, [hli]
	ld b, a
	ld e, a
	ld a, [hld]
	ld a, [hld]
	ld e, h
	ld e, l
	ld bc, $0101
	ld bc, $0101
	ld bc, $3201
	ld [hld], a
	ld [hld], a
	ld [hld], a
	ld [hld], a
	ld [hld], a
	ld [hld], a
	ld [hld], a
	ld a, [hli]
	ld a, [hli]
	ld a, [hli]
	ld a, [hli]
	ld a, [hld]
	ld a, [hld]
	ld a, [hld]
	ld a, [hld]
	ld sp, $0131
	ld bc, $3030
	ld bc, $0101
	ld bc, $3020
	ld bc, $2001
	jr nc, @+$03

	ld bc, $0101
	ld bc, $0101
	ld bc, $0101
	dec bc
	inc c
	ld bc, $1b01
	inc e
	ld b, b
	ld b, b
	dec hl
	inc l
	ld d, b
	ld d, b
	dec sp
	inc a
	ld de, $1111
	ld de, $1111
	ld de, $2b11
	inc l
	ld bc, $2b01
	inc l
	ld bc, $2b01
	inc l
	ld a, [hli]
	ld a, [hli]
	dec hl
	inc l
	ld a, [hld]
	ld a, [hld]
	ld bc, $2b01
	inc l
	ld bc, $2b01
	inc l
	ld a, [hli]
	ld a, [hli]
	dec hl
	inc l
	ld a, [hld]
	ld a, [hld]
	dec hl
	inc l
	ld bc, $0101
	ld bc, $0101
	ld bc, $2d01
	ld l, $01
	ld bc, $2c2b
	ld bc, $0101
	ld bc, $0101
	ld bc, $0101
	ld bc, $0101
	dec l
	ld l, $01
	ld bc, $2c2b
	ld [$0808], sp
	ld [$1818], sp
	jr @+$1a

	ld bc, $0101
	ld bc, $0101
	ld bc, $2b01
	inc l
	ld bc, $2b01
	inc l
	ld bc, $2b01
	inc l
	ld bc, $3b01
	inc a
	ld bc, $0101
	ld bc, $2c2b
	ld bc, $2b01
	inc l
	ld bc, $2b01
	inc l
	ld bc, $3b01
	inc a
	ld bc, $0101
	ld bc, $0101
	ld bc, $2d01
	ld a, [hli]
	ld a, [hli]
	ld a, [hli]
	dec sp
	ld a, [hld]
	ld a, [hld]
	ld a, [hld]
	ld bc, $0101
	ld bc, $0101
	ld bc, $2a01
	ld a, [hli]
	ld a, [hli]
	ld l, $3a
	ld a, [hld]
	ld a, [hld]
	inc a
	dec l
	ld l, $01
	ld bc, $2c2b
	ld bc, $2b01
	inc l
	ld bc, $2b01
	inc l
	ld bc, $0101
	ld bc, $2e2d
	ld bc, $2b01
	inc l
	ld bc, $2b01
	inc l
	ld bc, $2b01
	inc l
	inc d
	inc d
	inc d
	inc d
	inc d
	inc d
	inc d
	inc d
	inc d
	inc d
	inc d
	inc d
	inc d
	inc d
	inc d
	inc d
	dec hl
	inc l
	ld d, e
	ld d, h
	dec hl
	inc l
	ld [hl], $26
	dec hl
	inc l
	ld d, e
	ld d, h
	dec hl
	inc l
	ld [hl], $26
	ld d, e
	ld d, h
	dec hl
	inc l
	ld [hl], $26
	dec hl
	inc l
	ld d, e
	ld d, h
	dec hl
	inc l
	ld [hl], $26
	dec hl
	inc l
	ld bc, $2701
	cpl
	ld bc, $3701
	ccf
	ld bc, $4a01
	ld c, e
	ld bc, $4c01
	ld c, l
	ld bc, $2401
	dec h
	ld bc, $2401
	dec h
	ld bc, $2401
	dec h
	ld bc, $2401
	dec h
	dec l
	ld a, [hli]
	ld a, [hli]
	ld a, [hli]
	dec hl
	inc l
	dec c
	ld c, $2b
	inc l
	dec c
	ld c, $2b
	inc l
	dec e
	ld e, $2a
	ld a, [hli]
	ld a, [hli]
	ld a, [hli]
	dec c
	ld c, $0d
	ld c, $4a
	ld c, e
	ld c, d
	ld c, e
	ld c, h
	ld c, l
	ld c, h
	ld c, l
	ld a, [hli]
	ld a, [hli]
	ld a, [hli]
	ld l, $0d
	ld c, $2b
	inc l
	dec c
	ld c, $2b
	inc l
	dec e
	ld e, $2b
	inc l
	ld a, [hli]
	ld a, [hli]
	ld a, [hli]
	ld l, $3a
	ld a, [hld]
	ld a, [hld]
	inc a
	ld bc, $0101
	ld bc, $0101
	ld bc, $2b01
	inc l
	dec c
	ld c, $2b
	inc l
	dec e
	ld e, $2b
	inc l
	ld c, d
	ld c, e
	dec hl
	inc l
	ld c, h
	ld c, l
	ld a, [hli]
	ld a, [hli]
	ld a, [hli]
	ld a, [hli]
	ld a, [hld]
	ld a, [hld]
	ld a, [hld]
	ld a, [hld]
	ld d, e
	ld d, h
	ld d, e
	ld d, h
	ld [hl], $26
	ld [hl], $26
	dec c
	ld c, $2b
	inc l
	dec e
	ld e, $2b
	inc l
	ld c, d
	ld c, e
	dec hl
	inc l
	ld c, h
	ld c, l
	dec hl
	inc l
	dec l
	ld a, [hli]
	ld a, [hli]
	ld a, [hli]
	dec sp
	ld a, [hld]
	ld a, [hld]
	ld a, [hld]
	ld bc, $0101
	ld bc, $0101
	ld bc, $2d01
	ld a, [hli]
	ld a, [hli]
	ld a, [hli]
	dec hl
	inc l
	ld a, [hld]
	ld a, [hld]
	dec hl
	inc l
	ld d, e
	ld d, h
	dec hl
	inc l
	ld [hl], $26
	ld a, [hli]
	ld a, [hli]
	ld a, [hli]
	ld l, $3a
	ld a, [hld]
	dec hl
	inc l
	ld d, e
	ld d, h
	dec hl
	inc l
	ld [hl], $26
	dec hl
	inc l
	ld a, [hli]
	ld a, [hli]
	ld a, [hli]
	ld a, [hli]
	ld a, [hld]
	ld a, [hld]
	ld a, [hld]
	ld a, [hld]
	inc bc
	inc b
	ld bc, $1301
	ld c, [hl]
	ld bc, $2b01
	inc l
	ld a, [hli]
	ld a, [hli]
	dec hl
	inc l
	dec c
	ld c, $2b
	inc l
	ld c, d
	ld c, e
	dec hl
	inc l
	ld c, h
	ld c, l
	ld b, c
	ld de, $1111
	ld b, c
	ld de, $1111
	ld b, c
	ld de, $1111
	ld b, c
	ld de, $1111
	ld b, c
	ld de, $1111
	ld d, c
	ld de, $1111
	ld de, $1111
	ld de, $1111
	ld de, $0111
	ld bc, $0403
	ld bc, $1301
	ld c, [hl]
	ld bc, $0101
	ld bc, $0101
	ld bc, $0101
	ld bc, $0c0b
	ld bc, $1b01
	inc e
	ld bc, $0101
	ld bc, $0101
	ld bc, $2b01
	inc l
	ld bc, $3b01
	inc a
	ld bc, $0101
	ld bc, $0101
	ld bc, $0101
	ld bc, $0101
	dec hl
	inc l
	ld bc, $3b01
	inc a
	ld bc, $0101
	ld bc, $0101
	ld bc, $0101
	ld bc, $0101
	ld bc, $0101
	ld bc, $2a2d
	ld a, [hli]
	ld l, $3b
	ld a, [hld]
	ld a, [hld]
	inc a
	ld a, [hli]
	ld a, [hli]
	ld a, [hli]
	ld a, [hli]
	ld a, [hld]
	ld a, [hld]
	ld a, [hld]
	ld a, [hld]
	dec bc
	inc c
	ld bc, $1b01
	inc e
	ld bc, $2d01
	ld l, $01
	ld bc, $2c2b
	ld bc, $2b01
	inc l
	ld bc, $3b01
	inc a
	ld bc, $4f01
	ld c, a
	ld c, a
	ld c, a
	ld c, a
	inc d
	inc d
	inc d
	ld c, a
	inc d
	inc d
	inc d
	ld c, a
	inc d
	inc d
	inc d
	ld c, a
	ld c, a
	ld c, a
	ld c, a
	inc d
	inc d
	inc d
	ld c, a
	inc d
	inc d
	inc d
	ld c, a
	inc d
	inc d
	inc d
	ld c, a
	ld bc, $0101
	ld bc, $2f27
	ld bc, $3701
	ccf
	ld bc, $3d01
	ld a, $01
	ld bc, $4623
	ld bc, $4801
	ld c, c
	ld bc, $0101
	ld bc, $0101
	ld bc, $0101
	ld bc, $2c2b
	add hl, bc
	ld a, [bc]
	dec hl
	inc l
	add hl, de
	ld a, [de]
	dec hl
	inc l
	ld bc, $2b01
	inc l
	ld bc, $2a01
	ld a, [hli]
	ld a, [hli]
	ld a, [hli]
	ld a, [hld]
	ld a, [hld]
	ld a, [hld]
	ld a, [hld]
	add hl, bc
	ld a, [bc]
	ld bc, $1901
	ld a, [de]
	ld bc, $0d01
	ld [bc], a
	ld [bc], a
	ld c, $1d
	dec [hl]
	dec [hl]
	ld e, $1d
	dec [hl]
	dec [hl]
	ld e, $1d
	dec [hl]
	dec [hl]
	ld e, $56
	ld d, [hl]
	ld d, a
	ld d, a
	ld e, b
	ld e, b
	ld e, c
	ld e, c
	ld bc, $0101
	ld bc, $0101
	ld bc, $5a01
	ld e, e
	ld d, a
	ld d, a
	ld b, e
	inc [hl]
	ld e, c
	ld e, c
	ld bc, $0101
	ld bc, $0101
	ld bc, $2b01
	inc l
	ld bc, $2b01
	inc l
	ld bc, $2b01
	inc l
	ld [bc], a
	ld [bc], a
	dec hl
	inc l
	ld [de], a
	ld [de], a
	ld d, a
	ld d, a
	ld d, a
	ld d, a
	dec c
	ld c, $59
	ld e, c
	dec e
	ld e, $01
	ld bc, $1e1d
	db $01
	db $01

	ld a, [de]
	cp $a5
	ret z

	ld hl, wd03f
	ld a, [hli]
	and $07
	ret nz

	bit 6, [hl]
	ret nz

	ld hl, wd014
	call Call_01a_7ff6
	ld a, [wd041]
	bit 3, a
	ret nz

	ld hl, wd148
	ld a, [wcc2f]
	ld bc, $002c
	call $3ad1

Call_01a_7ff6:
	ld a, [wcc2e]
	ld c, a
	ld b, $00
	add hl, bc
	dec [hl]
	ret


	nop
