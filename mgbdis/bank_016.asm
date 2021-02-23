; Disassembly of "pokemon-red-jp.gb"

SECTION "ROM Bank $016", ROMX[$4000], BANK[$16]

	jr nz, jr_016_4012

	ld bc, $0c02
	dec c
	dec c
	ld hl, $0504
	rlca
	rlca
	ld [hli], a
	inc hl
	ld [$0f0f], sp
	rrca

jr_016_4012:
	rrca
	rrca
	dec de
	ld c, $0a
	dec bc
	ld c, $0f
	rrca
	ld c, $00
	ld [de], a
	ld a, [bc]
	sub l
	ld b, b
	sbc c
	ld d, b
	add b
	ld d, b
	inc c
	ld a, [bc]
	add $4b
	add sp, -$3a
	db $10
	inc d
	inc hl
	ld a, [bc]
	cp l
	ret z

	dec b
	ld b, c
	ld c, d
	db $38, $c8
	db $10
	inc d
	nop
	ld a, [bc]
	inc bc
	rst $00
	ld a, $40
	rrca
	inc b
	ld bc, $0209
	ld c, c
	ld bc, $020a
	ld c, c
	rlca
	ld a, [bc]
	nop
	ld c, c
	dec c
	ld de, $4a00
	ld bc, $130f
	rlca
	ld b, $07
	add hl, de
	ld c, $ff
	db $d3
	ld b, c
	call $0604
	add hl, de
	rrca
	rst $38
	jp nc, wce42

	ld [bc], a
	inc b
	inc de
	inc b
	rst $38
	db $d3
	ld b, e
	jp z, $070a

	inc hl
	rrca
	rst $38
	jp nc, wcd44

	dec b
	ld b, $22
	rrca
	rst $38
	jp nc, wce45

	inc bc
	inc b
	ld e, $17
	rst $38
	jp nc, wca46

	dec bc
	db $fd
	add $01
	add hl, bc
	cp $c6
	ld bc, $2e0a
	rst $00
	rlca
	ld a, [bc]
	ld h, c
	rst $00
	dec c
	ld de, $7474
	ld [hl], h
	ld a, [bc]
	ld c, l
	ld c, l
	ld a, [bc]
	ld [hl], h
	ld [hl], h
	ld [hl], h
	ld d, c
	ld d, c
	ld d, c
	ld d, c
	jr nz, jr_016_40b2

	ld hl, $5151
	ld d, c
	ld [hl], h
	ld [hl], h
	ld [hl], h
	ld a, [bc]
	ld l, b
	ld a, a
	ld l, c
	ld [hl], h
	ld [hl], h

jr_016_40b2:
	ld [hl], h
	rlca
	cpl
	rlca
	rlca
	scf
	ld a, [hld]
	ld a, [hl]
	rlca
	cpl
	rlca
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
	rlca
	rlca
	rlca
	cpl
	rlca
	rlca
	rlca
	rlca
	jr nz, @+$23

	ld sp, $3131
	ld sp, $3131
	ld sp, $7c31
	ld a, [hl]
	dec bc
	dec bc
	ld sp, $0b0b
	dec bc
	dec bc
	ld sp, $0831
	dec bc
	dec bc
	ld sp, $0b0b
	dec bc
	dec bc
	dec bc
	dec bc
	dec bc
	dec bc
	dec bc
	ld sp, $0b0b
	dec bc
	dec bc
	dec bc
	dec bc
	dec bc
	dec bc
	dec bc
	ld sp, $3131
	ld sp, $3131
	ld sp, $0b0b
	dec bc
	dec bc
	dec bc
	dec bc
	dec bc
	dec bc
	dec bc
	ld sp, $1d0b
	rra
	rra
	rra
	rra
	rra
	ld e, $0b
	ld sp, $650b
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld h, h
	dec bc
	ld sp, $510b
	ld h, e
	ld a, [bc]
	ld a, [bc]
	ld sp, $3131
	ld sp, $0b31
	ld a, [bc]
	ld c, l
	ld d, d
	ld d, d
	ld sp, $0b0a
	dec bc
	dec bc
	dec bc
	rra
	rra
	rra
	ld l, d
	ld sp, $5162
	ld d, c
	ld d, c
	ld d, c
	ld b, e
	ld b, e
	ld b, e
	add hl, de
	ld sp, $0a4e
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	nop
	add hl, bc
	ld e, $e2
	ld b, c
	rlca
	ld d, e
	xor $52
	inc bc
	ld a, [bc]
	cp l
	ld c, d
	add sp, -$3a
	rrca
	inc d
	ld [$1627], sp
	rst $00
	inc b
	or c
	ld b, b
	ld [hl], l
	rst $00
	add hl, bc
	ld a, [bc]
	nop
	nop
	ld sp, hl
	add $6b
	ld b, c
	inc l
	dec b
	add hl, bc
	ld bc, $4f00
	ld a, [bc]
	ld bc, $4f01
	add hl, bc
	ld [$4f02], sp
	ld a, [bc]
	ld [$4f03], sp
	inc bc
	dec c
	nop
	ld d, b
	ld bc, $1103
	ld a, [bc]
	add hl, bc
	inc c
	add hl, bc
	inc c
	rst $38
	db $d3
	ld b, c
	ret nc

	inc bc
	dec bc
	dec c
	ld de, wd1ff
	ld b, d
	reti


	dec b
	inc c
	ld a, [bc]
	ld l, $ff
	pop de
	ld b, e
	ret nc

	inc b
	ld b, $07
	ld e, $ff
	jp nc, wcb44

	dec c
	inc c
	ld [$ff1e], sp
	db $d3
	ld b, l
	ret nc

	dec b
	ld b, $09
	ld e, $ff
	jp nc, wcb46

	ld c, $06
	ld a, [bc]
	ld e, $ff
	db $d3
	ld b, a
	rrc a
	dec bc
	ld de, $ff32
	ret nc

	ld c, b
	reti


	rlca
	ld b, $10
	scf
	rst $38
	jp nc, wcb49

	db $10
	sbc l
	rst $00
	add hl, bc
	ld bc, wc7c1
	ld a, [bc]
	ld bc, wc7a1
	add hl, bc
	ld [wc7c5], sp
	ld a, [bc]
	ld [wc737], sp
	inc bc
	dec c
	inc de
	inc de
	jr z, jr_016_4212

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
	dec h
	jr z, jr_016_422b

	inc de
	inc de
	inc h
	ld d, a
	ld d, a
	dec h
	ld [bc], a
	inc bc
	ld [$1a1a], sp
	ld c, [hl]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]

jr_016_4212:
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld c, l
	inc de
	inc de
	rrca
	rrca
	jr z, jr_016_4247

	inc de
	inc de
	ld c, [hl]
	ld bc, $0101
	ld bc, $4d01
	ld sp, $4e31
	ld a, [bc]

jr_016_422b:
	ld c, c
	inc hl
	inc hl
	inc hl
	inc hl
	inc hl
	inc hl
	inc hl
	ld c, b
	ld a, [bc]
	ld c, l
	inc de
	ld h, d
	ld [hl], h
	ld [hl], h
	jr z, @+$2b

	inc de
	inc de
	ld c, [hl]
	ld bc, $7474
	ld [hl], h
	ld bc, $1a4d
	ld a, [de]

jr_016_4247:
	ld c, [hl]
	ld a, [bc]
	daa
	ld a, [bc]
	ld d, d
	ld d, d
	ld d, d
	ld d, d
	ld d, d
	ld a, [bc]
	daa
	ld a, [bc]
	ld c, l
	inc de
	ld c, [hl]
	ld a, [bc]
	ld a, [bc]
	inc h
	dec h
	ld bc, $0d20
	ld hl, $5151
	ld [hl], h
	ld bc, $314d
	ld sp, $0a4e
	daa
	ld c, l
	ld [hl], h
	dec bc
	dec bc
	dec bc
	ld [hl], h
	ld c, [hl]
	daa
	ld a, [bc]
	ld c, l
	inc de
	ld c, [hl]
	ld a, [bc]
	ld bc, $7777
	ld [hl], a
	scf
	ld a, l
	ld a, [hl]
	ld [hl], a
	ld bc, $0101
	ld c, l
	ld h, c
	ld h, c
	ld a, [bc]
	ld a, [bc]
	daa
	ld c, l
	ld [hl], h
	dec bc
	dec bc
	dec bc
	ld [hl], h
	dec [hl]
	daa
	ld a, [bc]
	ld c, l
	inc de
	ld c, [hl]
	ld a, [bc]
	ld e, l
	ld a, $3b
	inc de
	inc de
	ld c, [hl]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld e, l
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	daa
	dec [hl]
	ld [hl], h
	dec bc
	dec bc
	dec bc
	ld [hl], h
	ld c, [hl]
	daa
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	daa
	jr z, jr_016_42dd

	inc de
	inc de
	ld c, [hl]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld b, h
	inc hl
	inc hl
	inc hl
	inc hl
	inc hl
	ld b, l
	ld c, l
	ld [hl], h
	ld [hl], h
	ld [hl], h
	ld [hl], h
	ld [hl], h
	ld c, [hl]
	ld b, h
	inc hl
	inc hl
	inc hl
	inc hl
	inc hl
	ld b, l
	jr z, jr_016_42fb

	inc de
	inc de
	ld a, $3f
	ccf
	ccf
	ccf
	ccf
	ccf
	ccf
	ccf

jr_016_42dd:
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
	inc l
	inc l
	nop
	inc h
	ld a, [bc]
	ld [hl], d
	ld b, e
	jr z, jr_016_434e

	rrca
	ld d, a
	ld b, $04

jr_016_42fb:
	or c
	ld b, b
	ld e, e
	ret


	ld a, [bc]
	ld a, [bc]
	nop
	nop
	ld sp, hl
	add $14
	add hl, sp

Jump_016_4307:
	ld b, a
	jr @-$37

	add hl, bc
	ld e, $00
	dec sp
	ld a, [hli]
	rst $00
	ld [de], a
	ld b, e
	inc l
	inc b
	inc de
	dec bc
	nop
	ld d, c
	ld de, $0008
	ld d, d
	dec [hl]
	ld [$5202], sp
	daa
	ld b, $00
	ld d, e
	inc b
	inc de
	rlca
	rlca
	inc de
	inc c
	ld [$0937], sp
	add hl, bc
	add hl, hl
	dec b
	ld a, [bc]
	ld b, $0c
	jr nc, jr_016_4343

	rst $38
	jp nc, wcf41

	ld bc, $3d0e
	rlca
	rst $38
	pop de
	ld b, d
	pop de
	rlca
	inc c

jr_016_4343:
	ld b, h
	ld [de], a
	rst $38
	jp nc, wcf43

	ld [bc], a
	ld b, $1d
	dec bc
	rst $38

jr_016_434e:
	jp nc, wce44

	rlca
	ld c, $41
	rlca
	rst $38
	ret nc

	ld b, l
	pop de
	ld [$3a06], sp
	dec bc
	rst $38
	ret nc

	ld b, [hl]
	adc $08
	adc [hl]
	rst $00
	inc de
	dec bc
	ld a, l
	rst $00
	ld de, $9d08
	ret z

	dec [hl]
	ld [wc82c], sp
	daa
	ld b, $57
	ld d, a
	ld d, a
	ld d, a
	ld d, a
	ld d, a
	ld d, a
	ld d, a
	ld d, a
	ld a, [hli]
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	jr z, jr_016_43e8

	ld bc, $6161
	ld h, c
	ld h, c
	ld h, c
	ld h, c
	ld h, l
	jr z, jr_016_4392

	ld a, [bc]

jr_016_4392:
	dec bc
	dec bc
	dec bc
	dec bc
	dec bc
	ld c, l
	ld h, l
	jr z, jr_016_439c

	ld a, [bc]

jr_016_439c:
	dec bc
	dec bc
	dec bc
	dec bc
	dec bc
	ld c, l
	ld h, l
	jr z, @+$3d

	rlca
	rlca
	rlca
	rlca
	rlca
	cpl
	ld c, a
	ld h, l
	jr z, jr_016_43d8

	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld c, l
	ld h, l
	jr z, jr_016_43e5

	ccf
	ccf
	ccf
	dec sp
	ld a, [bc]
	ld a, [bc]
	ld c, l
	ld h, l
	jr z, jr_016_43ee

	ld d, a
	ld d, a
	ld d, a
	ld [hl], b
	jr nz, @+$23

	ld c, l
	ld h, l
	jr z, jr_016_43f6

	ld sp, $5677
	dec [hl]
	ld a, h
	ld [hl], d
	ld c, l
	ld h, l
	jr z, jr_016_4400

	ld a, [bc]

jr_016_43d8:
	ld a, [bc]
	ld a, [bc]
	dec [hl]
	ld d, l
	ld d, l
	ld c, l
	ld h, l
	jr z, jr_016_440a

	ld d, l
	ld d, l
	ld d, l
	dec [hl]

jr_016_43e5:
	ld a, [bc]
	ld a, [bc]
	ld c, l

jr_016_43e8:
	ld h, l
	jr z, jr_016_4414

	ld d, l
	ld d, l
	ld d, l

jr_016_43ee:
	dec [hl]
	ld a, [bc]
	ld a, [bc]
	ld c, l
	ld h, l
	jr z, @+$2b

	ld d, l

jr_016_43f6:
	ld d, l
	ld d, l
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld c, l
	ld h, l
	jr z, jr_016_4428

	ld a, [bc]

jr_016_4400:
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld c, a
	ld h, l
	jr z, jr_016_4435

	ccf

jr_016_440a:
	ccf
	ccf
	ccf
	ccf
	dec sp
	ld a, e
	ld h, l
	jr z, jr_016_443e

	ld d, a

jr_016_4414:
	ld d, a
	ld d, a
	ld d, a
	ld a, [hli]
	add hl, hl
	ld a, e
	ld h, l
	jr z, jr_016_4446

	jr nz, @+$0f

	dec c
	ld hl, $2928
	ld a, e
	ld h, l
	jr z, jr_016_4450

	ld l, b

jr_016_4428:
	ld a, a
	ld a, a
	ld l, c
	jr z, jr_016_4456

	ld a, e
	ld h, l
	jr z, jr_016_445a

	scf
	ld a, l
	ld a, [hld]
	ld a, [hl]

jr_016_4435:
	jr z, jr_016_4460

	ld a, e
	ld h, l
	jr z, jr_016_4464

	ld a, e
	ld a, c
	ld a, e

jr_016_443e:
	ld a, e
	jr z, jr_016_446a

	ld a, e
	ld h, l
	jr z, jr_016_446e

	ld a, e

jr_016_4446:
	ld a, e
	ld a, e
	ld a, e
	inc h
	dec h
	ld a, e
	ld h, l
	jr z, jr_016_4478

	ld a, e

jr_016_4450:
	ld a, e
	ld a, e
	ld a, e
	ld a, e
	ld a, e
	ld a, e

jr_016_4456:
	ld h, l
	jr z, @+$2b

	rra

jr_016_445a:
	rra
	rra
	rra
	rra
	rra
	rra

jr_016_4460:
	ld l, $28
	inc l
	ccf

jr_016_4464:
	ccf
	ccf
	ccf
	ccf
	ccf
	ccf

jr_016_446a:
	ccf
	inc l
	inc l
	inc l

jr_016_446e:
	inc l
	inc l
	inc l
	inc l
	dec hl
	ld d, a
	ld d, a
	ld a, [hli]
	dec hl
	ld d, a

jr_016_4478:
	ld d, a
	ld d, a
	ld b, $57
	dec h
	ld a, [bc]
	ld c, h
	jr z, jr_016_44aa

	ld sp, $3131
	ld [$3131], sp
	ld a, [bc]
	ld a, [bc]
	jr z, jr_016_44b4

	ld sp, $3131
	ld sp, $3b3e
	cpl
	rlca
	jr z, jr_016_44be

	ld a, [de]
	ld a, $3f
	ccf
	inc l
	add hl, hl
	ld a, [bc]
	ld a, [bc]
	jr z, jr_016_44c8

	ld a, d
	inc h
	ld d, a
	ld d, a
	ld d, a
	dec h
	rlca
	cpl
	jr z, jr_016_44d2

	ld a, [bc]

jr_016_44aa:
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, d
	jr z, jr_016_44df

	ccf

jr_016_44b4:
	ccf
	ccf
	dec sp
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	jr z, jr_016_44e9

	inc l

jr_016_44be:
	dec hl
	ld d, a
	dec h
	cpl
	inc c
	dec c
	ld c, $28
	inc l
	inc l

jr_016_44c8:
	add hl, hl
	ld a, d
	ld a, d
	ld a, d
	ld [hl], l
	ld [hl], c
	db $76
	jr z, jr_016_44fd

	inc l

jr_016_44d2:
	add hl, hl
	ld a, d
	ld sp, $683e
	ld a, a
	ld l, c
	inc l
	nop
	add hl, bc
	ld e, $7b
	ld b, l

Call_016_44df:
jr_016_44df:
	db $e3
	ld e, c
	jp z, Function_0359

	dec b
	ld h, h
	ld c, d
	add sp, -$3a

jr_016_44e9:
	rrca
	inc d
	ld [$1627], sp
	rst $00
	rla
	inc e
	ld c, b
	add hl, bc
	rst $00
	rrca
	ld a, [bc]
	ld [hl], $00
	ld sp, hl
	add $fc
	ld b, h
	rrca

jr_016_44fd:
	dec b
	ld [$0031], sp
	ld d, h
	add hl, bc
	ld sp, $5401
	ld [$023a], sp
	ld d, h
	add hl, bc
	ld a, [hld]
	inc bc
	ld d, h
	dec b
	inc b
	nop
	ld d, l
	ld bc, $0105
	dec bc
	ld a, [bc]
	dec bc
	ld [de], a
	ld c, $ff
	ret nc

	ld b, c
	reti


	ld bc, $0d0b
	ld e, $ff
	ret nc

	ld b, d
	reti


	ld [bc], a
	inc b
	add hl, bc
	ld de, wd2ff
	ld b, e
	ret


	add hl, bc
	inc c
	rrca
	jr z, @+$01

	ret nc

	ld b, h
	call nc, $0402
	ld [$ff1a], sp
	pop de
	ld b, l
	ret


	ld a, [bc]
	dec bc
	dec bc
	ld sp, wd0ff
	ld b, [hl]
	reti


	inc bc
	dec bc
	rlca
	dec h
	rst $38
	pop de
	ld b, a
	reti


	inc b
	inc b
	add hl, bc
	cpl
	rst $38
	db $d3
	ld c, b
	ret


	dec bc
	inc c
	inc d
	ld sp, wd2ff
	ld c, c
	call nc, $0403
	db $10
	ld a, [de]
	rst $38
	pop de
	ld c, d
	ret


	inc c
	or l
	rst $00
	ld [$b531], sp
	rst $00
	add hl, bc
	ld sp, wc7ba
	ld [$ba3a], sp
	rst $00
	add hl, bc
	ld a, [hld]
	ld d, a
	rst $00
	dec b
	inc b
	ld sp, $3131
	ld sp, $496d
	inc hl
	inc hl
	inc hl
	inc hl
	inc hl
	ld c, b
	dec bc
	dec bc
	dec bc
	ld c, c
	inc hl
	inc hl
	inc hl
	inc hl
	ld c, b
	dec bc
	dec bc
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	rrca
	rrca
	ld sp, $3f3e
	dec sp
	ld l, l
	daa
	dec bc
	dec bc
	dec bc
	dec bc
	dec bc
	daa
	dec bc
	dec bc
	dec bc
	daa
	dec bc
	dec bc
	dec bc
	dec bc
	ld e, [hl]
	dec bc
	dec bc
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	rrca
	rrca
	ld d, [hl]
	inc h
	ld b, $25
	ld l, l
	daa
	dec bc
	dec bc
	dec bc
	dec bc
	dec bc
	daa
	dec bc
	dec bc
	dec bc
	daa
	dec bc
	dec bc
	dec bc
	dec bc
	dec bc
	dec bc
	dec bc
	ld a, [bc]
	ld c, h
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	rrca
	rrca
	ld sp, $3131
	ld sp, $2231
	dec bc
	dec bc
	ld c, c
	inc hl
	inc hl
	ld [hli], a
	dec bc
	dec bc
	dec bc
	ld h, $23
	inc hl
	ld c, b
	dec bc
	dec bc
	dec bc
	dec bc
	ld l, a
	ld l, a
	jr nz, jr_016_45fd

	dec c
	ld hl, $1f0f
	rra
	rra
	ld e, $6d
	daa
	dec bc
	dec bc
	daa
	dec bc

jr_016_45fd:
	dec bc
	daa
	dec bc
	dec bc
	dec bc
	daa
	dec bc
	dec bc
	daa
	dec bc
	dec bc
	dec bc
	ld bc, $0101
	scf
	ld a, l
	ld a, l
	ld a, [hl]
	ld a, [bc]
	ld b, e
	ld b, e
	ld b, e
	ld h, h
	ld l, l
	ld b, h
	inc hl
	inc hl
	ld b, l
	dec bc
	dec bc
	ld b, h
	inc hl
	inc hl
	inc hl
	ld [hli], a
	dec bc
	dec bc
	daa
	dec bc
	dec bc
	dec bc
	ld e, l
	ld l, h
	ld l, h
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	rrca
	rrca
	ld b, e
	ld b, e
	ld b, e
	ld h, h
	ld l, l
	dec bc
	dec bc
	dec bc
	dec bc
	dec bc
	dec bc
	dec bc
	dec bc
	dec bc
	dec bc
	daa
	dec bc
	dec bc
	daa
	dec bc
	dec bc
	dec bc
	daa
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	rrca
	rrca
	rrca
	rrca
	rrca
	rrca
	ld l, l
	ld e, l
	dec bc
	dec bc
	dec bc
	dec bc
	dec bc
	dec bc
	dec bc
	dec bc
	dec bc

jr_016_465c:
	ld h, $23
	inc hl
	ld [hli], a
	dec bc
	dec bc
	dec bc
	daa
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	rrca
	rrca
	rrca
	rrca
	rrca
	rrca
	rrca
	ld b, h
	inc hl
	inc hl
	inc hl
	inc hl
	inc hl
	inc hl
	inc hl
	inc hl
	inc hl
	ld b, l
	dec bc
	dec bc
	ld b, h
	inc hl
	inc hl
	inc hl
	ld b, l
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	rrca
	rrca
	nop
	ld [hl], $0a
	inc l
	ld b, a
	ld a, c
	ld e, [hl]
	rst $30
	ld e, l
	ld c, $04
	db $ed
	ld b, b
	db $eb
	add $0a
	ld a, [bc]
	ld de, $7900
	rst $00
	jr jr_016_465c

	ld c, b
	ld a, b
	jp z, $1e0d

	nop
	jr z, jr_016_46b5

	rst $00
	ld d, $96
	ld b, l
	ret z

	ret z

	add hl, bc
	ld e, $ca
	dec sp
	ld a, [hli]
	rst $00
	or [hl]

jr_016_46b5:
	ld b, [hl]
	ld b, e
	inc b
	rrca
	ld a, [bc]
	nop
	ld d, a
	rrca
	dec bc
	ld bc, $1557
	ld a, [bc]
	ld [bc], a
	ld d, a
	ld c, l
	dec bc
	nop
	cp l
	ld [bc], a
	dec c
	dec c
	dec bc
	ccf
	dec bc
	inc c
	ld a, [bc]
	ld b, e
	ld b, d
	ld c, $ff
	ret nc

	ld bc, $232f
	ld [de], a
	rst $38
	jp nc, wd642

	inc bc
	cpl
	dec hl
	add hl, bc
	rst $38
	pop de
	ld b, e
	sub $04
	rlca
	ld h, b
	rrca
	rst $38
	jp nc, wcd44

	add hl, bc
	inc c
	ld d, b
	ld [de], a
	rst $38
	pop de
	ld b, l
	call c, $2f02
	inc l
	db $10
	rst $38
	jp nc, wd646

	dec b
	cpl
	jr c, jr_016_470e

	rst $38
	db $d3
	ld b, a
	sub $06
	cpl
	ld e, e
	ld a, [bc]
	rst $38
	ret nc

	ld c, b
	sub $0b

jr_016_470e:
	dec a
	daa
	ld [de], a
	rst $38
	rst $38
	adc c
	ret c

	dec a
	ld e, l
	add hl, bc
	rst $38
	rst $38
	adc d
	dec h
	ld l, [hl]
	rst $00
	rrca
	ld a, [bc]
	ld l, [hl]
	rst $00
	rrca
	dec bc
	sbc [hl]
	rst $00
	dec d
	ld a, [bc]
	ld e, [hl]
	ret


	ld c, l
	dec bc
	inc l
	inc l
	inc l
	add hl, hl
	ld sp, $2c28
	inc l
	inc l
	inc l
	inc l
	dec hl
	ld d, a
	dec h
	ld sp, $5724
	ld d, a
	ld d, a
	ld d, a
	inc l
	add hl, hl
	ld b, e
	ld b, e
	ld d, h
	ld b, e
	ld b, e
	add hl, de
	ld b, e
	ld b, e
	inc l
	add hl, hl
	ld b, e
	ld b, e
	ld d, h
	ld b, e
	ld b, e
	add hl, de
	ld l, e
	ld l, e
	inc l
	add hl, hl
	ld b, e
	ld b, e
	ld d, h
	ld b, e
	ld b, e
	ld b, e

Jump_016_475c:
	ld b, e
	add hl, de
	inc l
	add hl, hl
	ld d, h
	ld d, h
	ld a, d
	ld d, h
	ld b, e
	ld b, e

