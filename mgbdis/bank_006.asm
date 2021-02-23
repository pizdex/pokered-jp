; Disassembly of "pokemon-red-jp.gb"

SECTION "ROM Bank $006", ROMX[$4000], BANK[$6]

	nop
	ld [de], a
	add hl, de
	rst $18
	ld b, b
	add [hl]
	ld h, a
	db $76
	ld h, a
	inc bc
	dec de
	or c
	ld c, e
	pop bc
	rst $00
	add hl, bc
	inc d
	ld hl, sp+$27
	ld d, $c7
	ld [de], a
	sub c
	ld b, b
	db $dd
	rst $00
	add hl, bc
	ld a, [bc]
	ld hl, sp+$00
	ld sp, hl
	add $22
	ld b, b
	rrca
	dec c
	dec c
	ld [$7a00], sp
	dec c
	ld a, [bc]
	ld [bc], a
	ld a, d
	add hl, bc
	jr jr_006_402f

jr_006_402f:
	add b
	inc bc
	jr jr_006_4035

	add b
	inc bc

jr_006_4035:
	add hl, de
	ld [bc], a
	add b
	add hl, bc
	add hl, hl
	nop
	add l
	dec de
	inc c
	nop
	add [hl]
	inc de
	inc e
	nop
	add a
	inc de
	daa
	nop
	adc b
	inc de
	ld hl, $8900
	dec de
	rra
	nop
	adc d
	dec de
	inc hl
	nop
	adc e
	dec de

Call_006_4055:
	dec hl
	nop
	adc h
	add hl, bc
	rrca
	dec de
	ld a, [bc]
	rrca
	inc de
	dec bc
	add hl, bc
	ld a, [hli]
	inc c
	dec e
	dec c
	dec c
	add hl, bc
	dec d
	ld c, $0d
	inc c
	rrca
	dec d
	daa
	db $10
	dec d
	ld hl, $1511
	dec de
	ld [de], a
	add hl, bc
	ld [$0c15], sp
	cp $00
	ld bc, $2025
	rrca
	rst $38
	pop de
	ld [bc], a
	dec c
	rla
	ld [de], a
	cp $01
	inc bc
	dec h
	ld a, [de]
	dec e
	rst $38
	ret nc

	inc b
	dec h
	inc d
	ld a, [de]
	rst $38
	ret nc

	dec b
	cpl
	db $10
	inc h
	rst $38
	jp nc, $0506

	db $10
	ld [hli], a
	rst $38
	db $d3
	rlca
	jr jr_006_40c2

	inc h
	cp $02
	ld [$1218], sp
	ld l, $fe
	ld [bc], a
	add hl, bc
	add $c7
	dec c
	ld [wc7c7], sp
	dec c
	ld a, [bc]
	sub b
	rst $00
	add hl, bc
	jr jr_006_40eb

	rst $00
	inc bc
	jr jr_006_40ef

	rst $00
	inc bc
	add hl, de
	sbc b
	rst $00
	add hl, bc

jr_006_40c2:
	add hl, hl
	and c
	ret z

	dec de
	inc c
	dec l
	ret z

	inc de
	inc e
	ld [hld], a
	ret z

	inc de
	daa
	cpl
	ret z

	inc de
	ld hl, wc8aa
	dec de
	rra
	xor h
	ret z

	dec de
	inc hl
	or b
	ret z

	dec de
	dec hl
	rrca
	ld l, h
	ld l, h
	ld l, h
	ld l, h
	ld l, h
	ld l, h
	ld l, h
	ld l, h
	ld l, h
	ld l, h
	ld l, h

jr_006_40eb:
	ld l, h
	ld l, h
	ld l, h
	ld l, h

jr_006_40ef:
	ld l, h
	ld l, h
	ld l, h
	ld l, h
	ld l, h
	ld l, h
	ld l, h
	ld l, h
	rrca
	rrca
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld l, a
	ld l, a
	ld a, [bc]
	ld l, a
	ld l, a
	ld l, a
	ld a, [bc]
	ld l, a
	ld l, a
	ld l, a
	ld l, a
	ld l, a
	ld l, a
	ld a, [bc]
	ld l, [hl]
	rrca
	jr nz, jr_006_4135

	ld d, l
	ld d, l
	ld d, l
	ld d, l
	jr nz, jr_006_4127

	ld hl, $2055
	dec c
	ld hl, $5555
	ld d, l
	ld d, l
	ld d, l
	ld d, l
	ld d, l
	ld d, l

jr_006_4127:
	ld d, l
	ld l, l
	ld l, [hl]
	rrca
	ld l, b
	ld l, c
	jr nz, jr_006_413c

	dec c
	ld hl, $7f68
	ld l, c
	ld d, l

jr_006_4135:
	ld l, b
	ld a, a
	ld l, c
	jr nz, jr_006_415b

	jr nz, jr_006_415d

jr_006_413c:
	jr nz, jr_006_415f

	jr nz, jr_006_4161

	ld d, l
	ld l, l
	ld l, [hl]
	rrca
	scf
	ld a, [hl]
	ld l, b
	ld a, a
	ld a, a
	ld l, c
	scf
	ld a, l
	ld a, [hl]
	ld a, c
	scf
	ld a, [hld]
	ld a, [hl]
	scf
	ld a, [hl]
	scf
	ld a, [hl]
	scf
	ld a, [hl]
	ld a, h
	ld [hl], d
	ld d, l
	rrca

jr_006_415b:
	rrca
	rrca

jr_006_415d:
	ld d, l
	ld d, l

jr_006_415f:
	ld l, b
	ld a, a

jr_006_4161:
	ld a, a
	ld l, c
	ld d, l
	ld d, l
	ld d, l
	ld d, l
	ld d, l
	ld d, l
	ld d, l
	ld d, l
	ld d, l
	ld d, l
	ld d, l
	ld d, l
	ld d, l
	ld d, l
	ld d, l
	ld d, l
	ld d, l
	ld d, l
	rrca
	ld d, l
	ld d, l
	scf
	ld a, [hld]
	ld a, [hld]
	ld [hl], e
	ld d, l
	ld d, l
	ld d, l

Jump_006_417f:
	ld d, l
	ld d, l
	ld d, l
	ld d, l
	ld d, l
	ld d, l
	ld d, l
	ld d, l
	ld d, l
	ld d, l
	ld d, l
	ld d, l
	ld d, l
	rrca
	rrca
	rrca
	ld d, l
	ld d, l
	ld d, l
	ld d, l
	ld d, l
	ld d, l
	ld d, l
	ld d, l
	ld a, c
	jr nc, jr_006_41a3

	inc bc
	ld d, [hl]
	ld [hl], a
	ld [hl], a
	ld [hl], a
	ld [hl], a
	ld d, l
	ld [hl], a
	ld [hl], a

jr_006_41a3:
	ld [hl], a
	ld [hl], a
	rrca
	rrca
	rrca
	ld d, l
	ld d, l
	ld d, l
	ld d, l
	ld d, l
	ld d, l
	ld d, l
	ld d, l
	ld d, l
	ld c, [hl]
	ld d, h
	ld c, l
	jr nz, jr_006_41c3

	ld hl, $2120
	ld d, l
	jr nz, jr_006_41dd

	jr nz, jr_006_41df

	rrca
	ld l, [hl]
	ld [hl], a
	ld d, l
	ld d, l

jr_006_41c3:
	ld d, l
	ld d, l
	ld d, l
	ld d, l
	ld d, l
	ld d, l
	ld d, l
	ld h, a
	rra
	ld l, d
	scf
	ld a, [hld]
	ld a, [hl]
	ld a, h
	ld a, [hl]
	ld d, l
	scf
	ld a, [hl]
	scf
	ld a, [hl]
	rrca
	ld l, [hl]
	rrca
	ld d, l
	ld d, l
	ld d, l

jr_006_41dd:
	ld d, l
	ld d, l

jr_006_41df:
	ld d, l
	ld d, l
	ld d, l
	ld d, l
	jr jr_006_4228

	add hl, de
	ld d, [hl]
	ld [hl], a
	ld [hl], a
	ld d, [hl]
	ld [hl], a
	ld d, l
	ld d, [hl]
	ld [hl], a
	ld [hl], a
	ld [hl], a
	dec [hl]
	ld l, [hl]
	rrca
	ld d, l
	ld d, l
	ld d, l
	ld d, l
	ld d, l
	ld d, l
	ld d, l
	ld d, l
	ld d, l
	ld d, l
	ld d, l
	ld d, l
	ld d, l
	ld d, l
	ld d, l
	ld d, l
	ld d, l
	ld d, l
	ld d, l
	ld d, l
	ld d, l
	ld d, l
	ld l, l
	ld l, [hl]
	rrca
	jr nz, jr_006_422f

	inc c
	dec c
	dec c
	ld c, $20
	ld hl, $2120
	ld d, l
	ld d, l
	jr nz, jr_006_423b

	jr nz, jr_006_423d

	jr nz, jr_006_423f

	jr nz, jr_006_4241

	jr nz, jr_006_4243

	ld a, [bc]
	ld l, [hl]
	rrca
	scf
	ld a, [hl]
	db $10

jr_006_4228:
	ld de, $1211
	scf
	ld a, [hl]
	scf
	ld a, [hl]

jr_006_422f:
	ld d, l
	ld d, l
	scf
	ld a, [hl]
	ld a, h
	ld a, [hl]
	ld a, h
	ld a, [hl]
	scf
	ld a, [hl]
	ld a, h
	ld a, [hl]

jr_006_423b:
	ld a, [bc]
	ld l, [hl]

jr_006_423d:
	rrca
	ld d, l

jr_006_423f:
	ld d, l
	ld d, l

jr_006_4241:
	ld d, l
	ld d, l

jr_006_4243:
	ld a, c
	ld d, l
	ld d, l
	jr nz, jr_006_4269

	ld d, l
	ld d, l
	ld d, l
	ld d, l
	ld d, l
	ld d, l
	ld d, l
	ld d, l
	ld d, l
	ld d, l
	ld d, l
	ld d, l
	ld a, [bc]
	ld l, [hl]
	rrca
	rlca
	cpl
	rlca
	rlca
	rlca
	rlca
	rlca
	rlca
	scf
	ld a, [hl]
	ld d, l
	ld d, l
	ld d, l
	ld d, l
	ld d, l
	ld d, l
	ld d, l
	ld d, l

jr_006_4269:
	ld d, l
	ld d, l
	ld d, l
	ld d, l
	ld a, [bc]
	ld l, [hl]
	rrca
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
	ld l, h
	ld l, h
	ld l, h
	ld l, h
	ld l, h
	ld l, h
	ld [hld], a
	ld [hl], $6c
	ld l, h
	ld l, h
	ld l, h
	ld a, [bc]
	ld l, [hl]
	rrca
	ld l, a
	ld l, a
	ld l, a
	ld l, a
	ld l, a
	ld l, a
	ld l, a
	ld l, a
	ld l, a
	ld l, a
	ld l, a
	ld l, a
	ld l, a
	ld l, a
	ld l, a
	ld l, a
	ld l, a
	ld [hl], $6f
	ld l, a
	ld l, a
	ld l, a
	ld l, a
	rrca

	db $00, $09, $0a, $fd, $42, $88, $4f, $5b, $4e, $0c, $0c, $00, $42, $eb, $c6, $0a
	db $0a, $23, $00, $09, $c8, $20, $8d, $50, $ab, $c7, $0a, $0a, $00, $00, $f9, $c6
	db $c3, $42, $0b, $03, $05, $05, $00, $25, $05, $0d, $00, $27, $0b, $0c, $01, $28
	db $04, $0d, $0d, $04, $09, $07, $05, $05, $03, $06, $05, $0b, $07, $03, $03, $09
	db $0c, $ff, $ff, $01, $0d, $0c, $07, $fe, $00, $02, $2f, $12, $0f, $fe, $00, $03
	db $1b, $c7, $05, $05, $1f, $c7, $05, $0d, $4f, $c7, $0b, $0c, $52, $4f, $52, $52
	db $4f, $0b, $50, $52, $52, $50, $4e, $01, $38, $39, $01, $01, $38, $39, $01, $4d
	db $4e, $08, $3c, $3d, $01, $08, $3c, $3d, $01, $4d, $4e, $01, $01, $01, $01, $01
	db $01, $01, $01, $4d, $4e, $01, $77, $56, $01, $0c, $0d, $0e, $01, $4d, $4e, $01
	db $74, $74, $01, $10, $3a, $00, $01, $4d, $4e, $01, $01, $01, $01, $77, $56, $77
	db $31, $4d, $4e, $0a, $1d, $1e, $31, $74, $74, $0a, $31, $4d, $50, $0a, $65, $64
	db $61, $61, $61, $61, $61, $4f, $00, $12, $14, $ec, $43, $e4, $51, $e9, $50, $0e
	db $0d, $e8, $41, $f0, $c6, $0a, $0a, $47, $f6, $29, $c9, $0c, $6a, $41, $12, $c9
	db $0a, $0a, $00, $f6, $f9, $c6, $21, $4e, $40, $9e, $c7, $09, $14, $f8, $27, $16
	db $c7, $84, $43, $0f, $05, $19, $17, $00, $29, $13, $1d, $00, $2a, $0f, $15, $00
	db $2b, $09, $15, $00, $2c, $07, $20, $00, $2d, $06, $11, $11, $08, $01, $13, $09
	db $1d, $15, $0a, $13, $1e, $0b, $19, $18, $0c, $07, $1b, $0d, $07, $04, $18, $11
	db $fe, $00, $01, $0b, $0c, $22, $ff, $ff, $02, $04, $1d, $22, $fe, $00, $03, $0d
	db $0d, $15, $ff, $d3, $04, $48, $0d, $16, $ff, $ff, $05, $2f, $1b, $0a, $ff, $d0
	db $06, $0b, $09, $15, $fe, $02, $07, $46, $c8, $19, $17, $fb, $c7, $13, $1d

	jp $0fc7


	dec d
	ld [hl], l
	rst $00
	add hl, bc
	dec d
	ld h, c
	rst $00
	rlca
	db $20

	db $2c, $2c, $29, $0f, $0f, $0f, $0f, $0f, $1b, $08, $0f, $0f, $0f, $0f, $0f, $0f
	db $0f, $0f, $0f, $0f, $2c, $2c, $29, $0f, $0f, $0f, $0f, $0f, $1b, $01, $0f, $0f
	db $31, $31, $31, $31, $31, $31, $0f, $0f, $2c, $2c, $29, $0a, $52, $52, $52, $34
	db $01, $01, $01, $31, $31, $31, $0c, $0d, $0e, $31, $0f, $0f, $2c, $2c, $29, $4d
	db $0f, $0f, $0f, $0f, $1b, $01, $1b, $31, $31, $08, $10, $11, $12, $31, $0f, $0f
	db $2c, $2c, $29, $4d, $0f, $0f, $0f, $0f, $1b, $01, $02, $03, $1a, $1a, $07, $07
	db $07, $1a, $0f, $0f, $2c, $2c, $29, $4d, $0f, $0f, $0f, $0f, $1b, $01, $01, $01
	db $01, $01, $01, $01, $01, $31, $0f, $0f, $57, $57, $25, $4d, $0f, $0f, $0f, $0f
	db $1b, $01, $77, $77, $77, $77, $77, $77, $77, $77, $0f, $0f, $0a, $0a, $0a, $4d
	db $0f, $0f, $0f, $0f, $1b, $01, $02, $03, $01, $01, $01, $01, $01, $01, $0f, $0f
	db $31, $01, $01, $0a, $6c, $6c, $6c, $6c, $08, $01, $77, $77, $01, $0a, $20, $21
	db $0a, $01, $0f, $0f, $3f, $3b, $01, $01, $01, $01, $01, $01, $01, $01, $74, $74
	db $01, $0a, $7c, $73, $0a, $01, $0f, $0f, $2c, $29, $1c, $6f, $0a, $0a, $0a, $0a
	db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $0f, $0f, $2c, $29, $01, $0a
	db $34, $74, $74, $0a, $01, $74, $01, $20, $21, $01, $74, $0a, $0a, $01, $0f, $0f
	db $2c, $29, $01, $0a, $1d, $1f, $1e, $0a, $01, $0a, $01, $7c, $72, $01, $0a, $0a
	db $74, $01, $0f, $0f, $57, $25, $1a, $07, $65, $43, $64, $2f, $1a, $2f, $1a, $1a
	db $1a, $1a, $1a, $1a, $1a, $1a, $0f, $0f, $0a, $4d, $01, $74, $0a, $0a, $0a, $0a
	db $01, $0a, $08, $0a, $74, $74, $01, $74, $74, $01, $0f, $0f, $0a, $4d, $77, $77
	db $77, $77, $77, $77, $77, $77, $01, $77, $77, $77, $77, $77, $77, $77, $0f, $0f
	db $0a, $0a, $0a, $0a, $0a, $0a, $4d, $0a, $0a, $4d, $01, $4e, $0a, $0a, $4e, $0a
	db $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $4d, $0a, $0a, $4d, $01, $4e
	db $0a, $0a, $4e, $0a, $0a, $0a, $0a, $0a

	nop
	ld [de], a
	inc d
	and $45
	jr z, @+$5a

	call nc, $0556
	dec c
	sbc [hl]
	ld b, b
	ld [de], a
	ret


	ld a, [bc]
	ld a, [bc]
	nop
	or $f9
	add $0e
	ld [hl], l
	ld b, d
	or l
	rst $00
	add hl, bc
	inc hl
	ld hl, sp+$00
	ld [de], a
	rst $00
	ld [hl], a
	ld b, l
	nop
	ld a, [bc]
	rlca
	rlca
	ld c, $00
	inc [hl]
	dec b
	inc de
	ld [bc], a
	inc [hl]
	ld de, $0010
	ld [hl], $0d
	dec e
	nop
	scf
	ld de, $0017
	jr c, jr_006_45ab

	rlca
	nop
	add hl, sp
	add hl, de
	dec c
	nop
	ld a, [hld]
	rlca
	dec e
	inc de
	ld b, $13
	ld hl, $1107
	jr @+$0a

	add hl, de
	ld c, $09
	add hl, bc
	rrca
	ld a, [bc]
	ld de, $0b0b
	rla
	add hl, de
	inc c

jr_006_45ab:
	dec b
	ld b, $13
	inc c
	rst $38
	rst $38
	ld bc, $1d07
	dec d
	rst $38
	rst $38
	ld [bc], a
	inc c
	dec d
	rra
	rst $38
	rst $38
	inc bc
	inc c
	dec e
	ld e, $fe
	ld [bc], a
	inc b
	inc b
	inc d
	daa
	rst $38
	ret nc

	dec b
	ld e, b
	rst $00
	rlca
	ld c, $40
	rst $00
	dec b
	inc de
	db $db
	rst $00
	ld de, $ad10
	rst $00
	dec c
	dec e
	sbc $c7
	ld de, $7217
	ret z

	dec e
	rlca
	ld b, c
	ret z

	add hl, de
	dec c
	ld a, [bc]
	ld a, [bc]
	ld d, d
	ld d, d
	ld d, d
	ld d, d
	ld d, d
	ld d, d
	ld d, d
	ld d, d
	ld d, d
	ld d, d
	ld d, d
	ld d, d
	ld d, d
	ld d, d
	ld d, d
	ld l, a
	ld l, a
	ld l, a
	ccf
	dec sp
	ld bc, $7474
	inc c
	dec c
	dec c
	ld c, $20
	dec c
	ld hl, $6f6f
	ld a, [bc]
	ld [hl], h
	ld [hl], h
	ld l, [hl]
	rrca
	rrca
	inc l
	add hl, hl
	ld bc, $7474
	ld [hl], l
	ld [hl], c
	ld [hl], c
	db $76
	ld a, h
	ld a, l
	ld a, [hl]
	ld a, [bc]
	inc [hl]
	ld a, [bc]
	ld [hl], h
	ld [hl], h
	ld l, [hl]
	rrca
	rrca
	inc l
	add hl, hl
	ld a, [de]
	cpl
	rlca
	scf
	ld a, l
	ld a, [hld]
	ld a, [hl]
	ld a, [de]
	rlca
	rlca
	rlca
	ld b, d
	rlca
	cpl
	rlca
	ld b, d
	rrca
	rrca
	inc l
	add hl, hl
	ld bc, $0101
	ld bc, $0801
	ld bc, $0a01
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld l, [hl]
	rrca
	rrca
	inc l
	add hl, hl
	ld bc, $7474
	ld [hl], h
	ld [hl], h
	ld [hl], h
	ld [hl], h
	ld bc, $0101
	ld bc, $0101
	ld bc, $3e01
	ccf
	ccf
	inc l
	add hl, hl
	ld bc, $0101
	ld bc, $0101
	ld bc, $0a01
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld [bc], a
	inc bc
	ld bc, $2c28
	inc l
	inc l
	add hl, hl
	ld bc, $0a0a
	ld bc, $0d0c
	ld c, $01
	ld bc, $2120
	ld bc, $0101
	ld bc, $5724
	ld d, a
	inc l
	add hl, hl
	ld bc, $0a0a
	ld [$1110], sp
	ld [de], a
	ld bc, $7c0a
	ld [hl], e
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld bc, $0101
	ld bc, $292c
	ld bc, $0101
	ld bc, $0101
	ld bc, $011b
	ld bc, $0101
	ld bc, $0801
	ld bc, $0101
	inc l
	add hl, hl
	inc e
	ld l, a
	ld l, a
	inc e
	ld l, a
	ld l, a
	ld l, a
	dec de
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld bc, $3f3e
	ccf
	inc l
	add hl, hl
	ld bc, $0101
	ld bc, $2120
	ld bc, $3101
	ld [hl], a
	ld d, [hl]
	ld [hl], a
	ld [hl], a
	ld sp, $2801
	inc l
	inc l
	inc l
	add hl, hl
	ld bc, $0a0a
	ld a, [bc]
	ld a, h
	ld [hl], d
	ld [hl], h
	ld bc, $746e
	ld [hl], h
	ld [hl], h
	ld [hl], h
	ld l, l
	ld bc, $5724
	ld d, a
	inc l
	add hl, hl
	ld bc, $0101
	ld bc, $0101
	ld bc, $6e01
	ld [hl], h
	ld [hl], h
	ld [hl], h
	ld [hl], h
	ld l, l
	ld bc, $0a4d
	ld a, [bc]
	dec hl
	dec h
	ld bc, $0302
	ld [hl], h
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld [$076e], sp
	cpl
	rlca
	rlca
	ld l, l
	ld bc, $0a4d
	ld a, [bc]
	add hl, hl
	inc de

	db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $4d

	ld a, [bc]
	ld a, [bc]
	dec h
	ld d, c

	db $51, $51, $51, $51, $0f, $0f, $0f, $01, $0f, $0f, $0f, $51, $51, $51, $51, $51

	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]

	db $0a, $0a, $0a, $0a, $0f, $0f, $0f, $01, $0f, $0f, $0f, $0a, $0a, $0a, $0a, $0a

	ld a, [bc]
	ld a, [bc]
	nop
	ld [de], a
	inc d
	jr nc, jr_006_479b

	ld [bc], a
	ld e, l
	ld d, l
	ld e, e
	rrca
	inc hl
	ld a, l
	ld b, a
	ldh a, [$c6]
	ld a, [bc]
	ld a, [bc]
	inc hl
	or $09
	ret z

	db $10
	ld a, [c]
	ld b, l
	ld [de], a
	ret


	ld a, [bc]
	ld a, [bc]
	nop
	or $f9
	add $0f
	ld [hl], $44
	sbc [hl]
	rst $00
	add hl, bc
	dec l
	ld hl, sp+$59
	ld c, b
	rst $00
	inc d
	ld e, $47
	or l
	rst $00
	add hl, bc
	ld e, $f8
	nop
	dec c
	rst $00
	add [hl]
	ld b, a
	rrca
	ld a, [bc]
	dec bc
	dec de
	nop
	ld a, $0f
	dec c
	nop
	ccf
	ld de, $0013
	ld b, b
	inc de
	ld e, $00
	ld b, c
	add hl, de
	dec c
	nop

