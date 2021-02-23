; Disassembly of "pokemon-red-jp.gb"

SECTION "ROM Bank $001", ROMX[$4000], BANK[$1]

	db $80, $40, $98, $40, $84, $40, $98, $40, $80, $40, $98, $40, $84, $40, $a4, $40
	db $88, $40, $98, $40, $8c, $40, $98, $40, $88, $40, $98, $40, $8c, $40, $a4, $40
	db $90, $40, $98, $40, $94, $40, $98, $40, $90, $40, $98, $40, $94, $40, $98, $40
	db $90, $40, $a4, $40, $94, $40, $a4, $40, $90, $40, $a4, $40, $94, $40, $a4, $40
	db $80, $40, $98, $40

	add b
	ld b, b
	sbc b
	ld b, b
	add b
	ld b, b
	sbc b
	ld b, b
	add b
	ld b, b
	sbc b
	ld b, b

	db $80, $40, $98, $40

	add b
	ld b, b
	sbc b
	ld b, b
	add b
	ld b, b
	sbc b
	ld b, b
	add b
	ld b, b
	sbc b
	ld b, b

	db $80, $40, $98, $40

	add b
	ld b, b
	sbc b
	ld b, b
	add b
	ld b, b
	sbc b
	ld b, b
	add b
	ld b, b
	sbc b
	ld b, b

	db $80, $40, $98, $40

	add b
	ld b, b
	sbc b
	ld b, b
	add b
	ld b, b
	sbc b
	ld b, b
	add b
	ld b, b
	sbc b
	ld b, b

	db $00, $01, $02, $03, $80, $81, $82, $83, $04, $05, $06, $07, $84, $85, $86, $87
	db $08, $09, $0a, $0b, $88, $89, $8a, $8b, $00, $00, $00, $00, $08, $00, $08, $00
	db $02, $08, $08, $03, $00, $08, $20, $00, $00, $20, $08, $08, $22, $08, $00, $23

	ld d, l
	cp [hl]
	pop de
	sub e
	add l
	ld a, a
	call nc, Call_001_63d5
	add c
	add sp, -$66
	push af
	ld c, h
	ld hl, sp-$33
	ld hl, sp-$67
	cp d
	ld a, [bc]
	or h
	jp z, Jump_001_5033

	ld c, c
	sub a
	ld d, e
	ld a, [hld]
	ld h, h
	or l
	db $fd
	ld a, b
	db $dd
	ld c, b
	and l
	adc e
	xor c
	ld d, h
	ret


	cp d
	dec d
	ret nc

	ld b, c
	ld sp, $a3a7
	add hl, sp
	ld [$2484], sp
	add hl, sp
	jr @-$54

	ld d, e
	ld h, h
	ld a, [hli]
	add [hl]
	ld b, $22
	ld b, d
	dec l
	ld c, b
	or h
	jp c, Jump_001_7482

	adc b
	inc de
	dec b
	ld h, $8d
	inc d
	add h
	ld e, d
	adc e
	and c
	and e
	ld l, a
	ld [c], a
	ld d, $58
	ld d, l
	dec h
	ld b, [hl]
	adc b
	cp a
	push af
	ld d, l
	ld l, a
	ld [hl], h

jr_001_410a:
	ld d, d
	jr nz, @-$75

	ld d, l
	ld c, h
	sbc [hl]
	ld a, d
	add l
	ld b, l
	ld l, l
	ld [$6a12], sp
	inc [hl]
	ld d, b
	ld d, d
	inc d
	ld e, $2e
	add hl, sp
	ld d, h
	dec d
	ldh [rHDMA2], a
	sub h
	jr z, jr_001_410a

	ld d, b
	and l
	db $e3
	ld b, $4e
	ld a, e
	ld a, [$8633]
	ld a, l
	and d
	sbc h

jr_001_4131:
	ld c, b
	ld b, e
	add d
	ld l, d
	add [hl]
	sbc h
	xor d
	ld b, h
	add hl, hl
	sbc [hl]
	ld l, e
	rla
	call nz, Call_001_4a44
	ld d, d
	add hl, de
	xor l
	and b
	sub e
	ld de, $9813
	ld [hl], h
	ld e, d
	ld de, $1b0d
	inc [hl]
	ld b, h
	add hl, de
	adc h
	ld [$6456], sp
	jp $2807


	and c
	add hl, de
	add $2c
	ld b, a
	and d
	add l
	add [hl]
	rrca
	db $fc
	ld d, h
	inc d
	ld b, d
	ld c, h
	ld c, a
	sub e
	cp [hl]
	rst $38
	rst $38
	ld d, $a5
	xor c
	ld [hl], h
	ld c, $18
	and c
	ld a, a
	pop de
	jr z, jr_001_41be

	ld [hl], h
	ld c, d
	ccf
	call c, $0d46
	ld b, [hl]
	ld d, a
	ld [de], a
	sub b
	pop af
	inc [hl]
	ld a, [bc]
	ret nc

jr_001_4183:
	ld b, h
	ld h, l
	jp $4465


	and c
	ld d, l
	ld h, e
	jr nz, jr_001_4131

	call c, wdc4c
	ld l, c
	add hl, hl
	ld c, b
	inc a
	ld b, d
	ld a, [de]
	sbc h
	ld [hl], b
	ld c, d
	ld d, e
	jr jr_001_4183

	inc l
	ld [de], a
	ld [$54b4], sp
	inc e
	ld [hl], e
	ld b, d
	or [hl]
	ld h, l
	ld b, a
	ld c, h
	ld de, $44c0
	cp [hl]
	dec l
	ld e, a
	rst $38
	rst $10
	call nc, $eadd
	dec b
	ld d, l
	xor a
	rst $38
	jr c, @+$70

	and b
	xor a
	ld e, d
	di
	add d

jr_001_41be:
	adc b
	ld d, d
	ld l, e
	call nc, $f8d6
	ld e, [hl]
	ld [hld], a
	and e
	db $d3
	or h
	ldh a, [$28]
	ld a, [c]
	ld e, h
	and $bf
	push de
	db $e3
	or d
	and e
	ld [wc527], a
	and e
	ld a, [bc]
	cp b
	ld l, $09
	cp d
	ld b, d
	and h
	or h

jr_001_41df:
	or $a7
	rlca
	ld [de], a
	adc h
	ld [$9a53], sp
	xor a
	dec d
	ld b, h
	ld d, h
	add hl, bc
	pop bc
	db $10
	sbc [hl]
	ld [bc], a
	ld h, b
	and a
	ld d, d
	and c
	ld b, a
	ld e, l
	jr jr_001_41df

	ld [hld], a
	ld b, d
	ld b, e
	sbc l
	ld [hl], b
	ld e, c
	ld hl, sp+$40
	sub a
	ld h, h
	ld h, h
	ld h, h
	ld h, h
	ld h, h
	jr jr_001_4220

	dec l
	ld b, b
	ld d, l
	or b
	ld b, b
	xor d
	ld b, c
	ld bc, $0000
	nop
	inc bc
	rst $38
	rst $38
	rst $38
	rst $38
	rst $38
	rst $38
	rst $38
	rst $38
	nop
	nop
	nop
	nop

jr_001_4220:
	ld [de], a
	nop
	nop
	ld b, $00

	db $00, $02, $00

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
	stop
	nop
	nop
	nop
	nop
	nop
	nop

	db $00, $01, $00, $00, $02, $50

	nop
	ld [bc], a
	ld d, b
	nop
	ld [bc], a
	nop

	db $00, $02, $00

	nop
	jr nc, jr_001_424c

jr_001_424c:
	nop
	dec h
	nop
	nop
	dec d
	nop
	nop
	rlca
	nop

	db $00, $03, $00

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
	ld d, b
	nop
	inc bc
	ld d, b
	nop
	nop
	nop
	nop
	ld hl, $0000
	ld hl, $0000
	ld hl, $0000
	sbc b
	nop
	nop
	sbc b
	nop
	nop
	sbc b
	nop
	nop
	sbc b
	nop
	nop
	sbc b
	nop
	nop
	ld c, b
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
	nop
	add hl, bc
	ld d, b
	nop
	ld hl, $0000
	nop
	nop
	ld bc, $0000
	nop
	sbc b
	nop
	nop
	stop
	nop
	ld b, $00
	nop
	dec d
	nop
	nop
	ld b, b
	nop
	nop
	rlca
	nop
	nop
	dec b
	nop
	nop
	rlca
	nop
	nop
	ld b, $50
	nop
	nop
	stop
	ld [bc], a
	nop
	nop
	inc bc
	nop
	nop
	inc bc
	ld d, b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	dec b
	nop
	nop
	dec b
	ld d, b
	nop
	inc bc
	ld d, b
	nop
	inc bc
	ld d, b
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
	nop
	nop
	nop
	nop
	nop
	nop
	nop

	db $9d, $8c, $8f, $e3, $1c, $e3, $a6, $50, $99, $81, $40, $e3, $1c, $e3, $a6, $50
	db $8c, $e3, $40, $e3, $1c, $e3, $a6, $50, $a1, $ab, $8c, $8f, $e3, $1c, $e3, $a6
	db $50, $8f, $82, $ab, $9d, $ac, $42, $50, $2c, $c3, $de, $bc, $e0, $50, $e6, $e6
	db $e6, $e6, $e6, $50, $8a, $9b, $e9, $d8, $1c, $e3, $a6, $50, $43, $88, $a1, $ab
	db $2d, $b6, $de, $50, $c2, $b7, $c9, $b2, $bc, $50, $34, $b8, $b9, $bc, $50, $d4
	db $b9, $34, $c5, $b5, $bc, $50, $ba, $b5, $d8, $c5, $b5, $bc, $50, $c8, $d1, $b9
	db $2b, $cf, $bc, $50, $cf, $cb, $c5, $b5, $bc, $50, $b6, $b2, $cc, $b8, $c9, $b8
	db $bd, $d8, $50, $cf, $de, $c0, $de, $c9, $b8, $bd, $d8, $50, $bd, $2a, $b2, $86
	db $0c, $28, $bd, $d8, $50, $b2, $b2, $86, $0c, $28, $bd, $d8, $50, $86, $0c, $28
	db $bd, $d8, $50, $07, $a7, $e3, $19, $ac, $0b, $50, $1b, $a6, $e3, $19, $ac, $0b
	db $50, $84, $a7, $ab, $0b, $19, $ac, $0b, $50, $a7, $81, $ab, $1c, $e3, $19, $ac
	db $0b, $50, $41, $ab, $87, $19, $ac, $0b, $50, $09, $e3, $a6, $13, $19, $ac, $0b
	db $50, $87, $d8, $9f, $0e, $ab, $19, $ac, $0b, $50, $07, $d8, $e3, $ab, $19, $ac
	db $0b, $50, $b1, $c5, $c7, $b9, $c9, $9a, $a1, $50, $d1, $bc, $d6, $b9, $8c, $42
	db $a7, $e3, $50, $cb, $d0, $c2, $c9, $89, $99, $87, $50, $ce, $c9, $b5, $c9, $b2
	db $bc, $50, $b6, $d0, $c5, $d8, $c9, $b2, $bc, $50, $d0, $2d, $c9, $b2, $bc, $50
	db $9d, $ac, $87, $8c, $80, $ac, $42, $50, $8f, $82, $d8, $ab, $50, $1b, $a8, $9f
	db $cd, $86, $8b, $ab, $50, $81, $ab, $13, $a0, $8f, $8b, $ab, $50, $d8, $0e, $90
	db $82, $9f, $50, $cc, $bc, $27, $c5, $80, $a0, $50, $ba, $b3, $d7, $c9, $85, $8d
	db $86, $50, $b6, $b2, $c9, $85, $8d, $86, $50, $cb, $d0, $c2, $c9, $85, $06, $50
	db $e6, $e6, $e6, $e6, $e6, $50, $cb, $b7, $b6, $b4, $b9, $de, $50, $a4, $87, $80
	db $8f, $e3, $a6, $50, $d8, $e3, $9b, $c9, $b2, $bc, $50, $85, $e3, $13, $86, $e3
	db $50, $b7, $de, $c9, $c0, $cf, $50, $43, $81, $ab, $93, $80, $ac, $42, $50, $41
	db $ac, $41, $c6, $de, $27, $e2, $b3, $50, $c5, $de, $33, $d3, $c5, $b5, $bc, $50
	db $29, $de, $b7, $c9, $b6, $b9, $d7, $50, $29, $de, $b7, $c9, $b6, $c0, $cf, $d8
	db $50, $83, $9b, $eb, $87, $93, $05, $e3, $13, $50, $8b, $a6, $19, $e3, $8c, $42
	db $a7, $e3, $50, $09, $e3, $a6, $13, $8c, $42, $a7, $e3, $50, $87, $d8, $92, $b0
	db $85, $ac, $8f, $e3, $50, $89, $81, $ab, $50, $b5, $b2, $bc, $b2, $d0, $2d, $50
	db $8a, $81, $89, $8e, $e3, $0f, $50, $9e, $ac, $87, $8c, $84, $a7, $50, $cc, $c8
	db $c9, $90, $88, $ac, $93, $50, $b7, $de, $c9, $b2, $da, $3a, $50, $42, $a5, $8c
	db $40, $a9, $e3, $50, $12, $b0, $9b, $eb, $ab, $0f, $e3, $50, $8c, $41, $e3, $0f
	db $e3, $50, $8c, $47, $8b, $ad, $a6, $80, $ac, $42, $50, $89, $81, $ab, $88, $e3
	db $8c, $50, $b5, $c4, $34, $b9, $d3, $c9, $50, $0f, $82, $0b, $ab, $07, $9d, $8b
	db $ab, $50, $8b, $a6, $9b, $8c

	adc c
	db $e3
	ld b, d
	ld d, b
	ld b, e
	adc b
	and c
	xor e
	ret


	call z, Call_001_50b4
	add e
	and a
	dec a
	db $e3
	adc a
	ret


	add l
	ld b, $50
	ld h, $b8
	cp h
	pop hl
	or e
	cp a
	or e
	pop bc
	ld d, b
	inc e
	xor b
	ret


	jp nz, $2bd8

	or l
	ld d, b
	or d
	or d
	jp nz, $2bd8

	or l
	ld d, b
	cp l
	ld a, [hli]
	or d
	jp nz, $2bd8

	or l
	ld d, b
	ld b, e
	add c
	xor e
	sub e
	add b
	xor h
	ld b, d
	ld d, b
	ld b, c
	db $e3
	ld b, c
	db $e3
	add e
	add c
	inc de
	ld d, b
	ld b, c
	db $e3
	ld b, c
	db $e3
	ret c

	add l
	add hl, de
	db $e3
	ld d, b
	ld b, c
	db $e3
	ld b, c
	db $e3
	add e
	add c
	rrca
	db $e3
	ld d, b
	ld b, c
	db $e3
	ld b, c
	db $e3
	sbc l
	xor h
	add a
	adc h
	ld d, b
	pop bc
	or [hl]
	ld hl, sp-$4a
	or d
	ld d, b
	pop bc
	or [hl]
	rst $30
	or [hl]
	or d
	ld d, b
	rst $30
	or [hl]
	or d
	ld d, b
	ld hl, sp-$4a
	or d
	ld d, b
	ld sp, hl
	or [hl]
	or d
	ld d, b
	ld a, [$b2b6]
	ld d, b
	ei
	or [hl]
	or d
	ld d, b
	db $fc
	or [hl]
	or d
	ld d, b
	db $fd
	or [hl]
	or d
	ld d, b
	cp $b6
	or d
	ld d, b
	rst $38
	or [hl]
	or d
	ld d, b
	rst $30
	or $b6
	or d
	ld d, b
	rst $30
	rst $30
	or [hl]
	or d
	ld d, b
	pop bc
	or [hl]
	ld a, [$b2b6]
	ld d, b
	or [hl]
	ret nc

	push bc
	ret c

	add hl, de
	xor h
	db $10
	ld d, b
	or [hl]
	or d
	ld h, $d7
	add hl, de
	xor h
	db $10
	ld d, b
	or l
	inc l
	cpl
	or e
	add hl, de
	xor h
	db $10
	ld d, b
	jp z, $3cd4

	cp e
	add hl, de
	xor h
	db $10
	ld d, b
	set 3, [hl]
	call nc, $19d8
	xor h
	db $10
	ld d, b
	push bc
	or [hl]
	sub $bc
	add hl, de
	xor h
	db $10
	ld d, b
	add hl, de
	and l
	add hl, de
	xor h
	db $10
	ld d, b
	set 1, c
	ret nz

	rst $08
	add hl, de
	xor h
	db $10
	ld d, b
	add hl, bc
	db $e3
	and [hl]
	inc de
	add hl, de
	xor h
	db $10
	ld d, b
	ret nz

	rst $08
	ld a, [hli]
	ld d, b
	set 2, [hl]
	cp d
	ld d, b
	dec de
	xor b
	xor e
	inc c
	ld d, b
	adc e
	and [hl]
	add hl, de
	db $e3
	ld d, b
	add hl, bc
	db $e3
	and [hl]
	inc de
	ld d, b
	ld b, d
	sub b
	add [hl]
	xor l
	ld b, d
	sub d
	xor e
	ld d, b
	add [hl]
	xor l
	ld b, d
	sub d
	xor e
	ld d, b
	ld b, d
	sub b
	sbc l
	adc h
	adc a
	db $e3
	ld d, b
	sbc l
	adc h
	adc a
	db $e3
	ld d, b
	add e
	add a
	adc l
	and a
	xor e
	sub e

	ld a, [wcfb2]
	dec a
	jr z, jr_001_4681

	cp $ff
	ret nz

	ld [wcfb2], a
	jp $0193


jr_001_4681:
	xor a
	ldh [$90], a

Jump_001_4684:
	ldh [$8f], a
	ld d, $c1
	ldh a, [$8f]
	ld e, a
	ld a, [de]
	and a
	jp z, Jump_001_4710

	inc e
	inc e
	ld a, [de]
	ld [wd54c], a
	cp $ff
	jr nz, jr_001_469f

	call Call_001_4734
	jr jr_001_4710

jr_001_469f:
	cp $a0
	jr c, jr_001_46a9

	and $0f
	add $10
	jr jr_001_46ab

jr_001_46a9:
	and $0f

jr_001_46ab:
	ld l, a
	push de
	inc d
	ld a, e
	add $05
	ld e, a
	ld a, [de]
	and $80
	ldh [$94], a
	pop de
	ld h, $00
	ld bc, $4000
	add hl, hl
	add hl, hl
	add hl, bc
	ld a, [hli]
	ld c, a
	ld a, [hli]
	ld b, a
	ld a, [hli]
	ld h, [hl]
	ld l, a
	call Call_001_4734
	ldh a, [$90]
	ld e, a
	ld d, $c3

jr_001_46cf:
	ldh a, [$92]
	add $10
	add [hl]
	ld [de], a
	inc hl
	ldh a, [$91]
	add $08
	add [hl]
	inc e
	ld [de], a
	inc e
	ld a, [bc]
	inc bc
	push bc
	ld b, a
	ld a, [wd54c]
	swap a
	and $0f
	cp $0b
	jr nz, jr_001_46f1

	ld a, $7c
	jr jr_001_46f9

jr_001_46f1:
	sla a
	sla a
	ld c, a
	sla a
	add c

jr_001_46f9:
	add b
	pop bc
	ld [de], a
	inc hl
	inc e
	ld a, [hl]
	bit 1, a
	jr z, jr_001_4706

	ldh a, [$94]
	or [hl]

jr_001_4706:
	inc hl
	ld [de], a
	inc e
	bit 0, a
	jr z, jr_001_46cf

	ld a, e
	ldh [$90], a

Jump_001_4710:
jr_001_4710:
	ldh a, [$8f]
	add $10
	cp $00
	jp nz, Jump_001_4684

	ldh a, [$90]
	ld l, a
	ld h, $c3
	ld de, $0004
	ld b, $a0
	ld a, [wd6b5]
	bit 6, a
	ld a, $a0
	jr z, jr_001_472e

	ld a, $90

jr_001_472e:
	cp l
	ret z

	ld [hl], b
	add hl, de
	jr jr_001_472e

Call_001_4734:
	inc e
	inc e
	ld a, [de]
	ldh [$92], a
	inc e
	inc e
	ld a, [de]
	ldh [$91], a
	ld a, $04
	add e
	ld e, a
	ldh a, [$92]
	add $04
	and $f0
	ld [de], a
	inc e
	ldh a, [$91]
	and $f0
	ld [de], a
	ret

WriteDMACodeToHRAM::
	ld c, $80
	ld b, $0a
	ld hl, $475e

jr_001_4757:
	ld a, [hli]
	ld [c], a
	inc c
	dec b
	jr nz, jr_001_4757

	ret


	db $3e, $c3, $e0, $46, $3e, $28, $3d, $20, $fd, $c9

Call_001_4768:
	ld bc, $0006
	jp $01bb

SetDefaultNamesBeforeTitlescreen::
	ld hl, $49e3
	ld de, wd11d
	call Call_001_4768
	ld hl, $49e8
	ld de, wd2ce
	call Call_001_4768
	xor a
	ldh [$b0], a
	ld [wd2d7], a
	ld hl, wd6b1
	ld [hli], a
	ld [hli], a
	ld [hl], a
	ld a, $1f
	ld [wc0ef], a
	ld [wc0f0], a

Jump_001_4794:
	call $3e15
	ld a, $01
	ldh [$ba], a
	xor a
	ldh [$d7], a
	ld a, $90
	ldh [$ae], a
	ld a, $90
	ldh [$b0], a
	call $03bf
	call $0167
	call $36ca
	ld hl, $5161
	ld de, $9410
	ld bc, $00d0
	ld a, $04
	call $028c
	ld hl, $4419
	ld de, $8800
	ld bc, $0600
	ld a, $04
	call $028c
	ld hl, $4a19
	ld de, $9310
	ld bc, $0100
	ld a, $04
	call $028c
	ld hl, $4000
	ld de, $9600
	ld bc, $0050
	ld a, $1a
	call $02c0
	call Call_001_495d
	ld hl, wc3b6
	ld a, $80
	ld de, $0014
	ld c, $06

jr_001_47f4:
	ld b, $10
	push hl

jr_001_47f7:
	ld [hli], a
	inc a
	dec b
	jr nz, jr_001_47f7

	pop hl
	add hl, de
	dec c
	jr nz, jr_001_47f4

	ld hl, wc42e
	ld a, $31
	ld b, $10

jr_001_4808:
	ld [hli], a
	inc a
	dec b
	jr nz, jr_001_4808

	call Call_001_4921
	ld hl, wc4f7
	ld a, $41
	ld b, $0d

jr_001_4817:
	ld [hli], a
	inc a
	dec b
	jr nz, jr_001_4817

	call $373e
	call Call_001_49d1
	call $3761
	call $374a
	call $0181
	ld a, $b0
	ld [wcd3d], a
	call Call_001_4968
	ld a, $9b
	call Call_001_4977
	ld a, $40
	ldh [$b0], a
	ld a, $98
	call Call_001_4977
	ld b, $06
	call $3e1f
	call $3e0c
	ld a, $e4
	ldh [rOBP0], a
	ld a, $bd
	call $0e45