Call_016_4766:
	ld b, e
	add hl, de
	inc l
	add hl, hl
	ld d, h
	ld a, b
	ld a, b
	ld d, h
	ld a, c
	ld d, h
	ld d, h
	add hl, de
	inc l
	add hl, hl
	ld d, h
	ld b, e
	ld b, e
	ld d, h
	ld a, b
	ld a, b
	ld a, b
	add hl, de
	inc l
	add hl, hl
	ld d, h
	ld b, e
	jr nz, jr_016_478f

	ld hl, $4343
	add hl, de
	inc l
	add hl, hl
	ld a, b
	ld b, e
	ld l, b
	ld a, a
	ld l, c
	ld b, e
	ld b, e

jr_016_478f:
	add hl, de
	inc l
	add hl, hl
	ld l, e
	ld l, e
	scf
	ld a, [hld]
	ld a, [hl]
	ld l, e
	ld l, e
	dec d
	inc l
	add hl, hl
	ld b, e
	ld b, e
	ld b, e
	ld d, h
	ld b, e
	ld b, e
	ld b, e
	add hl, de
	inc l
	add hl, hl
	ld b, e
	ld b, e
	ld b, e
	ld d, h
	ld b, e
	ld b, e
	ld b, e
	add hl, de
	inc l
	add hl, hl
	ld d, h
	ld d, h
	ld d, h
	ld a, d
	ld d, h
	ld d, h
	ld b, e
	add hl, de
	inc l
	add hl, hl
	ld a, b
	ld a, b
	ld a, b
	ld a, b
	ld a, b
	ld d, h
	ld b, e
	add hl, de
	inc l
	add hl, hl
	ld d, h
	ld b, e
	ld b, e
	ld d, h
	ld d, h
	ld d, h
	ld b, e
	add hl, de
	inc l
	add hl, hl
	ld d, h
	ld b, e
	ld b, e
	ld d, h
	ld a, b
	ld a, b
	ld b, e
	add hl, de
	inc l
	add hl, hl
	ld a, d
	ld d, h
	ld d, h
	ld d, h
	ld b, e
	ld d, h
	ld b, e
	add hl, de
	ld d, a
	dec h
	ld d, h
	ld a, b
	ld a, b
	ld a, b
	ld b, e
	ld d, h
	ld b, e
	add hl, de
	rrca
	rrca
	ld d, h
	ld b, e
	ld b, e
	ld b, e
	ld b, e
	ld a, b
	ld b, e
	add hl, de
	rrca
	rrca
	ld a, d
	ld d, h
	ld a, d
	ld d, h
	ld d, h
	ld d, h
	ld b, e
	add hl, de
	rrca
	rrca
	ld d, h
	ld a, b
	ld d, h
	ld a, b
	ld a, b
	ld a, b
	ld b, e
	add hl, de
	rrca
	rrca
	ld a, b
	ld b, e
	ld d, h
	ld d, h
	ld d, h
	ld b, e
	ld b, e
	add hl, de
	rrca
	rrca
	ld b, e
	ld b, e
	ld a, b
	ld a, b
	ld a, d
	ld d, h
	ld b, e
	add hl, de
	rrca
	rrca
	ld d, h
	ld d, h
	ld d, h
	ld b, e
	ld d, h
	ld a, b
	ld b, e
	add hl, de
	rrca
	rrca
	ld d, h
	ld a, b
	ld d, h
	ld b, e
	ld d, h
	ld d, h
	ld b, e
	add hl, de
	rrca
	rrca
	ld d, h
	ld b, e
	ld d, h
	ld d, h
	ld a, d
	ld d, h
	ld b, e
	add hl, de
	rrca
	rrca
	ld d, h
	ld b, e
	ld a, b
	ld a, b
	ld a, b
	ld a, b
	ld b, e
	add hl, de
	rrca
	rrca
	ld d, h
	ld d, h
	ld d, h
	ld a, d
	ld d, h
	ld d, h
	ld b, e
	add hl, de
	rrca
	rrca
	ld a, b
	ld a, b
	ld a, b
	ld d, h
	ld a, b
	ld a, b
	ld b, e
	add hl, de
	ld [hl], $36
	ld l, e
	ld l, e
	ld l, e
	ld d, h
	ld b, e
	ld b, e
	ld b, e
	add hl, de
	ld c, h
	ld c, h
	ld h, c
	ld h, c
	ld h, c
	ld a, c
	ld b, e
	ld b, e
	ld b, e
	add hl, de
	rrca
	rrca
	ld a, b
	ld a, b
	ld a, b
	ld d, h
	ld b, e
	ld b, e
	ld b, e
	add hl, de
	rrca
	rrca
	ld b, e
	ld b, e
	ld b, e
	ld d, h
	ld b, e
	ld b, e
	ld b, e
	add hl, de
	rrca
	rrca
	ld b, e
	ld b, e
	ld b, e
	ld d, h
	ld b, e
	ld b, e
	ld b, e
	add hl, de
	rrca
	rrca
	ld b, e
	ld b, e
	ld b, e
	ld d, h
	ld b, e
	ld b, e
	ld b, e
	add hl, de
	ld a, [bc]
	ld l, [hl]
	ld b, e
	ld b, e
	ld b, e
	ld d, h
	ld d, h
	ld d, h
	ld b, e
	add hl, de
	ld a, [bc]
	ld l, [hl]
	ld b, e
	ld b, e
	ld b, e
	ld a, b
	ld a, b
	ld d, h
	ld b, e
	add hl, de
	ld a, [bc]
	ld l, [hl]
	ld d, h
	ld sp, $0231
	inc bc
	ld sp, $1943
	ld a, [bc]
	ld l, [hl]
	ld d, h
	ld [hl], a
	ld [hl], a
	ld [hl], a
	ld [hl], a
	ld [hl], a
	ld b, e
	add hl, de
	ld a, [bc]
	ld l, [hl]
	ld d, h
	ld a, b
	ld a, b
	ld a, b
	ld a, b
	ld a, b
	ld b, e
	add hl, de
	ld a, [bc]
	ld l, [hl]
	ld d, h
	ld d, h
	ld d, h
	ld a, d
	ld d, h
	ld b, e
	ld b, e
	add hl, de
	ld a, [bc]
	ld l, [hl]
	ld a, b
	ld a, b
	ld a, b
	ld d, h
	ld a, b
	ld b, e
	ld b, e
	add hl, de
	ld a, [bc]
	ld l, [hl]
	ld l, h
	ld [hl], $43
	ld d, h
	ld b, e
	ld b, e
	ld b, e
	add hl, de
	ld a, [bc]
	ld l, [hl]
	ld a, [bc]
	dec [hl]
	ld d, h
	ld d, h
	ld b, e
	ld b, e
	ld b, e
	add hl, de
	ld a, [bc]
	ld l, [hl]
	ld l, h
	ld a, [bc]
	ld a, b
	ld a, d
	ld d, h
	ld d, h
	ld b, e
	add hl, de
	ld a, [bc]
	ld l, [hl]
	ld d, h
	ld d, h
	ld d, h
	ld d, h
	ld a, b
	ld a, b
	ld b, e
	add hl, de
	ld a, [bc]
	ld l, [hl]
	ld a, b
	ld a, b
	ld a, b
	ld d, h
	ld d, h
	ld d, h
	ld b, e
	add hl, de
	ld a, [bc]
	ld l, [hl]
	ld b, e
	ld b, e
	ld b, e
	ld a, b
	ld a, b
	ld d, h
	ld b, e
	add hl, de
	ld a, [bc]
	ld l, [hl]
	ld l, h
	ld l, h
	inc sp
	ld d, h
	ld a, d
	ld d, h
	ld b, e
	add hl, de
	ld a, [bc]
	ld l, [hl]
	dec bc
	dec bc
	ld l, [hl]
	ld a, b
	ld d, h
	ld a, b
	ld b, e
	add hl, de
	ld a, [bc]
	ld l, [hl]
	dec bc
	dec bc
	ld l, [hl]
	ld b, e
	ld d, h
	ld b, e
	ld b, e
	add hl, de
	ld a, [bc]
	ld l, [hl]
	dec bc
	dec bc
	ld l, [hl]
	ld d, h
	ld a, d
	ld b, e
	ld b, e
	add hl, de
	ld a, [bc]
	ld l, [hl]
	dec bc
	dec bc
	ld l, [hl]
	ld d, h
	ld a, b
	ld b, e
	ld b, e
	add hl, de
	nop
	add hl, bc
	ld e, $e8
	ld c, c
	ld [bc], a
	ld h, d
	jp hl


	ld h, c
	inc bc
	rlca
	xor e
	ld c, h
	add sp, -$3a
	rrca
	inc d
	ld [$1627], sp
	rst $00
	add hl, de
	ret z

	ld c, d
	add hl, bc
	rst $00
	inc c
	ld a, [bc]
	inc h
	nop
	ld sp, hl
	add $6a
	ld c, c
	ld b, e
	inc b
	ld [$0007], sp
	cp b
	add hl, bc
	rlca
	ld bc, $08b8
	ld c, $02
	cp b
	add hl, bc
	ld c, $03
	cp b
	ld bc, $2709
	inc c
	dec bc
	ld b, $0f
	dec l
	rst $38
	ret nc

	ld b, c
	adc $14
	ld b, $0e
	add hl, sp
	rst $38
	jp nc, wce42

	dec d
	rlca
	ld de, $ff23
	pop de
	ld b, e
	rst $18
	ld b, $07
	ld de, $ff27
	pop de
	ld b, h
	rst $18
	rlca
	rrca
	rrca
	add hl, sp
	rst $38
	ret nc

	ld b, l
	jp c, $0f09

	ld c, $2d
	rst $38
	db $d3
	ld b, [hl]
	jp c, $120a

	ld c, $34
	rst $38
	ret nc

	ld b, a
	jp nc, $1203

	ld c, $32
	rst $38
	ret nc

	ld c, b
	jp nc, $0604

	add hl, bc
	add hl, hl
	rst $38
	db $d3
	ld c, c
	adc $16
	ld b, $11
	ld d, $ff
	pop de
	ld c, d
	adc $17
	dec a
	add hl, bc
	ld d, $ff
	rst $38
	adc e
	call c, wc7a0
	ld [$a007], sp
	rst $00
	add hl, bc
	rlca
	and h
	rst $00
	ld [$a40e], sp
	rst $00
	add hl, bc
	ld c, $0a
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
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	inc de
	inc de
	ld l, a
	ld c, h
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
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
	ld d, d
	ld d, d
	ld d, d
	ld d, d
	ld d, d
	ld d, d
	inc de
	inc de
	rrca
	rrca
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld c, [hl]
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
	rrca
	rrca
	ld d, d
	ld d, d
	jr nz, jr_016_4a55

	ld hl, $0750
	rlca
	rlca
	rlca
	rlca
	rlca
	rlca
	rlca
	rlca
	rlca
	rlca

jr_016_4a55:
	rlca
	rlca
	rlca
	rlca
	rlca
	rlca
	rlca
	rlca
	rlca
	rlca
	rlca
	ld sp, $3131
	ld sp, $7d37
	ld a, [hl]
	ld d, l
	ld d, l
	dec bc
	dec bc
	dec bc
	ld [hl], h
	ld [hl], h
	ld [hl], h
	dec bc
	dec bc
	dec bc
	ld sp, $3108
	ld [hl], h
	ld [hl], h
	dec bc
	dec bc
	ld [hl], h
	dec bc
	dec bc
	dec bc
	ld [hl], h
	rrca
	rrca
	ld d, c
	ld d, c
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld c, [hl]
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
	rrca
	rrca
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld c, [hl]
	ld sp, $3131
	ld sp, $3131
	ld sp, $3131
	ld sp, $3131
	ld sp, $3131
	ld sp, $3131
	ld sp, $3131
	ld sp, $0a6c
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld d, c
	ld d, c
	ld d, c
	ld d, c
	ld d, c
	ld d, c
	ld d, c
	ld d, c
	ld d, c
	ld d, c
	ld d, c
	ld d, c
	ld d, c
	ld d, c
	ld d, c
	ld d, c
	ld d, c
	ld d, c
	ld d, c
	ld d, c
	ld d, c
	ld d, c
	ld d, c
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
	nop
	add hl, bc
	inc d
	and b
	ld c, e
	call Call_016_4766
	ld h, [hl]
	dec b
	inc e
	ret z

	ld c, e
	inc hl
	ret z

	ld a, [bc]
	ld a, [bc]
	nop
	nop
	ld sp, hl
	add $06
	ld hl, sp+$40
	rst $38
	add $0f
	add hl, de
	ld [$0800], sp
	rst $00
	jr @+$4d

	rrca
	add hl, bc

jr_016_4b1a:
	ld a, [bc]
	ld de, $ba00
	dec bc
	ld de, $ba01
	ld a, [bc]
	jr jr_016_4b27

	cp d
	dec bc

jr_016_4b27:
	jr @+$05

	cp d
	inc b
	ld de, $ba04
	dec b
	ld de, $ba05
	inc b
	jr jr_016_4b3b

	cp d
	dec b
	jr jr_016_4b40

	cp d
	dec b

jr_016_4b3b:
	rlca
	nop
	cp h
	ld [bc], a
	dec bc

jr_016_4b40:
	dec de
	ld [$0511], sp
	add hl, bc
	rlca
	ld [de], a
	db $10
	dec d
	rst $38
	jp nc, wd241

	dec b
	ld [de], a
	ld de, $ff12
	db $d3
	ld b, d
	ret c

	ld bc, $1012
	rrca
	rst $38
	pop de
	ld b, e
	ret c

	ld [bc], a
	ld [de], a
	rrca
	dec c
	rst $38
	jp nc, wd244

	ld b, $12
	ld c, $0a
	rst $38
	db $d3
	ld b, l
	ret c

	inc bc
	ld [de], a
	db $10
	rlca
	rst $38
	db $d3
	ld b, [hl]
	jp nc, Jump_016_4307

	ld c, $1e
	rst $38
	ret nc

	rlca
	adc l
	rst $00
	ld a, [bc]
	ld de, wc78d
	dec bc
	ld de, wc791
	ld a, [bc]
	jr jr_016_4b1a

	rst $00
	dec bc
	jr jr_016_4bcc

	rst $00
	inc b
	ld de, wc73f
	dec b
	ld de, wc743
	inc b
	jr jr_016_4bdc

	rst $00
	dec b
	jr jr_016_4bd7

	rst $00
	dec b
	rlca
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
	ld d, d
	ld d, d
	ld d, d
	rrca
	rrca
	ld c, [hl]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	jr nz, jr_016_4bcc

	ld hl, $0a0a
	dec bc
	dec bc
	dec bc
	dec bc
	rrca
	rrca
	ld c, [hl]
	ld bc, $0201

jr_016_4bcc:
	inc bc
	ld bc, $0101
	ld bc, $7d37
	ld a, [hl]
	ld bc, $0b01

jr_016_4bd7:
	dec bc
	dec bc
	dec bc
	rrca
	rrca

jr_016_4bdc:
	ld c, [hl]
	ld bc, $0101
	ld bc, $0a01
	ld a, [bc]
	ld a, [bc]
	jr nz, jr_016_4bf4

	ld hl, $010a
	ld bc, $0101
	ld bc, $0f0f
	ld d, b
	ld [hl], a
	ld [hl], a
	ld [hl], a

jr_016_4bf4:
	ld [hl], a
	ld [hl], a
	ld [hl], a
	ld [hl], a
	ld [hl], a
	ld l, b
	ld a, a
	ld l, c
	ld l, a
	ld l, a
	ld l, a
	ld l, a
	ld l, a
	ld h, b
	rrca
	rrca
	ld c, [hl]
	ld sp, $0a0a
	ld sp, $3131
	ld sp, $3731
	ld a, l
	ld a, [hl]
	ld [hl], a
	ld d, [hl]
	ld [hl], a
	ld [hl], a
	ld [hl], a
	ld [hl], a
	ld [hl], a
	ld [hl], a
	ld c, [hl]
	ld sp, $0a0a
	ld sp, $3131
	ld sp, $3131
	ld sp, $0f31
	rrca
	rrca
	rrca
	rrca
	rrca
	rrca
	rrca
	ld c, [hl]
	ld sp, $0a0a
	ld sp, $6231
	ld d, c
	ld d, c
	ld d, c
	ld d, c
	ld d, c
	rrca
	rrca
	rrca
	rrca
	rrca
	rrca
	rrca
	rrca
	ld c, [hl]
	ld sp, $3108
	ld sp, $4e0a
	dec e
	rra
	rra
	rra
	rra
	rrca
	rrca
	rrca
	rrca
	rrca
	rrca
	rrca
	rrca
	nop
	add hl, bc
	add hl, de
	cp b
	ld c, h
	jp nc, $b969

	ld l, c
	add hl, bc
	inc e
	ld a, d
	ld c, [hl]
	db $eb
	add $0a
	ld a, [bc]
	adc a
	nop
	ld l, c
	rlc a
	sbc d
	ld c, h
	inc b
	rst $00
	rrca
	inc d
	ld [$0300], sp
	rst $00
	db $76
	ld c, h
	ld b, e
	inc b
	ld [$0021], sp
	cp [hl]
	add hl, bc
	ld hl, $be01
	ld [$0228], sp
	cp [hl]
	add hl, bc
	jr z, jr_016_4c8a

	cp [hl]
	ld [bc], a
	rlca

jr_016_4c8a:
	dec hl
	inc b
	dec b
	ld hl, $0305
	rlca
	rrca
	jr z, @+$01

	db $d3
	ld b, c
	rst $18
	ld [$1307], sp
	inc l
	rst $38
	jp nc, wdf42

	add hl, bc
	rlca
	ld de, $ff2e
	jp nc, wdf43

	ld a, [bc]
	sub h
	rst $00
	ld [$9421], sp
	rst $00
	add hl, bc
	ld hl, wc798
	ld [$9828], sp
	rst $00
	add hl, bc
	jr z, @+$1a

	ld b, e
	ld h, h
	ld sp, $3131
	ld sp, $4365
	ld b, e
	inc d
	ld l, e
	ld sp, $3131
	ld sp, $3131
	ld sp, $3131
	ld sp, $3131
	ld sp, $4318
	ld h, h
	ld sp, $7474
	ld sp, $4365
	ld b, e
	ld b, e
	ld h, h
	ld sp, $3131
	ld sp, $3131
	ld sp, $3131
	ld sp, $3131
	ld sp, $4318
	ld h, h
	ld sp, $7474
	ld sp, $4365
	ld b, e
	ld b, e
	ld h, h
	ld [hl], a
	ld [hl], a
	ld [hl], a
	ld [hl], a
	ld d, [hl]
	jr nz, @+$0f

	ld hl, $3131
	ld sp, $3131
	jr jr_016_4d48

	ld h, h
	ld sp, $7474
	ld sp, $7474
	ld [hl], h
	ld [hl], h
	ld [hl], h
	ld [hl], h
	ld [hl], h
	ld [hl], h
	ld [hl], h
	ld [hl], h
	ld l, b
	ld a, a
	ld l, c
	ld [hl], a
	ld d, [hl]
	ld [hl], a
	ld [hl], a
	ld [hl], a
	jr jr_016_4d61

	ld h, h
	ld sp, $3131
	ld sp, $3131
	ld sp, $3131
	ld sp, $3131
	ld sp, $3731
	ld a, l
	ld a, [hl]
	ld bc, $0101
	ld bc, $1801
	ld b, e
	dec l
	rra
	rra
	rra
	rra
	rra
	rra
	rra
	rra
	rra
	rra
	rra
	rra
	rra
	rra
	ld h, d
	ld d, c

jr_016_4d48:
	ld d, c
	ld b, b
	ld c, l
	ld d, c
	ld d, c
	ld h, e
	jr jr_016_4d93

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
	ld b, e
	ld c, [hl]
	dec bc

jr_016_4d61:
	dec bc
	dec bc
	ld c, l
	ld [hl], h
	ld [hl], h
	ld c, l
	jr @+$45

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
	ld b, e
	ld c, [hl]
	dec bc
	dec bc
	dec bc
	ld c, l
	ld [hl], h
	ld [hl], h
	ld c, l
	inc d
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
	ld l, e
	ld l, e
	ld l, e
	ld l, e
	ld l, e
	ld d, b
	ld d, d

jr_016_4d93:
	ld d, d
	ld d, d
	ld c, a
	ld d, d
	ld d, d
	ld c, a
	ld hl, $4df5
	call $3c79
	call $3636
	ld a, [wcc26]
	and a
	jr nz, jr_016_4dea

	ld hl, wd27b
	ld b, $13
	call $1690
	ld a, [wd0e3]
	ldh [$dd], a
	ld b, a
	ldh a, [$db]
	cp b
	jr z, jr_016_4dbd

	jr nc, jr_016_4de0

jr_016_4dbd:
	ld hl, $4f05
	call $3c79
	ldh a, [$dc]
	ld b, a
	ld c, $01
	call $3e5e
	jr nc, jr_016_4dd7

	ld hl, $4f44
	call $3c79
	ld a, $01
	jr jr_016_4df2

jr_016_4dd7:
	ld hl, $4f5f
	call $3c79
	xor a
	jr jr_016_4df2

jr_016_4de0:
	ld hl, $4e80
	call $3c79
	ld a, $80
	jr jr_016_4df2

jr_016_4dea:
	ld hl, $4ed3
	call $3c79
	ld a, $ff

jr_016_4df2:
	ldh [$db], a
	ret


	nop
	ld a, $b8
	ld a, a
	or l
	ld a, $b4
	jp $bdcf


	and $4f
	adc $d7
	ld d, [hl]
	rst $20
	ld d, l
	add h
	db $e3
	add [hl]
	inc de
	ld a, a
	jp z, $beb6

	ret


	ld a, a
	inc l
	ld [c], a
	cp h
	pop hl
	ld a, a
	inc sp
	cp l
	ld d, c
	ld d, h
	dec l
	or [hl]
	sbc $26
	ld a, a
	ld d, b
	add hl, bc
	db $db
	rst $38
	inc de
	nop
	cp h
	pop hl
	reti


	or d
	ld c, a
	or c
	jp nz, wdfcf

	jp Jump_016_7fd9


	sub $b3
	push bc
	rst $10
	ld d, l
	ld d, b
	ld bc, wcc5b
	nop
	db $dd
	ld a, a
	call c, $bdc0
	ld a, a
	sub $b3
	ld d, l
	jp z, $beb6

	add $7f
	or d
	call c, Call_016_7fda
	rst $08
	cp h
	ret nz

	ld d, c
	ld d, [hl]
	ld a, a
	cp a
	jp c, wca33

	ld a, a
	cp e
	rst $18
	cp a
	cp b
	ld c, a
	ld d, d
	cp b
	sbc $e7
	ld d, l
	jp nz, wcfb6

	or h
	ret nz

	ld a, a
	ld d, h
	jp z, Jump_016_5055

	add hl, bc
	db $db
	rst $38
	inc de
	nop
	cp h
	pop hl
	reti


	or d
	ld a, a
	sub $d8
	ld a, a
	or l
	or l
	or d
	ld a, a
	or [hl]
	push bc
	and $57
	nop
	ld d, [hl]
	ld a, a
	ld d, [hl]
	ld a, a
	or h
	db $e3
	call nz, Call_016_4fe7
	jp nz, wcfb6

	or h
	ret nz

	ld a, a
	ld d, h
	jp z, Jump_016_5556

	or c
	jp c, $e3da

	and $55
	rst $08
	jr nc, jr_016_4f1c

	ld d, b
	add hl, bc
	db $dd
	rst $38
	inc de
	nop
	cp h
	pop hl
	reti


	or d
	ld a, a
	inc sp
	cp l
	sub $e7
	ld d, c
	ld d, b
	add hl, bc
	db $db
	rst $38
	inc de
	nop
	cp h
	pop hl
	reti


	or d
	add $7f
	ret nz

	ret c

	push bc
	or d
	ld a, a
	push bc
	rst $10
	ld c, a
	ld d, b
	ld bc, wcc5b
	nop
	jp z, wcf55

	ret nz

	ld a, a
	cp d
	sbc $34
	ld a, a
	inc sp
	cp l
	ret z

	ld d, a
	nop
	ld d, [hl]
	ld a, a
	ld d, [hl]
	ld a, a
	cp a
	or e
	ld a, a
	inc sp
	cp l
	or [hl]
	ld d, c
	ld d, b
	add hl, bc
	db $db
	rst $38
	inc de
	nop
	cp h
	pop hl
	reti


	or d
	add $7f
	ret nz

	ret c

	push bc
	or d
	ld a, a
	push bc
	rst $10
	ld c, a
	ld d, b
	ld bc, wcc5b
	nop
	jp z, wcf55

	ret nz

	ld a, a
	cp d
	sbc $34
	ld a, a
	inc sp
	cp l
	ret z

	ld d, a
	nop
	ld d, [hl]
	ld a, a
	ld d, [hl]
	ld a, a
	push bc
	reti


	adc $34
	rst $20
	ld c, a
	jp nz, wcfb6

	or h
	ret nz

	ld a, a
	ld d, h
	jp z, Jump_016_5556

	ld d, b
	add hl, bc

jr_016_4f1c:
	db $dd
	rst $38
	inc de
	nop
	cp h
	pop hl
	reti


	or d
	ld a, a
	inc sp
	cp l
	ret z

	rst $20
	ld d, l
	or l
	jp nc, wc433

	or e
	rst $20