jr_006_479b:
	ld b, d
	add hl, de
	add hl, de
	nop
	ld b, e
	dec bc
	inc b
	nop
	db $e4
	add hl, bc
	dec de
	ld [bc], a
	ld a, $0b
	add hl, bc
	ld bc, $09e6
	add hl, bc
	nop
	and $06
	inc de
	rla
	inc c
	dec e
	ld de, $190d
	ld a, [de]
	ld c, $11
	inc d
	rrca
	add hl, de
	dec bc
	db $10
	dec d
	dec de
	ld de, $020b
	ld b, $18
	rst $38
	ret nc

	ld bc, $0c18
	ld [hli], a
	rst $38
	rst $38
	ld b, d
	and $05
	rlca
	jr jr_006_47f8

	rst $38
	ret nc

	inc bc
	inc c
	ld d, $13
	cp $01
	inc b
	inc c
	add hl, de
	dec c
	cp $02
	dec b
	ld sp, $2010
	rst $38
	ret nc

	ld b, $06
	ld e, $21
	rst $38
	jp nc, $0507

	ld e, $20
	rst $38
	ret nc

	ld [$1f06], sp

jr_006_47f8:
	dec c
	cp $02
	add hl, bc
	inc c
	db $10
	ld [wd0ff], sp
	ld a, [bc]
	ld sp, $1f10
	rst $38
	ret nc

	dec bc
	sub d
	rst $00
	dec bc
	dec de
	cp a
	rst $00
	rrca
	dec c
	call c, $11c7
	inc de
	db $fc
	rst $00
	inc de
	ld e, $41
	ret z

	add hl, de
	dec c
	ld b, a
	ret z

	add hl, de
	add hl, de
	add a
	rst $00
	dec bc
	inc b
	ld a, b
	rst $00
	add hl, bc
	dec de
	adc c
	rst $00
	dec bc
	add hl, bc
	ld l, a
	rst $00
	add hl, bc
	add hl, bc
	inc l
	inc l
	inc l
	inc l
	inc l
	inc l
	add hl, hl
	ld b, e
	ld b, e
	add hl, de
	ld d, h
	ld c, [hl]
	ld a, [bc]
	jr jr_006_4882

	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	inc l
	inc l
	dec hl
	ld d, a
	ld d, a
	ld d, a
	dec h
	ld b, e
	ld b, e
	add hl, de
	ld d, h
	ld d, b
	rlca
	jr jr_006_4896

	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	inc l
	inc l
	add hl, hl
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	add hl, de
	ld a, [bc]
	ld c, [hl]
	ld a, [bc]
	jr @+$45

	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	inc l
	inc l
	add hl, hl
	add hl, de
	ld l, h
	ld l, h
	ld l, h
	ld l, h
	ld l, h
	ld [hl], $0a
	ld l, l
	ld l, [hl]
	ld l, h
	ld l, h
	ld l, h
	ld l, h
	rrca
	rrca
	ld l, l
	inc l
	inc l

jr_006_4882:
	add hl, hl
	add hl, de
	ld d, l
	ld d, l
	ld d, l
	ld d, l
	ld d, l
	ld l, [hl]
	ld a, [bc]
	ld l, l
	ld l, [hl]
	ld d, l
	ld d, l
	ld d, l
	ld d, l
	rrca
	rrca
	ld l, l
	ld d, a
	ld d, a

jr_006_4896:
	ld [hl], b
	add hl, de
	ld [bc], a
	add hl, bc
	inc bc
	jr nc, @+$0b

	inc bc
	ld bc, $0101
	ld [bc], a
	add hl, bc
	inc bc
	ld bc, $0930
	inc bc
	ld sp, $3131
	add hl, de
	ld bc, $0101
	ld bc, $0101
	ld bc, $010a
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	dec de
	ld a, [bc]
	ld a, [bc]
	ld c, [hl]
	rra
	rra
	rra
	add hl, de
	ld e, h
	rlca
	ld [bc], a
	add hl, bc
	inc bc
	jr nz, jr_006_48e8

	ld a, [bc]
	ld bc, $0101
	ld bc, $011b
	ld bc, $6b50
	ld l, e
	ld l, e
	dec d
	ld bc, $0a0a
	ld a, [bc]
	ld a, [bc]
	ld a, h
	ld [hl], d
	rlca
	inc c
	dec c
	dec c
	ld c, $01
	ld a, [bc]
	ld bc, $010a
	ld bc, $0101

jr_006_48e8:
	ld bc, $0101
	ld bc, $0101
	ld bc, $1008
	ld de, $1211
	ld a, [de]
	cpl
	ld e, h
	ld h, d
	ld d, c
	ld d, c
	ld c, [hl]
	ld bc, $740a
	ld [hl], h
	ld [hl], h
	ld [hl], h
	ld [hl], h
	ld [hl], h
	ld bc, $0801
	ld sp, $3131
	ld e, a
	ld bc, $744e
	ld [hl], h
	ld c, [hl]
	ld bc, $0101
	jr nz, jr_006_4935

	ld bc, $0101
	ld bc, $2120
	ld [hl], h
	ld [hl], h
	ld [hl], h
	ld e, a
	ld bc, $744e
	ld [hl], h
	ld c, [hl]
	ld bc, $560a
	ld a, h
	ld a, [hl]
	ld bc, $0930
	inc bc
	ld a, h
	ld [hl], e
	jr nc, @+$0b

	inc bc
	ld e, a
	ld bc, $744e

jr_006_4935:
	ld [hl], h
	ld c, [hl]
	ld bc, $0101
	ld bc, $0101
	ld bc, $0101
	ld bc, $0101
	ld bc, $5f01
	ld bc, $744e
	ld [hl], h
	ld h, d
	ld l, h
	ld l, h
	ld l, h
	ld l, h
	ld [hl], $56
	ld [hld], a
	ld l, h
	ld l, h
	ld l, h
	ld l, h
	ld l, h
	ld l, h
	ld l, h
	ld l, h
	ld bc, $744e
	ld [hl], h
	ld c, [hl]
	ld bc, $0101
	ld bc, $0101
	ld bc, $0101
	ld bc, $0101
	ld bc, $0101
	ld bc, $744e
	ld [hl], h
	ld d, b
	ld d, d
	ld d, d
	ld l, l
	ld e, l
	ld l, [hl]
	rlca
	rlca
	rlca
	rlca
	ld c, [hl]
	ld e, l
	ld c, l
	ld d, d
	ld d, d
	ld d, d
	ld d, d
	ld c, [hl]
	ld [hl], h
	ld [hl], h
	ld [hl], h
	ld [hl], h
	ld [hl], h
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
	ld [hl], h
	ld [hl], h
	ld [hl], h
	ld [hl], h
	ld [hl], h
	nop
	ld [de], a
	inc d
	ccf
	ld c, d
	rst $20
	ld h, e
	add hl, de
	ld h, e
	add hl, bc
	ld de, $412b
	ldh a, [$c6]
	ld a, [bc]
	ld a, [bc]
	inc hl
	or $09
	ret z

	ld d, $7b
	ld b, l
	or l
	rst $00
	add hl, bc
	ld e, $f8
	nop
	dec c
	rst $00
	cp d
	ld c, c
	ld b, e
	add hl, bc
	inc bc
	dec bc
	nop
	ld e, c
	dec c
	add hl, bc
	nop
	ld e, d
	dec c
	rla
	nop
	ld e, e
	inc de
	inc c
	nop
	ld e, h
	inc de
	rla
	nop
	ld e, l
	rra
	ld [de], a
	nop
	ld e, [hl]
	rra
	inc de
	nop
	ld e, [hl]
	dec c
	rrca
	nop
	call nz, $0703
	nop
	and e
	rlca
	inc bc
	dec de
	rlca
	dec c
	dec h
	ld [$180d], sp
	add hl, bc
	inc bc
	inc c
	ld a, [bc]
	dec c
	rlca
	dec bc
	inc de
	rlca
	inc c
	rrca
	dec e
	dec c
	ld b, $0f
	dec bc
	rla
	cp $02
	ld bc, $0a0b
	ld [de], a
	rst $38
	rst $38
	ld [bc], a
	inc de

jr_006_4a04:
	ld [hli], a
	rla
	rst $38
	pop de
	inc bc
	dec bc
	dec bc
	ld [hli], a
	rst $38
	rst $38
	inc b
	dec b
	dec c
	ld hl, $01fe
	dec b
	inc de
	rra
	dec e
	cp $02
	ld b, $22
	rst $00
	inc bc
	dec bc
	and e
	rst $00
	dec c
	add hl, bc
	xor d
	rst $00
	dec c
	rla
	di
	rst $00
	inc de
	inc c
	ld hl, sp-$39
	inc de
	rla
	sub d
	ret z

	rra
	ld [de], a
	sub d
	ret z

	rra
	inc de
	and [hl]
	rst $00
	dec c
	rrca
	jr nz, jr_006_4a04

	inc bc
	rlca
	ld b, e
	ld b, e
	ld b, e
	jr nz, @+$23

	jr nz, jr_006_4a67

	jr nz, jr_006_4a69

	ld sp, $2120
	ld sp, $3131
	ld sp, $3131
	ld sp, $4331
	ld l, e
	ld l, e
	ld a, h
	ld a, [hl]
	ld a, h
	ld [hl], d
	scf
	ld a, [hl]
	ld sp, $7e37
	ld [hl], a
	ld d, [hl]
	ld [hl], a
	ld [hl], a
	ld [hl], a
	ld sp, $3131

jr_006_4a67:
	add hl, de
	ld b, e

jr_006_4a69:
	ld h, h
	ld sp, $3131
	ld sp, $3131
	ld sp, $3131
	ld sp, $3131
	ld sp, $1b31
	ld sp, $1931
	ld b, e
	dec l
	rra
	ld e, $31
	ld sp, $3131
	ld sp, $3131
	ld sp, $4931
	ld c, b
	ld sp, $311b
	ld sp, $4319
	ld b, e
	ld b, e
	dec l
	rra
	rra
	ld e, $31
	ld sp, $3131
	ld sp, $4431
	ld b, l
	ld sp, $311b
	ld sp, $4319
	ld b, e
	ld b, e
	jr nz, jr_006_4aca

	ld b, e
	jr nz, jr_006_4acd

	ld sp, $2031
	ld hl, $3131
	ld sp, $1b31
	ld sp, $1931
	ld b, e
	ld h, h
	ld [$7e7c], sp
	ld sp, $7e7c
	ld sp, $7c31
	ld [hl], e
	ld [hl], a
	ld [hl], a
	ld [hl], a
	ld [hl], a
	inc de
	ld d, [hl]

jr_006_4aca:
	ld [hl], a
	add hl, de
	ld b, e

jr_006_4acd:
	ld h, h
	ld sp, $3131
	ld sp, $3131
	ld sp, $3131
	ld sp, $0831
	ld sp, $3131
	ld sp, $1931
	ld b, e
	ld h, h
	ld sp, $0d0c
	ld c, $31
	ld sp, $3131
	jr nz, jr_006_4b0d

	dec e
	ld e, $54
	dec e
	rra
	rra
	rra
	add hl, de
	ld b, e
	ld h, h
	ld d, [hl]
	db $10
	ld de, $3512
	dec e
	ld e, $31
	ld a, h
	ld a, [hl]
	ld h, l
	ld h, h
	ld d, h
	ld h, l
	ld b, e
	ld b, e
	ld b, e
	add hl, de
	ld b, e
	ld h, h
	ld sp, $3131

jr_006_4b0d:
	ld sp, $6531
	ld h, h
	ld sp, $3131
	ld h, l
	dec l
	ld d, h
	ld l, $43
	ld b, e
	ld b, e
	add hl, de
	ld b, e
	ld h, h
	ld sp, $3131
	ld sp, $6531
	dec l
	rra
	rra
	rra
	ld l, $43
	ld d, h
	ld b, e
	ld h, h
	rrca
	rrca
	add hl, de
	ld b, e
	dec l
	rra
	rra
	rra
	rra
	rra
	ld l, $43
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld d, h
	ld b, e
	ld h, h
	rrca
	rrca
	add hl, de
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld d, h
	ld d, h
	ld d, h
	ld d, h
	ld d, h
	ld d, h
	ld d, h
	ld b, e
	dec l
	ld h, a
	rra
	add hl, de
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld d, h
	ld a, b
	ld a, b
	ld a, b
	ld a, b
	ld a, b
	ld a, b
	ld b, e
	ld b, e
	jr jr_006_4bae

	add hl, de
	ld l, e
	ld l, e
	ld l, e
	ld l, e
	ld l, e
	ld l, e
	ld l, e
	inc de
	ld d, h
	inc de
	ld l, e
	ld l, e
	ld l, e
	ld l, e
	ld l, e
	ld l, e
	ld l, e
	jr jr_006_4bc2

	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	dec b
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e

jr_006_4b8e:
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
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld d, h
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
	nop
	ld [de], a
	inc d
	add [hl]
	ld c, h
	ld h, a
	ld l, e

jr_006_4bae:
	ld h, h
	ld l, e
	rlca
	ld e, $11
	ld c, a
	ld [de], a
	ret


	ld a, [bc]
	ld a, [bc]
	nop
	or $f9
	add $1d
	adc $4c
	sbc [hl]
	rst $00
	add hl, bc

jr_006_4bc2:
	add hl, de
	ld hl, sp+$31
	jr nz, jr_006_4b8e

	ld a, [de]
	add sp, $49
	or l
	rst $00
	add hl, bc
	ld e, $f8
	nop
	dec c
	rst $00
	call nc, $0f4b
	add hl, bc
	dec c
	dec b
	nop
	sbc b
	dec de
	dec bc
	nop
	sbc c
	dec de
	inc de
	nop
	sbc d
	dec de
	dec de
	nop
	sbc e
	inc bc
	ld [de], a
	nop
	sbc h
	dec de
	dec b
	nop
	sbc l
	dec c
	ld d, $00
	sbc [hl]
	dec de
	rra
	ld bc, $18a4
	rra
	nop
	and h
	ld c, $17
	rrca
	dec bc
	rrca
	add hl, de
	inc c
	dec b
	ld de, $0d0d
	ld b, $0e
	dec de
	inc d
	rrca
	dec e
	dec de
	db $10
	rrca
	dec d
	ld de, $051d
	ld [de], a
	rlca
	ld hl, $0713
	dec de
	inc d
	rlca
	dec c
	dec d
	dec c
	rra
	ld d, $0f
	dec c
	rla
	rlca
	rlca
	jr jr_006_4c30

	inc b
	db $10
	ld c, $fe
	ld [bc], a
	ld bc, $150b

jr_006_4c2e:
	jr nz, jr_006_4c2e

jr_006_4c30:
	ld [bc], a
	ld [bc], a
	cpl
	ld [de], a
	ld [hli], a
	rst $38
	ret nc

	inc bc
	inc b
	inc c
	inc e
	rst $38
	pop de
	inc b
	jr c, jr_006_4c49

	inc hl
	cp $00
	dec b
	dec a
	ld a, [bc]
	dec e
	rst $38
	rst $38

jr_006_4c49:
	ld b, $05
	ld a, [bc]
	db $10
	cp $02
	rlca
	dec b
	db $10
	ld [hli], a
	cp $02
	ld [$153c], sp
	inc c
	cp $00
	add hl, bc
	ld a, $09
	ld a, [bc]
	rst $38
	rst $38
	ld a, [bc]
	and c
	rst $00
	dec c
	dec b
	ld e, d
	ret z

	dec de
	dec bc
	ld e, [hl]
	ret z

	dec de
	inc de
	ld h, d
	ret z

	dec de
	dec de
	ld h, $c7
	inc bc
	ld [de], a
	ld d, a
	ret z

	dec de
	dec b
	xor d
	rst $00
	dec c
	ld d, $64
	ret z

	dec de
	rra
	ld c, d
	ret z

	jr jr_006_4ca5

	rrca
	rrca
	rrca
	rrca
	rrca
	rrca
	rrca
	rrca
	jr nz, jr_006_4c9d

	ld hl, $0f0f
	rrca
	rrca
	rrca
	rrca
	rrca
	rrca
	rrca
	rrca
	ld a, d
	ld l, a

jr_006_4c9d:
	ld l, a
	ld l, a
	ld l, a
	ld l, a
	ld a, d
	scf
	ld a, [hld]
	ld a, [hl]

jr_006_4ca5:
	ld a, d
	ld l, a
	ld l, a
	ld l, a
	ld l, a
	ld l, a
	ld l, a
	ld a, d
	rrca
	rrca
	ld l, [hl]
	dec e
	ld e, $0f
	ld [hl], h
	ld [hl], h
	ld l, l
	ld d, [hl]
	ld d, l
	ld [hl], a
	ld l, [hl]
	ld bc, $0f01
	ld bc, $0101
	ld l, l
	rrca
	rrca
	ld l, [hl]
	ld [hl], a
	ld d, [hl]
	rrca
	ld [hl], a
	ld d, [hl]
	ld l, l
	ld a, d
	ld l, a
	ld l, a
	ld h, b
	ld [hl], a
	ld d, [hl]
	rrca
	ld [hl], a
	ld d, [hl]
	ld [hl], a
	ld l, l
	rrca
	rrca
	ld a, d
	ld a, d
	ld a, d
	ld a, d
	ld a, d
	ld a, d
	ld a, d
	ld l, [hl]
	ld a, d
	ld a, d
	ld a, d
	ld a, d
	ld a, d
	ld a, d
	ld a, d
	ld a, d
	ld a, d
	ld a, d
	rrca
	rrca
	ld a, d
	jr nz, jr_006_4d0f

	ld l, a
	ld l, a
	ld l, a
	ld l, a
	ld h, b
	ld a, d
	jr nz, jr_006_4d03

	ld hl, $6c6e
	ld l, h
	ld l, h
	ld l, l
	ld a, d
	rrca
	rrca
	ld a, d
	ld a, h
	ld [hl], e
	ld a, d

jr_006_4d03:
	ld a, d
	ld a, d
	ld a, d
	ld a, d
	ld a, d
	scf
	ld a, [hld]
	ld a, [hl]
	ld h, b
	ld [hl], a
	ld d, [hl]
	ld [hl], a

jr_006_4d0f:
	ld l, l
	ld a, d
	rrca
	rrca
	ld l, a
	ld l, a
	ld l, a
	ld l, a
	ld l, a
	ld a, c
	ld a, d
	ld a, d
	ld l, [hl]
	ld d, [hl]
	ld d, l
	ld d, [hl]
	ld a, d
	ld a, d
	ld a, d
	ld a, d
	ld a, d
	ld l, a
	rrca
	ld bc, $6701
	rra
	rra
	rra
	ld l, l
	ld a, d
	ld a, d
	ld l, [hl]
	ld bc, $0155
	ld l, h
	ld l, h
	ld l, h
	ld l, h
	ld l, h
	ld sp, $4e31
	ld bc, $6b14
	ld l, e
	ld l, e
	ld d, b
	ld d, d
	ld d, d
	ld h, b
	ld bc, $0155
	ld [hl], a
	ld [hl], a
	ld [hl], a
	ld [hl], a
	ld sp, $0f31
	ld c, [hl]
	ld bc, $0101
	ld bc, $0101
	ld bc, $0101
	ld bc, $5f55
	ld [hl], h
	dec e
	rra
	ld e, $1b
	ld l, [hl]
	rrca
	ld c, [hl]
	ld a, $3f
	ccf
	ccf
	ccf
	ccf
	ccf
	ccf
	ccf
	ccf
	dec sp
	ld e, a
	ld [hl], h
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	dec de
	ld l, [hl]
	rrca
	ld c, [hl]
	inc h
	jr nz, jr_006_4d87

	ld hl, $5757
	ld d, a
	ld d, a
	jr nz, @+$23

	dec h
	ld e, a
	jr c, jr_006_4dbe

	jr c, @+$3b

jr_006_4d87:
	dec de
	ld l, [hl]
	rrca
	ld c, [hl]
	ld e, b
	ld a, h
	ld de, $027e
	inc bc
	jr nc, jr_006_4d96

	ld a, h
	ld [hl], d
	ld e, c

jr_006_4d96:
	ld sp, $3d3c
	inc a
	dec a
	ld sp, $0f6e
	ld c, [hl]
	ld e, b
	ld [$3131], sp
	ld sp, $3131
	ld sp, $3131
	ld e, c
	ld e, a
	ld d, [hl]
	ld [hl], a
	ld sp, $1b77
	ld l, [hl]
	rrca
	ld c, [hl]
	ld e, d
	rlca
	rlca
	ld e, h
	ld l, a
	ld l, a
	ld l, a
	ld e, h
	rlca
	rlca
	ld e, e

jr_006_4dbe:
	ld bc, $0101
	ld bc, $3131
	ld l, [hl]
	rrca
	ld d, b
	ld d, d
	ld d, d
	ld d, d
	ld d, d
	ld a, $3f
	dec sp
	ld [hl], h
	ld [hl], h
	ld [hl], h
	ld [hl], h
	ld d, b
	ld d, d
	ld d, d
	ld d, d
	ld d, d
	ld d, d
	ld l, [hl]
	rrca
	ld sp, $3131
	ld sp, $2831
	inc l
	add hl, hl
	ld sp, $3131
	ld sp, $3f3e
	dec sp
	rrca
	rrca
	rrca
	rrca
	rrca

	call Call_006_4e36
	ld a, [wd6b1]
	bit 0, a
	ret z

	ld a, [wd97e]
	and a
	ret nz

	ld a, [wd981]
	inc a
	ld [wd981], a
	cp $3c
	ret nz

	xor a
	ld [wd981], a
	ld a, [wd980]
	inc a
	ld [wd980], a
	cp $3c
	ret nz

	xor a
	ld [wd980], a
	ld a, [wd97f]
	inc a
	ld [wd97f], a
	cp $3c
	ret nz

	xor a
	ld [wd97f], a
	ld a, [wd97d]
	inc a
	ld [wd97d], a
	cp $ff
	ret nz

	ld a, $ff
	ld [wd97e], a
	ret


Call_006_4e36:
	ld a, [wd0ff]
	and a
	jr nz, jr_006_4e40

	ld a, $ff
	jr jr_006_4e41

jr_006_4e40:
	dec a

jr_006_4e41:
	ld [wd0ff], a
	and a
	ret nz

	ld a, [wd6af]
	res 1, a
	res 2, a
	bit 5, a
	res 5, a
	ld [wd6af], a
	ret z

	xor a
	ldh [$b3], a
	ldh [$b4], a
	ret


	ld a, [wd6ca]
	bit 4, a
	jr z, jr_006_4e67

	ld hl, wd6c6
	set 6, [hl]

jr_006_4e67:
	call $3c6c
	ld hl, $4e73
	ld a, [wd570]
	jp $3dc7


	db $81, $4e, $b2, $4e, $d2, $4e, $12, $4f, $4b, $4f, $56, $4f

	add a
	ld c, a

	ld a, [wd6c6]
	bit 0, a
	ret nz

	ld a, [wd2e0]
	cp $01
	ret nz

	xor a
	ldh [$b4], a
	ld a, $04
	ld [wd4a7], a
	ld a, $ff
	call $0e45
	ld a, $02
	ld c, a
	ld a, $db
	call $0e35
	ld a, $fc
	ld [wcd66], a
	ld hl, wd6ca
	set 7, [hl]
	ld a, $01
	ld [wd570], a
	ret


	xor a
	ld [wcf08], a
	ld a, $01
	ldh [$8c], a
	call $13f1
	ld a, $ff
	ld [wcd66], a
	ld a, $00
	ld [wcc4d], a
	ld a, $15
	call $3e9d
	ld a, $02
	ld [wd570], a
	ret


	ld a, $01
	ldh [$8c], a
	ld a, $04
	ldh [$8d], a
	call $34f0
	call $3e07
	ld a, $01
	ld [wd2e0], a
	ld a, $01
	ldh [$9b], a
	ld a, $01
	swap a
	ldh [$95], a
	ld a, $22
	call $3e9d
	ld hl, $ff95
	dec [hl]
	ld a, $20
	call $3e9d
	ld de, wcc97
	ld a, $01
	ldh [$8c], a
	call $3684
	ld a, $ff
	ld [wcd66], a
	ld a, $03
	ld [wd570], a
	ret


	ld a, [wd6af]
	bit 0, a
	ret nz

	xor a
	ld [$c109], a
	ld a, $01
	ld [wcf08], a
	ld a, $fc
	ld [wcd66], a