jr_001_4852:
	call $0b31
	ldh a, [$ae]
	add $04
	ldh [$ae], a
	jr nz, jr_001_4852

	ld a, $90
	ldh [$b0], a
	ld c, $14
	call $3781
	call Call_001_49d1
	call $3e07
	ld a, $9c
	call Call_001_4977
	call $376d
	call $3e07
	ld a, $c3
	ld [wc0ee], a
	call $0e45

jr_001_487f:
	ld c, $ff
	call Function_0359
	jr c, jr_001_488e

	call Call_001_48f3
	call Call_001_48cc
	jr jr_001_487f

jr_001_488e:
	ld a, [wcd3d]
	call $2dc7
	call $3790
	call $3e04
	call $0188
	xor a
	ldh [$b0], a
	ld a, $01
	ldh [$ba], a
	call $03bf
	ld a, $98
	call Call_001_4977
	ld a, $9c
	call Call_001_4977
	call $3e07
	call $0b3c
	ldh a, [$b4]
	ld b, a
	and $46
	cp $46
	jp z, Jump_001_48c4

	jp Jump_001_591d


Jump_001_48c4:
	ld b, $07
	ld hl, $421e
	jp $3620


Call_001_48cc:
	ld a, $98
	call Call_001_4977

jr_001_48d1:
	call $3e8c
	and $0f
	ld c, a
	ld b, $00
	ld hl, $49c1
	add hl, bc
	ld a, [hl]
	ld hl, wcd3d
	cp [hl]
	jr z, jr_001_48d1

	ld [hl], a
	call Call_001_4968
	ld a, $90
	ldh [$b0], a
	ld d, $a0
	ld c, $0c
	jp Jump_001_48fe


Call_001_48f3:
	ld d, $00
	ld c, $14
	call Call_001_48fe
	xor a
	ldh [$b0], a
	ret


Call_001_48fe:
Jump_001_48fe:
jr_001_48fe:
	ld h, d
	ld l, $48
	call Call_001_4913
	ld h, $00
	ld l, $88
	call Call_001_4913
	ld a, d
	add $08
	ld d, a
	dec c
	jr nz, jr_001_48fe

	ret


Call_001_4913:
jr_001_4913:
	ldh a, [rLY]
	cp l
	jr nz, jr_001_4913

	ld a, h
	ldh [rSCX], a

jr_001_491b:
	ldh a, [rLY]
	cp h
	jr z, jr_001_491b

	ret


Call_001_4921:
	ld hl, $5711
	ld de, $8000
	ld bc, $0230
	ld a, $04
	call $028c
	call $0188
	xor a
	ld [wcd3d], a
	ld hl, wOAMBuffer
	ld de, $6030
	ld b, $07

jr_001_493e:
	push de
	ld c, $05

jr_001_4941:
	ld a, d
	ld [hli], a
	ld a, e
	ld [hli], a
	add $08
	ld e, a
	ld a, [wcd3d]
	ld [hli], a
	inc a
	ld [wcd3d], a
	inc hl
	dec c
	jr nz, jr_001_4941

	pop de
	ld a, $08
	add d
	ld d, a
	dec b
	jr nz, jr_001_493e

	ret


Call_001_495d:
	ld hl, $9800
	ld bc, $0800
	ld a, $7f
	jp $372a


Call_001_4968:
	ld [wcf78], a
	ld [wd092], a
	ld hl, wc471
	call $2f2e
	jp $2d7f


Call_001_4977:
	ld [$ffbd], a
	jp $3e07


	xor a
	ldh [$b0], a
	call $03bf
	call $36ea
	ld de, $5161
	ld hl, $9600
	ld bc, $0419
	call $02dd
	ld hl, wc431
	ld de, $499b
	jp $0405


	db $60, $61, $62, $63, $6d, $6e, $6f, $70, $71, $72, $4e, $60, $61, $62, $63, $73
	db $74, $75, $76, $77, $78, $6b, $6c, $4e, $60, $61, $62, $63, $64, $65, $66, $67
	db $68, $69, $6a, $6b, $6c, $50, $b0, $b1, $99, $70, $03, $1a, $54, $04, $01, $94
	db $19

	ld c, h
	sub [hl]

	db $22, $a3, $85

Call_001_49d1:
	ld hl, wc447
	ld de, $49da
	jp $0405


	db $60, $61, $7f, $65, $66, $67, $68, $69, $50, $d4, $cf, $28, $c1, $50, $b2, $bc
	db $ca, $d7, $50, $21

	ld l, e
	call nz, $0106
	ld c, $0b
	ld a, [wd034]
	and a
	jr z, jr_001_49ff

	call $03d2
	jr jr_001_4a02

jr_001_49ff:
	call Call_001_58de

jr_001_4a02:
	ld hl, wc480
	ld de, $4a10
	call $0405
	ld c, $32
	jp $3781


	jp nz, $bcb3

	sbc $c0
	or d
	or a
	pop bc
	pop hl
	or e
	rst $20
	ld d, b

	ld h, $c1
	inc h
	ld a, $0e

jr_001_4a21:
	ld l, a
	sub $0e
	ld c, a
	ldh [$da], a
	ld a, [hl]
	and a
	jr z, jr_001_4a34

	push hl
	push de
	push bc
	call Call_001_4a3c
	pop bc
	pop de
	pop hl

jr_001_4a34:
	ld a, l
	add $10
	cp $0e
	jr nz, jr_001_4a21

	ret


Call_001_4a3c:
	cp $01
	jp nz, Jump_001_4a44

	jp Jump_001_4c2c


Call_001_4a44:
Jump_001_4a44:
	dec a
	swap a
	ldh [$93], a
	ld a, [wcf12]
	ld b, a
	ldh a, [$da]
	cp b
	jr nz, jr_001_4a55

	jp Jump_001_5033


jr_001_4a55:
	jp Jump_001_4ccc


Call_001_4a58:
	nop
	ld h, $c1
	ldh a, [$da]
	ld l, a
	ld a, [hl]
	and a
	ret z

	ld a, l
	add $03
	ld l, a
	ld a, [hli]
	call Call_001_4b58
	ld a, [hli]
	add $04
	add b
	and $f0
	or c
	ldh [$90], a
	ld a, [hli]
	call Call_001_4b58
	ld a, [hl]
	add b
	and $f0
	or c
	ldh [$91], a
	ld a, l
	add $07
	ld l, a
	xor a
	ld [hld], a
	ld [hld], a
	ldh a, [$91]
	ld [hld], a
	ldh a, [$90]
	ld [hl], a
	xor a

Jump_001_4a8b:
	ldh [$8f], a
	swap a
	ld e, a
	ldh a, [$da]
	cp e
	jp z, Jump_001_4b4f

	ld d, h
	ld a, [de]
	and a
	jp z, Jump_001_4b4f

	inc e
	inc e
	ld a, [de]
	inc a
	jp z, Jump_001_4b4f

	ldh a, [$da]
	add $0a
	ld l, a
	inc e
	ld a, [de]
	call Call_001_4b58
	inc e
	ld a, [de]
	add $04
	add b
	and $f0
	or c
	sub [hl]
	jr nc, jr_001_4aba

	cpl
	inc a

jr_001_4aba:
	ldh [$90], a
	push af
	rl c
	pop af
	ccf
	rl c
	ld b, $07
	ld a, [hl]
	and $0f
	jr z, jr_001_4acc

	ld b, $09

jr_001_4acc:
	ldh a, [$90]
	sub b
	ldh [$92], a
	ld a, b
	ldh [$90], a
	jr c, jr_001_4ae7

	ld b, $07
	dec e
	ld a, [de]
	inc e
	and a
	jr z, jr_001_4ae0

	ld b, $09

jr_001_4ae0:
	ldh a, [$92]
	sub b
	jr z, jr_001_4ae7

	jr nc, jr_001_4b4f

jr_001_4ae7:
	inc e
	inc l
	ld a, [de]
	push bc
	call Call_001_4b58
	inc e
	ld a, [de]
	add b
	and $f0
	or c
	pop bc
	sub [hl]
	jr nc, jr_001_4afa

	cpl
	inc a

jr_001_4afa:
	ldh [$91], a
	push af
	rl c
	pop af
	ccf
	rl c
	ld b, $07
	ld a, [hl]
	and $0f
	jr z, jr_001_4b0c

	ld b, $09

jr_001_4b0c:
	ldh a, [$91]
	sub b
	ldh [$92], a
	ld a, b
	ldh [$91], a
	jr c, jr_001_4b27

	ld b, $07
	dec e
	ld a, [de]
	inc e
	and a
	jr z, jr_001_4b20

	ld b, $09

jr_001_4b20:
	ldh a, [$92]
	sub b
	jr z, jr_001_4b27

	jr nc, jr_001_4b4f

jr_001_4b27:
	ldh a, [$91]
	ld b, a
	ldh a, [$90]
	inc l
	cp b
	jr c, jr_001_4b34

	ld b, $0c
	jr jr_001_4b36

jr_001_4b34:
	ld b, $03

jr_001_4b36:
	ld a, c
	and b
	or [hl]
	ld [hl], a
	ld a, c
	inc l
	inc l
	ldh a, [$8f]
	ld de, $4b6b
	add a
	add e
	ld e, a
	jr nc, jr_001_4b48

	inc d

jr_001_4b48:
	ld a, [de]
	or [hl]
	ld [hli], a
	inc de
	ld a, [de]
	or [hl]
	ld [hl], a

Jump_001_4b4f:
jr_001_4b4f:
	ldh a, [$8f]
	inc a
	cp $10
	jp nz, Jump_001_4a8b

	ret


Call_001_4b58:
	and a
	ld b, $00
	ld c, $00
	jr z, jr_001_4b6a

	ld c, $09
	cp $ff
	jr z, jr_001_4b69

	ld c, $07
	ld a, $00

jr_001_4b69:
	ld b, a

jr_001_4b6a:
	ret


	nop
	db $01

	db $00, $02, $00, $04

	nop
	ld [$1000], sp
	nop
	jr nz, jr_001_4b78

jr_001_4b78:
	ld b, b

	db $00, $80

	ld bc, $0200
	nop
	inc b
	nop
	ld [$1000], sp
	nop
	jr nz, jr_001_4b87

jr_001_4b87:
	ld b, b
	nop
	add b
	nop
	ret


jr_001_4b8c:
	call $3e0c
	ld a, $80
	ld [wd2d5], a
	ld hl, wd6b2
	set 0, [hl]
	ld hl, wd123
	xor a
	ld [hli], a
	dec a
	ld [hl], a
	ld a, $01
	ld [wcf78], a
	ld a, $14
	ld [wd0ec], a
	xor a
	ld [wcc49], a
	ld [wd2dd], a
	call $3971
	ld a, $01
	ld [wd036], a
	ld a, $2c
	call $3e9d
	ld a, $01
	ld [wcfb2], a
	ldh [$ba], a
	jr jr_001_4b8c

	call $3c6c
	ldh a, [$8c]
	ld b, a
	ld hl, wd54d

jr_001_4bd0:
	ld a, [hli]
	cp $ff
	ret z

	cp b
	jr z, jr_001_4bda

	inc hl
	jr jr_001_4bd0

jr_001_4bda:
	ld a, [hl]
	ldh [$db], a
	ld hl, wd483
	ldh a, [$8c]
	dec a
	add a
	ld d, $00
	ld e, a
	add hl, de
	ld a, [hl]
	ld b, a
	ld c, $01
	call $3e5e
	jr nc, jr_001_4c05

	ldh a, [$db]
	ld [wcc4d], a
	ld a, $11
	call $3e9d
	ld a, $01
	ld [wcc3c], a
	ld hl, $4c0c
	jr jr_001_4c08

jr_001_4c05:
	ld hl, $4c1f

jr_001_4c08:
	call $3c79
	ret


	db $00, $52, $ca, $4f, $50, $01, $45, $cf, $00, $dd, $7f, $d0, $c2, $b9, $c0, $e7
	db $50, $0b, $50

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
	rst $20
	ld d, a

Jump_001_4c2c:
	ld a, [$c200]
	and a
	jr z, jr_001_4c3c

	cp $ff
	jr z, jr_001_4c45

	dec a
	ld [$c200], a
	jr jr_001_4c45

jr_001_4c3c:
	ld a, [wc45c]
	ldh [$93], a
	cp $60
	jr c, jr_001_4c4b

jr_001_4c45:
	ld a, $ff
	ld [$c102], a
	ret


jr_001_4c4b:
	call Call_001_4a58
	ld h, $c1
	ld a, [wcfac]
	and a
	jr nz, jr_001_4c8b

	ld a, [wd4a7]
	bit 2, a
	jr z, jr_001_4c60

	xor a
	jr jr_001_4c81

jr_001_4c60:
	bit 3, a
	jr z, jr_001_4c68

	ld a, $04
	jr jr_001_4c81

jr_001_4c68:
	bit 1, a
	jr z, jr_001_4c70

	ld a, $08
	jr jr_001_4c81

jr_001_4c70:
	bit 0, a
	jr z, jr_001_4c78

	ld a, $0c
	jr jr_001_4c81

jr_001_4c78:
	xor a
	ld [$c107], a
	ld [$c108], a
	jr jr_001_4ca6

jr_001_4c81:
	ld [$c109], a
	ld a, [wcfab]
	bit 0, a
	jr nz, jr_001_4c78

jr_001_4c8b:
	ld a, [wd6b5]
	bit 7, a
	jr nz, jr_001_4cb1

	ldh a, [$da]
	add $07
	ld l, a
	ld a, [hl]
	inc a
	ld [hl], a
	cp $04
	jr nz, jr_001_4ca6

	xor a
	ld [hl], a
	inc hl
	ld a, [hl]
	inc a
	and $03
	ld [hl], a

jr_001_4ca6:
	ld a, [$c108]
	ld b, a
	ld a, [$c109]
	add b
	ld [$c102], a

jr_001_4cb1:
	ldh a, [$93]
	ld c, a
	ld a, [wd4b4]
	cp c
	ld a, $00
	jr nz, jr_001_4cbe

	ld a, $80

jr_001_4cbe:
	ld [$c207], a
	ret


	push bc
	push af
	ldh a, [$da]
	ld c, a
	pop af
	add c
	ld l, a
	pop bc
	ret


Jump_001_4ccc:
	ldh a, [$da]
	swap a
	dec a
	add a
	ld hl, wd463
	add l
	ld l, a
	ld a, [hl]
	ld [wcf0f], a
	ld h, $c1
	ldh a, [$da]
	ld l, a
	inc l
	ld a, [hl]
	and a
	jp z, Jump_001_4ea8

	call Call_001_4ed7
	ret c

	ld h, $c1
	ldh a, [$da]
	ld l, a
	inc l
	ld a, [hl]
	bit 7, a
	jp nz, Jump_001_4e7a

	ld b, a
	ld a, [wcfab]
	bit 0, a
	jp nz, Jump_001_4e6e

	ld a, b
	cp $02
	jp z, Jump_001_4e52

	cp $03
	jp z, Jump_001_4df9

	ld a, [wcfac]
	and a
	ret nz

	call Call_001_4eb8
	ld h, $c2
	ldh a, [$da]
	add $06
	ld l, a
	ld a, [hl]
	inc a
	jr z, jr_001_4d54

	inc a
	jr z, jr_001_4d54

	dec a
	ld [hl], a
	dec a
	push hl
	ld hl, wcf0a
	dec [hl]
	pop hl
	ld de, wcc5b
	call Call_001_502c
	cp $e0
	jp z, Jump_001_4dc3

	cp $ff
	jr nz, jr_001_4d46

	ld [hl], a
	ld hl, wd6af
	res 0, [hl]
	xor a
	ld [wcd38], a
	ld [wcd3a], a
	ret


jr_001_4d46:
	cp $fe
	jr nz, jr_001_4d5a

	ld [hl], $01
	ld de, wcc5b
	call Call_001_502c
	jr jr_001_4d5a

jr_001_4d54:
	call Call_001_5004
	call $3e8c

jr_001_4d5a:
	ld b, a
	ld a, [wcf0f]
	cp $d0
	jr z, jr_001_4d7a

	cp $d1
	jr z, jr_001_4d91

	cp $d2
	jr z, jr_001_4da8

	cp $d3
	jr z, jr_001_4db9

	ld a, b
	cp $40
	jr nc, jr_001_4d86

	ld a, [wcf0f]
	cp $02
	jr z, jr_001_4da8

jr_001_4d7a:
	ld de, $0028
	add hl, de
	ld de, $0100
	ld bc, $0400
	jr jr_001_4dc6

jr_001_4d86:
	cp $80
	jr nc, jr_001_4d9d

	ld a, [wcf0f]
	cp $02
	jr z, jr_001_4db9

jr_001_4d91:
	ld de, $ffd8
	add hl, de
	ld de, $ff00
	ld bc, $0804
	jr jr_001_4dc6

jr_001_4d9d:
	cp $c0
	jr nc, jr_001_4db2

	ld a, [wcf0f]
	cp $01
	jr z, jr_001_4d91

jr_001_4da8:
	dec hl
	dec hl
	ld de, $00ff
	ld bc, $0208
	jr jr_001_4dc6

jr_001_4db2:
	ld a, [wcf0f]
	cp $01
	jr z, jr_001_4d7a

jr_001_4db9:
	inc hl
	inc hl
	ld de, $0001
	ld bc, $010c
	jr jr_001_4dc6

Jump_001_4dc3:
	ld de, $0000

jr_001_4dc6:
	push hl
	ld h, $c1
	ldh a, [$da]
	add $09
	ld l, a
	ld [hl], c
	ldh a, [$da]
	add $03
	ld l, a
	ld [hl], d
	inc l
	inc l
	ld [hl], e
	pop hl
	push de
	ld c, [hl]
	call Call_001_4f69
	pop de
	ret c

	ld h, $c2
	ldh a, [$da]
	add $04
	ld l, a
	ld a, [hl]
	add d
	ld [hli], a
	ld a, [hl]
	add e
	ld [hl], a
	ldh a, [$da]
	ld l, a
	ld [hl], $10
	dec h
	inc l
	ld [hl], $03
	jp Jump_001_4f52


Jump_001_4df9:
	ldh a, [$da]
	add $07
	ld l, a
	ld a, [hl]
	inc a
	ld [hl], a
	cp $04
	jr nz, jr_001_4e0d

	xor a
	ld [hl], a
	inc l
	ld a, [hl]
	inc a
	and $03
	ld [hl], a

jr_001_4e0d:
	ldh a, [$da]
	add $03
	ld l, a
	ld a, [hli]
	ld b, a
	ld a, [hl]
	add b
	ld [hli], a
	ld a, [hli]
	ld b, a
	ld a, [hl]
	add b
	ld [hl], a
	ldh a, [$da]
	ld l, a
	inc h
	ld a, [hl]
	dec a
	ld [hl], a
	ret nz

	ld a, $06
	add l
	ld l, a
	ld a, [hl]
	cp $fe
	jr nc, jr_001_4e35

	ldh a, [$da]
	inc a
	ld l, a
	dec h
	ld [hl], $01
	ret


jr_001_4e35:
	call $3e8c
	ldh a, [$da]
	add $08
	ld l, a
	ldh a, [$d3]
	and $7f
	ld [hl], a
	dec h
	ldh a, [$da]
	inc a
	ld l, a
	ld [hl], $02
	inc l
	inc l
	xor a
	ld b, [hl]
	ld [hli], a
	inc l
	ld c, [hl]
	ld [hl], a
	ret


Jump_001_4e52:
	ld h, $c2
	ldh a, [$da]
	add $06
	ld l, a
	ld a, [hl]
	inc l
	inc l
	cp $fe
	jr nc, jr_001_4e64

	ld [hl], $00
	jr jr_001_4e67

jr_001_4e64:
	dec [hl]
	jr nz, jr_001_4e6e

jr_001_4e67:
	dec h
	ldh a, [$da]
	inc a
	ld l, a
	ld [hl], $01

Jump_001_4e6e:
jr_001_4e6e:
	ld h, $c1
	ldh a, [$da]
	add $08
	ld l, a
	ld [hl], $00
	jp Jump_001_4f52


Jump_001_4e7a:
	ld a, [wd6ac]
	bit 5, a
	jr nz, jr_001_4e6e

	res 7, [hl]
	ld a, [wd4a9]
	bit 3, a
	jr z, jr_001_4e8e

	ld c, $00
	jr jr_001_4ea0

jr_001_4e8e:
	bit 2, a
	jr z, jr_001_4e96

	ld c, $04
	jr jr_001_4ea0

jr_001_4e96:
	bit 1, a
	jr z, jr_001_4e9e

	ld c, $0c
	jr jr_001_4ea0

jr_001_4e9e:
	ld c, $08

jr_001_4ea0:
	ldh a, [$da]
	add $09
	ld l, a
	ld [hl], c
	jr jr_001_4e6e

Jump_001_4ea8:
	ld [hl], $01
	inc l
	ld [hl], $ff
	inc h
	ldh a, [$da]
	add $02
	ld l, a
	ld a, $08
	ld [hli], a
	ld [hl], a
	ret


Call_001_4eb8:
	ld h, $c2
	ldh a, [$da]
	add $04
	ld l, a
	ld a, [wd2e0]
	ld b, a
	ld a, [hl]
	sub b
	swap a
	sub $04
	dec h
	ld [hli], a
	inc h
	ld a, [wd2e1]
	ld b, a
	ld a, [hli]
	sub b
	swap a
	dec h
	ld [hl], a
	ret


Call_001_4ed7:
	ld a, $12
	call $3e9d
	ldh a, [$e5]
	and a
	jp nz, Jump_001_4f29

	ld h, $c2
	ldh a, [$da]
	add $06
	ld l, a
	ld a, [hl]
	cp $fe
	jr c, jr_001_4f10

	ldh a, [$da]
	add $04
	ld l, a
	ld b, [hl]
	ld a, [wd2e0]
	cp b
	jr z, jr_001_4f01

	jr nc, jr_001_4f29

	add $08
	cp b
	jr c, jr_001_4f29

jr_001_4f01:
	inc l
	ld b, [hl]
	ld a, [wd2e1]
	cp b
	jr z, jr_001_4f10

	jr nc, jr_001_4f29

	add $09
	cp b
	jr c, jr_001_4f29

jr_001_4f10:
	call Call_001_5004
	ld d, $60
	ld a, [hli]
	cp d
	jr nc, jr_001_4f29

	ld a, [hld]
	cp d
	jr nc, jr_001_4f29

	ld bc, $ffec
	add hl, bc
	ld a, [hli]
	cp d
	jr nc, jr_001_4f29

	ld a, [hl]
	cp d
	jr c, jr_001_4f35

Jump_001_4f29:
jr_001_4f29:
	ld h, $c1
	ldh a, [$da]
	add $02
	ld l, a
	ld [hl], $ff
	scf
	jr jr_001_4f51

jr_001_4f35:
	ld c, a
	ld a, [wcfac]
	and a
	jr nz, jr_001_4f51

	call Call_001_4f52
	inc h
	ldh a, [$da]
	add $07
	ld l, a
	ld a, [wd4b4]
	cp c
	ld a, $00
	jr nz, jr_001_4f4f

	ld a, $80