jr_016_4f30:
	ld d, c
	cp a
	jp c, wca33

	ld c, a
	cp d
	jp c, $7fdd

Jump_016_4f3a:
	or l
	call c, $bcc0
	ld a, a
	cp h
	rst $08
	cp l
	rst $20
	ld e, b
	nop
	ld d, d
	jp z, $2c7f

	ld [c], a
	cp h
	pop hl
	ld a, a
	or [hl]
	rst $10
	ld c, a
	ld d, b
	ld bc, wcc5b
	nop
	db $dd

Jump_016_4f56:
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
	ld d, [hl]
	ld a, a
	call nz, $b57f
	db $d3
	rst $18
	ret nz

	ld a, a
	cp c
	inc [hl]
	ld c, a
	add $d3
	jp nz, $7f26

	or d
	rst $18
	ld b, h
	or d
	ld a, a
	jr nc, jr_016_4f30

	rst $10
	ld d, l
	ld d, b
	ld bc, wcc5b
	nop
	jp z, wcf55

	ret nz

	ld a, a
	cp d
	sbc $34
	ld a, a
	inc sp
	cp l
	ret z

	ld d, a

	ld a, [wcf7f]
	ld [wd092], a
	call $2f2e
	ld d, $01

jr_016_4f99:
	inc d
	call Call_016_4fb5
	push hl
	ld hl, wcf8f
	ldh a, [$98]
	ld c, a
	ld a, [hld]
	sub c
	ldh a, [$97]
	ld c, a
	ld a, [hld]
	sbc c
	ldh a, [$96]
	ld c, a
	ld a, [hl]
	sbc c
	pop hl
	jr nc, jr_016_4f99

	dec d
	ret


Call_016_4fb5:
	ld a, [wd0a8]
	add a
	add a
	ld c, a
	ld b, $00
	ld hl, $5068
	add hl, bc
	call Call_016_505b
	ld a, d
	ldh [$99], a
	call $38f5

Call_016_4fca:
Jump_016_4fca:
	ld a, [hl]
	and $f0
	swap a
	ldh [$99], a
	call $38f5
	ld a, [hli]
	and $0f
	ldh [$99], a
	ld b, $04
	call $3902
	ldh a, [$96]
	push af
	ldh a, [$97]
	push af
	ldh a, [$98]

Jump_016_4fe6:
	push af

Call_016_4fe7:
Jump_016_4fe7:
	call Call_016_505b
	ld a, [hl]
	and $7f
	ldh [$99], a
	call $38f5
	ldh a, [$96]
	push af
	ldh a, [$97]
	push af
	ldh a, [$98]
	push af
	ld a, [hli]
	push af
	xor a
	ldh [$96], a
	ldh [$97], a
	ld a, d
	ldh [$98], a
	ld a, [hli]
	ldh [$99], a
	call $38f5
	ld b, [hl]
	ldh a, [$98]
	sub b
	ldh [$98], a
	ld b, $00
	ldh a, [$97]
	sbc b
	ldh [$97], a
	ldh a, [$96]
	sbc b
	ldh [$96], a
	pop af
	and $80
	jr nz, jr_016_5036

	pop bc
	ldh a, [$98]
	add b
	ldh [$98], a
	pop bc
	ldh a, [$97]
	adc b
	ldh [$97], a
	pop bc
	ldh a, [$96]
	adc b
	ldh [$96], a
	jr jr_016_5048

jr_016_5036:
	pop bc
	ldh a, [$98]
	sub b
	ldh [$98], a
	pop bc
	ldh a, [$97]
	sbc b
	ldh [$97], a
	pop bc
	ldh a, [$96]
	sbc b
	ldh [$96], a

jr_016_5048:
	pop bc
	ldh a, [$98]
	add b
	ldh [$98], a
	pop bc
	ldh a, [$97]
	adc b
	ldh [$97], a
	pop bc

Jump_016_5055:
	ldh a, [$96]
	adc b
	ldh [$96], a
	ret


Call_016_505b:
	xor a
	ldh [$96], a
	ldh [$97], a
	ld a, d
	ldh [$98], a
	ldh [$99], a
	jp $38f5


	db $11, $00, $00, $00

	inc [hl]
	ld a, [bc]
	nop
	ld e, $34
	inc d
	nop
	ld b, [hl]

	db $65, $8f, $64, $8c

	ld b, l
	nop
	nop
	nop
	ld d, h
	nop
	nop
	nop
	call $3c6c
	ld hl, $50a7
	ld de, $5093
	ld a, [wd57f]
	call $31a8
	ld [wd57f], a
	ret


	ld h, c
	ld [hld], a
	sub h
	ld [hld], a
	cp l
	ld [hld], a
	ldh a, [$50]
	scf
	ld d, c
	add c
	ld d, c
	push de
	ld d, c
	daa
	ld d, d
	add b
	ld d, d
	ret nc

	ld d, d
	ld bc, $4800
	rst $10
	ld a, [$2b50]
	ld d, c
	rra
	ld d, c
	rra
	ld d, c
	ld [bc], a
	nop
	ld c, b
	rst $10
	ld b, c
	ld d, c
	dec hl
	ld d, c
	ld l, h
	ld d, c
	ld l, h
	ld d, c
	inc bc
	ld b, b
	ld c, b
	rst $10
	adc e
	ld d, c
	or d
	ld d, c
	and a
	ld d, c
	and a
	ld d, c
	inc b
	jr nc, jr_016_5116

	rst $10
	rst $18
	ld d, c
	ld b, $52
	pop af
	ld d, c
	pop af
	ld d, c

jr_016_50d7:
	dec b
	jr nc, @+$4a

	rst $10
	ld sp, $5e52
	ld d, d
	ld c, l
	ld d, d
	ld c, l
	ld d, d
	ld b, $30
	ld c, b

jr_016_50e6:
	rst $10
	adc d
	ld d, d
	xor h
	ld d, d
	and e
	ld d, d
	and e
	ld d, d
	rst $38
	ld [$a721], sp
	ld d, b
	call $3214
	jp $0f6a


	nop
	jr nc, jr_016_50d7

	jr nc, jr_016_50e6

	ld c, a
	ld a, $b8
	rst $10
	ret


	ld a, a
	res 7, a
	res 7, a
	ld a, a
	ld a, [hld]
	push bc
	cp h
	db $dd
	ld d, l
	rst $00
	cp l
	ret nc

	ld a, a
	daa
	or a
	ld a, a

jr_016_5116:
	cp h
	jp Jump_016_7fd9


	call nc, wcac2
	rst $20
	ld d, a
	nop
	push bc
	ld l, $b6
	ld a, a
	or [hl]
	jp $b2c5


	sbc $30
	ld e, b
	nop
	ld d, [hl]
	ld a, a
	ld d, [hl]
	ld a, a
	res 7, a
	ld a, a
	res 7, a
	ld d, [hl]
	ld d, a
	ld [$b321], sp
	ld d, b
	call $3214
	jp $0f6a


	nop
	pop bc
	ld [c], a
	rst $18
	call nz, $bf7f
	cp d
	ret


	ld a, a
	or a
	ret nc

	rst $20
	ld c, a
	set 0, h
	ret


	ld a, a
	ret nz

	pop bc
	ld a, a

Jump_016_5156:
	ld a, [hld]
	push bc
	cp h
	db $dd
	ld d, l
	rst $00
	cp l
	ret nc

	ld a, a
	daa
	or a
	ld a, a
	cp l
	reti


	db $d3
	sbc $2c
	ldh [$c5], a
	or d
	call c, $0057
	call nc, $e7de
	ld c, a
	call nc, wdad7
	reti


	ld a, a
	push bc
	sbc $c3
	ld a, a
	push bc
	cp e
	cp c
	push bc
	or d
	call c, $0858
	ld hl, $50bf
	call $3214
	jp $0f6a


	nop
	cp d
	ret


	ld a, a
	call wcfde
	inc sp
	ld a, a
	cp b
	reti


	call nz, $b14f
	sbc $cf
	ret c

	ld a, a
	pop de
	cp h
	db $d3
	ld a, a
	or d
	push bc
	or d
	sbc $30
	ld d, a
	nop
	cp a
	sbc $c5
	ld a, a
	add hl, de
	add l
	push bc
	or c
	db $e3
	ld e, b

Call_016_51b2:
	nop
	ld a, $b8
	ld a, a
	call nc, Call_016_44df
	ret c

	ld c, a
	pop de
	cp h
	ld a, a
	ld d, h
	ld a, a
	cp l
	or a
	jr nc, @-$42

	ld d, l
	sub e
	add [hl]
	xor c
	ret


	ld a, a
	db $d3
	ret c

	add $7f
	or [hl]
	or h
	db $db
	or e
	or [hl]
	push bc
	ld d, a
	ld [wcb21], sp
	ld d, b
	call $3214
	jp $0f6a


	nop
	push bc
	sbc $30
	or d
	ld c, a
	or l
	jp c, Jump_016_7fc6

	push bc
	sbc $b6
	ld a, a
	sub $b3
	and $57
	nop
	push bc
	cp e
	cp c
	push bc
	or d
	ld c, a
	or e
	rst $10
	jp c, $7fc0

	adc b
	xor e
	add l
	add $7f
	rst $08
	cp c
	ret nz

	ld e, b
	nop
	db $d3
	rst $18
	call nz, wc07f
	cp b
	cp e
	sbc $4f
	ld d, h
	ld a, a
	db $d3
	rst $18
	jp $b17f


	reti


	or d
	jp Jump_016_55c0


	adc $b3
	ld h, $7f
	or c
	sbc $bc
	sbc $30
	push bc
	ld d, a
	ld [wd721], sp
	ld d, b
	call $3214
	jp $0f6a


	nop
	call c, $bcc0
	and $4f
	ld d, [hl]
	ld a, a
	ld d, [hl]
	ld a, a
	ld d, [hl]
	ld a, a
	or e
	db $e3
	sbc $55
	jp nz, $b1b7

	rst $18
	jp Jump_016_7fd3


	or d
	or d
	or [hl]
	push bc
	ld d, a
	nop
	ld d, [hl]
	ld a, a
	inc [hl]
	or e
	db $d3
	ld c, a
	or e
	rst $08
	cp b
	ld a, a
	or d
	or [hl]
	push bc
	or d
	call c, $0058
	or c
	ret nz

	cp h
	db $d3
	ld a, a
	jp nz, $b8d6

	ld a, a
	push bc
	ret c

	ret nz

	or d
	ret


	ld c, a
	adc c
	sub c
	db $dd
	ld a, a
	or l
	cp h
	or h
	jp $b87f


	jp c, $b2c5

	ld a, a
	or [hl]
	cp h
	rst $10
	ld d, a
	ld [$e321], sp
	ld d, b
	call $3214
	jp $0f6a


	nop
	or l
	call nc, Call_016_7fe6
	ret nc

	or [hl]
	cp c
	push bc
	or d
	ld a, a
	or [hl]
	or l
	ld a, a
	jr nc, @-$17

	ld c, a
	jp nz, $b2d6

	ret


	or [hl]
	push bc
	and $57
	nop
	cp a
	ret c

	ldh [$7f], a
	push bc
	or d
	sub $58
	nop
	ld d, h
	ld h, $7f
	sub $dc
	or d
	ret


	or [hl]
	ld c, a
	ld a, $b8
	ret


	ld a, a
	or e
	inc sp
	ld h, $7f
	call c, $b2d9
	ret


	or [hl]
	ld d, [hl]
	ld d, l
	inc [hl]
	rst $18
	pop bc
	jr nc, @-$3a

	ld a, a
	or l
	db $d3
	or e
	and $57
	nop
	cp d
	cp d
	or [hl]
	rst $10
	ld a, a
	pop bc
	or [hl]
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
	ld hl, $531b
	ld de, $5301
	ld a, [wd580]
	call $31a8
	ld [wd580], a
	ret


	ld h, c
	ld [hld], a
	sub h
	ld [hld], a
	cp l
	ld [hld], a
	adc b
	ld d, e
	call nc, $2353
	ld d, h
	add d
	ld d, h
	db $e3
	ld d, h
	ld d, [hl]
	ld d, l
	xor e
	ld d, l
	add hl, de
	ld d, [hl]
	ld a, c
	ld d, [hl]
	ld hl, sp+$56
	ld bc, $4c40
	rst $10
	sub d
	ld d, e
	cp d
	ld d, e
	xor a
	ld d, e
	xor a
	ld d, e
	ld [bc], a
	ld b, b
	ld c, h
	rst $10
	sbc $53
	ld a, [bc]
	ld d, h
	push af
	ld d, e
	push af
	ld d, e
	inc bc
	ld b, b
	ld c, h
	rst $10
	dec l
	ld d, h
	ld d, l
	ld d, h
	ld c, d
	ld d, h
	ld c, d
	ld d, h
	inc b
	jr nz, @+$4e

	rst $10
	adc h
	ld d, h
	or e
	ld d, h
	xor c
	ld d, h
	xor c
	ld d, h
	dec b
	jr nc, @+$4e

	rst $10
	db $ed
	ld d, h
	dec de
	ld d, l
	ld [bc], a
	ld d, l
	ld [bc], a
	ld d, l
	ld b, $30
	ld c, h
	rst $10
	ld h, b
	ld d, l
	adc c
	ld d, l
	add c
	ld d, l
	add c
	ld d, l
	rlca
	jr nz, jr_016_53b2

	rst $10
	or l
	ld d, l
	jp hl


	ld d, l
	db $d3
	ld d, l
	db $d3
	ld d, l
	ld [$4c20], sp
	rst $10
	inc hl
	ld d, [hl]
	ld d, b
	ld d, [hl]
	dec sp
	ld d, [hl]
	dec sp
	ld d, [hl]
	add hl, bc
	ld b, b
	ld c, h
	rst $10
	add e
	ld d, [hl]
	call nz, $a656
	ld d, [hl]
	and [hl]
	ld d, [hl]
	rst $38
	ld [$1b21], sp
	ld d, e
	call $3214
	jp $0f6a


	nop
	or a
	ret nc

	ld a, a
	ld d, h
	ld a, a
	jp nz, $bfd6

	or e
	ld a, a
	jr nc, @-$45

	inc [hl]
	ld c, a
	ret c

	or [hl]
	jp z, wc47f

	cp b
	or d
	ld a, a
	push bc
	ret


	or [hl]
	or d
	and $57
	nop
	ld h, $e3

jr_016_53b2:
	sbc $e7
	ld a, a
	ld a, [hld]
	rst $18
	ret nz

	ret c

	ld e, b
	nop
	ld a, $b8
	jp z, wd47f

	rst $18
	ld b, h
	ret c

	ld c, a
	dec a
	sbc $b7
	ld [c], a
	or e
	ret


	ld a, a
	adc $b3
	ld h, $7f
	or c
	rst $18
	jp Jump_016_57d9


	ld [$2721], sp
	ld d, e
	call $3214
	jp $0f6a


	nop
	sub $df
	cp h
	ldh [$e7], a
	ld c, a
	ret nz

	ret nz

	or [hl]
	rst $18
	jp $b37f


	sbc $30
	jp nc, Jump_016_7fbc

	cp l
	reti


	or [hl]
	ld d, a
	nop
	ld d, [hl]
	ld a, a
	or a
	ld [c], a
	or e
	jp z, $bc4f

	ld [c], a
	or e
	inc a
	ld a, a
	or e
	sbc $7f
	call c, $bcd9
	rst $20
	ld e, b
	nop
	inc [hl]
	or e
	db $d3
	ld a, a
	or a
	ld [c], a
	or e
	jp z, $c27f

	or d
	jp $b4c8


	ld c, a
	inc l
	rst $18
	call nz, $bc7f

jr_016_541f:
	jp $b3d6


	ld d, a
	ld [$3321], sp
	ld d, e
	call $3214
	jp $0f6a


	nop
	or c
	ret


	ret z

	ld c, a
	ret nz

	ret nz

	or [hl]
	or d
	ld a, a
	add $ca
	ld a, a
	cp [hl]
	sbc $d8
	ldh [hLoadedROMBank], a
	ld h, $55
	set 0, d
	sub $b3
	ld a, a
	push bc
	sbc $30
	ld d, a
	nop
	ret c

	or [hl]
	or d
	ld a, a

Call_016_544f:
	inc sp
	or a

jr_016_5451:
	push bc
	or d
	rst $20
	ld e, b

Jump_016_5455:
	nop
	jp z, wd22c

	add $7f
	dec a
	sub e
	dec a
	adc a
	db $e3
	ld a, a
	jr nc, jr_016_541f

	jp Jump_016_4f56


	or d
	or d
	call nc, wce7f
	or [hl]
	ret


	inc sp
	ld a, a
	or d
	rst $18
	or a
	add $56
	ld d, l
	ld d, [hl]
	ld a, a
	or e
	db $e3
	sbc $7f
	dec de
	sub c
	ld a, a
	dec de

Jump_016_547f:
	sub c
	ld d, [hl]
	ld d, a
	ld [$3f21], sp
	ld d, e
	call $3214
	jp $0f6a


	nop
	or c
	ret nz

	cp h
	ld a, a
	sub l
	inc de
	and l
	xor e
	ld a, a
	cp l
	or a
	ld a, a
	jr nc, jr_016_5451

	rst $10
	ld c, a
	ret nz

	cp b
	cp e
	sbc $7f
	or c
	jp nz, wc3d2

	reti


	ret


	ld d, a
	nop
	push bc
	sbc $33
	ld a, a
	push bc
	sbc $33
	db $e3
	ld e, b
	nop
	ld d, h
	rst $18
	jp $bf7f


	jr nc, @-$1f

	jp $b87f


	reti


	call nz, $b64f
	call c, $b8b2
	ld a, a
	push bc
	cp b
	push bc
	rst $18
	jp $b77f


	pop bc
	ldh [$b3], a
	ld d, l
	cp h
	sbc $b6
	ld a, a
	cp h
	push bc
	or d

Call_016_54d8:
	adc $b3
	ld h, $7f
	or [hl]
	call c, $b2b2
	call c, Call_016_57e7
	ld [$4b21], sp
	ld d, e
	call $3214
	jp $0f6a


	nop
	dec a
	sbc $b7
	ld [c], a
	or e
	db $d3
	ld a, a
	or d
	or d
	cp c
	inc [hl]
	ld d, [hl]
	ld c, a
	ld d, h
	db $d3
	ld a, a
	or d
	or d
	ret z

	ld d, a
	nop
	ld d, [hl]
	ld a, a
	call c, wdfb6
	ret nz

	ld c, a
	ld a, $b8
	add $ca
	ld a, a
	dec a
	sbc $b7
	ld [c], a
	or e
	ld a, a
	cp h
	or [hl]
	ld a, a
	push bc
	or d
	ld e, b
	nop
	ret nz

	rst $08
	add $ca
	ld a, a
	cp a
	call nz, Call_016_7fc9
	cp b
	or e
	or a
	ld a, a
	cp l
	or d
	add $4f
	or d
	cp d
	or e
	call nz, $b57f
	db $d3
	rst $18
	ret nz

	ret


	add $55
	and d

Jump_016_553a:
	sbc l
	dec de
	add [hl]
	ret


	ld a, a
	ld [$93e3], sp
	ret


	ld a, a
	cp [hl]
	or d
	inc sp
	ld d, l
	ret nc

	sbc $c5
	ld a, a
	cp d
	cp d
	inc sp
	ld a, a
	or c
	cp h
	inc [hl]
	jp nc, Jump_016_5730

Call_016_5556:
Jump_016_5556:
	ld [$5721], sp
	ld d, e
	call $3214
	jp $0f6a


	nop
	sub l
	xor l
	db $e3
	adc h
	ld a, a
	rst $18
	jp $c14f


	ld [c], a
	db $e3
	ld a, a
	or [hl]
	call c, $e3b2
	ret


	rst $20
	ld d, l
	add $e0
	db $e3
	ld a, a
	add $e0
	db $e3
	ld a, a
	add $e0
	db $e3
	rst $20
	ld d, a
	nop
	cp a
	sbc $c6
	ldh [$e3], a
	rst $20
	ld e, b
	nop
	call nc, wdee3
	rst $20
	ld c, a
	ld b, e
	xor h
	ld b, e
	db $d3
	ld a, a
	adc c
	and l
	xor h
	adc a
	db $d3
	ld a, a
	or [hl]
	call c, $e3b2
	ld d, l
	or c
	ret nz

	cp h
	ld a, a
	rst $08
	sub $df
	pop bc
	ldh [$b3], a
	rst $20
	ld d, a
	ld [$6321], sp
	ld d, e
	call $3214
	jp $0f6a


	nop
	cp d

Call_016_55b7:
	or e
	cp h
	jp wc57f


	rst $10
	sbc $33
	reti


Jump_016_55c0:
	call nz, wca4f
	push bc
	or d
	pop bc
	ld a, a
	db $d3
	sbc $d2

Jump_016_55ca:
	ld a, a
	cp h
	jp Jump_016_7fd9


	ret nc

	ret nz

	or d
	ld d, a
	nop
	swap h
	db $e3
	or d
	rst $20
	ld c, a
	ret nc

	sbc $c5

Jump_016_55dd:
	ld a, a
	or [hl]
	call c, $b2b2
	ld a, a
	ld d, h
	ld a, a
	push bc
	ret


	add $58
	nop
	and d
	sbc l
	dec de
	add [hl]
	ld a, a
	adc e
	sub d
	or b
	ret


	ld a, a
	cp c
	or d
	dec sp
	or d
	sbc $4f
	ld [$93e3], sp
	ld a, a
	call nz, wd7b5
	cp [hl]
	jp $b87f


	jp c, $b2c5

	ret


	ld d, l
	rst $08
	inc l
	jp nc, $307f

	cp c
	inc [hl]
	ld d, [hl]
	ld a, a
	or d
	inc l
	call c, wc8d9
	ld d, a
	ld [$6f21], sp
	ld d, e
	call $3214
	jp $0f6a


	nop
	or l
	jp c, $7fca

	or d
	rst $08
	inc [hl]
	or a
	ld c, a
	cp e
	cp l
	rst $10
	or d
	ret


	ld a, a

Call_016_5633:
	ld b, $ad
	xor e
	dec de
	and l
	db $e3
	rst $20
	ld d, a
	nop
	ld d, [hl]
	rst $20
	ld c, a
	cp d
	cp d
	ld a, a
	or d
	pop bc
	ld a, [hld]
	sbc $dd
	ld a, a
	ret


	ld h, $bd
	ld a, a
	call nz, $e7ca
	ld e, b
	nop
	ld b, $ad
	xor e
	dec de
	and [hl]
	db $d3
	ld a, a
	ld d, h
	db $d3
	ld c, a
	cp h
	ld [c], a
	or e
	inc a
	add $ca
	ld a, a
	or [hl]
	call c, wc5d8
	or d
	rst $20
	ld d, l
	jp z, wd22c

	ret nz

jr_016_566d:
	rst $10
	ld a, a
	call nc, wd7d2
	jp c, wc57f

	or d
	ret


	cp e
	ld d, a
	ld [$7b21], sp
	ld d, e
	call $3214
	jp $0f6a


	nop
	rst $08
	reti


	cp b
	rst $18
	jp wcc7f


	call c, wdccc
	inc sp
	ld c, a
	rst $00
	or d
	jr z, jr_016_566d

	ret nc

	ld a, a
	ret nc

	ret nz

	or d
	push bc
	ld a, a
	ld d, h
	rst $20
	ld d, l
	ld d, [hl]
	ld a, a
	push bc
	db $e3
	sbc $30
	and $57
	nop
	call nc, wc3d2
	db $e3
	rst $20
	ld d, c
	call c, $bcc0
	ret


	ld a, a
	ld b, c
	xor h
	ld b, c

jr_016_56b5:
	add $4f
	rst $10
	sbc $3e
	or e
	ld a, a
	cp h
	push bc
	or d
	inc sp
	sub $b3
	rst $20

Jump_016_56c3:
	ld e, b

Jump_016_56c4:
	nop

Jump_016_56c5:
	jp nz, wc9b7

	or d
	cp h

Jump_016_56ca:
	inc sp
	ld a, a
	ld b, c
	xor h
	ld b, c
	ld h, $7f
	push bc
	sbc $b6
	add $4f
	cp h
	sbc $b6
	ld a, a
	cp l
	reti


	rst $18
	jp Jump_016_5455


	ld a, a
	dec bc
	xor l
	db $e3
	sub h
	and [hl]
	inc sp
	ld a, a
	sub $de
	jr nc, jr_016_56b5

	ld d, l
	ld d, [hl]
	ld a, a
	adc $de
	call nz, $b67f
	cp h
	rst $10
	and $57
	nop
	cp d
	cp d
	or [hl]
	rst $10
	ld a, a
	pop bc
	or [hl]
	jp nz, wdbb3

	ld c, a
	adc a
	sbc l
	sbc a
	adc e
	ld a, a
	ld d, [hl]
	ld a, a
	adc e
	add h
	xor e
	ld d, a
	call $3c6c
	ld hl, $573c
	ld de, $5722
	ld a, [wd584]
	call $31a8
	ld [wd584], a
	ret


	ld h, c
	ld [hld], a
	sub h
	ld [hld], a
	cp l
	ld [hld], a
	add l
	ld d, a
	jp hl


	ld d, a
	ccf
	ld e, b
	adc e
	ld e, b