Jump_006_4f26:
	ld a, $01
	ldh [$8c], a
	call $13f1
	ld a, $ff
	ld [wcd66], a
	ld a, $01
	ld [wcf0e], a
	xor a
	ld [wcf0b], a
	ld a, $01
	ld [wcc57], a
	ldh a, [hLoadedROMBank]
	ld [wcc58], a
	ld a, $04
	ld [wd570], a
	ret


	ld a, [wcc57]
	and a
	ret nz

	ld a, $05
	ld [wd570], a
	ret


Jump_006_4f56:
	ld a, [wd6c9]
	bit 2, a
	jr nz, jr_006_4f7c

	and $03
	cp $03
	jr nz, jr_006_4f7c

	ld hl, wd6c9
	set 2, [hl]
	ld a, $27
	ld [wcc4d], a
	ld a, $11
	call $3e9d
	ld a, $28
	ld [wcc4d], a
	ld a, $15
	jp $3e9d


jr_006_4f7c:
	ld a, [wd6ca]
	bit 4, a
	ret z

	ld hl, wd6ca
	set 6, [hl]
	ret


	db $96, $4f, $3e, $50

	ld l, b
	ld d, b
	sbc e
	ld d, b
	or h
	ld d, b
	db $d3
	ld d, b
	sbc $50

	db $08

	ld a, [wcf08]
	and a
	jr nz, jr_006_4fa7

	ld a, $01
	ld [wcc3c], a
	ld hl, $4fb0
	jr jr_006_4faa

jr_006_4fa7:
	ld hl, $4fe2

jr_006_4faa:
	call $3c79
	jp $0f6a


	db $00, $84, $e3, $86, $13, $72, $b5, $e3, $b2, $e7, $4f, $cf, $c3, $e3, $e7, $7f
	db $cf, $c2, $de, $2c, $e0, $b1, $e7, $50, $08

	ld c, $0a
	call $3781
	xor a
	ld [wcd4f], a
	ld [wcd50], a
	ld a, $4c
	call $3e9d
	ld a, $04
	ld [wd4a7], a
	jp $0f6a


	db $00, $84, $e3, $86, $13, $72, $b1, $3c, $c5, $b2, $7f, $c4, $ba, $30, $df, $c0
	db $e7, $4f, $b8, $bb, $d1, $d7, $33, $ca, $55, $d4, $be, $b2, $c9, $7f, $54, $26
	db $7f, $c4, $3b, $30, $bd, $e7, $51, $ba, $c1, $d7, $d3, $7f, $54, $dd, $4f, $d3
	db $df, $c3, $7f, $b2, $da, $3a, $55, $c0, $c0, $b6, $b4, $d9, $c9, $30, $26, $56
	db $55, $bf, $b3, $2c, $e0, $e7, $51, $56, $7f, $c1, $e2, $df, $c4, $4f, $dc, $bc
	db $c6, $7f, $c2, $b2, $c3, $7f, $b7, $c5, $bb, $b2, $e7, $57, $00, $dc, $c0, $bc
	db $d3, $4f, $54, $dd, $7f, $bf, $30, $c3, $c3, $d9, $c9, $e7, $51, $c2, $d6, $b8
	db $7f, $c5, $da, $3a, $4f, $05, $e3, $13, $9d, $ab, $c9, $7f, $b6, $dc, $d8, $c6
	db $7f, $c5, $d9, $bc, $c8, $57

	nop
	or [hl]
	ld h, $b8
	ret


	ld a, a
	pop bc
	or [hl]
	rst $10
	rst $18
	jp $bd7f


	add hl, hl
	db $e3
	rst $20
	ld d, c
	or d
	rst $08
	jp z, Jump_006_5b7f

	jp nz, $bcb3

	sbc $33
	ld c, a
	inc [hl]
	or e
	jr z, @-$2a

	ld a, a
	ld d, h
	db $dd
	ld d, l
	ld [de], a
	db $e3
	adc a
	add $bc
	jp $b57f


	cp b
	jp c, wded9

	jr nc, @-$3a

	ld d, a
	nop
	cp d
	cp d
	jp z, $847f

	db $e3
	add [hl]
	inc de
	ld a, a
	jp z, $beb6

	ret


	ld c, a
	ld d, h
	ld a, a
	cp c
	sbc $b7
	pop hl
	or e
	inc l
	ld [c], a
	ld d, a
	nop
	cp d
	cp d
	jp z, $9d7f

	adc d
	and l
	ld a, a
	adc a
	add d
	xor e
	ld c, a
	sbc l
	adc d
	and l
	jp z, wcf7f

	rst $18
	cp h
	db $db
	ld a, a
	jp z, wcf2c

	ret c

	ret


	or d
	db $db
	ld d, a
	nop
	cp d
	cp d
	jp z, Jump_006_527f

	ld a, a
	ret


	or d
	or h
	ld d, a
	nop
	cp d
	cp d
	jp z, Jump_006_537f

	ld a, a
	ret


	or d
	or h
	ld d, a

	call $3c6c
	ld hl, $50f5
	ld a, [wd573]
	jp $3dc7


	db $fd, $50, $5a, $51, $8b, $51

	pop bc
	ld d, c

	call Call_006_5103
	jp Jump_006_5135


Call_006_5103:
	ld a, [wd6cb]
	bit 0, a
	ret nz

	ld a, [wd2d5]
	cp $7f
	jr nz, jr_006_5116

	ld hl, wd6cb
	set 0, [hl]
	ret


jr_006_5116:
	ld a, [wd2e0]
	cp $08
	ret nz

	ld a, [wd2e1]
	cp $20
	ret nz

	ld a, $0e
	ldh [$8c], a
	call $13f1
	xor a
	ldh [$b4], a
	call Call_006_51cf
	ld a, $03
	ld [wd573], a
	ret


Jump_006_5135:
	ld a, [wd6ca]
	bit 5, a
	ret nz

	ld a, [wd2e0]
	cp $09
	ret nz

	ld a, [wd2e1]
	cp $13
	ret nz

	ld a, $05
	ldh [$8c], a
	call $13f1
	xor a
	ldh [$b4], a
	call Call_006_51cf
	ld a, $03
	ld [wd573], a
	ret


	ld a, [$c134]
	ld [$ffeb], a
	ld a, [$c136]
	ld [$ffec], a
	ld a, [$c234]
	ld [$ffed], a
	ld a, [$c235]
	ld [$ffee], a
	xor a
	ld [wcc36], a
	ld a, $01
	ld [wd037], a
	ld a, $05
	ld [wd0ec], a
	ld a, $70
	ld [wd036], a
	ld a, $02
	ld [wd573], a
	ret


	ld a, [$ffeb]
	ld [$c134], a
	ld a, [$ffec]
	ld [$c136], a
	ld a, [$ffed]
	ld [$c234], a
	ld a, [$ffee]
	ld [$c235], a
	call $0ebd
	call $3e07
	xor a
	ld [wcd66], a
	ld a, $0f
	ldh [$8c], a
	call $13f1
	xor a
	ld [wd037], a
	ld [wcd66], a
	ld a, $00
	ld [wd573], a
	ret


	ld a, [wcd38]
	and a
	ret nz

Call_006_51c6:
	call $3e07
	ld a, $00
	ld [wd573], a
	ret


Call_006_51cf:
	call $34d0
	ld a, $01
	ld [wcd38], a
	ld a, $80

Call_006_51d9:
	ld [wccd3], a
	xor a
	ld [$c109], a
	ld [wcd66], a
	ret


	ld [bc], a
	ld d, d

Jump_006_51e6:
	ld d, b

Call_006_51e7:
	ld d, d
	cp b
	ld d, d
	dec [hl]
	ld d, e
	cp h
	ld d, e
	inc bc

jr_006_51ef:
	ld d, h

	db $e4, $54

	db $ed
	ld d, l
	ld a, [bc]
	ld d, [hl]
	ld c, h
	ld d, [hl]
	sub [hl]
	rrca
	xor a
	rrca
	or b
	ld d, [hl]
	cp c
	ld d, [hl]

	db $cd, $55

	nop
	or a
	ret nc

	ld h, $7f
	cp d
	cp h
	add $7f
	jp nz, wc3b9

	reti


	ld c, a
	cp a
	ret


	ld a, a
	and c
	xor e
	adc h
	adc a

jr_006_5217:
	db $e3
	inc e
	db $e3
	and [hl]
	jp z, $e756

	ld d, l
	rst $08
	cp e
	cp h
	cp b
	ld a, a
	ld d, h
	jr nc, jr_006_51ef

	rst $20
	ld d, c
	or d
	jp nz, wd333

	ld a, a
	ld d, h
	ret


	ld a, a
	jr nc, jr_006_51ef

	or d
	jp c, Jump_006_4f26

	inc l
	push de
	or e
	add $7f
	inc sp
	or a
	reti


	ld a, a
	push bc
	sbc $c3
	ld d, l
	dec a
	sbc $d8
	push bc
	ld a, a
	sub $c9
	push bc
	or [hl]
	jr nc, jr_006_5217

	ld d, a
	ld [wd5fa], sp
	jp nc, Jump_006_7ffe

	ld hl, $529f
	jr z, jr_006_5265

	ld a, [wd6d0]
	bit 1, a
	jr nz, jr_006_5265

	ld hl, $526b

jr_006_5265:
	call $3c79
	jp $0f6a


	nop
	or d
	jp nz, $b77f

	jp $4fd3


	cp d
	ret


	ld a, a
	ld d, h
	ld a, a
	dec bc
	sbc a
	jp z, $bc7f

	rst $08
	rst $18

Jump_006_527f:
	call nz, Call_006_51d9
	or d
	rst $18
	ret nz

	or d
	ld a, a
	inc [hl]
	sbc $c5
	ld a, a
	and d
	sub c
	ld h, $4f
	ret c

	db $e3
	rrca
	db $e3
	db $dd
	ld a, a
	cp h
	call nz, wded9
	inc l
	ldh [$db], a
	or [hl]
	and $57
	nop
	sub e
	add [hl]
	xor c
	ld a, a
	dec bc
	sbc a
	ret


	ld a, a
	ret c

	db $e3
	rrca
	db $e3
	ld h, $4f
	or [hl]
	or h
	rst $18
	jp $b77f


	ret nz

	cpl
	rst $20
	ld d, a
	ld [wd921], sp
	ld d, d
	call $3c79
	call $3636
	ld a, [wcc26]
	and a
	jr nz, jr_006_52d0

	ld hl, $5300
	call $3c79
	jr jr_006_52d6

jr_006_52d0:
	ld hl, $52f4
	call $3c79

jr_006_52d6:
	jp $0f6a


	nop
	or d
	db $d3
	pop de
	cp h
	ld a, a
	ld d, h
	add $ca
	ld c, a
	ld hl, sp-$44
	pop hl
	reti


	or d
	ld a, a
	or d
	reti


	rst $18
	jp $bc7f


	rst $10
	push bc
	or d
	and $57
	nop
	cp a
	jp c, wd7c5

	ld a, a
	or d
	or d
	sbc $30
	rst $20
	ld d, a
	nop
	add [hl]
	xor l
	adc a
	ld b, c
	db $e3
	jp z, $347f

	cp b
	ld h, $7f
	push bc
	or d
	cp c
	inc [hl]
	ld c, a
	ld a, [de]
	db $e3
	inc de
	and [hl]
	add $ca
	ld a, a
	inc [hl]
	cp b
	ld h, $7f
	or c
	reti


	sub $51
	ld d, h
	ld h, $7f
	cp e
	cp e
	jp c, $b2c5

	sub $b3
	add $4f
	or a
	db $dd
	ld a, a
	jp nz, wd6b9

	or e
	ret z

	ld d, a
	ld [wcafa], sp
	sub $cb
	ld l, a
	jr nz, jr_006_5345

	ld hl, $534e
	call $3c79
	jr jr_006_534b

jr_006_5345:
	ld hl, $5386
	call $3c79

jr_006_534b:
	jp $0f6a


	nop
	or c
	rst $10
	rst $10
	ld a, a
	inc l
	or d
	pop bc
	ldh [$de], a
	rst $20
	ld c, a
	cp d
	sbc $c5
	ld a, a
	call nz, wdbba
	inc sp
	ld a, a
	ret z

	pop bc
	ldh [$df], a
	jp $bc55


	ld [c], a
	db $e3
	ld h, $7f
	push bc
	or d
	call c, $e7c8
	ld d, l
	sub $b2
	ld h, $7f
	cp e
	jp nc, wcfd9

	inc sp
	ld a, a
	rst $08

Jump_006_537f:
	jp nz, $b6bc

	push bc
	or d
	call c, $0057
	call nz, $34b7
	or a
	ld a, a
	sub l
	ld a, [de]
	adc e
	sub d
	or b
	rst $08
	inc sp
	ld c, a
	or l
	or [hl]
	or d
	db $d3
	ret


	add $7f
	or d
	or a
	rst $08
	cp l
	cp c
	inc [hl]
	ld d, c
	sub e
	add [hl]
	xor c
	ret


	db $d3
	ret c

	ld a, a
	rst $18
	jp wd04f


	pop bc
	ld h, $7f
	rst $08
	ld h, $d8
	ld a, a
	cp b
	ret z

	rst $18
	jp wc9d9


	sub $57
	ld [wce21], sp
	ld d, e
	call $3c79
	call Call_006_51cf
	ld a, $03
	ld [wd573], a
	jp $0f6a


	nop
	or e
	or d
	db $e3
	rst $18
	rst $20
	ld a, a
	set 3, a
	cp b
	ld d, [hl]
	ld a, a
	rst $08
	pop bc
	call nc, wda26
	rst $20
	ld c, a
	call c, wc9bc
	ld a, a
	jp z, $bcc5

	db $dd
	ld a, a
	or a
	cp c
	rst $20
	ld d, c
	ld d, [hl]
	ld a, a
	cp d
	rst $10
	rst $20
	ld c, a
	or d
	cp b
	push bc
	rst $20
	ld a, a
	call nz, $b27f
	rst $18
	call nz, $e3db
	ld h, $e7
	ld d, a
	ld [wcbfa], sp
	sub $cb
	ld c, a
	jr nz, jr_006_542e

	ld hl, $5437
	call $3c79
	ld bc, $f201
	call $3e5e
	jr nc, jr_006_5426

	ld hl, $54a2
	call $3c79
	ld hl, wd6cb
	set 1, [hl]
	jr jr_006_5434

jr_006_5426:
	ld hl, $54d6
	call $3c79
	jr jr_006_5434

jr_006_542e:
	ld hl, $54bb
	call $3c79

jr_006_5434:
	jp $0f6a


	nop
	call z, $e3b1
	rst $20
	ld c, a
	set 0, l
	ret nz

	ld a, $df
	cp d
	ld a, a
	cp h
	jp $55c3


	ret z

	pop de
	rst $18
	jp $bc7f


	rst $08

Call_006_544f:
Jump_006_544f:
	rst $18
	ret nz

	rst $20
	ld d, c
	ld d, [hl]
	ld a, a
	call wc5de
	ld a, a
	push de
	jp nc, Jump_006_7fdd

	ret nc

	ret nz

	ld c, a
	adc h
	ret c

	db $e3
	ld b, d
	ld h, $7f
	push de
	jp nc, Jump_006_7fdd

	cp b
	rst $18
	jp wc0b2


	rst $20
	ld d, l
	ld d, [hl]
	or l
	sub $e6
	ld a, a
	ld a, $b8
	ld a, a
	or d
	jp nz, wcfc9

	add $55

Call_006_547f:
	ld e, h
	ld a, a
	db $d3
	rst $18
	jp $b9d9


	inc [hl]
	and $51
	or e
	db $e3
	sbc $4f
	or a
	ret nc

	ld h, $7f
	call c, $b2d9
	rst $20
	ld d, l
	cp d
	jp c, $b77f

	ret nc

	add $7f
	or c
	add hl, hl
	reti


	rst $20
	ld e, b
	nop
	ld d, d

jr_006_54a4:
	jp z, wc67f

	or d
	pop bc
	ldh [$de], a
	or [hl]
	rst $10
	ld c, a
	ld e, h
	ld a, [wddf8]
	ld a, a
	db $d3
	rst $10
	rst $18
	ret nz

jr_006_54b7:
	rst $20
	ld d, b
	db $10
	ld d, b
	nop
	ld e, h
	ld a, [wc9f8]
	ld a, a
	push bc
	or [hl]
	ret nc

	jp z, Jump_006_4f56

	push de
	jp nc, $b2b8

	ld a, a
	jr nc, jr_006_54a4

	ld d, [hl]
	ld d, l
	ld d, [hl]
	ld a, a
	jr z, jr_006_54b7

	ld d, [hl]
	ld d, a
	nop
	add $d3
	jp nz, $b27f

	rst $18
	ld b, h
	or d
	ld a, a
	inc l
	ldh [$de], a
	ld d, a

	db $08

	ld hl, $550f
	call $3c79
	ld c, $02
	call $3781
	call $3636
	ld a, [wcc26]
	and a
	jr z, jr_006_5506

	ld hl, $553c
	call $3c79
	ld a, $01
	ld [wd573], a
	jr jr_006_550c

jr_006_5506:
	ld hl, $55b4
	call $3c79

jr_006_550c:
	jp $0f6a


	db $00, $b3, $e3, $de, $56, $4f, $d6, $df, $44, $d7, $df, $c3, $c0, $7f, $d0, $c0
	db $b2, $2c, $e0, $e7, $51, $b1, $c0, $cf, $26, $7f, $b2, $c0, $b2, $56, $51, $c4
	db $b7, $c6, $7f, $b5, $b2, $bf, $27, $56, $7f, $b6, $c5, $e6, $57, $00, $ce, $df
	db $ce, $b3, $e7, $4f, $54, $2d, $b6, $de, $7f, $c2, $b8, $df, $c4, $d9, $b6, $51
	db $c5, $d7, $7f, $dc, $bc, $b6, $d7, $7f, $80, $13, $19, $81, $8c, $2c, $e0, $e7
	db $4f, $54, $dd, $7f, $c2, $b6, $cf, $b4, $c3, $7f, $bc, $d7, $3d, $da, $3a, $55
	db $2c, $34, $b3, $c3, $b7, $c6, $7f, $47, $e3, $0b, $26, $55, $cc, $b4, $c3, $7f
	db $b2, $b8, $de, $2c, $e0, $d6, $e7, $51, $c5, $de, $2c, $e0, $e3, $4f, $c2, $b6
	db $cf, $b4, $b6, $c0, $dd, $7f, $bc, $d7, $de, $c9, $b6, $e7, $51, $33, $ca, $56
	db $7f, $dc, $bc, $26, $4f, $b5, $c3, $ce, $de, $dd, $7f, $d0, $be, $c3, $7f, $d4
	db $d9, $b6, $c5, $e7, $57, $00, $8f, $81, $9f, $7f, $81, $0c, $7f, $9d, $97, $e3
	db $56, $4f, $56, $7f, $c4, $b7, $ca, $7f, $b6, $c8, $c5, $d8, $b6, $57, $00, $ca
	db $2c, $d2, $c9, $7f, $b3, $c1, $ca, $4f, $54, $dd, $7f, $d6, $dc, $d7, $be, $c3
	db $b6, $d7, $55, $c4, $d9, $c9, $26, $7f, $89, $91, $2c, $e0, $e7, $57

	nop
	cp d
	cp d
	jp z, $937f

	add [hl]
	xor c
	adc e
	sub d
	or b
	ld c, a
	sub e
	add [hl]
	xor c
	jp z, wSpriteCurPosY

	inc [hl]
	ret c

	ld a, a
	or h
	or d
	or h
	sbc $c9
	or d
	db $db
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
	call nz, $b6c6
	cp b
	ld a, a
	ld d, h
	db $dd
	ld a, a
	jp nz, wcfb6

	or h
	jp $134f


	xor e
	inc de
	xor e
	ld a, a
	call z, $bfd4
	or e
	rst $20
	ld d, l
	ld e, l
	call nz, $7fc9
	cp h
	ld [c], a
	or e
	inc a
	db $d3
	ld d, l
	ret nz

	cp b
	cp e
	sbc $7f
	db $d3
	rst $18
	jp wc4d9


	ld a, a
	push de
	or e
	ret c

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
	ld d, h
	add $ca
	ld a, a
	ret nz

	or d
	ret c

	ld [c], a
	cp b
	ret


	ld a, a
	adc $b6
	ld c, a
	call c, wdd2b
	ld a, a
	cp b
	ret c

	jr nc, @-$41

	ld a, a
	add hl, hl
	sbc $b7
	ret


	ld a, a
	db $d3
	call nz, Call_006_4055
	xor c
	db $e3
	ld b, e
	add c
	xor e
	sub e
	ld h, $7f
	or c
	ret c

	rst $08
	cp l
	ld d, c
	call c, $7f2b
	ld a, [hli]
	call nz, $7fc9
	ld b, b
	xor c
	db $e3
	ld b, e
	add c
	xor e
	sub e
	ld h, $4f
	push bc
	cp b
	push bc
	rst $18
	ret nz

	ld a, a
	call nz, wd3b7
	ld d, l
	ld d, h
	adc l
	xor e
	adc a
	db $e3
	inc sp
	ld a, a
	call nc, wcfbd
	cp [hl]
	jp Jump_006_57e7


	nop
	sub e
	add [hl]
	xor c
	ld a, a
	ld d, h
	dec bc
	sbc a
	ld d, a
	nop
	sub e
	add [hl]
	xor c
	ld a, a
	dec bc
	sbc a
	ret


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
	call $3c6c
	ld hl, $56e0
	ld a, [wd576]
	jp $3dc7


	xor $56
	dec e
	ld d, a
	ld [hl], b
	ld d, a
	add [hl]
	ld d, a
	and d
	ld d, a
	or $57
	inc c
	ld e, b
	xor a
	ld [wd598], a
	ld hl, wd6d3
	res 0, [hl]
	call Call_006_56fb
	ret


Call_006_56fb:
	ld a, [wd6d4]
	bit 7, a
	ret nz

	ld hl, $5714
	call $3509
	ret nc

	ld a, $f0
	ld [wcd66], a
	ld a, $05
	ldh [$8c], a
	jp $13f1


	ld de, $1123
	inc h
	ld [de], a
	dec h
	inc de
	dec h
	rst $38
	ld a, [wcc57]
	and a
	ret nz

	ld a, $03
	ldh [$8c], a
	ld a, $04
	ldh [$8d], a
	call $34f0
	ld a, $34
	ldh [$8d], a
	call $3503
	call $0d9b
	ld hl, wcd5b
	set 4, [hl]
	ld a, $0d
	ldh [$8c], a
	call $13f1
	ld a, $3c
	ldh [$eb], a
	ld a, $30
	ldh [$ec], a
	ld a, $0c
	ldh [$ed], a
	ld a, $11
	ldh [$ee], a
	ld a, $03
	ld [wcf0e], a
	call $3341
	ld a, $03
	ldh [$8c], a
	ld de, $576b
	call $3684
	ld a, $02
	ld [wd576], a
	ret


	nop
	nop
	nop
	nop
	rst $38
	ld a, [wd6af]
	bit 0, a
	ret nz

	ld a, $03
	ld [wcc4d], a
	ld a, $11
	call $3e9d
	ld a, $03
	ld [wd576], a
	ret


	ld a, $03
	ld [wcf0e], a
	call $3346
	ld a, $03
	ld [wcc4d], a
	ld a, $15
	call $3e9d
	xor a
	ld [wcd66], a
	ld a, $00
	ld [wd576], a
	ret


	ld a, [wcc57]
	and a
	ret nz

	ld a, $05
	ldh [$8c], a
	ld a, $08
	ldh [$8d], a
	call $34f0
	ld a, $18
	ldh [$8d], a
	call $3503
	call $0d9b
	ld hl, wcd5b
	set 4, [hl]
	ld a, $0e
	ldh [$8c], a
	call $13f1
	ld a, $3c
	ldh [$eb], a
	ld a, $40
	ldh [$ec], a
	ld a, $16
	ldh [$ed], a
	ld a, $10

Call_006_57d6:
	ldh [$ee], a
	ld a, $05
	ld [wcf0e], a
	call $3341
	ld a, $05
	ldh [$8c], a
	ld de, $57f0