jr_001_4f4f:
	ld [hl], a
	and a

jr_001_4f51:
	ret


Call_001_4f52:
Jump_001_4f52:
	ld h, $c1
	ldh a, [$da]
	add $08
	ld l, a
	ld a, [hli]
	ld b, a
	ld a, [hl]
	add b
	ld b, a
	ldh a, [$93]
	add b
	ld b, a
	ldh a, [$da]
	add $02
	ld l, a
	ld [hl], b
	ret


Call_001_4f69:
	ld h, $c2
	ldh a, [$da]
	add $06
	ld l, a
	ld a, [hl]
	cp $fe
	jr nc, jr_001_4f77

	and a
	ret


jr_001_4f77:
	ld a, [wd4af]
	ld l, a
	ld a, [wd4b0]
	ld h, a

jr_001_4f7f:
	ld a, [hli]
	cp $ff
	jr z, jr_001_4fe6

	cp c
	jr nz, jr_001_4f7f

	ld h, $c2
	ldh a, [$da]
	add $06
	ld l, a
	ld a, [hl]
	inc a
	jr z, jr_001_4fe6

	ld h, $c1
	ldh a, [$da]
	add $04
	ld l, a
	ld a, [hli]
	add $04
	add d
	cp $80
	jr nc, jr_001_4fe6

	inc l
	ld a, [hl]
	add e
	cp $90
	jr nc, jr_001_4fe6

	push de
	push bc
	call Call_001_4a58
	pop bc
	pop de
	ld h, $c1
	ldh a, [$da]
	add $0c
	ld l, a
	ld a, [hl]
	and b
	jr nz, jr_001_4fe6

	ld h, $c2
	ldh a, [$da]
	add $02
	ld l, a
	ld a, [hli]
	bit 7, d
	jr nz, jr_001_4fcd

	add d
	cp $05
	jr c, jr_001_4fe6

	jr jr_001_4fd1

jr_001_4fcd:
	sub $01
	jr c, jr_001_4fe6

jr_001_4fd1:
	ld d, a
	ld a, [hl]
	bit 7, e
	jr nz, jr_001_4fde

	add e
	cp $05
	jr c, jr_001_4fe6

	jr jr_001_4fe2

jr_001_4fde:
	sub $01
	jr c, jr_001_4fe6

jr_001_4fe2:
	ld [hld], a
	ld [hl], d
	and a
	ret


jr_001_4fe6:
	ld h, $c1
	ldh a, [$da]
	inc a
	ld l, a
	ld [hl], $02
	inc l
	inc l
	xor a
	ld [hli], a
	inc l
	ld [hl], a
	inc h
	ldh a, [$da]
	add $08
	ld l, a
	call $3e8c
	ldh a, [$d3]
	and $7f
	ld [hl], a
	scf
	ret


Call_001_5004:
	ld h, $c1
	ldh a, [$da]
	add $04
	ld l, a
	ld a, [hli]
	add $04
	and $f0
	srl a
	ld c, a
	ld b, $00
	inc l
	ld a, [hl]
	srl a
	srl a
	srl a
	add $14
	ld d, $00
	ld e, a
	ld hl, wc3a0
	add hl, bc
	add hl, bc
	add hl, bc
	add hl, bc
	add hl, bc
	add hl, de
	ret


Call_001_502c:
	add e
	ld e, a
	jr nc, jr_001_5031

	inc d

jr_001_5031:
	ld a, [de]
	ret


Jump_001_5033:
	ld a, [wd6af]
	bit 7, a
	ret z

	ld hl, wd6ad

Call_001_503c:
	bit 7, [hl]
	set 7, [hl]
	jp z, Jump_001_50a3

	ld hl, wcc97
	ld a, [wcd37]
	add l
	ld l, a
	jr nc, jr_001_504e

	inc h

jr_001_504e:
	ld a, [hl]
	cp $40
	jr nz, jr_001_505c

	call Call_001_50af
	ld c, $04
	ld a, $fe
	jr jr_001_5086

jr_001_505c:
	cp $00
	jr nz, jr_001_5069

	call Call_001_50af
	ld c, $00
	ld a, $02
	jr jr_001_5086

jr_001_5069:
	cp $80
	jr nz, jr_001_5076

	call Call_001_50b4
	ld c, $08
	ld a, $fe
	jr jr_001_5086

jr_001_5076:
	cp $c0
	jr nz, jr_001_5083

	call Call_001_50b4
	ld c, $0c

Call_001_507f:
Jump_001_507f:
	ld a, $02
	jr jr_001_5086

jr_001_5083:
	cp $ff
	ret


jr_001_5086:
	ld b, a
	ld a, [hl]
	add b
	ld [hl], a
	ldh a, [$da]
	add $09
	ld l, a
	ld a, c
	ld [hl], a
	call Call_001_50c0
	ld hl, wcf13
	dec [hl]
	ret nz

	ld a, $08
	ld [wcf13], a
	ld hl, wcd37
	inc [hl]
	ret


Jump_001_50a3:
	xor a
	ld [wcd37], a
	ld a, $08
	ld [wcf13], a
	jp Jump_001_50c0


Call_001_50af:
	ld a, $04
	ld b, a

Jump_001_50b2:
	jr jr_001_50b7

Call_001_50b4:
	ld a, $06
	ld b, a

jr_001_50b7:
	ld hl, $c100
	ldh a, [$da]
	add l
	add b
	ld l, a
	ret


Call_001_50c0:
Jump_001_50c0:
	ld hl, $c200
	ldh a, [$da]
	add $0e
	ld l, a
	ld a, [hl]
	dec a
	swap a
	ld b, a
	ld hl, $c100
	ldh a, [$da]
	add $09
	ld l, a
	ld a, [hl]
	cp $00
	jr z, jr_001_50e7

	cp $04
	jr z, jr_001_50e7

	cp $08
	jr z, jr_001_50e7

	cp $0c
	jr z, jr_001_50e7

Jump_001_50e6:
	ret


jr_001_50e7:
	add b
	ld b, a
	ldh [$e9], a
	call Call_001_50fe
	ld hl, $c100
	ldh a, [$da]
	add $02
	ld l, a
	ldh a, [$e9]
	ld b, a
	ldh a, [$ea]
	add b
	ld [hl], a
	ret


Call_001_50fe:
	ldh a, [$da]
	add $07
	ld l, a
	ld a, [hl]
	inc a
	ld [hl], a
	cp $04
	ret nz

	xor a
	ld [hl], a
	inc l
	ld a, [hl]
	inc a
	and $03
	ld [hl], a
	ldh [$ea], a
	ret


Call_001_5114:
	ld c, $50
	call $3781
	call $03bf
	call $0ebd
	call $36ca
	call $370a
	call Call_001_5911
	ld hl, wc443
	ld b, $02
	ld c, $0c
	call Call_001_58de
	ld hl, wc46c
	ld de, $5367
	call $0405
	xor a
	ld hl, wd051
	ld [hli], a
	ld [wcce0], a
	ld [hl], $50

Jump_001_5145:
	ld hl, wd117
	ld a, $fd
	ld b, $06

jr_001_514c:
	ld [hli], a
	dec b
	jr nz, jr_001_514c

	ld hl, wd106
	ld a, $fd
	ld b, $07

jr_001_5157:
	ld [hli], a
	dec b
	jr nz, jr_001_5157

	ld b, $0a

jr_001_515d:
	call $3e8c
	cp $fd
	jr nc, jr_001_515d

	ld [hli], a
	dec b
	jr nz, jr_001_515d

	ld hl, wc508
	ld a, $fd
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld b, $c8
	xor a

jr_001_5173:
	ld [hli], a
	dec b
	jr nz, jr_001_5173

	ld hl, wd806
	ld bc, $013b

jr_001_517d:
	xor a
	ld [hli], a
	dec bc
	ld a, b
	or c
	jr nz, jr_001_517d

	ld hl, wd12a
	ld de, wc512
	ld bc, $0000

jr_001_518d:
	inc c
	ld a, c
	cp $fd
	jr z, jr_001_51a9

	ld a, b
	dec a
	jr nz, jr_001_519c

	ld a, c
	cp $0d
	jr z, jr_001_51b2

jr_001_519c:
	inc hl
	ld a, [hl]
	cp $fe
	jr nz, jr_001_518d

	ld a, c
	ld [de], a
	inc de
	ld [hl], $ff
	jr jr_001_518d

jr_001_51a9:
	ld a, $ff
	ld [de], a
	inc de
	ld bc, $0100
	jr jr_001_518d

jr_001_51b2:
	ld a, $ff
	ld [de], a
	xor a
	call $0c66
	ldh a, [$aa]
	cp $02
	jr nz, jr_001_51d7

	call $3e07
	ld a, [wcce0]
	ldh [$ac], a
	ld a, $81
	ldh [rSC], a
	call $0b31
	ld a, [wcce0]
	ldh [$ac], a
	ld a, $81
	ldh [rSC], a

jr_001_51d7:
	call $3e07
	ld a, $08
	ldh [rIE], a
	ld hl, wd106
	ld de, wcd7c
	ld bc, $0011
	call $0bf1
	ld a, $fe
	ld [de], a
	ld hl, wd117
	ld de, wd812
	ld bc, $0167
	call $0bf1
	ld a, $fe
	ld [de], a
	ld hl, wc508
	ld de, wc5d0
	ld bc, $00c8
	call $0bf1
	ld a, $0d
	ldh [rIE], a
	ld a, $ff
	call $0e45
	ldh a, [$aa]
	cp $02
	jr z, jr_001_5236

	ld hl, wcd7c

jr_001_521a:
	ld a, [hli]
	and a
	jr z, jr_001_521a

	cp $fd
	jr z, jr_001_521a

	cp $fe
	jr z, jr_001_521a

	dec hl
	ld de, wd10d
	ld c, $0a

jr_001_522c:
	ld a, [hli]
	cp $fe
	jr z, jr_001_522c

	ld [de], a
	inc de
	dec c
	jr nz, jr_001_522c

jr_001_5236:
	ld hl, wd815

jr_001_5239:
	ld a, [hli]
	and a
	jr z, jr_001_5239

	cp $fd
	jr z, jr_001_5239

	cp $fe
	jr z, jr_001_5239

	dec hl
	ld de, wd806
	ld c, $06

jr_001_524b:
	ld a, [hli]
	cp $fe
	jr z, jr_001_524b

	ld [de], a
	inc de
	dec c
	jr nz, jr_001_524b

	ld de, wd81b
	ld bc, $0158

jr_001_525b:
	ld a, [hli]
	cp $fe
	jr z, jr_001_525b

	ld [de], a
	inc de
	dec bc
	ld a, b
	or c
	jr nz, jr_001_525b

	ld de, wc508
	ld hl, wd12b
	ld c, $02

jr_001_526f:
	ld a, [de]
	inc de
	and a
	jr z, jr_001_526f

	cp $fd
	jr z, jr_001_526f

	cp $fe
	jr z, jr_001_526f

	cp $ff
	jr z, jr_001_528e

	push hl
	push bc
	ld b, $00
	dec a
	ld c, a
	add hl, bc
	ld a, $fe
	ld [hl], a
	pop bc
	pop hl
	jr jr_001_526f

jr_001_528e:
	ld hl, wd227
	dec c
	jr nz, jr_001_526f

	ld de, wc5d0
	ld hl, wd823
	ld c, $02

jr_001_529c:
	ld a, [de]
	inc de
	and a
	jr z, jr_001_529c

	cp $fd
	jr z, jr_001_529c

	cp $fe
	jr z, jr_001_529c

	cp $ff
	jr z, jr_001_52bb

	push hl
	push bc
	ld b, $00
	dec a
	ld c, a
	add hl, bc
	ld a, $fe
	ld [hl], a
	pop bc
	pop hl
	jr jr_001_529c

jr_001_52bb:
	ld hl, wd91f
	dec c
	jr nz, jr_001_529c

	ld a, [wd11d]
	cp $60
	jr nz, jr_001_52cd

	ld de, $535f
	jr jr_001_52d7

jr_001_52cd:
	ld a, [wd806]
	cp $60
	jr nz, jr_001_52e2

	ld de, $5363

jr_001_52d7:
	call $386e
	ld hl, $5335
	call $3c79

jr_001_52e0:
	jr jr_001_52e0

jr_001_52e2:
	ld a, $2b
	ld [wcf74], a
	ld a, $d9
	ld [wcf75], a
	xor a
	ld [wcc38], a
	ld a, $ff
	call $0e45
	ldh a, [$aa]
	cp $02
	ld c, $42
	call z, $3781
	ld a, [wd0f0]
	cp $03
	ld a, $32
	ld [wd0f0], a
	jr nz, jr_001_532c

	ld a, $04
	ld [wd0f0], a
	ld a, $e1
	ld [wd036], a
	call $03bf
	call $3e07
	ld hl, wd2d4
	res 7, [hl]
	ld a, $2c
	call $3e9d
	ld a, $07
	call $3e9d
	jp Jump_001_559f


jr_001_532c:
	ld c, $1f
	ld a, $d9
	call $0e35
	jr jr_001_5374

	ld bc, wcf45
	nop
	ret


	ld a, a
	ld [de], a
	db $e3
	adc a
	ld h, $4f
	cp d
	call c, $c3da
	or d
	rst $08
	cp l
	rst $20
	ld c, e
	inc sp
	sbc $29
	sbc $dd
	ld a, a
	or a
	rst $18
	jp wd44c


	ret c

	push bc
	or l
	cp h
	jp $30b8


	cp e
	or d
	add sp, $57
	inc l
	inc a
	sbc $50
	or c
	or d
	jp $c250


	or e
	cp h
	sbc $2c
	pop hl
	sbc $3b
	pop bc
	pop hl
	or e
	rst $20
	ld d, b

Jump_001_5374:
jr_001_5374:
	ld hl, $5885
	ld b, $00
	ld a, [wcc38]
	cp $ff
	jp z, Jump_001_4794

	add a
	ld c, a
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl


	call $03bf
	call Call_001_5911
	call Call_001_5616
	call Call_001_55c4
	xor a
	ld hl, wcc3d
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hl], a
	ld [wcc37], a
	ld [wcc26], a
	ld [wcc2a], a
	ld [wcc34], a
	inc a
	ld [wcc42], a
	jp Jump_001_5419


Jump_001_53af:
	xor a
	ld [wcc37], a
	inc a
	ld [wcc49], a
	ld a, $a1
	ld [wcc29], a
	ld a, [wd81b]
	ld [wcc28], a
	ld a, $03
	ld [wcc24], a
	ld a, $0c
	ld [wcc25], a

Jump_001_53cc:
	call $3b08
	and a
	jp z, Jump_001_5485

	bit 0, a
	jr z, jr_001_53ed

	ld a, $01
	ld [wd0e0], a
	ld hl, $5ead
	ld b, $0e
	call $3620
	ld hl, wd823
	call Call_001_55fa
	jp Jump_001_5485


jr_001_53ed:
	bit 5, a
	jr z, jr_001_5411

	xor a
	ld [wcc49], a
	ld a, [wcc30]
	ld l, a
	ld a, [wcc31]
	ld h, a
	ld a, [wcc27]
	ld [hl], a
	ld a, [wcc26]
	ld b, a
	ld a, [wd123]
	dec a
	cp b
	jr nc, jr_001_5419

	ld [wcc26], a
	jr jr_001_5419

jr_001_5411:
	bit 7, a
	jp z, Jump_001_5485

	jp Jump_001_5550


Jump_001_5419:
jr_001_5419:
	xor a
	ld [wcc49], a
	ld [wcc37], a
	ld a, $91
	ld [wcc29], a
	ld a, [wd123]
	ld [wcc28], a
	ld a, $03
	ld [wcc24], a
	ld a, $02
	ld [wcc25], a

Jump_001_5435:
	call $3b08
	and a
	jr nz, jr_001_543e

	jp Jump_001_5485


jr_001_543e:
	bit 0, a
	jr z, jr_001_5458

	jp Jump_001_548f


	ld a, $04
	ld [wd0e0], a
	ld hl, $5ead
	ld b, $0e
	call $3620
	call Call_001_55fa
	jp Jump_001_5485


jr_001_5458:
	bit 4, a
	jr z, jr_001_547e

	ld a, $01
	ld [wcc49], a
	ld a, [wcc30]
	ld l, a
	ld a, [wcc31]
	ld h, a
	ld a, [wcc27]
	ld [hl], a
	ld a, [wcc26]
	ld b, a
	ld a, [wd81b]
	dec a
	cp b
	jr nc, jr_001_547b

	ld [wcc26], a

jr_001_547b:
	jp Jump_001_53af


jr_001_547e:
	bit 7, a
	jr z, jr_001_5485

	jp Jump_001_5550


Jump_001_5485:
jr_001_5485:
	ld a, [wcc49]
	and a
	jp z, Jump_001_5435

	jp Jump_001_53cc


Jump_001_548f:
	call $3761
	call $3c1c
	ld a, [wcc26]
	push af
	ld hl, wc4b8
	ld b, $02
	ld c, $12
	call Call_001_58de
	ld hl, wc4e2
	ld de, $553e
	call $0405
	xor a
	ld [wcc26], a
	ld [wcc2a], a
	ld [wcc34], a
	ld [wcc28], a
	ld a, $10
	ld [wcc24], a

jr_001_54be:
	ld a, $7f
	ld [wc4eb], a
	ld a, $13
	ld [wcc29], a
	ld a, $01
	ld [wcc25], a
	call $3b08
	bit 4, a
	jr nz, jr_001_54e2

	bit 1, a
	jr z, jr_001_54fe

jr_001_54d8:
	pop af
	ld [wcc26], a
	call $376d
	jp Jump_001_5419


jr_001_54e2:
	ld a, $7f
	ld [wc4e1], a
	ld a, $23
	ld [wcc29], a
	ld a, $0b
	ld [wcc25], a
	call $3b08
	bit 5, a
	jr nz, jr_001_54be

	bit 1, a
	jr nz, jr_001_54d8

	jr jr_001_5518

jr_001_54fe:
	pop af
	ld [wcc26], a
	ld a, $04
	ld [wd0e0], a
	ld hl, $5ead
	ld b, $0e

jr_001_550c:
	call $3620
	call Call_001_55fa
	call $376d
	jp Jump_001_5419


jr_001_5518:
	call $3c1c
	pop af
	ld [wcc26], a
	ld [wcd3d], a
	ld [wcc42], a
	call $0c55
	ld a, [wcc3d]
	cp $0f
	jp z, Jump_001_5374

	ld [wcd3e], a
	call Call_001_55eb
	ld a, $01
	ld [wcc38], a
	jp Jump_001_5374


	adc h
	sub d
	add c
	adc a
	adc h
	db $dd
	ret nc

	reti


	ld a, a
	ld a, a
	cp d
	or e
	or [hl]
	sbc $c6
	jr nc, jr_001_550c

	ld d, b

Jump_001_5550:
	ld a, [wcc26]
	ld b, a
	ld a, [wcc28]
	cp b
	jp nz, Jump_001_5485

	ld a, [wcc30]
	ld l, a
	ld a, [wcc31]
	ld h, a
	ld a, $7f
	ld [hl], a

jr_001_5566:
	ld a, $ed
	ld [wc4e1], a

jr_001_556b:
	call $3879
	ld a, [$ffb5]
	and a
	jr z, jr_001_556b

	bit 0, a
	jr nz, jr_001_558b

	bit 6, a
	jr z, jr_001_556b

	ld a, $7f
	ld [wc4e1], a
	ld a, [wd123]
	dec a
	ld [wcc26], a
	jp Jump_001_5419


jr_001_558b:
	ld a, $ec
	ld [wc4e1], a
	ld a, $0f
	ld [wcc42], a
	call $0c55
	ld a, [wcc3d]
	cp $0f
	jr nz, jr_001_5566

Jump_001_559f:
	call $3e04
	ld hl, wcfab
	ld a, [hl]
	push af
	push hl
	res 0, [hl]
	xor a
	ld [wd6ac], a
	dec a
	ld [wd3ae], a
	call $2c52
	ld b, $03
	ld hl, $497b
	call $3620
	pop hl
	pop af
	ld [hl], a
	call $0b78
	ret


Call_001_55c4:
Jump_001_55c4:
	ld hl, wc4d7
	ld a, $7e
	ld bc, $0031
	call $372a
	ld hl, wc4cc
	ld b, $01
	ld c, $09
	call Call_001_58de
	ld hl, wc4e2
	ld de, $55e2
	jp $0405


	cp d
	or e
	or [hl]
	sbc $c1
	pop hl
	or e
	cp h
	ld d, b

Call_001_55eb:
	ld a, [wcc3d]
	ld hl, wc3e8
	ld bc, $0028
	call $3ad1
	ld [hl], $ec
	ret


Call_001_55fa:
	ld a, [wcc26]
	ld [wcf79], a
	ld a, $36
	call $3e9d
	ld a, $37
	call $3e9d
	call $3e0c
	call Call_001_5911
	call Call_001_5616
	jp Jump_001_55c4


Call_001_5616:
	ld hl, wc3b4
	ld b, $0c
	ld c, $08
	call Call_001_58de
	ld hl, wc3be
	ld b, $0c
	ld c, $08
	call Call_001_58de
	ld hl, wc3b7
	ld de, wd11d
	call $0405
	ld hl, wc3c1
	ld de, wd806
	call $0405
	ld hl, wc3df
	ld de, wd124
	call Call_001_564b
	ld hl, wc3e9
	ld de, wd81c

Call_001_564b:
	ld c, $00

jr_001_564d:
	ld a, [de]
	cp $ff
	ret z

	ld [wd0e3], a
	push bc
	push hl
	push de
	push hl
	ld a, c
	ldh [$95], a
	call $1aab
	pop hl
	call $0405
	pop de
	inc de
	pop hl
	ld bc, $0028
	add hl, bc
	pop bc
	inc c
	jr jr_001_564d

	ld c, $64
	call $3781
	xor a
	ld [wcc43], a
	ld [wcc3e], a
	ld [wcc37], a
	ld [wcc34], a
	ld hl, wc490
	ld b, $04
	ld c, $12
	call Call_001_58de
	ld a, [wcd3d]
	ld hl, wd124
	ld c, a
	ld b, $00
	add hl, bc
	ld a, [hl]
	ld [wd0e3], a
	call $1aab
	ld hl, wcd68
	ld de, wcd3f
	ld bc, $0006
	call $01bb
	ld a, [wcd3e]
	ld hl, wd81c
	ld c, a
	ld b, $00
	add hl, bc
	ld a, [hl]
	ld [wd0e3], a
	call $1aab
	ld hl, $5849
	ld bc, wc4b9
	call $05f1
	call $3761
	ld hl, wc436
	ld bc, $080b
	ld a, $05
	ld [wd0f1], a
	ld a, $14
	ld [wd0ea], a
	call $3130
	call $376d
	ld a, [wcc26]
	and a
	jr z, jr_001_56fd

	ld a, $01
	ld [wcc42], a
	ld hl, wc490
	ld b, $04
	ld c, $12
	call Call_001_58de
	ld hl, wc4b9
	ld de, $586c
	call $0405
	call $0c55
	jp Jump_001_583d