Jump_016_5730:
	jp hl


	ld e, b
	ld a, [hld]
	ld e, c
	xor e
	ld e, c
	xor a
	rrca
	xor e
	ld e, c
	cp d
	ld e, c
	ld bc, $5040
	rst $10
	adc a
	ld d, a
	adc $57
	cp l
	ld d, a
	cp l
	ld d, a
	ld [bc], a
	jr nc, jr_016_579b

	rst $10
	di
	ld d, a
	inc h
	ld e, b
	cp $57
	cp $57
	inc bc
	ld b, b
	ld d, b
	rst $10
	ld c, c
	ld e, b
	ld [hl], d
	ld e, b
	ld e, a
	ld e, b
	ld e, a
	ld e, b
	inc b
	jr nc, jr_016_57b3

	rst $10
	sub l
	ld e, b
	ret z

	ld e, b
	cp b
	ld e, b
	cp b
	ld e, b
	dec b
	jr nz, @+$52

	rst $10
	di
	ld e, b
	jr nz, jr_016_57cd

	ld c, $59
	ld c, $59
	ld b, $20
	ld d, b
	rst $10
	ld b, h
	ld e, c
	add b
	ld e, c
	ld h, [hl]
	ld e, c
	ld h, [hl]
	ld e, c
	rst $38
	ld [$3c21], sp
	ld d, a
	call $3214
	jp $0f6a


	nop
	cp d
	sbc $c5
	ld a, a
	call nz, $7fba
	rst $08
	inc sp
	ld a, a
	cp b

jr_016_579b:
	reti


	ld a, a
	call nz, Call_016_4fca
	or a
	ret nc

	db $d3
	ld a, a
	sbc l
	sub l
	add b
	and $7f
	ld d, [hl]
	ld a, a
	inc l
	ldh [rHDMA5], a
	ld a, $b8
	ret


	ld a, a
	adc c

jr_016_57b3:
	and a
	add a
	adc e
	xor a
	xor e
	ld a, a
	ret nc

	reti


	and $57
	nop
	call wdee3
	ld d, [hl]
	rst $20
	ld c, a
	cp b
	call nc, $b8bc

Call_016_57c8:
Jump_016_57c8:
	ld a, a
	push bc
	or d
	sub $e7

jr_016_57cd:
	ld e, b
	nop
	or e
	pop bc
	add $7f
	or [hl]
	or h
	jp c, Jump_016_7f3a

	db $d3

Jump_016_57d9:
	rst $18
	call nz, wd24f
	dec l
	rst $10
	cp h
	or d
	ld a, a
	ld d, h
	ld a, a
	or c
	reti


	db $d3

Call_016_57e7:
Jump_016_57e7:
	sbc $57
	ld [$4821], sp
	ld d, a
	call $3214
	jp $0f6a


	nop
	jp z, $ace3

	ld a, a
	jp z, wcadf

	xor h
	rst $20
	ld d, a
	nop
	jp z, $e7ac

	ld c, a
	jp z, $ace3

	ld a, a
	jp z, $acca

	ld d, [hl]
	rst $20
	ld a, a
	inc l
	jp nz, Jump_016_56ca

	ld d, l
	call c, $b2d7
	ld a, a
	add [hl]
	sbc b
	adc c

jr_016_5819:
	ld a, a
	ret nz

	dec a
	jp $bc7f


	rst $08
	rst $18
	jp Jump_016_58c5


	nop
	jp z, wcadf

	xor h
	rst $20
	ld c, a
	jp z, $ace3

	ld a, a
	jp z, $7fdf

	jp z, $e7ac

	ld d, l
	ld d, [hl]
	ld a, a
	jp z, Jump_016_7fe9

	jp z, $56e9

	ld d, a
	ld [$5421], sp
	ld d, a
	call $3214
	jp $0f6a


	nop
	ret z

	db $e3
	ld a, a
	ret z

	db $e3
	rst $20
	ld c, a
	or l
	ret nz

	cp b
	ld a, a
	ld a, $b8
	ret


	ld a, a
	ld d, h
	ld a, a
	ret nc

jr_016_585c:
	reti


	and $57
	nop
	or c
	or c
	db $e3
	rst $20
	ld c, a
	jr nc, jr_016_5819

	inc l
	push bc
	ld a, a
	ld d, h
	ld a, a
	pop bc
	ldh [$de], a
	ld h, $e7
	ld e, b
	nop
	ld d, [hl]
	ld a, a
	ld a, $b8
	ld a, a
	sub $d8
	ld c, a
	jp nz, $b2d6

	ld a, a
	and d
	sub c
	jp z, $867f

	and l
	add c
	ld a, a
	jr nc, jr_016_585c

	sbc $57
	ld [$6021], sp
	ld d, a
	call $3214
	jp $0f6a


	nop
	call c, $bcc0
	db $d3
	ld a, a
	ret nz

	rst $08
	add $4f
	ld d, h
	ld a, a
	dec bc
	sbc a
	add $7f
	or d
	cp b
	ret


	rst $20
	ld d, l
	ld d, [hl]
	ld a, a
	ld d, [hl]
	ld a, a
	rst $08
	cp c
	pop bc
	ldh [$b3], a
	ld a, a
	cp c
	inc [hl]

Call_016_58b6:
	ret z

	ld d, a
	nop
	db $d3
	or l
	ld d, [hl]
	rst $20
	ld c, a
	call nz, $b8df
	sbc $7f
	cp h
	ret nz

Jump_016_58c5:
	ret


	add $58

Jump_016_58c8:
	nop
	ret z

	or h
	ld d, [hl]
	rst $20
	ld c, a
	cp d
	sbc $c5
	ld a, a
	call nc, Call_016_7fcf
	ret nc

	pop bc
	add $55
	sbc l
	sub l
	add b
	ld h, $7f
	or d
	reti


	ld a, a
	ret


	sub $56
	ld a, a
	ret nc

	ret nz

	and $57
	ld [$6c21], sp
	ld d, a
	call $3214
	jp $0f6a


	nop
	cp l
	db $e3
	jp z, $7fe3

	cp l
	db $e3
	jp z, $e7e3

	ld c, a
	call nc, wc9cf
	ld a, a
	cp b
	or e
	or a
	jp z, $b37f

	rst $08
	or d
	xor h
	rst $20
	ld d, a
	nop
	cp l
	db $e3
	jp z, $ace3

	rst $20
	ld c, a
	or c
	db $e3
	ld a, a
	rst $08
	cp c
	ret nz

	call c, $e7b2
	ld e, b
	nop
	call nc, wc9cf
	ld a, a
	cp b
	or e
	or a
	ld c, a
	cp l
	or d
	ld a, a
	cp l
	daa
	jp wca7f


	rst $10
	ld h, $7f
	call z, wdab8
	ret nz

	rst $20
	ld d, a
	ld [$7821], sp
	ld d, a
	call $3214
	jp $0f6a


	nop
	jp z, $56e9

	rst $20
	ld c, a
	call nc, wd0cf
	pop bc
	ld a, a
	res 7, e
	cp h
	inc a
	ret c

	add $7f
	or c
	reti


	or d
	jp wcb55


	sbc $b9
	jp nz, $277f

	ret nc

	ld a, a
	push bc
	ret


	ld d, a
	nop
	ld d, [hl]
	ld a, a
	ld d, [hl]
	ld a, a
	ret nz

	or d
	pop bc
	ld [c], a
	or e
	ld h, $4f
	call c, $b2d9
	or [hl]
	rst $10
	ld a, a
	cp h
	or [hl]
	ret nz

	ld a, a
	push bc
	or d
	call c, $0058
	call nc, wc9cf
	ld a, a
	ld d, h
	rst $18
	jp $2a4f


	jp nz, wc9b2

	ld a, a
	ld a, [hld]
	rst $18
	or [hl]
	ret c

	ld d, [hl]
	ld d, l
	ld b, c
	xor e
	add a
	ret


	ld a, a
	jp z, $26c5

	rst $10
	ret


	ld d, l
	ld d, h
	ld h, $7f
	or d
	jp c, Jump_016_7f3a

	or d
	or d
	ret


	add $57
	nop
	cp d
	cp d
	jp z, $817f

	xor c
	and d
	sbc l
	ld a, a
	sub e
	xor e
	sub a
	and [hl]
	ld d, a
	nop
	cp d
	cp d
	jp z, wd17f

	inc l
	sbc $7f
	jp z, $33c2

	sbc $bc
	ld [c], a
	ld d, a
	call $3c6c
	ld hl, $59f9
	ld de, $59dd
	ld a, [wd5a2]
	call $31a8
	ld [wd5a2], a
	ret


	ld h, c
	ld [hld], a
	sub h
	ld [hld], a
	cp l
	ld [hld], a
	ld [hl], d
	ld e, d
	cp b
	ld e, d
	inc de
	ld e, e
	ld h, a
	ld e, e
	cp h
	ld e, e
	dec e
	ld e, h
	ld [hl], a
	ld e, h
	jp z, Jump_016_475c

	ld e, l
	sub [hl]
	ld e, l
	db $ed
	ld e, l
	ld bc, $5430
	rst $10
	ld a, h
	ld e, d
	sbc l
	ld e, d
	adc h
	ld e, d
	adc h
	ld e, d
	ld [bc], a
	jr nz, jr_016_5a5c

	rst $10
	jp nz, $f85a

	ld e, d
	ld [c], a
	ld e, d
	ld [c], a
	ld e, d
	inc bc
	jr nc, jr_016_5a68

	rst $10
	dec e
	ld e, e
	ld c, e
	ld e, e
	dec sp
	ld e, e
	dec sp
	ld e, e
	inc b
	jr nc, @+$56

	rst $10
	ld [hl], c
	ld e, e
	and b
	ld e, e
	adc e
	ld e, e
	adc e
	ld e, e
	dec b
	ld b, b
	ld d, h
	rst $10
	add $5b
	ld b, $5c
	ld [$ea5b], a
	ld e, e
	ld b, $30
	ld d, h
	rst $10
	daa
	ld e, h
	ld d, [hl]
	ld e, h
	ld b, l
	ld e, h
	ld b, l
	ld e, h
	rlca
	jr nc, jr_016_5a98

	rst $10
	add c
	ld e, h
	xor c
	ld e, h
	sbc b
	ld e, h
	sbc b
	ld e, h
	ld [$5440], sp
	rst $10
	call nc, $185c
	ld e, l
	ei
	ld e, h
	ei
	ld e, h
	add hl, bc
	jr nc, jr_016_5ab0

jr_016_5a5c:
	rst $10
	ld d, c
	ld e, l
	add c
	ld e, l
	ld l, d
	ld e, l
	ld l, d
	ld e, l
	ld a, [bc]
	ld b, b
	ld d, h

jr_016_5a68:
	rst $10
	and b
	ld e, l
	call nc, $bf5d
	ld e, l
	cp a
	ld e, l
	rst $38
	ld [$f921], sp
	ld e, c
	call $3214
	jp $0f6a


	nop
	or [hl]
	jp nz, Jump_016_7fb6

	rst $08
	cp c
	reti


	or [hl]
	ld a, a
	cp h
	ld [c], a
	or e
	inc a

jr_016_5a8a:
	rst $20
	ld d, a
	nop
	pop bc
	xor h

jr_016_5a8f:
	rst $20
	ld c, a
	or a
	ld [c], a
	or e
	jp z, $c27f

	or d

jr_016_5a98:
	jp wc57f


	or d
	ld e, b
	nop

jr_016_5a9e:
	ld d, h
	jp z, $2c7f

	sbc $be
	or d
	ld a, a
	jr nc, jr_016_5a8f

	ld c, a
	inc l
	sbc $be
	or d
	jp z, $067f

jr_016_5ab0:
	xor l
	xor e
	dec de
	and [hl]
	ld a, a
	jr nc, jr_016_5a9e

	ld d, a
	ld [$0521], sp
	ld e, d
	call $3214
	jp $0f6a


	nop
	cp h
	ld [c], a
	or e
	inc a

jr_016_5ac7:
	ld a, a
	ld a, [hli]
	call nz, $7f26
	cp l
	or a
	inc sp
	sub $e7
	ld c, a
	jr nc, jr_016_5a8a

	rst $10
	ld a, a
	or c
	or d
	jp $7fca


	or h
	rst $10
	ld a, [hld]
	ret z

	or h
	rst $20
	ld d, a
	nop
	cp b
	cp a
	xor h
	rst $20
	ld c, a
	or [hl]
	jp wc4d9


	ld a, a
	call z, $30de
	ld a, a
	ld h, $7f
	jr nc, jr_016_5ac7

	or [hl]
	rst $20
	ld e, b
	nop
	rst $08
	cp c
	db $dd
	ld a, a
	cp d
	call c, wdf26
	jp wc07f


	rst $10
	ld c, a
	ld d, h
	jp z, $337f

	or a
	ret z

	or h
	ld a, a
	db $d3
	sbc $c5
	rst $20
	ld d, a
	ld [$1121], sp
	ld e, d
	call $3214
	jp $0f6a


	nop
	ld d, h
	add $7f
	dec l
	reti


	jp z, wc57f

	cp h
	ld a, a
	jr nc, @-$28

	rst $20
	ld c, a
	cp [hl]
	or d
	cp [hl]
	or d
	ld a, a
	inc [hl]
	or e
	inc [hl]
	or e
	ld a, a
	call nc, $b3db
	rst $20
	ld d, a
	nop
	or c
	ret c

	ldh [$e6], a
	ld c, a
	cp d
	sbc $c5
	ld a, a
	jp z, $2c2d

	ldh [rRP], a
	ld e, b
	nop
	cp [hl]
	or d
	cp [hl]
	or d
	ld a, a
	inc [hl]
	or e
	inc [hl]
	or e
	ld a, a
	call nc, wc0df
	rst $20
	ld c, a
	cp d
	or e
	or [hl]
	or d
	jp z, $bc7f

	push bc
	or d
	sub $e7
	ld d, a
	ld [$1d21], sp
	ld e, d
	call $3214
	jp $0f6a


	nop
	cp d
	sbc $c1
	jp z, Jump_016_4fe7

	or l
	ret nz

	cp b
	ret


	ld a, a
	inc sp
	sbc $b7
	ld a, a
	or c
	sbc $2e
	sbc $7f
	inc sp
	cp l
	or [hl]
	and $57
	nop
	or l
	inc l
	cp e
	sbc $dd
	ld c, a
	rst $08
	or [hl]
	cp l
	ld a, a
	push bc
	sbc $c3
	ld a, a
	cp l
	ld a, [hli]
	or d
	push bc
	rst $20
	ld e, b
	nop
	set 0, h
	cp d
	call nz, $b27f
	or d
	ld a, a
	call c, wdabd
	jp $e7c0


	ld c, a
	inc sp
	sbc $b7
	jp z, wc07f

	or d
	cp [hl]
	jp nz, $e7c6

	ld d, a
	ld [$2921], sp
	ld e, d
	call $3214
	jp $0f6a


	nop
	ld a, $b8
	jp z, Jump_016_547f

	ld a, a
	ld e, l
	add $4f
	push bc
	rst $18
	ret nz

	ld a, a
	ld a, [hld]
	or [hl]
	ret c

	ld a, a
	jr nc, @-$17

	ld d, l

jr_016_5bdb:
	inc sp
	db $d3
	ld a, a
	or [hl]
	jp nz, $2c7f

	cp h
	sbc $7f
	or c
	reti


	sub $e7
	ld d, a
	nop
	rst $08
	cp c
	reti


	ld a, a
	push bc
	sbc $c3
	ld d, [hl]
	ld a, a
	rst $08
	jr nc, jr_016_5c46

	ld d, h
	ld a, a
	cp a
	jr nc, jr_016_5bdb

	jp wc57f


	or d
	ret


	or [hl]
	ld a, a
	push bc
	or c
	ld e, b
	nop
	push bc
	sbc $30
	sub $e3
	ld c, a
	or l
	rst $08
	or h
	push bc
	sbc $b6
	ld a, a
	or c
	rst $18
	pop bc
	or d
	cp c
	sub $e3
	rst $20
	ld d, a
	ld [$3521], sp
	ld e, d
	call $3214
	jp $0f6a


	nop
	jp z, $e3ca

	jp z, $7fe7

	call c, $bcc0
	jp z, $b24f

	rst $08
	rst $08
	inc sp
	ld a, a
	rst $08
	cp c
	ret nz

	ld a, a
	cp d
	call nz, $7f26
	push bc
	or d
	cpl
	rst $20
	ld d, a
	nop

jr_016_5c46:
	jp z, $e7ac

	ld c, a
	jp z, wd22c

jr_016_5c4d:
	jp wcf7f


	cp c
	ret nz

	db $e3
	xor h
	rst $20
	ld e, b
	nop
	cp h
	ld [c], a
	or e
	inc a
	jp z, wc47f

	or a
	ret


	ld a, a
	or e
	sbc $7f
	jr nc, jr_016_5c4d

	ld c, a
	cp a
	or e
	ld a, a
	or l
	db $d3
	call c, $b2c5
	call nz, $b57f
	pop bc
	cp d
	pop de
	sub $57
	ld [$4121], sp
	ld e, d
	call $3214
	jp $0f6a


	nop
	call c, $bcc0
	jp z, $b24f

	rst $08
	rst $08
	inc sp
	ld a, a
	or [hl]
	rst $18
	ret nz

	ld a, a
	cp d
	call nz, $7f26
	push bc
	or d
	ld d, [hl]
	ld d, a
	nop
	ld d, [hl]
	ld a, a
	ld h, $b8
	rst $20
	ld c, a
	call nc, Call_016_44df
	ret c

	ld a, a
	rst $08
	cp c
	ret nz

	rst $20
	ld e, b
	nop
	cp h
	ld [c], a
	or e
	inc a
	jp z, wc47f

	or a
	ret


	ld a, a
	or e
	sbc $7f
	jr nc, jr_016_5d0f

	ld c, a
	cp a
	or e
	ld a, a
	or l
	db $d3
	call c, $b2c5
	call nz, $b57f
	pop bc
	cp d
	pop de
	sub $57
	ld [$4d21], sp
	ld e, d
	call $3214
	jp $0f6a


	nop
	ld a, $b8
	jp z, $877f

	and l
	adc h
	inc sp
	ld a, a
	or d
	pop bc
	ld a, [hld]

jr_016_5ce1:
	sbc $7f
	jp nz, $b2d6

	rst $20

jr_016_5ce7:
	ld c, a
	rst $08
	or d
	or c
	cp e
	ld a, a
	jp c, $bcde

	pop hl
	or e
	db $d3
	ld a, a
	cp h
	jp wded9


	jr nc, jr_016_5ce1

	ld d, a
	nop
	or c
	pop bc

jr_016_5cfe:
	ldh [$e3], a
	rst $20
	ld a, a
	ld d, [hl]
	ld a, a
	db $d3
	rst $18
	call nz, $c24f
	sub $b2
	ld a, a
	ld d, h
	ld a, a
	inc sp

jr_016_5d0f:
	push bc
	or a
	ldh [$7f], a
	jr nc, jr_016_5ce7

	jr nc, jr_016_5cfe

	ld e, b
	nop
	ret nz

	rst $08
	add $7f
	call nc, $b6cf
	rst $10
	ld a, a
	or l
	ret c

	jp wd9b8


	ld c, a
	call z, wdfc4
	ret nz

	ld a, a
	ld d, h
	ld d, [hl]
	ld d, c
	or c
	jp c, $c27f

	or [hl]
	rst $08
	or h
	ret nz

	rst $10
	ld c, a
	jp nz, $b2d6

	sbc $2c
	ldh [$7f], a
	push bc
	or d
	or [hl]
	push bc
	and $57
	ld [$5921], sp
	ld e, d
	call $3214
	jp $0f6a


	nop
	add h
	xor h
	db $e3

jr_016_5d55:
	adc h
	rst $20
	ld c, a
	inc sp
	sbc $b7
	ret


	ld a, a
	cp c
	cp h
	call c, wdabd
	ld a, a
	cp h
	jp wc57f


	or d
	or [hl]
	ld d, a
	nop
	rst $08

jr_016_5d6c:
	or d
	rst $18
	ret nz

	rst $20
	ld c, a
	cp e
	or d
	or a
	sbc $c9
	ld a, a
	cp d
	inc [hl]
	db $d3
	jp z, $c27f

	sub $b2
	rst $20
	ld e, b
	nop
	cp e
	jp Jump_016_56c4


	ld c, a
	inc sp
	sbc $b7
	cp d
	or e
	inc l
	add $7f
	or d
	or [hl]
	push bc
	cp b
	pop bc
	ldh [$57], a
	ld [$6521], sp
	ld e, d
	call $3214
	jp $0f6a


	nop
	jr nc, jr_016_5d55

	inc l
	add $7f
	cp a
	jr nc, jr_016_5d6c

	ret nz

	ld a, a
	ld d, h
	rst $20
	ld c, a
	cp a
	db $db
	cp a
	db $db
	ld a, a
	ret nz

	ret nz

	or [hl]
	call c, $c3be
	ld a, a
	ret nc

	sub $b3
	rst $20
	ld d, a
	nop
	add hl, de
	add c
	add hl, de
	add c
	ld d, [hl]
	rst $20
	ld c, a
	or c
	ret c

	ld h, $c4
	or e
	ld a, a
	cp e
	sub $b3
	push bc
	rst $10
	rst $20
	ld e, b
	nop
	pop bc
	or h
	xor h
	ld d, [hl]
	rst $20
	ld c, a
	db $d3
	rst $18
	call nz, $c27f
	sub $b2
	ret


	ld a, a
	cp e
	ld h, $bc
	jp $ba7f


	sub $b3
	ld d, a
	nop
	ld [de], a
	or b
	rlca
	rrca
	ret


	ld a, a
	or c
	push bc
	ld d, a
	call $3c6c
	ld hl, $5e95
	ld de, $5e15
	ld a, [wd5a3]
	call $31a8
	ld [wd5a3], a
	ret


jr_016_5e0a:
	xor a
	ld [wcd66], a
	ld [wd5a3], a
	ld [wd97c], a
	ret


	dec e
	ld e, [hl]
	sub h
	ld [hld], a
	cp l
	ld [hld], a
	ld d, b
	ld e, [hl]
	ld hl, wd757
	bit 7, [hl]
	jp nz, $3261

	bit 6, [hl]
	res 6, [hl]
	jp z, $3261

	ld a, $0d
	ldh [$8c], a
	call $13f1
	ld a, $84
	ld [wd036], a
	ld a, $1e
	ld [wd0ec], a
	ld a, $1d
	ld [wcc4d], a
	ld a, $11
	call $3e9d
	ld a, $03
	ld [wd5a3], a
	ld [wd97c], a
	ret


	ld a, [wd034]
	cp $ff
	jr z, jr_016_5e0a

	call $0ebd
	ld a, [wcf06]
	cp $02
	jr z, jr_016_5e68

	ld a, $0e
	ldh [$8c], a
	call $13f1

jr_016_5e68:
	ld hl, wd757
	set 7, [hl]
	call $3e07
	ld a, $00
	ld [wd5a3], a
	ld [wd97c], a
	ret


	ld [$535e], a
	ld e, a
	sub a
	ld e, a
	di
	ld e, a
	ld c, d
	ld h, b
	xor e
	ld h, b
	rst $38
	ld h, b
	ld h, a
	ld h, c
	push bc
	rrca
	push bc
	rrca
	ret nz

	ld h, c
	db $db
	ld h, c
	ld bc, $245f
	ld e, a
	ld [bc], a
	ld b, b
	ld d, [hl]
	rst $10
	ld e, l
	ld e, a
	ld a, a
	ld e, a
	ld [hl], c
	ld e, a
	ld [hl], c
	ld e, a
	inc bc
	ld b, b
	ld d, [hl]
	rst $10
	and c
	ld e, a
	sub $5f
	jp $c35f


	ld e, a
	inc b
	ld b, b
	ld d, [hl]
	rst $10
	db $fd
	ld e, a
	inc hl
	ld h, b
	ld a, [de]
	ld h, b
	ld a, [de]
	ld h, b
	dec b
	ld b, b
	ld d, [hl]
	rst $10
	ld d, h
	ld h, b
	ld a, a
	ld h, b
	ld [hl], l
	ld h, b
	ld [hl], l
	ld h, b
	ld b, $40
	ld d, [hl]
	rst $10
	or l
	ld h, b
	sub $60
	call z, wcc60
	ld h, b
	rlca
	ld b, b
	ld d, [hl]
	rst $10
	add hl, bc
	ld h, c
	ld b, a
	ld h, c
	ld [hld], a
	ld h, c
	ld [hld], a
	ld h, c
	ld [$5610], sp
	rst $10
	ld [hl], c
	ld h, c
	sbc l
	ld h, c
	sub l
	ld h, c
	sub l
	ld h, c
	rst $38
	nop
	ld d, h
	ld h, $7f
	call nz, wd3c3
	ld c, a
	or a
	db $d3
	pop bc
	ld a, a
	sub $bb
	cp a
	or e
	add $7f
	ret z

	jp $bdcf


	ld d, a
	nop
	add l
	ld a, [de]
	add hl, bc
	xor e
	ld h, $7f
	jp nc, $7fdd

	cp e
	rst $08
	cp h
	ret nz

	rst $20
	ld d, c
	add l
	ld a, [de]
	add hl, bc
	xor e
	jp z, wc84f

	ld a, $b9
	jp $b57f


	cp a
	rst $18
	jp wc0b7


	rst $20
	ld d, a
	nop
	add l
	ld a, [de]
	add hl, bc
	xor e
	jp z, $b57f

	call nz, $bcc5
	cp b
	ld a, a
	push bc
	rst $18
	ret nz

	ld c, a
	or l
	or l
	or a
	push bc
	ld a, a
	or c
	cp b
	dec sp
	db $dd
	ld a, a
	cp l
	reti


	call nz, Call_016_5556
	call nc, $b5cf
	cp b
	call $bb7f
	rst $18
	jp $b27f


	rst $18
	ret nz

	rst $20
	ld d, a
	ld [$9521], sp
	ld e, [hl]
	call $3214
	jp $0f6a


	nop
	or l
	rst $18
	ld a, a
	or l
	db $e3
	xor h
	rst $20
	ld c, a
	res 6, d
	jp Jump_016_7fd9


	res 6, d
	jp $e7d9


	ld d, a
	nop
	pop bc
	xor h
	rst $20
	ld c, a
	add hl, hl
	inc [hl]
	or e
	ld a, a
	jr nc, @-$1f

	ret nz

	or [hl]
	ld e, b
	nop
	rst $08
	rst $18
	jp $b87f


	jp c, Jump_016_4fe7

	jp nz, $b2d8

	call nz, $7f26
	cp d
	sbc $26
	rst $10
	ld h, $df
	ret nz

	rst $20
	ld d, a
	ld [$a121], sp
	ld e, [hl]
	call $3214
	jp $0f6a


	nop
	ld d, [hl]
	ld a, a
	or c
	call c, wd9c3
	push bc
	rst $20
	ld c, a
	rst $08
	jp nz, $ba7f

	call nz, Call_016_7fd3
	rst $08
	ret nz

	rst $20
	ld d, l
	jp nz, wc9d8

	ld a, a
	ret nz

	ret


	cp h
	ret nc

	ld a, a
	inc sp
	or c
	reti


	ld d, a
	nop
	or l
	rst $18
	call nz, $e756
	ld c, a
	pop bc
	ld [c], a
	rst $18
	call nz, wcf7f
	rst $18
	jp $b87f


	jp c, $0058

	or d
	or d
	ld a, a
	jp nz, $2bd8

	or l
	db $dd
	ld a, a
	jp nz, $b4b6

	ld a, [hld]
	ld c, a
	or d
	or d
	ld a, a
	ld d, h
	ld h, $7f
	jp nz, wd9da

	sbc $30
	ld h, $56
	ld d, a
	ld [$ad21], sp
	ld e, [hl]
	call $3214
	jp $0f6a


	nop
	jp nz, wc9b7

	or d
	cp h
	ld a, a
	cp e
	ld h, $bc
	jp wded9


	jr nc, jr_016_608b

	cp c
	inc [hl]
	ld c, a
	or a
	ret nc

	ld a, a
	db $d3
	rst $18
	jp wc57f


	or d
	and $57