Call_006_57e7:
Jump_006_57e7:
	call $3684
	ld a, $05
	ld [wd576], a
	ret


	ret nz

	ret nz

	ret nz

	ret nz

	ret nz

	rst $38
	ld a, [wd6af]
	bit 0, a
	ret nz

	ld a, $04
	ld [wcc4d], a
	ld a, $11
	call $3e9d
	ld a, $06
	ld [wd576], a
	ret


	ld a, $05
	ld [wcf0e], a
	call $3346
	ld a, $04
	ld [wcc4d], a
	ld a, $15
	call $3e9d
	xor a
	ld [wcd66], a
	ld a, $00
	ld [wd576], a
	ret


	ld b, h
	ld e, b
	add d
	ld e, b
	jp z, $8758

	ld e, c
	ld bc, $715a
	ld e, d
	xor e
	ld e, d
	sub [hl]
	rrca
	xor a
	rrca
	dec b
	ld e, e
	inc d
	ld e, e
	ld a, [hld]
	ld e, e
	ld e, e
	ld e, c
	ld d, d
	ld e, d
	nop
	ld b, c
	xor h
	ld b, c
	rst $18
	jp $c27f


	or a
	or [hl]
	rst $10
	ld a, a
	or a
	ret nz

	rst $18
	jp $824f


	xor c
	adc d
	ld a, a
	cp h
	rst $18
	jp $e6d9


	ld d, c
	add h
	sub c
	add [hl]
	sbc [hl]
	call nc, wc6cf
	ld c, a

jr_006_5867:
	jp nz, wc9b7

	or d
	cp h
	ld h, $7f
	or l
	pop bc
	jp wd7b6


	ld d, l
	ret nc

	or [hl]
	cp c
	reti


	ld a, a
	sub $b3
	add $7f
	push bc
	rst $18
	ret nz

	ret


	ld d, a
	nop
	sub l
	ld a, [de]
	ld a, a
	adc e
	sub d
	or b
	jp z, wd14f

	cp h
	call nz, Call_006_7fd8
	cp h
	ld [c], a
	or e
	ret z

	sbc $7f
	ret nc

	ret nz

	or d
	add $55
	ret nz

	jr nc, jr_006_5867

	ld a, a
	cp h
	pop hl
	ret nc

	inc sp
	ld a, a
	ld d, h
	ld d, l
	call nc, wc3df
	reti


	ld a, a
	call nc, $7fc2
	ld a, [hld]
	or [hl]
	ret c

	rst $20
	ld d, c
	cp h
	or [hl]
	cp h
	ld a, a
	sub l
	ld a, [de]
	ld a, a
	ld d, h
	ld a, a
	dec bc
	sbc a
	ret


	ld c, a
	adc a
	adc b
	adc e
	jp z, $c17f

	ld h, $b3
	ld l, $57
	ld [$0a21], sp
	ld e, c
	call $3c79
	call $3636
	ld a, [wcc26]
	and a
	jr nz, jr_006_58e2

	ld hl, $5921
	call $3c79
	jr jr_006_5907

jr_006_58e2:
	ld hl, $5941
	call $3c79
	xor a
	ldh [$b3], a
	ldh [$b4], a
	ld [wcf0b], a
	ld a, $02
	ld [wcc57], a
	ldh a, [hLoadedROMBank]
	ld [wcc58], a
	ld a, $03
	ld [wcf0e], a
	call $333c
	ld a, $01
	ld [wd576], a

jr_006_5907:
	jp $0f6a


	nop
	or a
	ret nc

	jp z, wd37f

	or e
	ld c, a
	jp z, $3cb8

	jp nz, wdeb6

	ld a, a
	cp c
	sbc $26
	cp b
	cp h
	ret nz

	and $57
	nop
	add h
	sub c
	add [hl]
	sbc [hl]
	call nc, $7fcf
	inc sp
	ld a, a
	ret nc

	jp nz, wdfb6

	ret nz

	ld c, a
	add l
	adc l
	add [hl]
	ret


	ld a, a

jr_006_5936:
	jp $2cde


	ld a, a
	cp l
	ld a, [hli]
	or [hl]
	rst $18
	ret nz

	rst $20
	ld d, a
	nop
	or h
	ld d, [hl]
	rst $20
	ld c, a
	cp a
	ret c

	ldh [$7f], a
	ld l, $df
	ret nz

	or d
	ld d, l
	or d
	rst $18
	ret nz

	ld a, a
	adc $b3
	ld h, $7f
	or d
	or d
	rst $20
	ld d, a
	nop
	cp d
	cp d
	jr nc, jr_006_5936

	rst $20
	ld c, a
	cp c
	sbc $26
	cp b
	add $ca
	ld d, l
	add $e1
	or e
	inc l
	ld [c], a
	or e
	ret c

	ld [c], a
	or e
	ld h, $7f
	or d
	reti


	cp c
	inc [hl]
	ld d, l
	inc l
	ldh [rRP], a
	rst $20
	ld d, l
	ld a, $b8
	jp z, $ba7f

	cp d
	inc sp
	rst $20
	ld d, a
	ld [$a921], sp
	ld e, c
	call $3c79
	call $3636
	ld a, [wcc26]
	cp $00
	jr nz, jr_006_59a0

	ld hl, $59c2
	call $3c79
	jr jr_006_59a6

jr_006_59a0:
	ld hl, $59d9
	call $3c79

jr_006_59a6:
	jp $0f6a


	nop
	adc e
	xor [hl]
	db $e3
	ld d, [hl]
	rst $20
	ld c, a
	ld a, $b8
	ld h, $55
	push bc
	add $7f
	call nc, wc3df
	reti


jr_006_59bb:
	or [hl]
	ld a, a
	call c, wd9b6
	and $57
	nop
	cp a
	or e
	ld d, [hl]
	ld a, a
	cp a
	jp c, $4fe7

	cp c
	rst $18
	cp d
	or e
	ld a, a
	adc $c8
	ld h, $7f
	or l
	jp c, wd6d9

	ld d, a
	nop
	or [hl]
	jr nc, jr_006_59bb

	add $7f
	call nc, $b2be
	ret


	ld a, a
	ld d, h
	ld h, $4f
	jp z, wd7b2

	push bc
	or d
	ld a, a
	sub $b3
	add $55
	pop de
	cp h
	sub $b9
	adc h
	ld b, d
	and a
	db $e3
	ld a, a
	rst $08
	or d
	jp wc9d9


	cp e
	ld d, a
	ld [$2821], sp
	ld e, d
	call $3c79
	xor a
	ldh [$b4], a
	ld [wcf0b], a
	ld a, $03

jr_006_5a10:
	ld [wcc57], a
	ldh a, [hLoadedROMBank]
	ld [wcc58], a
	ld a, $05
	ld [wcf0e], a
	call $333c
	ld a, $04
	ld [wd576], a
	jp $0f6a


	nop
	or l
	rst $08
	or h
	ld d, [hl]
	rst $20
	ld c, a
	ld d, h
	ld a, a
	ld e, l
	ld a, a
	jr nc, jr_006_5a10

	and $55
	adc a
	adc b
	adc e
	ld h, $7f
	or c
	or d
	jp Jump_006_7fdd


	cp e
	ld h, $bc
	jp $55d9


	ld d, [hl]
	ld a, a
	cp d
	rst $18
	pop bc
	add $7f
	cp d
	or d
	rst $20
	ld d, a
	nop
	or [hl]
	jp Jump_006_7fd9


	inc l
	cp h
	sbc $26
	ld a, a
	or c
	reti


	push bc
	rst $10
	ld c, a
	adc a
	adc b
	adc e
	call nz, wc07f
	ret nz

	or [hl]
	rst $18
	jp wSpriteCurPosY


	push bc
	sub $e7
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
	cp h
	ld [c], a
	or e
	inc a
	ret


	ld a, a
	call nz, $4fb7
	pop bc
	ld [c], a
	rst $18
	call nz, $b930
	ld a, a
	inc sp
	db $d3
	ld d, l
	or [hl]
	or l
	db $dd
	ld a, a
	jr nc, @-$42

	ret nz

	ld a, a
	ld d, h
	jp z, $b955

	or d
	cp c
	sbc $c1
	ld h, $7f
	db $d3
	rst $10
	or h
	reti


	rst $20
	ld d, a
	nop
	ld d, [hl]
	ld a, a
	sub b
	and l
	adc e
	ld h, $7f
	jp z, $c3df

	ld a, a
	or c
	reti


	rst $20
	ld d, c
	cp e
	or d
	or a
	sbc $7f
	add h
	sub c
	add [hl]
	sbc [hl]
	call nc, $33cf
	ld c, a
	or a
	pop bc
	ld [c], a
	or e
	push bc
	ld a, a
	ld d, h
	ret


	ld d, l
	add l
	adc l
	add [hl]
	db $dd
	ld a, a
	rst $00
	cp l
	ret nc

	ld a, a
	rst $08
	cp b
	reti


	ld d, l
	or c
	cp b
	call nz, $26b3
	ld a, a
	or d
	rst $08
	cp l
	rst $20
	ld d, l
	or c
	call nc, $b2bc
	ld a, a
	set 0, h
	db $dd
	ld a, a
	ret nc

	ret nz

	rst $10
	ld d, [hl]
	rst $20
	ld d, l
	ld d, [hl]
	ld a, a
	sub l
	ld a, [de]
	ld a, a
	cp c
	or d
	cp e
	jp nz, wcf7f

	inc sp
	ld d, a
	nop
	sub l
	ld a, [de]
	ld a, a
	or [hl]
	ld h, $b8
	ld a, a
	jp z, $3cb8

	jp nz, wdeb6

	ld d, a
	nop
	sub l
	ld a, [de]
	adc e
	sub d
	or b
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
	adc a
	adc b
	adc e
	ld d, l
	jp nz, $b8d6

	jp $b67f


	ret nz

	or d
	ld a, a
	or d
	cp h
	ret


	ld a, a
	or l
	call nz, $57ba
	nop
	cp d
	cp d
	jp z, $957f

	ld a, [de]
	adc e
	sub d
	or b
	ld c, a
	sub l
	ld a, [de]
	jp z, wca7f

	or d
	or d
	db $db
	ld a, a
	or d
	cp h
	ret


	ld a, a
	or d
	db $db
	ld d, a
	call $3c6c
	ld hl, $5b72
	ld a, [wd58e]
	jp $3dc7


Jump_006_5b61:
	xor a
	ld [wcd66], a
	ld [wd58e], a
	ld a, $05
	ld [wcc4d], a
	ld a, $11
	jp $3e9d


	sbc l
	ld e, e
	inc a
	ld e, h
	add [hl]
	ld e, h
	push hl
	ld e, h
	ld a, h
	ld e, e
	ld a, [wd034]

Jump_006_5b7f:
	cp $ff
	jp z, Jump_006_5b61

	ld a, $f0
	ld [wcd66], a
	ld hl, wd6da
	set 7, [hl]
	ld a, $02
	ldh [$8c], a
	call $13f1
	xor a
	ld [wcd66], a
	ld [wd58e], a
	ret


	ld a, [wd6da]
	bit 7, a
	jr nz, jr_006_5bcc

	ld hl, $5c24
	call $3509
	jr nc, jr_006_5bcc

	ld a, [wcd3d]
	cp $01
	ld a, $08
	ld b, $00
	jr nz, jr_006_5bbb

	ld a, $04
	ld b, $04

jr_006_5bbb:
	ld [wd4a7], a
	ld a, b
	ld [$c129], a
	call $3e07
	ld a, $02
	ldh [$8c], a
	jp $13f1


jr_006_5bcc:
	ld a, [wd6d9]
	bit 0, a
	ret nz

	ld hl, $5c29
	call $3509
	ret nc

	ld a, [wd67f]
	and a
	jr z, jr_006_5be7

	ld a, $ff
	ld [wNewSoundID], a
	call $0e45

jr_006_5be7:
	ld c, $02
	ld a, $de
	call $0e35
	xor a
	ldh [$b4], a
	ld a, $f0
	ld [wcd66], a
	ld a, [wd2e1]
	cp $14
	jr z, jr_006_5c0a

	ld a, $01
	ldh [$8c], a
	ld a, $05
	ldh [$8b], a
	call $354a
	ld [hl], $19

jr_006_5c0a:
	ld a, $05
	ld [wcc4d], a
	ld a, $15
	call $3e9d
	ld de, $5c2e
	ld a, $01
	ldh [$8c], a
	call $3684
	ld a, $01
	ld [wd58e], a
	ret


	rlca
	ld e, $09
	ld e, $ff
	ld b, $14
	ld b, $15
	rst $38
	nop
	nop
	nop
	rst $38

Call_006_5c32:
	ld a, $01
	ldh [$8c], a
	xor a
	ldh [$8d], a
	jp $34f0


	ld a, [wd6af]
	bit 0, a
	ret nz

	xor a
	ld [wcd66], a
	ld a, $01
	ldh [$8c], a
	call $13f1
	ld hl, wd6ac
	set 6, [hl]
	set 7, [hl]
	ld hl, $5da4
	ld de, $5dc5
	call $339c
	ld a, $e1
	ld [wd036], a
	ld a, [wd694]
	cp $b1
	jr nz, jr_006_5c6d

	ld a, $07
	jr jr_006_5c77

jr_006_5c6d:
	cp $99
	jr nz, jr_006_5c75

	ld a, $08
	jr jr_006_5c77

jr_006_5c75:
	ld a, $09

jr_006_5c77:
	ld [wd03a], a
	xor a
	ldh [$b4], a
	call Call_006_5c32
	ld a, $02
	ld [wd58e], a
	ret


	ld a, [wd034]
	cp $ff
	jp z, Jump_006_5b61

	call Call_006_5c32
	ld a, $f0
	ld [wcd66], a
	ld hl, wd6d9
	set 0, [hl]
	ld a, $01
	ldh [$8c], a
	call $13f1
	ld a, $ff
	ld [wNewSoundID], a
	call $0e45
	ld b, $02
	ld hl, $4a44
	call $3620
	ld a, $01
	ldh [$8c], a
	call $358b
	ld a, [wd2e1]
	cp $14
	jr nz, jr_006_5cc5

	ld de, $5cdd
	jr jr_006_5cc8

jr_006_5cc5:
	ld de, $5cd5

jr_006_5cc8:
	ld a, $01
	ldh [$8c], a
	call $3684
	ld a, $03
	ld [wd58e], a
	ret


	add b
	nop
	nop
	nop
	nop
	nop
	nop
	rst $38
	ret nz

	nop
	nop
	nop
	nop
	nop
	nop
	rst $38
	ld a, [wd6af]
	bit 0, a
	ret nz

	ld a, $05
	ld [wcc4d], a
	ld a, $11
	call $3e9d
	xor a
	ld [wcd66], a
	call $0d9b
	ld a, $00
	ld [wd58e], a
	ret


	inc h
	ld e, l
	xor a
	ld e, [hl]
	rst $28
	ld e, a
	jr jr_006_5d6a

	ld d, h
	ld h, b
	ld a, c
	ld h, b
	db $d3
	ld h, b
	sub h
	ld h, c
	inc b
	ld h, d
	inc a
	ld h, d
	ld a, c
	ld h, b
	add e
	ld h, d
	and b
	ld h, d
	sub [hl]
	rrca
	xor a
	rrca
	rst $10
	ld h, d
	ld hl, sp+$62
	ld [wd9fa], sp
	sub $cb
	ld b, a
	jr z, jr_006_5d34

	ld hl, $5ddc
	call $3c79
	jr jr_006_5d3a

jr_006_5d34:
	ld hl, $5d3d
	call $3c79

jr_006_5d3a:
	jp $0f6a


	nop
	ld d, e
	ld [hl], d
	sub $b3
	ld a, a
	ld d, d
	rst $20
	ld d, c
	cp d
	sbc $c5
	ld a, a
	call nz, $4fba
	or e
	db $db
	pop bc
	ld [c], a
	db $db
	ld a, a
	cp h
	jp wc9c0


	or [hl]
	rst $20
	ld d, c
	or l
	jp c, wc57f

	sbc $b6
	ld a, a
	jp nz, $b2d6

	ret


	ld a, a
	cp l
	ld a, [hli]
	or d
	ret


jr_006_5d6a:
	ld c, a
	or d
	db $db
	or d
	db $db
	ld a, a
	jp nz, wcfb6

	or h
	ld a, a
	pop bc
	ldh [$df], a
	jp $2e55


	rst $18
	cp d
	or e
	pop bc
	ld [c], a
	or e
	ld a, a
	jr nc, jr_006_5db2

	rst $20
	ld d, c
	ld d, [hl]
	ld a, a
	inc [hl]
	jp c, wda34

	ld a, a
	ld d, d

jr_006_5d8e:
	jp z, wc54f

	sbc $b6
	ld a, a
	jp nz, wcfb6

	or h
	ret nz

	and $55
	ret nc

	cp [hl]
	jp wSpriteCurPosY


	db $db
	sub $e7
	ld d, a
	nop
	push bc
	sbc $30
	sub $e3
	rst $20
	ld c, a
	sbc a
	add [hl]
	add $7f
	push bc
	rst $18

jr_006_5db2:
	pop bc
	ldh [$df], a
	jp $55e7


	ld d, [hl]
	ld a, a
	call c, wdfb6
	ret nz

	ld a, a
	call c, wdfb6
	ret nz

	rst $20
	ld e, b
	nop
	push bc
	sbc $c0
	rst $18
	jp $4fe7


	or l
	jp c, $7fca

	jp $bbde


	or d
	ld a, a
	jr nc, jr_006_5d8e

	rst $10
	sub $e7
	ld e, b
	nop
	ld d, e
	ld [hl], d
	call $e3cd
	sbc $ac
	rst $20
	ld d, c
	or l
	jp c, $9d7f

	adc d
	add [hl]
	ret


	ld a, a
	or e
	pop bc
	add $7f
	or d
	rst $18
	jp wd24f


	dec l
	rst $10

jr_006_5df9:
	cp h
	or d
	ld a, a
	ld d, h
	ld a, a
	ret nz

	cp b
	cp e
	sbc $55
	ret nc

	cp [hl]
	jp wd37f


	rst $10
	rst $18
	pop bc
	ldh [$df], a
	ret nz

	ld a, a
	db $d3
	sbc $c8
	rst $20
	ld d, c
	or l
	or [hl]
	add hl, hl
	inc sp
	ld a, a
	ld d, h
	ld a, a
	dec l
	or [hl]
	sbc $c9
	ld c, a
	ld b, a
	db $e3
	dec bc
	ld h, $7f
	call z, wc0b4
	ld l, $e7
	ld d, c
	push bc
	add $bc
	db $db
	ld a, a
	sbc l
	adc d
	add [hl]
	jp z, wd57f

	or e
	jp nc, wc5b2

	ld c, a
	ld d, h
	ld a, a
	sbc l
	sub l
	add b
	ld a, a
	jr nc, jr_006_5df9

	rst $10
	push bc
	rst $20
	ld d, c
	ld e, e
	ld a, a
	jp nz, $bcb3

	sbc $c9
	ld c, a

Call_006_5e4f:
Jump_006_5e4f:
	ld d, h
	ld a, a
	or c
	dec l
	or [hl]
	ret c

	ld a, a
	adc e
	adc h
	sub d
	sbc a
	rst $20
	ld d, l
	or c
	jp c, Jump_006_7fd3

	sbc l
	adc d
	add [hl]
	ld h, $7f
	jp nz, wdfb8

	ret nz

	sbc $30
	ld l, $51
	or l
	rst $08
	or h
	db $d3
	ld a, a
	jp nz, wdfb6

	jp wded9


	push bc
	rst $10
	ld c, a
	or d
	pop bc
	inc [hl]
	ld a, a

Jump_006_5e7f:
	or l
	jp c, wc6b2

	ld a, a
	or d
	cp c
	ld a, [hld]
	and $51
	or l
	rst $18
	call nz, wSpriteCurPosY
	pop bc
	cp b
	cp e
	ld a, a
	cp b
	rst $18
	jp $4fd9


	ld a, [hld]
	or c
	or d
	ld a, a
	inc l
	ldh [$7f], a
	push bc
	or d
	ld l, $e7
	ld d, l
	ld d, [hl]
	ld a, a
	inc l
	ldh [$c5], a
	ld a, a
	add hl, de
	add c
	ld a, [de]
	db $e3
	rst $20
	ld d, a
	ld [wdafa], sp
	sub $cb
	ld a, a
	jr nz, jr_006_5ee0

	ld hl, $5f0c
	call $3c79
	ld hl, wd6ac
	set 6, [hl]
	set 7, [hl]
	ld hl, $5fb9
	ld de, $5fb9
	call $339c
	ldh a, [$8c]
	ld [wcf0e], a
	call $33b2
	call $331f
	ld a, $04
	ld [wd58e], a
	jp $0f6a


jr_006_5ee0:
	ld hl, $5fd9
	call $3c79
	ld bc, $e401
	call $3e5e
	jr c, jr_006_5ef6

	ld hl, $5f94
	call $3c79
	jr jr_006_5f09

jr_006_5ef6:
	ld a, $01
	ld [wcc3c], a

jr_006_5efb:
	ld hl, $5f55
	call $3c79
	ld b, $1d
	ld hl, $40af
	call $3620

jr_006_5f09:
	jp $0f6a


	nop
	or c
	ld a, a
	cp d
	rst $10
	rst $20
	ld c, a
	set 0, h
	sbc $c1
	ret


	ld a, a
	add $dc
	ld a, a
	jp z, wd9b2

	push bc
	sub $e7
	ld d, l
	ld d, [hl]
	ld a, a
	ld d, [hl]
	ld a, a
	or h
	ld a, a
	or l
	jp c, Jump_006_51e6

	ld d, [hl]
	ld a, a
	ret nz

	jr nc, jr_006_5efb

	ld a, a
	call nz, wd8b5
	ld a, a
	cp l
	ld h, $d8
	jr nc, jr_006_5f8b

	ld l, $e3
	sbc $2e
	sbc $7f
	or c
	call nc, $b8bc
	push bc
	or d
	sub $e7
	ld d, l
	ld d, [hl]
	ld a, a
	ld d, [hl]
	ld a, a
	or c
	call nc, $b2bc
	and $57
	nop
	ld d, d
	jp z, Jump_006_5e7f

	or d
	sbc $b6
	rst $10
	ld c, a
	ld e, h
	ld hl, sp-$02
	db $dd
	ld a, a
	call nz, $b6d8
	or h
	cp h
	ret nz

	rst $20
	ld d, b
	dec bc
	nop
	ld d, c
	cp a
	ld a, a
	cp a
	jp c, $e02c

	ld d, [hl]
	rst $20
	ld c, a
	or l
	jp c, $7fca

	ret nz

	or d
	cp e
	sbc $7f
	cp l
	reti


	or [hl]
	rst $10
	rst $20
	ld d, l

jr_006_5f87:
	ld d, [hl]
	ld a, a
	ld d, [hl]
	ld a, a

jr_006_5f8b:
	ld a, [hld]
	or d
	ld a, [hld]
	db $e3
	or d
	rst $20
	ld d, b
	dec c
	ld d, b
	nop
	add $d3
	jp nz, Jump_006_7f26

	or d
	rst $18
	ld b, h
	or d
	jr nc, jr_006_5f87

	ld d, c
	ld d, [hl]
	ld a, a
	cp d
	jp c, wdc7f

	ret nz

	cp e
	push bc
	or d
	call nz, $b54f
	jp c, wc67f

	add hl, hl
	rst $10
	jp c, $b2c5

	sub $e7
	ld d, a
	nop
	set 4, d
	or h
	db $e3
	ld a, a
	rst $08
	or d
	rst $18
	ret nz

	rst $20
	ld c, a
	db $d3
	or e
	ld a, a
	cp h
	push bc
	or d
	sub $e7
	ld d, l
	ret nc

	ret


	ld h, $bc
	jp $b87f


	jp c, $e7b2

	ld e, b
	nop
	ld d, [hl]