jr_001_56fd:
	ld a, $02
	ld [wcc42], a
	call $0c55
	ld a, [wcc3d]
	dec a
	jr nz, jr_001_5721

	ld hl, wc490
	ld b, $04
	ld c, $12
	call Call_001_58de
	ld hl, wc4b9
	ld de, $586c
	call $0405
	jp Jump_001_583d


jr_001_5721:
	ld a, [wcd3d]
	ld hl, wd233
	call $3ac7
	ld de, wcd41
	ld bc, $0006
	call $01bb
	ld hl, wd12b
	ld a, [wcd3d]
	ld bc, $002c
	call $3ad1
	ld bc, $000c
	add hl, bc
	ld a, [hli]
	ld [wcd47], a
	ld a, [hl]
	ld [wcd48], a
	ld a, [wcd3e]
	ld hl, wd92b
	call $3ac7
	ld de, wcd49
	ld bc, $0006
	call $01bb
	ld hl, wd823
	ld a, [wcd3e]
	ld bc, $002c
	call $3ad1
	ld bc, $000c
	add hl, bc
	ld a, [hli]
	ld [wcd4f], a
	ld a, [hl]
	ld [wcd50], a
	ld a, [wcd3d]
	ld [wcf79], a
	ld hl, wd124
	ld b, $00
	ld c, a
	add hl, bc
	ld a, [hl]
	ld [wcd3d], a
	xor a
	ld [wcf7c], a
	call $3969
	ld a, [wcd3e]
	ld c, a
	ld [wcf79], a
	ld hl, wd81c
	ld d, $00
	ld e, a
	add hl, de
	ld a, [hl]
	ld [wcf78], a
	ld hl, wd823
	ld a, c
	ld bc, $002c
	call $3ad1
	ld de, wcf7f
	ld bc, $002c
	call $01bb
	call $3a9d
	ld a, [wd123]
	dec a
	ld [wcf79], a
	ld a, $01
	ld [wccd4], a
	ld a, [wcd3e]
	ld hl, wd81c
	ld b, $00
	ld c, a
	add hl, bc
	ld a, [hl]
	ld [wcd3e], a
	ld a, $0a
	ld [wcfae], a
	ld a, $02
	ld [wc0f0], a
	ld a, $e5
	ld [wc0ee], a
	call $0e45
	ld c, $64
	call $3781
	call $03bf
	call $370a
	xor a
	ld [wcc5b], a
	ld a, [$ffaa]
	cp $01
	jr z, jr_001_57fe

	ld a, $38
	call $3e9d
	jr jr_001_5803

jr_001_57fe:
	ld a, $2f
	call $3e9d

jr_001_5803:
	ld hl, $70a1
	ld b, $0e
	call $3620
	call $03bf
	call Call_001_5911
	call $0c55
	ld c, $28
	call $3781
	ld hl, wc490
	ld b, $04
	ld c, $12
	call Call_001_58de
	ld hl, wc4b9
	ld de, $5860
	call $0405
	ld a, $50
	call $3e9d
	ld c, $32
	call $3781
	xor a
	ld [wcc38], a
	jp Jump_001_5145


Jump_001_583d:
	ld c, $64
	call $3781
	xor a
	ld [wcc38], a
	jp Jump_001_5374


	ld bc, wcd3f
	nop
	ld a, a
	call nz, Call_001_507f
	ld bc, wcd68
	nop
	ld a, a
	db $dd
	ld c, a
	cp d
	or e
	or [hl]
	sbc $bc
	rst $08
	cp l
	ld d, a
	cp d
	or e
	or [hl]
	sbc $bc
	pop hl
	or e
	ret c

	ld [c], a
	or e
	rst $20
	ld d, b
	dec hl
	sbc $c8
	sbc $c5
	ld h, $d7
	ld c, [hl]
	cp d
	or e
	or [hl]
	sbc $ca
	ld a, a
	add [hl]
	xor l
	xor e
	adc l
	and [hl]
	cp e
	jp c, $bccf

	ret nz

	ld d, b
	adc b
	ld d, e
	ld l, l
	ld d, [hl]

	ld a, [wd0f0]
	cp $02
	jr z, jr_001_589f

	cp $03
	jr z, jr_001_589f

	cp $05
	ret nz

	ld a, $4d
	call $3e9d
	jp $09da


jr_001_589f:
	call Call_001_5114
	ld hl, $7670
	ld a, h
	ld [wd4ae], a
	ld a, l
	ld [wd4ad], a
	ld a, $1b
	ld [wd4aa], a
	ld hl, $0266
	ld a, h
	ld [wd4b0], a
	ld a, l
	ld [wd4af], a
	xor a
	ld [wd806], a
	inc a
	ld [wd0f0], a
	ld [$ffb5], a
	ld a, $0a
	ld [wcfae], a
	ld a, $02
	ld [wc0f0], a
	ld a, $ca
	ld [wc0ee], a
	jp $0e45


	ret


	call $3ec4

Call_001_58de:
	push hl
	ld a, $78
	ld [hli], a
	inc a
	call Call_001_590b
	inc a
	ld [hl], a
	pop hl
	ld de, $0014
	add hl, de

jr_001_58ed:
	push hl
	ld a, $7b
	ld [hli], a
	ld a, $7f
	call Call_001_590b
	ld [hl], $77
	pop hl
	ld de, $0014
	add hl, de
	dec b
	jr nz, jr_001_58ed

	ld a, $7c
	ld [hli], a
	ld a, $76
	call Call_001_590b
	ld [hl], $7d
	ret


Call_001_590b:
	ld d, c

jr_001_590c:
	ld [hli], a
	dec d
	jr nz, jr_001_590c

	ret


Call_001_5911:
	ld de, $7bf6
	ld hl, $9760
	ld bc, $0b09
	jp $02dd


Jump_001_591d:
	call Call_001_5a2a
	xor a
	ld [wd067], a
	inc a
	ld [wd065], a
	call Call_001_5ee2
	jr nc, jr_001_5932

	ld a, $52
	call $3e9d

Jump_001_5932:
jr_001_5932:
	ld c, $14
	call $3781
	xor a
	ld [wd0f0], a
	ld hl, wcc2b
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hl], a
	ld [wd059], a
	ld hl, wd6ad
	res 6, [hl]
	call $03bf
	call $3e1d
	call $36ea
	call $36ca
	ld hl, wd6af
	set 6, [hl]
	ld a, [wd065]
	cp $01
	jr z, jr_001_5977

	ld hl, wc3a0
	ld b, $06
	ld c, $0d
	call $03d2
	ld hl, wc3ca
	ld de, $5bd5
	call $0405
	jr jr_001_598a

jr_001_5977:
	ld hl, wc3a0
	ld b, $04
	ld c, $0d
	call $03d2
	ld hl, wc3ca
	ld de, $5bdf
	call $0405

jr_001_598a:
	ld hl, wd6af
	res 6, [hl]
	call $0ebd
	xor a
	ld [wcc26], a
	ld [wcc2a], a
	ld [wcc34], a
	inc a
	ld [wcc25], a
	inc a
	ld [wcc24], a
	ld a, $0b
	ld [wcc29], a
	ld a, [wd065]
	ld [wcc28], a
	call $3b08
	bit 1, a
	jp nz, Jump_001_4794

	ld c, $14
	call $3781
	ld a, [wcc26]
	ld b, a
	ld a, [wd065]
	cp $02
	jp z, Jump_001_59c9

	inc b

Jump_001_59c9:
	ld a, b
	and a
	jr z, jr_001_59dd

	cp $01
	jp z, Jump_001_5ba9

	call Call_001_5ce3
	ld a, $01
	ld [wd067], a
	jp Jump_001_5932


jr_001_59dd:
	call Call_001_5c07
	ld hl, wd0eb
	set 5, [hl]

jr_001_59e5:
	xor a
	ldh [$b3], a
	ldh [$b2], a
	ldh [$b4], a
	call $0153
	ldh a, [$b4]
	bit 0, a
	jr nz, jr_001_59fc

	bit 1, a
	jp nz, Jump_001_5932

	jr jr_001_59e5

jr_001_59fc:
	call $3e04
	call $03bf
	ld a, $04
	ld [wd4a9], a
	ld c, $0a
	call $3781
	ld a, [wd521]
	and a
	jp z, Jump_001_5bb6

	ld a, [wd2dd]
	cp $76
	jp nz, Jump_001_5bb6

	xor a
	ld [wd699], a
	ld hl, wd6b1
	set 2, [hl]
	call Call_001_6260
	jp Jump_001_5bb6


Call_001_5a2a:
	ld a, $01
	ld [wd2d7], a
	ld a, $03
	ld [wd2d4], a
	ret


	xor a
	ld [wd2d7], a
	ld hl, wd6ad
	set 6, [hl]
	ld hl, $6abb
	call $3c79
	call $3761
	ld hl, $5b6e
	call $3c79
	ld hl, wc470
	ld b, $06
	ld c, $0a
	call $03d2
	call $0ebd
	ld hl, wc49a
	ld de, $5bf4
	call $0405
	xor a
	ld [wcd37], a
	ld [wd6ac], a
	ld hl, wcc24
	ld a, $0c
	ld [hli], a
	ld a, $09
	ld [hli], a
	xor a
	ld [hli], a
	inc hl
	ld a, $02
	ld [hli], a
	inc a
	ld [hli], a
	xor a
	ld [hl], a

jr_001_5a7d:
	call $3b08
	and $03
	add a
	add a
	ld b, a
	ld a, [wcc26]
	add b
	add $d0
	ld [wcc42], a
	ld [wcc43], a

jr_001_5a91:
	call $0c2e
	ld a, [wcc3d]
	ld b, a
	and $f0
	cp $d0
	jr z, jr_001_5aa8

	ld a, [wcc3e]
	ld b, a
	and $f0
	cp $d0
	jr nz, jr_001_5a91

jr_001_5aa8:
	ld a, b
	and $0c
	jr nz, jr_001_5ab6

	ld a, [wcc42]
	and $0c
	jr z, jr_001_5a7d

	jr jr_001_5acc

jr_001_5ab6:
	ld a, [wcc42]
	and $0c
	jr z, jr_001_5ac3

	ldh a, [$aa]
	cp $02
	jr z, jr_001_5acc

jr_001_5ac3:
	ld a, b
	ld [wcc42], a
	and $03
	ld [wcc26], a

jr_001_5acc:
	ldh a, [$aa]
	cp $02
	jr nz, jr_001_5adc

	call $0b31
	call $0b31
	ld a, $81
	ldh [rSC], a

jr_001_5adc:
	ld b, $7f
	ld c, $7f
	ld d, $ec
	ld a, [wcc42]
	and $08
	jr nz, jr_001_5af7

	ld a, [wcc26]
	cp $02
	jr z, jr_001_5af7

	ld c, d
	ld d, b
	dec a
	jr z, jr_001_5af7

	ld b, c
	ld c, d

jr_001_5af7:
	ld a, b
	ld [wc499], a
	ld a, c
	ld [wc4c1], a
	ld a, d
	ld [wc4e9], a
	ld c, $28
	call $3781
	call $376d
	ld a, [wcc42]
	and $08
	jr nz, jr_001_5b58

	ld a, [wcc26]
	cp $02
	jr z, jr_001_5b58

	xor a
	ld [wd67f], a
	ld a, [wcc26]
	and a
	ld a, $f0
	jr nz, jr_001_5b27

	ld a, $ef

jr_001_5b27:
	ld [wd6ac], a
	ld hl, $5b7f
	call $3c79
	ld c, $32
	call $3781
	ld hl, wd6b1
	res 1, [hl]
	ld a, [wd059]
	ld [wd699], a
	call Call_001_6260
	ld c, $14
	call $3781
	xor a
	ld [wcc34], a
	ld [wcc42], a
	inc a
	ld [wd0f0], a
	ld [wcc47], a
	jr jr_001_5bb6

jr_001_5b58:
	xor a
	ld [wcc34], a
	call $3e07
	call Call_001_754c
	ld hl, $5b96
	call $3c79
	ld hl, wd6ad
	res 6, [hl]
	ret


	nop
	inc [hl]
	pop bc
	rst $10
	ret


	ld a, a
	call wc6d4
	ld c, a
	or d
	or a
	rst $08
	cp l
	or [hl]
	and $57
	nop
	cp a
	jp c, wca33

	ld a, a
	cp d
	jp c, wd8d6

	ld c, a
	ld a, [hli]
	or c
	sbc $c5
	or d
	ld a, a
	or d
	ret nz

	cp h
	rst $08
	cp l
	ld d, a
	nop
	jp nz, $bcb3

	sbc $ca
	ld a, a
	add [hl]
	xor l
	xor e
	adc l
	and [hl]
	ld a, a
	cp e
	jp c, $bccf

	ret nz

	ld d, a

Jump_001_5ba9:
	ld hl, wd6b1
	res 1, [hl]
	call Call_001_5f59
	ld c, $14
	call $3781

Jump_001_5bb6:
jr_001_5bb6:
	xor a
	ldh [$b3], a
	ldh [$b4], a
	ldh [$b5], a
	ld [wd6ac], a
	ld hl, wd6b1
	set 0, [hl]
	call $1377
	ld c, $14
	call $3781
	ld a, [wcc47]
	and a
	ret nz

	jp $1dc3


	db $c2, $32, $b7, $b6, $d7, $ca, $2c, $d2, $d9, $4e, $bb, $b2, $bc, $e2, $b6, $d7
	db $ca, $2c, $d2, $d9, $4e, $be, $df, $c3, $b2, $dd, $7f, $b6, $b4, $d9, $50

	sub e
	and a
	db $e3
	inc de
	adc l
	xor e
	adc a
	db $e3
	ld c, [hl]
	adc c
	xor b
	adc e
	add b
	sbc a
	ld c, [hl]
	call nc, wd9d2
	ld d, b

Call_001_5c07:
	xor a
	ldh [$ba], a
	ld hl, wc430
	ld b, $08
	ld c, $0d
	call $03d2
	ld hl, wc459
	ld de, $5cbc
	call $0405
	ld hl, wc461
	ld de, wd11d
	call $0405
	ld hl, wc48a
	call Call_001_5c81
	ld hl, wc4b1
	call Call_001_5c94
	ld hl, wc4d8
	call Call_001_5ca7
	ld a, $01
	ldh [$ba], a
	ld c, $1e
	jp $3781


	xor a
	ldh [$ba], a
	ld hl, wc3a5
	ld b, $08
	ld c, $0d
	call $03d2
	call $36ea
	call $0ebd
	ld hl, wc3ce
	ld de, $5cbc
	call $0405
	ld hl, wc3d5
	ld de, wd11d
	call $0405
	ld hl, wc3ff
	call Call_001_5c81
	ld hl, wc426
	call Call_001_5c94
	ld hl, wc44d
	call Call_001_5ca7
	ld a, $01
	ldh [$ba], a
	ld c, $1e
	jp $3781


Call_001_5c81:
	push hl
	ld hl, wd2d5
	ld b, $01
	call $1690
	pop hl
	ld de, wd0e3
	ld bc, $0102
	jp $3c8f


Call_001_5c94:
	push hl
	ld hl, wd27b
	ld b, $13
	call $1690
	pop hl
	ld de, wd0e3
	ld bc, $0103
	jp $3c8f


Call_001_5ca7:
	ld de, wd97d
	ld bc, $0103
	call $3c8f
	ld [hl], $6d
	inc hl
	ld de, wd97f
	ld bc, $8102
	jp $3c8f


	db $bc, $e1, $2c, $de, $ba, $b3, $4e, $d3, $df, $c3, $b2, $d9, $19, $ac, $0b, $7f
	db $7f, $7f, $7f, $ba, $4e, $54, $2d, $b6, $de, $7f, $7f, $7f, $7f, $cb, $b7, $4e
	db $42, $a7, $81, $2c, $b6, $de, $50

Call_001_5ce3:
	ld hl, wc3a0
	ld b, $03
	ld c, $12
	call $03d2
	ld hl, wc404
	ld b, $03
	ld c, $12
	call $03d2
	ld hl, wc468
	ld b, $03
	ld c, $12
	call $03d2
	ld hl, wc3b5
	ld de, $5e09
	call $0405
	ld hl, wc419
	ld de, $5e25
	call $0405
	ld hl, wc47d
	ld de, $5e44
	call $0405
	ld hl, wc4e2
	ld de, $5e5f
	call $0405
	xor a
	ld [wcc26], a
	ld [wcc2a], a
	inc a
	ld [wd2d7], a
	ld [wcd40], a
	ld a, $03
	ld [wcc24], a
	call Call_001_5e90
	ld a, [wcd3d]
	ld [wcc25], a
	ld a, $01
	ldh [$ba], a
	call $3e07

Jump_001_5d48:
jr_001_5d48:
	call $3bc6
	call Call_001_5e63

jr_001_5d4e:
	call $3879
	ldh a, [$b5]
	ld b, a
	and $fb
	jr z, jr_001_5d4e

	bit 1, b
	jr nz, jr_001_5d6b

	bit 3, b
	jr nz, jr_001_5d6b

	bit 0, b
	jr z, jr_001_5d7a

	ld a, [wcc24]
	cp $10
	jr nz, jr_001_5d48

jr_001_5d6b:
	ld a, $90
	call $0e45
	ret


Jump_001_5d71:
	ld [wcc25], a
	call $3c29
	jp Jump_001_5d48


jr_001_5d7a:
	ld a, [wcc24]
	bit 7, b
	jr nz, jr_001_5d99

	bit 6, b
	jr nz, jr_001_5db3

	cp $08
	jr z, jr_001_5df3

	cp $0d
	jr z, jr_001_5dfe

	cp $10
	jr z, jr_001_5d48

	bit 5, b
	jp nz, Jump_001_5dd9

	jp Jump_001_5de4


jr_001_5d99:
	cp $10
	ld b, $f3
	ld hl, wcd3d
	jr z, jr_001_5dcb

	ld b, $05
	cp $03
	inc hl
	jr z, jr_001_5dcb

	cp $08
	inc hl
	jr z, jr_001_5dcb

	ld b, $03
	inc hl
	jr jr_001_5dcb

jr_001_5db3:
	cp $08
	ld b, $fb
	ld hl, wcd3d
	jr z, jr_001_5dcb

	cp $0d
	inc hl
	jr z, jr_001_5dcb

	cp $10
	ld b, $fd
	inc hl
	jr z, jr_001_5dcb

	ld b, $0d
	inc hl

jr_001_5dcb:
	add b
	ld [wcc24], a
	ld a, [hl]
	ld [wcc25], a
	call $3c1c
	jp Jump_001_5d48


Jump_001_5dd9:
	ld a, [wcd3d]
	cp $01
	jr z, jr_001_5ded

	sub $07
	jr jr_001_5ded

Jump_001_5de4:
	ld a, [wcd3d]
	cp $0f
	jr z, jr_001_5ded

	add $07

jr_001_5ded:
	ld [wcd3d], a
	jp Jump_001_5d71


jr_001_5df3:
	ld a, [wcd3e]
	xor $0b
	ld [wcd3e], a
	jp Jump_001_5d71


jr_001_5dfe:
	ld a, [wcd3f]
	xor $0b
	ld [wcd3f], a
	jp Jump_001_5d71


	db $ca, $c5, $bc, $c9, $7f, $ca, $d4, $bb, $4e, $7f, $ca, $d4, $b2, $7f, $7f, $7f
	db $7f, $cc, $c2, $b3, $7f, $7f, $7f, $7f, $b5, $bf, $b2, $50, $be, $de, $c4, $b3
	db $7f, $80, $95, $a0, $e3, $8b, $af, $ab, $4e, $7f, $2c, $df, $b8, $d8, $7f, $d0
	db $d9, $7f, $7f, $c4, $3a, $bc, $c3, $7f, $d0, $d9, $50, $bc, $b1, $b2, $c9, $7f
	db $a6, $e3, $a6, $4e, $7f, $b2, $da, $b6, $b4, $8f, $81, $42, $7f, $7f, $b6, $c1
	db $c7, $b7, $8f, $81, $42, $50, $b5, $dc, $d8, $50

Call_001_5e63:
	ld hl, $5eda
	ld a, [wcd3d]
	ld c, a

jr_001_5e6a:
	ld a, [hli]
	cp c
	jr z, jr_001_5e71

	inc hl
	jr jr_001_5e6a

jr_001_5e71:
	ld a, [hl]
	ld d, a
	ld a, [wcd3e]
	dec a
	jr z, jr_001_5e7d

	set 7, d
	jr jr_001_5e7f

jr_001_5e7d:
	res 7, d

jr_001_5e7f:
	ld a, [wcd3f]
	dec a
	jr z, jr_001_5e89

	set 6, d
	jr jr_001_5e8b

jr_001_5e89:
	res 6, d

jr_001_5e8b:
	ld a, d
	ld [wd2d4], a
	ret


Call_001_5e90:
	ld hl, $5edb
	ld a, [wd2d4]
	ld c, a
	and $3f
	push bc
	ld de, $0002
	call $3ddb
	pop bc
	dec hl
	ld a, [hl]
	ld [wcd3d], a
	ld hl, wc3dc
	call Call_001_5ed3
	sla c
	ld a, $01
	jr nc, jr_001_5eb4

	ld a, $0a

jr_001_5eb4:
	ld [wcd3e], a
	ld hl, wc440
	call Call_001_5ed3
	sla c
	ld a, $01
	jr nc, jr_001_5ec5

	ld a, $0a

jr_001_5ec5:
	ld [wcd3f], a
	ld hl, wc4a4
	call Call_001_5ed3
	ld hl, wc4e0
	ld a, $01

Call_001_5ed3:
	ld e, a
	ld d, $00
	add hl, de
	ld [hl], $ec
	ret


	db $0f, $05, $08, $03

	ld bc, $0801
	rst $38

Call_001_5ee2:
	ld a, $0a
	ld [$0000], a
	ld a, $01
	ld [$6000], a
	ld [$4000], a
	ld b, $06
	ld hl, $a598

jr_001_5ef4:
	ld a, [hli]
	cp $50
	jr z, jr_001_5f05

	dec b
	jr nz, jr_001_5ef4

	xor a
	ld [$0000], a
	ld [$6000], a
	and a
	ret


jr_001_5f05:
	xor a
	ld [$0000], a
	ld [$6000], a
	scf
	ret


Call_001_5f0e:
	ld a, [wd2d7]
	push af
	ld a, [wd2d4]
	push af
	ld a, [wd6b1]
	push af
	ld hl, wd11d
	ld bc, $0dfb
	xor a
	call $372a
	ld hl, $c100
	ld bc, $0200
	xor a
	call $372a
	pop af
	ld [wd6b1], a
	pop af
	ld [wd2d4], a
	pop af
	ld [wd2d7], a
	ld a, [wd067]
	and a
	call z, Call_001_5a2a
	ld hl, $49e3
	ld de, wd11d
	ld bc, $0006
	call $01bb
	ld hl, $49e8
	ld de, wd2ce
	ld bc, $0006
	jp $01bb