jr_016_601a:
	nop
	or c
	ret c

	ldh [$d8], a
	ldh [rRP], a
	rst $20
	ld e, b
	nop
	jp nz, wc9b7

	or d
	cp h
	ld h, $7f
	or c
	jp c, Jump_016_4f3a

	ld d, h
	ld h, $7f
	cp h
	sbc $b6
	ld a, a
	cp h
	jp $3e55


	cp b
	ld a, a
	or [hl]
	rst $18
	jp $7fc0


	or [hl]
	db $d3
	ld a, a
	cp h
	jp c, $b2c5

	sub $57
	ld [$b921], sp
	ld e, [hl]
	call $3214
	jp $0f6a


	nop
	ld a, $b8
	ret


	ld a, a
	cp [hl]
	sbc $d3
	sbc $7f
	inc sp
	sbc $b7
	ld a, a
	jr nc, jr_016_601a

	rst $10
	ld c, a
	or e
	ret nc

	ld a, a
	ld d, h
	jp z, $b87f

	call c, $b8bc
	ld a, a
	push bc
	or d
	sub $57
	nop
	call z, $e0c6
	ld a, a
	call z, $e0c6
	ld d, [hl]

jr_016_607e:
	ld e, b
	nop
	or e
	db $e3
	sbc $56
	ld a, a
	ret nz

	cp h
	or [hl]
	ld a, a
	ret nc

	dec l

jr_016_608b:
	jp z, $334f

	sbc $b7
	db $dd
	ld a, a
	sub $b8
	ld a, a
	call nz, $bdb5
	ld a, a
	or [hl]
	rst $10
	ld d, l
	call c, $262b
	ld a, a
	or a
	cp b
	ld a, a
	jp z, Jump_016_7f2d

	jr nc, jr_016_607e

	ret z

	ld d, [hl]
	ld d, a
	ld [wc521], sp
	ld e, [hl]
	call $3214
	jp $0f6a


	nop
	or l
	or e
	xor h
	rst $20
	ld a, a
	jp nz, $7fd8

	add hl, de
	add l
	ld c, a
	ld d, h
	ld a, a
	add hl, de
	add l
	add $7f
	inc sp
	or c
	or e
	rst $20
	ld d, a
	nop
	cp e
	cp l
	ld h, $7f
	jp nz, $b2d6

	rst $20
	ld e, b
	nop
	cp l
	or a
	ld a, a
	cp d
	cp a
	ld c, a
	db $d3
	ret


	ret


	ld a, a
	inc l
	ld [c], a
	or e
	dec l
	ld a, a
	push bc
	jp c, Jump_016_7f56

	jr nc, @-$39

	rst $20
	ld d, l
	ld a, $b8
	db $d3
	ld a, a
	jp nz, $7fd8

	push bc
	rst $10
	ld a, a
	rst $08
	cp c
	push bc
	or d
	cpl
	rst $20
	ld d, a
	ld [wd121], sp
	ld e, [hl]
	call $3214
	jp $0f6a


	nop
	jp nz, $7fd8

	ld a, [hld]
	rst $18
	or [hl]
	ret c

	ld a, a
	cp h
	jp wc57f


	or d
	inc sp
	ld c, a
	db $d3
	rst $18
	call nz, $bc7f
	ld a, [hli]
	call nz, Call_016_7fd3
	inc sp
	or a
	jp c, Jump_016_553a

	cp e
	or d
	cp d
	or e
	ld a, a
	push bc
	sbc $30
	ld h, $56
	ld d, a
	nop
	push bc
	or [hl]
	push bc
	or [hl]
	ld d, [hl]
	ld c, a
	or e
	rst $08
	cp b
	ld a, a
	or d
	or [hl]
	sbc $7f
	db $d3
	ret


	ld a, a
	inc l
	ldh [$58], a
	nop
	jp z, wcaca

	ld d, [hl]
	ld a, a
	jr nc, @-$4c

	inc l
	ld [c], a
	or e
	inc a
	rst $20
	ld c, a
	rst $08
	cp c
	ret nz

	ld a, a
	cp b
	rst $10
	or d
	inc sp
	ld a, a
	jp z, wcad7

	ld a, a
	ret nz

	jp wd6de


	ld d, a
	ld [wdd21], sp
	ld e, [hl]
	call $3214
	jp $0f6a


	nop
	ld d, [hl]
	ld a, a
	push bc
	add $26
	ld a, a
	jp nz, wd9da

	or [hl]
	rst $18
	jp Jump_016_4fe6


	cp a
	ret c

	ldh [$7f], a
	jp nz, wc3df

	ld a, a
	ret nc

	push bc
	cp c
	ret c

	ldh [rHDMA5], a
	call c, wd7b6
	sbc $d6
	rst $20
	ld d, a
	nop
	cp h
	cp b
	inc l
	rst $18
	ret nz

	push bc
	ld e, b
	nop
	or c
	or c
	ld a, a
	adc c
	add c
	add [hl]
	xor e
	rlca
	ld d, [hl]
	ld a, a
	ret z

	ld c, a
	sub $b8
	ld a, a
	jp nz, wd9da

	ld a, a
	cp c
	inc [hl]
	ld d, l
	sub $dc
	cp l
	daa
	reti


	sbc $30
	sub $c5
	or c
	ld d, [hl]
	ld d, a
	nop
	cp d
	cp d
	jp z, $f77f

	ld hl, sp+$3a
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
	adc e
	add h
	xor e
	ld a, a
	adc a
	add d
	xor e
	ld d, a
	nop
	cp d
	cp d
	jp z, $c27f

	ret c

	ret


	ld a, a
	jp nc, $bcb2

	ld [c], a
	ld d, a
	call $3c6c
	ld hl, $621a
	ld de, $61fc
	ld a, [wd5a4]
	call $31a8
	ld [wd5a4], a
	ret


	ld h, c
	ld [hld], a
	sub h
	ld [hld], a
	cp l
	ld [hld], a
	sub e
	ld h, d
	sbc c
	ld h, d
	sbc a
	ld h, d
	and l
	ld h, d
	xor e
	ld h, d
	or c
	ld h, d
	or a
	ld h, d
	cp l
	ld h, d
	jp wc962


	ld h, d
	push bc
	rrca
	dec hl
	ld h, [hl]
	ld bc, $5c20
	rst $10
	db $d3
	ld h, d
	ld a, [$f362]
	ld h, d
	di
	ld h, d
	ld [bc], a
	jr nc, jr_016_6285

	rst $10
	inc a
	ld h, e
	ld l, l
	ld h, e
	ld h, d
	ld h, e
	ld h, d
	ld h, e
	inc bc
	jr nc, @+$5e

	rst $10
	adc h
	ld h, e
	cp a
	ld h, e
	or h
	ld h, e
	or h
	ld h, e
	inc b
	jr nc, jr_016_629d

	rst $10
	db $e4
	ld h, e
	ld de, $0664
	ld h, h
	ld b, $64
	dec b
	jr nz, jr_016_62a9

	rst $10
	jr c, jr_016_62b4

	ld e, a
	ld h, h
	ld d, h
	ld h, h
	ld d, h
	ld h, h
	ld b, $30
	ld e, h
	rst $10
	add d
	ld h, h
	cp b
	ld h, h
	and l
	ld h, h
	and l
	ld h, h
	rlca
	jr nc, jr_016_62c1

	rst $10
	reti


	ld h, h
	rrca
	ld h, l
	inc b
	ld h, l
	inc b
	ld h, l
	ld [$5c30], sp
	rst $10
	ld [hl], $65
	ld h, h
	ld h, l
	ld e, d
	ld h, l
	ld e, d
	ld h, l
	add hl, bc
	jr nc, @+$5e

	rst $10
	sub b
	ld h, l
	call $b465
	ld h, l
	or h

jr_016_6285:
	ld h, l
	ld a, [bc]
	jr nc, @+$5e

	rst $10
	jp hl


	ld h, l
	dec c
	ld h, [hl]
	cp $65
	cp $65
	rst $38
	ld [$1a21], sp
	ld h, d
	jr jr_016_62cd

	ld [$2621], sp
	ld h, d

jr_016_629d:
	jr jr_016_62cd

	ld [$3221], sp
	ld h, d
	jr jr_016_62cd

	ld [$3e21], sp
	ld h, d

jr_016_62a9:
	jr jr_016_62cd

	ld [$4a21], sp
	ld h, d
	jr jr_016_62cd

	ld [$5621], sp

jr_016_62b4:
	ld h, d
	jr jr_016_62cd

	ld [$6221], sp
	ld h, d
	jr jr_016_62cd

	ld [$6e21], sp
	ld h, d

jr_016_62c1:
	jr jr_016_62cd

	ld [$7a21], sp
	ld h, d
	jr jr_016_62cd

	ld [$8621], sp
	ld h, d

jr_016_62cd:
	call $3214
	jp $0f6a


	nop

jr_016_62d4:
	call nz, $30d3
	pop bc
	call nz, $ba7f
	or e
	or [hl]
	sbc $7f
	cp h
	ret nz

	ld c, a
	or l
	or a
	add $b2
	ret c

	inc sp
	ld a, a
	cp h
	ld [c], a
	or e
	inc a
	ld a, a
	cp l
	reti


	call c, Call_016_57e7
	nop
	jr nc, @-$2c

	jr nc, jr_016_62d4

	rst $20
	ld e, b
	nop
	call nz, $30d3

jr_016_62fe:
	pop bc
	call nz, $ba7f
	or e
	or [hl]
	sbc $7f
	cp h
	ret nz

	ld c, a
	ld d, h
	ret


	ld a, a
	sub l
	xor h
	add a
	sub a
	db $e3
	sbc a
	ld d, l
	ret nz

	call nz, $7fb4
	or a
	add $7f
	or d
	rst $10
	push bc
	cp b
	jp $56d3


	ld d, l
	call nz, wc0df
	ld a, a
	set 0, h
	inc sp
	ld a, a
	push bc
	or d
	call nz, $c255
	cp c
	ld a, a
	push bc
	or l
	cp [hl]
	push bc
	or d
	ld a, a
	ret


	sub $c8
	rst $20
	ld d, a
	nop
	or a
	ret nc

	ld a, a
	call nc, $bcbb
	cp a
	or e
	ld a, a
	jr nc, jr_016_62fe

	rst $10
	ld c, a
	rst $08
	cp c
	reti


	ld a, a
	or a
	ld h, $7f
	cp h
	push bc
	or d
	rst $20
	ld d, l
	cp h
	ld [c], a
	or e
	inc a
	ld a, a
	cp h
	jp wd9d0


	call c, Call_016_57e7
	nop
	or c
	jp c, Jump_016_7fe6

	rst $08
	cp c
	ret nz

	ret


	and $58
	nop
	ld a, $b3
	cp a
	or e
	cpl
	cp b
	ld d, [hl]
	ld c, a
	sub $b8
	ld a, a
	ret nc

	or [hl]
	cp c
	reti


	ld a, a
	cp c
	inc [hl]
	ld d, l
	cp d
	call c, $b3bf
	inc sp
	ld a, a
	or d
	call nc, wdc30
	ld d, a
	nop
	ld a, $b8
	ld h, $7f
	cp b
	pop bc
	inc a
	or h
	ld a, a
	call z, wc0b2
	ret c

	ld a, a
	cp l
	reti


	call nz, wc44f
	ret c

	ld a, a
	ld d, h
	ld h, $55
	call nz, $33de
	ld a, a
	or a
	ret nz

	ret c

	ld a, a
	cp l
	reti


	sbc $30
	ld l, $e7
	ld d, a
	nop
	call z, $7fac
	or [hl]
	push bc
	cp h
	or d
	ret z

	rst $20
	ld e, b
	nop
	ld a, $b8
	ret


	ld a, a
	sub $b3
	push bc
	ld a, a
	adc a
	add c
	ld b, d
	jp z, $bc4f

	ld [c], a
	or e
	inc a
	ld a, a
	ld a, [hli]
	call nz, wc67f
	jp z, wd155

	or d
	jp wc57f


	or d
	ret


	or [hl]
	push bc
	or c
	ld d, [hl]
	ld d, a
	nop
	or l
	call nc, $e656
	ld c, a
	call nz, $26d8
	ld a, a
	call z, $b4d9
	jp $e7d9


	ld d, l
	or l
	rst $08
	or h
	ld a, a
	db $d3
	cp h
	or [hl]
	cp h
	jp Jump_016_7f56


	jp nz, $b2d6

	push bc
	and $57
	nop
	or l
	db $d3
	rst $18
	ret nz

	ld a, a
	call nz, wd8b5
	jr nc, jr_016_6469

	nop
	or c
	rst $18
	ret nz

	ret c

	ld a, a
	rst $08
	or h
	ld a, a
	jr nc, @-$45

	inc [hl]
	cp e
	ld d, [hl]
	ld c, a
	call nz, $7fd8
	ld d, h
	jp z, $2c55

	cp h
	sbc $7f
	call nc, $2c7f
	call c, Call_016_7fda
	add $ca
	ld a, a
	jp nz, $b2d6

jr_016_6436:
	sub $57
	nop
	or c
	rst $10
	db $e3
	sbc $e7
	ld c, a
	ld d, h
	ld a, a
	ret nc

	ret nz

	or d
	add $55
	or [hl]
	call c, $b2b2
	ld a, a
	or l
	call nz, wc9ba
	cp d
	ld a, a
	ret z

	rst $20
	ld d, a
	nop
	push de
	jr nc, jr_016_6436

	ld a, a
	cp h
	pop bc
	ldh [$df], a
	ret nz

	ld e, b
	nop
	cp b
	call nc, $b2bc
	ld a, a
	cp c
	inc [hl]
	ld c, a
	or l

jr_016_6469:
	ret z

	or h

jr_016_646b:
	cp e
	sbc $ca
	ld a, a
	or l
	call nz, Call_016_7fc5
	jr nc, @-$48

	rst $10
	ld d, l
	push de
	reti


	cp h
	jp $b17f


	add hl, hl
	reti


	call c, Call_016_57c8
	nop
	or c
	ret


	ret z

	ld d, [hl]
	rst $20
	ld c, a
	call c, $bcc0
	jp z, wcb7f

	call nz, $7fd8
	jr z, jr_016_646b

	cp h
	ld a, a
	jr nc, @-$48

	rst $10
	ld d, l
	ld d, h
	ld a, a
	or [hl]
	rst $18
	jp Jump_016_7fd9


	call c, $e7b9
	ld d, a
	nop
	ld d, [hl]
	ld a, a
	ld d, h
	jp z, $b64f

	pop bc
	ld a, a
	rst $08
	cp c
	ld a, a
	inc l
	ldh [$7f], a
	push bc
	or d
	call c, $0058
	cp a
	or e
	ld d, [hl]
	rst $20
	ld c, a
	or e
	pop bc
	add $7f
	or [hl]
	or h
	rst $18
	ret nz

	ld a, a
	call nz, Call_016_55b7
	ld d, h
	ld h, $7f
	or d
	reti


jr_016_64cf:
	call nz, wce7f
	rst $18
	call nz, $bd7f
	reti


	ret


	ld d, a
	nop
	cp d
	rst $10
	ld a, a
	ld a, $b3
	dec l
	rst $20
	ld a, a
	cp h
	ld [c], a
	or e
	inc a
	jr nc, jr_016_64cf

	ld c, a
	cp a
	ret


	ld a, a
	call wc9de
	ld a, a
	call nc, $7fc2
	or [hl]
	rst $10
	ld d, l
	pop de
	ret c

	call nc, $7fd8
	call nz, $c3df
	ld a, a
	or a
	ret nz

	ld l, $e7
	ld d, a
	nop
	push bc
	rst $18
	call nz, $7fb8
	or d
	or [hl]
	ret z

	or h
	ld e, b
	nop
	ret nc

	inc l
	or [hl]
	or d
	ld a, a
	inc l
	sbc $be
	or d
	ld d, [hl]
	rst $20
	ld c, a
	xor c
	and [hl]
	ret


	ld a, a
	adc $b3
	ld h, $7f
	or [hl]
	rst $18
	cp d
	or d
	or d
	ld l, $e7
	ld d, l
	ld e, [hl]
	ld a, a
	ret nc

	ret nz

	or d
	add $7f
	push bc
	rst $20
	ld d, a
	nop
	or l
	or e
	xor h
	rst $20
	ld c, a
	rst $08
	cp c

jr_016_653e:
	ret nz

	rst $10
	ld a, a
	or c
	ret c

	ld h, $c8
	ld a, a
	ld l, $de
	inc a
	rst $20
	ld d, l
	or l
	or d
	jp $b27f


	rst $18
	jp wd37f


	rst $10
	or l

jr_016_6556:
	or e
	or [hl]
	rst $20
	ld d, a
	nop
	cp a
	ret c

jr_016_655d:
	ldh [$7f], a
	ret z

	or h
	jr nc, jr_016_653e

	ld e, b
	nop
	or c
	ret c

	ld h, $c8
	ld a, a
	or l

jr_016_656b:
	or d
	jp $7fb8


	push bc
	sbc $c3
	ld c, a
	inc l
	ld [c], a
	or e

jr_016_6576:
	jr nc, jr_016_6556

	add $7f
	or a
	rst $08
	rst $18
	jp Jump_016_7fd9


	jr nc, jr_016_655d

	rst $20
	ld d, l
	or [hl]
	reti


	or d
	ld a, a
	inc l
	ld [c], a
	or e
	jr nc, jr_016_656b

	jr nc, jr_016_6576

	ld d, a
	nop
	cp e
	or d
	or a
	sbc $7f
	jp z, wdfd4

	jp Jump_016_7fd9


	cp d
	call nz, $e656
	ld c, a
	cp a
	or e
	ret z

	or h
	ld d, [hl]
	rst $20
	ld d, l
	ld d, h
	ret


	ld a, a
	cp d
	or e
	or [hl]
	sbc $7f
	or [hl]
	push bc
	rst $20
	ld d, a
	nop
	db $d3
	or e
	xor h
	ld d, [hl]
	rst $20
	ld c, a
	cp h
	ld [c], a
	or e
	inc a
	ld a, a
	inc l
	ldh [$7f], a
	push bc
	cp b
	jp $ba7f


	or e
	or [hl]
	sbc $d6
	ld e, b
	nop
	sub $b8
	ld a, a
	call c, $bcc0
	db $d3
	ld a, a
	or l
	call nz, $30d3
	pop bc
	call nz, Call_016_544f
	ld a, a
	cp d
	or e
	or [hl]
	sbc $7f
	cp l
	reti


	call c, Call_016_57e7
	nop
	cp h
	sub $b3
	sub $7f
	cp h
	sub $b3
	sub $4f
	ld d, h
	ld a, a
	cp h
	sub $b3
	sub $e3
	xor h
	rst $20
	ld d, a
	nop
	cp h
	ld [c], a
	or e
	inc a
	ld a, a
	or c
	cp [hl]
	ret c

	ld a, a
	cp l
	daa
	ret nz

	call c, $0058
	db $d3
	or e
	ld a, a
	cp l
	cp d
	cp h
	ld a, a
	sub $dc
	or d
	ld a, a
	set 0, h
	call nz, wda4f
	sbc $bc
	pop hl
	or e
	ld a, a
	cp h
	jp $b87f


	reti


	sub $50
	ld d, b
	nop
	cp d
	cp d
	jp z, $f77f

	ei
	ld a, [hld]
	sbc $7f
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
	ld hl, $66e3
	ld de, $6665
	ld a, [wd5a5]
	call $31a8
	ld [wd5a5], a
	ret


Jump_016_665a:
	xor a
	ld [wcd66], a
	ld [wd5a5], a
	ld [wd97c], a
	ret


	ld l, l
	ld h, [hl]
	sub h
	ld [hld], a
	cp l
	ld [hld], a
	and e
	ld h, [hl]
	ld hl, wd75f
	bit 1, [hl]
	jp nz, $3261

	bit 0, [hl]
	res 0, [hl]
	jp z, $3261

	ld a, $0a
	ldh [$8c], a
	call $13f1
	ld a, $84
	ld [wd036], a
	ld a, $1e
	ld [wd0ec], a
	ld a, $21
	ld [wcc4d], a
	ld a, $11
	call $3e9d
	call $0ebd
	ld a, $03
	ld [wd5a5], a
	ld [wd97c], a
	ret


	ld a, [wd034]
	cp $ff
	jp z, Jump_016_665a

	call $0ebd
	ld a, [wcf06]
	cp $02
	jr z, jr_016_66bc

	ld a, $0b
	ldh [$8c], a
	call $13f1

jr_016_66bc:
	ld hl, wd75f
	set 1, [hl]
	call $3e07
	ld a, $00
	ld [wd5a5], a
	ld [wd97c], a
	ret


	inc l
	ld h, a
	ld a, c
	ld h, a
	cp h
	ld h, a
	ld bc, $6268
	ld l, b
	jp z, $2968

	ld l, c
	add l
	ld l, c
	sbc a
	ld l, c
	ld b, b
	ld l, c
	ld h, e
	ld l, c
	ld bc, $5e30
	rst $10
	ld [hl], $67
	ld c, e
	ld h, a
	ld b, b
	ld h, a
	ld b, b
	ld h, a
	ld [bc], a
	jr nz, jr_016_6750

	rst $10
	add e
	ld h, a
	and a
	ld h, a
	sbc l
	ld h, a
	sbc l
	ld h, a
	inc bc
	jr nz, jr_016_675c

jr_016_66fe:
	rst $10
	add $67
	call c, wd367
	ld h, a
	db $d3
	ld h, a
	inc b
	jr nz, jr_016_6768

	rst $10
	dec bc
	ld l, b
	ld a, [hli]
	ld l, b
	inc hl
	ld l, b
	inc hl
	ld l, b
	dec b
	jr nz, jr_016_6774

	rst $10
	ld l, h
	ld l, b
	sbc b
	ld l, b
	adc e
	ld l, b
	adc e
	ld l, b
	ld b, $40
	ld e, [hl]
	rst $10
	call nc, $fa68
	ld l, b
	db $ed
	ld l, b
	db $ed
	ld l, b
	rst $38
	ld [$e321], sp
	ld h, [hl]
	call $3214
	jp $0f6a


	nop
	rst $18
	jr nc, jr_016_66fe

	ld a, a
	cp d

jr_016_673c:
	rst $10
	or c

jr_016_673e:
	rst $20
	ld d, a
	nop
	rst $18
	jp $2cde


	ldh [$c8], a
	or h
	cpl
	rst $20
	ld e, b
	nop
	rst $18
	cp [hl]
	db $e3
	push bc

jr_016_6750:
	rst $20
	ld c, a
	or l
	jp c, $c1c0

	ldh [$7f], a
	jp z, wd9bc

	ld a, a

jr_016_675c:
	sub $d8
	ld d, l
	cp d
	cp d
	inc sp
	ld a, a
	jr nc, jr_016_673c

	jr nc, jr_016_673e

	ld a, a

jr_016_6768:
	cp h
	jp Jump_016_7fd9


	adc $b3
	ld h, $55
	ret nz

	ret


	cp h
	or d