jr_006_5fdb:
	ld a, a
	call c, wdfb6
	ret nz

	rst $20
	ld c, a
	rst $00
	cp l
	sbc $30
	ld a, a
	ld e, h
	db $d3
	ld a, a
	or [hl]
	or h
	cp l
	sub $58
	nop
	or a
	ret nc

	db $d3
	ld a, a
	ld d, h
	ld a, a
	call nc, wc3df
	reti


	or [hl]
	rst $20
	ld c, a
	or c
	jp nz, wc0d2

	ret c

	ld a, a
	ret nz

	ret nz

	or [hl]
	rst $18
	ret nz

	ret c

	ld d, l
	or d
	db $db
	or d
	db $db
	ld a, a
	ret nz

	or d
	call Call_006_7fde
	jr nc, jr_006_5fdb

	rst $20
	ld d, a
	nop
	ret nc

	cp [hl]
	ret


	ld a, a
	rst $08
	or h
	ret


	ld a, a
	or e
	or h
	or a
	ld h, $7f
	inc l
	ldh [$cf], a
	inc sp
	ld c, a
	pop de
	cp d
	or e
	call $b27f
	cp c
	push bc
	or d
	sub $e7
	ld d, c
	inc sp
	db $d3
	ld a, a
	inc [hl]

jr_006_603b:
	cp d
	or [hl]
	ld a, a
	rst $08
	call c, wd0d8
	pop bc
	ld a, a
	cp l
	reti


	call nz, $b24f
	cp c
	reti


	ld a, a
	rst $10
	cp h
	or d
	ld a, a
	cp c
	inc [hl]
	ld d, [hl]
	ld d, a
	nop
	adc $ce
	or e
	ld d, [hl]
	rst $20
	ld c, a
	ld d, h
	ret


	ld a, a
	dec l
	or [hl]
	sbc $dd
	ld a, a
	jp nz, wdfb8

	jp $e6d9


	ld d, l
	cp a
	jp c, $7fca

	ret nz

	ret


	cp h
	cp a
	or e
	ld a, a
	jr nc, jr_006_603b

	or c
	rst $20
	ld d, a
	nop
	or [hl]
	call c, $bfb2
	db $e3
	push bc
	ld a, a

jr_006_6081:
	cp d
	call nz, Call_006_51c6
	cp d
	ret


	ld a, a
	or d
	or h
	jp z, $134f

	xor b
	inc e
	db $e3
	add $7f
	jp z, wd7b2

	jp c, wdec0

	jr nc, jr_006_6081

	ld d, l
	jp z, wc6de

	sbc $ca
	ld a, a
	call c, wdfb6
	call nz, $e7d9
	ld d, l
	ld e, [hl]
	ret


	ld a, a
	cp h
	call c, $302b
	rst $20
	ld d, c
	cp c
	or d
	cp e
	jp nz, wc47f

	cp h
	jp $4fd3


	ld e, [hl]
	ret


	ld a, a
	or c
	cp b
	inc l
	ld a, a
	add $ca
	ld d, l
	adc $c4
	adc $c4

jr_006_60c9:
	ld a, a
	cp d
	rst $08
	rst $18
	call nz, wc9d9
	jr nc, @-$17

	ld d, a
	ld [wd3f0], sp
	cp $b4
	jr c, jr_006_60e2

	ld hl, $60f7
	call $3c79
	jr jr_006_60f4

jr_006_60e2:
	cp $64
	jr c, jr_006_60ee

	ld hl, $612a
	call $3c79
	jr jr_006_60f4

jr_006_60ee:
	ld hl, $6149
	call $3c79

jr_006_60f4:
	jp $0f6a


	nop
	cp e
	or c
	ld a, a
	and d
	inc de
	and l
	xor e
	rst $20
	ld c, a
	adc [hl]
	sub l
	xor h
	add a
	ld a, a
	dec de
	db $e3
	sbc a
	ld a, a
	jr nc, jr_006_60c9

	ret


	sub $e7
	ld d, l
	ld d, [hl]
	call nc, wd734
	db $e3
	sbc $7f
	rst $18
	jp $553a


	call c, $bcc0
	ret


	ld a, a
	or d
	or e
	cp d
	call nz, $b77f
	or d
	jp Jump_006_57e7


	nop
	and d
	inc de
	and l
	xor e
	rst $20
	ld a, a
	cp a
	cp d
	inc sp
	ld a, a
	ld b, b
	db $e3
	xor e
	sub b
	rst $20
	ld c, a
	ld d, [hl]
	ld a, a
	ld h, $df

jr_006_613f:
	cp b
	cp h
	ld a, a
	rst $08
	ret nz

	ld a, a
	rrca
	and b
	rst $20
	ld d, a
	nop
	and d
	inc de
	and l
	xor e
	rst $20
	ld a, a
	or [hl]
	rst $10
	add $7f
	cp d
	db $d3
	reti


	ret


	rst $20
	ld c, a
	or c
	sbc $7f
	ld d, [hl]
	pop bc
	ld h, $e3
	or e
	rst $20
	ld d, l
	ld d, h
	rst $18
	jp wd17f


	dec l
	or [hl]
	cp h
	or d
	call c, Call_006_51e7
	ld d, h
	ld h, $4f
	or d
	or e
	cp d
	call nz, $b77f
	cp b
	or [hl]
	ld a, a
	inc [hl]
	or e
	or [hl]
	jp z, wcb55

	call nz, $7fc9
	or e
	inc sp
	rst $08
	or h
	ld a, a
	cp h
	jr nc, jr_006_613f

	ld a, a
	push bc
	sbc $30
	db $d3
	ret


	ld d, a
	ld [wd3f0], sp
	cp $b4
	jr c, jr_006_61a3

	ld hl, $61c4
	call $3c79
	jr jr_006_61c1

jr_006_61a3:
	cp $78
	jr c, jr_006_61af

	ld hl, $61d4
	call $3c79
	jr jr_006_61c1

jr_006_61af:
	cp $3c
	jr c, jr_006_61bb

	ld hl, $61e2
	call $3c79
	jr jr_006_61c1

jr_006_61bb:
	ld hl, $61f3
	call $3c79

jr_006_61c1:
	jp $0f6a


	nop
	and d
	inc de
	and l
	xor e
	jp z, wcb7f

	reti


	ret z

	ld a, a
	cp h
	jp $56d9


	ld d, a
	nop
	and d
	inc de
	and l
	xor e
	jp z, wc57f

	rst $08
	cp c
	jp $56d9


	ld d, a
	nop
	and d
	inc de
	and l
	xor e
	jp z, $bf7f

	rst $18
	ld c, b
	db $dd
	ld a, a
	pop de
	or d
	ret nz

	rst $20
	ld d, a
	nop
	and d
	inc de
	and l
	xor e
	jp z, $bc7f

	rst $10
	sbc $46
	ret c

	ld a, a
	cp h
	ret nz

	ld d, [hl]
	ld d, a
	nop
	call c, $bcc0
	db $d3
	ld a, a
	inc l
	jp $bcde


	ldh [$7f], a
	adc $bc
	or d
	rst $20
	ld c, a
	rst $08
	rst $18
	or [hl]
	push bc
	ld a, a
	inc l
	jp $bcde


	ldh [$e7], a
	ld d, c
	cp a
	jp c, Jump_006_7f33

	sub $2a
	cp l
	ret


	ld a, a
	or d
	call nc, $307f
	or [hl]
	rst $10
	ld c, a
	or l
	or e
	pop bc
	add $7f
	or [hl]
	dec hl
	reti


	call c, Call_006_57e7
	nop
	cp d
	cp d
	jp z, Jump_006_7f56

	sbc c
	sub h
	rrca
	ld a, a
	inc [hl]
	or e
	cp b
	jp nz, $4fe7

	cp d
	call c, $7fb2
	adc $34
	ld a, a
	jp nz, $b2d6

	ld a, a
	ld d, h
	ld h, $55
	cp [hl]
	or d
	cp a
	cp b
	ld a, a
	cp h
	jp $2fd9


	rst $20
	ld d, c
	ld d, h
	ld a, a
	ret c

	db $e3

jr_006_6269:
	rlca
	ld a, a
	add $de
	jp $4fb2


	sub b
	xor l
	xor e
	ld b, c
	add h
	xor e
	ld a, a
	cp h
	or [hl]
	ld a, a
	jp z, wdab2

	push bc
	or d
	ret


	jr nc, jr_006_6269

	ld d, a
	nop
	cp d
	cp d
	jp z, $997f

	sub h
	rrca
	adc e
	sub d
	or b
	ld c, a
	sbc c
	sub h
	rrca
	jp z, wSpriteCurPosY

	dec l
	or d
	db $db
	ld a, a
	cp h
	sbc $45
	ret


	or d
	db $db
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
	cp h
	sbc $b6
	ret


	ld a, a
	cp e
	or d
	pop bc
	pop hl
	or e
	add $4f
	ld a, [de]
	db $e3
	ld a, a
	inc e
	adc a
	xor e
	db $dd
	ld a, a
	or l
	cp l
	call nz, $bc55
	sbc $b6
	jp z, wc47f

	rst $08
	rst $18
	jp $bc7f


	rst $08
	or d
	rst $08
	cp l
	ld d, a
	nop
	cp b
	cp e
	pop de
	rst $10
	db $d3
	ld a, a
	inc [hl]
	or e
	cp b
	jp nz, Jump_006_7fd3

	adc h
	add c
	adc h
	add c
	rst $20
	ld c, a
	ld d, [hl]
	ld a, a
	ld d, [hl]
	ld a, a
	sbc [hl]
	and l
	add a
	and [hl]
	ld [hl], h
	adc d
	add c
	add a
	and [hl]
	ld d, a
	nop
	sbc c
	sub h
	rrca
	ld a, a
	adc e
	sub d
	or b
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
	adc h
	sbc [hl]
	ld d, l
	or l
	jp $3ade


	ld a, a
	add $de
	daa
	ld [c], a
	ld d, a
	call $3c6c
	ld hl, wd0eb
	bit 6, [hl]
	res 6, [hl]
	push hl
	call nz, Call_006_6343
	pop hl
	bit 5, [hl]
	res 5, [hl]
	call nz, Call_006_6338
	ld hl, $6354
	ld a, [wd5a9]
	jp $3dc7


Call_006_6338:
	call $3e8c
	ldh a, [$d4]
	and $0e
	ld [wd6c2], a
	ret


Call_006_6343:
	ld hl, wd782
	bit 2, [hl]
	ret z

	bit 3, [hl]
	set 3, [hl]
	ret nz

	ld a, $02
	ld [wd5a9], a
	ret


	ld e, [hl]
	ld h, e
	rst $10
	ld h, e
	xor e
	ld h, e
	add $63
	sbc [hl]
	ld h, e
	ld a, [$c109]
	and a
	ret nz

	ld hl, $639b
	call $3509
	ret nc

	xor a
	ldh [$b4], a
	ld [wcf08], a
	ld a, $03
	ldh [$8c], a
	call $13f1
	ld a, [wd782]
	bit 2, a
	jr nz, jr_006_6388

	ld b, $3f
	ld a, $1c
	call $3e9d
	ld a, b
	and a
	ret nz

jr_006_6388:
	ld a, $40
	ld [wccd3], a
	ld a, $01
	ld [wcd38], a
	call $34d0
	ld a, $01
	ld [wd5a9], a
	ret


	ld e, $12
	rst $38
	ld hl, $639b
	call $3509
	ret c

	ld a, $00
	ld [wd5a9], a
	ret


	ld a, $ff
	ld [wcd66], a
	ld a, $40
	ld [wccd3], a
	ld [wccd4], a
	ld a, $02
	ld [wcd38], a
	call $34d0
	ld a, $03
	ld [wd5a9], a
	ret


	ld a, [wcd38]
	and a
	ret nz

	xor a
	ld [wcd66], a
	ldh [$b4], a
	ld a, $00
	ld [wd5a9], a
	ret


	ld a, [wcd38]
	and a
	ret nz

	ld c, $0a
	call $3781
	ld a, $00
	ld [wd5a9], a
	ret


	ld bc, $3a64
	ld h, h
	or a
	ld h, h
	jp c, $1c65

	ld h, [hl]
	ld d, a
	ld h, [hl]
	adc [hl]
	ld h, [hl]
	xor l
	ld h, [hl]
	sub [hl]
	rrca
	xor a
	rrca
	ld h, $67
	ld b, l
	ld h, a
	ld l, b
	ld h, a
	nop
	call c, $bcc0
	ld a, a
	adc h
	ld b, e
	db $e3
	sub c
	ret


	ld a, a
	or c
	call nz, $4fca
	or c
	cp [hl]
	inc sp
	ld a, a
	dec a
	sub e
	dec a
	adc a
	db $e3
	rst $20
	ld d, c
	ld d, [hl]
	cp h
	rst $18
	jp $e6d9


	ld a, a
	dec a
	sub e
	dec a
	adc a
	db $e3
	rst $18
	jp $b34f


	ret nc

	ret


	ld a, a
	call $a813
	or [hl]
	rst $10
	ld a, a
	or e
	rst $08
	jp c, wc9c0

	ld d, a
	ld [$82fa], sp
	rst $10
	bit 2, a
	jr nz, jr_006_644a

	ld hl, $6453
	call $3c79
	jr jr_006_6450

jr_006_644a:
	ld hl, $647a
	call $3c79

jr_006_6450:
	jp $0f6a


	nop
	ret nc

	ret nz

	or [hl]
	ret z

	rst $20
	ld a, a
	or d
	rst $08
	ld a, a
	ret nc

	push bc
	call nz, $4fc6
	adc d
	xor e
	sub e
	ld [hl], h
	add b
	xor e
	sub [hl]
	ld a, [hli]
	or e
	ld a, a
	call nz, $b3b2
	ld d, l
	call z, $26c8
	ld a, a
	or a
	call nz, $2fd9
	rst $20
	ld d, a
	nop
	or l
	or l
	rst $20
	ld a, a
	adc d
	xor e
	sub e
	ld [hl], h
	add b
	xor e
	sub [hl]
	ld a, [hli]
	or e
	ld c, a
	cp h
	pop hl
	rst $18
	ld b, h
	jp nz, $bc7f

	jp $b27f


	rst $18
	ret nz

	or [hl]
	rst $20
	ld d, c
	jp nz, wc627

	ld a, a
	add a
	sub b
	add hl, de
	add $7f
	cp b
	reti


	ld a, a
	ret


	jp z, wd74f

	or d
	ret z

	sbc $c9
	ld a, a
	or d
	rst $08
	ld a, [hli]
	db $db
	ld a, a
	inc l
	ldh [$c5], a
	ld d, [hl]
	ld d, a
	ld [$82fa], sp
	rst $10
	bit 2, a
	jr nz, jr_006_64fc

	ld a, [$c109]
	cp $0c
	jr z, jr_006_64ce

	ld hl, $6505
	call $3509
	jr nc, jr_006_64d6

jr_006_64ce:
	ld hl, $650a
	call $3c79
	jr jr_006_6502

jr_006_64d6:
	ld hl, $651d
	call $3c79
	ld b, $3f
	ld a, $1c
	call $3e9d
	ld a, b
	and a
	jr nz, jr_006_64ef

	ld hl, $657f
	call $3c79
	jr jr_006_6502

jr_006_64ef:
	ld hl, $6548
	call $3c79
	ld a, $04
	ld [wd5a9], a
	jr jr_006_6502

jr_006_64fc:
	ld hl, $65cb
	call $3c79

jr_006_6502:
	jp $0f6a


	dec e
	inc de
	rra
	inc de
	rst $38
	nop
	sub $b3
	cp d
	cp a
	ld a, a
	adc d
	xor e
	sub e
	ld [hl], h
	add b
	xor e
	sub [hl]
	ld a, a
	ld a, [hli]
	or e
	call Call_006_57e7
	nop
	sub $b3
	cp d
	cp a
	ld a, a
	adc d
	xor e
	sub e
	ld [hl], h
	add b
	xor e
	sub [hl]
	ld a, a
	ld a, [hli]
	or e
	call Call_006_51e7
	pop bc
	ld [c], a
	rst $18
	call nz, wcf7f
	rst $18
	jp $4fe7


	or l
	or a
	ldh [hLoadedROMBank], a
	cp e
	sbc $7f
	sub b
	adc b
	xor h
	sub e
	jp z, $58e6

	nop
	ld d, d
	jp z, $be7f

	sbc $b2
	sbc $c6
	ld c, a
	call z, wc9c8
	sub b
	adc b
	xor h
	sub e
	db $dd
	ld a, a
	ret nc

	cp [hl]
	ret nz

	rst $20
	ld d, c
	jp z, $e7b2

	ld a, a
	cp c
	rst $18
	cp d
	or e
	ld a, a
	inc sp
	cp l
	rst $20
	ld c, a
	sub $b3
	cp d
	cp a
	ld a, a
	adc d
	xor e
	sub e
	ld [hl], h
	add b
	xor e
	sub [hl]
	ld a, a
	ld a, [hli]
	or e
	call Call_006_57e7
	nop
	ld d, d

jr_006_6581:
	jp z, $be7f

	sbc $b2
	sbc $c6
	ld c, a
	sub b
	adc b
	xor h
	sub e
	db $dd
	ld a, a
	ret nc

	cp [hl]
	sub $b3
	call nz, wc0bc
	ld d, [hl]
	ld d, l
	sub b
	adc b
	xor h
	sub e
	ld h, $56
	ld a, a
	push bc
	or d
	ld d, [hl]
	rst $20
	ld d, c
	ld d, [hl]
	db $d3
	or e
	cp h
	call c, Call_006_7fb9
	or c
	ret c

	rst $08
	cp [hl]
	sbc $e7
	ld d, c
	jp z, wdab2

	reti


	ld a, a
	ret


	jp z, $904f

	adc b
	xor h
	sub e
	ret


	ld a, a
	or c
	reti


	ld a, a
	or [hl]
	ret nz

	ld a, a
	jr nc, jr_006_6581

	inc sp
	cp l
	ld d, a
	nop
	call z, wcac8
	ld a, a
	cp h
	pop hl
	rst $18
	cp d
	or e
	cp h
	rst $08
	cp h
	ret nz

	ld d, a
	nop
	call c, Call_006_7fbc
	inc l
	rst $00
	cp h
	rst $20
	ld c, a
	cp d
	ret


	ld a, a
	cp h
	or [hl]
	cp b
	ret


	ld a, a
	ld a, [hld]
	cp h
	ld [c], a
	ld d, l
	ld l, $e3
	sbc $3c
	ld a, a
	call c, wc9bc
	ld a, a
	call nz, $e7c1
	ld d, c
	cp d
	cp d
	add $7f
	ld a, [de]
	and [hl]
	ld a, a
	ret nz

	jp $b3d6


	call nz, $b57f
	db $d3
	rst $18
	jp Jump_006_544f


	add $7f
	inc l
	push bc
	rst $10
	cp h
	ld a, a
	cp e
	cp [hl]
	call nz, $e7d9
	ld d, a
	nop
	xor c
	xor e
	ret c

	add [hl]
	db $e3
	ld [hl], d
	ld a, [hli]
	or l
	db $e3
	rst $18
	ld a, a
	ld a, [hli]
	ld a, [hli]
	ld a, [hli]
	db $e3
	ld d, b
	ld [$6a3e], sp
	call $2dc7
	call $3790
	ld hl, $663a
	ret


	nop
	ld d, c
	xor c
	xor e
	ret c

	add [hl]
	db $e3
	jp z, $b37f

	push bc
	ret c

	push bc
	ld h, $d7
	ld c, a
	inc l
	jp nc, wddde

	ld a, a
	push bc
	rst $10
	cp h
	jp wd9b2


	rst $20
	ld d, a
	nop
	adc d
	xor e
	sub e
	ld [hl], h
	add b
	xor e
	sub [hl]
	ld a, [hli]
	or e
	jp z, wd54f

	or e
	jp nc, wc5b2

	ld a, a
	ld a, [hli]
	or e
	or [hl]
	ld a, a
	or a
	ldh [hLoadedROMBank], a
	cp [hl]
	sbc $e7
	ld d, c
	rst $30
	ret z

	sbc $c6
	ld a, a
	rst $30
	inc [hl]
	ld a, a
	jr nc, @-$45

	ld c, a
	add a
	sub b
	add hl, de
	cp d
	or e
	ld a, a
	add $7f
	call nz, wd9cf
	sbc $30
	rst $20
	ld d, a
	nop
	cp d
	cp d
	jp z, $877f

	sub b
	add hl, de
	ld a, a
	adc e
	sub d
	or b
	ld c, a
	add a
	sub b
	add hl, de
	jp z, $847f

	and a

jr_006_66a2:
	xor e
	dec bc
	ld a, a
	push de
	or e
	call nc, wc9b9
	or d
	db $db
	ld d, a
	nop
	ld d, [hl]
	ld a, a
	or l
	cp h
	rst $10
	cp [hl]
	ret


	ld a, a
	sub b
	and l
	adc e
	jr nc, jr_006_66a2

	ld d, c
	cp e
	or d
	or a
	sbc $56
	ld a, a
	rst $30
	ld hl, sp+$3a
	sbc $7f
	inc [hl]
	or e
	db $db
	add $4f
	or d
	ret z

	pop de
	ret c

jr_006_66d0:
	ld a, a
	ld d, h
	ld h, $7f
	cp h
	pop hl
	jp nz, $c23e

	ld d, l
	call nz, wdab5
	push bc
	or d
	ld a, a
	cp d

jr_006_66e1:
	call nz, Call_006_7f26
	or c
	ret c

	rst $08
	cp l
	rst $20
	ld d, c
	cp a
	or e
	or d
	or e
	ld a, a
	call nz, $7fb7
	adc e
	add h
	xor e
	ld a, a
	adc a
	add d
	xor e
	call $b24f
	cp b
	ld a, a
	or [hl]
	ret nz

	jp z, $b27f

	call c, wcfd4
	ld a, a
	sub e
	xor e
	sub a
	and [hl]
	db $dd
	ld d, l
	call nz, wdfb5
	jp $b87f


	jr nc, jr_006_66d0

	or d

jr_006_6716:
	rst $20
	ld d, c
	ld d, [hl]
	ld a, a
	add a
	sub b
	add hl, de
	ld a, a
	cp c
	or d
	cp e
	jp nz, wd67f

	ret c

	ld d, a
	nop
	cp d
	pop bc
	rst $10
	ld a, a
	ld d, h
	ld a, a
	jr nc, jr_006_66e1

	cp l
	or a
	ld a, a
	add a
	and l
	dec de
	ld c, a

jr_006_6736:
	ld d, h
	dec l
	or a
	ld a, a
	jr nc, jr_006_6716

	inc sp
	db $d3
	ld a, a
	or [hl]
	sbc $29
	or d
	rst $20
	ld d, a
	nop
	add a
	sub b
	add hl, de
	ld a, a
	adc e
	sub d
	or b
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
	sbc l
	sub b
	adc h
	ld d, l
	add c
	sub h
	inc c
	sbc l
	ld a, a
	add b
	and b
	ret c

	add l
	xor e
	rst $20
	ld d, a
	nop
	add a
	sub b
	add hl, de
	ld a, a
	ret nc

	push bc
	call nz, $b27f
	ret c

	jr z, jr_006_6736

	ld d, a
	call $3c6c
	ld hl, wd6fd
	res 0, [hl]
	res 7, [hl]
	ld hl, wd795
	res 7, [hl]
	ret


	xor d
	ld h, a
	db $e3
	ld h, a
	inc bc
	ld l, b
	scf
	ld l, b
	ld [hl], l
	ld l, b
	ld e, a
	ld l, c
	sub b
	ld l, c
	and a
	ld l, c
	jp z, $ed69

	ld l, c
	ld d, l
	ld l, d
	xor a
	rrca
	ld [hl], h
	ld l, d
	sbc [hl]
	ld l, d
	xor d
	ld l, d
	push bc
	ld l, d
	daa
	ld l, e
	ld b, a
	ld l, e
	nop
	call c, $bcc0
	ret


	ld a, a
	inc de
	dec b
	db $e3
	adc h
	rst $20
	ld c, a
	rlca
	and a
	xor e
	inc l
	rst $08
	ld a, a
	inc sp
	ld a, a
	jp nz, wcfb6

	or h
	ret nz

	ret


	rst $20
	ld d, l
	or l
	cp d
	reti


	call nz, $347f
	cp b
	dec b
	adc h
	ld a, a
	jp z, $b9b8

	inc [hl]
	ld d, [hl]
	ld d, c
	call z, wde30
	jp z, $b27f

	or d
	cp d
	ld a, a
	push bc
	ret


	sub $57
	nop
	add $cb
	set 4, a
	ld a, a
	cp d
	ret


	ld a, a
	dec bc
	sbc a
	jp z, $b47f

	or h
	rst $20
	ld c, a
	or l
	sbc $c5
	ret


	cp d
	ld a, a
	ld a, [hld]
	rst $18
	or [hl]
	cp h
	ld a, a
	inc l
	ldh [$e7], a
	ld d, a
	nop
	or a
	jp c, wc5b2

	ld a, a
	rst $08
	pop bc
	ld [hld], a
	cp b
	ret c

	ld h, $7f
	inc l
	rst $08
	sbc $c9
	ld c, a
	adc a
	sbc l
	sbc a
	adc e
	add $7f
	ld [$9fe3], sp
	ld a, a
	adc c
	db $e3
	sub h
	db $e3
	ld h, $55
	inc sp
	or a
	pop bc
	ldh [$df], a
	jp Jump_006_7fe7


	cp d
	rst $08
	rst $18
	ret nz

	ld a, a
	db $d3
	ret


	sub $e7
	ld d, a
	nop
	sub e
	sbc h
	sbc h
	ld d, [hl]
	rst $20
	ld c, a
	adc h
	xor b
	xor h
	sub e
	inc sp
	ld a, a
	rst $08
	ret nz

	ld a, a
	rst $08
	cp c
	ret nz

	rst $20
	ld d, c
	adc c
	add c
	xor e
	ld h, $7f
	ret nz

	rst $08
	rst $18
	ret nz

	rst $10
	ld c, a
	cp c
	or d
	set 3, [hl]
	add $7f
	cp h
	ret nz

	ld a, a
	adc $b3
	ld h, $7f
	or h
	or h
	call nz, wdc55
	or [hl]
	rst $18
	jp $b57f


	rst $18
	ret nz

	ret


	add $56
	rst $20
	ld d, a
	ld [$f6fa], sp
	sub $cb
	ld b, a
	jr nz, jr_006_68a0

	ld hl, $68a9
	call $3c79
	ld bc, $f101
	call $3e5e
	jr c, jr_006_6893

	ld hl, $6953
	call $3c79
	jr jr_006_68a6