Call_001_5f59:
	ld a, $ff
	call $0e45
	ld a, $02
	ld c, a
	ld a, $ef
	call $0e35
	call $03bf
	call $36ea
	call Call_001_5f0e
	ld a, $18
	call $3e9d
	ld hl, wd4b9
	ld a, $14
	ld [wcf78], a
	ld a, $01
	ld [wcf7d], a
	call $16e0
	ld a, [wd059]
	ld [wd699], a
	call Call_001_6260
	xor a
	ldh [$d7], a
	ld a, [wd6b1]
	bit 1, a
	jp nz, Jump_001_6000

	ld de, $615f
	ld bc, $1300
	call Call_001_6236
	call Call_001_6203
	ld hl, $6097
	call $3c79
	call $0b5a
	call $03bf
	ld a, $a7
	ld [wd092], a
	ld [wcf78], a
	call $2f2e
	ld hl, wc3f6
	call $2d7a
	call Call_001_621a
	ld hl, $60de
	call $3c79
	call $0b5a
	call $03bf
	ld de, $5941
	ld bc, $0400
	call Call_001_6236
	call Call_001_621a
	ld hl, $6163
	call $3c79
	call Call_001_68d9
	call $0b5a
	call $03bf
	ld de, $6049
	ld bc, $1300
	call Call_001_6236
	call Call_001_6203
	ld hl, $6180
	call $3c79
	call Call_001_692d

Jump_001_6000:
	call $0b5a
	call $03bf
	ld de, $5941
	ld bc, $0400
	call Call_001_6236
	call $0b78
	ld a, [wd6ac]
	and a
	jr nz, jr_001_601e

	ld hl, $61bd
	call $3c79

jr_001_601e:
	ldh a, [hLoadedROMBank]
	push af
	ld a, $9c
	call $0e45
	pop af
	ldh [hLoadedROMBank], a
	ld [$2000], a
	ld c, $04
	call $3781
	ld de, $4180
	ld hl, $8000
	ld bc, $050c
	call $02dd
	ld de, $5a4b
	ld bc, $0400
	call Call_001_6236
	ld c, $04
	call $3781
	ld de, $5aa5
	ld bc, $0400
	call Call_001_6236
	call $1377
	ldh a, [hLoadedROMBank]
	push af
	ld a, $02
	ld [wc0ef], a
	ld [wc0f0], a
	ld a, $0a
	ld [wcfae], a
	ld a, $ff
	ld [wc0ee], a
	call $0e45
	pop af
	ldh [hLoadedROMBank], a
	ld [$2000], a
	ld c, $14
	call $3781
	ld hl, wc40a
	ld b, $07
	ld c, $07
	call $0374
	call $36ea
	ld a, $01
	ld [wcfb2], a
	ld c, $32
	call $3781
	call $0b5a
	jp $03bf


	db $00, $ca, $2c, $d2, $cf, $bc, $c3, $e7, $4f, $43, $88, $ac, $93, $7f, $a1, $ab
	db $8c, $8f, $e3, $c9, $7f, $be, $b6, $b2, $cd, $55, $d6, $b3, $ba, $bf, $e7, $51
	db $dc, $c0, $bc, $c9, $7f, $c5, $cf, $b4, $ca, $7f, $84, $e3, $86, $13, $4f, $d0
	db $de, $c5, $b6, $d7, $ca, $7f, $54, $7f, $ca, $b6, $be, $c4, $55, $bc, $c0, $dc
	db $da, $c3, $7f, $b5, $d9, $d6, $58, $00, $ba, $c9, $7f, $be, $b6, $b2, $c6, $ca
	db $4f, $43, $88, $ac, $93, $7f, $a1, $ab, $8c, $8f, $e3, $c4, $7f, $d6, $3a, $da
	db $d9, $51, $b2, $b7, $d3, $c9, $7f, $c0, $c1, $26, $4f, $b2, $c0, $d9, $c4, $ba
	db $db, $c6, $7f, $bd, $de, $33, $b2, $d9, $e7, $50, $14, $00, $51, $bf, $c9, $7f
	db $54, $7f, $c4, $b2, $b3, $7f, $b2, $b7, $d3, $c9, $dd, $4f, $cb, $c4, $ca, $7f
	db $47, $ac, $93, $c6, $7f, $bc, $c0, $d8, $55, $bc, $e2, $b3, $3c, $c6, $7f, $c2
	db $b6, $df, $c0, $d8, $74, $74, $74, $51, $bf, $bc, $c3, $74, $74, $74, $51, $dc
	db $c0, $bc, $ca, $7f, $ba, $c9, $7f, $54, $c9, $4f, $b9, $de, $b7, $e1, $b3, $dd
	db $7f, $bc, $c3, $d9, $7f, $c4, $b2, $b3, $dc, $b9, $30, $58, $00, $33, $ca, $7f
	db $ca, $2c, $d2, $c6, $7f, $b7, $d0, $c9, $7f, $c5, $cf, $b4, $dd, $4f, $b5, $bc
	db $b4, $c3, $7f, $d3, $d7, $b5, $b3, $e7, $58, $00, $ba, $b2, $c2, $ca, $7f, $dc
	db $c0, $bc, $c9, $7f, $cf, $2a, $4f, $b7, $d0, $c9, $7f, $b5, $bb, $c5, $c5, $2c
	db $d0, $33, $b1, $d8, $55, $a5, $81, $19, $a6, $7f, $33, $b1, $d9, $51, $74, $74
	db $74, $b4, $e3, $c4, $e6, $4f, $c5, $cf, $b4, $ca, $7f, $c5, $de, $c3, $7f, $b2
	db $df, $c0, $b6, $c5, $e6, $58, $00, $52, $e7, $51, $b2, $d6, $b2, $d6, $7f, $ba
	db $da, $b6, $d7, $7f, $4f, $b7, $d0, $c9, $7f, $d3, $c9, $26, $c0, $d8, $c9, $7f
	db $ca, $2c, $cf, $d8, $30, $e7, $51, $d5, $d2, $c4, $7f, $3e, $b3, $b9, $de, $c4
	db $e7, $4f, $43, $88, $ac, $93, $7f, $a1, $ab, $8c, $8f, $e3, $c9, $7f, $be, $b6
	db $b2, $cd, $e7, $55, $a7, $ac, $91, $7f, $09, $e3, $e7, $57

Call_001_6203:
	ld hl, $6214
	ld b, $06

jr_001_6208:
	ld a, [hli]
	ldh [rBGP], a
	ld c, $0a
	call $3781
	dec b
	jr nz, jr_001_6208

	ret


	db $54, $a8, $fc, $f8, $f4, $e4

Call_001_621a:
	ld a, $77
	ldh [rWX], a
	call $0b31
	ld a, $e4
	ldh [rBGP], a

jr_001_6225:
	call $0b31
	ldh a, [rWX]
	sub $08
	cp $ff
	ret z

	ldh [rWX], a
	jr jr_001_6225

	call $3ec4

Call_001_6236:
	push bc
	ld a, b
	call $3735
	ld hl, $a188
	ld de, $a000
	ld bc, $0310
	call $01bb
	ld de, $9000
	call $30b9
	pop bc
	ld a, c
	and a
	ld hl, wc3c3
	jr nz, jr_001_6258

	ld hl, wc3f6

jr_001_6258:
	xor a
	ldh [$e1], a
	ld a, $01
	jp $3e9d


Call_001_6260:
	call Call_001_6291
	ld a, $19
	call $3e9d
	ld hl, wd6b1
	bit 2, [hl]
	res 2, [hl]
	jr z, jr_001_6276

	ld a, [wd699]
	jr jr_001_627f

jr_001_6276:
	bit 1, [hl]
	jr z, jr_001_627d

	call Call_001_6478

jr_001_627d:
	ld a, $00

jr_001_627f:
	ld b, a
	ld a, [wd6ac]
	and a
	jr nz, jr_001_6287

	ld a, b

jr_001_6287:
	ld hl, wd6b1
	bit 4, [hl]
	ret nz

	ld [wd2e4], a
	ret


Call_001_6291:
	ld a, [wd6ac]
	cp $ef
	jr nz, jr_001_62a6

	ld hl, $63ba
	ldh a, [$aa]
	cp $02
	jr z, jr_001_62c6

	ld hl, $63c2
	jr jr_001_62c6

jr_001_62a6:
	cp $f0
	jr nz, jr_001_62b8

	ld hl, $63ca
	ldh a, [$aa]
	cp $02
	jr z, jr_001_62c6

	ld hl, $63d2
	jr jr_001_62c6

jr_001_62b8:
	ld a, [wd6b1]
	bit 1, a
	jr nz, jr_001_62d8

	bit 2, a
	jr nz, jr_001_62d8

	ld hl, $63b2

jr_001_62c6:
	ld de, wd2dd
	ld c, $07

jr_001_62cb:
	ld a, [hli]
	ld [de], a
	inc de
	dec c
	jr nz, jr_001_62cb

	ld a, [hli]
	ld [wd2e6], a
	xor a
	jr jr_001_6345

jr_001_62d8:
	ld a, [wd2e4]
	ld hl, wd6b1
	bit 4, [hl]
	jr nz, jr_001_62ed

	bit 6, [hl]
	res 6, [hl]
	jr z, jr_001_6320

	ld a, [wd698]
	jr jr_001_6323

jr_001_62ed:
	ld hl, wd6ac
	res 4, [hl]
	ld a, [wd69c]
	ld b, a
	ld [wd2dd], a
	ld a, [wd69d]
	ld c, a
	ld hl, $6351
	ld de, $0000
	ld a, $06
	ld [wd0f4], a

jr_001_6308:
	ld a, [hli]
	cp b
	jr z, jr_001_630f

	inc hl
	jr jr_001_6313

jr_001_630f:
	ld a, [hli]
	cp c
	jr z, jr_001_631a

jr_001_6313:
	ld a, [wd0f4]
	add e
	ld e, a
	jr jr_001_6308

jr_001_631a:
	ld hl, $636a
	add hl, de
	jr jr_001_6336

jr_001_6320:
	ld a, [wd699]

jr_001_6323:
	ld b, a
	ld [wd2dd], a
	ld hl, $63da

jr_001_632a:
	ld a, [hli]
	inc hl
	cp b
	jr z, jr_001_6333

	inc hl
	inc hl
	jr jr_001_632a

jr_001_6333:
	ld a, [hli]
	ld h, [hl]
	ld l, a

jr_001_6336:
	ld de, wd2de
	ld c, $06

jr_001_633b:
	ld a, [hli]
	ld [de], a
	inc de
	dec c
	jr nz, jr_001_633b

	xor a
	ld [wd2e6], a

jr_001_6345:
	ld [wd461], a
	ld [wd462], a
	ld a, $ff
	ld [wd3ae], a
	ret


	sbc a
	ld bc, $029f
	and b
	ld bc, $02a0
	and c
	ld bc, $02a1
	and d
	ld bc, $02a2
	jp nz, $a502

	ld bc, $02a5
	sub $03
	rst $38
	ld b, [hl]
	rst $00
	rlca
	ld [de], a
	ld bc, $4800
	rst $00
	rlca
	rla
	ld bc, $4601
	rst $00
	rlca
	inc de
	ld bc, $4801
	rst $00
	rlca
	ld d, $01
	nop
	ld b, [hl]
	rst $00
	rlca
	ld [de], a
	ld bc, $4600
	rst $00
	rlca
	inc de
	ld bc, $9301
	rst $00
	ld c, $04
	nop
	nop
	sub e
	rst $00
	ld c, $05
	nop
	ld bc, wc7b1
	db $10
	ld d, $00
	nop
	sbc c
	rst $00
	ld c, $10
	nop
	nop
	sbc c
	rst $00
	ld c, $10
	nop
	nop
	sbc d
	rst $00
	ld c, $12
	nop
	nop

	db $26, $12, $c7, $06, $03, $00, $01, $04

	rst $28
	dec bc
	rst $00
	inc b
	inc bc
	nop
	ld bc, $ef15
	dec c
	rst $00
	inc b
	ld b, $00
	nop
	dec d
	ldh a, [$0b]
	rst $00
	inc b
	inc bc
	nop
	ld bc, $f015
	dec c
	rst $00

Call_001_63d5:
	inc b
	ld b, $00
	nop
	dec d

	db $00

	nop
	ld c, $64

	db $01

	nop

	db $14, $64

	ld [bc], a
	nop
	ld a, [de]
	ld h, h
	inc bc
	nop
	jr nz, jr_001_644e

	inc b
	nop
	ld h, $64
	dec b
	nop
	inc l
	ld h, h
	ld b, $00
	ld [hld], a
	ld h, h
	rlca
	nop
	jr c, jr_001_645e

	ld [$3e00], sp
	ld h, h
	add hl, bc
	nop
	ld b, h
	ld h, h
	ld a, [bc]
	nop
	ld c, d
	ld h, h
	rrca
	nop
	ld d, b
	ld h, h
	dec d
	nop
	ld d, [hl]
	ld h, h
	dec hl
	rst $00
	ld b, $05
	nop
	db $01

	db $60, $c8, $1a, $17, $00, $01

	ld e, e
	ret z

	ld a, [de]
	dec c
	nop
	ld bc, wc7f6
	ld [de], a
	inc de
	nop
	ld bc, wc72a
	ld b, $03
	nop
	ld bc, wc73c
	inc b
	dec bc
	nop
	ld bc, wc7b7
	ld a, [bc]
	add hl, hl
	nop
	ld bc, wc878
	inc e
	inc de
	nop
	ld bc, wc75e
	inc c
	dec bc
	nop
	ld bc, wc72d
	ld b, $09
	nop
	ld bc, wc88d
	ld e, $09

jr_001_644e:
	nop
	ld bc, wc7ba
	ld b, $0b
	nop
	ld bc, wc79e
	inc d
	dec bc
	nop
	ld bc, $7111

jr_001_645e:
	ld h, h

jr_001_645f:
	ld a, [de]
	cp $ff
	ret z

	ld [wcf78], a
	inc de
	ld a, [de]
	ld [wd0ec], a
	inc de
	call $3971
	jr jr_001_645f

	ld a, [bc]
	ld e, d
	ld l, h
	ld e, d
	ld bc, $ff05

Call_001_6478:
	ret


	call $3761
	call $3ec4
	push hl
	ld a, [wd034]
	dec a
	ld hl, wc3a1
	ld b, $04
	ld c, $0a
	call z, $0374
	ld a, [wcf78]
	ld [wd0e3], a
	call $1aab
	ld hl, $64e5
	call $3c79
	ld hl, wc43a
	ld bc, $080f
	ld a, $14
	ld [wd0ea], a
	call $3130
	pop hl
	ld a, [wcc26]
	and a
	jr nz, jr_001_64da

	ld a, [wcfb2]
	push af
	xor a
	ld [wcfb2], a
	push hl
	ld a, $02
	ld [wd05a], a
	call Call_001_6534
	ld a, [wd034]
	and a
	jr nz, jr_001_64cc

	call $3e38

jr_001_64cc:
	call $376d
	pop hl
	pop af
	ld [wcfb2], a
	ld a, [wcf45]
	cp $50
	ret nz

jr_001_64da:
	ld d, h
	ld e, l
	ld hl, wcd68
	ld bc, $0006
	jp $01bb


	db $01, $68, $cd, $00, $c6, $4f, $95, $ac, $87, $97, $e3, $9f, $dd, $7f, $c2, $b9
	db $cf, $bd, $b6, $e6, $57

	ld hl, wcee4
	xor a
	ld [wcfb2], a
	ld a, $02
	ld [wd05a], a
	call Call_001_6534
	call $3e04
	call $3dee
	call $0b3c
	ld a, [wcf45]
	cp $50
	jr z, jr_001_6532

	ld hl, wd257
	ld bc, $0006
	ld a, [wcf79]
	call $3ad1
	ld e, l
	ld d, h
	ld hl, wcee4
	ld bc, $0006
	call $01bb
	and a
	ret


jr_001_6532:
	scf
	ret


Call_001_6534:
	push hl
	ld hl, wd6af
	set 6, [hl]
	call $3e04
	call $03bf
	call $0ebd
	ld b, $08
	call $3e1f
	call $370a
	call Call_001_66eb
	ld b, $1c
	ld hl, $5c30
	call $3620
	ld hl, wc3f0
	ld b, $0b
	ld c, $12
	call $03d2
	call Call_001_6879
	ld a, $03
	ld [wcc24], a
	ld a, $01
	ld [wcc25], a
	ld [wcc2a], a
	ld [wcc26], a
	ld a, $ff
	ld [wcc29], a
	ld a, $08
	ld [wcc28], a
	ld a, $50
	ld [wcf45], a
	xor a
	ld hl, wcee5
	ld [hli], a
	ld [hli], a
	ld [wd068], a
	call $66ff
	call $3e0c
	ld a, [wcee5]
	and a
	jr nz, jr_001_65cb

	call Call_001_67b0
	call $3bc6

jr_001_659d:
	ld a, [wcc26]
	push af
	ld b, $1c
	ld hl, $5bbb
	call $3620
	pop af
	ld [wcc26], a
	call $3879
	ldh a, [$b3]
	and a
	jr z, jr_001_659d

	ld hl, $65fc

jr_001_65b8:
	sla a
	jr c, jr_001_65c2

	inc hl
	inc hl
	inc hl
	inc hl
	jr jr_001_65b8

jr_001_65c2:
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	ld a, [hli]
	ld h, [hl]
	ld l, a
	push de
	jp hl


jr_001_65cb:
	pop de
	ld hl, wcf45
	ld bc, $0006
	call $01bb
	call $3e04
	call $03bf
	call $0188
	call $3e1d
	call $3e0c
	xor a
	ld [wd068], a
	ld hl, wd6af
	res 6, [hl]
	ld a, [wd034]
	and a
	jp z, $36ea

	ld hl, $714c
	ld b, $0f
	jp $3620


	sbc d
	ld h, l
	adc $66
	sbc d
	ld h, l
	cp h
	ld h, [hl]
	sbc d
	ld h, l
	xor b
	ld h, [hl]
	sbc d
	ld h, l
	sub d
	ld h, [hl]
	sub c
	ld h, l
	ld a, [hli]
	ld h, [hl]
	adc e
	ld h, l
	ld hl, $9166
	ld h, l
	add [hl]
	ld h, [hl]
	sub c
	ld h, l
	jr nc, jr_001_6682

jr_001_661c:
	pop de
	ld de, $658b
	push de
	ld a, [wcee6]
	xor $01
	ld [wcee6], a
	ret


jr_001_662a:
	ld a, $01
	ld [wcee5], a
	ret


	ld a, [wcc26]
	cp $06
	jr nz, jr_001_663e

	ld a, [wcc25]
	cp $11
	jr z, jr_001_662a

jr_001_663e:
	ld a, [wcc26]
	cp $07
	jr nz, jr_001_664c

	ld a, [wcc25]
	cp $01
	jr z, jr_001_661c

jr_001_664c:
	ld hl, wcc30
	ld a, [hli]
	ld h, [hl]
	ld l, a
	inc hl
	ld a, [hl]
	ld [wcee8], a
	call Call_001_686c
	ld a, [wcee8]
	cp $e5
	ld de, $6806
	jr z, jr_001_6673

	cp $e4
	ld de, $6857
	jr z, jr_001_6673

	ld a, [wcee4]
	cp $05
	jr c, jr_001_667a

	ret


jr_001_6673:
	push hl
	call Call_001_67f2
	pop hl
	ret nc

	dec hl

jr_001_667a:
	ld a, [wcee8]
	ld [hli], a
	ld [hl], $50
	ld a, $90

jr_001_6682:
	call $0e45
	ret


	ld a, [wcee4]
	and a
	ret z

	call Call_001_686c
	dec hl
	ld [hl], $50
	ret


	ld a, [wcc26]
	cp $07
	ret z

	ld a, [wcc25]
	cp $11
	jp z, Jump_001_66a4

	inc a
	inc a
	jr jr_001_66e5

Jump_001_66a4:
	ld a, $01
	jr jr_001_66e5

	ld a, [wcc26]
	cp $07
	ret z

	ld a, [wcc25]
	dec a
	jp z, Jump_001_66b8

	dec a
	jr jr_001_66e5

Jump_001_66b8:
	ld a, $11
	jr jr_001_66e5

	ld a, [wcc26]
	dec a
	ld [wcc26], a
	and a
	ret nz

	ld a, $07
	ld [wcc26], a
	ld a, $01
	jr jr_001_66e5

	ld a, [wcc26]
	inc a
	ld [wcc26], a
	cp $08
	jr nz, jr_001_66e0

	ld a, $01
	ld [wcc26], a
	jr jr_001_66e5

jr_001_66e0:
	cp $07
	ret nz

	ld a, $01

jr_001_66e5:
	ld [wcc25], a
	jp $3c29


Call_001_66eb:
	ld de, $66f7
	ld hl, $8f00
	ld bc, $0001
	jp $031b


	ldh a, [$c0]
	ldh a, [$ce]
	db $fd
	dec c
	dec c
	ld c, $af
	ldh [$ba], a
	ld a, [wcee6]
	and a
	ld de, $6737
	jr nz, jr_001_670e

	ld de, $6770

jr_001_670e:
	ld hl, wc406
	ld bc, $0609

jr_001_6714:
	push bc

jr_001_6715:
	ld a, [de]
	ld [hli], a
	inc hl
	inc de
	dec c
	jr nz, jr_001_6715

	ld bc, $0016
	add hl, bc
	pop bc
	dec b
	jr nz, jr_001_6714

	call $0405
	ld hl, wc4f9
	ld de, $67a9
	call $0405
	ld a, $01
	ldh [$ba], a
	jp $3e07


	or c
	or [hl]
	cp e
	ret nz

	push bc
	jp z, wd4cf

	rst $10
	or d
	or a
	cp h
	pop bc
	add $cb
	ret nc

	push de
	ret c

	or e
	cp b
	cp l
	jp nz, wccc7

	pop de
	sub $d9
	or h
	cp c
	cp [hl]
	jp wcdc8


	jp nc, wdadc

	or l
	cp d
	cp a
	call nz, wcec9
	db $d3
	sbc $db
	ldh [$e1], a
	ld [c], a
	rst $18
	push hl
	db $e4
	db $e3
	ld a, a
	ldh a, [$85]
	sub h
	ld d, b
	add b
	add l
	adc d
	adc a
	sub h
	sbc c
	sbc l
	and d
	and l
	add c
	add [hl]
	adc e
	sub b
	sub l
	sbc d
	sbc [hl]
	and e
	ret c

	add d
	add a
	adc h
	sub c
	sub [hl]
	sbc e
	sbc a
	and h
	and [hl]
	add e
	adc b
	adc l
	sub d
	sub a
	call $a9a0
	and a
	add h
	adc c
	adc [hl]
	sub e
	sbc b
	sbc h
	and c
	xor e
	xor b
	xor l
	xor [hl]
	xor a
	xor h
	push hl
	db $e4
	db $e3
	ld a, a
	ldh a, [$b6]
	push bc
	ld d, b
	add $e1
	or e
	ret c

	ld [c], a
	cp b
	ld d, b

Call_001_67b0:
	call Call_001_686c
	ld a, c
	ld [wcee4], a
	ld hl, wc3c1
	ld bc, $0205
	call $0374
	ld hl, wc3d5
	ld de, wcf45