jr_016_6774:
	sbc $30
	sub $e7
	ld d, a
	ld [$ef21], sp
	ld h, [hl]
	call $3214
	jp $0f6a


	nop
	or l
	or e
	ld a, a
	or l
	or e
	xor h
	rst $20
	ld c, a
	cp a
	ret


	ld a, a
	inc l
	jp $bcde


	ldh [$7f], a
	or l
	jp c, Jump_016_7fc6

	cp b
	jp c, Jump_016_57e7

	nop
	sbc b
	xor h
	add a
	ld a, a
	add b
	add d
	sub e
	rst $20
	ld e, b
	nop
	db $d3

jr_016_67a9:
	or e
	ld a, a
	or d
	or d
	rst $20
	ld c, a
	inc l
	jp $bcde


	ldh [$ca], a
	ld a, a
	or d
	rst $10
	ret z

	or h
	rst $20
	ld d, a
	ld [$fb21], sp
	ld h, [hl]
	call $3214
	jp $0f6a


	nop
	or [hl]
	call c, $26b2
	rst $18
	jp wd47f


	db $db
	or e
	rst $20
	ld d, a
	nop
	cp d
	ret


	ld a, a
	call nc, $b3db
	rst $20
	ld e, b
	nop
	sub $b8
	db $d3
	ld a, a
	call nc, wc3df
	ld a, a
	cp b
	jp c, wc5c0

	rst $20
	ld c, a
	or l
	jp c, $7fca

	rst $08
	cp c
	reti


	ret


	ld h, $55
	jr nc, jr_016_67a9

	ld a, a
	or a
	rst $10
	or d
	ld a, a
	push bc
	sbc $30
	rst $20
	ld d, a
	ld [$0721], sp
	ld h, a
	call $3214
	jp $0f6a


	nop
	cp d
	rst $10
	ld a, a
	rst $08
	jp Jump_016_4fe7


	inc a
	jp nz, wdfb6

	jp $b57f


	or d
	jp wc67f


	add hl, hl
	reti


	push bc
	rst $20
	ld d, a
	nop
	inc e
	xor e
	add hl, de
	db $e3
	rst $20
	ld e, b
	nop
	or l
	jp c, $c1c0

	ld a, a
	or d
	jp nz, Jump_016_7fd3

	cp d
	cp d
	add $7f
	or d
	reti


	ld l, $e7
	ld c, a
	cp d
	call c, wdfb6
	ret nz

	rst $10
	ld a, a
	add a
	sub b
	add hl, de
	ld a, a
	or [hl]
	rst $10
	ld d, l
	or e
	ret nc

	cpl
	or d
	ld a, a
	rst $08
	call c, $c3df
	ld d, l
	adc l
	add [hl]
	sub b
	add a
	call $b27f
	cp b
	sbc $30
	push bc
	rst $20
	ld d, a
	ld [$1321], sp
	ld h, a
	call $3214
	jp $0f6a


	nop
	or l
	jp c, $7fca

	or d
	rst $08
	ld a, a
	or a
	add hl, hl
	sbc $26
	ld a, a
	call c, $b2d9
	rst $20
	ld c, a

jr_016_687e:
	add d
	adc d
	ld a, a
	ld a, [hld]
	rst $10
	cp h
	ld h, $7f
	cp h
	jp $e7b4


	ld d, a
	nop
	push bc
	rst $08
	or d
	or a
	push bc
	ld a, a
	cp d
	cpl
	or e
	jr nc, jr_016_687e

	ld e, b
	nop
	inc [hl]
	or e
	cp [hl]
	ld a, a
	ld d, h
	ld a, a
	call nc, wc5d9
	rst $10
	ld c, a
	or a
	ld [c], a
	or e
	ld a, $b3
	push bc
	ld a, a
	call nc, $26c2
	ld a, a
	adc $bc
	or d
	ld l, $e7
	ld d, l
	cp a
	jp c, $7f33

	or c
	or d
	jp Jump_016_55dd


	inc e
	xor b
	inc e
	xor b
	add $7f
	cp h
	jp wd9d4


	rst $20
	ld d, a
	ld [$1f21], sp
	ld h, a
	call $3214
	jp $0f6a


	nop
	set 4, d
	set 4, d
	db $e3
	xor h
	rst $20
	ld c, a
	cp l
	cp d
	cp h
	ld a, a
	or c
	cp a
	sbc $33
	rst $18
	jp wd47f


	reti


	ld l, $e7
	ld d, a
	nop
	or l
	jp c, $7fdd

	or l
	cp d
	rst $10
	cp l
	push bc
	sub $e7
	ld e, b
	nop
	or l
	or e
	ld a, a
	or l
	or e
	xor h
	rst $20
	ld c, a
	ld d, h
	inc sp
	ld a, a
	or l
	inc [hl]
	or [hl]
	cp h
	ret nz

	ret c

	ld d, l
	or [hl]
	ret nc

	jp nz, $beb6

	ret nz

	ret c

	ld a, a
	or d
	ret nz

	dec l
	rst $10
	ld a, a
	cp h
	ret nz

	ret c

	ld d, l
	cp l
	reti


	ret


	ld h, $7f
	cp l
	or a
	jr nc, jr_016_6955

	rst $20
	ld d, a
	nop
	ld d, h
	ld h, $7f
	call nz, wd3c3
	ld c, a
	or a
	db $d3
	pop bc
	sub $bb
	cp a
	or e
	add $7f
	ret z

	jp wcfb2


	cp l
	ld d, a
	nop
	add l
	ld a, [de]
	add hl, bc
	xor e
	jp z, wd27f

	db $dd
	ld a, a
	cp e
	rst $08
	cp h
	ret nz

	rst $20
	ld d, c
	ret z

	ld a, $b9
	ret nz

	ld a, a

jr_016_6955:
	add l
	ld a, [de]
	add hl, bc
	xor e
	ld h, $4f
	or l
	cp a
	rst $18
	jp wc0b7


	rst $20
	ld d, a
	nop
	add l
	ld a, [de]
	add hl, bc
	xor e
	jp z, $b57f

	or l
	or a
	push bc
	ld a, a
	or c
	cp b
	dec sp
	db $dd
	cp h
	jp wd44f


	rst $08
	ret


	or l
	cp b
	call $bb7f
	rst $18
	jp wdfb2


	ret nz

	ld d, [hl]
	ld d, a
	nop
	cp e
	or [hl]
	ret nc

	pop bc
	db $dd
	ld a, a
	ret nz

	ret


	cp h
	db $d3
	or e
	rst $20
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
	rst $20
	ld d, a
	nop
	cp d
	cp d
	jp z, $f77f

	db $fc
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
	call $3c6c
	ld hl, $69dc
	ld de, $69cc
	ld a, [wd5a6]
	call $31a8
	ld [wd5a6], a
	ret


	ld h, c
	ld [hld], a
	sub h
	ld [hld], a
	cp l
	ld [hld], a
	ld bc, $576a
	ld l, d
	or h
	ld l, d
	ld a, [bc]
	ld l, e
	inc h
	ld l, e
	ld bc, $6230
	rst $10
	dec bc
	ld l, d
	add hl, sp
	ld l, d
	inc sp
	ld l, d
	inc sp
	ld l, d
	ld [bc], a
	jr nc, jr_016_6a4d

	rst $10
	ld h, c
	ld l, d
	sub b
	ld l, d
	ld a, b
	ld l, d
	ld a, b
	ld l, d
	inc bc
	ld b, b
	ld h, d
	rst $10
	cp [hl]
	ld l, d
	add sp, $6a
	pop hl
	ld l, d
	pop hl
	ld l, d
	rst $38
	ld [wdc21], sp
	ld l, c
	call $3214
	jp $0f6a


	nop
	cp d
	or e
	or d
	or e
	ld a, a
	cp b
	cp e
	pop de
	rst $10
	db $dd
	ld a, a
	ret nc

	jp nz, wc3b9

	jp z, $b14f

	ret nz

	rst $10
	cp h
	or d
	ld a, a
	ld d, h
	ld a, a
	or d
	push bc
	or d
	or [hl]
	ld d, l
	cp e
	ld h, $bc
	jp wc9d9


	cp e
	rst $20
	ld d, a
	nop
	or c
	or e
	ld d, [hl]
	rst $20
	ld e, b
	nop
	inc l
	jp $bcde


	ldh [$7f], a
	db $d3
	rst $18
	jp $b27f


	ret nz

	rst $10
	ld c, a
	ld a, $b8
	db $d3
	ld a, a
	adc d

jr_016_6a4d:
	add c
	add a
	ret c

	xor e
	rlca
	ld a, a
	cp h
	ret nz

	or d
	ld d, a
	ld [$e821], sp
	ld l, c
	call $3214
	jp $0f6a


	nop
	add a
	and [hl]
	xor h
	add a
	ld d, [hl]
	xor h
	rst $20
	ld c, a
	inc [hl]
	or e
	and $7f
	ld a, $b8
	ret


	ld a, a
	push de
	dec sp
	inc a
	or h
	rst $20
	ld d, a
	nop
	or a
	inc l
	db $d3
	ld a, a
	push bc
	or [hl]
	dec l
	ld a, [hld]
	ld c, a
	or e
	ret nz

	jp c, $b2cf

	add $7f
	rst $18
	jp $ba7f


	call nz, Call_016_58b6
	nop
	or e
	ret nc

	ld h, $7f
	pop bc
	or [hl]
	or d
	ld a, a
	or [hl]
	rst $10
	ld c, a
	cp h
	pop hl
	or e
	rst $08
	jp nz, $7fca

	or e
	ret nc

	inc [hl]
	ret c

	ld a, a
	ld d, h
	ld d, l
	jp nz, wcfb6

	or h
	add $7f
	cp b
	reti


	sub $57
	ld [$f421], sp
	ld l, c
	call $3214
	jp $0f6a


	nop
	cp d
	ret


	ld a, a
	or c
	ret nz

	ret c

jr_016_6ac5:
	jp z, $3e4f

	cp b
	rst $10
	ret


	ld a, a
	push bc
	call c, wd83a
	jr nc, @-$17

	ld d, l
	pop bc
	or [hl]
	sub $d7
	push bc
	or d
	inc sp
	ld a, a
	adc $bc
	or d
	push bc
	rst $20
	ld d, a
	nop
	ld d, [hl]

jr_016_6ae3:
	ld a, a
	call z, $e7b3
	ld e, b
	nop
	jr nc, jr_016_6ac5

	inc sp
	db $d3
	ld a, a
	or l
	or a
	add $b2
	ret c

	ret


	ld c, a
	ld d, h
	db $dd
	ld a, a
	call nz, wc6d8
	ld a, a
	or d
	cp b
	ld d, l
	ld a, [hld]
	cp h
	ld [c], a
	ld h, $7f
	or c
	reti


	jr nc, jr_016_6ae3

	rst $20
	ld d, a
	nop
	cp d
	cp d
	jp z, $f77f

	cp $3a
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
	cp d
	cp d
	jp z, $8a7f

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
	or c
	reti


	or d
	jp Jump_016_7fc9


	jp nz, $bab3

	or e
	ld a, a
	or a
	sbc $bc
	ld d, a
	db $10
	inc b
	inc b
	ret nz

	ld l, a
	ld h, e
	ld l, e
	ld c, a
	ld l, e
	nop
	add d
	ld l, a
	jp $3c6c


	ld a, [wd6f0]
	bit 1, a
	ret nz

	ld b, $06
	call $34dd
	ret nz

	ld b, $2d
	jp $34dd


	ld [hl], e
	ld l, e
	reti


	ld l, e
	ld b, [hl]
	ld l, h
	ld l, b
	ld l, h
	add h
	ld l, h
	add hl, hl
	ld l, a
	ld b, e
	ld l, a
	ld h, l
	ld l, a
	ld [$f0fa], sp
	sub $cb
	ld a, a
	jr nz, jr_016_6b88

	ld hl, $6b96
	call $3c79
	ld hl, wd6f0
	set 6, [hl]
	jr jr_016_6b93

jr_016_6b88:
	ld hl, $6bb4
	call $3c79
	ld hl, wd6f0
	res 7, [hl]

jr_016_6b93:
	jp $0f6a


	nop
	ret nc

	jp $e7d6


	ld a, a
	or e
	pop bc
	ret


	ld a, a
	ld b, c
	add l
	sub b
	xor [hl]
	add d
	ld c, a
	push bc
	sbc $c3
	ld a, a
	or [hl]
	call c, $b2b2
	ld a, a
	cp h
	rst $18
	ld c, b
	rst $20
	ld d, a
	nop
	push bc
	add $dd
	rst $20
	ld d, c
	or e
	pop bc
	ret


	ld a, a
	ld b, c
	add l
	sub b
	xor [hl]
	add d
	ret


	ld a, a
	adc $b3
	ld h, $4f
	cp a
	ret


	ld a, a
	ld a, [hld]
	or d
	jp z, $b67f

	call c, $b2b2
	ld a, a
	call c, $e7b2
	ld d, a
	ld [$f0fa], sp
	sub $cb
	ld [hl], a
	jr nz, jr_016_6bee

	ld hl, $6bfc
	call $3c79
	ld hl, wd6f0
	set 7, [hl]
	jr jr_016_6bf9

jr_016_6bee:
	ld hl, $6c22
	call $3c79
	ld hl, wd6f0
	res 6, [hl]

jr_016_6bf9:
	jp $0f6a


	nop
	or c
	ret nz

	cp h
	ret


	ld a, a
	or d
	call nz, $b2bc
	ld a, a
	ld b, b
	add d
	xor c
	add d
	rst $20
	ld d, c
	jr nc, @-$47

	cp h
	jp nc, wc4d9

	ld c, a
	or a
	pop hl
	db $e3
	rst $20
	ld a, a
	rst $18
	jp wc57f


	cp b
	ret


	sub $e7
	ld d, a
	nop
	or l
	adc $ce
	rst $20
	ld d, c
	or c
	ret nz

	cp h
	ret


	ld a, a
	ld b, b
	add d
	xor c
	add d
	ret


	ld a, a
	adc $b3
	ld h, $4f
	cp a
	ret


	ld a, a
	ld a, [hld]
	or d
	jp z, $b67f

	call c, $b2b2
	call c, $e7d6
	ld d, a
	ld [$5821], sp
	ld l, h
	call $3c79
	ld a, $54
	call $2dc7
	call $3790
	jp $0f6a


	nop
	ld b, c
	add l
	sub b
	xor [hl]
	add d
	ld [hl], d
	pop bc
	pop hl
	db $e3
	ld a, a
	ld b, l
	or [hl]
	pop bc
	pop hl
	ld d, a
	ld [$7a21], sp
	ld l, h
	call $3c79
	ld a, $3a
	call $2dc7
	call $3790
	jp $0f6a


	nop
	ld b, b
	add d
	xor c
	add d
	ld [hl], d
	or a
	pop hl
	db $e3
	ld d, a

jr_016_6c84:
	ld [$52cd], sp
	ld l, e
	jr nz, jr_016_6cc4

	ld hl, $6ccd
	call $3c79
	call $3636
	ld a, [wcc26]
	and a
	jr nz, jr_016_6cbc

	ld hl, $6d33
	call $3c79
	ld bc, $2d01
	call $3e5e
	jr nc, jr_016_6cb4

	ld hl, $6e31
	call $3c79
	ld hl, wd6f0
	set 1, [hl]
	jr jr_016_6cca

jr_016_6cb4:
	ld hl, $6f1a
	call $3c79
	jr jr_016_6cca

jr_016_6cbc:
	ld hl, $6ec2
	call $3c79
	jr jr_016_6cca

jr_016_6cc4:
	ld hl, $6ee0
	call $3c79

jr_016_6cca:
	jp $0f6a


	nop
	ld d, h
	ld a, a
	jr nc, jr_016_6c84

	cp l
	or a
	ld a, a
	add a
	and l
	dec de
	ret


	ld c, a
	or [hl]
	or d
	pop bc
	ld [c], a
	or e
	jp z, wdc7f

	cp h
	ld a, a
	inc l
	ldh [$e7], a
	ld d, c
	or [hl]
	rst $18
	jp Jump_016_7fd9


	ld d, h
	jp z, $f74f

	or $f6
	ld b, l
	or a
	db $dd
	ld a, a
	cp d
	or h
	call nz, $e7d9
	ld d, c
	ld d, h
	add $7f
	or [hl]
	sbc $bc
	jp Jump_016_4fca


	sbc h
	xor e
	sub e
	ld a, a
	or e
	reti


	cp e
	or d
	rst $20
	ld a, a
	inc sp
	cp l
	cpl
	rst $20
	ld d, c
	inc sp
	ld d, [hl]
	ld d, c
	or a
	ret nc

	jp z, wdc7f

	cp h
	ret


	ld a, a
	ld d, h
	ld a, a
	inc l
	rst $08
	sbc $dd
	ld c, a
	or a
	or a
	add $7f
	or a
	ret nz

	ret


	ld a, a
	or [hl]
	ret z

	and $57
	nop
	cp a
	or e
	or [hl]
	rst $20
	ld c, a
	inc sp
	jp z, $bb7f

	rst $18
	cp a
	cp b
	ld a, a
	jp z, wd22c

	reti


	or [hl]
	rst $20
	ld d, c
	or c
	ret


	push bc
	ld d, [hl]
	ld a, a
	call c, wc9bc
	ld a, a
	or l
	or a
	add $b2
	ret c

	ret


	ld c, a
	ld b, $ad
	xor b
	xor h
	ld b, d
	ld h, $c5
	ld d, [hl]
	ld a, a
	ld d, [hl]
	ld d, c
	ld d, [hl]
	ld a, a
	inc sp
	push bc
	ld d, [hl]
	ld a, a
	ld h, $56
	ld d, l
	ld d, [hl]
	ld a, a
	ld d, [hl]
	ld a, a
	or [hl]
	call c, $b8b2
	jp Jump_016_56c5


	ld d, l
	ret nz

	rst $08
	rst $10
	sbc $56
	ld a, a
	cp b
	or e
	ld d, [hl]
	ld d, l
	ld d, [hl]
	ld a, a
	cp e
	rst $10
	add $56
	ld a, a
	db $d3
	or e
	ld d, [hl]
	ld d, l
	cp l
	ld a, [hli]
	cp l
	daa
	ld d, [hl]
	ld a, a
	ld d, [hl]
	ld a, a
	inc sp
	ld d, [hl]
	ld d, l
	ld d, [hl]
	ld a, a
	cp a
	or e
	ld a, a
	or l
	db $d3
	or e
	or [hl]
	ld d, [hl]
	ld d, l
	inc [hl]
	or e
	cp h
	jp Jump_016_7f56


	ld d, [hl]
	ld a, a
	cp l
	or a
	ld d, [hl]
	ld d, l
	ld d, [hl]
	ld a, a
	jp z, $e7e3

	ld d, c
	ld d, [hl]
	ld a, a
	ld d, [hl]
	ld a, a
	jr nc, @-$47

	cp h
	jp nc, Jump_016_56c3

	ld d, l
	ret z

	reti


	call nz, wd3b7
	ld d, [hl]
	ld d, l
	ld d, [hl]
	ld a, a
	inc l
	ldh [$db], a
	ld d, [hl]
	ld a, a
	ld d, [hl]
	ld d, l
	ld d, [hl]
	ld a, a
	ld d, [hl]
	ld a, a
	cp l
	ld a, [hld]
	rst $10
	cp h
	ld d, [hl]
	rst $20
	ld d, l
	ld d, [hl]
	ld a, a
	or e
	jp nz, $bcb8

	ld d, [hl]
	ld d, l
	ld d, [hl]
	ld a, a
	ld d, [hl]
	ld a, a
	or c
	ret c

	ldh [$e7], a
	ld d, l
	db $d3
	or e
	ld a, a
	cp d
	sbc $c5
	ld a, a
	inc l
	or [hl]
	sbc $b6
	rst $20
	ld d, l
	pop bc
	ld [c], a
	rst $18
	call nz, $bc7f
	ldh [$3d], a
	ret c

	ld a, a
	cp l
	daa
	ret nz

	call c, Call_016_51b2
	call c, wc9bc
	ld a, a
	ld d, h
	ld a, a
	inc l
	rst $08
	sbc $dd
	ld c, a
	or l
	call nz, $bcc5
	cp b
	ld a, a
	or a
	or d
	jp $7fc0


	or l
	jp c, wc6b2

	ld d, l
	ld d, [hl]
	cp d
	jp c, $7fca

	or a
	db $d3
	pop bc
	ld a, a
	inc l
	ldh [$e7], a
	ld e, b
	nop
	ld d, d
	jp z, $b67f

	or d
	pop bc
	ld [c], a
	or e
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
	ld de, $5100
	cp a
	ret


	ld a, a

jr_016_6e50:
	res 6, a
	or [hl]
	or h
	cp c
	sbc $33
	ld c, a
	adc a
	rrca
	inc sp
	ld a, a
	inc l
	jp $bcde


	ldh [rNR52], a
	ld a, a
	db $d3
	rst $10
	or h
	reti


	rst $20
	ld d, c
	push bc
	add $7f
	call c, wc6bc
	jp z, $b57f

	or a
	add $b2
	ret c

	ret


	ld c, a
	call nz, Call_016_54d8
	ld a, a
	add h
	sub l
	inc de
	ret c

	and [hl]
	ld h, $7f
	or l
	reti


	ld d, l
	or d
	or a
	ret nz

	or d
	ld a, a
	call nz, wdbba
	call wcb7f
	call nz, wc4df
	dec sp
	inc l
	ldh [rHDMA1], a
	jr nc, jr_016_6e50

	rst $10
	ld a, a
	inc l
	jp $bcde


	ldh [$7f], a
	push bc
	inc [hl]
	ld a, a
	or d
	rst $10
	sbc $e7
	ld d, c
	inc l
	jp $bcde


	ldh [$ca], a
	ld a, a
	or a
	ret nc

	ld h, $4f
	cp l
	or a
	add $7f
	ret


	rst $18
	ret nz

	rst $10
	ld a, a
	or h
	or h
	rst $20
	ld d, a
	nop
	push bc
	sbc $2c
	ldh [rRP], a
	ld a, a
	jp nz, wd7cf

	sbc $4f
	or a
	cp b
	ld a, a
	or a
	add $7f
	push bc
	rst $18
	ret nz

	rst $10
	ld a, a
	or a
	jp wdab8


	or d
	rst $20
	ld d, a
	nop
	call nc, $7fe3
	call nc, $7fe3
	ld d, d
	cp b
	sbc $e7
	ld d, c
	rst $08
	ret nz

	ld a, a
	call c, wc9bc
	ld a, a
	ld d, h
	ld a, a
	inc l
	rst $08
	sbc $dd
	ld c, a
	or a
	or a
	add $7f
	or a
	ret nz

	ret


	ld a, a
	or [hl]
	ret z

	rst $20
	ld d, c
	ld d, [hl]
	ld a, a
	or h
	ld a, a
	pop bc
	ld h, $b3
	and $4f
	push bc
	sbc $2c
	ldh [rRP], a
	ld a, a
	jp nz, wd7cf

	sbc $57
	nop
	add $d3
	jp nz, $7f26

	or d
	rst $18
	ld b, h
	or d
	ld a, a
	inc l
	ldh [$e7], a
	ld d, a
	nop
	or e
	pop bc
	ret


	ld a, a
	or [hl]
	or d
	pop bc
	ld [c], a
	or e
	jp z, $9c4f

	xor e
	sub e
	ld a, a
	ld d, h
	add $7f
	or e
	reti


	cp e
	or d
	ret


	rst $20
	ld d, a
	nop
	or [hl]
	or d
	rst $00
	cp h
	ret


	ld a, a
	inc l
	rst $08
	sbc $7f
	ld a, [hld]
	push bc
	cp h
	add $ca
	ld c, a
	cp h
	dec l
	or [hl]
	add $7f
	ret nc

	ret nc

	db $dd
	ld a, a
	or [hl]
	ret nz

	pop de
	cp c
	sub $b3
	rst $20
	ld d, a
	nop
	set 0, h
	ret


	ld a, a
	inc l
	rst $08
	sbc $7f
	ld a, [hld]
	push bc
	cp h
	jp z, $f74f

	or $3a
	or d
	ld a, a
	add $bc
	jp $b67f


	or h
	cp a
	or e
	rst $20
	ld d, a
	dec c
	ld [bc], a
	rlca
	ld [bc], a
	ld bc, $07ff
	inc bc
	ld bc, $02ff
	nop
	ld bc, $0007
	ld b, $08
	ld b, $2f
	rlca
	ld a, [bc]
	rst $38
	jp nc, $0d01

	rlca
	dec b
	rst $38
	db $d3
	ld [bc], a
	jr c, jr_016_6faa

	ld a, [bc]
	rst $38
	jp nc, $3c03

	ld [$ff05], sp

jr_016_6faa:
	db $d3
	inc b
	db $10
	dec b
	rlca
	rst $38
	ret nc

	dec b
	ld a, [hli]
	dec b
	add hl, bc
	rst $38
	ret nc

	ld b, $12
	rst $00
	rlca
	ld [bc], a
	ld [de], a
	rst $00
	rlca
	inc bc
	rla
	ld [de], a
	inc de
	ld d, $19
	db $10
	ld de, $180f
	inc d
	dec d
	ld a, [de]
	inc bc
	inc c
	inc bc
	inc bc
	ld d, $09
	rrca
	ld l, $73
	ld [hl], c
	ld [hl], b
	call c, $006f
	call z, wcd72
	ld a, [c]
	ld l, a
	call $3c6c
	ld hl, $707b
	ld de, $706b
	ld a, [wd5c2]
	call $31a8
	ld [wd5c2], a
	ret


	ld hl, wd0eb
	bit 5, [hl]
	res 5, [hl]
	ret z

	ld hl, $7029
	call Call_016_702e
	call Call_016_705a
	ld a, [wd7a5]
	bit 5, a
	jr nz, jr_016_7019

	push af
	ld a, $54
	ld [wd07c], a
	ld bc, $0202
	ld a, $17
	call $3e9d
	pop af