jr_006_6893:
	ld hl, $68f8
	call $3c79
	ld hl, wd6f6
	set 0, [hl]
	jr jr_006_68a6

jr_006_68a0:
	ld hl, $6912
	call $3c79

jr_006_68a6:
	jp $0f6a


	nop
	call nc, Call_006_7fb1
	call nc, $e7b1
	ld d, c
	call c, $bcc0
	jp z, $b27f

	jp nz, Jump_006_7fd3

	or a
	ret nc

	ld h, $4f
	cp a
	cp d
	db $dd
	ld a, a
	call nz, wd9b5
	ret


	db $dd
	ld a, a
	ret nc

	jp $26c0


	ld d, l
	call nc, wc4df
	ld a, a
	or c
	or e
	ld a, a
	cp d
	call nz, Call_006_7f26
	inc sp
	or a
	ret nz

	rst $20
	ld d, c
	cp a
	jp c, wca33

	ld a, a
	call nz, $c3df
	or l
	or a
	ret


	ld c, a
	cp d
	jp c, $e7dd

	ld a, a
	or a
	ret nc

	add $7f
	or c
	add hl, hl

jr_006_68f4:
	sub $b3
	rst $20
	ld e, b
	nop
	ld d, d
	jp z, $b57f

	inc l
	cp e
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
	dec bc
	ld d, b
	nop
	ld e, h
	ld a, [wc9f7]
	ld a, a
	push bc
	or [hl]
	jp z, $8f4f

	sbc l
	add hl, bc
	or e
	ret nc

	ld a, a
	inc sp
	or c
	reti


	rst $20
	ld d, c
	cp d
	jp c, Jump_006_7fdd

	jp nz, $b4b6

	reti


	ld a, a
	ld d, h
	jp z, $f74f

	cp h
	pop hl
	reti


	or d
	ld a, a
	jr nc, jr_006_68f4

	ld a, a
	inc sp
	or c
	reti


	rst $20
	ld d, c
	cp a
	or e
	or d
	or e
	ld a, a
	ld d, h
	jp z, $a54f

	xor h
	add [hl]
	db $e3
	ld a, a
	inc sp
	or c
	reti


	rst $20
	ld d, a
	nop
	add $d3
	jp nz, Jump_006_7f26

	or d
	rst $18
	ld b, h
	or d
	jr nc, @+$59

	nop
	cp d
	or d
	jp nz, $b57f

	jp c, $7fc9

	or c
	or d
	or [hl]
	ret nz

	rst $20
	ld c, a
	sub l
	xor a
	xor b
	inc e
	xor e
	rst $20
	ld d, c
	ret nc

	dec l
	ret


	or d
	cp h
	db $dd
	ld a, a
	or c
	jp wd7c0


	ld c, a
	sub l
	xor a
	xor b
	ld c, $7f
	ld h, $7f
	cp h
	sbc $b6
	ld a, a
	cp h
	ret nz

	sub $57
	nop
	sub l
	xor a
	xor b
	inc e
	xor e
	ld [hl], d
	ld [$08a8], sp
	db $e3
	xor b
	rst $20
	ld d, b
	ld [$6f3e], sp
	call $2dc7
	jp $0f6a


	nop
	push bc
	sbc $30
	ld a, a
	dec bc
	xor b
	dec bc
	xor b
	ld a, a
	ret nc

	call nc, wdf26
	jp $4fe7


	or c
	rst $18
	pop bc
	ld a, a
	or d
	or [hl]
	ret z

	or h
	call nz, $3c7f
	sbc $c5
	jr z, @-$25

	cpl
	rst $20
	ld d, a
	nop
	jp nc, $7fc9

	rst $08
	or h
	db $dd
	ld a, a
	sub b
	xor a
	xor b
	sub b
	xor a
	xor b
	or e
	reti


	cp [hl]
	or h
	rst $20
	ld c, a
	xor b
	adc b
	xor h
	sub e
	jr nc, @-$20

	db $dd
	ld a, a
	push bc
	jp nc, wc5d9

	sub $e7
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
	and h
	add a
	add b
	adc a
	db $e3
	and [hl]
	jp z, wdc7f

	dec hl
	ret


	ld c, a
	jp nc, $c1b2

	pop hl
	or e
	ld a, a
	ret c

	jp nz, wdd7f

	ld a, a
	or c
	add hl, hl
	reti


	rst $20
	ld d, c
	add a
	ret c

	sub d
	or b
	add l
	xor h
	adc a
	db $e3
	jp z, wdc7f

	dec hl
	ld h, $4f
	or a
	pop hl
	or e
	cp h
	ld [c], a
	add $7f
	or c
	ret nz

	ret c

	ld a, a
	call nc, $b8bd
	push bc
	reti


	ld d, c
	add b
	add c
	sub d
	sbc a
	ret


	ld a, a
	or l
	or [hl]
	or d
	db $d3
	call nz, wcad2
	ld c, a
	adc a
	sbc l
	sbc a
	adc e
	ld a, a
	ld [de], a
	ld b, b
	db $e3
	sub e
	inc sp
	ld a, a
	inc [hl]
	or e
	cpl
	rst $20
	ld d, a
	nop
	cp d
	cp d
	jp z, $8f7f

	sbc l
	sbc a
	adc e
	ld a, a
	adc e
	sub d
	or b
	ld c, a
	adc a
	sbc l
	sbc a
	adc e
	ld a, a
	add $2c
	or d
	db $db
	ld a, a
	push de
	jp nc, $7fc9

	or d
	db $db
	ld d, a
	nop
	adc a
	sbc l
	sbc a
	adc e
	ld a, a
	adc e
	sub d
	or b
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
	add e
	ret c

	add l
	ld d, l
	cp h
	ld l, $de
	db $dd
	ld a, a
	or c
	or d
	cp l
	reti


	ld a, a
	or l
	inc l
	ld [c], a
	or e
	cp e
	rst $08
	rst $20
	ld d, a
	nop
	adc a
	sbc l
	sbc a
	adc e
	ld a, a
	sbc l
	xor e
	adc e
	xor a
	xor e
	ld d, a
	nop
	adc $bc
	or d
	db $d3
	ret


	ld a, a
	or a
	rst $18
	call nz, wSpriteCurPosY
	jp nz, wd9b6

	rst $20
	ld c, a
	adc a
	sbc l
	sbc a
	adc e
	ld a, a
	ld [de], a
	ld b, b
	db $e3
	sub e
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
	add e
	sbc e
	db $eb
	add a
	sub e
	dec b
	db $e3
	inc de
	jp z, wce4f

	ret


	or l
	ld a, a
	call nc, wSpriteCurPosY
	dec l
	ld a, a
	inc sp
	sbc $b7
	ld a, a
	push bc
	inc [hl]
	ld d, c
	call nz, $bcb8
	pop hl
	push bc
	ld a, a
	cp d
	or e
	add hl, hl
	or a
	ld a, a
	or [hl]
	rst $10
	ld c, a
	ld d, h
	db $dd
	ld a, a
	rst $08
	db $d3
	rst $18
	jp $b87f


	jp c, $e7d9

	ld d, c
	add b
	add c
	sub d
	sbc a
	ret


	ld a, a
	or l
	or [hl]
	or d
	db $d3
	call nz, wcad2
	ld c, a
	adc a
	sbc l
	sbc a
	adc e
	ld a, a
	ld [de], a
	ld b, b
	db $e3
	sub e
	inc sp
	ld a, a
	inc [hl]
	or e
	cpl
	rst $20
	ld d, a
	nop
	adc c
	add c
	xor e
	db $dd
	ld a, a
	ld a, [de]
	xor h
	rlca
	push bc
	ld a, a
	cp c
	or d
	set 3, [hl]
	add $e7
	ld c, a
	ld d, [hl]
	ld a, a
	cp c
	or d
	set 3, [hl]
	ld a, a
	cp d
	or e
	or [hl]
	sbc $2c
	ld [c], a
	ld d, a
	nop
	or l
	call nz, wc9c5
	ld a, a
	or c
	cp a
	dec sp
	ld a, [hld]
	rst $20
	ld c, a
	ld d, [hl]
	ld a, a
	xor b
	adc b
	xor h
	sub e
	ld [hl], h
	ld a, a
	ld [$9fe3], sp
	ld a, a
	adc c
	db $e3
	sub h
	db $e3
	ld d, a
	jp $3c6c


	sub a
	ld l, e
	jp $fe6b


	ld l, e
	ld a, [hli]
	ld l, h
	ld e, [hl]
	ld l, h
	ld e, [hl]
	ld l, h
	ld e, [hl]
	ld l, h
	ld e, [hl]
	ld l, h
	ld e, [hl]
	ld l, h
	ld e, [hl]
	ld l, h
	ld h, c
	ld l, h
	ld h, c
	ld l, h
	add d
	ld l, h
	sub [hl]
	rrca
	xor a
	rrca
	and c
	ld l, h
	or l
	ld l, h
	db $d3
	ld l, h
	db $fd
	ld l, h
	jr z, jr_006_6bfc

	ld d, e
	ld l, l
	sub d
	ld l, l

jr_006_6b93:
	ret z

	ld l, l
	cp $6d
	nop
	adc d
	sbc e
	jp hl


	ret c

	ld a, a
	ld [$9fe3], sp
	ld a, a
	db $d3
	or e

jr_006_6ba3:
	ld a, a
	call nc, wc0df
	and $4f
	or c
	cp a
	cp d
	inc sp
	cp h
	or [hl]
	ld a, a
	call nz, wc5da
	or d
	ld d, l
	jp nc, wd72d

	cp h
	or d
	ld a, a
	ld d, h
	db $d3
	ld a, a
	or d
	reti


	sub $e7
	ld d, a
	nop
	adc d
	sbc e
	jp hl


	ret c

	ld a, a
	ld c, $e3
	xor e
	jp z, $b24f

	ret c

	jr z, jr_006_6b93

	ld a, a
	call z, wdeb7
	jp z, $347f

	or e
	inc a
	jp nz, wdeb4

	inc sp
	ld d, c
	or l
	cp b
	add $7f
	or d
	cp b
	call nz, Call_006_547f
	ld h, $4f
	call nz, wced8
	or e
	jr nc, jr_006_6ba3

	ret


	ld a, a
	adc d
	sbc e
	jp hl


	ret c

	ld a, a
	ld [$9fe3], sp
	inc l

jr_006_6bfc:
	ldh [$57], a
	nop
	adc c
	db $e3
	dec bc
	ld [hl], d
	or l
	or [hl]
	cp h
	or d
	push bc
	and $7f
	add b
	sub c
	adc c
	call nz, Call_006_544f
	call nz, $33d8
	ld a, a
	rst $08
	pop bc
	or c
	call c, wdfbe
	jp $5556


	call nz, $54d8
	ld h, $7f
	ret nc

	jp nz, wd7b6

	push bc
	or d
	rst $20
	ld d, a
	nop
	or c
	ret


	ld a, a
	add b
	add c
	sub d
	sbc a
	ld a, a
	inc e
	db $e3
	and [hl]
	ld c, a
	adc $bc
	or d
	rst $18
	jp $b57f


	db $d3
	rst $18
	ret nz

	and $55
	ld d, [hl]
	ld a, a
	ld d, [hl]
	ld a, a
	ld d, [hl]
	ld a, a
	ld a, $b8
	db $d3
	cp e
	rst $20
	ld d, l
	ld d, [hl]
	ld a, a

jr_006_6c51:
	or h
	ld a, a
	or c
	jp c, $b27f

	or a
	db $d3
	ret


	push bc
	ret


	and $57
	nop
	rst $20
	ld d, a
	nop
	cp d
	cp d
	jp z, $8d7f

	add [hl]
	sub b
	add a
	ld a, a
	adc e
	sub d
	or b
	ld c, a
	adc l
	add [hl]
	sub b
	add a
	jp z, Jump_006_417f

	xor e
	add a
	ld a, a
	jp z, wd4c5

	or [hl]
	push bc
	ld a, a
	or d
	db $db
	ld d, a
	nop
	jp nc, $3cb2

	jp nz, Jump_006_7fe7

	adc d
	sbc e
	jp hl


	ret c

	ld a, a
	ld [$9fe3], sp
	rst $20
	ld c, a
	ld d, [hl]
	ld a, a
	ld d, [hl]
	ld a, a
	ld d, h
	ld a, a
	call nz, wced8
	or e
	jr nc, jr_006_6c51

	rst $20
	ld d, a
	nop
	adc d
	sbc e
	jp hl


	ret c

	ld a, a
	ld c, $e3
	xor e
	ld c, a
	or h
	sbc $c1
	ld [c], a
	or e
	ret


	ld a, a
	or d
	or h
	ld d, a
	nop
	or d
	db $db
	sbc $c5
	ld a, a
	ld d, h
	ld a, a
	or d
	rst $18
	ld b, h
	or d
	rst $20
	ld c, a
	adc d
	sbc e
	jp hl


	ret c

	ld a, a
	ld c, $e3
	xor e
	add $7f
	sub $b3
	cp d
	cp a
	rst $20
	ld d, a
	nop
	adc l
	add [hl]
	sub b
	add a
	ld a, a
	adc e
	sub d
	or b
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
	add [hl]
	xor a
	add d
	ld d, l
	inc [hl]
	cp b
	ret


	ld a, a
	cp d
	call nz, wd7c5
	ld a, a
	push bc
	sbc $33
	db $d3
	ld a, a
	ld a, [hli]
	dec hl
	jp c, $0857

	ld hl, $6d0c
	call $3c79
	ld a, $28
	call $34e5
	jp $0f6a


	nop
	push bc
	rst $08
	or h
	ld a, a
	and l
	xor h
	add [hl]
	db $e3
	ld c, a
	jp nz, wcfb6

	or h
	ret nz

	rst $10
	ld a, a
	adc h
	db $e3
	ld b, b
	db $e3
	ld a, a
	and l
	xor h
	add [hl]
	db $e3
	rst $20
	ld e, b
	ld [$3721], sp
	ld l, l
	call $3c79
	ld a, $06
	call $34e5
	jp $0f6a


	nop
	push bc
	rst $08
	or h
	ld a, a
	ld a, [de]
	ret c

	ret c

	rrca
	sbc l
	ld c, a
	and c
	xor e
	adc h
	adc a
	db $e3
	ld a, a
	inc e
	db $e3
	and [hl]
	add $7f
	cp a

jr_006_6d4e:
	rst $18
	cp b
	ret c

	rst $20
	ld e, b
	ld [$6221], sp
	ld l, l
	call $3c79
	ld a, $02
	call $34e5
	jp $0f6a


	nop
	push bc
	rst $08
	or h
	ld a, a
	dec b
	and [hl]
	db $e3
	and l
	ld c, a
	push bc
	or [hl]
	ret


	ld a, a
	sub $b2
	ld a, a
	or l
	call nc, $7fba
	ld d, h
	rst $20
	ld d, c
	or l
	push bc
	or [hl]
	add $7f
	cp d
	inc [hl]
	db $d3
	db $dd
	ld a, a
	or d
	jp c, $4fc3

	cp a
	jr nc, jr_006_6d4e

	jp $b27f


	rst $08
	cp l
	rst $20
	ld e, b
	ld [$a121], sp
	ld l, l
	call $3c79
	ld a, $25
	call $34e5
	jp $0f6a


	nop
	push bc
	rst $08
	or h
	ld a, a
	and d
	inc de
	xor e
	ld c, a
	set 0, h
	push bc
	jp nz, $b2ba

	ld a, a
	cp [hl]
	or d
	or [hl]
	cp b
	ld h, $7f
	add $de
	or a
	rst $20
	ld d, l
	or e
	ld a, [hli]
	or a
	ld h, $7f
	ret


	db $db
	or d
	ld a, a
	ld d, h
	rst $20
	ld e, b
	ld [wd721], sp
	ld l, l
	call $3c79
	ld a, $13
	call $34e5
	jp $0f6a


	nop
	push bc
	rst $08
	or h
	ld a, a
	and l
	ld b, d
	and l
	adc h
	ld c, a
	adc e
	db $e3
	ld a, a
	inc de
	and l
	add hl, bc
	xor e
	ld a, a
	call nz, Call_006_7fd3
	sub $3a
	jp c, $55d9

	or e
	ret nc

	ret


	ld a, a
	or l
	or e
	inc l
	ldh [$7f], a
	inc sp
	cp l
	rst $20
	ld e, b
	ld [$75fa], sp
	rst $10
	bit 6, a
	jr nz, jr_006_6e12

	bit 7, a
	jr nz, jr_006_6e1c

	ld hl, $6e6e
	call $3c79
	jr jr_006_6e27

jr_006_6e12:
	ld hl, $6e2a
	call $3c79
	ld a, $62
	jr jr_006_6e24

jr_006_6e1c:
	ld hl, $6e4d
	call $3c79
	ld a, $5a

jr_006_6e24:
	call $34e5

jr_006_6e27:
	jp $0f6a


	nop
	push bc
	rst $08
	or h
	ld a, a
	add h
	sbc a
	sub h
	add c
	sub e
	ld c, a
	add l
	adc l
	add [hl]
	ld a, a
	or [hl]
	rst $10
	ld a, a
	or d
	or a
	ld a, a
	or [hl]
	or h
	rst $18
	ret nz

	ld d, l
	jp nc, wd72d

	cp h
	or d
	ld a, a
	ld d, h
	rst $20
	ld e, b
	nop
	push bc
	rst $08
	or h
	ld a, a
	add l
	dec de
	sub e
	ld c, a
	add l
	adc l
	add [hl]
	ld a, a
	or [hl]
	rst $10
	ld a, a
	or d
	or a
	ld a, a
	or [hl]
	or h
	rst $18
	ret nz

	ld d, l
	jp nc, wd72d

	cp h
	or d
	ld a, a
	ld d, h
	rst $20
	ld e, b
	nop
	ld d, [hl]
	ld d, a

	db $08, $04, $04, $11, $70, $99, $6e, $7d, $6e, $00, $e9, $6f

	call $3c6c
	ld hl, $6e89
	ld a, [wd572]
	jp $3dc7


	db $8d, $6e, $98, $6e

	ld hl, wd6c9
	set 1, [hl]
	ld a, $01
	ld [wd572], a
	ret


	ret


	db $9f, $6e

	sbc e
	ld l, a
	bit 5, a

	db $08

	ld a, [wd6c9]
	bit 0, a
	jr nz, jr_006_6edb

	ld a, [wd6ca]
	bit 5, a
	jr nz, jr_006_6eb6

	ld hl, $6eec
	call $3c79
	jr jr_006_6ee9

jr_006_6eb6:
	ld hl, $6f13
	call $3c79
	ld a, $29
	ld [wcc4d], a
	ld a, $11
	call $3e9d
	ld bc, $0501
	call $3e5e
	jr nc, jr_006_6ee3

	ld hl, $6f46
	call $3c79
	ld hl, wd6c9
	set 0, [hl]
	jr jr_006_6ee9

jr_006_6edb:
	ld hl, $6f6c
	call $3c79
	jr jr_006_6ee9

jr_006_6ee3:
	ld hl, $6f61
	call $3c79

jr_006_6ee9:
	jp $0f6a


	db $00, $ba, $de, $c6, $c1, $ca, $7f, $52, $b8, $de, $e7, $4f, $b5, $c4, $b3, $c4
	db $c9, $7f, $53, $c5, $d7, $55, $b5, $2c, $b2, $c1, $e0, $de, $c9, $7f, $b9, $de
	db $b7, $e1, $b3, $2c, $e2, $d6, $57, $00, $84, $e3, $86, $13, $c9, $7f, $b5, $2c
	db $b2, $c1, $e0, $de, $4f, $b5, $bc, $2a, $c4, $7f, $c0, $c9, $de, $30, $de, $30
	db $df, $c3, $e6, $55, $c0, $b2, $cd, $de, $c8, $e3, $55, $ba, $da, $7f, $b1, $29
	db $d9, $b6, $d7, $7f, $c2, $b6, $df, $c3, $e7, $58, $00, $52, $ca, $7f, $b5, $c8
	db $b4, $bb, $de, $b6, $d7, $4f, $50, $01, $45, $cf, $00, $dd, $7f, $d3, $d7, $df
	db $c0, $e7, $50, $11, $50

	nop
	add $d3
	jp nz, $b27f

	rst $18
	ld b, h
	or d
	sub $57
	nop
	inc l
	inc a
	sbc $c9
	ld a, a
	or d
	reti


	ld a, a
	ld a, [hld]
	cp h
	ld [c], a
	call nc, wcf4f
	pop bc
	ret


	ld a, a
	push bc
	rst $08
	or h
	ld h, $7f
	cp h
	ret c

	ret nz

	or d
	call nz, $55b7
	adc a
	add d
	xor e
	sbc l
	xor h
	ld b, d
	ld a, a
	jp nz, $b3b6

	call nz, $b27f
	or d
	call c, Call_006_57d6
	nop
	add $de
	add hl, hl
	sbc $c4
	ld a, a
	or l
	push bc
	inc l
	sub $b3
	add $4f
	ld d, h
	db $d3
	ld a, a
	or d
	or a
	jp wc9d9


	rst $20
	ld d, l
	ret nz

	or d
	ret c

	ld [c], a
	cp b
	ld h, $7f
	push bc
	or d
	call nz, wcab7
	ld d, l
	call nc, wcfbd
	cp [hl]
	jp $b17f


	add hl, hl
	jp Jump_006_57e7


	nop
	add l
	xor e
	sub e
	db $e3
	ld a, a
	pop bc
	adc $b3
	ret


	ld a, a
	pop bc
	dec l
	jr nc, @-$17

	ld c, a
	ld d, [hl]
	ld a, a
	db $d3
	rst $10
	or h
	ret nz

	rst $10
	ld a, a
	or e
	jp c, $b2bc

	and $57

	db $0a, $02, $07, $02, $01, $ff, $07, $03, $01, $ff, $00, $03, $11, $07, $06, $ff
	db $d3, $01, $11, $08, $0a, $fe, $01, $82, $00, $41, $07, $07, $ff, $ff, $83, $00
	db $12, $c7, $07, $02

	ld [de], a
	rst $00
	rlca
	inc bc

	db $04, $0e, $05, $09, $0f, $01, $02, $0f, $0f, $0c, $0d, $0f, $06, $0b, $0f, $07

	ld [$0404], sp
	ld e, d
	ld [hl], b
	jr nc, jr_006_7098

	dec l
	ld [hl], b
	nop
	ld b, b
	ld [hl], b
	jp $3c6c


	ld [hld], a
	ld [hl], b
	ld [$043e], sp
	ld [wcd3d], a
	ld a, $54
	call $3e9d
	jp $0f6a


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
	ld bc, $0910
	rlca
	rst $38
	pop de
	ld bc, wc712
	rlca
	ld [bc], a
	ld [de], a
	rst $00
	rlca
	inc bc
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
	ld [bc], a
	ld b, $08
	add e
	ld [hl], c
	sbc d
	ld [hl], b
	db $76
	ld [hl], b
	nop
	ld c, c
	ld [hl], c
	call $0d8e
	call $3c6c
	ld hl, wd0eb
	bit 6, [hl]
	res 6, [hl]
	ret z

	ld hl, wd7e8
	res 7, [hl]
	ld hl, wd6b3
	bit 1, [hl]
	res 1, [hl]
	ret z

	ld hl, wd7e2
	xor a
	ld [hli], a
	ld [hli], a
	ld [hli], a