jr_001_67c6:
	call $0405
	ld hl, wc3e9
	ld a, $76
	ld b, $05

jr_001_67d0:
	ld [hli], a
	dec b
	jr nz, jr_001_67d0

	ld a, [wcee4]
	cp $05
	jr nz, jr_001_67ea

	call $3c29

jr_001_67de:
	ld a, $11
	ld [wcc25], a
	ld a, $06
	ld [wcc26], a
	ld a, $04

jr_001_67ea:
	ld hl, wc3e9
	add l
	ld l, a
	ld [hl], $77
	ret


Call_001_67f2:
	push de
	call Call_001_686c
	dec hl
	ld a, [hl]
	pop hl
	ld de, $0002
	call $3ddb
	ret nc

	inc hl
	ld a, [hl]
	ld [wcee8], a
	ret


	or [hl]
	ld h, $b7
	daa
	cp b
	jr z, jr_001_67c6

	add hl, hl
	cp d
	ld a, [hli]
	cp e
	dec hl
	cp h
	inc l
	cp l
	dec l
	cp [hl]
	ld l, $bf
	cpl
	ret nz

	jr nc, jr_001_67de

	ld sp, $32c2
	jp wc433


	inc [hl]
	jp z, wcb3a

	dec sp
	call z, wcd3c
	dec a
	adc $3e
	add l
	dec b
	add [hl]
	ld b, $87
	rlca
	adc b
	ld [$0989], sp
	adc d
	ld a, [bc]
	adc e
	dec bc
	adc h
	inc c
	adc l
	dec c
	adc [hl]
	ld c, $8f
	rrca
	sub b
	db $10
	sub c
	ld de, $1292
	sub e
	inc de
	sbc c
	add hl, de
	sbc d
	ld a, [de]
	sbc e
	dec de
	call $9c3d
	inc e
	rst $38
	jp z, wcb44

	ld b, l
	call z, wcd46
	ld b, a
	adc $48
	sbc c
	ld b, b
	sbc d
	ld b, c
	sbc e
	ld b, d
	call $9c47
	ld b, e
	rst $38

Call_001_686c:
	ld hl, wcf45
	ld c, $00

jr_001_6871:
	ld a, [hl]
	cp $50
	ret z

	inc hl
	inc c
	jr jr_001_6871

Call_001_6879:
	ld hl, wc3c9
	ld a, [wd05a]
	ld de, $68c0
	and a
	jr z, jr_001_68b5

	ld de, $68c4
	dec a
	jr z, jr_001_68b5

	ld a, [wcf78]
	ld [wcd58], a
	push af
	ld b, $1c
	ld hl, $5d46
	call $3620
	pop af
	ld [wd0e3], a
	call $1aab
	ld hl, wc3b8
	call $0405
	ld hl, $0001
	add hl, bc
	ld [hl], $c9
	ld hl, wc3e0
	ld de, $68d0
	jr jr_001_68bd

jr_001_68b5:
	call $0405
	ld l, c
	ld h, b
	ld de, $68c9

jr_001_68bd:
	jp $0405


	or c
	push bc
	ret nz

	ld d, b
	and l
	add c
	add hl, de
	and [hl]
	ld d, b
	ret


	push bc
	rst $08
	or h
	jp z, Jump_001_50e6

	sub l
	xor h
	add a
	sub a
	db $e3
	sbc a
	jp z, Jump_001_50e6

Call_001_68d9:
	call Call_001_69b3
	ld de, $6a4b
	call Call_001_6a0d
	ld a, [wcc26]
	and a
	jr z, jr_001_68f6

	ld hl, $6a91
	call Call_001_6a75
	ld de, wd11d
	call Call_001_698d
	jr jr_001_6915

jr_001_68f6:
	ld hl, wd11d
	xor a
	ld [wd05a], a
	call Call_001_6534
	ld a, [wcf45]
	cp $50
	jr z, jr_001_68f6

	call $03bf
	call $3e07
	ld de, $5941
	ld b, $04
	call Call_001_6236

jr_001_6915:
	ld hl, $691b
	jp $3c79


	db $00, $cc, $d1, $74, $74, $74, $4f, $52, $7f, $c4, $7f, $b2, $b3, $de, $30, $c5
	db $e7, $58

Call_001_692d:
	call Call_001_69b3
	ld de, $6a60
	call Call_001_6a0d
	ld a, [wcc26]
	and a
	jr z, jr_001_694a

	ld hl, $6aa6
	call Call_001_6a75
	ld de, wd2ce
	call Call_001_698d
	jr jr_001_696a

jr_001_694a:
	ld hl, wd2ce
	ld a, $01
	ld [wd05a], a
	call Call_001_6534
	ld a, [wcf45]
	cp $50
	jr z, jr_001_694a

	call $03bf
	call $3e07
	ld de, $6049
	ld b, $13
	call Call_001_6236

jr_001_696a:
	ld hl, $6970
	jp $3c79


	db $00, $bf, $b3, $30, $7f, $bf, $b3, $30, $e7, $7f, $b5, $d3, $b2, $30, $bc, $c0
	db $2f, $4f, $53, $7f, $c4, $b2, $b3, $7f, $c5, $cf, $b4, $30, $58

Call_001_698d:
	push de
	ld hl, wc3a0
	ld bc, $0c0b
	call $0374
	ld c, $0a
	call $3781
	pop de
	ld hl, wcd68
	ld bc, $0006
	call $01bb
	call $3e07
	ld hl, wc3fc
	ld de, $067d
	ld a, $ff
	jr jr_001_69ba

Call_001_69b3:
	ld hl, wc3f5
	ld de, $067d
	xor a

jr_001_69ba:
	push hl
	push de
	push bc
	ldh [$8d], a
	ld a, d
	ldh [$8b], a
	ld a, e
	ldh [$8c], a
	ld c, a
	ldh a, [$8d]
	and a
	jr nz, jr_001_69ce

	ld d, $00
	add hl, de

jr_001_69ce:
	ld d, h
	ld e, l

jr_001_69d0:
	xor a
	ldh [$ba], a
	ldh a, [$8d]
	and a
	jr nz, jr_001_69dd

	ld a, [hli]
	ld [hld], a
	dec hl
	jr jr_001_69e0

jr_001_69dd:
	ld a, [hld]
	ld [hli], a
	inc hl

jr_001_69e0:
	dec c
	jr nz, jr_001_69d0

	ldh a, [$8d]
	and a
	jr z, jr_001_69eb

	xor a
	dec hl
	ld [hl], a

jr_001_69eb:
	ld a, $01
	ldh [$ba], a
	call $3e07
	ldh a, [$8c]
	ld c, a
	ld h, d
	ld l, e
	ldh a, [$8d]
	and a
	jr nz, jr_001_69ff

	inc hl
	jr jr_001_6a00

jr_001_69ff:
	dec hl

jr_001_6a00:
	ld d, h
	ld e, l
	ldh a, [$8b]
	dec a
	ldh [$8b], a
	jr nz, jr_001_69d0

	pop bc
	pop de
	pop hl
	ret


Call_001_6a0d:
	push de
	ld hl, wc3a0
	ld b, $0a
	ld c, $09
	call $03d2
	ld hl, wc3a3
	ld de, $6a44
	call $0405
	pop de
	ld hl, wc3ca
	call $0405
	call $0ebd
	xor a
	ld [wcc26], a
	ld [wcc2a], a
	inc a
	ld [wcc25], a
	ld [wcc29], a
	inc a
	ld [wcc24], a
	inc a
	ld [wcc28], a
	jp $3b08


	db $c5, $cf, $b4, $ba, $b3, $ce, $50, $2c, $3c, $de, $33, $b7, $d2, $d9, $4e, $a7
	db $ac, $13, $4e, $8a, $93, $8b, $4e, $0b, $ad, $ac, $87, $50, $2c, $3c, $de, $33
	db $b7, $d2, $d9, $4e, $07, $d8, $e3, $ab, $4e, $8b, $08, $a6, $4e, $0b, $af, $ab
	db $50

Call_001_6a75:
	ld b, a
	ld c, $00

jr_001_6a78:
	ld d, h
	ld e, l

jr_001_6a7a:
	ld a, [hli]
	cp $50
	jr nz, jr_001_6a7a

	ld a, b
	cp c
	jr z, jr_001_6a86

	inc c
	jr jr_001_6a78

jr_001_6a86:
	ld h, d
	ld l, e
	ld de, wcd68
	ld bc, $0014
	jp $01bb


	db $2c, $3c, $de, $33, $b7, $d2, $d9, $50, $a7, $ac, $13, $50, $8a, $93, $8b, $50
	db $0b, $ad, $ac, $87, $50, $2c, $3c, $de, $33, $b7, $d2, $d9, $50, $07, $d8, $e3
	db $ab, $50, $8b, $08, $a6, $50, $0b, $af, $ab, $50, $50

	ld de, wd2cb
	ld hl, $ff9f
	ld c, $03
	call $3ad8
	ret c

	ld de, wd2cd
	ld hl, $ffa1
	ld c, $03
	ld a, $0c
	call $3e9d
	ld a, $13
	ld [wd0ea], a
	call $3130
	and a
	ret


	ld a, [wcf7b]
	cp $03
	jp c, $1765

	push hl
	ld hl, wcf72
	ld a, [hli]
	ld h, [hl]
	ld l, a
	inc hl
	ld a, [wcc26]
	ld b, a
	ld a, [wcc36]
	add b
	add a
	ld c, a
	ld b, $00
	add hl, bc
	ld a, [hl]
	pop hl
	inc a
	jp z, $1765

	ld a, [wcc35]
	and a
	jr nz, jr_001_6b1c

	ld a, [wcc26]
	inc a
	ld b, a
	ld a, [wcc36]
	add b
	ld [wcc35], a
	ld c, $14
	call $3781
	jp $1765


jr_001_6b1c:
	ld a, [wcc26]
	inc a
	ld b, a
	ld a, [wcc36]
	add b
	ld b, a
	ld a, [wcc35]
	cp b
	jp z, $1765

	dec a
	ld [wcc35], a
	ld c, $14
	call $3781
	push hl
	push de
	ld hl, wcf72
	ld a, [hli]
	ld h, [hl]
	ld l, a
	inc hl
	ld d, h
	ld e, l
	ld a, [wcc26]
	ld b, a
	ld a, [wcc36]
	add b
	add a
	ld c, a
	ld b, $00
	add hl, bc
	ld a, [wcc35]
	add a
	add e
	ld e, a
	jr nc, jr_001_6b57

	inc d

jr_001_6b57:
	ld a, [de]
	ld b, a
	ld a, [hli]
	cp b
	jr z, jr_001_6b77

	ldh [$95], a
	ld a, [hld]
	ldh [$96], a
	ld a, [de]
	ld [hli], a
	inc de
	ld a, [de]
	ld [hl], a
	ldh a, [$96]
	ld [de], a
	dec de
	ldh a, [$95]
	ld [de], a
	xor a
	ld [wcc35], a
	pop de
	pop hl
	jp $1765


jr_001_6b77:
	inc de
	ld a, [hl]
	ld b, a
	ld a, [de]
	add b
	cp $64
	jr c, jr_001_6b88

	sub $63
	ld [de], a
	ld a, $63
	ld [hl], a
	jr jr_001_6bb2

jr_001_6b88:
	ld [hl], a
	ld hl, wcf72
	ld a, [hli]
	ld h, [hl]
	ld l, a
	dec [hl]
	ld a, [hl]
	ld [wd0ef], a
	cp $01
	jr nz, jr_001_6b9b

	ld [wcc28], a

jr_001_6b9b:
	dec de
	ld h, d
	ld l, e
	inc hl
	inc hl

jr_001_6ba0:
	ld a, [hli]
	ld [de], a
	inc de
	inc a
	jr z, jr_001_6bab

	ld a, [hli]
	ld [de], a
	inc de
	jr jr_001_6ba0

jr_001_6bab:
	xor a
	ld [wcc36], a
	ld [wcc26], a

jr_001_6bb2:
	xor a
	ld [wcc35], a
	pop de
	pop hl
	jp $1765


	ld a, [wcc36]
	push af
	call $0ebd
	xor a
	ld [wcf05], a

Jump_001_6bc6:
	xor a
	ld [wcc36], a
	ld [wcc26], a
	ld [wcc2f], a
	inc a
	ld [wcf7a], a
	ld a, $13
	ld [wd0ea], a
	call $3130
	ld a, $15
	ld [wd0ea], a
	call $3130
	ld hl, wd0ed
	ld a, [hli]
	ld l, [hl]
	ld h, a
	ld a, [wd0f3]
	cp $02
	jp z, Jump_001_6d8d

	ld a, [wd0f2]
	and a
	jp z, Jump_001_6cb4

	dec a
	jp z, Jump_001_6c01

	dec a
	jp z, Jump_001_6d8d

Jump_001_6c01:
	xor a
	ld [wcf7a], a
	ld a, $02
	ld [wd0e0], a
	ld hl, $5ead
	ld b, $0e
	call $3620
	ld a, [wd2a1]
	and a
	jp z, Jump_001_6cab

	ld hl, $6e16
	call $3c79
	call $3761

Jump_001_6c22:
jr_001_6c22:
	call $376d
	ld a, $13
	ld [wd0ea], a
	call $3130
	ld hl, wd2a1
	ld a, l
	ld [wcf72], a
	ld a, h
	ld [wcf73], a
	xor a
	ld [wcf7a], a
	ld [wcc26], a
	ld a, $03
	ld [wcf7b], a
	call $16f7
	jp c, Jump_001_6d5e

	call $3121
	ld a, [wd0e9]
	and a
	jr nz, jr_001_6ca2

	ld a, [wcf78]
	call $1b55
	jr c, jr_001_6ca2

	ld a, $02
	ld [wcf7b], a
	ldh [$8e], a
	call $186a
	inc a
	jr z, jr_001_6c22

	ld hl, $6e27
	ld bc, $0e01
	call $3c79
	ld hl, wc43a
	ld bc, $080f
	ld a, $14
	ld [wd0ea], a
	call $3130
	ld a, [wd0f3]
	cp $02
	jr z, jr_001_6c22

	ld a, [wd0f2]
	dec a
	jr z, jr_001_6c22

	ld a, [wcf05]
	and a
	jr nz, jr_001_6c96

	inc a
	ld [wcf05], a

jr_001_6c96:
	call $16af
	ld hl, wd2a1
	call $16cc
	jp Jump_001_6c22


jr_001_6ca2:
	ld hl, $6e5f
	call $3c79
	jp Jump_001_6d5e


Jump_001_6cab:
	ld hl, $6e46
	call $3c79
	jp Jump_001_6d5e


Jump_001_6cb4:
	ld a, $01
	ld [wcf7a], a
	ld a, $03
	ld [wd0e0], a
	ld hl, $5ead
	ld b, $0e
	call $3620
	ld hl, $6da0
	call $3c79
	call $3761

Jump_001_6ccf:
jr_001_6ccf:
	call $376d
	ld a, $13
	ld [wd0ea], a
	call $3130
	ld hl, wcf62
	ld a, l
	ld [wcf72], a
	ld a, h
	ld [wcf73], a
	xor a
	ld [wcc26], a
	inc a
	ld [wcf7a], a
	inc a
	ld [wcf7b], a
	call $16f7
	jr c, jr_001_6d5e

	ld a, $63
	ld [wcf7e], a
	xor a
	ldh [$8e], a
	call $186a
	inc a
	jr z, jr_001_6ccf

	ld a, [wcf78]
	ld [wd0e3], a
	call $1add
	call $386e
	ld hl, $6db3
	call $3c79
	ld hl, wc43a
	ld bc, $080f
	ld a, $14
	ld [wd0ea], a
	call $3130
	ld a, [wd0f3]
	cp $02
	jp z, Jump_001_6ccf

	ld a, [wd0f2]
	dec a
	jr z, jr_001_6ccf

	call Call_001_6d72
	jr c, jr_001_6d7d

	ld hl, wd2a1
	call $16e0
	jr nc, jr_001_6d85

	call $16a7
	ld a, [wcf05]
	and a
	jr nz, jr_001_6d4d

	ld a, $01
	ld [wcf05], a

jr_001_6d4d:
	ld a, $b2
	call $3788
	call $3790
	ld hl, $6dcb
	call $3c79
	jp Jump_001_6ccf


Jump_001_6d5e:
jr_001_6d5e:
	call $376d
	ld a, $13
	ld [wd0ea], a
	call $3130
	ld hl, $6e8e
	call $3c79
	jp Jump_001_6bc6


Call_001_6d72:
	ld de, wd2cb
	ld hl, $ff9f
	ld c, $03
	jp $3ad8


jr_001_6d7d:
	ld hl, $6de3
	call $3c79
	jr jr_001_6d5e

jr_001_6d85:
	ld hl, $6df3
	call $3c79
	jr jr_001_6d5e

Jump_001_6d8d:
	ld hl, $6e80
	call $3c79
	ld a, $01
	ld [wcfb2], a
	call $0ebd
	pop af
	ld [wcc36], a
	ret


	db $00, $d5, $df, $b8, $d8, $7f, $2a, $d7, $de, $c6, $c5, $df, $c3, $7f, $b8, $30
	db $bb, $b2, $57, $01, $45, $cf, $00, $33, $bd, $c8, $4f, $50, $02, $9f, $ff, $c3
	db $00, $f0, $c6, $7f, $c5, $d8, $cf, $bd, $26, $e6, $57, $00, $ca, $b2, $7f, $34
	db $b3, $2f, $4f, $cf, $b2, $34, $7f, $b1, $d8, $26, $c4, $b3, $7f, $2a, $2b, $b2
	db $cf, $bd, $58

	nop
	or l
	or [hl]
	ret z

	ld h, $7f
	ret nz

	ret c

	push bc
	or d
	sub $b3
	inc sp
	cp l
	ret z

	ld e, b
	nop
	cp a
	jp c, $2cb2

	ld [c], a
	or e
	ld a, a
	db $d3
	pop bc
	or a
	jp c, $becf

	sbc $c8
	ld c, a
	or d
	rst $10
	push bc
	or d
	and c
	sbc b
	db $dd
	ld a, a
	cp [hl]
	or d
	ret c

	cp h
	jp $30b8


	cp e
	or d
	ld e, b
	nop
	inc [hl]
	jp c, Jump_001_7fdd

	or e
	rst $18
	jp wc0b2


	jr nc, @-$45

	rst $08
	cp l
	or [hl]
	and $57
	nop
	cp a
	jp c, $bc33

	ret nz

	rst $10
	ld a, a
	ld d, b
	ld [bc], a
	sbc a
	rst $38
	jp $f000


	inc sp
	ld a, a
	ld c, a
	or l
	res 6, a
	call nz, $b2d8
	ret nz

	cp h
	rst $08
	cp h
	ld [c], a
	or e
	ld d, a
	nop
	or [hl]
	or d
	call nz, wd9da
	ld a, a
	cp h
	push bc
	db $d3
	ret


	jp z, $b54f

	db $d3
	pop bc
	inc sp
	ld a, a
	push bc
	or d
	sub $b3
	inc sp
	cp l
	ld e, b
	nop
	ld d, [hl]
	cp a
	ret


	cp h
	push bc
	db $d3
	ret


	add $7f
	or l
	ret z

	jr nc, @-$20

	db $dd
	ld c, a
	or l
	jp nz, $bdb9

	reti


	call c, wc6b9
	jp z, wcf7f

	or d
	ret c

	rst $08
	cp [hl]
	sbc $58

	db $00, $b1, $d8, $26, $c4, $b3, $7f, $2a, $2b, $b2, $cf, $bc, $c0, $57, $00, $bf
	db $c9, $ce, $b6, $c6, $7f, $dc, $c0, $b8, $bc, $34, $d3, $33, $4f, $b5, $c1, $b6
	db $d7, $c6, $7f, $c5, $da, $d9, $ba, $c4, $ca, $e6, $57

	call $3761
	ld a, [wcf79]
	ld hl, wd257
	call $2fb1
	ld hl, wcd68
	ld de, wd01d
	ld bc, $0006
	call $01bb

Jump_001_6ec3:
	ld hl, wd133
	ld bc, $002c
	ld a, [wcf79]
	call $3ad1
	ld d, h
	ld e, l
	ld b, $04

jr_001_6ed3:
	ld a, [hl]
	and a
	jr z, jr_001_6ef3

	inc hl
	dec b
	jr nz, jr_001_6ed3

	push de
	call Call_001_6f6f
	pop de
	jp c, Jump_001_6f42

	push hl
	push de
	ld [wd0e3], a
	call $1b6d
	ld hl, $70be
	call $3c79
	pop de
	pop hl

jr_001_6ef3:
	ld a, [wd0bd]
	ld [hl], a
	ld bc, $0015
	add hl, bc
	push hl
	push de
	dec a
	ld hl, $5658
	ld bc, $0006
	call $3ad1
	ld de, wcee4
	ld a, $0e
	call $01a3
	ld a, [wcee9]
	pop de
	pop hl
	ld [hl], a
	ld a, [wd034]
	and a
	jp z, Jump_001_6f66

	ld a, [wcf79]
	ld b, a
	ld a, [wcc2f]
	cp b
	jp nz, Jump_001_6f66

	ld h, d
	ld l, e
	ld de, wd003
	ld bc, $0004
	call $01bb
	ld bc, $0011
	add hl, bc
	ld de, wd014
	ld bc, $0004
	call $01bb
	jp Jump_001_6f66


Jump_001_6f42:
	ld hl, $702c
	call $3c79
	ld hl, wc43a
	ld bc, $080f
	ld a, $14
	ld [wd0ea], a
	call $3130
	ld a, [wcc26]
	and a
	jp nz, Jump_001_6ec3

	ld hl, $704a
	call $3c79
	ld b, $00
	ret


Jump_001_6f66:
	ld hl, $6fff
	call $3c79
	ld b, $01
	ret


Call_001_6f6f:
	push hl
	ld hl, $7063
	call $3c79
	ld hl, wc43a
	ld bc, $080f
	ld a, $14
	ld [wd0ea], a
	call $3130
	pop hl
	ld a, [wcc26]
	rra
	ret c

	ld bc, $fffc
	add hl, bc
	push hl
	ld de, wd0b9
	ld bc, $0004
	call $01bb
	ld hl, $5e5f
	ld b, $0e
	call $3620
	pop hl

jr_001_6fa1:
	push hl
	ld hl, $701b
	call $3c79
	ld hl, wc44a
	ld b, $08
	ld c, $08
	call $03d2
	ld hl, wc474
	ld de, wd0be
	call $0405
	ld hl, wcc24
	ld a, $0a
	ld [hli], a
	ld a, $0b
	ld [hli], a
	xor a
	ld [hli], a
	inc hl
	ld a, [wcd67]
	ld [hli], a
	ld a, $03
	ld [hli], a
	ld [hl], $00
	call $3b08
	push af
	call $376d
	pop af
	pop hl
	bit 1, a
	jr nz, jr_001_6ffd

	push hl
	ld a, [wcc26]
	ld c, a
	ld b, $00
	add hl, bc
	ld a, [hl]
	push af
	push bc
	call $1b5e
	pop bc
	pop de
	ld a, d
	jr c, jr_001_6ff4

	pop hl
	add hl, bc
	and a
	ret