jr_016_7019:
	bit 6, a
	ret nz

	ld a, $54
	ld [wd07c], a
	ld bc, $0502
	ld a, $17
	jp $3e9d


	ld [bc], a
	ld [bc], a
	dec b
	ld [bc], a
	rst $38

Call_016_702e:
	push hl
	ld hl, wd6be
	ld a, [hli]
	ld b, a
	ld a, [hl]
	ld c, a
	xor a
	ldh [$e0], a
	pop hl

jr_016_703a:
	ld a, [hli]
	cp $ff
	jr z, jr_016_7056

	push hl
	ld hl, $ffe0
	inc [hl]
	pop hl
	cp b

jr_016_7046:
	jr z, jr_016_704b

	inc hl
	jr jr_016_703a

jr_016_704b:
	ld a, [hli]
	cp c
	jr nz, jr_016_703a

	ld hl, wd6be
	xor a
	ld [hli], a
	ld [hl], a
	ret


jr_016_7056:
	xor a
	ldh [$e0], a
	ret


Call_016_705a:
	ld hl, wd7a5
	ldh a, [$e0]
	and a
	ret z

	cp $01
	jr nz, jr_016_7068

	set 5, [hl]
	ret


jr_016_7068:
	set 6, [hl]
	ret


	ld h, c
	ld [hld], a
	sub h
	ld [hld], a
	cp l
	ld [hld], a
	xor h
	ld [hl], b
	adc h
	ld [hl], c
	rst $18
	ld [hl], c
	jr z, jr_016_70eb

	add [hl]
	ld [hl], d
	ld [bc], a
	jr nc, @-$5a

	rst $10
	sub [hl]
	ld [hl], c
	cp c
	ld [hl], c
	or b
	ld [hl], c
	or b
	ld [hl], c
	inc bc
	ld b, b
	and h
	rst $10
	jp hl


	ld [hl], c
	rlca
	ld [hl], d
	nop
	ld [hl], d
	nop
	ld [hl], d
	inc b
	jr nc, jr_016_703a

	rst $10
	ld [hld], a
	ld [hl], d
	ld c, a
	ld [hl], d
	ld c, c
	ld [hl], d
	ld c, c
	ld [hl], d
	dec b
	jr nc, jr_016_7046

	rst $10
	sub b
	ld [hl], d
	or d
	ld [hl], d
	xor b
	ld [hl], d
	xor b
	ld [hl], d
	rst $38
	ld [$a5fa], sp
	rst $10
	bit 7, a

jr_016_70b2:
	jr nz, jr_016_70cf

	ld hl, $70d8
	call $3c79
	ld bc, $ec01
	call $3e5e
	ld hl, $717f
	jr nc, jr_016_70d2

	ld hl, wd7a5
	set 7, [hl]
	ld hl, $7123
	jr jr_016_70d2

jr_016_70cf:
	ld hl, $713e

jr_016_70d2:
	call $3c79
	jp $0f6a


	nop
	or a
	ldh [$b1], a
	rst $20
	ld c, a
	jr nc, jr_016_70b2

	sub $7f
	ret nz

	cp l
	cp c
	jp $e7e3


	ld d, c
	ld d, [hl]
	ld a, a

jr_016_70eb:
	or c
	rst $10
	and $4f
	ld e, [hl]
	ld a, a
	inc l
	ldh [$c5], a
	or d
	ld d, l
	ld a, [hli]
	jp nc, wc5de

	cp e
	or d
	ld d, l
	or c
	ret nz

	cp h
	ld a, a
	jp $b7df


	ret c

	ld d, [hl]
	ld d, l
	cp d
	jp c, $b37f

	pop bc
	ret


	ld a, a
	cp [hl]
	or d
	set 3, [hl]

jr_016_7112:
	ld a, a
	push bc
	ret


	ld d, l
	or c
	add hl, hl
	reti


	ld a, a
	or [hl]
	rst $10
	ld a, a
	push de
	reti


	cp h
	jp Jump_016_58c8


	nop
	ld d, d
	jp z, $b57f

	ret z

	or h
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
	ld sp, hl
	db $fc
	jp z, $2c7f

	ld a, [hld]
	cp b
	rst $20
	ld d, c
	cp d
	ret


	ld a, a
	call c, wca2b
	ld a, a
	or a
	ld [c], a
	or e
	ret c

	ld [c], a
	cp b
	ld a, a
	jr nc, jr_016_7112

	inc [hl]
	ld c, a
	ld d, h
	jp z, wdc7f

	dec hl
	ret


	ld a, a
	or c
	call nz, wcb51
	sbc $bc
	inc l
	ld [c], a
	or e
	ret nz

	or d
	add $7f
	push bc
	reti


	call c, $b74f
	db $dd
	ld a, a
	jp nz, wc3b9

	ld a, a
	jp nz, wdfb6

	jp $0057


	or d
	rst $18
	ld b, h
	or d
	inc sp
	ld a, a
	db $d3
	jp $b2c5


	call c, $0857
	ld hl, $707b
	call $3214
	jp $0f6a


	nop
	ret nz

	ld a, a
	ret nz

	cp l
	cp c
	jp Jump_016_4fe7


	call c, $bcc0
	jp z, $8b7f

	and [hl]
	sbc e
	ld a, a
	cp h
	ldh [$b2], a
	sbc $7f
	inc sp
	cp l
	ld d, a
	nop
	cp b
	rst $20
	ld a, a
	ld a, [hld]
	jp c, $b6c0

	ld e, b
	nop
	call c, $bcc0
	jp z, $8b7f

	and [hl]
	sbc e
	ret


	ld a, a
	cp h
	ldh [$b2], a
	sbc $4f
	inc sp
	or c
	reti


	call nz, $347f
	or e
	inc l
	add $55
	ld e, [hl]
	or d
	sbc $7f
	inc sp
	db $d3
	ld a, a
	or c
	reti


	ret


	cp e
	ld d, a
	ld [$8721], sp
	ld [hl], b
	call $3214
	jp $0f6a


	nop
	cp d
	cp d
	jp z, wc07f

	pop bc
	or d
	ret c

	ld a, a
	or a
	sbc $bc
	jr nc, jr_016_7247

	or [hl]
	or h
	ret c

	push bc
	cp e
	or d
	rst $20
	ld d, a
	nop
	push bc
	or [hl]
	push bc
	or [hl]
	ld d, [hl]
	ld e, b
	nop
	ld a, [de]
	and [hl]
	ret


	ld a, a
	push bc
	or [hl]
	jp z, wcc7f

	cp b
	dec hl
	jp nz, $2f30

	ld c, a
	or a
	ret nc

	add $7f
	cp d
	or e
	ret c

	ldh [hLoadedROMBank], a
	ld a, a
	inc sp
	or a
	reti


	or [hl]
	push bc
	and $57
	ld [$9321], sp
	ld [hl], b
	call $3214
	jp $0f6a


	nop
	cp d
	cp d
	jp z, $ba7f

	inc [hl]
	db $d3
	ret


	ld c, a
	cp b
	reti


	ld a, a
	call nz, wdbba
	ld a, a
	inc l
	ldh [$c5], a
	or d

jr_016_7247:
	rst $20
	ld d, a
	nop
	jp nz, $b2d6

	rst $20
	ld e, b
	nop
	res 7, h

jr_016_7252:
	ld h, $c0
	ld a, a
	ld [de], a
	ld a, [bc]
	add c
	xor e
	ret


	ld a, a
	push de
	or [hl]
	jp z, $924f

	and a

jr_016_7261:
	ld b, e
	db $e3
	sub e
	ld a, a
	dec de
	xor b
	xor h
	add a
	jr nc, jr_016_7252

	ld d, c
	sbc c
	add c
	sub d
	add a
	push bc
	ld a, a
	ld a, [de]
	and [hl]
	ret


	ld a, a
	push bc
	or [hl]
	inc sp
	ret


	ld c, a
	or d
	inc [hl]
	or e
	ld a, a
	cp h
	pop hl
	jr nc, jr_016_7261

	jr nc, jr_016_72b3

	ld d, a
	ld [$9f21], sp
	ld [hl], b
	call $3214
	jp $0f6a


	nop
	cp a

jr_016_7292:
	cp d
	ret


	ld a, a
	cp d
	inc [hl]
	db $d3
	rst $20
	ld c, a
	or e
	db $db
	or e
	db $db
	ld a, a
	cp l
	reti


	sbc $2c
	ldh [$c5], a
	or d
	rst $20
	ld d, a
	nop
	jr z, jr_016_7292

	ld a, a
	cp h
	cp b
	inc l
	rst $18
	ret nz

	ld e, b

jr_016_72b2:
	nop

jr_016_72b3:
	ld e, [hl]
	jp z, $8b4f

	and [hl]
	sbc e
	ld a, a
	add l
	xor e
	ld b, b
	sub l
	db $e3
	call nz, $c355
	or d
	cp c
	or d
	ld a, a
	cp l
	reti


	ret


	jr nc, jr_016_72b2

	ld d, a
	ld l, $07
	nop
	jr jr_016_72d3

	or l
	nop

jr_016_72d3:
	ld a, [de]
	nop
	ret nc

	nop
	inc d
	nop
	db $ec
	inc bc
	inc bc
	ld b, $d0
	inc bc
	dec c
	inc b
	push de
	rrca
	dec de
	dec b
	push de
	rrca
	add hl, bc
	inc b
	db $d3
	nop
	dec b
	dec de
	dec b
	ld c, $ff
	pop de
	ld bc, $1020
	add hl, bc
	rst $38
	ret nc

	ld b, d
	db $e4
	ld [bc], a
	jr nz, jr_016_730d

	inc e
	rst $38
	jp nc, $e443

	inc bc
	jr jr_016_7313

	inc d
	rst $38
	pop de
	ld b, h
	and $17
	jr jr_016_7317

	inc e

jr_016_730d:
	rst $38
	pop de
	ld b, l
	and $18
	ld a, [bc]

jr_016_7313:
	rst $00
	nop
	jr jr_016_7322

jr_016_7317:
	rst $00
	nop
	ld a, [de]
	ld [$00c7], sp
	inc d
	inc d
	rst $00
	inc bc
	inc bc

jr_016_7322:
	add hl, de
	rst $00
	inc bc
	dec c
	sbc [hl]
	rst $00
	rrca
	dec de
	sub l
	rst $00
	rrca
	add hl, bc
	ld b, b
	ld h, c
	ld h, c
	ld h, c
	ld h, c
	ld b, d
	dec a
	dec a
	dec a
	dec a
	ld a, h
	dec a
	inc h
	ld a, l
	ld a, $44
	cpl
	ld c, $0e
	ld c, $46
	cpl
	ld c, $0e
	ld c, $0e
	ld c, $0e
	ld c, $46
	ld b, b
	ld h, e
	ld c, $67
	ld h, c
	ld h, c
	ld h, c
	ld h, c
	ld h, c
	ld h, c
	ld b, c
	ld h, e
	ld c, $67
	ld b, d
	ld b, h
	ld c, $0e
	ld c, $0e
	ld c, $0e
	ld c, $0e
	ld c, $0e
	ld c, $0e
	ld c, $46
	ld b, h
	ld c, $0e
	ld c, $0e
	ld c, $0e
	ld a, e
	ld c, $7b
	add hl, bc
	ld b, b
	ld h, c
	ld h, c
	ld h, d
	ld b, b
	ld h, e
	ld c, $67
	ld b, c
	ld b, d
	ld c, $36
	ld c, $36
	add hl, bc
	ld d, l
	ld c, $0e
	ld h, [hl]
	ld b, h
	ld a, e
	ld c, $0b
	dec bc
	ld b, [hl]
	ld c, $36
	ld c, $36
	ld c, $0e
	ld c, $0e
	ld b, [hl]
	ld b, h
	scf
	ld c, $0e
	cpl
	ld b, [hl]
	ld c, $37
	ld c, $37
	ld c, $59
	ld b, a
	cpl
	ld b, [hl]
	ld c, b
	ld c, c
	ld c, c
	ld c, c
	ld c, c
	ld c, d
	ld c, c
	ld c, c
	ld c, c
	ld c, c
	ld c, c
	ld c, b
	ld c, c
	ld c, c
	ld c, d
	ld d, $09
	rrca
	cp h
	ld [hl], l
	ld a, [hli]
	ld [hl], h
	pop bc
	ld [hl], e
	nop
	ld c, e
	ld [hl], l
	call Call_016_73d7
	call $3c6c
	ld hl, $7432
	ld de, $7424
	ld a, [wd5c3]
	call $31a8
	ld [wd5c3], a
	ret


Call_016_73d7:
	ld hl, wd0eb
	bit 5, [hl]
	res 5, [hl]
	ret z

	ld hl, $740e
	call Call_016_702e
	call $7413
	ld a, [wd7a7]
	bit 0, a
	jr nz, jr_016_73fe

	push af
	ld a, $5f
	ld [wd07c], a
	ld bc, $0404
	ld a, $17
	call $3e9d
	pop af

jr_016_73fe:
	bit 1, a
	ret nz

	ld a, $5f
	ld [wd07c], a
	ld bc, $0408
	ld a, $17
	jp $3e9d


	inc b
	inc b
	inc b
	ld [$21ff], sp
	and a
	rst $10
	ldh a, [$e0]
	and a
	ret z

	cp $01
	jr nz, jr_016_7421

	set 0, [hl]
	ret


jr_016_7421:
	set 1, [hl]
	ret


	ld h, c
	ld [hld], a
	sub h
	ld [hld], a
	cp l
	ld [hld], a
	ld c, e
	ld [hl], h
	sub h
	ld [hl], h
	jp hl


	ld [hl], h
	push bc
	rrca
	ld [bc], a
	jr nz, @-$58

	rst $10
	sbc [hl]
	ld [hl], h
	pop bc
	ld [hl], h
	cp d
	ld [hl], h
	cp d
	ld [hl], h
	inc bc
	jr nc, @-$58

	rst $10
	di
	ld [hl], h
	rla
	ld [hl], l
	db $10
	ld [hl], l
	db $10
	ld [hl], l
	rst $38
	ld [$b7fa], sp
	rst $10
	bit 7, a
	ld hl, $747b
	jr nz, jr_016_7459

	ld hl, $745f

jr_016_7459:
	call $3c79
	jp $0f6a


	nop
	ld a, $b8
	ld a, a
	adc e
	and [hl]
	sbc e
	ld a, a
	add l
	xor e
	ld b, b
	sub l
	db $e3
	ret


	ld c, a
	cp h
	ldh [$b2], a
	sbc $33
	cp l
	ld d, [hl]
	ld a, a
	or l
	db $db
	or l
	db $db
	ld d, a
	nop
	ld d, d
	cp b
	sbc $c4
	ld c, a
	ld d, h
	ret


	ld a, a
	or l
	or [hl]
	add hl, hl
	inc sp
	ld d, l
	adc $de
	call nz, wc07f
	cp l
	or [hl]
	rst $18
	ret nz

	sub $57
	ld [$3221], sp
	ld [hl], h
	call $3214
	jp $0f6a


	nop
	or l

jr_016_74a0:
	jp c, $c1c0

	ret


	ld a, a
	inc l
	ldh [$cf], a
	db $dd
	ld a, a
	cp l
	reti


	ld c, a
	call nc, wcac2
	ld a, a
	inc l
	ldh [$cf], a
	ld a, a
	push bc
	ret


	jr nc, jr_016_74a0

	ld d, a
	nop
	rst $08
	or d
	rst $18
	ret nz

	rst $20
	ld e, b
	nop
	ld d, [hl]
	ld a, a
	inc sp
	jp z, $9a7f

	xor e
	sub e
	jr nc, @-$17

	ld c, a
	cp h
	rst $08
	rst $18
	jp Jump_016_7fd9


	inc de
	add b
	ret


	ld a, a
	add l
	ld b, $ca
	ld d, l
	add l
	db $e3
	inc de
	ld a, a
	add [hl]
	db $e3
	inc sp
	ld a, a
	or c
	cp c
	rst $10
	jp c, Jump_016_57d9

	ld [$3e21], sp
	ld [hl], h
	call $3214
	jp $0f6a


	nop
	call c, $bcc0
	jp z, $8b4f

	and [hl]
	sbc e
	ld a, a
	add l
	xor e
	ld b, b
	sub l
	db $e3
	sub $d8
	ld d, l
	ld e, [hl]
	add $7f
	ret nc

	or [hl]
	ret nz

	ld a, a
	cp l
	reti


	rst $20
	ld d, a
	nop
	call nc, wc8d9
	or h
	rst $20
	ld e, b
	nop
	ld d, [hl]
	ld a, a
	push bc
	add $51
	ld e, [hl]
	ret


	ld a, a
	jp c, $c1de

	pop hl
	or e
	ld h, $4f
	or l
	db $d3
	or e
	ld a, a
	cpl
	sbc $3c
	sbc $55
	ld d, h
	ret


	ld a, a
	cp c
	sbc $b7
	pop hl
	or e
	db $dd
	ld d, l
	cp e
	cp [hl]
	jp $b87f


	jp c, wdfd9

	jp $b27f


	rst $18
	ret nz

	sbc $33
	ret z

	ld d, a
	ld l, $0a
	nop
	ld a, [de]
	ld bc, $00cf
	jr jr_016_7554

jr_016_7554:
	pop de
	nop
	inc d
	nop
	db $ec
	dec bc
	rla
	add hl, bc
	ret nc

	inc bc
	inc bc
	dec b
	jp nc, $030f

	ld b, $d2
	inc bc
	dec de
	inc bc
	rst $08
	dec bc
	inc bc
	inc bc
	jp hl


	dec bc
	dec bc
	inc b
	call nc, $1b0f
	inc bc
	ret nc

jr_016_7575:
	nop
	inc b
	inc l
	inc c
	inc e
	rst $38
	rst $38
	ld bc, $0b18
	jr @+$01

	jp nc, $e642

	add hl, de
	jr nz, jr_016_7594

	dec bc
	rst $38
	ret nc

	ld b, e
	db $e4
	inc b
	dec a
	add hl, bc
	inc c
	rst $38
	rst $38
	add h
	ld [de], a

jr_016_7594:
	dec bc
	rst $00
	nop
	ld a, [de]
	ld a, [bc]
	rst $00
	nop
	jr jr_016_75a5

	rst $00
	nop
	inc d
	ld [hl], d
	rst $00
	dec bc
	rla
	inc d

jr_016_75a5:
	rst $00
	inc bc
	inc bc
	sub d
	rst $00
	rrca
	inc bc
	jr nz, jr_016_7575

	inc bc
	dec de
	ld l, b
	rst $00
	dec bc
	inc bc
	ld l, h
	rst $00
	dec bc
	dec bc
	sbc [hl]
	rst $00
	rrca
	dec de
	inc a
	dec a
	dec a
	dec a
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
	cpl
	ld c, $0e
	ld c, $0e
	ld c, $0e
	ld c, $0e
	ld c, $0e
	ld c, $2f
	ld b, [hl]
	ld h, b
	ld h, c
	ld h, c
	ld b, c
	ld b, d
	ld h, c
	ld b, c
	ld h, c
	ld b, d
	ld c, $5a
	ld h, c
	ld h, c
	ld h, c
	ld h, d
	ld h, h
	ld c, $34
	ld c, $56
	ld c, $0e
	ld c, $56
	ld c, $56
	ld c, $0e
	ld c, $66
	ld b, h
	ld c, $36
	ld c, $0e
	ld c, $47
	ld c, $0e
	ld c, $0e
	ld c, $0e
	ld b, a
	ld b, [hl]
	ld b, h
	cpl
	scf
	ld c, $5a
	cpl
	ld c, $0e
	ld e, d
	ld c, $5a
	cpl
	ld b, e
	ld b, e
	ld b, [hl]
	ld d, b
	ld c, c
	ld c, c
	ld c, c
	ld c, d
	ld c, c
	ld c, c
	ld c, c
	ld c, d
	ld c, $56
	ld c, c
	ld c, c
	ld c, c
	ld d, c
	ld b, h
	cpl
	ld c, $0e
	ld c, $0e
	ld c, $0e
	ld c, $0e
	ld c, $0e
	ld c, $2f
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
	ld c, c
	ld c, c
	ld c, d
	ld d, $09
	ld [$77f4], sp
	sbc h
	db $76
	ld c, a
	halt
	nop
	sub l
	ld [hl], a
	call Call_016_7665
	call $3c6c
	ld hl, $76a8
	ld de, $7696
	ld a, [wd5d7]
	call $31a8
	ld [wd5d7], a
	ret


Call_016_7665:
	ld hl, wd0eb
	bit 5, [hl]
	res 5, [hl]
	ret z

	ld hl, $7689
	call Call_016_702e
	call Call_016_768c
	ld a, [wd7b5]
	bit 0, a
	ret nz

	ld a, $54
	ld [wd07c], a
	ld bc, $0405
	ld a, $17
	jp $3e9d


	inc b
	dec b
	rst $38

Call_016_768c:
	ldh a, [$e0]
	and a
	ret z

	ld hl, wd7b5
	set 0, [hl]
	ret


	ld h, c
	ld [hld], a
	sub h
	ld [hld], a
	cp l
	ld [hld], a
	pop bc
	db $76
	ld a, [de]
	ld [hl], a
	ld e, d
	ld [hl], a
	push bc
	rrca
	push bc
	rrca
	push bc
	rrca
	ld bc, $b430
	rst $10
	bit 6, [hl]
	ld a, [c]
	db $76
	ld [$ea76], a
	db $76
	ld [bc], a
	ld b, b
	or h
	rst $10
	inc h
	ld [hl], a
	ld a, $77
	jr c, @+$79

	jr c, jr_016_7737

	rst $38
	ld [$a821], sp
	db $76
	call $3214
	jp $0f6a


	nop
	rst $30
	or $b6
	or d
	add $7f
	sub $b3
	cp d
	cp a
	rst $20
	ld c, a
	sub $b8
	ld a, a
	cp d
	cp d
	rst $08
	inc sp
	ld a, a
	ret nz

	inc [hl]
	ret c

	ld a, a
	jp nz, wc0b2

	push bc
	rst $20
	ld d, a
	nop
	push bc
	sbc $c3
	cp d
	rst $18
	ret nz

	ld e, b
	nop
	cp d
	cp d
	rst $08
	inc sp
	ld a, a
	or a
	ret nz

	ret


	jp z, wce7f

	jp nc, $26d9

	ld c, a
	cp h
	ldh [$c1], a
	ld [c], a
	or e
	ld a, a
	cp h
	jp nz, Jump_016_55ca

	cp e
	rst $10
	add $7f
	or e
	or h
	ret


	ld a, a
	or [hl]
	or d
	ld a, a
	jr nc, @+$30

	ld d, a
	ld [$b421], sp
	db $76
	call $3214
	jp $0f6a


	nop
	db $d3
	or e
	ld d, [hl]
	ld c, a
	or c
	cp a
	dec sp
	jp z, $b57f

	call c, wc6d8
	ld a, a
	cp h
	sub $b3
	rst $20

jr_016_7737:
	ld d, a
	nop
	or c
	or e
	db $e3
	sbc $58
	nop
	or l
	jp c, Jump_016_7fc6

	or [hl]
	rst $18
	jp wcf7f


	sbc $2f
	cp b
	or [hl]
	ld c, a
	inc l
	ldh [$7f], a
	or l
	or e
	pop bc
	add $7f
	or [hl]
	or h
	sbc $c5
	ld d, a
	ld [$b7fa], sp
	rst $10
	bit 7, a
	ld hl, $777c
	jr nz, jr_016_7768

	ld hl, $776e

jr_016_7768:
	call $3c79
	jp $0f6a


	nop
	or e
	or h
	db $e3
	sbc $e7
	ld d, l
	cp d
	call c, wd6b2
	db $e3
	rst $20
	ld d, a
	nop
	or c
	ret nz

	cp h
	ld h, $7f
	push bc
	or d
	jp $7fc0


	cp d
	call nz, Call_016_5556
	push bc
	or d
	cp h
	ld [c], a
	add $7f
	cp h
	jp Jump_016_57c8


	ld l, $06
	nop
	ld [$e900], sp
	nop
	ld a, [bc]
	nop
	db $eb
	nop
	inc c
	nop
	db $ec
	dec bc
	add hl, bc
	inc bc
	pop de
	rrca
	dec c
	dec b
	pop de
	rlca
	dec c
	ld b, $d1
	nop
	ld b, $18
	dec c
	dec b
	rst $38
	db $d3
	ld b, c
	and $27
	jr nz, jr_016_77c1

	ld c, $ff
	jp nc, $e442

	dec bc