jr_006_7098:
	ld [hl], a
	ret


	and h
	ld [hl], b
	and l
	ld [hl], b
	ld b, $71
	ld e, a
	rrca
	ld c, b
	ld [hl], c
	rst $38
	nop
	or l
	db $e3
	cp l
	rst $20
	ld c, a
	ret nc

	rst $10
	or d
	ret


	ld a, a
	sub b
	xor l
	xor e
	ld b, c
	add h
	xor e
	rst $20
	ld d, c
	ld d, h
	ld a, a
	ret c

	db $e3
	rlca
	ld a, a
	cp h
	jp wc9de


jr_006_70c2:
	or e
	jp z, $fa4f

	add $de
	ld a, a
	jp nz, $b932

	jp $bc55


	ld [c], a
	or e
	inc a
	ld a, a
	cp l
	reti


	ld a, a
	and [hl]
	db $e3
	and [hl]
	jr nc, jr_006_70c2

	ld d, c
	rst $08
	cp c
	ret nz

	rst $10
	ld a, a
	set 0, h
	ret c

	jp nc, $b67f

	rst $10
	ld c, a
	call nc, wc5d8
	or l
	cp h
	add $7f
	push bc
	reti


	cpl
	rst $20
	ld d, l
	cp d
	jp c, Jump_006_7f26

	cp e
	or d
	ld a, [hli]
	jr nc, @-$17

	ld a, a
	ld h, $de
	ld a, [hld]
	jp c, $e7d6

	ld d, a
	nop
	cp d
	ret


	cp e
	or a
	jp z, $bc7f

	jp wc9de


	or e
	call nz, wcb4f
	call nz, $2dd8
	jp nz, wc07f

	ret nz

	or [hl]
	or e
	ret


	rst $20
	ld d, l
	db $d3
	cp h
	ld a, a
	or [hl]
	jp wd7c0


	ld a, a
	inc de
	add b
	ld h, $7f
	set 2, a
	or d
	jp $b555


	cp b
	ret


	ld a, a
	call wc6d4
	ld a, a
	cp l
	cp l
	jp nc, wdcd9

	rst $20
	ld d, l
	ld h, $de
	ld a, [hld]
	rst $18
	jp Jump_006_57e7


	or $00
	inc bc
	dec bc
	rlca
	nop
	rst $38
	dec bc
	ld [$ff01], sp
	nop
	ld [$f500], sp
	nop
	dec b
	add hl, hl
	add hl, bc
	dec bc
	rst $38
	ret nc

	ld bc, $0d24
	ld [wd3ff], sp
	ld [bc], a
	ld b, $05
	add hl, bc
	rst $38
	ret nc

	inc bc
	ld h, $09
	inc b
	rst $38
	db $d3
	inc b
	ld a, [hli]
	ld a, [bc]
	ld de, wd0ff
	dec b
	ld b, b
	rst $00
	dec bc
	rlca
	ld b, c
	rst $00
	dec bc
	ld [wc6fb], sp
	nop
	ld [$1213], sp
	inc c
	inc c
	dec c
	nop
	nop
	nop
	ld d, $0f
	ld e, $1f
	rra
	inc h
	inc h
	inc h
	jr jr_006_71a4

	jr nz, jr_006_71a7

	ld bc, $0d02
	dec c
	rla
	rrca
	ld hl, $0504
	rlca
	ld [hli], a
	inc hl
	dec e

jr_006_71a4:
	dec e
	rrca
	rrca

jr_006_71a7:
	rrca
	rrca
	rrca
	dec de
	add hl, de
	rrca
	rrca
	ld a, [bc]
	dec bc
	rrca
	ld c, $0e
	ld d, $09
	rrca
	dec bc
	ld [hl], h
	ld d, h
	ld [hl], d
	cp a
	ld [hl], c
	nop
	sbc h
	ld [hl], e
	call Call_006_71d5
	call $3c6c
	ld hl, $7262
	ld de, $724e
	ld a, [wd5c4]
	call $31a8
	ld [wd5c4], a
	ret


Call_006_71d5:
	ld hl, wd0eb
	bit 5, [hl]
	res 5, [hl]
	ret z

	ld hl, $720c
	call Call_006_7211
	call Call_006_723d
	ld a, [wd7a9]
	bit 0, a
	jr nz, jr_006_71fc

	push af
	ld a, $54
	ld [wd07c], a
	ld bc, $0602
	ld a, $17
	call $3e9d
	pop af

jr_006_71fc:
	bit 1, a
	ret nz

	ld a, $54
	ld [wd07c], a
	ld bc, $0406
	ld a, $17
	jp $3e9d


	ld b, $02
	inc b
	ld b, $ff

Call_006_7211:
	push hl
	ld hl, wd6be
	ld a, [hli]
	ld b, a
	ld a, [hl]
	ld c, a

jr_006_7219:
	xor a
	ldh [$e0], a
	pop hl

jr_006_721d:
	ld a, [hli]
	cp $ff
	jr z, jr_006_7239

	push hl
	ld hl, $ffe0
	inc [hl]
	pop hl
	cp b
	jr z, jr_006_722e

	inc hl
	jr jr_006_721d

jr_006_722e:
	ld a, [hli]
	cp c
	jr nz, jr_006_721d

	ld hl, wd6be
	xor a
	ld [hli], a
	ld [hl], a
	ret


jr_006_7239:
	xor a
	ldh [$e0], a
	ret


Call_006_723d:
	ld hl, wd7a9
	ldh a, [$e0]
	and a
	ret z

	cp $01
	jr nz, jr_006_724b

	set 0, [hl]
	ret


jr_006_724b:
	set 1, [hl]
	ret


	ld h, c
	ld [hld], a
	sub h
	ld [hld], a
	cp l
	ld [hld], a
	add a
	ld [hl], d
	cp h
	ld [hl], d
	cp $72
	ld e, l
	ld [hl], e
	push bc
	rrca
	push bc
	rrca
	push bc
	rrca
	ld [bc], a
	ld b, b
	xor b
	rst $10
	add $72
	db $e3
	ld [hl], d
	db $dd
	ld [hl], d
	db $dd
	ld [hl], d
	inc bc
	jr nc, jr_006_7219

	rst $10
	ld [$2c73], sp
	ld [hl], e
	ld e, $73
	ld e, $73
	inc b
	ld b, b
	xor b
	rst $10
	ld h, a
	ld [hl], e
	add d
	ld [hl], e
	ld [hl], a
	ld [hl], e
	ld [hl], a
	ld [hl], e
	rst $38
	ld [$9421], sp
	ld [hl], d
	ld de, $72ad
	call Call_006_7956
	jp $0f6a


	nop
	dec sp
	cp b
	dec sp
	cp b
	ld d, [hl]
	ld a, a
	cp d
	call c, $c3b8
	ld c, a
	cp d
	cp d
	add $7f
	or [hl]
	cp b
	jp c, wd9c3

	sbc $30
	ld d, [hl]
	ld d, a
	nop
	or h
	ld d, [hl]
	ld c, a
	ld e, [hl]
	ld a, a
	db $d3
	or e
	ld a, a
	or d
	push bc
	or d
	ret


	and $57
	ld [$6221], sp
	ld [hl], d
	call $3214
	jp $0f6a


	nop
	adc e
	and [hl]
	sbc e
	ld a, a
	add l
	xor e
	ld b, b
	sub l
	db $e3
	jp z, Jump_006_5e4f

	ld h, $7f
	cp [hl]
	sbc $b7
	ld [c], a
	cp h
	ret nz

	rst $20
	ld d, a
	nop
	jr z, jr_006_7308

	jr z, @+$58

	ld e, b
	nop
	ld h, $ca
	jp z, $4fe7

	inc e
	adc h
	jp z, wcf7f

	or h
	or [hl]
	rst $10
	ld d, l
	cp d
	cp d
	db $dd
	ld a, a
	ret z

	rst $10
	rst $18
	jp wc9c0


	jr nc, @+$59

	ld [$6e21], sp
	ld [hl], d
	call $3214
	jp $0f6a


jr_006_7308:
	nop
	ld d, h
	jp z, $b54f

	jp c, $7fc9

	pop bc
	pop hl
	or e
	inc l
	jp nz, Jump_006_7fc5

	cp d
	inc a
	sbc $30
	ld l, $e7
	ld d, a
	nop
	cp b
	cp a
	rst $20
	ld c, a
	push bc
	cp e
	cp c
	push bc
	or d
	ld a, a
	ld d, h
	jp nc, $0058

	cp d
	ret


	ld a, a
	ld a, [de]
	and [hl]
	ret


	ld a, a
	inc de
	add b
	jp z, $2e7f

	sbc $3c
	ld c, a
	inc sp
	sbc $bc
	ld a, a
	xor b
	xor h
	add a
	ld a, a
	cp e
	jp c, wd9c3

	ld l, $e7
	ld d, l
	add l
	db $e3
	inc de
	add [hl]
	db $e3
	ld h, $7f
	push bc
	or d
	call nz, $b17f
	or [hl]
	push bc
	or d
	ld l, $e7
	ld d, a
	ld [$7a21], sp
	ld [hl], d
	call $3214
	jp $0f6a


	nop
	call z, wdebc
	push bc
	ld a, a
	call nc, wddc2
	ld a, a
	jp z, $b9df

	sbc $e7
	ld d, a
	nop
	or l
	rst $08
	or h
	ld a, a
	push bc
	add $d3
	ret


	jr nc, jr_006_73da

	nop
	rst $30
	rst $30
	or [hl]
	or d
	add $7f
	or d
	reti


	ld c, a
	inc e
	adc h
	add $7f
	jp c, wd7de

	cp b
	ld a, a
	cp h
	push bc
	cp b
	jp $e7ca


	ld d, a
	ld l, $07
	nop
	jr jr_006_73a2

	ret nc

jr_006_73a2:
	nop
	ld a, [de]
	ld bc, $00d2
	inc d
	nop
	db $ec
	rlca
	dec bc
	inc bc
	ld [$1103], a
	inc bc
	db $d3
	rrca
	inc bc
	inc b
	ld [$110b], a
	dec b
	ld [$0700], a
	inc l
	ld b, $0a
	rst $38
	rst $38
	ld bc, $1218
	dec c
	rst $38
	db $d3
	ld b, d
	and $1a
	jr nz, jr_006_73d6

	ld [de], a
	rst $38
	jp nc, $e443

	dec b
	jr jr_006_73e2

	ld e, $ff

jr_006_73d6:
	pop de
	ld b, h
	and $1b

jr_006_73da:
	dec a
	dec c
	rlca
	rst $38
	rst $38
	add l
	inc [hl]
	dec a

jr_006_73e2:
	dec bc
	ld [$ffff], sp
	add [hl]
	ld [hl], $3d
	inc c
	add hl, bc
	rst $38
	rst $38
	add a
	dec e
	ld a, [bc]
	rst $00
	nop
	jr jr_006_73ff

	rst $00
	nop
	ld a, [de]
	ld [$00c7], sp
	inc d
	ld b, d
	rst $00
	rlca
	dec bc

jr_006_73ff:
	dec de
	rst $00
	inc bc
	ld de, wc792
	rrca
	inc bc
	ld l, a
	rst $00
	dec bc
	ld de, $3d3c
	dec a
	dec a
	ld a, $61
	ld h, c
	ld h, c
	ld h, c
	inc a
	ld a, h
	dec a
	inc h
	ld a, l
	ld a, $44
	dec [hl]
	dec [hl]
	ld e, $46
	ld c, $0e
	ld c, $2f
	ld b, h
	ld c, $0e
	ld c, $0e
	ld b, [hl]
	ld b, h
	dec [hl]
	dec [hl]
	dec [hl]
	ld b, [hl]
	ld c, $47
	ld b, a
	ld c, $44
	ld b, b
	ld h, e
	ld c, $67
	ld b, d
	ld b, h
	dec [hl]
	ld a, [de]
	dec [hl]
	ld b, [hl]
	cpl
	ld c, $0e
	ld c, $44
	ld b, h
	dec c
	inc [hl]
	add hl, bc
	ld b, [hl]
	ld b, h
	jr @+$10

	dec [hl]
	ld b, [hl]
	ld h, e
	ld c, $67
	ld h, c
	ld b, h
	ld b, h
	ld c, $36
	ld c, $46
	ld b, h
	ld c, $0e
	ld c, $46
	ld c, $0e
	ld c, $2f
	ld b, h
	ld b, h
	dec c
	ld [hl], $09
	ld b, [hl]
	ld b, b
	ld h, e
	ld c, $67
	ld b, c
	ld h, e
	ld c, $67
	ld b, c
	ld [hl], b
	ld b, h
	ld c, $36
	ld c, $46
	ld b, h
	cpl
	ld c, $0e
	ld c, $0e
	ld c, $0e
	ld c, $0e
	ld b, h
	dec c
	scf
	add hl, bc
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
	ld c, b
	ld c, c
	ld c, c
	ld c, c
	ld c, d
	ld d, $09
	rrca
	dec a
	ld a, b
	inc hl
	ld [hl], l
	sbc [hl]
	ld [hl], h
	nop
	or h
	ld [hl], a
	call Call_006_74b4
	call $3c6c
	ld hl, $7539
	ld de, $751d
	ld a, [wd5c5]
	call $31a8
	ld [wd5c5], a
	ret


Call_006_74b4:
	ld hl, wd0eb
	bit 5, [hl]
	res 5, [hl]
	ret z

	ld hl, $74fe
	call Call_006_7211
	call Call_006_7505
	ld a, [wd7ab]
	bit 0, a
	jr nz, jr_006_74db

	push af
	ld a, $5f
	ld [wd07c], a
	ld bc, $0203
	ld a, $17
	call $3e9d
	pop af

jr_006_74db:
	bit 1, a
	jr nz, jr_006_74ee

	push af
	ld a, $5f
	ld [wd07c], a
	ld bc, $0603
	ld a, $17
	call $3e9d
	pop af

jr_006_74ee:
	bit 2, a
	ret nz

	ld a, $5f
	ld [wd07c], a
	ld bc, $0507
	ld a, $17
	jp $3e9d


	ld [bc], a
	inc bc
	ld b, $03
	dec b
	rlca
	rst $38

Call_006_7505:
	ld hl, wd7ab
	ldh a, [$e0]

jr_006_750a:
	and a
	ret z

	cp $01
	jr nz, jr_006_7513

	set 0, [hl]
	ret


jr_006_7513:
	cp $02
	jr nz, jr_006_751a

	set 1, [hl]
	ret


jr_006_751a:
	set 2, [hl]
	ret


	ld h, c
	ld [hld], a
	sub h
	ld [hld], a
	cp l
	ld [hld], a
	ld l, d
	ld [hl], l
	pop bc
	ld [hl], l
	rlca
	db $76
	ld l, l
	db $76
	jp nz, wc576

	rrca
	push bc
	rrca
	push bc
	rrca
	db $10
	ld [hl], a
	ld c, d
	ld [hl], a
	add b
	ld [hl], a
	ld [bc], a
	db $10
	xor d
	rst $10
	bit 6, l
	ldh a, [$75]
	jp hl


	ld [hl], l
	jp hl


	ld [hl], l
	inc bc
	jr nz, @-$54

	rst $10
	ld de, $3a76
	db $76
	ld [hld], a
	db $76
	ld [hld], a
	db $76
	inc b
	ld b, b
	xor d

jr_006_7554:
	rst $10
	ld [hl], a
	db $76
	and b
	db $76
	sub a
	db $76
	sub a
	db $76
	dec b
	jr nc, jr_006_750a

	rst $10
	call z, $ed76
	db $76
	ld [c], a
	db $76
	ld [c], a
	db $76
	rst $38
	ld [$7721], sp
	ld [hl], l
	ld de, $75a0
	call Call_006_7956
	jp $0f6a


	nop
	jr nc, jr_006_7554

	or [hl]
	ld a, a
	ld a, [de]
	and [hl]
	add $7f
	cp h
	ret


	dec sp
	ld a, a
	cp d
	sbc $30
	call nz, Call_006_5e4f
	ld h, $7f
	cp e
	call c, $33b2
	reti


	ld d, l
	ld d, [hl]
	ld a, a
	or a
	ret nc

	ret


	ld a, a
	cp d
	call nz, wd77f
	cp h
	or d
	ret z

	ld d, a
	nop
	ld e, [hl]
	jp z, wc67f

	add hl, hl
	ret nz

	sub $e7
	ld c, a
	or a
	ret nc

	ld h, $7f
	or l
	rst $18
	ld b, h
	rst $10
	rst $18
	ret nz

	ret


	or [hl]
	or d
	ld d, l
	ld d, [hl]
	ld a, a
	or c
	ret c

	ld h, $c4
	or e
	rst $20
	ld d, a
	ld [$3921], sp
	ld [hl], l
	call $3214
	jp $0f6a


	nop
	cp d
	inc [hl]
	db $d3
	ld h, $7f
	or e
	db $db
	jp nz, wc3b2

	reti


	call nz, $bb4f
	rst $18
	or a
	ld a, a
	jp c, wd7de

	cp b
	ld h, $7f
	or c
	rst $18
	ret nz

	ld l, $e7
	ld d, a
	nop
	ld a, [hld]
	rst $18
	ret nz

	ret c

	ld d, [hl]
	ld e, b
	nop
	ld e, [hl]
	add $4f
	ret nz

	jp $b6c2


	push bc
	or d
	ld a, a
	adc $b3
	ld h, $55
	ret nc

	ret


	ret nz

	jp nc, $307f

	ld l, $57
	ld [$4521], sp
	ld [hl], l
	call $3214
	jp $0f6a


	nop
	cp d
	ret


	ld a, a
	sbc e
	xor b
	add b

jr_006_7618:
	jp z, $a14f

	xor e
	adc h
	adc a
	db $e3
	inc e
	db $e3
	and [hl]
	ret


	ld d, l
	cp c
	sbc $b7
	pop hl
	or e
	ld a, a
	adc l
	add a
	adc e
	xor a
	xor e
	jr nc, jr_006_7618

	ld d, a
	nop
	pop bc
	cp b
	cp h
	ld [c], a
	or e
	rst $20
	ld e, b
	nop
	cp d
	cp d
	inc sp
	jp z, Jump_006_4f56

	inc sp
	sbc $be
	jp nz, $7fc9

	ld d, h
	cp e
	or h
	ld a, a
	call nz, wd9da
	ld d, l
	or a
	pop hl
	or e
	or a
	ld [c], a
	cp b
	ret


	ld a, a
	and c
	xor e
	adc h
	adc a
	db $e3
	inc e
	db $e3
	and [hl]
	db $dd
	ld d, l
	cp c
	sbc $b7
	pop hl
	or e
	ld a, a
	cp h
	jp wc9c0


	jr nc, @+$59

	ld [$5121], sp
	ld [hl], l
	call $3214
	jp $0f6a


	nop
	or l
	or [hl]
	cp h
	or d
	push bc
	and $4f
	cp d
	inc [hl]
	db $d3
	ld h, $7f
	jp z, wdfb2

	jp $ba7f


jr_006_768a:
	jp c, $55d9

	call c, $26b9
	ld a, a
	push bc
	or d
	sbc $30
	ld h, $57
	nop
	cp d
	ret c

	ldh [$7f], a
	or d
	or [hl]
	sbc $58
	nop
	cp d
	cp d
	jp z, $fb7f

	or [hl]
	or d
	ld d, [hl]
	ld c, a
	inc e
	adc h
	ret


	ld a, a
	or d
	reti


	ld a, a
	call nz, wdbba
	ld a, a

jr_006_76b5:
	rst $08
	inc sp
	ld d, l
	rst $08
	jr nc, jr_006_768a

	jr nc, jr_006_773c

	or c
	reti


	ld l, $e7
	ld d, a
	ld [$5d21], sp
	ld [hl], l
	call $3214
	jp $0f6a


	nop
	ld e, [hl]
	ld a, a
	or c
	or d
	jp $4fc6


	push bc
	jp nc, $7fc0

	rst $08
	ret z

	cp h
	jp $b87f


	jp c, $2ed9

	ld d, a
	nop
	call z, Call_006_7fde
	ret nz

	rst $08
	ret nz

	rst $08
	jr nc, @-$17

	ld e, b
	nop
	ret nz

	rst $08
	ret nz

	rst $08
	ld d, [hl]
	ld a, a
	or l
	db $d3
	or d
	jr nc, jr_006_76b5

	ret nz

	rst $20
	ld d, c
	adc a
	sbc l
	adc a
	sbc l
	jp z, $944f

	xor h
	adc e
	db $e3
	add $7f
	cp h
	sbc $b6
	ld a, a
	cp l
	reti


	cpl
	ld d, a
	nop
	ld d, [hl]
	ld a, a
	ld d, h
	ld a, a
	and a
	ld b, e
	db $e3
	sub e
	jr nc, @-$17

	ld d, c
	ld d, h
	ld a, a
	cp c
	sbc $b7
	pop hl
	or e
	inc l
	ld [c], a
	ld a, a
	inc sp
	jp z, $2c4f

	sbc $ba
	or e
	ret


	ld a, a
	ld d, h
	ld d, l
	ld b, e
	ret c

	add hl, bc
	xor e
	db $dd
	ld a, a
	jp nz, wd9b8

	ld a, a
	cp d

jr_006_773c:
	call nz, $55c6
	cp [hl]
	or d
	cp d
	or e
	ld a, a
	cp h
	ret nz

	ld d, [hl]
	ld a, a
	ld d, [hl]
	ld d, a
	nop
	ld d, [hl]
	ld a, a
	ld d, h
	ld a, a
	and a
	ld b, e
	db $e3
	sub e
	jr nc, jr_006_773c

	ld d, c
	ld d, h
	ld h, $7f
	jp nz, $b3b6

	ld a, a
	call c, wca2b
	ld c, a
	add hl, hl
	sbc $2b
	or d
	ld a, a
	call c, wdfb6
	jp $b27f


	reti


	jr nc, @-$45

	inc sp
	ld d, l
	rst $30

jr_006_7772:
	db $fc
	or $bc
	pop hl
	reti


	or d
	ld a, a
	or d
	inc l
	ld [c], a
	or e
	or c
	reti


	ld d, a
	nop
	ld d, [hl]
	ld a, a
	ld d, h
	ld a, a
	and a
	ld b, e
	db $e3
	sub e
	jr nc, jr_006_7772

	ld d, c
	cp d
	or e
	or [hl]
	sbc $7f
	adc b
	db $e3
	dec de
	and [hl]
	db $dd
	ld a, a
	call nz, $bdb5
	call nz, $bc4f
	sbc $b6
	cp l
	reti


	ld a, a
	ld d, h
	ld h, $55
	ld a, [$e1bc]
	reti


	or d
	ld a, a
	or [hl]
	cp b
	add $de
	ld a, a
	cp e
	jp c, $57c0

	ld l, $07
	nop
	jr jr_006_77ba

	db $d3

jr_006_77ba:
	nop
	ld a, [de]
	ld bc, $00d1
	inc d
	nop
	db $ec
	inc bc
	dec de
	dec b
	call nc, $090f
	inc b
	jp hl


	dec b
	dec bc
	inc b
	ret nc

	rrca
	inc bc
	dec b
	ret nc

	nop
	dec bc
	inc l
	dec c
	ld de, $ffff
	ld bc, $1418
	inc c
	rst $38
	db $d3
	ld b, d
	and $1c
	jr nz, jr_006_77eb

	inc c
	rst $38
	db $d3
	ld b, e
	db $e4
	ld b, $21