jr_001_6ff4:
	ld hl, $7101
	call $3c79
	pop hl
	jr jr_001_6fa1

jr_001_6ffd:
	scf
	ret


	db $01, $1d, $d0, $00, $ca, $7f, $b1, $c0, $d7, $bc, $b8, $4f, $50, $01, $45, $cf
	db $00, $dd, $7f, $b5, $3e, $b4, $c0, $e7, $50, $0b, $06, $50

	nop
	inc [hl]
	ret


	ld a, a
	call c, wdd2b
	ld c, [hl]
	call c, wdabd
	cp e
	cp [hl]
	ret nz

	or d
	and $57
	nop
	cp a
	jp c, wca33

	ld d, [hl]
	ld a, a
	ld d, b
	ld bc, wcf45
	nop
	db $dd
	ld c, a
	or l
	ld a, $b4
	reti


	ret


	db $dd
	ld a, a
	or c
	or a
	rst $10
	jp nc, $bdcf

	or [hl]
	and $57
	ld bc, wd01d
	nop
	jp z, Jump_001_507f

	ld bc, wcf45
	nop
	db $dd
	ld c, a
	or l
	ld a, $b4
	dec l
	add $7f
	or l
	call c, wc0df
	rst $20
	ld e, b
	ld bc, wd01d
	nop
	jp z, $b17f

	ret nz

	rst $10
	cp h
	cp b
	ld c, a
	ld d, b
	ld bc, wcf45
	nop
	db $dd
	ld a, a
	or l
	ld a, $b4
	ret nz

	or d
	ld d, [hl]
	rst $20
	ld d, c
	cp h
	or [hl]
	cp h
	ld a, a
	ld d, b
	ld bc, wd01d

jr_001_7086:
	nop
	jp z, wdc7f

	dec hl
	db $dd
	ld a, a
	ld a, [$4fc2]
	or l
	ld a, $b4
	reti


	ret


	inc sp
	ld a, a
	cp [hl]
	or d
	or d
	rst $18
	ld b, h
	or d
	jr nc, jr_001_7086

	ld d, c
	ld d, b
	ld bc, wcf45
	nop
	ret


	ld a, a
	or [hl]
	call c, wc6d8
	ld c, a
	adc $b6
	ret


	ld a, a
	call c, wdd2b
	ld a, a
	call c, wdabd
	cp e
	cp [hl]
	rst $08
	cp l
	or [hl]
	and $57
	nop
	rst $30
	ld a, a
	ld hl, sp-$37
	ld a, a
	ld d, [hl]
	ld d, b
	ld a, [bc]
	ld [$ae3e], sp
	call $3788
	ld hl, $70d1
	ret


	nop
	ld a, a
	ld b, e
	add l
	xor e
	rst $20
	ld d, b
	ld a, [bc]
	nop
	ld d, c
	ld d, b
	ld bc, wd01d
	nop
	jp z, Jump_001_507f

	ld bc, wcd68
	nop
	ret


	ld c, a
	jp nz, $b2b6

	or [hl]
	ret nz

	db $dd
	ld a, a
	or a
	jp c, wc6b2

	ld a, a
	call c, wdabd
	ret nz

	rst $20
	ld d, c
	cp a
	cp h
	jp $e756


	ld e, b
	nop
	cp a
	jp c, $7fca

	ret nz

	or d
	cp [hl]
	jp nz, wdcc5

	dec hl
	inc sp
	cp l
	ld c, a
	call c, wdabd
	cp e
	cp [hl]
	reti


	cp d
	call nz, $7fca
	inc sp
	or a
	rst $08
	cp [hl]
	sbc $e7
	ld e, b

	call $3761
	ld hl, $7198
	call $3c79
	ld hl, wd6ad
	bit 2, [hl]
	set 1, [hl]
	set 2, [hl]
	jr nz, jr_001_713b

	ld hl, $71c0
	call $3c79

jr_001_713b:
	call $3654
	ld a, [wcc26]
	and a
	jr nz, jr_001_718c

	call Call_001_722d
	call $376d
	ld hl, $71da
	call $3c79
	ld a, $18
	ld [$c112], a
	call $3e07
	ld a, $07
	call $3e9d
	ld b, $1c
	ld hl, $4984
	call $3620
	xor a
	ld [wcfae], a
	ld a, [wc0f0]
	ld [wc0ef], a
	ld a, [wd2da]
	ld [wcfb1], a
	ld [wc0ee], a
	call $0e45
	ld hl, $71ef
	call $3c79
	ld a, $14
	ld [$c112], a
	ld c, a
	call $3781
	jr jr_001_718f

jr_001_718c:
	call $376d

jr_001_718f:
	ld hl, $7218
	call $3c79
	jp $0ebd


	db $00, $d6, $b3, $ba, $bf, $e7, $4f, $54, $8d, $ab, $8f, $e3, $cd, $51, $ba, $ba
	db $33, $ca, $7f, $54, $c9, $4f, $c0, $b2, $d8, $e2, $b8, $7f, $b6, $b2, $cc, $b8
	db $dd, $7f, $b2, $c0, $bc, $cf, $bd, $58, $0a, $00, $a1, $ab, $8c, $8f, $e3, $1c
	db $e3, $a6, $dd, $7f, $4f, $b5, $b1, $2d, $b9, $c6, $7f, $c5, $d8, $cf, $bd, $b6
	db $e6, $57, $00, $bf, $da, $33, $ca, $4f, $b1, $2d, $b6, $d7, $be, $c3, $7f, $b2
	db $c0, $30, $b7, $cf, $bd, $e7, $57, $00, $b5, $cf, $c1, $34, $b3, $bb, $cf, $33
	db $bc, $c0, $e7, $4f, $b5, $b1, $2d, $b6, $d8, $bc, $c0, $7f, $54, $ca, $55, $d0
	db $de, $c5, $7f, $29, $de, $b7, $c6, $7f, $c5, $d8, $cf, $bc, $c0, $d6, $e7, $58
	db $0a, $00, $cf, $c0, $c9, $4f, $2a, $d8, $d6, $b3, $dd, $7f, $b5, $cf, $c1, $bc
	db $c3, $cf, $bd, $e7, $57

Call_001_722d:
	push hl
	ld hl, $7247
	ld a, [wd2dd]
	ld b, a

jr_001_7235:
	ld a, [hli]
	cp $ff
	jr z, jr_001_723f

	cp b
	jr nz, jr_001_7235

	jr jr_001_7245

jr_001_723f:
	ld a, [wd2e4]
	ld [wd698], a

jr_001_7245:
	pop hl
	ret


	db $df, $e0, $e1, $ff

	xor a
	ld [wcf7b], a
	ld a, [wcf07]
	bit 0, a
	jr nz, jr_001_727c

	ldh a, [$8c]
	and a
	jr nz, jr_001_7272

	ld a, [wd6ca]
	bit 5, a
	ld hl, wc3ac
	ld b, $0e
	ld c, $06
	jr nz, jr_001_7279

	ld hl, wc3ac
	ld b, $0c
	ld c, $06
	jr jr_001_7279

jr_001_7272:
	ld hl, wc490
	ld b, $04
	ld c, $12

jr_001_7279:
	call $03d2

jr_001_727c:
	ld hl, wcfab
	set 0, [hl]
	ld hl, wcd5b
	bit 4, [hl]
	res 4, [hl]
	jr nz, jr_001_728d

	call $0ebd

jr_001_728d:
	ld hl, $c119
	ld c, $0f
	ld de, $0010

jr_001_7295:
	ld a, [hl]
	inc h
	ld [hl], a
	dec h
	add hl, de
	dec c
	jr nz, jr_001_7295

	ld hl, $c102
	ld de, $0010
	ld c, e

jr_001_72a4:
	ld a, [hl]
	cp $ff
	jr z, jr_001_72ac

	and $fc
	ld [hl], a

jr_001_72ac:
	add hl, de
	dec c
	jr nz, jr_001_72a4

	ld b, $9c
	call $0386
	xor a
	ldh [$b0], a
	call $36ca
	ld a, $01
	ldh [$ba], a
	ret


	ld a, [wd6ca]
	bit 5, a
	ld hl, wc3ac
	ld b, $0e
	ld c, $06
	jr nz, jr_001_72d5

	ld hl, wc3ac
	ld b, $0c
	ld c, $06

jr_001_72d5:
	call $03d2
	ld a, $cb
	ld [wcc29], a
	ld a, $02
	ld [wcc24], a
	ld a, $0d
	ld [wcc25], a
	ld a, [wcc2d]
	ld [wcc26], a
	ld [wcc2a], a
	xor a
	ld [wcc37], a
	ld hl, wd6af
	set 6, [hl]
	ld hl, wc3d6
	ld a, [wd6ca]
	bit 5, a
	ld a, $06
	jr z, jr_001_730d

	ld de, $7344
	call Call_001_7361
	ld a, $07

jr_001_730d:
	ld [wcc28], a
	ld de, $7348
	call Call_001_7361
	ld de, $734a
	call Call_001_7361
	ld de, wd11d
	call Call_001_7361
	ld a, [wd6ad]
	bit 6, a
	ld de, $734e
	jr z, jr_001_732f

	ld de, $7353

jr_001_732f:
	call Call_001_7361
	ld de, $735c
	call Call_001_7361
	ld de, $7358
	call $0405
	ld hl, wd6af
	res 6, [hl]
	ret


	db $2d, $b6, $de, $50, $54, $50, $34, $b3, $28, $50, $a7, $43, $e3, $93, $50

	ret c

	adc l
	xor h
	sub e
	ld d, b

	db $c4, $2c, $d9, $50, $be, $df, $c3, $b2, $50

Call_001_7361:
	push hl
	call $0405
	pop hl
	ld de, $0028
	add hl, de
	ret


	ld hl, $7496
	call $3c79
	ld a, [wd6ca]
	bit 5, a
	jp nz, Jump_001_7387

	ld c, $3c
	call $3781
	ld hl, $7537
	call $3c79
	jp Jump_001_7443


Jump_001_7387:
	ld a, $01
	ld [wcc34], a
	ld a, $10
	ld [wcce0], a
	ld a, $5a
	ld [wcc47], a

jr_001_7396:
	ldh a, [$aa]
	cp $02
	jr z, jr_001_73c5

	cp $01
	jr z, jr_001_73c5

	ld a, $ff
	ldh [$aa], a
	ld a, $02
	ldh [rSB], a
	xor a
	ldh [$ad], a
	ld a, $80
	ldh [rSC], a
	ld a, [wcc47]
	dec a
	ld [wcc47], a
	jr z, jr_001_7432

	ld a, $01
	ldh [rSB], a
	ld a, $81
	ldh [rSC], a
	call $0b31
	jr jr_001_7396

jr_001_73c5:
	call $0d81
	call $0b31
	call $0d81
	ld c, $32
	call $3781
	ld hl, $74ac
	call $3c79
	xor a
	ld [wcc34], a
	call $3636
	ld a, $01
	ld [wcc34], a
	ld a, [wcc26]
	and a
	jr nz, jr_001_743a

	ld hl, $7ce3
	ld b, $1c
	call $3620
	call $3790
	ld a, $b6
	call $3788
	ld hl, $74d2
	call $3c79
	ld hl, wcc47
	ld a, $03
	ld [hli], a
	xor a
	ld [hl], a
	ldh [$a9], a
	ld [wcc42], a
	call $0c66
	ld hl, wcc47
	ld a, [hli]
	inc a
	jr nz, jr_001_7453

	ld a, [hl]
	inc a
	jr nz, jr_001_7453

	ld b, $0a

jr_001_741e:
	call $0b31
	call $0d81
	dec b
	jr nz, jr_001_741e

	call Call_001_754c
	ld hl, $74e5
	call $3c79
	jr jr_001_7443

jr_001_7432:
	ld hl, $745e
	call $3c79
	jr jr_001_7443

jr_001_743a:
	call Call_001_754c
	ld hl, $7526
	call $3c79

Jump_001_7443:
jr_001_7443:
	xor a
	ld hl, wcc47
	ld [hli], a
	ld [hl], a
	ld hl, wd6ad
	res 6, [hl]
	xor a
	ld [wcc34], a
	ret


jr_001_7453:
	xor a
	ld [hld], a
	ld [hl], a
	ld hl, $5a35
	ld b, $01
	jp $3620


	nop
	cp d
	pop bc
	rst $10
	jp z, wc47f

	db $d3
	jr nc, @-$3d

	call nz, $c24f
	or e
	cp h
	sbc $88
	db $e3
	dec de
	and [hl]
	db $dd
	ld a, a
	jp nz, $b2c5

	jr nc, jr_001_74ca

	or [hl]
	ret nz

	ld h, $c0
	db $dd
	ld a, a
	call nz, $3db8

Jump_001_7482:
	jp nz, $e7c6

	ld c, a
	ld a, [hli]
	or c
	sbc $c5
	or d
	ld a, a
	or d
	ret nz

	cp h
	jp $b57f


	ret c

	rst $08
	cp l
	ld d, a
	nop
	jp nz, $bcb3

	sbc $7f

jr_001_749c:
	adc b
	db $e3
	dec de
	and [hl]
	ld a, a
	add a
	and l
	dec de
	add $4f
	sub $b3
	cp d
	cp a
	rst $20
	ld d, a
	nop
	or e
	cp c
	jp nz, wcab9

	ld a, a
	cp d
	pop bc
	rst $10
	inc sp
	cp l
	ld d, c
	jp nz, $bcb3

	sbc $dd
	ld a, a
	jp z, wd22c

	reti


	rst $08
	or h
	add $4f
	and a
	ld b, e
	db $e3

jr_001_74ca:
	sub e
	db $dd
	ld a, a
	or [hl]
	or a
	rst $08
	cp l
	ld d, a
	nop
	cp h
	ld [c], a
	or e
	cp h
	ld [c], a
	or e
	ld a, a
	or l
	rst $08
	pop bc
	ld a, a

jr_001_74de:
	cp b
	jr nc, jr_001_749c

	or d
	ld d, b
	ld a, [bc]
	ld d, b
	nop
	rst $08
	pop bc
	ld a, a
	inc l
	or [hl]
	sbc $26
	ld a, a
	push bc
	ld h, $b2
	ret


jr_001_74f2:
	inc sp
	ld c, a
	or e
	cp c
	jp nz, wddb9

	ld a, a
	pop bc
	pop hl
	or e
	cp h
	ld a, a
	or d
	ret nz

	cp h
	rst $08
	cp l
	rst $20
	ld d, c
	call nz, $30d3
	pop bc
	call nz, wda7f
	sbc $d7
	cp b
	db $dd
	ld a, a
	call nz, $c3df
	ld c, a
	db $d3
	or e
	or d
	pop bc
	inc [hl]
	ld a, a
	or l
	cp d
	cp h
	ld a, a
	cp b
	jr nc, jr_001_74de

	or d
	rst $20
	ld d, a
	nop
	cp a
	jp c, wca33

	ld a, a
	rst $08
	ret nz

	ld a, a
	or l
	cp d
	cp h
	cp b
	jr nc, @-$43

	or d
	ld d, a
	nop
	cp d
	pop bc
	rst $10
	jp z, wc07f

	jr nc, jr_001_74f2

	rst $08
	ld c, a
	inc l
	pop hl
	sbc $3b
	pop bc
	pop hl
	or e
	inc sp
	cp l
	ld d, a

Call_001_754c:
	call $3e07
	ld a, $ff
	ldh [$aa], a
	ld a, $02
	ldh [rSB], a
	xor a
	ldh [$ad], a
	ld a, $80
	ldh [rSC], a
	ret


	xor a
	ld [wcf06], a
	ld [wd67f], a
	ld [wd034], a
	ld [wMapPalOffset], a
	ld [wcf0b], a
	ldh [$b4], a
	ld [wcc57], a
	ld [wcd5b], a
	ldh [$9f], a
	ldh [$a0], a
	ldh [$a1], a
	call $35f0
	jr c, jr_001_75ae

	ld a, [wd2cb]
	ldh [$9f], a
	ld a, [wd2cc]
	ldh [$a0], a
	ld a, [wd2cd]
	ldh [$a1], a
	xor a
	ldh [$a2], a
	ldh [$a3], a
	ld a, $02
	ldh [$a4], a
	ld a, $0d
	call $3e9d
	ldh a, [$a2]
	ld [wd2cb], a
	ldh a, [$a3]
	ld [wd2cc], a
	ldh a, [$a4]
	ld [wd2cd], a

jr_001_75ae:
	ld hl, wd6b1
	set 2, [hl]
	res 3, [hl]
	set 6, [hl]
	ld a, $ff
	ld [wcd66], a
	ld a, $07
	jp $3e9d


	ld a, [wd991]
	ld [wcf78], a
	ld a, [wcc49]
	cp $03
	jr z, jr_001_75da

	ld a, [wcf79]
	ld e, a
	ld hl, $5f0f
	ld b, $0e
	call $3620

jr_001_75da:
	ld a, [wcf78]
	ld [wd092], a
	call $2f2e
	ld hl, wd12b
	ld bc, $002c
	ld a, [wcc49]
	cp $01
	jr c, jr_001_7604

	ld hl, wd823
	jr z, jr_001_7604

	cp $02
	ld hl, wd9d2
	ld bc, $0021
	jr z, jr_001_7604

	ld hl, wd991
	jr jr_001_760a

jr_001_7604:
	ld a, [wcf79]
	call $3ad1

jr_001_760a:
	ld de, wcf7f
	ld bc, $002c
	jp $01bb


	ld hl, wcce9
	ld a, [hl]
	and a
	jr z, jr_001_7620

	dec [hl]
	ld hl, $7643
	jr jr_001_763b

jr_001_7620:
	dec hl
	ld a, [hl]
	and a
	ret z

	dec [hl]
	ld hl, $7659
	jr nz, jr_001_763b

	push hl
	ld a, [wcfcc]
	ld [wd092], a
	call $2f2e
	ld a, [wd09d]
	ld [wcfee], a
	pop hl

jr_001_763b:
	push hl
	call $376d
	pop hl
	jp $3c79


	nop
	call nc, $b2be
	ret


	ld d, b
	ld bc, wcfc1
	nop
	jp z, $834f

	adc d
	db $dd
	ld a, a
	ret nz

	dec a
	jp $e7d9


	ld e, b
	nop
	call nc, $b2be
	ret


	ld d, b
	ld bc, wcfc1
	nop
	jp z, $b54f

	cp d
	rst $18
	jp $e7d9


	ld e, b

	ld a, [wd0ea]
	cp $14
	jp z, Jump_001_78e5

	ld c, a
	ld hl, $7709
	ld de, $0003
	call Call_001_76ce
	jr c, jr_001_7697

	ld hl, $7713
	ld de, $0005
	call Call_001_76ce
	jr c, jr_001_769f

	ld hl, $7732
	ld de, $0009
	call Call_001_76ce
	jr c, jr_001_76a9

	ret


jr_001_7697:
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld de, $7696
	push de
	jp hl


jr_001_769f:
	call Call_001_76dc
	call Call_001_76f7
	call $03d2
	ret


jr_001_76a9:
	call Call_001_76dc
	push hl
	call Call_001_76f7
	call $03d2
	pop hl
	call Call_001_76e9
	ld a, [wd6af]
	push af
	ld a, [wd6af]
	set 6, a
	ld [wd6af], a
	call $0405
	pop af
	ld [wd6af], a
	call $0ebd
	ret


Call_001_76ce:
	dec de

jr_001_76cf:
	ld a, [hli]
	cp $ff
	jr z, jr_001_76db

	cp c
	jr z, jr_001_76da

	add hl, de
	jr jr_001_76cf

jr_001_76da:
	scf

jr_001_76db:
	ret


Call_001_76dc:
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	ld a, [hli]
	sub e
	dec a
	ld c, a
	ld a, [hli]
	sub d
	dec a
	ld b, a
	ret


Call_001_76e9:
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	push de
	ld a, [hli]
	ld e, a
	ld a, [hl]
	ld d, a
	call Call_001_76f7
	pop de
	ret


Call_001_76f7:
	push bc
	ld hl, wc3a0
	ld bc, $0014

jr_001_76fe:
	ld a, d
	and a
	jr z, jr_001_7706

	add hl, bc
	dec d
	jr jr_001_76fe

jr_001_7706:
	pop bc
	add hl, de
	ret


	db $13, $3d, $78, $15, $76, $78, $04

	cpl
	ld a, d

	db $ff, $01, $00, $0c, $13, $11, $03

	nop
	nop
	inc de
	db $0e

	db $07

	nop
	nop
	dec bc
	db $06

	db $0d, $04, $02, $13, $0c, $10

	rlca
	nop
	inc de
	db $11

	db $11

	ld b, $04
	ld c, $0d

	db $ff, $05

	nop
	nop
	ld c, $11
	bit 6, a
	inc bc
	nop

	db $06, $0e, $0a, $13, $0e, $ad, $77, $10, $0b, $08

	nop
	nop
	rlca
	dec b
	or l
	ld [hl], a
	ld [bc], a
	ld [bc], a

	db $09

	nop
	ld b, $05
	ld a, [bc]
	cp a
	ld [hl], a
	ld [bc], a
	rlca

	db $0b, $09, $0c, $13, $11, $dd, $77, $0b, $0e, $1b

	nop
	inc c
	inc de
	ld de, $77ec
	ld [bc], a
	db $0e

	db $0c

	dec bc
	dec bc
	inc de
	ld de, $780d
	dec c
	inc c

	db $0e, $00, $00, $0a, $06, $95, $77, $02, $01, $0f, $0b, $00, $13, $02, $c7, $77
	db $0e, $00

	ld [de], a
	rlca
	ld b, $0b
	ld a, [bc]
	jr nz, jr_001_7802

	ld [$1a08], sp
	dec bc
	ld [$1113], sp
	inc h
	ld a, b
	inc c
	ld a, [bc]

	db $b6, $b2, $c6, $7f, $b7, $c0, $4e, $b3, $d8, $c6, $7f, $b7, $c0, $4e, $3d, $c2
	db $c6, $7f, $b2, $b2, $33, $bd, $50

	ld d, b

	db $c2, $b6, $b3, $4e, $bd, $c3, $d9, $50

	or a
	db $db
	cp b
	ld c, [hl]
	and b
	xor h
	adc l
	db $e3
	dec bc
	ld d, b
	jp z, $b2d4

	ld c, [hl]
	or l
	cp a
	or d
	ld d, b

	db $b5, $b6, $c8, $50

	db $d3
	pop bc
	db $d3
	ret


	ld d, b
	jp nz, $b732

	or [hl]
	rst $10
	ld c, [hl]
	cp e
	or d
	cp h
	ld [c], a
	or [hl]
	rst $10
	ld d, b

	db $c0, $c0, $b6, $b3, $7f, $34, $b3, $28, $4e, $54, $7f, $c6, $29, $d9, $50

	adc d
	sbc e
	jp hl


	ret c

	inc e
	db $e3
	and [hl]
	pop af
	ld a, a
	ld a, a
	ld a, a
	add e
	adc d
	db $dd
	push bc
	add hl, hl
	reti


	ld c, [hl]
	or d
	cp h
	db $dd
	push bc