jr_016_77c1:
	dec de
	inc de
	dec c
	cp $00
	inc bc
	dec a
	db $10
	ld b, $ff
	rst $38
	add h
	ld [c], a
	dec a
	ld [de], a
	ld [$ffff], sp
	add l
	jr z, jr_016_7813

	rrca
	add hl, bc
	rst $38
	rst $38
	add [hl]
	ld h, $fb
	add $00
	ld [wc6fc], sp
	nop
	ld a, [bc]
	db $fd
	add $00
	inc c
	ld b, c
	rst $00
	dec bc
	add hl, bc
	ld e, a
	rst $00
	rrca
	dec c
	daa
	rst $00
	rlca
	dec c
	inc a
	dec a
	dec a
	dec a
	inc h
	ld a, l
	ld a, h
	ld a, $44
	ld c, $0e
	ld c, $0e
	ld c, $0e
	ld b, [hl]
	ld b, h
	ld c, $0e
	ld e, d
	ld h, e
	ld c, $67
	ld b, d
	ld b, h
	ld c, $0e
	ld b, [hl]
	dec c
	ld c, $2f

jr_016_7813:
	ld b, [hl]
	ld b, b
	ld a, [hli]
	dec hl
	ld b, d
	ld h, e
	ld c, $67
	ld b, d
	ld b, h
	dec [hl]
	jr jr_016_7866

	cpl
	ld c, $7b
	ld b, [hl]
	ld b, h
	ld e, $35
	ld b, [hl]
	ld c, $7b
	scf
	ld b, [hl]
	ld b, h
	ld a, [bc]
	ld e, $46
	ld c, $37
	cpl
	ld b, [hl]
	ld c, b
	ld c, c
	ld c, c
	ld c, d
	ld c, c
	ld c, c
	ld c, c
	ld c, d
	dec b
	dec c
	dec c
	ld [de], a
	ld a, e
	cpl
	ld a, c
	ld c, b
	ld a, b
	nop
	xor $7a
	call Call_016_785e
	call $3c6c
	ld hl, $7931
	ld de, $7894
	ld a, [wd5d2]
	call $31a8
	ld [wd5d2], a
	ret


Call_016_785e:
Jump_016_785e:
	ld hl, wd0eb
	bit 5, [hl]
	res 5, [hl]
	ret z

jr_016_7866:
	ld a, [wd7e5]
	bit 7, a
	jr nz, jr_016_7874

	ld a, $31
	ld b, $32
	jp Jump_016_7878


jr_016_7874:
	ld a, $72
	ld b, $73

Jump_016_7878:
	push bc
	ld [wd07c], a
	ld bc, $0602
	call Call_016_788a
	pop bc
	ld a, b
	ld [wd07c], a
	ld bc, $0603

Call_016_788a:
	ld a, $17
	jp $3e9d


Jump_016_788f:
	xor a
	ld [wd5d2], a
	ret


	sbc a
	ld a, b
	sub h
	ld [hld], a
	db $e3
	ld a, b
	inc e
	ld a, c
	sbc [hl]
	ld a, b
	ret


	ld a, [wd7e5]
	bit 6, a
	ret nz

	ld hl, $78d8
	call $3509
	jp nc, $3261

	xor a
	ldh [$b4], a
	ld a, [wcd3d]
	cp $03
	jr nc, jr_016_78bf

	ld a, $01
	ldh [$8c], a
	jp $13f1


jr_016_78bf:
	cp $05
	jr z, jr_016_78f5

	ld hl, wd7e5
	bit 7, [hl]
	set 7, [hl]
	ret nz

	ld hl, wd0eb
	set 5, [hl]
	ld a, $ad
	call $0e45
	jp Jump_016_785e


	ld bc, $0205
	ld b, $0b
	dec b
	dec bc
	ld b, $10
	jr @+$01

	call $32bd
	ld a, [wd034]
	cp $ff
	jp z, Jump_016_788f

	ld a, $01
	ldh [$8c], a
	jp $13f1


jr_016_78f5:
	ld a, $ff
	ld [wcd66], a
	ld hl, wccd3
	ld de, $7913
	call $3556
	dec a
	ld [wcd38], a
	call $34d0
	ld a, $03
	ld [wd5d2], a
	ld [wd97c], a
	ret


	ld b, b
	inc c
	jr nz, @+$0e

	add b
	rlca
	jr nz, jr_016_7921

	rst $38
	ld a, [wcd38]
	and a
	ret nz

jr_016_7921:
	call $3e07
	xor a
	ld [wcd66], a
	ld [wd5d2], a
	ld [wd97c], a
	ret


	ld a, $79
	ld bc, $e500
	rst $10
	ld c, b
	ld a, c
	ld a, [hli]
	ld a, d
	inc c
	ld a, d
	inc c
	ld a, d
	rst $38
	ld [$3121], sp
	ld a, c
	call $3214
	jp $0f6a


	nop
	cp a
	or e
	or [hl]
	rst $20
	ld a, a
	or a
	ret nc

	ld h, $7f
	ld d, d
	rst $20
	ld d, c
	or l
	jp c, $7fca

	cp h
	jp wc9de


jr_016_795d:
	or e
	ret


	ld a, a
	ret nz

	or d
	cp h
	ld [c], a
	or e
	rst $20
	ld c, a
	inc de
	and l
	add hl, bc
	xor e
	ld a, a
	jp nz, $b2b6

	ret


jr_016_7970:
	ld a, a
	xor c
	adc a
	and [hl]
	jr nc, jr_016_795d

	ld d, c
	cp h
	rst $18
	jp $30d9


jr_016_797c:
	db $db
	ld a, a
	inc de
	and l
	add hl, bc
	xor e
	jp z, $be4f

	or d
	push bc

jr_016_7987:
	reti


	ld a, a
	inc sp
	sbc $be
	jp nz, Jump_016_7fc9

	or d
	or a
	db $d3
	ret


	jr nc, jr_016_797c

	ld d, c

jr_016_7996:
	jp nz, wcfb6

	or h
	reti


	ret


	ld h, $7f
	pop de
	dec l
	or [hl]
	cp h
	or d
	cp c
	inc [hl]
	ld c, a
	or e
	rst $08
	cp b
	ld a, a
	cp a
	jr nc, jr_016_7970

	ret c

	ldh [rHDMA5], a
	jp nz, $bbd6

	jp z, $c37f

	sbc $b6
	ld a, a
	or d
	rst $18
	ld b, l
	sbc $30
	ld d, c
	or [hl]
	rst $10
	jr nc, jr_016_7996

	ld a, a
	inc l
	ld [c], a
	or e
	inc a
	ld a, a
	jr nc, jr_016_7987

	ld c, a
	cp d
	jp $b7bb


	ret


	ld a, a
	cp d
	or e
	add hl, hl
	or a
	db $d3
	ld a, a
	pop de
	jr nc, jr_016_7996

	rst $20
	ld d, l
	ld d, [hl]
	ld a, a
	cp e
	jp $e7c4


	ld d, l
	cp a
	db $db
	cp a
	db $db
	ld a, a
	jp z, wd22c

	sub $b3
	rst $20
	ld d, c
	cp a
	jp c, wd3c4

	ld a, a
	or d
	rst $08
	or [hl]
	rst $10
	ld c, a
	adc e
	xor h
	ld b, e
	ld a, a
	rst $08
	or d
	jp $b67f


	or h
	reti


	or [hl]
	or d
	rst $20
	ld d, l
	ld d, d
	rst $20
	ld d, a
	nop
	or e
	or e
	ld d, [hl]

jr_016_7a10:
	rst $20
	ld d, c

jr_016_7a12:
	cp b
	call nc, $b2bc
	ld h, $7f
	or a
	ret nc

	ret


	ld c, a
	ld d, h
	ret


	ld a, a
	or e
	inc sp
	jp z, wce7f

	sbc $d3
	ret


	jr nc, jr_016_7a10

	ld e, b
	nop
	inc de
	and l
	add hl, bc
	xor e
	ld a, a
	jr z, jr_016_7a10

	jr nc, jr_016_7a12

	ld h, $4f
	rst $08
	cp c
	reti


	ld a, a
	push bc
	sbc $c3
	ld a, a
	cp h
	sbc $2c
	rst $10
	jp c, $b2c5

	ld d, l
	ld d, d
	rst $20

jr_016_7a48:
	ld d, c
	cp d
	jp c, wd7b6

	jp z, $b77f

	ret nc

	ld h, $4f
	ld d, h
	ld a, a
	ret c

	db $e3
	rlca
	ld a, a
	sub b
	xor l
	xor e
	ld b, c
	add h
	xor e
	jr nc, jr_016_7a48

	ld d, l
	ld d, [hl]
	ld a, a
	ld d, [hl]
	ld a, a
	ld d, [hl]
	ld d, l
	ld d, [hl]
	ld a, a
	call nz, $b27f
	or d
	ret nz

	or d
	ld a, a
	call nz, $30ba
	ld h, $51
	inc l
	jp nz, $7fca

	or a
	ret nc

	jp z, wd37f

	or e
	ld a, a
	set 0, h
	ret c

	ld c, a
	ret nz

	ret nz

	or [hl]
	call c, $b8c5
	jp $7fca


	push bc
	rst $10
	push bc
	or d
	rst $20
	ld d, l
	cp a
	ret


	ld a, a
	ld e, l
	ret


	ld a, a
	push bc
	rst $08
	or h
	jp z, Jump_016_5156

	ld d, e
	jr nc, @-$17

	ld c, a
	or [hl]
	jp c, Jump_016_56ca

	ld a, a
	or a
	ret nc

	ld a, a
	sub $d8
	db $d3
	ld a, a
	jp z, $b8d4

	rst $20
	ld d, l
	or l
	jp c, $c1c0

	ld a, a
	cp h
	jp wc9de


	or e
	add $7f
	or [hl]
	rst $18
	ret nz

	rst $20
	ld d, c
	or d
	rst $08
	call nc, $b67f

jr_016_7acb:
	jp c, $bfba

	ld a, a
	ld d, h
	ld a, a
	ret c

	db $e3
	rlca
	ld c, a
	cp h
	sbc $c9
	ld a, a
	sub b
	xor l
	xor e
	ld b, c
	add h
	xor e
	ld a, a
	push bc
	ret


	jr nc, jr_016_7acb

	ld d, b
	ld [$e521], sp
	rst $10
	set 6, [hl]
	jp $0f6a


	inc bc
	inc bc
	db $10
	jr jr_016_7af5

	rst $30
	nop

jr_016_7af5:
	dec b
	nop
	ld a, b
	nop
	ld b, $00
	ld a, b
	nop
	ld bc, $051e
	ld a, [bc]
	rst $38
	ret nc

	ld b, c
	rst $30
	ld bc, wc7a0
	db $10

jr_016_7b09:
	jr jr_016_7b09

	add $00
	dec b
	rst $38
	add $00
	ld b, $49
	ld bc, $3231
	ld bc, $034a
	inc bc
	inc bc
	ld c, c
	ld sp, $4a32
	ld c, e
	ld [hld], a
	dec b
	dec b
	ld sp, $034c
	inc bc
	inc bc
	ld c, e
	dec b
	dec b
	ld c, h
	ld c, e
	ld [hld], a
	dec b
	dec b
	ld sp, $034c
	inc bc
	inc bc
	ld c, e
	dec b
	dec b
	ld c, h
	ld c, e
	ld [hld], a
	dec b
	dec b
	ld sp, $034c
	inc bc
	inc bc
	ld d, d
	ld sp, $6f32
	ld c, e
	ld [hld], a
	dec b
	dec b
	ld sp, $034c
	inc bc
	inc bc
	inc bc
	inc bc
	inc bc
	inc bc
	ld c, e
	ld [hld], a
	dec b
	dec b
	ld sp, $034c
	inc bc
	inc bc
	inc bc
	inc bc
	inc bc
	inc bc
	ld d, d
	ld d, [hl]
	ld [hl], d
	ld [hl], e
	ld c, [hl]
	ld l, a
	inc bc
	inc bc
	inc bc
	inc bc
	inc bc
	inc bc
	inc bc
	inc bc
	ld c, e
	dec b
	dec b
	ld c, h
	inc bc
	inc bc
	inc bc
	ld c, c
	ld bc, $0101
	ld c, d
	inc bc
	ld c, e
	dec b
	dec b
	ld c, h
	inc bc
	inc bc
	inc bc
	ld c, e
	dec b
	dec b
	dec b
	ld [hl], b
	inc bc
	ld c, e
	dec b
	dec b
	ld c, h
	inc bc
	inc bc
	inc bc
	ld c, e
	ld d, e
	ld b, [hl]
	ld b, [hl]
	ld l, a
	inc bc
	ld c, e
	dec b
	dec b
	ld c, h
	inc bc
	inc bc
	inc bc
	ld c, e
	ld c, h
	inc bc
	inc bc
	inc bc
	inc bc
	ld c, e
	dec b
	dec b
	ld d, l
	ld c, b
	ld c, b
	ld c, b
	ld e, e
	ld c, h
	inc bc
	inc bc
	inc bc
	inc bc
	ld d, d
	ld b, [hl]
	ld b, [hl]
	ld b, [hl]
	ld b, [hl]
	ld b, [hl]
	ld b, [hl]
	ld b, [hl]
	ld l, a
	inc bc
	inc bc
	inc bc
	rlca
	inc b
	dec b
	ld [hl], e
	ld a, l
	sub e
	ld a, h
	rst $00
	ld a, e
	nop
	ld e, c
	ld a, l
	call $3c6c
	ld hl, $7bdb
	ld a, [wd5ca]
	jp $3dc7


	xor a
	ld [wcd66], a
	ld [wd5ca], a
	ret


	ld [hl], $7c
	ld d, h
	ld a, h
	db $e4
	ld a, e
	db $e3
	ld a, e
	ret


	call $3e07
	ld a, [wd2d7]
	push af
	xor a
	ld [wcd66], a
	ld a, $55
	call $3e9d
	pop af
	ld [wd2d7], a
	ld hl, wd6b2
	res 1, [hl]
	inc hl
	set 0, [hl]
	xor a
	ld hl, wd5cc
	ld [hli], a
	ld [hli], a
	ld [hl], a
	ld [wd5d2], a
	ld [wd5ca], a
	ld hl, wd7e2
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hl], a
	xor a
	ld [wd5ca], a
	ld a, $00
	ld [wd698], a
	ld b, $1c
	ld hl, $7ce3
	call $3620
	ld b, $05

jr_016_7c28:
	ld c, $78
	call $3781
	dec b
	jr nz, jr_016_7c28

	call $38ae
	jp $09da


	ld a, $ff
	ld [wcd66], a
	ld hl, wccd3
	ld de, $7c51
	call $3556
	dec a
	ld [wcd38], a
	call $34d0
	ld a, $01
	ld [wd5ca], a
	ret


	ld b, b
	dec b
	rst $38
	ld a, [wcd38]
	and a
	ret nz

	ld a, $01
	ld [wd4a7], a
	ld a, $01
	ldh [$8c], a
	call $358b
	ld a, $08
	ldh [$8d], a
	call $34f0
	call $3e07
	xor a
	ld [wcd66], a
	inc a
	ld [wd4a7], a
	ld a, $01
	ldh [$8c], a
	call $13f1
	ld a, $ff
	ld [wcd66], a
	ld a, $08
	ld [wcc4d], a
	ld a, $11
	call $3e9d
	ld a, $02
	ld [wd5ca], a
	ret


	sub l
	ld a, h
	nop
	add h
	db $e3
	add [hl]
	inc de
	ld [hl], d
	ld d, [hl]
	ld a, a
	or l
	adc $de
	xor h
	rst $20
	ld c, a
	or l
	jp nc, wc433

	or e
	rst $20
	ld a, a
	ld d, d
	rst $20
	ld d, c
	cp d
	cp d
	jp z, Jump_016_4f56

	jp c, $30b7

	or d
	ret


	ld a, a
	ld d, h
	ld a, a
	ret c

	db $e3
	rlca
	ld d, l
	ld e, l
	ret


	ld a, a
	db $d3
	call nz, Call_016_5633
	ld d, c
	or [hl]
	jp nz, $b8d4

	ld a, a
	cp h
	ret nz

	ld a, a
	ld d, h
	ld a, a
	ret nz

	pop bc
	db $dd
	ld c, a
	or h
	or d
	or h
	sbc $c6
	ld a, a
	or a
	db $db
	cp b
	ld a, a
	cp h
	jp wc055


	ret nz

	or h
	reti


	ld a, a
	sbc e
	xor b
	add b
	ld a, a
	inc sp
	or c
	reti


	rst $20
	ld d, c
	ld d, h
	ld a, a
	ld e, l
	jp z, $ba7f

	cp d
	add $4f
	or a
	db $db
	cp b
	ld a, a
	cp e
	jp c, Jump_016_7fd9

	sub $db
	cp d
	dec sp
	db $dd
	ld d, l
	inc sp
	sbc $34
	or e
	or d
	ret c

	ld a, a
	call nz, wd67f
	sbc $33
	ld a, a
	or d
	reti


	rst $20
	ld d, c
	ld d, d
	rst $20
	ld a, a
	or l
	rst $08
	or h
	jp z, wca4f

	add hl, hl
	cp h
	or d
	ld a, a
	ret nz

	ret nz

	or [hl]
	or d
	ret


	ld a, a
	cp l
	or h
	ld d, l
	ret c

	db $e3
	rlca
	ld a, a
	sub b
	xor l
	xor e
	ld b, c
	add h
	xor e
	call nz, wc57f
	rst $18
	ret nz

	rst $20
	ld d, c
	cp d
	cp d
	add $7f
	ld d, d
	ret


	ld a, a
	push bc
	rst $08
	or h
	call nz, Call_016_544f
	ld a, a
	ret nz

	pop bc
	db $dd
	ld a, a
	or a
	db $db
	cp b
	ld a, a
	cp h
	sub $b3
	rst $20
	ld d, a
	inc bc
	ld [bc], a
	rlca
	inc b
	ld [bc], a
	ld a, b
	rlca
	dec b
	inc bc
	ld a, b
	nop
	ld bc, $0603
	add hl, bc
	rst $38
	ret nc

	ld bc, wc717
	rlca
	inc b
	rla
	rst $00
	rlca
	dec b
	inc d
	inc d
	ld h, l
	inc d
	inc d
	jr jr_016_7d92

	scf
	jr @+$1a

	jr @+$1a

	jr @+$1a

	jr jr_016_7d9b

	jr jr_016_7df1

	jr @+$1a

	ld a, [wd034]
	dec a
	jr nz, jr_016_7dac

	ld a, [wd2dd]
	cp $90

jr_016_7d92:
	jr c, jr_016_7d98

	cp $95
	jr c, jr_016_7dc6

jr_016_7d98:
	ld a, [wcfbf]

jr_016_7d9b:
	call $2dc7
	ld hl, $7e29
	ld a, [wd03c]
	and a
	jr z, jr_016_7daa

	ld hl, $7e42

jr_016_7daa:
	jr jr_016_7db7

jr_016_7dac:
	call Call_016_7e17
	ld c, $14
	call $3781
	ld hl, $7e68

jr_016_7db7:
	push hl
	ld hl, $6bdc
	ld b, $0e
	call $3620
	pop hl
	call $3c79
	jr jr_016_7e28

jr_016_7dc6:
	ld b, $48
	call $34dd
	ld a, [wcfbf]
	ld [wcf78], a
	cp $91
	jr z, jr_016_7df1

	ld a, b
	and a
	jr z, jr_016_7de3

	ld hl, $6df1
	ld b, $0f
	call $3620
	jr jr_016_7d98

jr_016_7de3:
	ld hl, $7e5a
	call $3c79
	ld hl, $7e9a
	call $3c79
	jr jr_016_7e28

jr_016_7df1:
	ld a, b
	and a
	jr z, jr_016_7de3

	ld hl, $7e5a
	call $3c79
	ld hl, $7e7c
	call $3c79
	ld hl, $6df1
	ld b, $0f
	call $3620
	ld hl, $4e36
	ld b, $1c
	call $3620
	ld hl, $7e29
	call $3c79

Call_016_7e17:
	xor a
	ld [wc0f1], a
	ld a, $80
	ld [wc0f2], a
	ld a, $e9
	call $0e45
	jp $3790


jr_016_7e28:
	ret


	db $00, $b1, $e7, $7f, $d4, $be, $b2, $c9, $4f, $50, $01, $c1, $cf, $00, $26, $7f
	db $c4, $3b, $30, $bc, $c3, $b7, $c0, $e7, $58

	nop
	jp nz, $b1d8

	add hl, hl
	ret nz

	ld a, a
	ld d, b
	ld bc, wcfc1
	nop
	ld h, $4f
	call nz, $b63b
	or [hl]
	rst $18
	jp wc0b7


	rst $20
	ld e, b
	ld bc, wcfc1
	nop
	ld h, $7f
	ld c, a
	or c
	rst $10
	call c, wc0da
	rst $20
	ld e, b

	db $01, $29, $d0, $00, $26, $4f, $bc, $e2, $b3, $3c, $dd, $7f, $bc, $b6, $b9, $c3
	db $b7, $c0, $e7, $58

	nop
	adc e
	and [hl]
	sbc e
	adc h
	adc c
	db $e3
	ld b, d
	ld h, $7f

jr_016_7e86:
	push de
	or e
	jp c, wc9b2

	ld c, a
	cp h
	ld [c], a
	or e
	ret nz

	or d
	db $dd
	ld a, a
	ret nc

	call nc, wdf3c
	ret nz

	rst $20
	ld e, b
	nop
	jr nc, @-$2c

	jr nc, jr_016_7e86

	ld a, a
	push de
	or e
	jp c, Jump_016_7fb2

	ld d, h
	ret


	ld c, a
	cp h
	ld [c], a
	or e
	ret nz

	or d
	ld h, $7f
	call c, wd7b6
	push bc
	or d
	rst $20
	ld e, b

	ld hl, wcfcd
	ld a, [hli]
	or [hl]
	ld hl, $7f0b
	jr z, jr_016_7f08

	xor a
	ldh [$96], a
	ld hl, wcfcd
	ld a, [hli]
	ld [wcce3], a
	ldh [$97], a
	ld a, [hl]
	ld [wcce4], a
	ldh [$98], a
	ld a, $19
	ldh [$99], a
	call $38f5
	ld hl, wcfdb
	ld a, [hli]
	ld b, [hl]
	srl a
	rr b
	srl a
	rr b
	ld a, b
	ld b, $04
	ldh [$99], a
	call $3902
	ldh a, [$98]
	ld hl, $7f0b
	cp $46
	jr nc, jr_016_7f08

	ld hl, $7f15
	cp $28
	jr nc, jr_016_7f08

	ld hl, $7f21
	cp $0a
	jr nc, jr_016_7f08

	ld hl, $7f2c

jr_016_7f08:
	jp $3c79


	db $00, $d5, $b9, $df, $e7, $7f, $50, $08

	jr jr_016_7f43

	nop
	or d
	rst $18
	jp $b2ba


	rst $20
	ld a, a
	ld d, b
	ld [$2218], sp
	nop
	ld h, $de
	ld a, [hld]
	jp c, $7fe7

	ld d, b
	ld [$1718], sp
	nop

Jump_016_7f2d:
	or c
	or d
	jp $7f26


	sub $dc
	rst $18
	jp wd9b2


	rst $20
	ld c, a

Jump_016_7f3a:
	sub b
	xor l
	xor e
	adc h
	jr nc, @-$17

	ld a, a
	ld d, b
	db $08

jr_016_7f43:
	ld hl, $7f47
	ret


	db $01, $f0, $cf, $00, $e7, $57

	ld hl, $7f53
	jp $3c79


	ld bc, wcff0

Jump_016_7f56:
	nop
	ld a, a
	ld d, b
	ld [wc5d5], sp
	ld hl, wcfce
	ld de, wcce4
	ld b, [hl]
	dec hl
	ld a, [de]
	sub b
	ldh [$98], a
	dec de
	ld b, [hl]
	ld a, [de]
	sbc b
	ldh [$97], a
	ld a, $19
	ldh [$99], a
	call $38f5
	ld hl, wcfdb
	ld a, [hli]
	ld b, [hl]
	srl a
	rr b
	srl a
	rr b
	ld a, b
	ld b, $04
	ldh [$99], a
	call $3902
	pop bc
	pop de
	ldh a, [$98]
	ld hl, $7fa3
	and a
	ret z

	ld hl, $7fc5
	cp $1e
	ret c

	ld hl, $7fad
	cp $46
	ret c

	ld hl, $7fb6
	ret


	nop
	db $d3
	or e
	or d
	or d
	rst $20
	ld d, b
	ld [$1418], sp
	nop
	or d
	or d
	cpl
	rst $20

Jump_016_7fb2:
	ld d, b
	ld [$0b18], sp

Jump_016_7fb6:
	nop
	sub $b8
	call nc, wc0df

Jump_016_7fbc:
	rst $20
	ld d, b
	ld [$0018], sp
	ld hl, $7fc5
	ret


Call_016_7fc5:
	nop

Jump_016_7fc6:
	ld c, a
	db $d3
	inc [hl]

Call_016_7fc9:
Jump_016_7fc9:
	jp c, Jump_016_57e7

	ld hl, $7fe4

Call_016_7fcf:
jr_016_7fcf:
	ld a, [hli]
	ldh [$db], a
	and a

Call_016_7fd3:
Jump_016_7fd3:
	ret z

	push hl
	ld b, a
	call $34dd

Jump_016_7fd9:
	pop hl

Call_016_7fda:
	jr z, jr_016_7fcf

	ld b, $05
	ld hl, $7fae
	jp $3620


	inc a
	dec a

Call_016_7fe6:
Jump_016_7fe6:
	ld a, $00
	nop

Jump_016_7fe9:
	nop
	nop
	ld bc, $0000
	nop
	nop
	nop
	nop
	nop
	nop
	ld [bc], a
	nop
	nop
	ld [$0100], sp
	nop
	nop
	nop
	nop
	nop
	nop