jr_006_77eb:
	ld c, $16
	rst $38
	pop de
	ld b, h
	db $dd
	ld bc, $0818
	jr nz, @+$01

jr_006_77f6:
	pop de
	ld b, l
	and $1d
	dec a
	ld de, $ff06
	rst $38
	add [hl]
	pop de
	dec a
	ld a, [bc]
	ld [$ffff], sp
	add a
	inc h
	dec a
	inc d
	add hl, de
	rst $38
	rst $38
	adc b
	jr nc, jr_006_7852

	db $10
	ld a, [de]
	rst $38
	rst $38
	add hl, bc
	ld b, d
	ld c, $1d
	rst $38
	rst $38
	ld a, [bc]
	ld b, d
	ld a, [bc]
	inc e
	rst $38
	rst $38
	dec bc
	ld a, [bc]
	rst $00
	nop
	jr jr_006_7831

	rst $00
	nop
	ld a, [de]
	ld [$00c7], sp
	inc d
	jr nz, jr_006_77f6

	inc bc
	dec de

jr_006_7831:
	sub l
	rst $00
	rrca
	add hl, bc
	dec l
	rst $00
	dec b
	dec bc
	sub d
	rst $00
	rrca
	inc bc
	ld b, b
	ld h, c
	ld h, c
	ld b, d
	dec a
	dec a
	dec a
	dec a
	dec a
	dec a
	ld a, h
	dec a
	ld a, l
	inc h
	ld a, $44
	ld c, $0e
	ld d, [hl]
	ld c, $09

jr_006_7852:
	dec c
	ld c, $0e
	ld c, $0e
	ld c, $0e
	cpl
	ld b, [hl]
	ld b, h
	ld c, $0e
	ld c, $0e
	cpl
	ld c, $5a
	ld b, c
	ld b, c
	ld h, e
	ld c, $67
	ld b, d
	ld b, [hl]
	ld b, h
	ld c, $0e
	ld e, d
	ld c, $60
	ld h, c
	ld b, d
	ld c, $0e
	ld b, a
	ld b, a
	ld a, e
	ld b, [hl]
	ld b, [hl]
	ld d, b
	ld c, c
	ld c, c
	ld d, c
	ld c, $64
	ld c, $56
	ld c, $0e
	ld c, $0e
	ld [hl], $46
	ld b, [hl]
	ld b, h
	ld c, $0e
	ld d, [hl]
	ld c, $44
	ld c, $0e
	ld c, $0e
	ld c, $0e
	ld [hl], $46
	ld b, [hl]
	ld b, h
	ld a, [de]
	dec [hl]
	ld c, $0e
	ld b, h
	ld c, $5a
	ld c, $0e
	ld b, a
	ld b, a
	ld b, a
	ld b, [hl]
	ld b, [hl]
	ld b, h
	cpl
	dec [hl]
	ld e, d
	cpl
	ld c, b
	ld c, c
	ld c, d
	ld c, c
	ld c, c
	ld c, c
	ld c, c
	ld c, c
	ld c, d
	ld b, [hl]
	ld c, b
	ld c, c
	ld c, c
	ld c, d
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
	ld d, $09
	dec c
	inc hl
	ld a, h
	dec e
	ld a, c
	ret nc

	ld a, b
	nop
	or e
	ld a, e
	call Call_006_78e6
	call $3c6c
	ld hl, $7931
	ld de, $7917
	ld a, [wd5c6]
	call $31a8
	ld [wd5c6], a
	ret


Call_006_78e6:
	ld hl, wd0eb
	bit 5, [hl]
	res 5, [hl]
	ret z

	ld hl, $790a
	call Call_006_7211
	call Call_006_790d
	ld a, [wd7ad]
	bit 7, a
	ret nz

	ld a, $5f
	ld [wd07c], a
	ld bc, $0602
	ld a, $17
	jp $3e9d


	ld b, $02
	rst $38

Call_006_790d:
	ldh a, [$e0]
	and a
	ret z

	ld hl, wd7ad
	set 7, [hl]
	ret


	ld h, c
	ld [hld], a
	sub h
	ld [hld], a
	cp l
	ld [hld], a
	ld h, h
	ld a, c
	and l
	ld a, c
	ldh [$79], a
	dec h
	ld a, d
	ld h, b
	ld a, d
	or c
	ld a, d
	db $f4
	ld a, d
	ld e, [hl]
	ld a, e
	push bc
	rrca
	push bc
	rrca
	ld b, $20
	xor h
	rst $10
	cp e
	ld a, d
	jp c, wd47a

	ld a, d
	call nc, $077a
	jr nc, @-$52

	rst $10
	cp $7a
	dec a
	ld a, e
	ld [hl], $7b
	ld [hl], $7b
	ld [$ac20], sp
	rst $10
	ld l, b
	ld a, e
	adc d
	ld a, e
	add b
	ld a, e
	add b
	ld a, e
	rst $38

Call_006_7956:
	ld a, [wd7b7]
	bit 7, a
	jr nz, jr_006_795f

	jr jr_006_7961

jr_006_795f:
	ld h, d
	ld l, e

jr_006_7961:
	jp $3c79


	ld [$7121], sp
	ld a, c
	ld de, $798f
	call Call_006_7956
	jp $0f6a


	nop
	call nc, wd7c2
	ld h, $7f
	or d
	or a
	push bc
	ret c

	ld a, a
	call nc, wc3df
	or a
	jp $1a4f


	and [hl]
	db $dd
	ld a, a
	ret


	rst $18
	call nz, wc0df
	sbc $33
	cp l
	ld d, a
	nop
	ld d, [hl]
	ld a, a
	cp e
	jp $e7c4


	ld c, a
	cp h
	ld a, [hli]
	call nz, $bc7f
	push bc
	or a
	ldh [$7f], a
	cp h
	ld a, [hli]
	call nz, Call_006_57e7
	ld [$b221], sp
	ld a, c
	ld de, $79c9
	call Call_006_7956
	jp $0f6a


	nop
	inc a
	reti


	inc a
	reti


	ld d, [hl]
	ld c, a
	or [hl]
	ret nc

	cp e
	rst $08
	ld a, a
	adc $c4
	cp c
	cp e
	rst $08
	ld a, a
	ret nz

	cp l
	cp c
	jp $0057


	ld a, $b8
	ret nz

	pop bc
	ld a, a
	cp d
	sbc $d4
	cp b
	ld a, a
	cp h
	ret nz

	sub $4f
	ld d, [hl]
	ld a, a
	jp wd9da


	push bc
	or c
	ld d, a
	ld [$ed21], sp
	ld a, c
	ld de, $7a06
	call Call_006_7956
	jp $0f6a


jr_006_79ed:
	nop
	call nz, wd8c5
	ret


	ld a, a
	set 0, h
	ld d, [hl]
	ld c, a
	or l
	call nz, $7fba
	push bc

jr_006_79fc:
	ret


	add $7f
	push bc
	cp e
	cp c
	push bc
	or d
	call c, $0057
	cp d
	ret


	set 0, h
	jp z, $b14f

	ret nz

	cp h
	ld h, $7f
	jp nz, wc3b2

	push bc
	or a
	ldh [rHDMA5], a
	jr nc, jr_006_79ed

	jr nc, jr_006_79fc

	jp $b57f


	db $d3
	rst $18
	ret nz

	ret


	ld d, a
	ld [$3221], sp
	ld a, d
	ld de, $7a4c
	call Call_006_7956
	jp $0f6a


	nop
	ld e, [hl]
	jp z, Jump_006_544f

	ld a, a
	jp nz, wdfb6

	jp $be55


	or [hl]
	or d
	ld a, a
	cp [hl]
	or d
	call z, $7fb8
	cp h
	ret nz

	or d
	ret


	sub $57
	nop
	ld e, [hl]
	ld h, $7f
	add $29
	ret nz

	ret


	jp z, $b14f

	push bc
	ret nz

	ret


	ld a, a
	or l
	or [hl]
	add hl, hl
	ret z

	ld d, a
	ld [$6d21], sp
	ld a, d
	ld de, $7a97
	call Call_006_7956
	jp $0f6a


	nop
	adc e
	and [hl]
	sbc e
	ld a, a
	add l
	xor e
	ld b, b
	sub l
	db $e3
	jp z, $077f

	xor h
	inc c
	db $dd
	ld c, a
	or d

jr_006_7a7f:
	rst $18
	ld b, h
	or d
	ld a, a
	jp nz, wdfb8

	jp Jump_006_7fd9


	or [hl]
	rst $10
	ld d, l
	ret z

	rst $10
	call c, wc0da
	sbc $30
	db $db
	or e
	push bc
	ld d, a
	nop
	or l
	or l
	or a
	cp b
	ld a, a
	push bc
	rst $18
	ret nz

	rst $10
	ld c, a
	adc e
	and [hl]
	sbc e
	inc sp
	ld a, a
	jp z, wd7c0

	cp b
	call nz, $b27f
	or d
	sub $57
	ld [$3121], sp
	ld a, c
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
	jr nc, jr_006_7a7f

	ret


	ld a, a
	set 0, h
	ret c

	rst $20
	ld d, a
	nop
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
	or l
	call nz, wc4b3
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

	ld [$3d21], sp
	ld a, c
	call $3214
	jp $0f6a


	nop
	cp h
	ldh [$c1], a
	ld [c], a
	or e
	jp nc, $e7e3

	ld d, c
	or l
	jp c, wcfbb

	db $dd
	ld c, a
	ld b, e
	sub h
	and d
	sub c
	xor e
	rlca
	adc h
	add l
	ld a, a
	cp h
	jp $55de


	push bc

jr_006_7b1c:
	sbc $b6
	add $7f
	call nz, $bc3a
	ld a, a
	call nc, wd926
	or [hl]
	rst $10
	ld d, l
	ld e, [hl]
	add $7f
	ret z

	rst $10
	call c, wd9da
	ret


jr_006_7b33:
	jr nc, jr_006_7b1c

	ld d, a
	nop
	ld h, $df
	cp b
	cp h
	sub $58
	nop
	ld b, e
	sub h
	and d
	sub c
	xor e
	rlca
	adc h
	add l
	ld a, a
	cp h
	jp $e6de


	ld c, a
	or c
	or c
	ld d, [hl]
	ld d, l
	xor b
	adc e
	add b
	ret


	ld a, a
	or l
	cp b
	ret


	ld a, a
	adc $b3
	jr nc, jr_006_7b33

	ld d, a
	ld [$4921], sp
	ld a, c
	call $3214
	jp $0f6a


	nop
	ld e, [hl]
	db $dd
	ld a, a
	or e
	rst $10
	daa
	rst $18
	jp wc04f


	jr nc, @+$35

	ld a, a
	cp l
	pop de
	call nz, $b57f
	db $d3
	or e
	push bc
	rst $20
	ld d, a
	nop
	or e
	rst $10
	daa
	ret c

	db $d3
	ret


	ld a, a
	jp nc, $0058

	or e
	rst $10
	daa
	ret c

	ld a, a
	inc l
	ldh [$c5], a
	or d
	and $4f
	cp [hl]
	or d
	daa
	ret


	ld a, a
	ret nc

	or [hl]
	ret nz

	ld a, a
	push bc
	rst $10
	ld d, l
	or a
	ret nc

	jp z, $b57f

	jp c, wc9d7

	ld a, a
	or e
	rst $10
	daa
	ret c

	db $d3
	ret


	jr nc, jr_006_7c0a

	ld l, $05
	nop
	db $10
	ld bc, $00d4
	ld c, $00
	jp nc, $1200

	nop
	db $ec
	inc bc
	inc bc
	inc b
	pop de
	inc bc
	rla
	ld b, $cf
	nop
	ld a, [bc]
	inc l
	ld a, [bc]
	ld c, $ff
	rst $38
	ld bc, $0a2c
	jr @+$01

	rst $38
	ld [bc], a
	dec de
	ld a, [bc]
	add hl, de
	rst $38
	ret nc

	inc bc
	dec de
	ld c, $0f
	rst $38
	db $d3
	inc b
	inc l
	ld de, $ff16
	pop de
	dec b
	jr @+$09

	dec d
	rst $38
	db $d3
	ld b, [hl]
	and $1e
	jr nz, @+$0e

	dec bc
	rst $38
	ret nc

	ld b, a
	db $e4
	rlca
	jr jr_006_7c0e

	ld [de], a
	rst $38
	jp nc, $e648

	rra
	dec a
	db $10
	rlca
	rst $38
	rst $38
	adc c
	inc hl
	dec a
	inc de

jr_006_7c0a:
	ld b, $ff
	rst $38
	adc d

jr_006_7c0e:
	ld l, $04
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
	db $10
	rst $00
	inc bc
	inc bc
	ld a, [de]
	rst $00
	inc bc
	rla
	ld h, b
	ld h, c
	ld b, d
	dec a
	dec a
	dec a
	dec a
	inc h
	ld a, l
	ld a, h
	dec a
	dec a
	ld a, $64
	cpl
	ld d, [hl]
	ld c, $0e
	ld c, $0e
	ld c, $0e
	ld c, $0e
	cpl
	ld b, [hl]
	ld b, h
	ld c, $0e
	ld c, $60
	ld h, c
	ld b, c
	ld b, c
	ld h, e
	ld c, $67
	ld b, d
	ld b, [hl]
	ld [de], a
	ld c, $0c
	ld c, $64
	ld c, $34
	inc [hl]
	inc [hl]
	inc [hl]
	inc [hl]
	ld b, [hl]
	ld b, [hl]
	ld b, b
	ld b, c
	ld b, d
	ld c, $44
	ld c, $36
	scf
	scf
	scf
	ld [hl], $46
	ld b, [hl]
	ld b, h
	jr jr_006_7cbd

	ld c, $12
	ld c, $36
	inc [hl]
	inc [hl]
	inc [hl]
	ld [hl], $46
	ld b, [hl]
	ld b, h
	inc e
	ld c, $0e
	ld [de], a
	ld c, $37
	scf
	scf
	scf
	scf
	ld b, [hl]
	ld b, [hl]
	ld b, h
	ld a, [de]
	ld e, d
	ld c, $67
	ld h, e
	ld c, $67
	ld b, c
	ld b, c
	ld b, c
	ld h, e
	ld b, [hl]
	ld c, b
	ld c, c
	ld c, d
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

	ld hl, wd6af
	res 1, [hl]
	call Call_006_7ec1
	jr nc, jr_006_7cbe

	ld a, $fc
	ld [wcd66], a
	ld hl, wd6b5
	set 1, [hl]
	ld a, $01
	ld [wcd38], a
	ld a, $80
	ld [wccd3], a
	xor a
	ld [$c102], a
	call $34d0

jr_006_7cbd:
	ret


jr_006_7cbe:
	xor a
	ld [wcd3a], a
	ld [wcd38], a
	ld [wccd3], a
	ld hl, wd6b5
	res 0, [hl]
	res 1, [hl]
	ld hl, wd6af
	res 7, [hl]
	ret


	ld hl, wd6af
	res 7, [hl]
	ld hl, wd6ad
	res 7, [hl]
	ld hl, wd6b5
	res 0, [hl]
	res 1, [hl]
	xor a
	ld [wcf12], a
	ld [wcc57], a
	ld [wcf0b], a
	ld [wcd3a], a
	ld [wcd38], a
	ld [wccd3], a
	ret


	db $04, $7d

	dec a
	ld a, l
	ld e, c
	ld a, l

	db $5e, $7d, $ac, $7d

	ld a, [wd2e1]
	sub $0a
	ld [wcca1], a
	jr z, jr_006_7d2d

	ld b, $00
	ld c, a
	ld hl, wcc97
	ld a, $80
	call $372a
	ld [hl], $ff
	ld a, [wcf0e]
	ldh [$8c], a
	ld de, wcc97
	call $3684
	ld a, $01
	ld [wcf0b], a
	jr jr_006_7d32

jr_006_7d2d:
	ld a, $03
	ld [wcf0b], a

jr_006_7d32:
	ld hl, wd6b2
	set 1, [hl]
	ld a, $fc
	ld [wcd66], a
	ret


	ld a, [wd6af]
	bit 0, a
	ret nz

	ld a, [wcca1]
	ld [wcd38], a
	ldh [$95], a
	ld a, $23
	call $3e9d
	call $34d0
	ld a, $02
	ld [wcf0b], a
	ret


	ld a, [wcd38]
	and a
	ret nz

	xor a
	ld [wcd3b], a
	ld a, [wcf0e]
	swap a
	ld [wcf12], a
	xor a
	ld [$c206], a
	ld hl, wccd3
	ld de, $7da1
	call $3556
	dec a
	ld [wcd38], a
	ld hl, wcc97
	ld de, $7d94
	call $3556
	ld hl, wd6ad
	res 7, [hl]
	ld hl, wd6af
	set 7, [hl]
	ld a, $04
	ld [wcf0b], a
	ret


	db $00, $05, $80, $01, $00, $05, $c0, $03, $40, $01, $e0, $01, $ff, $40, $02, $10
	db $03, $80, $05, $20, $01, $80, $06, $ff

	ld a, [wcd38]
	and a
	ret nz

	ld a, $00
	ld [wcc4d], a
	ld a, $11
	call $3e9d
	ld hl, wd6af
	res 7, [hl]
	ld hl, wd6ad
	res 7, [hl]
	jp $3196


	call z, $237d
	ld a, [hl]
	ld a, $02
	ld [wAudioROMBank], a
	ld [wAudioSavedROMBank], a
	ld a, $e1
	ld [wNewSoundID], a
	call $0e45
	ld a, [wcf0e]
	swap a
	ld [wcf12], a
	call $34d0
	ld hl, wccd3
	ld de, $7e11
	call $3556
	dec a
	ld [wcd38], a
	xor a
	ld [wd0f4], a
	ld a, $4f
	call $3e9d
	ld hl, wcc97
	ld de, $7e1a
	call $3556
	ld hl, wd6ad
	res 7, [hl]
	ld a, $01
	ld [wcf0b], a
	ret


	nop
	ld bc, $0340
	jr nz, jr_006_7e24

	ld b, b
	ld b, $ff
	ld b, b
	ld b, $80
	dec c
	ld b, b
	inc bc
	add b
	ld bc, $faff

jr_006_7e24:
	jr c, @-$31

	and a
	ret nz

	ld hl, wd6af
	res 7, [hl]
	ld hl, wd6ad
	res 7, [hl]
	jp $3196


	add hl, sp
	ld a, [hl]
	inc hl
	ld a, [hl]
	ld a, $02
	ld [wAudioROMBank], a
	ld [wAudioSavedROMBank], a
	ld a, $e1
	ld [wNewSoundID], a
	call $0e45
	ld a, [wcf0e]
	swap a
	ld [wcf12], a
	xor a
	ld [$c206], a
	ld hl, wccd3
	ld de, $7e85
	call $3556
	dec a
	ld [wcd38], a
	ld a, $01
	ld [wd0f4], a
	ld a, $4f
	call $3e9d
	ld hl, wcc97
	ld de, $7e92
	call $3556
	ld hl, wd6ad
	res 7, [hl]
	ld hl, wd6af
	set 7, [hl]
	ld a, $01
	ld [wcf0b], a
	ret


	nop
	ld bc, $0210
	add b
	dec b
	jr nz, jr_006_7e98

	ld b, b
	dec b
	jr nz, @+$11

	rst $38
	nop
	ld [bc], a
	add b
	rrca
	ld b, b
	dec b

jr_006_7e98:
	add b
	dec bc
	nop
	dec b
	ret nz

	inc bc
	rst $38

	ld a, [wd2dd]
	cp $94
	ret z

	ld hl, $7ebd
	ld a, [wcd2d]
	ld b, a

jr_006_7eac:
	ld a, [hli]
	cp $ff
	jr z, jr_006_7eb5

	cp b
	ret z

	jr jr_006_7eac

jr_006_7eb5:
	ld a, [wcf0e]
	ldh [$8c], a
	jp $358b


	db $e1, $f2, $f3, $ff

Call_006_7ec1:
	push de
	ld hl, $7ee4
	ld a, [wd2e6]
	ld de, $0003
	call $3ddb
	pop de
	jr nc, jr_006_7ee2

	inc hl
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, [wc45c]
	ld b, a

jr_006_7ed9:
	ld a, [hli]
	and a
	jr z, jr_006_7ee2

	cp b
	jr nz, jr_006_7ed9

	scf
	ret


jr_006_7ee2:
	and a
	ret


	db $00, $0c, $7f, $03, $0f, $7f, $02, $11, $7f, $08, $13, $7f, $09, $15, $7f, $0a

	dec d
	ld a, a

	db $0c

	dec d
	ld a, a

	db $0d

	rla
	ld a, a

	db $12

	add hl, de
	ld a, a

	db $13

	dec e
	ld a, a

	db $14

	db $21
	ld a, a

	db $16

	inc hl
	ld a, a

	db $17

	daa
	ld a, a

	db $ff, $1b, $58, $00, $3a, $00, $5e, $00, $54, $00, $3b, $00

	ld e, $00
	inc e
	jr c, @+$1c

	nop
	ld a, [de]
	inc e
	ld d, e
	nop
	inc [hl]
	nop
	ld b, e
	ld e, b
	dec de

Call_006_7f26:
Jump_006_7f26:
	nop
	dec sp
	dec de
	nop

	ld a, [wd6b5]
	bit 6, a
	ret nz

	ld a, [wd2e6]

Jump_006_7f33:
	and a
	ret nz

	ld a, $35
	call $3e9d
	ld a, [$c109]
	ld b, a
	ld a, [wc45c]
	ld c, a
	ld a, [wcfad]
	ld d, a
	ld hl, $7f87

jr_006_7f49:
	ld a, [hli]
	cp $ff
	ret z

	cp b
	jr nz, jr_006_7f5c

	ld a, [hli]
	cp c
	jr nz, jr_006_7f5d

	ld a, [hli]
	cp d

Jump_006_7f56:
	jr nz, jr_006_7f5e

	ld a, [hl]
	ld e, a
	jr jr_006_7f61

jr_006_7f5c:
	inc hl

jr_006_7f5d:
	inc hl

jr_006_7f5e:
	inc hl
	jr jr_006_7f49

jr_006_7f61:
	ldh a, [$b4]
	and e
	ret z

	ld a, $ff
	ld [wcd66], a
	ld hl, wd6b5
	set 6, [hl]
	call $34d0
	ld a, e
	ld [wccd3], a
	ld [wccd4], a
	ld a, $02
	ld [wcd38], a
	call Call_006_7fa8
	ld a, $a2
	call $0e45
	ret


	db $00, $2c, $37, $80, $00, $39, $36, $80, $00, $39, $37, $80, $08, $2c, $27

	db $20

	db $08, $39, $27

	db $20

	db $0c, $2c, $0d

	db $10

	db $0c, $2c, $1d

	db $10

	db $0c, $39, $0d

	db $10

	db $ff

Call_006_7fa8:
jr_006_7fa8:
	ld hl, $8ff0
	ld de, $7fc0
	ld bc, $0601

Call_006_7fb1:
	call $031b
	ld a, $09
	ld bc, $5448

Call_006_7fb9:
	ld de, $7fc8

Call_006_7fbc:
	call $3ae1
	ret


	db $00

	nop

	db $00

	nop

	db $07

Jump_006_7fc5:
	rra

	db $3f

	ld a, a

	db $ff, $10, $ff, $20, $ff, $40, $ff, $60

	rst $38
	db $10
	rst $38

Call_006_7fd3:
Jump_006_7fd3:
	jr nz, @+$01

	ld b, b
	rst $38
	ld h, b

Call_006_7fd8:
	rst $38

Jump_006_7fd9:
	db $10
	rst $38
	jr nz, @+$01

Jump_006_7fdd:
	ld b, b

Call_006_7fde:
	rst $38
	ld h, b
	di
	adc c
	db $eb
	and a
	add hl, sp
	inc sp
	ld l, a

Jump_006_7fe7:
	cpl
	rst $38
	and e
	ld c, e
	ccf
	rst $28
	rst $28
	daa
	ld l, l
	cp e
	db $e3
	ld a, a
	rst $00
	ld a, a
	cpl
	sbc e
	cp l
	db $ed
	cpl
	or a
	db $d3
	xor a
	cp e

Jump_006_7ffe:
	cp a
	nop