jr_001_7802:
	add hl, hl
	reti


	ld a, a
	ld a, a
	ld a, a
	ld a, a
	ld a, a
	add $29
	reti


	ld d, b
	call nz, $b6d8
	or h
	reti


	ld c, [hl]
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
	add b
	xor h
	rst $20
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
	add [hl]
	xor l
	xor e
	adc l
	and [hl]
	ld d, b

	ld hl, wd6af
	set 6, [hl]
	ld a, $0f
	ld [wd0ea], a
	call $3130
	ld hl, wc3c1
	ld b, $01
	ld c, $06
	call $0374
	ld hl, wc3c0
	ld de, $786e
	call $0405
	ld hl, wc3c0
	ld de, wd2cb
	ld c, $83
	call $2fc4
	ld hl, wd6af
	res 6, [hl]
	ret


	db $7f, $7f, $7f, $7f, $7f, $7f, $f0, $50

	ld a, [wd6af]
	set 6, a
	ld [wd6af], a
	xor a
	ld [wd0f2], a
	ld a, $0e
	ld [wd0ea], a
	call $3130
	ld a, $03
	ld [wcc29], a
	ld a, $02
	ld [wcc28], a
	ld a, $01
	ld [wcc24], a
	ld a, $01
	ld [wcc25], a
	xor a
	ld [wcc26], a
	ld [wcc2a], a
	ld [wcc37], a
	ld a, [wd6af]
	res 6, a
	ld [wd6af], a
	call $3b08
	call $3c1c
	bit 0, a
	jr nz, jr_001_78c5

	bit 1, a
	jr z, jr_001_78c5

	ld a, $02
	ld [wd0f3], a
	jr jr_001_78d8

jr_001_78c5:
	ld a, $01
	ld [wd0f3], a
	ld a, [wcc26]
	ld [wd0f2], a
	ld b, a
	ld a, [wcc28]
	cp b
	jr z, jr_001_78d8

	ret


jr_001_78d8:
	ld a, $02
	ld [wd0f3], a
	ld a, [wcc26]
	ld [wd0f2], a
	scf
	ret


Jump_001_78e5:
	push hl
	ld a, [wd6af]
	set 6, a
	ld [wd6af], a
	xor a
	ld [wd0f2], a
	ld [wd0f3], a
	ld a, $03
	ld [wcc29], a
	ld a, $01
	ld [wcc28], a
	ld a, b
	ld [wcc24], a
	ld a, c
	ld [wcc25], a
	xor a
	ld [wcc2a], a
	ld [wcc37], a
	push hl
	ld hl, wd0f1
	bit 7, [hl]
	res 7, [hl]
	jr z, jr_001_7919

	inc a

jr_001_7919:
	ld [wcc26], a
	pop hl
	push hl
	push hl
	call Call_001_799f
	ld a, [wd0f1]
	ld hl, $79d2
	ld e, a
	ld d, $00
	ld a, $05

jr_001_792d:
	add hl, de
	dec a
	jr nz, jr_001_792d

	ld a, [hli]
	ld c, a
	ld a, [hli]
	ld b, a
	ld e, l
	ld d, h
	pop hl
	push de
	ld a, [wd0f1]
	cp $05
	jr nz, jr_001_7945

	call Call_001_58de
	jr jr_001_7948

jr_001_7945:
	call $03d2

jr_001_7948:
	call $0ebd
	pop hl
	ld a, [hli]
	and a
	ld bc, $0016
	jr z, jr_001_7956

	ld bc, $002a

jr_001_7956:
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	pop hl
	add hl, bc
	call $0405
	xor a
	ld [wd0f1], a
	ld hl, wd6af
	res 6, [hl]
	call $3b08
	pop hl
	bit 1, a
	jr nz, jr_001_7988

	ld a, [wcc26]
	ld [wd0f2], a
	and a
	jr nz, jr_001_7988

	ld a, $01
	ld [wd0f3], a
	ld c, $0f
	call $3781
	call Call_001_79b7
	and a
	ret


jr_001_7988:
	ld a, $01
	ld [wcc26], a
	ld [wd0f2], a
	ld a, $02
	ld [wd0f3], a
	ld c, $0f
	call $3781
	call Call_001_79b7
	scf
	ret


Call_001_799f:
	ld de, wcee4
	ld bc, $0506

jr_001_79a5:
	ld a, [hli]
	ld [de], a
	inc de
	dec c
	jr nz, jr_001_79a5

	push bc
	ld bc, $000e
	add hl, bc
	pop bc
	ld c, $06
	dec b
	jr nz, jr_001_79a5

	ret


Call_001_79b7:
	ld de, wcee4
	ld bc, $0506

jr_001_79bd:
	ld a, [de]
	inc de
	ld [hli], a
	dec c
	jr nz, jr_001_79bd

	push bc
	ld bc, $000e
	add hl, bc
	pop bc
	ld c, $06
	dec b
	jr nz, jr_001_79bd

	call $0ebd
	ret


	db $04, $03, $00, $01, $7a

	inc b
	inc bc
	nop
	ld [$047a], sp
	inc bc
	nop
	ld c, $7a
	ld b, $03
	nop
	ld bc, $047a
	inc bc
	nop
	ld d, $7a
	dec b
	inc bc
	nop
	dec e
	ld a, d

	db $05, $04, $01, $26, $7a

	inc b
	inc bc
	nop
	ld a, [$b279]
	or d
	or h
	ld c, [hl]
	jp z, Jump_001_50b2

	db $ca, $b2, $4e, $b2, $b2, $b4, $50

	or a
	ret nz

	ld c, [hl]
	add $bc
	ld d, b
	ret nc

	push bc
	ret nc

	ld c, [hl]
	sla [hl]
	cp h
	ld d, b
	or a
	ret nz

	ld c, [hl]
	sla [hl]
	cp h
	ld d, b
	cp d
	or e
	or [hl]
	sbc $4e
	call nc, wd9d2
	ld d, b

	db $b1, $2d, $b9, $d9, $4e, $d4, $d2, $d9, $50

	xor a
	ld hl, wcd3d
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hl], a
	call Call_001_7aef
	ld a, [wcd41]
	and a
	jr nz, jr_001_7a50

	ld hl, wc487
	ld b, $05
	ld c, $07
	call $03d2
	call $0ebd
	jr jr_001_7aa4

jr_001_7a50:
	ld hl, wc487
	ld b, $05
	ld c, $07
	ld de, $ffd8

jr_001_7a5a:
	add hl, de
	inc b
	inc b
	dec a
	jr nz, jr_001_7a5a

	ld de, $ffec
	add hl, de
	inc b
	call $03d2
	call $0ebd
	ld hl, wc49d
	ld de, $ffd8
	ld a, [wcd41]

jr_001_7a74:
	add hl, de
	dec a
	jr nz, jr_001_7a74

	xor a
	ld [wcd41], a
	ld de, wcd3d

jr_001_7a7f:
	push hl
	ld hl, $7aad
	ld a, [de]
	and a
	jr z, jr_001_7aa3

	inc de
	ld b, a

jr_001_7a89:
	dec b
	jr z, jr_001_7a93

jr_001_7a8c:
	ld a, [hli]
	cp $50
	jr nz, jr_001_7a8c

	jr jr_001_7a89

jr_001_7a93:
	ld b, h
	ld c, l
	pop hl
	push de
	ld d, b
	ld e, c
	call $0405
	ld bc, $0028
	add hl, bc
	pop de
	jr jr_001_7a7f

jr_001_7aa3:
	pop hl

jr_001_7aa4:
	ld hl, wc49d
	ld de, $7adc
	jp $0405


	or d
	or c
	or d
	daa
	ret c

	ld d, b
	cp a
	rst $10
	db $dd
	call nz, Call_001_503c
	ld d, b
	push bc
	ret nc

	ret


	ret c

	ld d, b
	or [hl]
	or d
	ret c

	or a
	ld d, b
	sbc e
	and l
	xor h
	adc e
	xor [hl]
	ld d, b
	or c
	push bc
	db $dd
	adc $d9
	ld d, b
	sub d
	and a
	ld b, e
	db $e3
	sub e
	ld d, b
	adc a
	sbc l
	add hl, bc
	or e
	ret nc

	ld d, b
	jp nz, $bbd6

	db $dd
	ret nc

	reti


	ld c, [hl]
	push bc
	rst $10
	dec sp
	or [hl]
	or h
	ld c, [hl]
	add [hl]
	xor l
	xor e
	adc l
	and [hl]
	ld d, b

Call_001_7aef:
	ld a, [wcf79]
	ld hl, wd133
	ld bc, $002c
	call $3ad1
	ld d, h
	ld e, l
	ld c, $05
	ld hl, wcd3d

jr_001_7b02:
	push hl

jr_001_7b03:
	dec c
	jr z, jr_001_7b26

	ld a, [de]
	and a
	jr z, jr_001_7b26

	ld b, a
	inc de
	ld hl, $7b28

jr_001_7b0f:
	ld a, [hli]
	cp $ff
	jr z, jr_001_7b03

	cp b
	jr z, jr_001_7b1a

	inc hl
	jr jr_001_7b0f

jr_001_7b1a:
	ld a, [hl]
	pop hl
	ld [hli], a
	ld a, [wcd41]
	inc a
	ld [wcd41], a
	jr jr_001_7b02

jr_001_7b26:
	pop hl
	ret


	rrca
	ld bc, $0213
	or h
	inc bc
	add hl, sp
	inc b
	ld b, [hl]
	dec b
	sub h
	ld b, $5b
	rlca
	ld h, h
	ld [$0987], sp
	rst $38
	ld hl, wd0b4
	ld a, [hl]
	srl a
	ld [hli], a
	ld a, [hl]
	rr a
	ld [hld], a
	or [hl]
	jr nz, jr_001_7b4b

	inc hl
	inc [hl]

jr_001_7b4b:
	ld hl, wcffc
	ld de, wd00a
	ldh a, [$f3]
	and a
	jp z, Jump_001_7b5d

	ld hl, wcfcd
	ld de, wcfdb

Jump_001_7b5d:
	ld bc, wcee7
	ld a, [hli]
	ld [bc], a
	ld a, [hl]
	dec bc
	ld [bc], a
	ld a, [de]
	dec bc
	ld [bc], a
	inc de
	ld a, [de]
	dec bc
	ld [bc], a
	ld a, [wd0b5]
	ld b, [hl]
	add b
	ld [hld], a
	ld [wcee8], a
	ld a, [wd0b4]
	ld b, [hl]
	adc b
	ld [hli], a
	ld [wcee9], a
	jr c, jr_001_7b8c

	ld a, [hld]
	ld b, a
	ld a, [de]
	dec de
	sub b
	ld a, [hli]
	ld b, a
	ld a, [de]
	inc de
	sbc b
	jr nc, jr_001_7b98

jr_001_7b8c:
	ld a, [de]
	ld [hld], a
	ld [wcee8], a
	dec de
	ld a, [de]
	ld [hli], a
	ld [wcee9], a
	inc de

jr_001_7b98:
	ldh a, [$f3]
	and a
	ld hl, wc45e
	ld a, $01
	jr z, jr_001_7ba6

	ld hl, wc3ca
	xor a

jr_001_7ba6:
	ld [wcf7b], a
	ld a, $48
	call $3e9d
	ld a, $00
	call $3e9d
	ld a, $49
	call $3e9d
	ld hl, $4ea1
	ld b, $0f
	call $3620
	ld hl, $7bd8
	ldh a, [$f3]
	and a
	ld a, [wcfba]
	jr z, jr_001_7bce

	ld a, [wcfb4]

jr_001_7bce:
	cp $08
	jr nz, jr_001_7bd5

	ld hl, $7beb

jr_001_7bd5:
	jp $3c79


	nop
	ld e, c
	or [hl]
	rst $10
	ld c, a
	ret nz

	or d
	ret c

	ld [c], a
	cp b
	db $dd
	ld a, a
	cp l
	or d
	call nz, wc0df
	rst $20
	ld e, b
	nop
	ld e, c
	ret


	ld c, a
	push de
	jp nc, Jump_001_7fdd

	cp b
	rst $18
	ret nz

	rst $20
	ld e, b

	ld hl, wd6af
	set 6, [hl]
	ld a, $04
	ld [wd093], a
	call $3761
	xor a
	ld [wcc2c], a
	ld [wccd3], a
	ld a, [wcd5b]
	bit 3, a
	jr nz, jr_001_7c1e

	ld a, $99
	call $0e45
	ld hl, $7e2d
	call $3c79

Jump_001_7c1e:
jr_001_7c1e:
	ld a, [wccd3]
	ld [wcc26], a
	ld hl, wcd5b
	set 5, [hl]
	call $374a
	ld hl, wc3a0
	ld b, $08
	ld c, $0a
	call $03d2
	call $0ebd
	ld hl, wc3ca
	ld de, $7e07
	call $0405
	ld hl, wcc24
	ld a, $02
	ld [hli], a
	dec a
	ld [hli], a
	inc hl
	inc hl
	ld a, $03
	ld [hli], a
	ld a, $03
	ld [hli], a
	xor a
	ld [hl], a
	ld hl, wcc36
	ld [hli], a
	ld [hl], a
	ld [wcc2f], a
	ld hl, $7e3f
	call $3c79
	call $3b08
	bit 1, a
	jp nz, Jump_001_7c7f

	call $3c1c
	ld a, [wcc26]
	ld [wccd3], a
	and a
	jp z, Jump_001_7d24

	dec a
	jp z, Jump_001_7ca7

	dec a
	jp z, Jump_001_7da1

Jump_001_7c7f:
	ld a, [wcd5b]
	bit 3, a
	jr nz, jr_001_7c8e

	ld a, $9a
	call $0e45
	call $3790

jr_001_7c8e:
	ld hl, wcd5b
	res 5, [hl]
	call $374a
	xor a
	ld [wcc36], a
	ld [wcc2c], a
	ld hl, wd6af
	res 6, [hl]
	xor a
	ld [wcc3c], a
	ret


Jump_001_7ca7:
	xor a
	ld [wcc26], a
	ld [wcc36], a
	ld a, [wd2a1]
	and a
	jr nz, jr_001_7cbd

	ld hl, $7e79
	call $3c79
	jp Jump_001_7c1e


Jump_001_7cbd:
jr_001_7cbd:
	ld hl, $7e4a
	call $3c79
	ld hl, wd2a1
	ld a, l
	ld [wcf72], a
	ld a, h
	ld [wcf73], a
	xor a
	ld [wcf7a], a
	ld a, $03
	ld [wcf7b], a
	call $16f7
	jp c, Jump_001_7c1e

	call $3121
	ld a, $01
	ld [wcf7d], a
	ld a, [wd0e9]
	and a
	jr nz, jr_001_7cf9

	ld hl, $7e57
	call $3c79
	call $186a
	cp $ff
	jp z, Jump_001_7cbd

jr_001_7cf9:
	ld hl, wd4b9
	call $16e0
	jr c, jr_001_7d0a

	ld hl, $7e8f
	call $3c79
	jp Jump_001_7cbd


jr_001_7d0a:
	ld hl, wd2a1
	call $16cc
	call $3790
	ld a, $ab
	call $0e45
	call $3790
	ld hl, $7e64
	call $3c79
	jp Jump_001_7cbd


Jump_001_7d24:
	xor a
	ld [wcc26], a
	ld [wcc36], a
	ld a, [wd4b9]
	and a
	jr nz, jr_001_7d3a

	ld hl, $7edb
	call $3c79
	jp Jump_001_7c1e


Jump_001_7d3a:
jr_001_7d3a:
	ld hl, $7ea9
	call $3c79
	ld hl, wd4b9
	ld a, l
	ld [wcf72], a
	ld a, h
	ld [wcf73], a
	xor a
	ld [wcf7a], a
	ld a, $03
	ld [wcf7b], a
	call $16f7
	jp c, Jump_001_7c1e

	call $3121
	ld a, $01
	ld [wcf7d], a
	ld a, [wd0e9]
	and a
	jr nz, jr_001_7d76

	ld hl, $7eb7
	call $3c79
	call $186a
	cp $ff
	jp z, Jump_001_7d3a

jr_001_7d76:
	ld hl, wd2a1
	call $16e0
	jr c, jr_001_7d87

	ld hl, $7eea
	call $3c79
	jp Jump_001_7d3a


jr_001_7d87:
	ld hl, wd4b9
	call $16cc
	call $3790
	ld a, $ab
	call $0e45
	call $3790
	ld hl, $7ec5
	call $3c79
	jp Jump_001_7d3a


Jump_001_7da1:
	xor a
	ld [wcc26], a
	ld [wcc36], a
	ld a, [wd4b9]
	and a
	jr nz, jr_001_7db7

	ld hl, $7edb
	call $3c79
	jp Jump_001_7c1e


Jump_001_7db7:
jr_001_7db7:
	ld hl, $7f01
	call $3c79
	ld hl, wd4b9
	ld a, l
	ld [wcf72], a
	ld a, h
	ld [wcf73], a
	xor a
	ld [wcf7a], a
	ld a, $03
	ld [wcf7b], a
	push hl
	call $16f7
	pop hl
	jp c, Jump_001_7c1e

	push hl
	call $3121
	pop hl
	ld a, $01
	ld [wcf7d], a
	ld a, [wd0e9]
	and a
	jr nz, jr_001_7e01

	ld a, [wcf78]
	call $1b55
	jr c, jr_001_7e01

	push hl
	ld hl, $7f0d
	call $3c79
	call $186a
	pop hl
	cp $ff
	jp z, Jump_001_7db7

jr_001_7e01:
	call $310c
	jp Jump_001_7db7


	db $34, $b3, $28, $dd, $7f, $cb, $b7, $30, $bd, $4e, $34, $b3, $28, $dd, $7f, $b1
	db $2d, $b9, $d9, $4e, $34, $b3, $28, $dd, $7f, $bd, $c3, $d9, $4e, $8c, $81, $ac
	db $90, $dd, $7f, $b7, $d9, $50, $00, $52, $ca, $4f, $5b, $c9, $7f, $8c, $81, $ac
	db $90, $dd, $7f, $b2, $da, $c0, $e7, $58, $00, $c5, $c6, $dd, $7f, $bc, $cf, $bd
	db $b6, $e6, $57

	nop
	push bc
	add $dd
	ld a, a
	or c
	dec l
	cp c
	rst $08
	cp l
	or [hl]
	and $57
	nop
	or d
	cp b
	jp nz, $b17f

	dec l
	cp c
	rst $08
	cp l
	or [hl]

jr_001_7e62:
	and $57
	nop
	ld e, e
	jp nz, $bcb3

	sbc $33
	ld c, a
	ld d, b
	ld bc, wcd68
	nop
	db $dd
	ld a, a
	or c
	dec l
	cp c
	ret nz

	rst $20
	ld e, b
	nop
	or c
	dec l
	cp c
	rst $10
	jp c, $7fd9

	inc [hl]
	or e
	jr z, jr_001_7e62

	ld c, a
	db $d3
	rst $18
	jp wcfb2


	cp [hl]
	sbc $e7
	ld e, b
	nop
	inc [hl]
	or e
	jr z, @+$28

	ld a, a
	or d
	rst $18
	ld b, h
	or d
	inc sp
	cp l
	ld c, a
	db $d3
	or e
	ld a, a
	or c
	dec l
	cp c
	rst $10
	jp c, $becf

	sbc $e7
	ld e, b

	db $00, $c5, $c6, $dd, $7f, $cb, $b7, $30, $bc, $cf, $bd, $b6, $e6, $57, $00, $b2
	db $b8, $c2, $7f, $cb, $b7, $30, $bc, $cf, $bd, $b6, $e6, $57, $00, $5b, $c2, $b3
	db $bc, $de, $33, $4f, $50, $01, $68, $cd, $00, $dd, $7f, $cb, $b7, $30, $bc, $c0
	db $e7, $58, $00, $c5, $c6, $d3, $7f, $b1, $2d, $b9, $c3, $b2, $cf, $be, $de, $e7
	db $58

	nop
	inc [hl]
	or e
	jr z, @+$28

	ld a, a
	or d
	rst $18
	ld b, h
	or d
	inc sp
	cp l
	ld c, a
	db $d3
	or e
	ld a, a
	db $d3
	jp $becf


	sbc $e7
	ld e, b
	nop
	push bc
	add $dd
	ld a, a
	cp l
	jp $bdcf


	or [hl]
	and $57
	nop
	or d
	cp b
	jp nz, $bd7f

	jp $bdcf


	or [hl]
	and $57
	ld hl, wd123
	ld a, [wcf7c]
	and a
	jr z, jr_001_7f25

	ld hl, wd9b2

jr_001_7f25:
	ld a, [hl]
	dec a
	ld [hli], a
	ld a, [wcf79]
	ld c, a
	ld b, $00
	add hl, bc
	ld e, l
	ld d, h
	inc de

jr_001_7f32:
	ld a, [de]
	inc de
	ld [hli], a
	inc a
	jr nz, jr_001_7f32

	ld hl, wd233
	ld d, $05
	ld a, [wcf7c]
	and a
	jr z, jr_001_7f48

	ld hl, wddb0
	ld d, $1d

jr_001_7f48:
	ld a, [wcf79]
	call $3ac7
	ld a, [wcf79]
	cp d
	jr nz, jr_001_7f57

	ld [hl], $ff
	ret


jr_001_7f57:
	ld d, h
	ld e, l
	ld bc, $0006
	add hl, bc
	ld bc, wd257
	ld a, [wcf7c]
	and a
	jr z, jr_001_7f69

	ld bc, wde64

jr_001_7f69:
	call $395d
	ld hl, wd12b
	ld bc, $002c
	ld a, [wcf7c]
	and a
	jr z, jr_001_7f7e

	ld hl, wd9d2
	ld bc, $0021

jr_001_7f7e:
	ld a, [wcf79]
	call $3ad1
	ld d, h
	ld e, l
	ld a, [wcf7c]
	and a
	jr z, jr_001_7f95

	ld bc, $0021
	add hl, bc
	ld bc, wddb0
	jr jr_001_7f9c

jr_001_7f95:
	ld bc, $002c
	add hl, bc
	ld bc, wd233

jr_001_7f9c:
	call $395d
	ld hl, wd257
	ld a, [wcf7c]
	and a
	jr z, jr_001_7fab

	ld hl, wde64

jr_001_7fab:
	ld bc, $0006
	ld a, [wcf79]
	call $3ad1
	ld d, h
	ld e, l
	ld bc, $0006
	add hl, bc
	ld bc, wd27b
	ld a, [wcf7c]
	and a
	jr z, jr_001_7fc6

	ld bc, wdf18

jr_001_7fc6:
	jp $395d


	ld hl, wd6af
	set 6, [hl]
	ld a, $3d
	call $3e9d
	ld hl, wd6af
	res 6, [hl]
	call $1b86
	ld c, $0a

Jump_001_7fdd:
	call $3781
	ld a, $3a
	call $3e9d
	ld a, [wd0e3]
	dec a
	ld c, a
	ld b, $01
	ld hl, wd28e
	ld a, $10
	call $3e9d
	ld a, $01
	ld [wcc3c], a
	ret


	sub $cb
	or [hl]
	call $1b86
