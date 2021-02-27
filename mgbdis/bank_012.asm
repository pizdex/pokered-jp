; Disassembly of "pokemon-red-jp.gb"

SECTION "ROM Bank $012", ROMX[$4000], BANK[$12]

	jr nz, jr_012_4012

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

jr_012_4012:
	rrca
	rrca
	dec de
	ld c, $0a
	dec bc
	ld c, $0f
	rrca
	ld c, $1c
	rra
	rra
	dec e
	ld [hld], a
	ld hl, $3121
	ld h, [hl]
	nop
	nop
	ld h, a
	add hl, hl
	dec h
	ld h, $1e
	jr jr_012_404c

	jr nc, @+$25

	inc [hl]
	inc sp
	inc sp
	dec [hl]
	ld [hl], $00
	nop
	scf
	jr c, jr_012_4075

	jr c, jr_012_4077

	ld a, [hld]
	nop
	nop
	add hl, sp
	nop
	add hl, bc
	ld a, [bc]
	sub c
	ld b, b
	ld e, c
	ld b, c
	ld d, [hl]
	ld b, c
	inc bc
	ld b, $0e

jr_012_404c:
	ld b, c
	add sp, -$3a
	rrca
	add hl, de
	ld [$2031], sp
	rst $00
	ld a, [bc]
	xor h
	ld c, d
	push af
	add $0f
	inc d
	ld [$0300], sp
	rst $00
	ld h, d
	ld b, b
	rrca
	dec b
	add hl, bc
	ld [de], a
	ld [bc], a
	ld c, h
	ld a, [bc]
	ld [de], a
	inc bc
	ld c, h
	add hl, bc
	dec bc
	nop
	ld c, h
	ld a, [bc]
	dec bc
	ld bc, $0d4c

jr_012_4075:
	dec b
	nop

jr_012_4077:
	ld c, l
	ld bc, $030d
	ld bc, $4200
	rst $00
	add hl, bc
	ld [de], a
	ld d, d
	rst $00
	ld a, [bc]
	ld [de], a
	ld a, $c7
	add hl, bc
	dec bc
	ld c, [hl]
	rst $00
	ld a, [bc]
	dec bc
	ld e, e
	rst $00
	dec c
	dec b
	rrca
	rrca
	rrca
	rrca
	rrca
	rrca
	rrca
	rrca
	rrca
	rrca
	ld sp, $3131
	ld b, a
	dec bc
	dec bc
	dec bc
	dec bc
	ld e, a
	ld a, e
	rrca
	ld sp, $4731
	dec bc
	dec bc
	dec bc
	ld [hl], h
	ld e, a
	ld a, e
	rrca
	ld a, [de]
	ld e, h
	ld c, e
	ld [hl], h
	ld sp, $3131
	ld e, a
	ld a, e
	rrca
	ld sp, $3131
	ld sp, $205f
	dec c
	ld hl, $0f01
	ld a, [de]
	jr nz, jr_012_40e8

	ld e, h
	ld a, [de]
	scf
	ld a, l
	ld a, [hl]
	ld [hl], a
	rrca
	ld [$7e7c], sp
	ld sp, $3131
	ld sp, $7b5f
	rrca
	ld sp, $3131
	ld sp, $3131
	ld sp, $7b5f
	rrca
	rrca
	rrca
	rrca
	rrca
	rrca
	rrca

jr_012_40e8:
	rrca
	rrca
	rrca

	call $3ec4
	ld a, [$ff47]
	or b
	ld [$ff47], a
	ld c, $04
	call $3781
	ld a, [$ff47]
	and $fc
	ld [$ff47], a
	ret


	call $3ec4
	ld a, $01
	ld [wd07d], a
	xor a

jr_012_410c:
	ldh [$96], a
	call Call_012_411d
	call Call_012_411d
	dec b
	ld a, b
	jr nz, jr_012_410c

	xor a
	ld [wd07d], a
	ret


Call_012_411d:
	ldh a, [$96]
	xor b
	ldh [$96], a
	ldh [rWY], a
	ld c, $03
	jp $3781


	call $3ec4
	xor a

jr_012_412d:
	ldh [$97], a
	call Call_012_4143
	ld c, $01
	call $3781
	call Call_012_4143
	dec b
	ld a, b
	jr nz, jr_012_412d

	ld a, $07
	ldh [rWX], a
	ret


Call_012_4143:
	ldh a, [$97]
	xor b
	ldh [$97], a
	bit 7, a
	jr z, jr_012_414d

	xor a

jr_012_414d:
	add $07
	ldh [rWX], a
	ld c, $04
	jp $3781


	jp $3c6c


	ld e, e
	ld b, c
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

	db $01, $04, $04, $fa, $42, $81, $41, $7e, $41, $00, $d5, $42

	jp $3c6c


	db $85, $41, $7f, $42, $08

	ld a, [wd6ad]
	bit 3, a
	jr nz, jr_012_4195

	ld hl, $419b
	call $3c79
	jr jr_012_4198

jr_012_4195:
	call Call_012_41ef

jr_012_4198:
	jp $0f6a


	db $00, $b5, $b6, $b1, $bb, $de, $72, $56, $7f, $bf, $b3, $c8, $4f, $b5, $c4, $ba
	db $c9, $ba, $ca, $7f, $b2, $c2, $b6, $55, $c0, $3b, $c6, $7f, $33, $d9, $d3, $c9
	db $7f, $c5, $c9, $d6, $55, $b3, $de, $56, $7f, $92, $a7, $1a, $c9, $7f, $ca, $c5
	db $bc, $d6, $e7, $51, $bf, $b3, $b2, $b4, $3a, $4f, $c4, $c5, $d8, $c9, $7f, $84
	db $e3, $86, $13, $ca, $b6, $be, $26, $55, $b1, $c5, $c0, $dd, $7f, $d6, $de, $33
	db $c0, $dc, $d6, $57

Call_012_41ef:
	ld hl, $4221
	call $3c79
	call $0b5a
	call $1b86
	ld a, $07
	call $3e9d
	ld a, $e8
	ld [wNewSoundID], a
	call $0e45

jr_012_4208:
	ld a, [wc026]
	cp $e8
	jr z, jr_012_4208

	ld a, [wd2da]
	ld [wNewSoundID], a
	call $0e45
	call $0b78
	ld hl, $4248
	jp $3c79


	nop
	or l
	or [hl]
	or c
	cp e
	sbc $72
	ld d, d
	ld d, [hl]
	rst $20
	ld c, a
	cp l
	cp d
	cp h
	ld a, a
	call nc, wdebd
	inc sp
	ld a, a
	or d
	rst $18
	ret nz

	rst $10
	ld d, l
	inc [hl]
	or e
	or [hl]
	cp h
	rst $10
	ld d, [hl]
	and $55
	ld d, [hl]
	ld a, a
	ld d, [hl]
	ld a, a
	ld d, [hl]
	ld e, b
	nop
	or l
	or [hl]
	or c
	cp e
	sbc $72
	or c
	rst $10
	or c
	rst $10
	rst $20
	ld c, a
	or c
	push bc
	ret nz

	db $d3
	ld a, a
	ld d, h
	db $d3
	ld d, l
	add hl, hl
	sbc $b7
	ld a, a
	or d
	rst $18
	ld b, h
	or d
	ret z

	rst $20
	ld d, l
	cp a
	jp c, $e02c

	ld a, a
	or a
	db $dd
	ld a, a
	jp nz, wc3b9

	rst $20
	ld d, l
	or d
	rst $18
	jp wdfd7


	cp h
	ldh [$b2], a
	rst $20
	ld d, a

	db $08

	ld a, [$c109]
	cp $04
	ld hl, $42ce
	jr nz, jr_012_428d

	ld hl, $4293

jr_012_428d:
	call $3c79
	jp $0f6a


	db $00, $92, $a7, $1a, $33, $7f, $b4, $b2, $26, $dd, $7f, $d4, $df, $c3, $d9, $e7
	db $4f, $b5, $c4, $ba, $c9, $ba, $26, $7f, $fa, $c6, $de, $55, $be, $de, $db, $c9
	db $b3, $b4, $dd, $7f, $b1, $d9, $b2, $c3, $d9, $56, $51, $56, $7f, $3e, $b8, $d3
	db $7f, $d3, $b3, $7f, $b2, $b6, $c5, $b7, $e0, $e7, $57

	nop
	ret nc

	or h
	push bc
	or d
	ld d, [hl]
	ld d, a

	db $0a, $03, $07, $02, $00, $ff, $07, $03, $00, $ff, $01, $07, $00, $26, $01, $01
	db $03, $02, $01, $33, $08, $09, $ff, $d2, $01

	ld [de], a
	rst $00
	rlca
	ld [bc], a
	ld [de], a
	rst $00
	rlca
	inc bc

	db $f6, $c6, $01, $07, $04, $09, $05, $07, $0f, $0f, $0f, $0f, $0f, $01, $02, $0f
	db $0f, $0b, $0f, $0f

	ld [de], a
	inc b
	ld a, [bc]
	pop bc
	ld b, l
	add hl, de
	ld b, e
	ld d, $43
	nop
	ld h, e
	ld b, l
	jp $3c6c


	dec sp
	ld b, e
	db $fd
	ld b, e
	ld hl, $4844
	ld b, h
	adc a
	ld b, h
	xor [hl]
	ld b, h
	cp l
	ld b, h
	xor [hl]
	ld b, h
	call c, $ae44
	ld b, h
	ei
	ld b, h
	xor [hl]
	ld b, h
	ld d, $45
	ld [hl], $45
	ld c, b
	ld b, l
	ld c, b
	ld b, l
	ld c, b
	ld b, l
	ld [$f7fa], sp
	sub $cb
	ld a, a
	jr nz, jr_012_4360

	ld hl, $4369
	call $3c79
	ld bc, wda01
	call $3e5e
	jr nc, jr_012_435b

	ld hl, wd6f7
	set 7, [hl]
	ld hl, $43a1
	jr jr_012_4363

jr_012_435b:
	ld hl, $43f0
	jr jr_012_4363

jr_012_4360:
	ld hl, $43bc

jr_012_4363:
	call $3c79
	jp $0f6a


	nop
	or d
	rst $10
	rst $18
	cp h
	ldh [$b2], a
	rst $20
	ld c, a
	or d
	call nc, $e3b1
	rst $20
	ld d, l
	ld d, h
	ld a, a
	call nc, wc4df
	ld a, a
	or l
	call c, wc0df
	sub $e7

jr_012_4384:
	ld d, c
	or a
	ret nc

	jp z, wcf7f

	jr nc, @+$81

	push bc
	ret


	and $4f
	cp a
	jp c, $e02c

	or c
	ld d, l
	or d
	or d
	ld a, a
	db $d3
	ret


	ld a, a
	or c
	add hl, hl
	sub $b3
	ld e, b
	nop
	ld d, d
	jp z, $c37f

	sbc $b2
	sbc $7f
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

jr_012_43b7:
	ret nz

	rst $20
	ld d, b
	dec bc
	ld d, b
	nop
	jp $b2de


	sbc $c9
	ld a, a
	ld b, d
	and a
	dec c
	xor e
	sub e
	ld a, a
	jr nc, jr_012_4384

	add $4f
	ld e, h
	rst $30
	cp $c9
	ld a, a
	call c, wca2b
	ld d, l
	ld d, [hl]
	ld a, a
	add l
	add d
	xor e
	adc a
	db $e3
	rst $20
	ld a, a
	jr nc, jr_012_43b7

	rst $20
	ld d, l

jr_012_43e3:
	cp a
	jp c, $e02c

	ld a, a
	ld h, $de
	ld a, [hld]
	rst $18
	jp $e7c8


	ld d, a
	nop
	add $d3
	jp nz, Jump_012_7f26

	or d
	rst $18
	ld b, h
	or d
	jr nc, jr_012_43e3

	ld d, a
	nop
	call nz, wc0df
	ld a, a
	set 0, h
	ret


	ld a, a
	push bc
	rst $08
	or h
	call nz, $804f
	add c
	ld [de], a
	or b
	ld h, $7f
	ld d, h
	ld a, a
	ld a, [hli]
	call nz, Call_012_55c6
	or a
	db $db
	cp b
	ld a, a
	cp e
	jp c, wd9c3

	sub $57
	nop
	call nc, wc0df
	db $e3
	rst $20
	ld d, c
	call nz, wd8c5
	ret


	cp d
	ld h, $7f
	add hl, bc
	db $e3
	adc h
	sub e
	call nz, $057f
	and [hl]
	db $e3
	and l
	ld c, a
	cp d
	or e
	or [hl]
	sbc $7f
	cp h
	jp wdab8


	reti


	rst $18
	jp Jump_012_57e7


	nop
	jp z, $b8d4

	ld a, a
	or a
	jp Jump_012_4fe7


	add hl, bc
	db $e3
	adc h
	sub e
	ld a, a
	pop bc
	ldh [$e3], a
	sbc $e7
	ld d, c
	ld a, $b8
	jp z, $094f

	db $e3
	adc h
	sub e
	ld a, a
	sbc l
	sub l
	add b
	ld a, a
	push bc
	ret


	ret z

	rst $20
	ld d, c
	ld d, [hl]
	ld a, a
	or c
	db $e3
	and $51
	jp $bfde


	or e
	ld a, a
	cp e
	jp c, Jump_012_7fc3

	or a
	ret nz

	ld a, a
	add hl, bc
	db $e3
	adc h
	sub e
	ld h, $4f
	dec a
	jp nz, Jump_012_7fc9

	ld d, h
	add $e7
	and $57
	nop
	set 0, h
	or [hl]
	rst $10
	ld a, a
	db $d3
	rst $10
	rst $18
	ret nz

	ld a, a
	ld d, h
	jp z, $804f

	add c
	ld [de], a
	or b
	ld h, $7f

jr_012_44a3:
	pop bc
	ld h, $b3
	or [hl]
	rst $10
	ld a, a
	call c, wd9b6
	sub $57
	nop
	adc h
	db $e3
	ld b, b
	db $e3

jr_012_44b3:
	ld a, a
	sbc e
	jp hl


	sbc [hl]
	adc c
	xor e
	ld a, a
	jr nc, jr_012_44a3

	ld d, a
	nop
	xor b
	db $e3
	and [hl]
	ld b, d
	and a
	add c
	xor e
	rlca
	ld a, a
	ld [$9fe3], sp
	jr nc, jr_012_44b3

	ld c, a
	ld d, [hl]
	ld a, a
	or c
	cp a
	sbc $33
	cp b
	ld a, a
	set 1, a
	ld h, $7f
	push bc
	or d
	ld d, a
	nop
	cp d
	jp c, Jump_012_7fca

	adc h
	ld b, e
	db $e3
	sub c
	ld a, a
	ld [$9fe3], sp
	jr nc, @-$17

	ld c, a
	ld d, [hl]
	ld a, a
	or l
	call nz, $bbb3
	sbc $26
	ld a, a
	cp l
	or a
	cp a
	or e
	rst $20
	ld d, a
	nop
	ld b, b
	inc c
	and [hl]
	ld a, a
	ld [$9fe3], sp
	jr nc, jr_012_455b

	rst $20
	ld c, a
	ld d, [hl]
	ld a, a
	jp z, wd22c

	ret nz

jr_012_450d:
	rst $10
	ld a, a
	call nc, wd7d2
	jp c, $b2c5

	ld d, a
	nop
	ret nz

	or d
	cp [hl]
	sbc $7f
	add b
	add a
	adc e
	xor a
	xor e
	ld [$9fe3], sp
	jr nc, jr_012_450d

	ld c, a
	ld d, [hl]
	ld a, a
	pop bc
	ld [c], a
	rst $18
	call nz, wd17f
	dec l
	or [hl]
	cp h
	cp a
	or e
	rst $20
	ld d, a
	nop
	ld sp, hl
	or [hl]
	or d
	ld d, [hl]
	sub d
	and a
	ld a, [de]
	ld a, a
	ld [$9fe3], sp
	ld a, a
	adc e
	xor a
	xor h
	ld b, d
	ld d, a
	nop
	or c
	or [hl]
	call nz, wSpriteCurPosY
	inc [hl]
	ret c

	rst $20
	ld c, a
	inc [hl]
	rst $18
	pop bc
	db $d3
	ld a, a
	ld b, e
	adc b
	xor h
	sub e

jr_012_455b:
	ld a, a
	and c
	xor e
	adc h
	adc a
	db $e3
	rst $20
	ld d, a
	rrca
	inc bc
	ld bc, $000c
	ld a, l
	ld bc, $0110
	ld a, e
	ld bc, $0001
	ld a, a
	inc c
	inc b
	ld [bc], a
	ld b, $04
	inc bc
	rlca
	inc b
	dec b
	ld [$0604], sp
	add hl, bc
	ld b, $02
	ld a, [bc]
	ld b, $03
	dec bc
	ld b, $05
	inc c
	ld b, $06
	dec c
	ld bc, $0e0e
	ld bc, $0f04
	ld bc, $1006
	ld bc, $110a
	dec b
	ld h, $09
	inc d
	rst $38
	rst $38
	ld bc, $0a37
	rrca
	rst $38
	db $d3
	ld [bc], a
	scf
	ld b, $0b
	rst $38
	ret nc

	inc bc
	scf
	ld b, $0c
	rst $38
	ret nc

	inc b
	dec [hl]
	add hl, bc
	ld b, $ff
	pop de
	dec b
	rst $38
	add $01
	inc c
	ld bc, $01c7
	db $10
	ld sp, hl
	add $01
	ld bc, $0d0c
	inc h
	inc h
	inc h
	inc h
	ld [bc], a
	dec h
	inc bc
	ld c, $0b
	dec bc
	dec bc
	dec bc
	dec bc
	dec bc
	dec bc
	dec bc
	dec bc
	ld [de], a
	dec bc
	inc b
	dec b
	ld b, $0b
	dec bc
	db $10
	ld de, $1111
	dec bc
	inc b
	dec b
	ld b, $0b
	dec bc
	inc d
	dec bc
	ld a, [bc]

jr_012_45e8:
	ld a, [bc]
	ld [de], a
	inc b
	ld a, [bc]
	pop af
	ld b, [hl]
	ld hl, sp+$45
	push af
	ld b, l
	nop
	ret nz

	ld b, [hl]
	jp $3c6c


	ld [hli], a
	rrca
	nop
	ld b, [hl]
	ld sp, $8146
	ld b, [hl]
	nop
	or [hl]
	ret


	inc l
	ld [c], a
	add $7f
	ld b, d
	and a
	dec c
	xor e
	sub e
	db $dd
	ld a, a
	or [hl]
	or e
	sbc $30
	ld d, c
	call nc, $44df
	ret c

	ld a, a
	ld b, c
	xor h
	ld b, c
	add $de
	daa
	ld [c], a
	or e
	ld a, a
	jr nc, jr_012_45e8

	rst $20
	ld c, a
	add $de
	or a
	ld a, a
	or c
	reti


	sbc $30
	sub $c8
	rst $20
	ld d, a
	nop
	pop bc
	ld [c], a
	rst $18
	call nz, $b27f
	or d
	ld a, a
	jp z, $bcc5

	ld a, a
	or a
	or d
	ret nz

	sub $51
	ld d, h
	ld h, $7f
	call nz, $303b
	cp h
	jp $b77f


	ret nz

	ld a, a
	call nz, $4fb7
	ld b, c
	xor h
	ld b, c
	add $de
	daa

jr_012_4658:
	ld [c], a
	or e
	db $dd
	ld a, a
	push bc
	add hl, hl
	reti


	call nz, Call_012_5455
	jp z, $bf7f

	jp c, Jump_012_7fc6

	or a
	db $dd
	ld a, a
	call nz, wdad7
	reti


	ld d, c
	jp nz, wd8cf

	ld a, a
	add $29
	jp c, wdfd9

	jp $ba7f


	call nz, wd630
	rst $20
	ld d, a
	nop
	ld a, [$b2b6]
	ld d, [hl]
	rst $08
	ld a, [hli]
	cp d
	db $db
	ld a, a
	or l
	cp b
	db $db
	or e
	rst $20
	ld c, a
	ld a, a
	ld a, a
	xor c
	add c
	inc c
	sbc l
	xor e
	ld [hl], h
	ld b, $9b
	sub e
	ld a, a
	adc e
	xor a
	xor h
	ld b, d
	rst $20
	ld d, c
	ret nz

	jr nc, jr_012_4658

	rst $08
	ld a, a
	ld d, h
	ld a, a
	cp h
	sbc $b6
	ret


	or d
	cp h
	ld c, a
	call nz, $3db8
	jp nz, wca7f

	sbc $3a
	or d
	ld a, a
	pop bc
	pop hl
	or e
	rst $20
	ld d, a
	rrca
	inc bc
	ld bc, $000c
	ld a, h
	ld bc, $0110
	adc b
	ld bc, $0001
	ld a, a
	ld bc, $0e01
	inc b
	inc bc
	ld h, $0b
	add hl, bc
	rst $38
	rst $38
	ld bc, $090c
	inc de
	cp $02
	ld [bc], a
	inc b
	ld b, $09
	cp $02
	inc bc
	rst $38
	add $01
	inc c
	ld bc, $01c7
	db $10
	ld sp, hl
	add $01
	ld bc, $0d0c
	ld bc, $0101
	ld bc, $2503
	ld [bc], a
	ld bc, $1a0b
	ld a, [de]
	ld a, [de]
	ld a, [de]
	dec bc
	ld a, [de]
	ld a, [de]
	ld a, [de]
	dec bc
	dec bc
	ld e, $1e
	ld e, $1e
	dec bc
	ld e, $1e
	ld e, $0b
	ld de, $1111
	ld de, $0b27
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	dec bc
	ld [de], a
	inc b
	ld a, [bc]
	db $10
	ld c, e
	dec de
	ld c, d
	dec h
	ld b, a
	nop
	db $ec
	ld c, d
	jp $3c6c


	xor a
	ld [wcd37], a
	ld de, wcc5b
	ld hl, $4758

jr_012_4732:
	ld a, [hli]
	and a
	jr z, jr_012_4754

	push hl
	push de
	ld [wNumSetBits], a
	ld b, a
	ld a, $1c
	call $3e9d
	pop de
	pop hl
	ld a, b
	and a
	jr z, jr_012_4732

	ld a, [wNumSetBits]
	ld [de], a
	inc de
	push hl
	ld hl, wcd37
	inc [hl]
	pop hl
	jr jr_012_4732

jr_012_4754:
	ld a, $ff
	ld [de], a
	ret


	inc a
	dec a
	ld a, $00

Call_012_475c:
	ld hl, wd6af
	set 6, [hl]
	ld hl, $483e
	call $3c79
	xor a
	ld [wCurrentMenuItem], a
	ld a, $03
	ld [wcc29], a
	ld a, [wcd37]
	dec a
	ld [wcc28], a
	ld a, $02
	ld [wcc24], a
	ld a, $01
	ld [wcc25], a
	ld a, [wcd37]
	dec a
	ld bc, $0002
	ld hl, $0003
	call $3ad1
	dec l
	ld b, l
	ld c, $07
	ld hl, wc3a0
	call $03d2
	call $0ebd
	call Call_012_49f2
	ld hl, wd6af
	res 6, [hl]
	call $3b08
	bit 1, a
	ret nz

	ld hl, wcc5b
	ld a, [wCurrentMenuItem]
	ld d, $00
	ld e, a
	add hl, de
	ld a, [hl]
	ldh [$db], a
	cp $3c
	jr z, jr_012_4806

	cp $3d
	jr z, jr_012_47e2

	ld a, [wd6f7]
	bit 6, a
	jr nz, jr_012_4830

	ld hl, $4950
	call $3c79
	call Call_012_4836
	ld bc, $f901
	call $3e5e
	jr nc, jr_012_482a

	ld hl, $4986
	call $3c79
	ld hl, wd6f7
	set 6, [hl]
	ret


jr_012_47e2:
	ld a, [wd6f7]
	bit 5, a
	jr nz, jr_012_4830

	ld hl, $48ce
	call $3c79
	call Call_012_4836
	ld bc, $f801
	call $3e5e
	jr nc, jr_012_482a

	ld hl, $4904
	call $3c79
	ld hl, wd6f7
	set 5, [hl]
	ret


jr_012_4806:
	ld a, [wd6f7]
	bit 4, a
	jr nz, jr_012_4830

	ld hl, $484a
	call $3c79
	call Call_012_4836
	ld bc, wd501
	call $3e5e
	jr nc, jr_012_482a

	ld hl, $4881
	call $3c79
	ld hl, wd6f7
	set 4, [hl]
	ret


jr_012_482a:
	ld hl, $49cf
	jp $3c79


jr_012_4830:
	ld hl, $49dd
	jp $3c79


Call_012_4836:
	ld b, $05
	ld hl, $7fae
	jp $3620


	nop
	inc [hl]
	jp c, Jump_012_7fdd

	or c
	add hl, hl
	rst $08
	cp l
	or [hl]
	and $57
	nop
	call c, $b2e3
	rst $20
	ld d, c
	or l
	or d
	cp h
	or d
	ret nc

	dec l
	ld a, a
	cp b
	jp c, wc9d9

	and $51
	ld a, [hli]
	pop bc
	cp a
	or e
	ld a, a
	cp e
	rst $08
	rst $20
	ld d, c
	or l
	jp c, wc6b2

	ld a, a
	call c, $bcc0
	ret


	ld a, a
	ret nz

	or [hl]
	rst $10
	db $d3
	ret


	ld c, a
	cp d
	jp c, $b17f

	add hl, hl
	reti


	ret z

	rst $20
	ld d, b
	dec c
	ld d, b
	nop
	ld d, d
	jp z, $b57f

	sbc $c5
	ret


	cp d
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
	nop
	ld d, c
	ld d, b
	ld bc, wcf45
	nop
	ret


	ld a, a
	push bc
	or [hl]
	jp z, wda4f

	or d
	call nz, $1ab3
	db $e3
	sbc a
	ld a, a
	push bc
	ret


	rst $20
	ld d, c
	ret nz

	rst $08
	add $7f
	or c
	or d
	jp Jump_012_4fdd


	cp d
	or l
	rst $10
	cp [hl]
	reti


	ld a, a
	cp d
	call nz, Call_012_7f26
	or c
	reti


	call c, $0d50
	ld d, b
	nop
	call c, $b2e3
	rst $20
	ld d, c
	adc d
	add c
	adc c
	adc [hl]
	db $e3
	rrca
	ld a, a
	cp b
	jp c, wc9d9

	and $51
	ld a, [hli]
	pop bc
	cp a
	or e
	cp e
	rst $08
	rst $20
	ld d, c
	or l
	jp c, wc6b2

	ld a, a
	call c, $bcc0
	ret


	ld a, a
	ret nz

	or [hl]
	rst $10
	db $d3
	ret


	ld c, a
	cp d
	jp c, $b17f

	add hl, hl
	reti


	ret z

	rst $20
	ld d, b
	dec c
	ld d, b
	nop
	ld d, d
	jp z, $b57f

	sbc $c5
	ret


	cp d
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
	nop
	ld d, c
	ld d, b
	ld bc, wcf45
	nop
	ret


	ld a, a
	push bc
	or [hl]
	jp z, $b24f

	call c, $30c5
	jp c, wc57f

	ret


	rst $20
	ld d, c
	ret nz

	rst $08
	add $7f
	or c
	or d
	jp Jump_012_4fdd


	or a
	ld l, $c2
	ld a, a
	cp e
	cp [hl]
	reti


	ld a, a
	cp d
	call nz, Call_012_7f26
	or c
	reti


	call c, $0d50
	ld d, b
	nop
	call c, $b2e3
	rst $20
	ld d, c
	sbc [hl]
	xor h
	add a
	adc h
	add h
	and a
	ld a, a
	cp b
	jp c, wc9d9

	and $51
	ld a, [hli]
	pop bc
	cp a
	or e
	cp e
	rst $08
	rst $20
	ld d, c
	or l
	jp c, wc6b2

	ld a, a
	call c, $bcc0
	ret


	ld a, a
	ret nz

	or [hl]
	rst $10
	db $d3
	ret


	ld c, a
	cp d
	jp c, $b17f

	add hl, hl
	reti


	ret z

	rst $20
	ld d, b
	dec c
	ld d, b
	nop
	ld d, d
	jp z, $b57f

	sbc $c5
	ret


	cp d
	or [hl]
	rst $10
	ld c, a
	ld e, h
	ld a, [wddff]
	ld a, a
	db $d3
	rst $10
	rst $18
	ret nz

	rst $20
	ld d, b
	dec bc
	nop
	ld d, c
	ld e, h
	ld a, [wc9ff]
	ld a, a
	push bc
	or [hl]
	jp z, $934f

	and l
	add c
	add b
	adc a
	xor h
	add a
	ld a, a
	push bc
	ret


	rst $20
	ld d, c
	ret nz

	rst $08
	add $7f
	or c
	or d
	jp Jump_012_4fdd


	rst $08
	bit 7, a
	cp e
	cp [hl]
	reti


	ld a, a
	cp d
	call nz, Call_012_7f26
	or c
	reti


	call c, $0d50
	ld d, b
	nop
	add $d3
	jp nz, $b27f

	rst $18
	ld b, h
	or d
	sub $e7
	ld d, b
	dec c
	ld d, b
	nop
	or e
	db $e3
	sbc $e7
	ld c, a
	call nc, $44df
	ret c

	ld a, a
	ld h, $cf
	sbc $7f
	cp l
	reti


	rst $20
	ld d, b
	dec c
	ld d, b

Call_012_49f2:
	ld hl, wcc5b
	xor a
	ldh [$db], a

jr_012_49f8:
	ld a, [hli]
	cp $ff
	ret z

jr_012_49fc:
	push hl
	ld [wNumSetBits], a
	call $1add
	ld hl, wc3ca
	ldh a, [$db]
	ld bc, $0028
	call $3ad1
	ld de, wcd68
	call $0405
	ld hl, $ffdb
	inc [hl]
	pop hl
	jr jr_012_49f8

	daa
	ld c, d
	ld d, [hl]
	ld c, d
	rst $00
	ld c, d
	rst $00
	ld c, d
	rst $00
	ld c, d
	ret z

	ld c, d
	nop
	add d
	sub b
	ret


	ld a, a
	or d
	db $d3
	or e
	call nz, $b17f
	jp c, wd333

	ld c, a
	ld d, h
	ld a, a
	ld e, l
	ret


	ld a, a
	jp z, $b8bc

	jp c, Jump_012_51e7

	jr nc, jr_012_49fc

	inc [hl]
	ld d, [hl]
	ld c, a
	call c, wcf26
	rst $08
	inc sp
	ld a, a
	add c
	and d
	sbc $c5
	rst $18
	pop bc
	ldh [$b3], a
	sub $57
	ld [$28cd], sp
	ld b, a
	ld a, [wcd37]
	and a
	jr z, jr_012_4a79

	ld a, $01
	ld [wcc3c], a
	ld hl, $4a9e
	call $3c79
	call $3636
	ld a, [wCurrentMenuItem]
	and a
	jr nz, jr_012_4a7f

	call Call_012_475c
	jr jr_012_4a7f

jr_012_4a79:
	ld hl, $4a82
	call $3c79

jr_012_4a7f:
	jp $0f6a


	nop
	or h
	db $e3
	sbc $56
	rst $20
	ld c, a
	or l
	add $b2
	pop bc
	ldh [$de], a
	rst $20
	ld d, l
	dec bc
	xor [hl]
	db $e3
	adc h
	ld a, a
	ret


	ret nc

	ret nz

	or d
	sub $e3
	rst $20
	ld d, a
	nop
	or h
	db $e3
	sbc $56
	rst $20
	ld c, a
	or l
	add $b2
	pop bc
	ldh [$de], a
	rst $20
	ld d, l
	dec bc
	xor [hl]
	db $e3
	adc h
	ld a, a
	ret


	ret nc

	ret nz

	or d
	sub $e3
	rst $20
	ld d, c
	ret


	ret nc

	db $d3
	ret


	db $dd
	ld a, a
	or c
	add hl, hl
	rst $08
	cp l
	or [hl]
	and $57
	push af
	nop
	or l
	cp b
	inc l
	ld [c], a
	or e
	ld a, a
	ld d, [hl]
	ld a, a
	or d
	cp d
	or d
	ret


	ld a, a
	set 3, e
	ld a, [hld]
	ld c, a
	ld a, a
	ld a, a
	ld a, a
	ld a, a
	ld a, a
	ld a, a
	ld d, [hl]
	ld a, a
	inc l
	inc [hl]
	or e
	ld a, a
	jp z, $3ade

	or d
	or a
	ld d, a
	ld b, d
	ld bc, $0f02
	nop
	adc b
	inc b
	ld bc, $030a
	ld bc, $040b
	ld [bc], a
	inc c
	dec b
	ld [bc], a
	dec c
	ld b, $02
	inc c
	ld [$ff0e], sp
	jp nc, $0801

	add hl, bc
	add hl, bc
	cp $00
	ld [bc], a
	db $10
	rst $00
	ld [bc], a
	rrca
	ld [hl], $1c
	inc e
	inc e
	inc e
	dec de
	dec sp
	ccf
	ccf
	ld b, c
	ld [hl], $21
	dec e
	rra
	jr nz, jr_012_4b40

	inc a
	ld b, e
	ld a, [hli]
	ld b, c
	ld [hl], $20
	jr nz, jr_012_4b49

	dec e
	rra
	jr nz, jr_012_4b4c

	jr nz, jr_012_4b6f

	ld [hl], $37
	scf
	scf
	scf
	scf
	scf
	scf
	scf
	ld b, c
	ld [de], a
	ld [bc], a
	ld [bc], a
	ret z

	ld c, e
	and b
	ld c, e
	ld b, h

jr_012_4b40:
	ld c, e
	nop
	or c
	ld c, e
	ld hl, wd0eb
	bit 5, [hl]

jr_012_4b49:
	res 5, [hl]
	push hl

jr_012_4b4c:
	call nz, Call_012_4b60
	pop hl
	bit 7, [hl]
	res 7, [hl]
	call nz, Call_012_4b98
	xor a
	ld [wcf07], a
	inc a
	ld [wcc3c], a
	ret


Call_012_4b60:
	ld hl, wd32e
	ld a, [wd6ba]
	ld b, a
	ld a, [wd6bb]
	ld c, a
	call Call_012_4b6e

Call_012_4b6e:
	inc hl

jr_012_4b6f:
	inc hl
	ld a, b
	ld [hli], a
	ld a, c
	ld [hli], a
	ret


	ld hl, $4b87
	call $1539
	ld hl, $4b8e
	ld de, wcc5b
	ld bc, $000a
	jp $01bb


	dec b
	ld d, [hl]
	ld d, a
	ld e, b
	ld e, c
	ld e, d
	rst $38
	dec b
	ld a, d
	ld [bc], a
	ld a, e
	ld [bc], a
	ld a, h
	ld [bc], a
	ld a, l
	ld [bc], a
	adc b

Call_012_4b98:
	ld b, $1e
	ld hl, $7f41
	jp $3620


	and d
	ld c, e
	ld [$75cd], sp
	ld c, e
	ld hl, $4b8e
	ld a, $61
	call $3e9d
	jp $0f6a


	rrca
	ld [bc], a
	inc bc
	ld bc, $7a05
	inc bc
	ld [bc], a
	dec b
	ld a, d
	ld bc, $0300
	ld bc, $f900
	add $03
	ld bc, wc6fa
	inc bc
	ld [bc], a
	ld a, [hli]
	dec hl
	jr z, jr_012_4bf5

	inc de
	ld b, $04
	cp l
	ld c, h
	db $db
	ld c, e
	ret c

	ld c, e
	nop
	db $76
	ld c, h
	jp $3c6c


	db $eb
	ld c, e
	db $fd
	ld c, e
	add hl, sp
	ld c, h
	ld c, e
	ld c, h
	ld e, a
	ld c, h

Jump_012_4be5:
	call $2dc7
	jp $0f6a


	nop
	sub l
	xor l
	db $e3
	adc h
	ld [hl], d
	add $e0
	db $e3
	ld a, [hli]

jr_012_4bf5:
	rst $20
	ld d, b
	ld [$4d3e], sp
	jp Jump_012_4be5


	nop
	ld d, h
	add $7f
	or [hl]
	cp d
	rst $08
	jp c, wd9c3

	call nz, wcb4f
	call nz, Call_012_7fd8
	jr z, @-$27

	cp h
	db $d3
	ld a, a
	cp e
	dec sp
	cp h
	cp b
	ld a, a
	push bc
	or d
	call c, $b351
	pop bc
	ret


	ld a, a
	sub l
	xor l
	db $e3
	adc h
	ld a, a
	push bc
	sbc $b6
	ld c, a
	ret nz

	rst $08
	add $7f
	or l
	or [hl]
	ret z

	ld a, a
	set 3, e
	rst $18
	jp $b87f


	reti


	ret


	ld d, a
	nop
	ld b, c
	xor h
	ld b, c
	ld [hl], d
	ld b, l
	ld a, a
	ld b, l
	rst $18
	ld b, l
	rst $20
	ld d, b
	ld [$043e], sp
	jp Jump_012_4be5


	nop
	sub l
	inc de
	and l
	xor e
	ld [hl], d
	or a
	ldh [$7f], a
	or a
	ldh [$b3], a
	rst $20
	ld d, b
	ld [$0f3e], sp
	jp Jump_012_4be5


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
	ld c, a
	ld d, [hl]
	ld a, a
	or [hl]
	sbc $d8
	add $de
	ld a, a
	cp h
	jp nz, $0f57

	dec b
	dec bc
	inc b
	ld [bc], a
	rst $38
	dec bc
	dec b
	ld [bc], a
	rst $38
	nop
	inc b
	inc b
	rst $38
	ld bc, $0107
	add c
	ld bc, $0202
	add c
	ld bc, $0409
	dec b
	inc b
	dec b
	add hl, bc
	inc b
	rst $38
	db $d3
	ld bc, $0928
	dec b
	rst $38
	ret nc

	ld [bc], a
	jr c, jr_012_4cab

	dec b
	cp $02
	inc bc
	dec b
	ld [$fe08], sp
	ld bc, $2704
	rst $00

jr_012_4cab:
	dec bc
	inc b
	daa
	rst $00
	dec bc
	dec b
	push af
	add $00
	inc b
	or $c6
	ld bc, $f407
	add $01
	ld [bc], a
	rrca
	ld bc, $0302
	inc h
	ld a, [hli]
	ld b, $07
	dec bc
	dec bc
	inc b
	rlca
	db $10
	dec bc
	ld [$0c07], sp
	inc c
	dec c
	rlca
	rlca
	rlca
	ld a, $07
	inc de
	ld b, $04
	rra
	ld c, l
	push hl
	ld c, h
	pop hl
	ld c, h
	nop
	ld hl, sp+$4c
	call $3c6c
	ret


	rst $20
	ld c, h
	nop
	ld [$9fe3], sp
	sbc e
	ret c

	db $e3
	add a
	ld a, a
	or l
	or e
	cp [hl]
	jp nz, $bc7f

	jp nz, $0f57

	inc b
	ld bc, $0006
	add d
	ld bc, $0307
	add b
	ld bc, $0402
	add b
	ld bc, $0304
	add d
	ld bc, $0409
	ld bc, $f600
	add $01
	ld b, $f6
	add $01
	rlca
	db $f4
	add $01
	ld [bc], a
	push af
	add $01
	inc b
	rrca
	inc d
	dec d
	add hl, de
	ld de, $1a11
	rlca
	daa
	dec bc
	inc b
	rlca
	dec hl
	ld [de], a
	inc de
	rlca
	cpl
	inc c
	dec c
	rlca
	rlca
	rlca
	rlca
	rlca
	inc de
	ld b, $04

jr_012_4d3a:
	jr nz, jr_012_4d8b

	ld b, [hl]
	ld c, l
	ld b, e
	ld c, l
	nop
	ret c

	ld c, [hl]
	jp $3c6c


	ld d, [hl]
	ld c, l
	ld h, [hl]
	ld c, l
	add d
	ld c, l
	or a
	ld c, l
	ld h, b
	ld c, [hl]
	ld a, l
	ld c, [hl]
	sbc e
	ld c, [hl]
	rst $00
	ld c, [hl]
	nop
	or l
	jp c, Jump_012_7fe6

	ld b, d
	xor b
	rlca
	and l
	sbc l
	db $e3
	ld a, a
	jr nc, jr_012_4d3a

	rst $20
	ld d, a
	nop
	or l
	jp c, $077f

	and l
	sbc e
	or b
	xor h
	add l
	db $e3
	rst $20
	ld c, a
	or l
	rst $08
	or h
	db $dd
	ld a, a
	or [hl]
	or d
	ret nz

	ret


	ld a, a
	or l
	jp c, $e7bb

	ld d, a
	nop
	ld a, $b8
	ld a, a
	adc e
	sub h
	ret c

	add h
	ld a, a

jr_012_4d8b:
	or [hl]
	or d
	ret nz

	rst $20
	ld c, a
	or c
	ret


	ld d, [hl]
	ld a, a
	add e
	ret c

	add l
	ld a, a
	or [hl]
	call c, $b2b2
	ld a, a
	inc sp
	cp h
	ld [c], a
	ld d, c
	add l
	adc h
	sbc [hl]
	db $d3
	ld a, a
	or d
	or d
	sub $c8
	rst $20
	ld d, c
	sub h
	sub c
	and b
	db $d3
	ld a, a
	or d
	or d
	sub $c8
	rst $20
	ld d, a
	ld [$7b21], sp
	jp nc, $1306

	call $1690
	ld a, [wNumSetBits]
	cp $96
	jr nc, jr_012_4dcc

	ld hl, $4dd5
	jr jr_012_4dcf

jr_012_4dcc:
	ld hl, $4e1f

jr_012_4dcf:
	call $3c79
	jp $0f6a


	nop
	cp a
	db $e3
	inc sp
	cp l
	or [hl]
	db $e3
	rst $20
	ld d, c
	ld a, $b8
	jp z, $087f

	db $e3
	sbc a
	ld a, a
	ld [de], a
	ld a, [bc]
	add c
	sub h
	db $e3
	ld d, c
	ld d, h
	dec l
	or [hl]
	sbc $7f
	ld l, $de
	inc a
	ld a, a
	or c
	jp nz, wd9d2

	ret


	ld c, a
	ret nz

	or d
	call Call_012_7fde
	jr nc, @-$45

	inc [hl]
	ld a, a
	ld h, $de
	ld a, [hld]
	rst $18
	jp Jump_012_55e7


	db $d3
	cp h
	ld a, a
	ld l, $de
	inc a
	ld a, a
	or c
	jp nz, wc0d2

	rst $10
	ld d, c
	or l
	cp h
	or h
	jp $e7c8


	ld d, a
	nop
	call c, Call_012_7fb1
	cp l
	ld a, [hli]
	or d
	rst $20
	ld c, a
	ld d, h
	dec l
	or [hl]
	sbc $7f
	ld l, $de
	inc a
	ret


	ld a, a
	ld b, a
	db $e3
	dec bc
	ld d, l
	call nz, wc4b3
	or e
	ld a, a
	or c
	jp nz, wc0d2

	sbc $30
	ret z

	rst $20
	ld d, l
	or l
	jp nc, wc433

	or e
	rst $20
	ld d, l
	ld d, [hl]
	ld d, [hl]
	ld d, b
	ld b, $08
	ld hl, $7c9c
	ld b, $15
	call $3620
	ld a, $01
	ld [wcc3c], a
	jp $0f6a


	nop
	ld [$9fe3], sp
	ret


	ld a, a
	ld b, d
	xor b
	rlca
	and l
	sbc a
	jr nc, @-$17

	ld c, a
	cp d
	jp c, $b67f

	or h
	ret nz

	rst $10
	ld a, a
	add hl, de

jr_012_4e77:
	rlca
	reti


	ld a, a
	or [hl]
	db $d3
	ld d, a
	nop
	ld e, e
	inc sp
	ld a, a
	cp h
	ld a, [hli]
	call nz, $c17f
	pop hl
	or e
	ld d, [hl]
	ld c, a
	call nz, $b57f
	db $d3
	rst $18
	ret nz

	rst $10

jr_012_4e91:
	ld a, a
	ld [$9fe3], sp
	ld a, a
	jr nc, jr_012_4e77

	ret nz

	rst $20
	ld d, a
	nop
	ld d, [hl]
	ld a, a

jr_012_4e9e:
	ld b, e
	adc b
	and c
	xor e
	ret


	ld a, a
	adc e
	sub h
	ret c

	add h
	jr nc, jr_012_4e91

	ld c, a
	cp d
	jp c, Jump_012_7fca

	add e
	xor e
	ld [de], a
	or b
	xor e
	rlca
	jr nc, jr_012_4e9e

	ld d, l
	or d
	rst $08
	jp z, wSpriteCurPosY

	push bc
	or d
	inc sp
	ld a, a
	or l
	cp d
	or e
	ld d, [hl]
	rst $20
	ld d, a
	nop
	ld [$9fe3], sp
	sbc e
	ret c

	db $e3
	add a
	ld a, a
	or [hl]
	or d
	jp z, Jump_012_7fc2

	cp h
	jp nz, $0f57

	inc b
	ld bc, $0006
	add c
	ld bc, $0007
	add e
	ld bc, $0102
	add e
	ld bc, $0304
	add c
	inc b
	inc bc
	ld bc, $0305
	inc b
	ld b, $06
	ld bc, $0907
	inc b
	ld [$1504], sp
	ld [$ff04], sp
	pop de
	ld bc, $0826
	rlca
	rst $38
	pop de
	ld [bc], a
	inc c
	dec bc
	inc b
	rst $38
	pop de
	inc bc
	inc l
	rlca
	ld b, $ff
	rst $38
	inc b
	or $c6
	ld bc, $f606
	add $01
	rlca
	db $f4
	add $01
	ld [bc], a
	push af
	add $01
	inc b
	rrca
	ld d, $17
	jr jr_012_4f33

	jr z, @+$2b

	rlca
	inc hl
	inc l
	dec l
	rlca
	ld a, [bc]
	dec bc
	ld [$0c07], sp
	inc c
	dec c

jr_012_4f33:
	rlca
	rlca
	rlca
	rlca
	rlca
	inc de
	ld b, $04
	ld a, c
	ld c, a
	ld b, a
	ld c, a
	ld b, h
	ld c, a
	nop
	ld e, d
	ld c, a
	jp $3c6c


	ld c, c
	ld c, a
	nop
	call c, wcabc
	ld a, a
	push bc
	sbc $33
	db $d3
	ld a, a
	or l
	ret nc

	call nz, $bcb5
	rst $20
	ld d, a
	add hl, bc
	inc bc
	ld bc, $0106
	add d
	ld bc, $0202
	add d
	rlca
	ld [bc], a
	nop
	add h
	ld bc, $0307
	ld bc, $f600
	add $01
	ld b, $f4
	add $01
	ld [bc], a
	ld [de], a
	rst $00
	rlca
	ld [bc], a
	ld b, l
	dec sp
	inc e
	dec de
	dec a
	rlca
	dec e
	dec e
	ld hl, $1d22
	dec e
	dec h
	ld h, $1d
	dec e
	inc sp
	rra
	ld e, $1d
	jr nz, jr_012_4fae

	rra
	ld e, $06
	inc b
	rlca
	nop
	ld b, b
	and e
	ld c, a
	sbc l
	ld c, a
	nop
	inc de
	ld d, b
	call $0d8e
	jp $3c6c


	xor h
	ld c, a
	xor l
	ld c, a
	ld [c], a
	ld c, a
	xor e
	ld c, a
	or $ff
	nop

jr_012_4fae:
	ld d, h
	ret


	call z, $33b4
	ld a, a
	ret z

	jp Jump_012_7fd9


	ld d, h
	ld h, $4f
	call nz, Call_012_7f3b

jr_012_4fbe:
	or l
	or a
	reti


	ret


	jp z, wcb51

	call nz, wcac6
	ld a, a
	or a

Jump_012_4fca:
	cp d
	or h
	push bc
	or d
	ld c, a
	call nz, $3db8
	jp nz, Jump_012_7fc5

	or l
	call nz, Call_012_7fd3

Jump_012_4fd9:
	inc sp
	jp Jump_012_7fd9


Jump_012_4fdd:
	or [hl]
	rst $10
	jr nc, @-$28

	ld d, a
	nop
	adc l
	add [hl]
	sub b
	add a

Call_012_4fe7:
Jump_012_4fe7:
	ld a, a
	adc e
	sub d
	or b
	or [hl]
	rst $10
	ld a, a
	or a
	ret nz

	sbc $30
	cp c
	inc [hl]
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
	ld d, l
	ret


	ld a, $d8
	dec hl
	or [hl]
	ld a, a
	jr nc, jr_012_4fbe

	rst $10
	ld a, a
	jp nz, wdab6

	pop bc
	ldh [$df], a
	ret nz

	rst $20
	ld d, a
	nop
	ld [bc], a
	rlca
	inc bc
	dec b
	rst $38
	rlca
	inc b
	dec b
	rst $38
	nop
	inc b
	add hl, hl
	dec b
	rlca
	rst $38
	ret nc

	ld bc, $0710
	dec bc
	cp $02
	ld [bc], a
	rrca
	add hl, bc
	ld c, $fe
	nop
	inc bc
	ld a, [hli]
	ld b, $0f
	rst $38
	ret nc

	inc b
	ld e, $c7
	rlca
	inc bc
	rra
	rst $00
	rlca
	inc b
	rlca
	add hl, bc
	dec b
	and h
	ld d, [hl]
	db $dd
	ld d, b
	ld c, e
	ld d, b
	nop
	ld d, b
	ld d, [hl]
	ld hl, wd0eb
	bit 6, [hl]
	res 6, [hl]
	call nz, Call_012_5068
	call $3c6c
	ld hl, $50f3
	ld de, $5085
	ld a, [wd57e]
	call $31a8
	ld [wd57e], a
	ret


Call_012_5068:
	ld hl, $5071
	ld de, $5076
	jp $31c7


	adc a
	sbc l
	sbc a
	adc e
	ld d, b
	add e
	ret c

	add l
	ld d, b

Jump_012_507a:
	xor a
	ld [wcd66], a
	ld [wd57e], a
	ld [wd97c], a
	ret


	ld h, c
	ld [hld], a
	sub h
	ld [hld], a
	cp l
	ld [hld], a
	adc l
	ld d, b
	ld a, [wd034]
	cp $ff
	jp z, Jump_012_507a

	ld a, $f0
	ld [wcd66], a

Call_012_509a:
	ld a, $09
	ldh [$8c], a
	call $13f1
	ld hl, wd6fb
	set 1, [hl]
	ld bc, wdd01
	call $3e5e
	jr nc, jr_012_50bc

	ld a, $0a
	ldh [$8c], a
	call $13f1
	ld hl, wd6fb
	set 0, [hl]
	jr jr_012_50c3

jr_012_50bc:
	ld a, $0b
	ldh [$8c], a
	call $13f1

jr_012_50c3:
	ld hl, wd2d5
	set 3, [hl]
	ld hl, wd6a9
	set 3, [hl]
	ld a, [wd6fb]
	or $fc
	ld [wd6fb], a
	ld hl, wd6fc
	set 0, [hl]
	jp Jump_012_507a


	ld c, b
	ld d, c
	ld [hl], l
	ld d, e
	call $3853
	ld d, h
	adc l
	ld d, h
	rlca
	ld d, l
	ld a, e
	ld d, l
	db $e3
	ld d, l
	xor h
	ld d, d
	inc de
	ld d, e

jr_012_50f1:
	ld l, d
	ld d, e
	ld [bc], a
	jr nz, jr_012_50f1

	sub $7f
	ld d, e
	or e
	ld d, e
	and a
	ld d, e

jr_012_50fd:
	and a
	ld d, e
	inc bc
	jr nz, jr_012_50fd

	sub $d7
	ld d, e
	ei
	ld d, e
	ld a, [c]
	ld d, e
	ld a, [c]
	ld d, e
	inc b
	ld b, b
	ei
	sub $42
	ld d, h
	ld l, l
	ld d, h
	ld h, e
	ld d, h
	ld h, e
	ld d, h
	dec b
	ld b, b
	ei
	sub $97
	ld d, h
	adc $54
	ret z

	ld d, h
	ret z

	ld d, h
	ld b, $20
	ei
	sub $11
	ld d, l
	ld b, [hl]
	ld d, l
	inc a
	ld d, l

jr_012_512d:
	inc a
	ld d, l
	rlca
	jr nz, jr_012_512d

	sub $85
	ld d, l
	xor a
	ld d, l
	and d
	ld d, l
	and d
	ld d, l
	ld [$fb30], sp
	sub $ed
	ld d, l
	dec h
	ld d, [hl]
	dec de
	ld d, [hl]
	dec de
	ld d, [hl]
	rst $38
	ld [$fbfa], sp
	sub $cb
	ld c, a
	jr z, jr_012_5164

	bit 0, a
	jr nz, jr_012_515c

	call z, Call_012_509a
	call $30fe
	jr jr_012_5192

jr_012_515c:
	ld hl, $526c
	call $3c79
	jr jr_012_5192

jr_012_5164:
	ld hl, $5195
	call $3c79
	ld hl, wd6ac
	set 6, [hl]
	set 7, [hl]
	ld hl, $522f
	ld de, $522f
	call $339c
	ldh a, [$8c]
	ld [wSpriteIndex], a
	call $33b2
	call $331f
	ld a, $04
	ld [wd039], a
	ld a, $03
	ld [wd57e], a
	ld [wd97c], a

jr_012_5192:
	jp $0f6a


	nop
	jp z, $e3b1

	or d
	ld d, [hl]
	ld c, a
	sub $b2
	ld a, a
	or l
	jp $b7de


	ret z

	ld d, l
	or a
	db $d3
	pop bc
	ld a, a
	or d
	or d
	ld d, [hl]
	ld d, c
	ld d, [hl]
	ld a, a
	cp l
	db $e3
	ld d, [hl]
	ld a, a
	cp l
	db $e3
	ld c, a
	ld d, [hl]
	ld a, a
	or c
	rst $10
	ld a, a
	or d
	cp c
	push bc
	or d
	ld d, l
	ret z

	jp $bc7f


	rst $08
	rst $18
	ret nz

	call c, Call_012_7f56
	sub $b3
	cp d
	cp a
	ld d, c
	call c, $b8c0
	cp h
	ld a, a
	adc a
	sbc l
	sbc a
	adc e
	ld a, a
	dec bc
	sbc a
	ret


	ld c, a
	add e
	ret c

	add l
	call nz, wd37f
	or e
	cp h
	rst $08
	cp l

Call_012_51e7:
Jump_012_51e7:
	ld d, c
	or l
	jp z, wddc5

	ld a, a
	or d
	cp c
	reti


	ret


	ld h, $7f
	cp h
	pop hl
	ret nc

	inc sp
	ld c, a
	ld d, h
	jp z, $b87f

	cp e
	adc a
	add c
	ld b, d
	ld a, a
	ld a, [hld]
	or [hl]
	ret c

	ld d, c
	ld d, [hl]
	ld a, a
	or c
	rst $10
	ld a, a
	call nc, $4f30
	cp h
	or c
	or d
	ret


	ld a, a
	db $d3
	or e
	cp h
	cp d
	ret nc

	ld a, a
	inc sp
	cp l
	ret


	and $51
	cp a
	sbc $c5
	ld d, [hl]
	ld c, a
	call c, $b8c0
	cp h
	ld a, a
	rst $08
	cp c
	rst $08
	cp [hl]
	sbc $dc
	sub $57
	nop
	ld d, [hl]
	rst $20
	ld c, a
	rst $08
	or d
	ret c

	ld a, a
	rst $08
	cp h
	ret nz

	call c, $bb51
	cp l
	ld h, $4f
	call nz, $26c9
	ret nz

	jp z, $b57f

	jp nz, $b2d6

	ld a, a
	inc sp
	cp l
	call c, $ba51
	ret


	ld a, a
	and a
	add c
	xor e
	inc e
	db $e3
	add hl, de
	xor h
	dec bc
	ld c, a
	cp e
	cp h
	or c
	add hl, hl
	ld a, a
	push bc
	cp b
	jp Jump_012_7fca


	push bc
	ret c

	rst $08
	cp [hl]
	sbc $c8
	ld e, b
	nop
	or c
	rst $10
	ld a, a
	rst $08
	or c
	ld d, [hl]
	ld c, a
	dec l
	or [hl]
	sbc $dd
	ld a, a
	jp nz, wdfb8

	jp wcf7f


	cp l
	ret


	ret z

	ld d, l
	adc $de
	call nz, Call_012_7fc6
	or h
	rst $10
	or d
	call c, wdc51
	ret nz

	cp h
	ld a, a
	inc sp
	cp h
	ret nz

	rst $10
	ld c, a
	or a
	jp c, wc5b2

	ld a, a
	ld d, h
	cp h
	or [hl]
	ld d, l
	adc $bc
	cp b
	ld a, a
	push bc
	ret c

	rst $08
	cp [hl]
	sbc $7f
	db $d3
	ret


	ld d, a
	nop
	and a
	add c
	xor e
	inc e
	db $e3
	ld a, a
	add hl, de
	xor h
	dec bc
	inc sp
	ld c, a
	and a
	dec a
	and [hl]
	ei
	or $7f
	rst $08
	inc sp
	ret


	ld a, a
	ld d, h
	ld h, $55
	or l
	call nz, $bcc5
	cp b
	ld a, a
	or d
	or e
	cp d
	call nz, $b77f
	or a
	ld a, a
	rst $08
	cp l
	ld d, c
	cp a
	cp h
	jp Jump_012_7f56


	or [hl]
	or d
	ret c

	or a
	ret


	ld a, a
	call c, $262b
	ld c, a
	ret nz

	ret nz

	or [hl]
	rst $18
	jp wc57f


	cp b
	jp Jump_012_7fd3


	jp nz, $b4b6

	rst $08
	cp l
	ld d, c
	cp a
	jp c, wd7b6

	ld d, [hl]
	ld c, a
	sub $db
	cp h
	or [hl]
	rst $18
	ret nz

	rst $10
	ld d, l
	cp d
	jp c, Jump_012_7fd3

	or l
	jp nz, $b2b6

	add $7f
	push bc
	rst $18
	jp Jump_012_57e7


	nop
	ld d, d
	jp z, $837f

	ret c

	add l
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
	nop
	ld d, c
	ld e, h
	ld hl, sp-$09
	ret


	ld a, a
	push bc
	or [hl]
	jp z, $a04f

	dec b
	inc de
	and a
	add c
	xor e
	ld a, a
	inc sp
	cp l
	ld d, c
	or c
	ret nz

	or h
	ret nz

	ld a, a
	rrca
	and b
	db $e3
	dec bc
	ret


	ld a, a
	jp z, $3cde

	sbc $26
	ld c, a
	ld d, h
	ret


	ld a, a
	or h
	or d
	sub $b3
	add $7f
	push bc
	reti


	ld d, l
	cp l
	ld a, [hld]
	rst $10
	cp h
	or d
	ld a, a
	call c, Call_012_7f2b
	inc sp
	cp l
	ld d, a
	nop
	or l
	add $d3
	jp nz, $b27f

	rst $18
	ld b, h
	or d
	ld d, a
	ld [$f321], sp
	ld d, b
	call $3214
	jp $0f6a


	nop
	or c
	xor h
	rst $20
	ld a, a
	or l
	call nz, $e7ba
	ld d, c
	cp d
	cp d
	jp z, wc87f

	db $e3
	rst $20
	ld a, a
	or l
	sbc $c5
	ret


	cp d
	ld a, a
	cp h
	or [hl]
	ld c, a
	jp z, wdfb2

	pop bc
	ldh [$7f], a
	or d
	cp c
	push bc
	or d
	ret


	rst $20
	ld d, a
	nop
	rst $10
	sbc $3e
	or e
	ld a, a
	push bc
	sbc $30
	or [hl]
	rst $10
	ld e, b
	nop
	dec a
	db $e3
	rst $20
	ld c, a
	add e
	ret c

	add l
	cp e
	sbc $c6
	ld d, l
	call nc, wdad7
	ld a, a
	pop bc
	ldh [$b4], a
	ld a, [hld]
	ld a, a
	or d

jr_012_53c9:
	or d
	ret


	sub $57
	ld [$ff21], sp
	ld d, b
	call $3214
	jp $0f6a


	nop
	or c
	rst $10
	rst $20
	ld c, a
	or l
	sbc $c5
	ld a, a
	ld a, [hld]
	rst $18
	or [hl]
	ret c

	inc sp
	ld d, l
	ret nz

	or d
	cp b
	jp nz, $bc7f

	jp wc9c0


	sub $e7
	ld d, a
	nop
	call nc, wc5de
	rst $18
	pop bc
	ldh [$b3], a
	ld e, b
	nop
	cp b
	cp e
	add $7f
	sub $dc
	or d
	ld a, a
	ret


	jp z, wd04f

	dec l
	ld a, a
	adc a
	add c
	ld b, d
	ld a, a
	jr nc, jr_012_53c9

	ld a, a
	inc l
	ldh [$7f], a
	push bc
	or d
	call c, $2c51
	jp nc, Jump_012_7fde

	adc a
	add c
	ld b, d
	ld a, a
	call nz, $b27f
	call c, $8f7f
	add c
	ld b, d
	db $d3
	ld c, a
	call c, $bcc0
	ld a, a
	ret nz

	pop bc
	ret


	ld a, a
	or h
	inc l
	or a
	sub $e7
	ld d, a
	ld [$0b21], sp
	ld d, c
	call $3214
	jp $0f6a


	nop
	or c
	jp c, $e7e3

	ld a, a
	or c
	sbc $c0
	ld a, a
	cp e
	rst $18
	or a
	ld c, a
	cp d
	cp d
	ld a, a
	ret


	cpl

Call_012_5455:
	or d
	jp Jump_012_7fc0


	or l
	call nz, Call_012_7fba
	inc l
	ldh [$c5], a
	or d
	and $57
	nop
	or l
	jp nc, Jump_012_7fd2

	ld b, h
	pop bc
	cp b
	ret c

	ld e, b
	nop
	or c
	sbc $c0
	ld c, a
	adc $de
	call nz, Call_012_7fc6
	ret


	cpl

jr_012_5479:
	or a
	ld a, a
	inc l
	ldh [$c5], a
	or d

Jump_012_547f:
	and $55
	cp e
	or d
	or a
	sbc $7f
	or l
	or l
	or d
	ld a, a
	ret


	sub $57
	ld [$1721], sp
	ld d, c
	call $3214
	jp $0f6a


	nop
	ret z

	or h
	ld d, [hl]
	ld a, a
	ret nc

	jp Jump_012_4fe7


	cp d
	jp c, wdc7f

	ret nz

	cp h
	ret


	ld a, a
	ld d, h
	rst $20
	ld d, c
	cp b
	cp e
	ld a, a
	adc a
	add c
	ld b, d
	jp z, $bf7f

	jr nc, jr_012_5479

	reti


	ld a, a
	ret


	ld h, $4f
	rst $10
	cp b
	push bc
	ld a, a
	call nz, wdbba
	ld h, $7f
	or d
	or d
	call c, $0057
	call nc, wdee3
	rst $20
	ld e, b
	nop
	or e
	pop bc
	ret


	ld a, a
	dec bc
	sbc a
	jp z, $c27f

	or [hl]
	or e
	ld a, a
	ld d, h
	ld c, a
	ld l, $e3
	sbc $3c
	ld a, a
	cp b
	cp e
	ld a, a
	adc a
	add c
	ld b, d
	rst $20
	ld d, c
	jr nc, @-$1f

	jp Jump_012_547f


	ret


	ld a, a
	adc $b6
	add $4f
	or d
	cp c
	ld a, [hld]
	push bc
	ld a, a
	or a
	ld [c], a
	or e
	cp h
	jp nz, $d47f

	rst $18
	jp $b6d9


	rst $10
	ld d, a
	ld [$2321], sp
	ld d, c
	call $3214
	jp $0f6a


	nop
	cp d
	rst $10
	rst $20
	ld a, a
	pop de
	cp h
	ld a, a
	ld d, h
	ld a, a

jr_012_551b:
	call nz, $4fb6
	adc $c9
	or l
	ld a, a
	ld d, h
	ld a, a
	jp z, $b77f

	rst $10
	or d
	ld a, a
	push bc
	ret


	ld d, l
	cp d
	cp d
	add $7f
	db $d3
	pop bc
	ld a, a
	cp d
	rst $08
	push bc
	or d
	inc sp
	sub $e7
	ld d, a
	nop
	or c
	rst $20
	ld a, a
	cp d
	or d
	jp nz, $e7b3

	ld e, b
	nop
	or a
	ret nc

	ret z

	db $e3
	rst $20
	ld a, a
	ret c

	db $e3
	rrca
	db $e3
	ret


	ld a, a
	add e
	ret c

	add l
	cp e
	sbc $ca
	ld c, a
	or l
	cp h
	call nz, $b6d4
	ld a, a
	jr nc, jr_012_551b

	inc [hl]
	ld a, a
	cp d
	ret


	call Call_012_7fde
	inc l
	ldh [rHDMA5], a
	push de
	or e
	jp nc, wc5b2

	ld a, a
	ld e, l
	ld a, a
	push bc
	sbc $30
	or [hl]
	rst $10
	rst $20
	ld d, a
	ld [$2f21], sp
	ld d, c
	call $3214
	jp $0f6a


	nop
	or c
	push bc
	ret nz

	ld a, a
	ld a, [hli]
	cp h
	pop hl
	ret nc

	jp z, $e656

	ld c, a
	ld d, [hl]
	ld a, a
	jp z, $e7b2

	ld d, l
	ld d, h
	db $dd
	ld a, a
	cp h
	ld [c], a
	or e
	cp h
	ld [c], a
	or e
	ld d, a
	nop
	cp c
	rst $18
	cp d
	or e
	push bc
	ld a, a
	or l
	jp $b4cf


	inc sp
	ld e, b
	nop
	call c, $bcc0
	ld a, a
	rst $10
	or d
	cp h

Call_012_55b7:
	pop hl
	or e
	ld a, a
	or l

jr_012_55bb:
	ret nc

	or c
	or d
	ld a, a
	push bc
	ret


	ld c, a
	ld d, h
	ld a, a

Jump_012_55c4:
	cp e
	cp a

Call_012_55c6:
	call c, $c3da
	db $d3
	ld a, a
	jp z, wc0bc

	push bc
	or d
	ld d, l
	ret nz

	ret nz

Jump_012_55d3:
	or [hl]
	or d
	ld a, a
	cp h
	push bc
	or d
	ld a, a
	sub $b3
	add $7f
	cp h
	push bc
	or a
	ldh [$57], a
	ld [$3b21], sp
	ld d, c

Jump_012_55e7:
	call $3214

jr_012_55ea:
	jp $0f6a


	nop
	adc a
	sbc l
	sbc a
	adc e
	ld a, a
	dec bc
	sbc a
	add $7f
	sub $b3
	cp d
	cp a
	rst $20
	ld d, c
	or l
	sbc $c5
	ret


	cp d
	ld a, a
	jr nc, jr_012_55bb

	rst $10
	rst $18
	jp wd54f


	jr nc, jr_012_55ea

	ld a, a
	cp h
	push bc
	or d
	ld a, a
	adc $b3
	ld h, $7f
	or d
	or d
	call c, $e7d6
	ld d, a
	nop
	call nc, Call_012_7fd9
	inc l
	ldh [$c5], a
	or d
	rst $20
	ld e, b
	nop
	or a
	ld [c], a
	or e
	jp z, $c27f

	sub $b2
	ld a, a
	ld d, h
	ld c, a
	db $d3
	rst $18
	jp $ba7f


	push bc
	or [hl]
	rst $18
	ret nz

	ld a, a
	or [hl]
	rst $10
	ld d, [hl]
	ld d, c
	cp d
	sbc $34
	ld a, a
	call nc, Call_012_7fd9
	call nz, wcab7
	ld a, a
	rst $08
	cp c
	push bc
	or d
	call c, $0357
	ld [bc], a
	ld de, $0604
	rst $38
	ld de, $0605
	rst $38
	nop
	ld [$071b], sp
	ld [wd0ff], sp
	ld b, c
	db $ed
	ld bc, $0f06
	ld b, $ff
	db $d3
	ld b, d
	rl c
	rrca
	ld c, $0b
	rst $38
	jp nc, wda43

	ld bc, $0906
	dec c
	rst $38
	ret nc

	ld b, h
	adc $0b
	rrca
	add hl, bc
	dec b
	rst $38
	ret nc

	ld b, l
	jp c, $0602

	rlca
	ld a, [bc]
	rst $38
	ret nc

	ld b, [hl]
	rl d
	rrca
	rlca
	rlca
	rst $38
	ret nc

	ld b, a
	jp c, $0603

	rlca
	add hl, bc
	rst $38
	ret nc

	ld c, b
	add sp, $01
	ld c, [hl]
	rst $00
	ld de, $4e04
	rst $00
	ld de, $0105
	ld bc, $0101
	ld bc, $3833
	ld a, [hld]
	add hl, sp
	inc sp
	inc sp
	inc a
	inc sp
	dec a
	inc sp
	inc sp
	dec sp
	ccf
	ld a, $33
	inc sp
	inc [hl]
	dec b
	inc [hl]
	inc sp
	dec [hl]
	dec b
	dec b
	dec b
	ld [hl], $33
	inc [hl]
	dec b
	inc [hl]
	inc sp
	dec b
	ld [hld], a
	dec b
	ld sp, $0505

Call_012_56cd:
	dec b
	inc b
	dec b
	dec b
	ld [de], a
	add hl, bc
	ld a, [bc]
	sbc d
	ld e, [hl]
	xor d
	ld d, a
	db $dd
	ld d, [hl]
	nop
	scf
	ld e, [hl]
	call Call_012_56ef
	call Call_012_570c
	call $3c6c
	ld hl, $5732
	ld a, [wd5de]
	jp $3dc7


Call_012_56ef:
	ld hl, wd0eb
	bit 6, [hl]
	res 6, [hl]
	ret z

	call $3e8c
	ldh a, [$d3]
	cp $07
	jr nc, jr_012_5702

	ld a, $08

jr_012_5702:
	srl a
	srl a
	srl a
	ld [wcd05], a
	ret


Call_012_570c:
	ld hl, wd0eb
	bit 5, [hl]
	res 5, [hl]
	ret z

	ld a, [wd6fd]
	bit 1, a
	ret nz

	ld a, $2a
	ld [wd07c], a
	ld bc, $0208
	ld a, $17
	jp $3e9d


Jump_012_5727:
	xor a
	ld [wcd66], a
	ld [wd5de], a
	ld [wd97c], a
	ret


	jr c, @+$59

	add hl, sp
	ld d, a
	adc c
	ld d, a
	ret


	ld a, [wd034]
	cp $ff
	jp z, Jump_012_5727

	ld a, $f0
	ld [wcd66], a
	ld a, $0d
	ldh [$8c], a
	call $13f1
	ld a, $0b
	ldh [$8c], a
	call $358b
	ld de, $577a
	ld a, [wd2e0]
	cp $06
	jr nz, jr_012_5763

	ld de, $5783
	jr jr_012_576d

jr_012_5763:
	ld a, [wd2e1]
	cp $08
	jr nz, jr_012_576d

	ld de, $5783

jr_012_576d:
	ld a, $0b
	ldh [$8c], a
	call $3684
	ld a, $02
	ld [wd5de], a
	ret


	nop
	ret nz

	ret nz

	ld b, b
	ret nz

	ret nz

	ret nz

	ret nz

	rst $38
	ret nz

	ret nz

	ret nz

	ret nz

	ret nz

	rst $38
	ld a, [wd6af]
	bit 0, a
	ret nz

	xor a
	ld [wcd66], a
	ld a, $46
	ld [wcc4d], a
	ld a, $11
	call $3e9d
	ld hl, wd0eb
	set 5, [hl]
	set 6, [hl]
	ld a, $00
	ld [wd5de], a
	ret


	call nz, $f957
	ld d, a
	ld a, [hli]
	ld e, c
	ld e, [hl]
	ld e, c

Call_012_57b2:
	ld a, d
	ld e, c
	ld a, [hli]
	ld e, d
	ld c, h
	ld e, d
	ld c, $5b
	dec sp
	ld e, e
	db $e4
	ld e, e
	and a
	ld e, h
	add hl, sp
	ld e, l
	ld c, $5d
	nop
	or d
	rst $10
	rst $18

Jump_012_57c8:
	cp h
	ldh [$b2], a
	rst $08
	cp [hl]
	rst $20
	ld d, c
	ld [$9fe3], sp
	inc sp
	ld a, a
	ret nz

	jp nc, Jump_012_7fc0

	adc c
	add c
	xor e
	jp z, $bf4f

	call nz, Call_012_7fc9
	cp d
	or e
	or [hl]
	sbc $2c
	ld [c], a

Call_012_57e7:
Jump_012_57e7:
	inc sp
	ld d, l
	cp l
	or a
	push bc
	ld a, a
	cp c
	or d
	set 3, [hl]
	call nz, $b67f
	or h
	jp $e7c8


	ld d, a
	ld [$b6cd], sp
	ld e, l
	ld hl, $5872
	call $3c79
	call $3636
	ld a, [wCurrentMenuItem]
	and a
	jr nz, jr_012_585f

	ld b, $45
	call $34dd
	jr z, jr_012_5869

	call Call_012_5e2c
	jr nc, jr_012_5864

	xor a
	ldh [$9f], a
	ldh [$a1], a
	ld a, $10
	ldh [$a0], a
	call $35f0
	jr nc, jr_012_582b

	ld hl, $58ed
	jr jr_012_586c

jr_012_582b:
	xor a
	ldh [$9f], a
	ldh [$a1], a
	ld a, $10
	ldh [$a0], a
	ld hl, $ffa1
	ld de, wd2cd
	ld c, $03
	ld a, $0c
	call $3e9d
	xor a
	ldh [$9f], a
	ldh [$a0], a
	ld a, $50
	ldh [$a1], a
	ld de, wd524
	ld hl, $ffa1
	ld c, $02
	ld a, $0b
	call $3e9d
	call Call_012_5db6
	ld hl, $58ba
	jr jr_012_586c

jr_012_585f:
	ld hl, $58d5
	jr jr_012_586c

jr_012_5864:
	ld hl, $58f9
	jr jr_012_586c

jr_012_5869:
	ld hl, $590f

jr_012_586c:
	call $3c79
	jp $0f6a


	nop
	or d
	rst $10
	rst $18
	cp h
	ldh [$b2], a
	rst $08
	cp [hl]
	rst $20
	ld c, a
	xor b
	adc b
	xor h
	sub e
	ld a, a
	ld [$9fe3], sp
	ld a, a
	adc c
	db $e3
	sub h
	db $e3
	inc sp
	cp l
	ld d, c
	ld [$9fe3], sp
	sub $b3
	ld a, a
	adc c
	add c
	xor e
	ld a, a
	inc sp
	cp l
	or [hl]
	and $51
	ei
	or $cf
	or d
	ld a, a
	rst $30
	or $f6
	or $f0
	add $7f
	push bc
	ret c

	rst $08
	cp l
	rst $20
	ld c, a
	adc c
	add c
	xor e
	db $dd
	ld a, a
	or [hl]
	or d
	rst $08
	cp l
	or [hl]
	and $57
	nop
	jp z, $e7b2

	ld a, a
	rst $08
	or d
	inc [hl]
	ld a, a
	or c
	ret c

	rst $20
	ld c, a
	adc c
	add c
	xor e
	ld a, a
	ei
	or $cf
	or d
	ld a, a
	inc [hl]
	or e
	cpl
	rst $20
	ld d, a
	nop
	ld d, [hl]
	ld a, a
	or d
	ret c

	rst $08
	cp [hl]
	sbc $b6
	rst $20
	ld c, a
	cp a
	jp c, wca33

	ld a, a
	rst $08
	ret nz

	ld a, a
	inc [hl]
	or e

jr_012_58ea:
	cpl
	rst $20
	ld d, a
	nop
	or l
	or [hl]
	ret z

	ld a, a
	ret nz

	ret c

	push bc
	or d
	sub $e7
	ld d, a
	nop
	or l
	rst $18
	call nz, $e756
	ld c, a
	adc c
	add c
	xor e
	adc b
	db $e3
	adc h
	ld h, $7f
	rst $08
	sbc $c0
	sbc $30
	rst $20
	ld d, a
	nop
	or c
	jp c, Jump_012_7fe6

	adc c
	add c
	xor e
	db $dd
	ld a, a
	or d
	jp c, Jump_012_4fd9

	adc c
	add c
	xor e
	adc b
	db $e3
	adc h
	ld h, $7f
	push bc
	or d
	sub $e7
	ld d, a
	nop
	ld d, [hl]
	ld a, a
	cp d
	cp d
	jr nc, jr_012_58ea

	ret


	ld a, a
	jp z, $bcc5

	ld d, [hl]
	ld d, c
	cp d
	ret


	ld a, a
	ld [$9fe3], sp
	ld a, a
	inc l
	ld [c], a
	or e
	jp z, Jump_012_5e4f

	ret


	ld a, a
	or l
	ret nc

	cp [hl]
	ld a, a
	rst $10
	cp h
	or d
	ld d, [hl]
	ld d, l
	ret nc

	sbc $c5
	ld a, a
	or e
	call c, Call_012_7fbb
	cp h
	pop bc
	ld [c], a
	reti


	ld d, [hl]
	ld d, a
	nop
	ld a, [hld]
	cp h
	ld [c], a
	add $7f
	sub $df
	jp wWalkBikeSurfState


	cp b
	ld a, a
	inc sp
	reti


	ld c, a
	adc h
	xor b
	xor h
	sub e
	ld h, $7f
	or c
	reti


	sub $b3
	ret z

	ld d, a
	ld [$fdfa], sp
	sub $cb
	ld d, a
	jr nz, jr_012_59b9

	ld hl, $59cc
	call $3c79
	ld b, $45
	call $34dd
	jr z, jr_012_59c3

	call Call_012_5e2c
	jr nc, jr_012_59be

	xor a
	ldh [$9f], a
	ldh [$a0], a
	ld a, $10
	ldh [$a1], a
	ld de, wd524
	ld hl, $ffa1
	ld c, $02
	ld a, $0b
	call $3e9d
	ld hl, wd6fd
	set 2, [hl]
	ld a, $01
	ld [wcc3c], a
	ld hl, $59df
	jr jr_012_59c6

jr_012_59b9:
	ld hl, $5a0a
	jr jr_012_59c6

jr_012_59be:
	ld hl, $59fb
	jr jr_012_59c6

jr_012_59c3:
	ld hl, $5d9f

jr_012_59c6:
	call $3c79
	jp $0f6a


	nop
	ld d, [hl]
	ld a, a
	ld a, $b3
	dec l
	ld c, a
	ld [$9fe3], sp
	ld a, a
	call nc, wc0d8
	or d
	ret


	or [hl]
	and $58
	nop
	ld d, d
	jp z, $b57f

	inc l
	cp e
	sbc $b6
	rst $10
	ld c, a
	adc c
	add c
	xor e
	ld a, a
	rst $30
	or $cf
	or d
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
	call nc, $44df
	ret c

	ld a, a
	call nc, wc9d9
	ld a, a
	call nc, wc0d2
	rst $20
	ld d, a
	nop
	or [hl]
	jp nz, wc47f

	or a
	jp z, $b67f

	jp nz, $30de

	cp c
	inc [hl]
	ld c, a
	rst $08
	cp c
	reti


	ld a, a
	call nz, wcab7
	ld a, a
	rst $08
	cp c
	pop bc
	ldh [$b3], a
	sbc $30
	push bc
	ld d, a
	nop
	adc h
	xor b
	xor h
	sub e
	ld a, a
	ld [$9fe3], sp
	jp z, wc07f

	ret


	cp h
	or d
	rst $20
	ld c, a
	inc l
	or [hl]
	sbc $26
	ld a, a
	ret nz

	jp nz, wddc9

	ld a, a
	call c, wdabd
	reti


	call c, Call_012_57e7
	ld [$fbfa], sp
	sub $cb
	ld c, a
	ld hl, $5a60
	jr z, jr_012_5a5a

	ld hl, $5ae5

jr_012_5a5a:
	call $3c79
	jp $0f6a


	nop
	or l
	or l
	ld d, [hl]
	rst $20
	ld d, c
	cp d
	sbc $c5
	ld a, a
	call nz, wdbba
	inc sp
	ld c, a
	or c
	inc a
	rst $10
	ld a, a
	or e
	rst $18
	jp Jump_012_7fc3


	or d
	or d
	ret


	or [hl]
	rst $20
	ld d, l
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
	adc a
	sbc l
	sbc a
	adc e
	ret


	ld a, a
	ret c

	db $e3
	rrca
	db $e3
	ld a, a
	add e
	ret c

	add l
	jp z, $bc4f

	ld l, $de
	call nz, $ba7f
	cp d
	db $db
	db $dd
	ld a, a
	or [hl]
	sub $dc
	cp l
	ld d, l
	cp h
	ld [c], a
	cp b
	inc a
	jp nz, Jump_012_547f

	ret


	ld a, a
	jp nz, $b2b6

	jp Jump_012_51e7


	or l
	jp z, Jump_012_7fc5

	push bc
	sbc $b6
	ld a, a
	or d
	cp c
	jp Jump_012_7fd9


	or [hl]
	rst $10
	ld c, a
	or l
	call nz, $bcc5
	cp a
	or e
	add $7f
	ret nc

	or h
	reti


	ld h, $55
	jp wdc2a


	or d
	ld a, a
	or c
	or d

jr_012_5add:
	jp Jump_012_7fc6


	push bc
	reti


	cpl
	rst $20
	ld d, a
	nop
	or d
	or d
	ld a, a
	ld d, h
	ld h, $7f
	cp c
	or d
	set 3, [hl]
	add $4f
	or c
	rst $18

jr_012_5af4:
	ret nz

	or [hl]
	rst $10
	sub $e3
	ld d, c
	ld h, $de
	ld a, [hld]
	rst $18
	jp wded9


	jr nc, jr_012_5b29

	ld c, a
	ld l, $de
	ld l, $de
	ld a, a
	jr nc, jr_012_5add

	jr nc, jr_012_5af4

	ld d, a
	nop
	set 4, d
	db $e3
	ld d, [hl]
	ld a, a
	ld [$9fe3], sp
	jp z, $ba7f

	call c, $e7b2
	ld c, a
	pop bc
	ld [c], a
	rst $18
	call nz, $b27f
	or a
	rst $00
	or a
	ret


	ld a, a

jr_012_5b29:
	jp nz, wd8d3

	ld h, $55
	pop de
	pop bc
	pop hl
	or e
	add $7f
	push bc
	rst $18
	pop bc
	rst $08
	or e
	rst $20
	ld d, a
	ld [$fdfa], sp
	sub $cb
	ld h, a
	jr nz, jr_012_5b75

	ld hl, $5b88
	call $3c79
	ld b, $45
	call $34dd
	jr z, jr_012_5b7f

	call Call_012_5e2c
	jr nc, jr_012_5b7a

	xor a
	ldh [$9f], a
	ldh [$a0], a
	ld a, $20
	ldh [$a1], a
	ld de, wd524
	ld hl, $ffa1
	ld c, $02
	ld a, $0b
	call $3e9d
	ld hl, wd6fd
	set 4, [hl]
	ld hl, $5b9f
	jr jr_012_5b82

jr_012_5b75:
	ld hl, $5bcb
	jr jr_012_5b82

jr_012_5b7a:
	ld hl, $5bbc
	jr jr_012_5b82

jr_012_5b7f:
	ld hl, $5d9f

jr_012_5b82:
	call $3c79
	jp $0f6a


	nop
	ld d, [hl]
	ld a, a
	push bc
	sbc $30
	sub $e6
	ld c, a
	adc c
	add c
	xor e
	ld a, a
	call c, $c3b9
	ld a, a
	call nc, $b3db
	or [hl]
	and $58
	nop
	ld d, d
	jp z, $b57f

	add $b2
	cp e
	sbc $b6
	rst $10
	ld c, a
	adc c
	add c
	xor e
	ld a, a
	ld hl, sp-$0a
	rst $08
	or d
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
	or d
	rst $18
	ld b, h
	or d
	ld a, a
	db $d3
	rst $18
	jp Jump_012_7fd9


	inc l
	ldh [$de], a
	ld d, a
	nop
	cp b
	cp a
	ld a, a
	inc sp
	push bc
	or d
	push bc
	rst $20
	ld c, a
	adc $bc
	or d
	ld a, a
	cp c
	or d
	set 3, [hl]
	ld h, $7f
	or c
	reti


	ret


	add $57
	ld [$fdfa], sp
	sub $cb
	ld e, a
	jr nz, jr_012_5c1e

	ld hl, $5c31
	call $3c79
	ld b, $45
	call $34dd
	jr z, jr_012_5c28

	call Call_012_5e2c
	jr z, jr_012_5c23

	xor a
	ldh [$9f], a
	ldh [$a0], a
	ld a, $20
	ldh [$a1], a
	ld de, wd524
	ld hl, $ffa1
	ld c, $02
	ld a, $0b
	call $3e9d
	ld hl, wd6fd
	set 3, [hl]
	ld hl, $5c59
	jr jr_012_5c2b

jr_012_5c1e:
	ld hl, $5c85
	jr jr_012_5c2b

jr_012_5c23:
	ld hl, $5c75
	jr jr_012_5c2b

jr_012_5c28:
	ld hl, $5d9f

jr_012_5c2b:
	call $3c79
	jp $0f6a


	nop
	call c, $c17f
	ld [c], a
	rst $18
	call nz, Call_012_4fe7
	ld d, [hl]
	ld a, a
	jp wc4d3


	ld h, $7f
	cp b
	reti


	or e
	ld d, l
	adc c
	add c
	xor e
	ld a, a
	or c
	add hl, hl
	reti


	or [hl]
	rst $10
	ld d, l
	or c
	rst $18
	pop bc
	ld a, a
	or d
	rst $18
	jp wdab8


	ld e, b
	nop
	ld d, d
	jp z, $b57f

	inc l
	cp e
	sbc $b6
	rst $10
	ld c, a
	adc c
	add c
	xor e
	ld a, a
	ld hl, sp-$0a
	rst $08
	or d
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
	adc c
	add c
	xor e
	ld a, a
	or d
	rst $18

jr_012_5c7c:
	ld b, h
	or d
	ld a, a
	or c
	reti


	inc l
	ldh [$de], a
	ld d, a
	nop
	adc h
	xor b
	xor h
	sub e
	ret


	ld a, a
	or h
	ld h, $d7
	db $dd
	ld a, a
	sub $b5
	cp b
	ld a, a
	ret nc

	jp $1c4f


	adc a
	xor e
	db $dd
	ld a, a
	or l
	cp l
	ret


	ld h, $7f
	adc c
	sub c
	jr nc, jr_012_5c7c

	ld d, a
	ld [wd821], sp
	ld e, h
	call $3c79
	ld hl, wd6ac
	set 6, [hl]
	set 7, [hl]
	ld hl, $5d04
	ld de, $5d04
	call $339c
	ldh a, [$8c]
	ld [wSpriteIndex], a
	call $33b2
	call $331f
	xor a
	ldh [$b4], a
	ldh [$b3], a
	ldh [$b2], a
	ld a, $01
	ld [wd5de], a
	jp $0f6a


	nop
	or l
	jp c, Jump_012_4fca

	cp d
	ret


	ld a, a
	ld b, e
	adc h
	adc a
	db $e3
	db $dd
	ld a, a
	ret nc

	jp z, $c3df

	reti


	ret


	jr nc, @+$57

	inc l
	ldh [$cf], a
	db $dd
	ld a, a
	cp l
	reti


	call nz, $b255
	ret nz

	or d
	jp nc, Jump_012_7fc6

	or c
	call c, wd9be
	cpl
	rst $20
	ld d, a
	nop
	pop bc
	ld a, a
	pop bc
	cp b
	cp h
	ld [c], a
	or e
	rst $20
	ld e, b
	nop
	cp d
	ret


	rst $08
	rst $08
	inc sp
	jp z, $5e7f

	ld c, a
	add b
	dec bc
	sub e
	ret


	ld a, a
	cp a
	sbc $2b
	or d
	ld h, $7f
	ld a, [hld]
	jp c, wcfc1

	or e
	ld d, l
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
	ld [$013e], sp
	ld [wcc3c], a
	ld hl, $5d65
	call $3c79
	call $3790
	ld a, $ad
	call $0e45
	call $3790
	ld hl, wd6fd
	set 1, [hl]
	ld a, $43
	ld [wd07c], a
	ld bc, $0208
	ld a, $17
	call $3e9d
	jp $0f6a


	nop
	or c
	rst $20
	ld d, c
	ld b, e
	adc h
	adc a
	db $e3
	ret


	ld a, a
	or e
	rst $10
	add $4f
	set 2, b
	jp nz, Jump_012_7fc9

	adc h
	add c
	xor h
	sub b
	db $dd
	ld a, a
	ret nc

	jp nz, wc0b9

	ld d, l
	or l
	cp h
	jp wd6d0


	or e
	rst $20
	ld a, a
	ld d, [hl]
	ld b, e
	sub b
	xor h
	call nz, $e7c5
	ld d, b
	ld [$9d3e], sp
	call $0e45
	call $3790
	jp $0f6a


	nop
	cp h
	rst $08
	rst $18
	ret nz

	rst $20
	ld c, a
	adc c
	add c
	xor e
	adc b
	db $e3
	adc h
	db $dd
	ld a, a
	db $d3
	rst $18
	jp wc5b2


	or d
	rst $20
	ld d, a

Call_012_5db6:
	ld hl, wd6af
	set 6, [hl]
	ld hl, wc3ab
	ld b, $05
	ld c, $07
	call $03d2
	call $0ebd
	ld hl, wc3c0
	ld b, $04
	ld c, $07
	call $0374
	ld hl, wc3d4
	ld de, $5e12
	call $0405
	ld hl, wc3e8
	ld de, $5e1c
	call $0405
	ld hl, wc3e8
	ld de, wd2cb
	ld c, $83
	call $2fc4
	ld hl, wc3fc
	ld de, $5e18
	call $0405
	ld hl, wc410
	ld de, $5e24
	call $0405
	ld hl, wc411
	ld de, wd523
	ld c, $82
	call $2fc4
	ld hl, wd6af
	res 6, [hl]
	ret


	or l
	cp d
	ld [hld], a
	or [hl]
	or d
	ld d, b
	adc c
	add c
	xor e
	ld d, b
	ld a, a
	ld a, a
	ld a, a
	ld a, a
	ld a, a
	ld a, a
	ldh a, [$50]
	ld a, a
	ld a, a
	ld a, a
	ld a, a
	ld a, a
	rst $08
	or d
	ld d, b

Call_012_5e2c:
	ld a, $99
	ldh [$a0], a
	ld a, $90
	ldh [$a1], a
	jp $35fb


	rrca
	inc bc
	ld de, $070f
	rst $38
	ld de, $0710
	rst $38
	inc b
	ld de, wc701
	ld bc, $0904
	inc c
	dec bc
	rrca
	ld a, [bc]
	ld b, $ff
	ret nc

Jump_012_5e4f:
	ld bc, $0a26
	add hl, bc
	rst $38
	ret nc

	ld [bc], a
	ld a, [bc]
	ld c, $06
	rst $38
	jp nc, $0f03

	ld de, $ff06
	jp nc, $2704

	rrca
	add hl, bc
	rst $38
	db $d3
	dec b
	inc e
	rrca
	inc c
	rst $38
	jp nc, $2406

	ld [de], a
	inc c
	rst $38
	jp nc, $0b07

	inc de
	rrca
	rst $38
	db $d3
	ld [$0f26], sp
	ld [de], a
	rst $38
	jp nc, $1009

	ld de, $ff15
	db $d3
	ld a, [bc]
	jr @+$0b

	dec c
	rst $38
	pop de
	ld c, e
	and $07
	add b
	rst $00
	ld de, $810f
	rst $00
	ld de, $2110
	rst $00
	inc b
	ld de, $0f0f
	rrca
	rrca
	rrca
	rrca
	rrca
	rrca
	rrca
	rrca
	rrca
	rrca
	rrca
	rrca
	rrca
	rrca
	rrca
	rrca
	rrca
	rrca
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	ld a, [bc]
	inc [hl]
	ld a, [hli]
	ld a, [hli]
	ld a, [hli]
	ld b, e
	ld a, [hli]
	cpl
	cpl
	cpl
	inc sp
	jr nz, jr_012_5ede

	dec de
	dec de
	dec de
	dec de
	ld a, [hld]
	jr nz, jr_012_5ee5

	ld a, [hld]
	jr nz, jr_012_5ee8

	ld a, [hld]
	jr nz, jr_012_5eeb

	ld a, [hld]
	add hl, sp
	rra
	ld hl, $1f39
	ld hl, $1f39
	ld hl, $3939
	rra
	ld hl, $1f39
	ld hl, $1f39

jr_012_5ede:
	ld hl, $3839
	rra
	ld hl, $1f38

jr_012_5ee5:
	ld hl, $1f38

jr_012_5ee8:
	ld hl, $2038

jr_012_5eeb:
	jr nz, jr_012_5f0d

	jr nz, jr_012_5f0f

	jr nz, jr_012_5f11

	jr z, jr_012_5f1c

	jr nz, jr_012_5f07

	inc b
	ld a, [bc]
	rst $28
	ld e, a
	inc bc
	ld e, a
	nop
	ld e, a
	nop
	cp b
	ld e, a
	jp $3c6c


	dec c
	ld e, a
	ld e, l
	ld e, a

jr_012_5f07:
	ld a, [hli]
	rrca
	inc [hl]
	rrca
	xor d
	ld e, a

jr_012_5f0d:
	nop
	ld d, h

jr_012_5f0f:
	ret


	ld a, a

jr_012_5f11:
	ret


	or e
	ret c

	ld [c], a
	cp b
	db $dd
	ld a, a
	or c
	add hl, hl
	reti


	ld c, a

jr_012_5f1c:
	add b
	add c
	sub d
	sbc a
	jp z, $ba7f

	cp d
	inc sp
	cp h
	or [hl]
	ld a, a
	or [hl]
	or h
	push bc
	or d
	ld d, c
	ret c

	ld c, $90
	add d
	sbc a
	jp z, wc44f

	cp b
	cp h
	pop hl
	ld a, a
	ret


	or e
	ret c

	ld [c], a
	cp b
	db $dd
	ld a, a
	add b
	xor h
	ld b, d
	ld d, c
	add c
	xor e
	inc de
	and b
	adc a
	adc e
	xor e
	jp z, $bd4f

	ld a, [hld]
	call nc, wddbb
	ld a, a
	add b
	xor h
	ld b, d
	ld a, a
	cp e
	cp [hl]
	reti


	ret


	jr nc, jr_012_5fb4

	nop
	ld d, h
	ret


	ld a, a
	ret


	or e
	ret c

	ld [c], a
	cp b
	db $dd
	ld a, a
	or c
	add hl, hl
	reti


	ld c, a
	add b
	add c
	sub d
	sbc a
	db $dd
	ld a, a
	or [hl]
	or d
	add $7f
	or a
	ret nz

	sbc $30
	rst $20
	ld d, c
	adc a
	add d
	ret c

	xor e
	jp z, $ba4f

	or e
	add hl, hl
	or a
	ld a, a
	ret c

	ld [c], a
	cp b
	ld a, a
	add b
	xor h
	ld b, d
	rst $20
	ld d, c
	dec de
	xor b
	sbc a
	call $8b86
	xor e
	jp z, $3e4f

	or e
	daa
	ld [c], a
	ld a, a
	ret c

	ld [c], a
	cp b
	ld a, a
	add b
	xor h
	ld b, d
	ld a, a
	jr nc, jr_012_5fd6

	rst $20
	ld d, a
	nop
	ei
	or [hl]
	or d
	ld d, [hl]
	inc de
	and l
	xor h
	rlca
	ld a, a

jr_012_5fb4:
	adc h
	sub e
	add b
	ld d, a
	rrca
	inc bc
	ld bc, $000c
	ld a, [hl]
	ld bc, $0110
	ld a, l
	ld bc, $0001
	ld a, a
	ld bc, $0e01
	dec b
	inc b
	db $10
	add hl, bc
	ld [de], a
	cp $01
	ld bc, $0a13
	ld b, $ff
	rst $38

jr_012_5fd6:
	ld [bc], a
	ld h, $07
	add hl, bc
	rst $38
	ret nc

	inc bc
	ld h, $07
	ld a, [bc]
	rst $38
	ret nc

	inc b
	rst $38
	add $01
	inc c
	ld bc, $01c7
	db $10
	ld sp, hl
	add $01
	ld bc, $0d0c
	jr @+$1b

	ld bc, $0201
	dec h
	inc bc
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
	ld [de], a
	inc b
	dec b
	or a
	ld h, b
	ld h, $60
	inc hl
	ld h, b
	nop
	adc [hl]
	ld h, b
	jp $3c6c


	jr nc, jr_012_6088

	ld l, d
	ld h, b
	adc l
	ld h, b
	adc l
	ld h, b
	adc l
	ld h, b
	nop
	or e
	db $e3
	sbc $56
	rst $20
	ld a, a
	inc [hl]
	or e
	add $b6
	ld a, a
	cp h
	jp $b14f


	ret


	ld a, a
	ld b, e
	ret c

	add hl, bc
	xor e
	ld h, $7f
	adc $bc
	or d

jr_012_604b:
	push bc
	or c
	rst $20
	ld d, c
	cp h
	or [hl]
	cp h
	ld a, a
	adc h
	xor b
	xor h
	sub e
	ld a, a
	ld [$9fe3], sp
	inc sp
	ld c, a
	or [hl]
	jp nz, wc97f

	jp z, wc07f

	or d
	call $30de
	rst $20
	ld d, a
	nop
	ld h, $ca
	jp z, Jump_012_7fe7

	db $d3
	or e
	cp c
	ret nz

	ld a, a
	db $d3
	or e
	cp c
	ret nz

	ld d, [hl]
	rst $20
	ld c, a
	rst $08
	or d
	add $c1
	ld a, a
	cp d
	sbc $c5
	ld a, a
	jr nc, jr_012_604b

	ld a, a

jr_012_6088:
	or d
	or d
	call c, Call_012_57b2
	rst $30
	rrca
	ld [bc], a
	rlca
	inc b
	add hl, bc
	rst $38
	rlca
	dec b
	add hl, bc
	rst $38
	inc bc
	ld [bc], a
	ld [bc], a
	inc bc
	ld [bc], a
	inc b
	inc b
	ld [bc], a
	ld b, $05
	ld [bc], a
	inc [hl]
	ld [$ff05], sp
	rst $38
	ld bc, $070b
	dec bc
	cp $02
	ld [bc], a
	rla
	rst $00
	rlca
	inc b
	rla
	rst $00
	rlca
	dec b
	ccf
	ld b, b
	ld b, b
	ld b, b
	ccf
	ld a, $3e
	ld a, $3e
	ld a, $20
	jr nz, jr_012_60e4

	jr nz, jr_012_60e6

	dec de
	dec de
	dec a
	dec de
	dec de
	ld [de], a
	inc b
	dec b
	and d
	ld h, d
	db $db
	ld h, b
	rst $10
	ld h, b
	nop
	ld [hl], b
	ld h, d
	call $3c6c
	ret


	push hl
	ld h, b
	cp $60
	dec l
	ld h, c
	ld e, h
	ld h, c
	sub b

jr_012_60e4:
	ld h, c
	nop

jr_012_60e6:
	rst $10
	rst $18
	cp h
	ldh [$b2], a
	rst $20
	ld d, c
	inc l
	ld [c], a
	or e
	jp c, Jump_012_7fde

	ld a, [hld]
	or [hl]
	ret c

	inc sp
	ld a, a
	call c, $b2d9
	ret z

	rst $20
	ld d, a
	nop
	or e
	pop bc
	inc sp
	ld a, a
	or [hl]
	rst $18
	jp Jump_012_7fd9


	ld d, h
	ld d, [hl]
	ld c, a
	ret nz

	or d
	ret c

	ld [c], a
	cp b
	ld a, a
	push bc
	or d
	or [hl]
	rst $10
	ld a, a
	or d
	jp nz, Jump_012_55d3

	ld [de], a
	ld b, b
	db $e3
	sub e
	inc sp
	ld a, a
	or l
	cp b
	cp l
	ret c

	ld a, a
	or [hl]
	rst $18
	jp $b87f


	reti


	ret


	ld d, a
	nop
	res 7, a
	res 7, a
	ld d, [hl]

jr_012_6133:
	ld a, a
	pop de
	cp h
	ldh [$7f], a
	pop de
	cp h
	ldh [rRP], a
	ld c, a
	ld d, [hl]
	ld a, a
	ld [$9fe3], sp
	ld a, a
	adc c
	db $e3
	sub h
	db $e3
	ret


	ld a, a
	cp h
	ret nz

	add $55
	pop bc
	or [hl]
	cp h
	jp nz, Jump_012_7f26

	or c
	reti


	ld a, a
	rst $10
	cp h
	or d
	ret z

	ld d, [hl]
	ld d, a
	nop
	db $d3
	jr z, jr_012_6133

	jr z, @+$58

	rst $20
	ld d, c
	or c
	cp a
	cp d
	ret


	ld a, a
	sub d
	db $e3
	dec de
	and [hl]
	ret


	ld a, a
	or l
	rst $18
	cp e
	sbc $4f
	adc h
	xor b
	xor h
	sub e
	inc sp
	ld a, a
	or l
	or [hl]
	ret z

	ld a, a
	ld l, $de
	inc a
	ld d, l
	jp nz, wdfb6

	pop bc
	ldh [$df], a
	ret nz

	ld a, a
	rst $10
	cp h
	or d
	sub $e7
	ld d, a
	ld [$02fa], sp
	rst $10
	bit 0, a
	jr nz, jr_012_61bb

	ld hl, $61c4
	call $3c79
	ld bc, $4501
	call $3e5e
	jr nc, jr_012_61b3

	ld hl, wd702
	set 0, [hl]
	ld hl, $6221
	call $3c79
	jr jr_012_61c1

jr_012_61b3:
	ld hl, $623c
	call $3c79
	jr jr_012_61c1

jr_012_61bb:
	ld hl, $624a
	call $3c79

jr_012_61c1:
	jp $0f6a


	nop
	or e
	or l
	or e
	ld d, [hl]
	ld a, a
	call c, wdfd7
	jp wdab8


	rst $20
	ld d, c
	ld [$9fe3], sp
	ld a, a
	adc c
	db $e3
	sub h
	db $e3
	inc sp
	ld a, a
	cp l
	rst $18
	jp $b24f


	pop bc
	db $d3
	sbc $7f
	push bc
	cp h
	add $7f
	push bc
	rst $18
	pop bc
	rst $08
	rst $18
	ret nz

	rst $20
	ld d, c
	db $d3
	or e
	ld a, a
	adc h
	xor b
	xor h
	sub e
	jp z, $d47f

	rst $10
	sbc $e7
	ld c, a
	inc l
	ret nc

	pop bc
	add $7f
	jp z, wd7c0

	cp b
	cpl
	rst $20
	ld d, c
	ld d, [hl]
	ld a, a
	call nz, $b3b2
	call c, $33b9
	ld c, a
	cp d
	jp c, Jump_012_7fca

	or l
	rst $08
	or h
	add $7f
	call nc, $e7d9
	ld e, b
	nop
	ld d, d
	jp z, $b57f

	rst $18
	cp e
	sbc $7f
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
	ld de, $0050
	add $d3
	jp nz, Jump_012_7f26

	or d
	rst $18
	ld b, h
	or d
	ld a, a
	jr nc, jr_012_6277

	ld d, a
	nop
	or c
	db $e3
	or c
	rst $20
	ld c, a
	or d
	jp nz, Jump_012_7fb6

	or [hl]
	push bc
	rst $10
	dec l
	ld a, a
	or [hl]
	jp $e7d9


	ld d, l
	call nz, $b57f
	db $d3
	rst $18
	ret nz

	ret


	add $7f
	cp d
	ret


	ld a, a
	dec hl
	rst $08
	jr nc, @+$58

	rst $20
	ld d, a
	rrca
	ld [bc], a
	rlca
	inc bc
	ld a, [bc]
	rst $38
	rlca

jr_012_6277:
	inc b
	ld a, [bc]
	rst $38
	nop
	dec b
	inc d
	add hl, bc
	inc c
	cp $02
	ld bc, $061c
	dec bc
	rst $38
	rst $38
	ld [bc], a
	ld a, [bc]
	ld [$ff05], sp
	ret nc

	inc bc
	cpl
	rlca
	add hl, bc
	rst $38
	db $d3
	inc b
	inc h
	dec b
	inc b
	rst $38
	ret nc

	dec b
	ld d, $c7
	rlca
	inc bc
	rla
	rst $00
	rlca
	inc b
	inc l
	ld a, [hli]
	ld l, $32
	jr nc, jr_012_62c5

	jr nz, @+$23

	inc d
	dec bc
	dec l
	jr nz, @+$23

	inc d
	dec bc
	ld sp, $2928
	dec d
	ld de, $0413
	inc b
	add l
	ld h, e
	add $62
	jp nz, $0062

	ld e, a
	ld h, e
	call $3c6c

jr_012_62c5:
	ret


	call z, $f162
	ld h, d
	ld hl, $0063
	cp c
	call Call_012_56cd
	rst $20
	ld c, a
	adc h
	xor b
	xor h
	sub e
	jp z, $307f

	or d
	ld a, a
	jp z, $2cde

	ld [c], a
	or e
	rst $20
	ld d, l
	db $d3
	or e
	or [hl]
	rst $18
	jp $bc7f


	or [hl]
	ret nz

	push bc
	or d
	call c, Call_012_57e7
	nop
	sub b
	db $e3
	sbc e
	rst $20
	ld d, c
	or a
	ld [c], a
	or e
	db $d3
	ld a, a
	adc h
	xor b
	xor h
	sub e
	ret


	ld a, a
	or e
	ret c

	or c
	add hl, hl
	inc sp
	ld c, a
	cp h
	or d
	jp c, Jump_012_7fc0

	ld d, h
	ld a, a
	ld hl, sp-$0a
	or $f6
	res 6, a
	ld d, l
	cp h
	pop hl
	rst $18
	or [hl]
	ld a, a
	cp h
	call nc, wc0bc
	rst $20
	ld d, a
	nop
	ld [$9fe3], sp
	ld a, a
	adc c
	db $e3
	sub h
	db $e3
	add $7f
	jp z, $c3df

	ld a, a
	or c
	reti


	ld c, a
	ld b, e
	adc h
	adc a
	db $e3
	add $ca
	ld a, a
	cp e
	call c, wc5de
	rst $20
	ld d, c
	or e
	rst $10
	add $7f
	adc h
	add c
	xor h
	sub b
	ld h, $7f
	or [hl]
	cp b
	cp h
	jp $b17f


	reti


	ld c, a
	push bc
	sbc $c3
	ld a, a
	cp d
	call nz, wc57f
	or d
	or [hl]
	rst $10
	rst $20
	ld d, a
	rrca
	ld [bc], a
	rlca
	ld [bc], a
	dec bc
	rst $38
	rlca
	inc bc
	dec bc
	rst $38
	nop
	inc bc
	dec h
	ld b, $08
	rst $38
	ret nc

	ld bc, $0818
	dec b
	cp $00
	ld [bc], a
	inc de
	ld a, [bc]
	add hl, bc
	rst $38
	jp nc, $1203

	rst $00
	rlca
	ld [bc], a
	ld [de], a
	rst $00
	rlca
	inc bc
	ld b, h
	ld b, b
	ccf
	ld b, h
	dec bc
	ld b, d
	ld b, e
	dec bc
	dec bc
	ld b, [hl]
	ld b, a
	dec bc
	ld [hl], $41
	dec bc
	ld [hl], $06
	inc b
	rlca
	ld e, a
	ld h, h
	and h
	ld h, e
	and c
	ld h, e
	nop
	add hl, sp
	ld h, h
	jp $3c6c


	xor d
	ld h, e
	db $dd
	ld h, e
	add hl, de
	ld h, h
	nop
	jp z, Jump_012_7fb1

	ld d, h
	ld d, [hl]
	and $4f
	or c
	or c
	ld d, [hl]
	rst $20
	ld a, a
	cp d
	cp d
	jp z, wcb55

	call nz, Call_012_7f26
	call nz, wd9cf
	ld a, a
	ret c

	ld [c], a
	or [hl]
	sbc $7f
	inc sp
	cp l
	inc l
	ldh [rHDMA1], a
	or c
	or d
	add $b8
	ld a, a
	call Call_012_7fd4
	or d
	rst $18
	ld b, h
	or d
	ld a, a
	inc sp
	push bc
	ld d, a
	nop
	or c
	ret nz

	cp h
	rst $20
	ld a, a
	or l
	call nz, wc4b3
	ld a, a
	call nz, $b67f
	jp c, $4fbc

	ld sp, hl
	add $de
	inc sp
	ld a, a
	ret c

	ld [c], a
	cp d
	or e
	add $7f
	or a
	ret nz

	ret


	rst $20
	ld d, c
	adc a
	sbc l
	sbc a
	adc e
	ld a, a
	adc e
	sub d
	or b
	rst $18
	jp wc44f


	jp Jump_012_7fd3


	or a
	jp c, wc5b2

	ld a, a
	rst $08
	pop bc
	ld a, a
	push bc
	ret


	ret z

	ld d, a
	nop
	push bc
	sbc $33
	ld d, [hl]
	and $7f
	or [hl]
	ret


	inc l
	ld [c], a
	call nz, wcc4f
	ret nz

	ret c

	ld a, a
	or a
	ret c

	ret


	ld a, a
	ret c

	ld [c], a
	cp d
	or e
	ret


	ld a, a
	jp z, $262d

	rst $20
	ld d, a
	nop
	ld [bc], a
	rlca
	inc bc
	inc c
	rst $38
	rlca
	inc b
	inc c
	rst $38
	nop
	inc bc
	jr z, @+$07

	rlca
	rst $38
	ret nc

	ld bc, $080f
	ld b, $ff
	rst $38
	ld [bc], a
	inc c
	ld [$fe0c], sp
	ld [bc], a
	inc bc
	ld e, $c7
	rlca
	inc bc
	rra
	rst $00
	rlca
	inc b
	inc c
	inc c
	inc c
	inc c
	inc c
	inc c
	ld c, $07
	rlca
	rlca
	rlca
	rlca
	rlca
	rlca
	ld [$0f0f], sp
	rrca
	rrca
	rrca
	rrca
	ld c, $0a
	dec bc
	ld c, $0f
	rrca
	ld c, $06
	inc b
	rlca
	nop
	ld b, b
	adc l
	ld h, h
	add a
	ld h, h
	nop
	ld [bc], a
	ld h, [hl]
	call $0d8e
	jp $3c6c


	sbc c
	ld h, h
	sbc d
	ld h, h
	ret nc

	ld h, h
	ld [bc], a
	ld h, l
	rst $38
	ld h, l
	ld bc, $ff66
	nop
	inc e
	db $e3
	and [hl]
	db $dd
	ld a, a
	dec a
	and [hl]
	sub e
	add $7f
	adc l
	xor h
	sub e
	ld c, a
	rst $30
	ld a, a
	ld hl, sp+$7f
	ld sp, hl
	ld a, a
	ld a, [$fb7f]
	ld a, a
	db $fc
	ld d, [hl]
	ld a, a
	call nz, Call_012_51e7
	or e
	sbc $56
	ld a, a
	jp nz, wc3da

	ld a, a
	or d
	cp c
	reti


	ld c, a
	ld d, h
	jp z, $fc7f

	res 6, a
	ld a, a
	rst $08
	inc sp
	jr nc, @+$59

	nop
	sbc c
	sub h
	rrca
	ld a, a
	adc e
	sub d
	or b
	ret


	ld a, a
	ret nc

	sbc $b6
	ld c, a
	or l
	cp a
	call c, wd9da
	ld d, [hl]
	ld a, a
	or [hl]
	rst $20
	ld d, c
	cp h
	sbc $3c
	sbc $c6
	ld a, a
	ld e, [hl]
	ret


	ld c, a
	inc l
	cp c
	sbc $26
	ld a, a
	ret


	rst $10
	push bc
	or d
	ld a, a
	set 1, d
	ld a, a
	push bc
	or d
	push bc
	ld d, a
	ld [$45fa], sp
	rst $10
	add a
	jp c, Jump_012_6569

	ld hl, $6572
	call $3c79
	ld a, $13
	ld [wd0ea], a
	call $3130
	call $3636
	ld a, [wCurrentMenuItem]
	and a
	jp nz, Jump_012_6564

	ldh [$9f], a
	ldh [$a1], a
	ld a, $05
	ldh [$a0], a
	call $35f0
	jr nc, jr_012_6534

	ld hl, $65cf
	jr jr_012_656c

jr_012_6534:
	xor a
	ld [wcd3d], a
	ld [wcd3f], a
	ld a, $05
	ld [wcd3e], a
	ld hl, wcd3f
	ld de, wd2cd
	ld c, $03
	ld a, $0c
	call $3e9d
	ld a, $13
	ld [wd0ea], a
	call $3130
	ld bc, $8505
	call $3e78
	jr nc, jr_012_656f

	ld hl, wd745
	set 7, [hl]
	jr jr_012_656f

Jump_012_6564:
	ld hl, $65c1
	jr jr_012_656c

Jump_012_6569:
	ld hl, $65e0

jr_012_656c:
	call $3c79

jr_012_656f:
	jp $0f6a


	nop
	or l
	inc l
	cp e
	sbc $72
	ld a, $df
	pop bc
	ldh [$de], a
	ld c, a
	or c
	ld [hl], h
	push bc
	ld [hl], h
	ret nz

	ld [hl], h
	jr nc, @-$45

	add $56
	rst $20
	ld d, l
	or d
	or d
	ld a, a
	or l
	jp z, $bcc5

	ld h, $7f
	or c
	ret c

	rst $08
	cp h
	jp wcb51


	ret nc

	jp nz, Jump_012_7fc9

	ld d, h
	ld a, a
	adc c
	add c
	add [hl]
	xor e
	rlca
	ld h, $4f
	push bc
	sbc $c4
	ld a, a
	ret nz

	rst $18
	ret nz

	ret


	ld a, a
	ei
	or $f6
	ldh a, [$e7]
	ld d, l
	inc [hl]
	or e
	jr nc, jr_012_656c

	ld a, a
	or [hl]
	or e
	or [hl]
	ret z

	and $57
	nop
	cp a
	or l
	and $7f
	dec hl
	sbc $c8
	sbc $30
	ret z

	or h
	ld d, [hl]
	ld d, a
	nop
	or l
	or [hl]
	ret z

	ld a, a
	ret nz

	ret c

	push bc
	or d
	ld a, a
	ret nc

	ret nz

	or d
	jr nc, @-$36

	or h
	ld d, a
	nop
	or l
	inc l
	cp e
	sbc $72
	cp a
	or e
	cp a
	or e
	ld a, a
	ld d, h
	ret


	ld c, a
	call $45de
	sbc $ca
	ld a, a
	or l
	cp d
	call nz, wd8dc
	ld a, a
	jr nc, @-$48

	rst $10
	push bc
	ld d, a
	nop
	ld d, a
	or $00
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
	ld b, $29
	dec b
	rlca
	rst $38
	ret nc

	ld bc, $0704
	ld [wd1ff], sp
	ld [bc], a
	db $10
	rlca
	dec bc
	rst $38
	pop de
	inc bc
	ld a, [bc]
	ld a, [bc]
	ld c, $fe
	ld [bc], a
	inc b
	ld b, d
	ld b, $0b
	rst $38
	rst $38
	dec b
	ld a, [hli]
	ld b, $0f
	rst $38
	ret nc

	ld b, $1e
	rst $00
	rlca
	inc bc
	rra
	rst $00
	rlca
	inc b
	ld b, $04
	rlca
	nop
	ld b, b
	ld c, h
	ld h, [hl]
	ld b, [hl]
	ld h, [hl]
	nop
	and [hl]
	ld h, [hl]
	call $0d8e
	jp $3c6c


	ld d, h
	ld h, [hl]
	ld d, l
	ld h, [hl]
	add c
	ld h, [hl]
	and l
	ld h, [hl]
	rst $38
	nop
	ld d, h
	jp z, $8f7f

	add c
	ld b, d
	add $7f
	sub $df
	jp wd54f


	or e
	ret c

	add $7f
	ret nz

	ret nz

	or [hl]
	or h
	reti


	ld a, a
	or c
	or d
	jp Jump_012_55c4


	add $26
	jp Jump_012_7fc5


	or c
	or d
	jp Jump_012_7f26


	or d
	reti


	ret


	jr nc, jr_012_66d8

	nop
	jp nz, $b2b6

	ret nc

	pop bc
	ld a, a
	push bc
	or d
	or [hl]
	rst $10
	ld a, a
	or a
	sbc $c9
	ret nz

	rst $08
	db $dd
	ld c, a
	or e
	rst $18
	ret nz

	rst $10
	ld a, a
	ei
	or $f6
	or $f0
	inc sp
	ld a, a
	or e
	jp c, $e7c0

	ld d, a
	or $00
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
	inc b
	add hl, hl
	dec b
	rlca
	rst $38
	ret nc

	ld bc, $0710
	dec bc
	cp $02
	ld [bc], a
	cpl
	add hl, bc
	ld b, $ff
	rst $38
	inc bc
	ld a, [hli]
	ld b, $0f
	rst $38
	ret nc

	inc b
	ld e, $c7
	rlca
	inc bc
	rra
	rst $00
	rlca
	inc b
	inc c
	dec b
	inc b
	inc e
	ld b, b
	pop hl

jr_012_66d8:
	ld h, [hl]
	sbc $66
	nop
	ld d, [hl]
	ld h, a
	jp $3c6c


	db $e3
	ld h, [hl]
	nop
	ld d, h
	db $dd
	ld a, a
	ret nz

	cp b
	cp e
	sbc $7f
	call nz, wc4d9
	ld c, a
	push bc
	rst $08
	or h
	db $dd
	ld a, a
	jp nz, wc3b9

	ld a, a
	or c
	add hl, hl
	reti


	ret


	add $55
	cp b
	db $db
	or e
	ld a, a
	cp h
	pop bc
	ldh [$b3], a
	ld a, a
	inc sp
	cp h
	ld [c], a
	rst $20
	ld d, c
	cp d
	ret


	ld a, a
	cp e
	or a
	ret


	ld a, a
	adc e
	add h
	xor e
	ld a, a
	adc a
	add d
	xor e
	add $4f
	ld d, h
	ret


	ld a, a
	push bc
	rst $08
	or h
	db $dd
	ld d, l
	or e
	rst $10
	push bc
	rst $18
	jp $b87f


	jp c, Jump_012_7fd9

	set 0, h
	ld h, $7f
	or d
	reti


	sub $51
	ld d, h
	add $7f
	db $d3
	rst $18
	call nz, $b27f
	or d
	ld a, a
	push bc
	rst $08
	or h
	db $dd
	ld c, a
	jp nz, Jump_012_7fb9

	push bc
	or l
	cp l
	ld a, a
	cp d
	call nz, Call_012_7fd3
	inc sp
	or a
	reti


	sub $57
	ld a, [bc]
	dec b
	inc b
	nop
	nop
	rst $38
	dec b
	nop
	ld bc, $04ff
	rlca
	ld [bc], a
	rst $38
	dec b
	rlca
	inc bc
	rst $38
	ld [$0006], sp
	ld d, [hl]
	nop
	ld bc, $0531
	ld [$ffff], sp
	ld bc, wc707
	inc b
	nop
	rlca
	rst $00
	dec b
	nop
	ld a, [bc]
	rst $00
	inc b
	rlca
	ld a, [bc]
	rst $00
	dec b
	rlca
	ld e, $c7
	ld [$0c06], sp
	inc b
	inc b
	jr nc, @+$42

	sub a
	ld h, a
	sub h
	ld h, a
	nop
	pop af
	ld l, b
	jp $3c6f


	sbc a
	ld h, a
	xor h
	ld h, a
	ld e, c
	ld l, b
	xor [hl]
	ld l, b
	ld [$eaaf], sp
	dec a
	call $543e
	call $3e9d

jr_012_67a9:
	jp $0f6a


	ld [$55fa], sp
	rst $10
	add a
	jr c, jr_012_67db

	ld a, $1e
	ldh [$db], a
	ld a, $47
	ldh [$dc], a
	ld [wNumSetBits], a
	call $1add
	ld h, d
	ld l, e
	ld de, wcc5b
	ld bc, $0009
	call $01bb
	ld a, $62
	call $3e9d
	ldh a, [$db]
	dec a
	jr nz, jr_012_67e1

	ld hl, wd755
	set 7, [hl]

jr_012_67db:
	ld hl, $67e3
	call $3c79

jr_012_67e1:
	jr jr_012_67a9

	nop
	jp nc, Jump_012_7fc6

	ret nc

	or h
	jp wc57f


	cp b
	jp $4fd3


	dec a
	sbc $d8
	push bc
	ld a, a
	inc [hl]
	or e
	jr z, jr_012_681f

	ld d, l
	or c
	pop bc
	cp d
	pop bc
	add $7f
	or l
	pop bc
	jp $b27f


	rst $08
	cp l
	rst $20
	ld d, c
	rrca
	add d
	dec bc
	xor e
	rlca
	ld a, a
	sbc l
	adc e
	xor e

jr_012_6812:
	inc sp
	ld c, a
	pop bc
	or [hl]
	cp b
	add $7f
	push bc
	add $b6
	ld a, a
	or l
	pop bc

jr_012_681f:
	jp $b6d9


	ld d, l
	inc [hl]
	or e
	or [hl]
	ld h, $7f
	call c, wd8b6
	rst $08
	cp l
	rst $20
	ld d, c
	cp b
	call c, $b2bc
	ld a, a
	ld a, [hld]
	cp h
	ld [c], a
	jp z, $9d4f

	adc e
	xor e
	inc sp
	db $d3
	ld a, a
	call c, wd8b6
	rst $08
	cp [hl]
	sbc $e7
	ld d, l
	pop bc
	or [hl]
	cp b
	db $dd
	ld a, a
	cp e
	ld h, $bc
	jp wSpriteCurPosY


	jp $b87f


	jr nc, jr_012_6812

	or d
	ld d, a
	ld [$09fa], sp
	pop bc
	cp $04
	jp nz, Jump_012_6ad5

	ld a, [wd757]
	bit 7, a
	ld hl, $6875
	jr z, jr_012_686f

	ld hl, $6892

jr_012_686f:
	call $3c79
	jp $0f6a


	nop
	ld a, $b3
	or h
	sbc $b7
	ld [c], a
	or e
	db $dd
	ld a, a
	ret


	cpl
	or d
	ret nz

	rst $20
	ld d, c
	inc [hl]
	or e
	db $db
	add $7f
	ld d, h
	ld h, $7f
	ret z

	jp $e7d9


	ld d, a
	nop
	ld a, $b3
	or h
	sbc $b7
	ld [c], a
	or e
	db $dd
	ld a, a
	ret


	cpl
	or d
	ret nz

	rst $20
	ld d, c
	cp l
	ld a, [hld]
	rst $10
	cp h
	or d
	ld a, a
	cp c
	cp h
	or a
	jr nc, @-$17

	ld d, a
	ld [$b521], sp
	ld l, b
	jp Jump_012_6ad5


	nop
	ld a, $b3
	or h
	sbc $b7
	ld [c], a
	or e
	db $dd
	ld a, a
	ret


	cpl
	or d
	ret nz

	rst $20
	ld d, c
	adc e
	add h
	xor e
	ld a, a
	adc a
	add d
	xor e
	add $7f
	or d
	cp b
	ld a, a
	add $ca
	ld d, [hl]
	ld c, a
	sbc c
	sub h
	rrca
	ld a, a
	adc e
	sub d
	or b
	ld a, a
	or [hl]
	rst $10
	ld d, l
	add c
	xor c
	and d
	sbc l
	db $dd
	ld a, a
	rst $00

jr_012_68e7:
	cp c
	jp c, Jump_012_7f3a

	sub $bb
	cp a
	or e
	ld d, [hl]
	ld d, a
	ld a, [bc]
	ld bc, $0707
	inc b
	ld d, h
	ld [bc], a
	ld [bc], a
	ld bc, $0203
	ld b, $04
	ld [bc], a
	inc b
	ld b, $08
	cp $02
	ld bc, $0a20
	ld b, $ff
	rst $38
	ld [bc], a
	inc d
	rst $00
	rlca
	rlca
	inc c
	inc b
	dec b
	ld l, a
	ld l, c
	ld e, $69
	dec de
	ld l, c
	nop
	dec a
	ld l, c
	jp $3c6c


	jr nz, jr_012_6989

	nop
	ld hl, sp-$4a
	or d
	jp z, wSpriteCurPosY

	jp z, $bcd7

	ret


	ld a, a
	sub $b2
	ld c, a
	jp $3ede


	or e
	jr nc, jr_012_68e7

	add $7f
	push bc
	rst $18
	jp $bdcf


	ld d, a
	ld a, [bc]
	dec b
	nop
	inc b
	nop
	rst $38
	nop
	dec b
	ld bc, $07ff
	inc b
	ld [bc], a
	rst $38
	rlca
	dec b
	ld [bc], a
	rst $38
	ld b, $08
	nop
	jp Start


	ld sp, $0507
	rst $38
	rst $38
	ld bc, wc6f6
	nop
	inc b
	or $c6
	nop
	dec b
	rla
	rst $00
	rlca
	inc b
	rla
	rst $00
	rlca
	dec b
	add hl, de
	rst $00
	ld b, $08
	ld d, $27
	ld [hl], c
	dec hl
	rla
	ld [bc], a
	add hl, bc
	nop
	ld c, h
	ld bc, $0902
	nop
	inc d
	dec e
	jr @+$2c

	ld [hl], d
	ld bc, $0c23
	inc b
	inc b
	jr nc, jr_012_69c8

	sub d

jr_012_6989:
	ld l, c
	adc a
	ld l, c
	nop
	ld [wOAMBuffer + $6a], a
	ld l, a
	inc a
	sbc b
	ld l, c
	adc h
	ld l, d
	or d
	ld l, d
	ld [$56fa], sp
	rst $10
	rrca
	jr c, jr_012_69c2

	ld hl, $69cb
	call $3c79
	ld bc, $ef01
	call $3e5e
	jr nc, jr_012_69ba

	ld hl, $6a18
	call $3c79
	ld hl, wd756
	set 0, [hl]
	jr jr_012_69c8

jr_012_69ba:
	ld hl, $6a7b
	call $3c79
	jr jr_012_69c8

jr_012_69c2:
	ld hl, $6a31
	call $3c79

jr_012_69c8:
	jp $0f6a


	nop
	call c, $bcc0
	ld h, $7f
	or [hl]
	call c, $26b2
	rst $18
	jp Jump_012_7fc0


	ld d, h
	ld c, a
	or d
	rst $08
	jp z, Jump_012_547f

	ld a, a
	adc a
	xor c
	db $e3
	inc sp
	ld d, l
	ret z

	pop de
	rst $18
	jp wc9d9


	ld d, [hl]
	ld d, c
	ld d, [hl]
	ld a, a
	cp a
	or e
	jr nc, jr_012_6a73

	call c, $bcc0
	ret


	ld a, a
	ld e, h
	ld c, a
	or l
	add $b2
	pop bc
	ldh [$de], a
	add $7f
	or c
	add hl, hl
	reti


	call c, wdc55
	ret nz

	cp h
	ld d, [hl]
	ld a, a
	db $d3
	or e
	ld a, a
	or d
	rst $10
	push bc
	or d
	ld a, a
	or [hl]
	rst $10
	ld e, b
	nop
	ld d, d
	jp z, $b57f

	sbc $c5
	ret


	cp d
	or [hl]
	rst $10
	ld c, a
	ld e, h
	ld sp, hl
	rst $38
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
	rst $38
	jp z, $8c4f

	ld b, c
	db $e3
	inc de
	adc h
	adc a
	db $e3
	ld a, a
	call nz, $b3b2
	ld a, a
	call c, wd62b
	ld d, c
	cp d
	ret


	ld a, a
	call c, wca2b
	ld a, a
	jp nc, $c1b2

	pop hl
	or e
	ret c

	jp nz, $4f26

	cp l
	ld a, [hli]
	cp b
	ld a, a
	ret nz

	or [hl]
	or d
	ret


	ld d, l
	rst $08
	cp c
	rst $10
	jp c, $b2c5

	ld a, a
	cp h
	ld [c], a
	or e
	inc a
	ret


	ld a, a
	call nz, Call_012_55b7
	call nc, wc6b8

jr_012_6a73:
	ld a, a
	ret nz

	jp nz, wca7f

	dec l
	sub $57
	nop
	add $d3
	jp nz, $b27f

	rst $18
	ld b, h
	or d
	inc sp
	ld a, a
	db $d3
	jp $b2c5


	sub $57
	ld [$9321], sp
	ld l, d
	jp Jump_012_6ad5


	nop
	ld a, $b3
	or h
	sbc $b7
	ld [c], a
	or e
	db $dd
	ld a, a
	ret


	cpl
	or d
	ret nz

	rst $20
	ld d, c
	jp nz, wddd8

	ld a, a
	cp h
	jp Jump_012_7fd9


	or l
	inc l
	cp e
	sbc $30
	rst $20
	ld d, a
	ld [$b921], sp
	ld l, d
	jp Jump_012_6ad5


	nop
	ld a, $b3
	or h
	sbc $b7
	ld [c], a
	or e
	db $dd
	ld a, a
	ret


	cpl
	or d
	ret nz

	rst $20
	ld d, c
	ld d, h
	ld a, a
	adc a
	xor c
	db $e3
	ld h, $7f
	ret nc

	or h
	reti


	rst $20
	ld d, a

Jump_012_6ad5:
	ld a, [$c109]
	cp $04
	jr z, jr_012_6ae0

	ld a, $01
	jr jr_012_6ae4

jr_012_6ae0:
	call $3c79
	xor a

jr_012_6ae4:
	ld [wcc3c], a
	jp $0f6a


	ld a, [bc]
	ld bc, $0707
	inc b
	ld d, a
	ld [bc], a
	ld [bc], a
	ld bc, $0202
	ld b, $03
	ld bc, $081d
	rlca
	cp $01
	ld bc, wc714
	rlca
	rlca
	inc c
	dec b
	inc b
	inc e
	ld b, b
	ld de, $0e6b
	ld l, e
	nop
	ld b, b
	ld l, e
	jp $3c6c


	inc de
	ld l, e
	nop
	ld d, h
	dec l
	or [hl]
	sbc $4f
	jp nz, wdfb8

	jp Jump_012_7fd9


	cp d
	ld a, a
	rst $18
	jp $b77f


	ret nc

	and $51
	add h
	db $e3
	add [hl]
	inc de
	jp z, $beb6

	ret


	ld a, a
	inc l
	ld [c], a
	cp h
	pop hl
	ret


	ld c, a
	or [hl]
	ret nz

	ld h, $7f
	or a
	jp wd6c0


	ld d, a
	ld a, [bc]
	dec b
	inc b
	nop
	nop
	rst $38
	dec b
	nop
	ld bc, $04ff
	rlca
	ld [bc], a
	rst $38
	dec b
	rlca
	inc bc
	rst $38
	ld [$0006], sp
	cp c
	nop
	ld bc, $0531
	ld [$ffff], sp
	ld bc, wc707
	inc b
	nop
	rlca
	rst $00
	dec b
	nop
	ld a, [bc]
	rst $00
	inc b
	rlca
	ld a, [bc]
	rst $00
	dec b
	rlca
	ld e, $c7
	ld [$0c06], sp
	inc b
	inc b
	jr nc, jr_012_6bb7

	add c
	ld l, e
	ld a, [hl]
	ld l, e
	nop
	ld d, h
	ld l, h
	jp $3c6f


	add l
	ld l, e
	dec h
	ld l, h
	ld [$5cfa], sp
	rst $10
	bit 0, a
	jr nz, jr_012_6bb7

	ld a, $32
	ldh [$db], a
	ld a, $4b
	ldh [$dc], a
	ld [wNumSetBits], a
	call $1add
	ld hl, wcd68
	ld de, wcc5b
	ld bc, $0009
	call $01bb
	ld a, $62
	call $3e9d
	ldh a, [$db]
	cp $01
	jr nz, jr_012_6bbd

	ld hl, wd75c
	set 0, [hl]

jr_012_6bb7:
	ld hl, $6bc0
	call $3c79

jr_012_6bbd:
	jp $0f6a


	nop
	ld h, $b8
	cp h
	pop hl
	or e
	cp a
	or e
	pop bc
	jp z, wc04f

	ret nz

	or [hl]
	call c, $b2c5
	ld a, a
	ld d, h
	db $d3
	ld d, l
	cp c
	or d
	cp c
	sbc $c1
	ld h, $7f
	db $d3
	rst $10
	or h
	rst $08
	cp l
	ld d, c
	inc sp
	db $d3
	ld a, a
	rst $30
	ld b, l
	or a
	ld a, a
	or c
	ret nz

	ret c

	ret


	ld c, a
	call c, wcfb9
	or h
	ld h, $7f
	cp l
	cp b
	push bc
	cp b
	ld a, a
	push bc
	reti


	ret


	inc sp
	ld d, l
	jp nz, $b2b6

	ret nz

	cp b
	push bc
	or d
	ld a, a
	call nz, wcab7
	ld d, l
	ld e, e
	add $7f
	or c
	dec l
	cp c
	jp $b87f


	jr nc, @-$43

	or d
	ld d, l
	cp a
	or e
	pop bc
	jp z, $347f

	or e
	cp e
	ld a, a
	cp h
	rst $08
	cp [hl]
	sbc $57
	ld [$2c21], sp
	ld l, h
	jp Jump_012_6ad5


	nop
	ld a, $b3
	or h
	sbc $b7
	ld [c], a
	or e
	db $dd
	ld a, a
	ret


	cpl
	or d
	ret nz

	rst $20
	ld d, c
	or e
	ret nc

	ret


	ld a, a
	pop de
	cp d
	or e
	add $56
	ld c, a
	pop bc
	or d
	cp e
	push bc
	ld a, a
	cp h
	rst $08
	ld h, $7f
	ret nc

	or h
	reti


	rst $20
	ld d, a
	ld a, [bc]
	ld bc, $0707
	inc b
	cp b
	ld bc, $0602
	ld [bc], a
	ld bc, $0620
	ld [wd0ff], sp
	ld bc, wc714
	rlca
	rlca
	inc c
	rlca
	inc b
	dec b
	ld l, [hl]
	ld de, $756d
	ld l, h
	nop
	xor l
	ld l, l
	ld hl, wd6b1
	res 5, [hl]
	call $3c6c
	ld a, [wd5df]
	ld hl, $6c86
	jp $3dc7


	adc [hl]
	ld l, h
	call nc, wde6c
	ld l, h
	ld hl, sp+$6c
	call Call_012_6d0c
	ret nz

	ld hl, $6ccb
	call $3509
	ret nc

	ld a, $03
	ldh [$8c], a
	call $13f1
	xor a
	ldh [$b4], a
	ld a, [wcd3d]
	cp $01
	jr z, jr_012_6cc5

	ld a, [wcd3d]
	dec a
	ld [wcd38], a
	ld b, $00
	ld c, a
	ld a, $40
	ld hl, wccd3
	call $372a
	call $34d0
	ld a, $01
	ld [wd5df], a
	ret


jr_012_6cc5:
	ld a, $02
	ld [wd5df], a
	ret


	rlca
	inc b
	ld [$0904], sp
	inc b
	ld a, [bc]
	inc b
	rst $38
	ld a, [wcd38]
	and a
	ret nz

	ld a, $f0
	ld [wcd66], a
	ld a, $01
	ldh [$8c], a
	call $13f1
	ld a, $01
	ld [wcd38], a
	ld a, $10
	ld [wccd3], a
	call $34d0
	ld a, $03
	ld [wd5df], a
	ret


	ld a, [wcd38]
	and a
	ret nz

	xor a
	ld [wcd66], a
	ld hl, wd6af
	res 7, [hl]
	ld a, $00
	ld [wd5df], a
	ret


Call_012_6d0c:
	ld b, $06
	jp $34dd


	rla
	ld l, l
	sub d
	ld l, l
	add l
	ld l, l
	ld [$0ccd], sp
	ld l, l
	jr z, jr_012_6d25

	ld hl, $6d5b
	call $3c79
	jr jr_012_6d2b

jr_012_6d25:
	ld hl, $6d2e
	call $3c79

jr_012_6d2b:
	jp $0f6a


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
	jp z, $b14f

	reti


	or d
	jp $bd7f


	cp l
	pop de
	call nz, $867f
	adc b
	xor e
	inc sp
	cp l
	rst $20
	ld d, l
	inc l
	jp $bcde


	ldh [$c6], a
	ld a, a
	ret


	rst $18
	jp $b77f


	jp Jump_012_57c8


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
	jp z, $b34f

	ret nc

	db $dd
	ld a, a
	or d
	cp b
	ld a, a
	cp e
	or [hl]
	ret nc

	pop bc
	rst $20
	ld d, l
	or [hl]
	cp c
	or l
	ret c

	reti


	call nz, $b77f
	db $d3
	pop bc
	ld a, a
	or d
	or d
	sub $e7
	ld d, a
	nop
	pop bc
	ld [c], a
	rst $18
	call nz, $b77f
	ret nc

	ld a, a
	or a
	ret nc

	rst $20
	ld d, a
	nop
	cp d
	sbc $c5
	ld a, a
	call nz, Call_012_7fba
	sub $b8
	ld a, a
	or a
	ret nz

	rst $20
	ld c, a
	ld a, [hli]
	cp b
	db $db
	or e
	push bc
	ld a, a
	cp d
	rst $18
	pop bc
	ldh [$e7], a
	ld d, a
	ld a, [bc]
	add hl, bc
	ld [$0000], sp
	rst $38
	add hl, bc
	nop
	ld bc, $08ff
	rlca
	ld [bc], a
	rst $38
	add hl, bc
	rlca
	ld [bc], a
	rst $38
	ld [bc], a
	nop
	inc b
	rst $38
	inc bc
	nop
	dec b
	rst $38
	ld [bc], a
	rlca
	ld b, $ff
	inc bc
	rlca
	rlca
	rst $38
	inc c
	ld b, $00
	cp e
	nop
	ld [bc], a
	ld sp, $0809
	rst $38
	ret nc

	ld bc, $070b
	ld [$ffff], sp
	ld [bc], a
	dec de
	rst $00
	ld [$1b00], sp
	rst $00
	add hl, bc
	nop
	ld e, $c7
	ld [$1e07], sp
	rst $00
	add hl, bc
	rlca
	db $fd
	add $02
	nop
	db $fd
	add $03
	nop
	nop
	rst $00
	ld [bc], a
	rlca
	nop
	rst $00
	inc bc
	rlca
	ld [hld], a
	rst $00
	inc c
	ld b, $68
	ld l, b
	ld l, b
	ld l, b
	ld h, [hl]
	nop
	nop
	ld h, a
	inc e
	rra
	rra
	dec e
	ld [hld], a
	ld hl, $3121
	ld h, [hl]
	nop
	nop
	ld h, a
	add hl, hl
	dec h
	ld h, $1e
	jr @+$20

	jr nc, jr_012_6e44

	inc c
	inc b
	inc b
	jr nc, @+$42

	jr nc, jr_012_6e96

	dec l
	ld l, [hl]
	nop
	call c, $c36e
	ld l, a
	inc a
	jr c, @+$70

	ld e, [hl]
	ld l, [hl]
	ld a, a
	ld l, [hl]
	and [hl]
	ld l, [hl]
	ld [$4221], sp
	ld l, [hl]
	call $3c79
	jp $0f6a


	nop
	cp h

jr_012_6e44:
	sbc $45
	sbc $7f
	inc l
	jp $bcde


	ldh [$33], a
	ld c, a
	or [hl]
	ret


	inc l
	ld [c], a
	call nz, $8a7f
	add c
	add a
	ret c

	xor e
	rlca
	cp e
	rst $20
	ld d, a
	ld [$6821], sp
	ld l, [hl]
	call $3c79
	jp $0f6a


	nop
	or e
	call z, $e7cc
	ld c, a
	cp d
	jp c, wd7b6

	ld a, a
	adc d
	add c
	add a
	ret c

	xor e
	rlca
	add $7f
	or d
	cp b
	ret


	ld d, a
	ld [$8621], sp
	ld l, [hl]
	jp Jump_012_6ad5


	nop
	ld a, $b3
	or h
	sbc $b7
	ld [c], a
	or e
	db $dd
	ld a, a
	ret


	cpl
	or d
	ret nz

	rst $20
	ld d, c

jr_012_6e96:
	adc a
	sbc l
	sbc a
	adc e
	ld a, a
	ld [de], a
	ld b, b
	db $e3
	sub e
	ld h, $7f
	ret nc

	or h
	reti


	rst $20
	ld d, a
	ld [$ad21], sp
	ld l, [hl]
	jp Jump_012_6ad5


	nop
	ld a, $b3
	or h
	sbc $b7
	ld [c], a
	or e
	db $dd
	ld a, a
	ret


	cpl
	or d
	ret nz

	rst $20
	ld d, c
	pop de
	cp d
	or e
	add $7f
	or e
	ret nc

	ret


	ld a, a
	or e
	or h
	db $dd
	ld a, a
	call nz, wd9b5
	ld c, a
	push bc
	ld h, $e3
	or d
	ld a, a
	ret nc

	pop bc
	ld h, $7f
	ret nc

	or h
	reti


	rst $20
	ld d, a
	ld a, [bc]
	ld bc, $0707
	ld [$02ba], sp
	ld [bc], a
	ld bc, $0203
	ld b, $04
	ld [bc], a
	dec [hl]
	ld b, $08
	rst $38
	rst $38
	ld bc, $0908
	ld b, $fe
	ld [bc], a
	ld [bc], a
	inc d
	rst $00
	rlca
	rlca
	inc c
	dec b
	inc b
	inc e
	ld b, b
	sbc l
	ld l, a
	ld b, $6f
	nop
	dec b
	ld [hl], b
	ld hl, wd6b1
	res 5, [hl]
	call $3c6c
	ld a, [wd5e8]
	ld hl, $6f17
	jp $3dc7


	rra
	ld l, a
	ld h, l
	ld l, a
	ld l, a
	ld l, a
	adc c
	ld l, a
	call Call_012_6d0c
	ret nz

	ld hl, $6f5c
	call $3509
	ret nc

	ld a, $02
	ldh [$8c], a
	call $13f1
	xor a
	ldh [$b4], a
	ld a, [wcd3d]
	cp $01
	jr z, jr_012_6f56

	ld a, [wcd3d]
	dec a
	ld [wcd38], a
	ld b, $00
	ld c, a
	ld a, $40
	ld hl, wccd3
	call $372a
	call $34d0
	ld a, $01
	ld [wd5e8], a
	ret


jr_012_6f56:
	ld a, $02
	ld [wd5e8], a
	ret


	inc bc
	inc b
	inc b
	inc b
	dec b
	inc b
	ld b, $04
	rst $38
	ld a, [wcd38]
	and a
	ret nz

	ld a, $f0
	ld [wcd66], a
	ld a, $01
	ldh [$8c], a
	call $13f1
	ld a, $01
	ld [wcd38], a
	ld a, $10
	ld [wccd3], a
	call $34d0
	ld a, $03
	ld [wd5e8], a
	ret


	ld a, [wcd38]
	and a
	ret nz

	xor a
	ld [wcd66], a
	ld hl, wd6af
	res 7, [hl]
	ld a, $00
	ld [wd5e8], a
	ret


	and c
	ld l, a
	or $6f
	ld [$0ccd], sp
	ld l, l
	jr z, jr_012_6faf

	ld hl, $6fd8
	call $3c79
	jr jr_012_6fb5

jr_012_6faf:
	ld hl, $6fb8
	call $3c79

jr_012_6fb5:
	jp $0f6a


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
	ld a, a
	add $ca
	ld c, a
	inc l
	jp $bcde


	ldh [$33], a
	ld a, a
	or d
	rst $18
	jp $b87f


	jr nc, @-$43

	or d
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
	cp d
	pop bc
	rst $10
	ld a, a
	or [hl]
	rst $10
	jp z, wc97f

	ld a, $d8
	ld a, a
	dec hl
	or [hl]
	ld a, a
	inc sp
	cp l
	ld d, a
	nop
	ld d, [hl]
	ld a, a
	pop bc
	ld [c], a
	rst $18
	call nz, $bd7f
	or d
	rst $08
	cp [hl]
	sbc $e7
	ld d, a
	ld a, [bc]
	dec b
	inc b
	nop
	nop
	rst $38
	dec b
	nop
	ld bc, $04ff
	rlca
	ld [bc], a
	rst $38
	dec b
	rlca
	inc bc
	rst $38
	ld [$0006], sp
	cp a
	nop
	ld bc, $0531
	ld [wd0ff], sp
	ld bc, wc707
	inc b
	nop
	rlca
	rst $00
	dec b
	nop
	ld a, [bc]
	rst $00
	inc b
	rlca
	ld a, [bc]
	rst $00
	dec b
	rlca
	ld e, $c7
	ld [$0c06], sp
	inc b
	inc b
	jr nc, jr_012_707c

	ld b, [hl]
	ld [hl], b
	ld b, e
	ld [hl], b
	nop
	xor b
	ld [hl], b
	jp $3c6f


	ld c, h
	ld [hl], b
	ld e, d
	ld [hl], b
	add d
	ld [hl], b
	ld [$053e], sp
	ld [wcd3d], a
	ld a, $54
	call $3e9d
	jp $0f6a


	ld [$6121], sp
	ld [hl], b
	jp Jump_012_6ad5


	nop
	ld a, $b3
	or h
	sbc $b7
	ld [c], a
	or e
	db $dd
	ld a, a
	ret


	cpl
	or d
	ret nz

	rst $20
	ld d, c
	add $bc
	add $7f
	sbc l
	adc d
	and l
	ld a, a
	adc a
	add d
	xor e

jr_012_707c:
	ld h, $7f
	ret nc

	or h
	reti


	ld d, a
	ld [$8921], sp
	ld [hl], b
	jp Jump_012_6ad5


	nop
	ld a, $b3
	or h
	sbc $b7
	ld [c], a
	or e
	db $dd
	ld a, a
	ret


	cpl
	or d
	ret nz

	rst $20
	ld d, c
	or l
	sub $b2
	inc sp
	reti


	ld a, a
	set 0, h
	ld h, $7f
	ret nc

	or h
	reti


	rst $20
	ld d, a
	ld a, [bc]
	ld bc, $0707
	inc b
	cp [hl]
	ld [bc], a
	ld [bc], a
	ld bc, $0202
	ld b, $03
	ld bc, $0614
	ld [$02fe], sp
	ld bc, wc714
	rlca
	rlca
	ld de, $1412
	ld b, l
	ld [hl], h
	push hl
	ld [hl], b
	call z, $0070
	or h
	ld [hl], e
	call $3c6c
	ld hl, $7101
	ld de, $70df
	ld a, [wd585]
	call $31a8
	ld [wd585], a
	ret


	ld h, c
	ld [hld], a
	sub h
	ld [hld], a
	cp l
	ld [hld], a
	ld d, [hl]
	ld [hl], c
	and [hl]
	ld [hl], c
	db $fd
	ld [hl], c
	ld c, h
	ld [hl], d
	sbc d
	ld [hl], d
	ld a, [c]
	ld [hl], d
	ld b, d
	ld [hl], e
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
	push bc
	rrca
	sbc e
	ld [hl], e
	ld bc, $7420
	rst $10
	ld h, b
	ld [hl], c
	add e
	ld [hl], c
	ld a, e
	ld [hl], c
	ld a, e
	ld [hl], c
	ld [bc], a
	jr nc, jr_012_7184

	rst $10
	or b
	ld [hl], c
	reti


	ld [hl], c
	add $71
	add $71
	inc bc
	jr nc, jr_012_7190

	rst $10
	rlca
	ld [hl], d
	jr nc, @+$74

	ld h, $72
	ld h, $72
	inc b
	jr nc, jr_012_719c

	rst $10
	ld d, [hl]
	ld [hl], d
	add b
	ld [hl], d
	ld [hl], b
	ld [hl], d
	ld [hl], b
	ld [hl], d
	dec b
	jr nc, @+$76

	rst $10
	and h
	ld [hl], d
	jp nc, wc772

	ld [hl], d
	rst $00
	ld [hl], d
	ld b, $30
	ld [hl], h
	rst $10
	db $fc
	ld [hl], d
	inc hl
	ld [hl], e
	inc e
	ld [hl], e
	inc e
	ld [hl], e
	rlca
	jr nc, jr_012_71c0

	rst $10
	ld c, h
	ld [hl], e
	db $76
	ld [hl], e
	ld l, l
	ld [hl], e
	ld l, l
	ld [hl], e
	rst $38
	ld [$0121], sp
	ld [hl], c
	call $3214
	jp $0f6a


	nop
	or e
	call c, $ace3
	rst $20
	ld c, a
	dec sp
	rst $18
	cp b
	ret c

	ld a, a
	cp h
	ret nz

	rst $20
	ld d, l
	ld d, [hl]
	ld a, a
	push bc
	sbc $30
	ld a, a
	cp d
	inc [hl]
	db $d3
	or [hl]
	ld d, a
	nop
	or l
	inc [hl]
	db $db
	or d
	ret nz

	rst $20
	ld e, b
	nop

jr_012_7184:
	cp d
	inc [hl]
	db $d3
	ld h, $4f
	cp d
	sbc $c5
	ld a, a
	cp b
	rst $10
	or d

jr_012_7190:
	ld a, a
	call nz, wdbba
	db $dd
	ld d, l
	add d
	xor b
	add d
	xor b
	ld a, a
	cp h

jr_012_719c:
	pop bc
	ldh [$7f], a
	or d
	or [hl]
	sbc $7f
	push bc
	or c
	ld d, a
	ld [$0d21], sp
	ld [hl], c
	call $3214
	jp $0f6a


	nop
	or a
	ret nc

	db $d3
	ld c, a
	inc [hl]
	or e
	cp b
	jp nz, wc07f

	sbc $b9
	sbc $c6
	ld a, a

jr_012_71c0:
	or a
	ret nz

	ret


	or [hl]
	or d
	ld d, a
	nop
	ld d, [hl]
	ld a, a
	rst $08
	cp c
	reti


	ld a, a
	push bc
	sbc $c3
	ld c, a
	add l
	xor h
	adc c
	ld a, a
	call c, $b2d9
	ld e, b
	nop
	or l
	sbc $c5
	ret


	cp d
	add $4f
	add c
	add c
	ld a, a
	call nz, Call_012_7fba
	ret nc

	cp [hl]
	sub $b3
	call nz, $ba55
	sbc $c5
	ld a, a
	call nz, Call_012_7fba
	rst $08
	inc sp
	ld a, a
	or a
	pop bc
	ldh [$df], a
	ret nz

	ld d, a
	ld [$1921], sp
	ld [hl], c
	call $3214

jr_012_7204:
	jp $0f6a


	nop
	call c, $e3b1
	xor h
	rst $20
	ld c, a
	inc [hl]
	or e
	cp b
	jp nz, Jump_012_7fc9

	push bc
	or [hl]
	rst $18
	jp $b255


	ld h, $b2
	call nz, wcb7f
	db $db
	or d
	ret


	ret z

	db $e3
	rst $20
	ld d, a
	nop
	or c
	ld d, [hl]
	ld a, a
	rst $08
	cp c
	jp $e7d9


	ld e, b
	nop
	cp d
	sbc $c5
	add $7f
	set 3, e
	or d
	call nz, $344f
	rst $18
	pop bc
	ld h, $7f
	inc sp
	jr z, jr_012_7204

	or [hl]
	ld a, a
	rst $08
	sub $df
	pop bc
	ldh [$b3], a
	ld d, a
	ld [$2521], sp
	ld [hl], c
	call $3214
	jp $0f6a


	nop
	or e
	call c, $e7ac
	ld a, a
	push bc
	sbc $30
	and $4f
	or a
	pop hl
	or e
	add $7f
	cp d
	or h
	db $dd
	ld a, a
	or [hl]
	cp c
	reti


	push bc
	rst $20
	ld d, a
	nop
	ld d, [hl]
	ld c, a
	cp d
	sbc $c5
	ld a, a
	ld d, h
	ld a, a
	inc sp
	jp z, $0f7f

	and b
	or [hl]
	ld e, b
	nop
	or h
	db $e3
	call nz, $e756
	ld a, a
	inc [hl]
	cp d
	or [hl]
	add $4f
	jp nz, $b2d6

	ld a, a
	ld d, h
	ld a, a
	or d
	push bc
	or d
	or [hl]
	ld d, [hl]
	ld a, a
	push bc
	ld d, a
	ld [$3121], sp
	ld [hl], c
	call $3214
	jp $0f6a


	nop
	push bc
	add $d6
	db $e3
	rst $20
	ld c, a
	inc [hl]
	or e
	cp b
	jp nz, Jump_012_7f33

	jp z, wda28

	ret nz

	ld a, a
	call nz, $30d3
	pop bc
	db $dd
	ld d, l
	cp d
	cp d
	inc sp
	ld a, a
	rst $08
	rst $18
	jp wc9d9


	sub $57
	nop
	call c, $bcc0
	ld a, a
	rst $08
	cp c
	ret nz

	ret


	and $58
	nop
	cp d
	ret


	ld a, a
	inc [hl]
	or e
	cp b
	jp nz, $4fc6

	cp l
	ld a, [hli]
	or d
	ld a, a
	add l
	adc l
	add [hl]
	ld h, $55
	or c
	reti


	rst $18
	jp $b77f


	or d
	jp $b77f


	ret nz

	ret


	ld d, a
	ld [$3d21], sp
	ld [hl], c
	call $3214
	jp $0f6a


	nop
	or c
	call nc, $b2bc
	ld a, a
	or l
	call nz, $26ba
	ld c, a
	inc [hl]
	or e
	cp b
	jp nz, Jump_012_7fdd

	or e
	db $db
	jp nz, wc3b2

	reti


	sbc $30
	ld d, l
	or a
	ret nc

	jp z, $e656

	ld d, a
	nop
	call nc, wdad7
	ret nz

	rst $20
	ld e, b
	nop
	ld a, $b8
	ld h, $7f
	ret nc

	ret nz

	ld a, a
	call nc, $e7c2
	ld c, a
	rst $08
	pop bc
	ld h, $b2
	ld a, a
	push bc
	or d
	rst $20
	ld d, l
	or c
	or d
	jp nz, $5e7f

	ld a, a
	jr nc, jr_012_736e

	rst $20
	ld d, a
	ld [$4921], sp
	ld [hl], c
	call $3214
	jp $0f6a


	nop
	sbc c
	sub h
	rrca
	ld a, a
	adc e
	sub d
	or b
	add $7f
	or d
	cp b
	add $ca
	ld c, a
	inc [hl]
	or e
	cp b
	jp nz, $55dd

	rst $00
	cp c
	push bc
	or d
	call nz, $307f
	jp nc, wd630

	rst $20
	ld d, a
	nop

jr_012_736e:
	ld a, $b8

jr_012_7370:
	ret


	ld a, a
	rst $08
	cp c
	jr nc, @+$5a

	nop
	inc c
	add hl, de
	xor h
	sub e
	jp z, $c37f

	ld a, [hli]
	call c, $e7b2
	ld c, a
	inc sp
	db $d3
	ld a, a
	jp nz, wcfb6

	or h
	rst $10
	jp c, $3ada

	ld d, l
	ret nz

	sub $d8
	add $7f
	push bc
	reti


	ld a, a
	ld d, h
	jr nc, jr_012_7370

	ld d, a
	nop
	inc c
	add hl, de
	xor h
	sub e
	ret


	ld c, a
	or a
	pop hl
	or e
	cp c
	jp nz, $ba7f

	or e
	add hl, hl
	or a
	add $7f
	pop bc
	pop hl
	or e
	or d
	rst $20
	ld d, a
	inc bc
	dec b
	inc hl
	ld c, $01
	rst $38
	inc hl
	rrca
	ld bc, $05ff
	dec b
	nop
	inc a
	dec bc
	ld de, $3c02
	rrca
	add hl, de
	inc bc
	inc a
	ld bc, $0f17
	ld c, $0d
	ld c, $0a
	add hl, bc
	rst $38
	ret nc

	ld b, c
	pop de
	ld bc, $1404
	db $10
	rst $38
	db $d3
	ld b, d
	ret


	inc bc
	ld b, $08
	ld [hli], a
	rst $38
	ret nc

	ld b, e
	rlc l
	inc c
	inc hl
	inc e
	rst $38
	pop de
	ld b, h
	ret nc

	ld bc, $1b06
	inc d
	rst $38
	ret nc

	ld b, l
	rlc [hl]
	inc b
	ld a, [de]
	dec bc
	rst $38
	ret nc

	ld b, [hl]
	jp z, $0407

	rra
	ld [hli], a
	rst $38
	db $d3
	ld b, a
	jp z, $3d08

	jr @+$08

	rst $38
	rst $38
	adc b
	inc d
	dec a
	ld b, $06
	rst $38
	rst $38
	adc c
	ld a, [bc]
	dec a
	inc hl
	daa
	rst $38
	rst $38
	adc d
	jr z, jr_012_745a

	dec de
	jr z, @+$01

	rst $38
	adc e
	dec e
	dec a
	dec h
	jr @+$01

	rst $38
	adc h
	inc d
	dec a
	inc h
	add hl, bc
	rst $38
	rst $38
	adc l
	call nc, wc8c4
	inc hl
	ld c, $c4
	ret z

	inc hl
	rrca
	add hl, sp
	rst $00
	dec b
	dec b
	adc l
	rst $00
	dec bc
	ld de, wc7c5
	rrca
	add hl, de
	rla
	jr nz, jr_012_7469

	ld hl, $2121
	ld hl, $2121
	ld hl, $2121
	ld hl, $2121
	ld hl, $2121
	ld hl, $1b22

jr_012_745a:
	ld bc, $0101
	ld bc, $1701
	ld bc, $0101
	ld bc, $0101
	ld bc, $0101

jr_012_7469:
	ld bc, $0101
	rla
	dec de
	ld bc, $0128
	ld bc, $1b01
	ld bc, $0101
	ld bc, $0101
	ld bc, $0101
	ld bc, $0101
	dec de
	dec de
	ld bc, $0101
	ld bc, $1b01
	ld bc, $0101
	ld bc, $0101
	ld bc, $0101
	ld bc, $0101
	dec de
	dec de
	ld bc, $0101
	ld bc, $1b01
	ld bc, $2001
	ld [hli], a
	jr nz, jr_012_74c4

	jr nz, @+$24

	ld bc, $0101
	ld bc, $1b1b
	ld bc, $0101
	ld bc, $1b01
	ld bc, $1728
	ld bc, $0101
	ld bc, $0101
	ld bc, $0101
	dec de
	dec de
	ld bc, $0101
	ld bc, $1b01

jr_012_74c4:
	ld bc, $1f01
	ld bc, $0101
	ld bc, $0101
	rla
	ld bc, $1b01
	dec de
	ld bc, $0101
	ld bc, $1f01
	ld bc, $1701
	ld bc, $2801
	ld bc, $0101
	rra
	ld bc, $1b01
	dec de
	ld bc, $0101
	ld bc, $0101
	ld bc, $1f01
	ld bc, $0117
	ld bc, $0101
	rla
	ld bc, $1b01
	dec de
	jr nz, jr_012_751d

	ld [hli], a
	rla
	ld bc, $0101
	ld bc, $0117
	rra
	ld bc, $0101
	ld bc, $011f
	ld bc, $1b1b
	ld bc, $0101
	dec de
	jr nz, @+$23

	ld hl, $1f22
	ld bc, $0117
	ld bc, $0101

jr_012_751d:
	rla
	ld bc, $1b01
	dec de
	ld bc, $0101
	rra
	ld bc, $2a01
	ld bc, $0101
	rra
	ld bc, $0101
	ld bc, $011f
	ld bc, $1b1b
	ld bc, $0101
	ld bc, $0101
	ld bc, $0101
	ld bc, $0102
	ld bc, $0101
	rla
	ld bc, $1b01
	dec de
	ld bc, $0101
	ld bc, $0101
	ld bc, $1614
	jr nz, @+$24

	ld bc, $1614
	ld bc, $011f
	ld bc, $1b1b
	ld bc, $0101
	ld bc, $0101
	ld bc, $1a18
	ld bc, $0101
	jr jr_012_7586

	ld bc, $0101
	ld bc, $1b1b
	ld bc, $0101
	ld bc, $1614
	ld bc, $1a18
	ld bc, $0101
	inc e
	ld e, $01
	ld bc, $0101
	dec de
	dec de

jr_012_7586:
	ld bc, $0101
	ld bc, $1a18
	ld bc, $1a18
	ld bc, $0101
	ld bc, $0101
	ld bc, $0101
	rra
	rra
	jr nz, @+$23

	ld hl, $1c22
	ld e, $24
	inc e
	ld e, $20
	ld hl, $2121
	ld hl, $2121
	ld hl, $2221
	ld de, $1412
	or l
	ld a, d
	ld [c], a
	db $76
	cp c
	ld [hl], l
	nop
	ld c, a
	ld a, d
	call $3c6c
	ld hl, $76f6
	ld de, $7611
	ld a, [wd586]
	call $31a8
	ld [wd586], a
	ld a, [wd775]
	bit 1, a
	ret z

	ld hl, $75e5
	call $3509
	jr nc, jr_012_75df

	ld hl, wd6ad
	set 4, [hl]
	ret


jr_012_75df:
	ld hl, wd6ad
	res 4, [hl]
	ret


	dec b
	dec bc
	dec b
	inc c
	dec b
	dec c
	dec b
	ld c, $06
	dec bc
	ld b, $0c
	ld b, $0d
	ld b, $0e
	rlca
	dec bc
	rlca
	inc c
	rlca
	dec c
	rlca
	ld c, $08
	dec bc
	ld [$080c], sp
	dec c
	ld [$ff0e], sp

Jump_012_7606:
	xor a
	ld [wcd66], a
	ld [wd586], a
	ld [wd97c], a
	ret


	dec e
	db $76
	sub h
	ld [hld], a
	cp l
	ld [hld], a
	ld c, b
	db $76
	ld l, b
	db $76
	xor c
	db $76
	ld a, [wd775]
	bit 1, a
	jp nz, Jump_012_763f

	ld a, [wd2e0]
	cp $08
	jp nz, Jump_012_763f

	ld a, [wd2e1]
	cp $0d
	jp nz, Jump_012_763f

	xor a
	ldh [$b4], a
	ld a, $01
	ldh [$8c], a
	jp $13f1


Jump_012_763f:
	ld a, [wd775]
	and $c0
	jp z, $3261

	ret


	ld a, [wd034]
	cp $ff
	jp z, Jump_012_7606

	call $0ebd
	call $3e07
	ld hl, wd775
	set 1, [hl]
	xor a
	ld [wcd66], a
	ld a, $00
	ld [wd586], a
	ld [wd97c], a
	ret


	ld a, $01
	ldh [$8c], a
	call $358b
	ld hl, $7698
	call $3509
	jr c, jr_012_7685

	ld hl, $769f
	call $3509
	jp nc, $3261

	ld de, $76a7
	jr jr_012_7688

jr_012_7685:
	ld de, $76a6

jr_012_7688:
	ld a, $01
	ldh [$8c], a
	call $3684
	ld a, $05
	ld [wd586], a
	ld [wd97c], a
	ret


	rlca
	inc c
	ld b, $0b
	dec b
	inc c
	rst $38
	rlca
	dec c
	ld b, $0e
	dec b
	ld c, $ff
	ret nz

	ld b, b
	rst $38
	ld a, [wd6af]
	bit 0, a
	ret nz

	ld a, $f0
	ld [wcd66], a
	ld a, $01
	ld [wcc3c], a
	ld a, $0a
	ldh [$8c], a
	call $13f1
	ld a, [wd775]
	bit 6, a
	jr z, jr_012_76cb

	ld a, $6e
	jr jr_012_76cd

jr_012_76cb:
	ld a, $6d

jr_012_76cd:
	ld [wcc4d], a
	ld a, $11
	call $3e9d
	xor a
	ld [wcd66], a
	ld a, $00
	ld [wd586], a
	ld [wd97c], a
	ret


	daa
	ld [hl], a
	inc l
	ld a, b
	adc e
	ld a, b
	bit 7, b
	ld a, [hli]
	ld a, c
	add l
	ld a, c
	rst $08
	ld a, c
	push bc
	rrca
	push bc
	rrca
	rla
	ld a, b
	ld [bc], a
	ld b, b
	ld [hl], l
	rst $10
	ld [hl], $78
	ld l, d
	ld a, b
	ld e, a
	ld a, b
	ld e, a
	ld a, b
	inc bc
	ld b, b
	ld [hl], l
	rst $10
	sub l
	ld a, b
	or [hl]
	ld a, b
	xor l
	ld a, b
	xor l
	ld a, b
	inc b
	ld b, b
	ld [hl], l
	rst $10
	push de
	ld a, b
	ld b, $79
	db $fc
	ld a, b
	db $fc
	ld a, b
	dec b
	ld b, b
	ld [hl], l
	rst $10
	inc [hl]
	ld a, c
	ld e, [hl]
	ld a, c
	ld d, l
	ld a, c
	ld d, l
	ld a, c
	rst $38
	ld [$75fa], sp
	rst $10
	bit 1, a
	jr z, jr_012_773b

	and $c0
	jr nz, jr_012_7766

	ld hl, $77ad
	call $3c79
	jr jr_012_776c

jr_012_773b:
	ld hl, $776f
	call $3c79
	ld hl, wd6ac
	set 6, [hl]
	set 7, [hl]
	ld hl, $7798
	ld de, $7798
	call $339c
	ldh a, [$8c]
	ld [wSpriteIndex], a
	call $33b2
	call $331f
	ld a, $03
	ld [wd586], a
	ld [wd97c], a
	jr jr_012_776c

jr_012_7766:
	ld hl, $77d3
	call $3c79

jr_012_776c:
	jp $0f6a


	nop
	cp d
	rst $10
	ld a, a
	rst $08
	jp $e7d6


	ld d, c
	cp d
	ret


	ld a, a
	add l
	adc l
	add [hl]

jr_012_777e:
	jp z, $3e4f

	cp b
	ld h, $7f
	ret nc

	jp nz, wc0b9

	sbc $30
	ld d, l
	call z, $c2c0
	ld a, a
	call nz, Call_012_7fd3
	ld a, $b8
	ret


	jr nc, jr_012_777e

	ld d, a
	nop
	call c, wdfb6
	ret nz

	rst $20
	ld c, a
	or l
	rst $08
	or h
	add $d3
	ld a, a
	call c, $c3b9
	ld a, a
	call nc, wd6d9
	ld e, b
	nop
	ld a, $b8
	call nz, $b57f
	rst $08
	or h
	inc sp
	ld c, a
	add l
	adc l
	add [hl]
	db $dd
	ld a, a
	rst $30
	cp d
	ld a, a
	dec l
	jp nz, $307f

	rst $20
	ld d, l
	set 0, h
	ret c

	ld a, a
	inc l
	jp nc, Jump_012_7fca

	rrca
	and b
	jr nc, @+$31

	rst $20
	ld d, a
	nop
	cp d
	cp d
	or [hl]
	rst $10
	ld a, a
	cp l
	ld a, [hli]
	cp b
	ld a, a
	call nz, $b2b5
	cp c
	inc [hl]
	ld c, a
	rlca
	and a
	xor e
	ld a, a
	adc a
	add d
	xor e
	add $55
	ld d, h
	ld a, a
	cp c
	sbc $b7
	pop hl
	or e
	inc l
	ld [c], a
	ld h, $7f
	or c
	reti


	ld d, c
	add l
	adc l
	add [hl]
	db $dd
	ld a, a
	sub $d0
	ld h, $b4
	rst $10
	cp [hl]
	reti


	ld c, a
	cp c
	sbc $b7
	pop hl
	or e
	db $d3
	ld a, a
	cp h
	jp Jump_012_7fd9


	rst $10
	cp h
	or d
	ld l, $57
	nop
	cp a
	jp c, $e02c

	ld c, a
	cp d
	jp c, Jump_012_7fca

	ld a, $b8
	ret


	ld a, a
	db $d3
	ret


	jr nc, @-$17

	ld d, b
	ld de, $0850

jr_012_782d:
	ld hl, $76f6
	call $3214
	jp $0f6a


	nop
	add l
	adc l
	add [hl]
	jp z, Jump_012_5e4f

	ld h, $7f
	ret nc

	jp nz, wd9b9

	ret


	jr nc, jr_012_782d

	ld d, l
	call z, $b6df
	jp nz, $bb7f

	cp [hl]
	jp c, $553a

	or d
	or d
	ld a, a
	or [hl]
	ret z

	db $d3
	or e
	cp c
	add $7f
	push bc
	reti


	rst $20
	ld d, a
	nop
	or e
	db $e3
	ld a, a
	or l
	cp d
	rst $18
	ret nz

	cpl
	rst $20
	ld e, b
	nop
	or l
	jp c, Jump_012_7fdd

	or l
	cp d
	rst $10
	cp [hl]
	ret nz

	ld c, a
	or l
	rst $08
	or h
	jp z, $5e7f

	ret


	ld d, l
	dec de
	and l
	xor h
	add a
	ld a, a
	ret c

	adc h
	sub e
	add $7f
	ret


	reti


	ld l, $57
	ld [$0221], sp
	ld [hl], a
	call $3214
	jp $0f6a


	nop
	ld d, h
	ld a, a
	sbc l
	sbc e
	or b
	add b
	ld c, a
	ld e, [hl]
	jp z, $ba55

	call c, $c3b8
	ld a, a
	jp nz, $b2d6

	ld a, a
	ret


	jr nc, @-$17

	ld d, a
	nop
	cp h
	cp b
	inc l
	rst $18
	ret nz

	or [hl]
	rst $20
	ld e, b
	nop
	cp b
	cp a
	rst $20
	ld c, a
	push bc
	or [hl]
	rst $08
	ld h, $7f
	jr nc, @-$2f

	rst $18
	pop bc
	ldh [$7f], a
	or d
	ret z

	or h
	cpl
	ld d, a
	ld [$0e21], sp
	ld [hl], a
	call $3214
	jp $0f6a


	nop
	or l
	jp c, $c1c0

	jp z, $304f

	or d
	inc l
	push bc
	ld a, a
	cp h
	ld a, [hli]
	call nz, Call_012_7fdd
	cp h
	jp wded9


	jr nc, @-$17

	ld d, l
	cp d
	inc [hl]
	db $d3
	jp z, $b57f

	or e
	pop bc
	call $b67f
	or h
	ret c

	push bc
	ld d, a
	nop
	push bc
	or [hl]
	push bc
	or [hl]
	ld a, a
	call nc, wc5d9
	ld e, b
	nop
	add l
	adc l
	add [hl]
	db $dd
	ld a, a
	ret nc

	jp nz, wc0b9

	rst $10
	ld c, a
	ld a, [hld]
	cp h
	ld [c], a
	jr nc, @-$45

	ld a, a
	or l
	cp h
	or h
	jp $bb55


	rst $18
	cp e
	call nz, $b67f
	or h
	reti


	sbc $30
	push bc
	rst $20
	ld d, a
	ld [$1a21], sp
	ld [hl], a
	call $3214
	jp $0f6a


	nop
	or l
	or e
	rst $18
	rst $20
	ld c, a
	or l
	call nz, wc9c5
	ld a, a
	cp [hl]
	or [hl]
	or d
	add $55
	cp b
	dec sp
	db $dd
	ld a, a
	jp nz, $badf

	pop de
	call nz, $b17f
	inc a
	push bc
	or d
	ld l, $e7
	ld d, a
	nop
	or c
	ret nz

	rst $08
	ld a, a
	cp b
	reti


	ld l, $58
	nop
	add $de
	add hl, hl
	sbc $26
	ld a, a
	or e
	rst $08
	jp c, Jump_012_7fd9

	rst $08
	or h
	or [hl]
	rst $10
	ld c, a
	cp d
	ret


	ld a, a
	or c
	ret nz

	ret c

	add $ca
	ld d, l
	ld d, h
	ld h, $7f
	cp l
	sbc $33
	ret nz

	ld a, a
	rst $10
	cp h
	or d
	ld l, $57
	ld [$013e], sp
	ld [wcc3c], a
	ld hl, $79c0
	call $3c79
	call $3636
	ld a, [wCurrentMenuItem]
	and a
	jr nz, jr_012_79bd

	ld bc, $2901
	call $3e5e
	jp nc, Jump_012_7a33

	call Call_012_7a18
	ld a, $6d
	ld [wcc4d], a
	ld a, $11
	call $3e9d
	ld hl, wd775
	set 6, [hl]
	ld a, $04
	ld [wd586], a
	ld [wd97c], a

jr_012_79bd:
	jp $0f6a


	nop
	cp d
	or e
	rst $10
	ret


	ld a, a
	add l
	adc l
	add [hl]
	add $7f
	cp l
	reti


	and $57
	ld [$013e], sp
	ld [wcc3c], a
	ld hl, $7a0a
	call $3c79
	call $3636
	ld a, [wCurrentMenuItem]
	and a
	jr nz, jr_012_7a07

	ld bc, $2a01
	call $3e5e
	jp nc, Jump_012_7a33

	call Call_012_7a18
	ld a, $6e
	ld [wcc4d], a
	ld a, $11
	call $3e9d
	ld hl, wd775
	set 7, [hl]
	ld a, $04
	ld [wd586], a
	ld [wd97c], a

jr_012_7a07:
	jp $0f6a


	nop
	or [hl]
	or d
	ret


	ld a, a
	add l
	adc l
	add [hl]
	add $7f
	cp l
	reti


	and $57

Call_012_7a18:
	ld hl, $7a1e
	jp $3c79


	nop
	ld d, d
	jp z, $504f

	ld bc, wcf45
	nop
	db $dd
	ld a, a
	jp $b2c6


	jp c, $e7c0

	ld d, b
	ld de, $500d

Jump_012_7a33:
	ld hl, $7a3c
	call $3c79
	jp $0f6a


	nop
	push bc
	db $e3
	sbc $30
	ld a, a
	db $d3
	or e
	ld a, a
	db $d3
	jp $b2c5


	inc l
	ldh [$de], a
	ld d, b
	dec c
	ld d, b
	inc bc
	inc b
	add hl, bc
	add hl, de
	ld bc, $113c
	dec d
	inc b
	inc a
	dec de
	rrca
	dec b
	inc a
	rlca
	dec b
	ld b, $3c
	nop
	add hl, bc
	inc c
	inc c
	db $10
	rst $38
	db $d3
	ld b, c
	ret nc

	ld [bc], a
	jr jr_012_7a81

	rrca
	rst $38
	ret nc

	ld b, d
	and $01
	jr jr_012_7a8f

	inc de
	rst $38
	ret nc

	ld b, e
	and $02
	jr @+$11

	ld hl, wd1ff
	ld b, h

jr_012_7a81:
	and $03
	jr jr_012_7a9a

	ld hl, wd2ff
	ld b, l
	and $04
	ld a, $0a
	db $10
	rst $38

jr_012_7a8f:
	rst $38
	ld b, $3e
	ld a, [bc]
	ld de, $ffff
	rlca
	dec a
	add hl, de
	dec e

jr_012_7a9a:
	rst $38
	rst $38
	adc b
	inc hl
	dec a
	add hl, bc
	ld hl, $ffff
	adc c
	ret


	ld [hl], a
	rst $00
	add hl, bc
	add hl, de
	db $dd
	rst $00
	ld de, $5c15
	ret z

	dec de
	rrca
	ld d, e
	rst $00
	rlca
	dec b
	ld l, $2e
	ld l, $2e
	ld l, $2e
	ld l, $2e
	ld l, $2e
	ld l, $2e
	ld l, $2e
	ld l, $2e
	ld l, $2e
	dec d
	dec d
	cpl
	inc d
	dec d
	dec d
	dec d
	dec d
	dec d
	dec d
	ld d, $2f
	ld l, $2e
	ld l, $2e
	ld l, $2e
	ld l, $2e
	add hl, de
	add hl, de
	cpl
	ld h, [hl]
	dec e
	dec e
	dec e
	ld b, l
	add hl, de
	ld b, h
	ld e, $2f
	ld b, c
	ld b, d
	ld l, $40
	ld b, c
	ld b, d
	ld l, $2e
	add hl, de
	add hl, de
	cpl
	add hl, de
	dec a
	add hl, de
	inc d
	dec d
	add hl, de
	dec d
	ld d, $2f
	add hl, de
	ld a, [de]
	ld bc, $291c
	ld e, $01
	ld bc, $1919
	cpl
	inc sp
	inc sp
	inc sp
	inc e
	dec e
	add hl, hl
	dec hl
	ld a, [de]
	cpl
	add hl, de
	ld a, [de]
	ld a, $01
	ld bc, $0d01
	ld bc, $2e2e
	ld l, $2e
	ld l, $2f
	add hl, de
	add hl, de
	add hl, de
	inc e
	ld e, $2f
	add hl, de
	ld a, [de]
	ld bc, $0101
	ld bc, $0101
	ld l, $2e
	ld bc, $0101
	cpl
	inc sp
	inc sp
	add hl, de
	inc sp
	inc sp
	cpl
	add hl, de
	add hl, de
	dec d
	dec d
	ld d, $14
	dec d
	dec d
	add hl, de
	jr nc, @+$03

	ld bc, $2e01
	ld l, $2e
	add hl, de
	ld l, $2e
	cpl
	add hl, de
	add hl, de
	ld b, h
	add hl, hl
	ld e, $1c
	add hl, hl
	ld b, l
	add hl, de
	ld a, [de]
	ld bc, $0101
	jr jr_012_7b73

	add hl, de
	add hl, de
	add hl, de
	add hl, de
	cpl
	dec a
	add hl, de
	ld c, b
	ld bc, $0101
	ld bc, $1949
	ld a, [de]
	ld bc, $0101
	jr @+$1b

	add hl, de
	inc sp
	inc sp
	inc sp
	cpl

jr_012_7b73:
	inc sp
	inc sp
	ld c, d
	ld b, a
	ld b, a
	ld b, a
	ld b, a
	ld c, e
	add hl, de
	ld a, [de]
	ld bc, $0101
	jr jr_012_7b9b

	add hl, de
	cpl
	ld l, $2e
	ld l, $2e
	ld b, b
	ld b, c
	ld b, d
	ld l, $2f
	ld l, $2e
	add hl, de
	ld a, [de]
	ld bc, $0101
	jr jr_012_7baf

	add hl, de
	cpl
	add hl, de
	add hl, de
	add hl, de

jr_012_7b9b:
	add hl, de
	inc e
	add hl, hl
	ld e, $19
	cpl
	add hl, de
	add hl, de
	add hl, de
	ld a, [de]
	ld bc, $0101
	jr jr_012_7bc3

	add hl, de
	cpl
	add hl, de
	add hl, de
	add hl, de

jr_012_7baf:
	add hl, de
	add hl, de
	add hl, de
	add hl, de
	add hl, de
	cpl
	add hl, de
	inc l
	dec e
	ld e, $01
	ld bc, $1801
	add hl, de
	add hl, de
	cpl
	dec a
	add hl, de
	add hl, de

jr_012_7bc3:
	add hl, de
	add hl, de
	add hl, de
	add hl, de
	add hl, de
	cpl
	add hl, de
	ld a, [de]
	ld bc, $0101
	ld bc, $1801
	add hl, de
	add hl, de
	jr c, @+$3a

	jr c, @+$3a

	jr c, jr_012_7c11

	jr c, @+$3a

	jr c, @+$3a

	add hl, de
	ld a, [de]
	ld bc, $0101
	ld bc, $1801
	add hl, de
	add hl, de
	add hl, sp
	add hl, sp
	add hl, sp
	add hl, sp
	add hl, sp
	add hl, sp
	add hl, sp
	add hl, sp
	add hl, sp
	add hl, sp
	add hl, de
	ld a, [de]
	ld bc, $0101
	ld bc, $1c01
	dec e
	dec e
	dec e
	dec e
	dec e
	dec e
	dec e
	dec e
	dec e
	dec e
	dec e
	dec e
	dec e
	ld e, $01
	ld bc, $0101
	ld bc, $0101
	ld bc, $0101

jr_012_7c11:
	ld bc, $0101
	ld bc, $0101
	ld bc, $0101
	ld bc, $0101
	inc bc
	dec c
	rrca
	ld h, c
	ld a, l
	inc l
	ld a, h
	add hl, hl
	ld a, h
	nop
	push af
	ld a, h
	jp $3c6c


	push bc
	rrca
	push bc
	rrca
	push bc
	rrca
	push bc
	rrca
	inc a
	ld a, h
	ld c, l
	ld a, h
	and a
	ld a, h
	ret c

	ld a, h
	nop
	or a
	pop hl
	or e
	cp c
	or d
	ld a, a
	sbc c
	add d
	adc h
	ld a, a
	ld d, [hl]
	ld a, a
	or d
	cp d
	or d
	ld d, a
	nop
	ld d, [hl]
	ld a, a
	or l
	ret z

	ld h, $b2
	ret


	ld a, a
	cp c
	or d
	inc l
	ld a, [hld]
	sbc $e7
	ld d, c
	adc d
	sbc e
	jp hl


	ret c

	ld a, a
	ld c, $e3
	xor e
	ret


	ld a, a
	or h
	sbc $c1
	ld [c], a
	or e
	ld h, $4f
	cp d
	ret


	ld a, a
	or c
	ret nz

	ret c

	inc sp
	ld d, l
	or d
	jp c, wdd3a

	ld a, a
	push bc
	cp b
	cp h
	ld a, a
	rst $08
	cp h
	ret nz

	rst $20
	ld d, c
	ret nc

	jp nz, wc0b9

	ld a, a
	or [hl]
	ret nz

	add $7f
	or l
	jp c, Jump_012_7fb2

	cp h
	rst $08
	cp l
	ld c, a
	ld d, [hl]
	ld a, a
	adc d
	sbc e
	jp hl


	ret c

	ld a, a
	ld c, $e3
	xor e
	ld a, a
	inc l
	pop de
	ld a, a
	or a
	ld [c], a
	cp b
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
	ld c, $e3
	xor e
	ld a, a
	ret nz

	sbc $b9
	sbc $7f
	add [hl]
	xor l
	xor e
	ld b, a
	db $e3
	xor e
	rst $20
	ld c, a
	sub e
	and a
	dec bc
	xor l
	db $e3
	ld a, a
	sbc c
	add d
	adc h
	db $dd
	ld a, a
	cp e
	ld h, $bf
	or e
	rst $20
	ld d, a
	nop
	cp d
	cp d
	jp z, $307f

	or d
	ld sp, hl
	ld a, a
	add e
	ret c

	add b
	ld c, a
	sla [hl]
	cp h
	ld a, a
	ld d, [hl]
	ld a, a
	pop bc
	pop hl
	or e
	or l
	or e
	ld a, a
	set 3, e
	ld a, [hld]
	ld d, a
	nop
	ld [$1400], sp
	nop
	jp c, $1500

	ld bc, $00da
	ld a, [de]
	ld [bc], a
	jp c, $1b00

	inc bc
	jp c, $1d16

	ld [bc], a
	call c, $1d17
	inc bc
	call c, $0303
	nop
	sbc $0b
	dec bc
	nop
	rst $18
	inc b
	inc c
	inc c
	dec b
	inc bc
	ld de, $0406
	ld a, [de]
	rlca
	ld d, $18
	ld [$3d04], sp
	jr jr_012_7d34

	rst $38
	rst $38
	add c
	ld de, $0b3d
	dec c
	rst $38
	rst $38
	add d
	add sp, $3d

jr_012_7d34:
	ld d, $16
	rst $38
	rst $38
	add e
	ld [hl], $3d
	dec bc
	rla
	rst $38
	rst $38
	add h
	ld b, b
	ld [$00c7], sp
	inc d
	ld [$00c7], sp
	dec d
	dec bc
	rst $00
	nop
	ld a, [de]
	dec bc
	rst $00
	nop
	dec de
	di
	rst $00
	ld d, $1d
	di
	rst $00
	rla
	dec e
	inc d
	rst $00
	inc bc
	inc bc
	ld l, h
	rst $00
	dec bc
	dec bc
	ld [bc], a
	dec de
	dec de
	ld [bc], a
	ld a, h
	ld a, h
	ld a, h
	ld a, h
	ld a, h
	ld [bc], a
	ld e, b
	ld [bc], a
	ld [bc], a
	ld e, b
	ld [bc], a
	dec hl
	add hl, de
	inc e
	ld a, [hli]
	dec de
	dec de
	dec de
	dec de
	inc sp
	dec de
	dec de
	dec de
	ld a, a
	add hl, hl
	ld a, [hl]
	dec hl
	dec de
	dec de
	ld a, [hli]
	dec de
	ld l, $1b
	dec de
	dec de
	add hl, hl
	dec de
	dec de
	ld a, a
	ld hl, $2b7e
	dec de
	dec de
	dec de
	dec de
	inc a
	dec a
	dec a
	ld a, $29
	dec de
	dec de
	ld a, a
	add hl, hl
	ld a, [hl]
	dec hl
	ld l, $1b
	dec de
	dec de
	ld b, h
	ld b, l
	ccf
	ld b, d
	dec de
	add hl, hl
	add hl, hl
	ld a, a
	dec de
	ld a, [hl]
	ld a, [hl]
	ld e, h
	ld d, c
	ld d, c
	ld d, d
	add hl, de
	inc e
	ld b, b
	ld b, d
	dec de
	dec de
	dec de
	ld a, a
	dec de
	ld a, [hl]
	ld a, [hl]
	ld e, d
	dec l
	dec l
	ld e, e
	dec de
	ld hl, $4240
	dec de
	dec de
	dec de
	ld a, a
	add hl, hl
	ld a, [hl]
	ld [bc], a
	dec de
	dec de
	dec de
	dec de
	dec de
	dec de
	ld b, b
	ld c, e
	dec a
	dec a
	ld a, $1b
	dec de
	ld a, [hl]
	ld a, a
	dec de
	inc a
	dec a
	dec a
	dec a
	dec a
	ld c, d
	ld b, e
	ld b, l
	ld d, e
	ld b, [hl]
	dec de
	inc l
	ld a, [hl]
	ld a, a
	inc hl
	ld b, h
	ld b, a
	ld b, l
	ld b, l
	ld b, l
	ld b, l
	ld b, [hl]
	dec de
	dec de
	dec de
	dec de
	dec de
	ld a, [hl]
	ld a, a
	ld bc, $0101
	ld bc, $0101
	ld bc, $7f01
	inc l
	dec de
	inc l
	dec de
	ld a, [hl]
	ld a, a
	dec de
	dec h
	ld bc, $2401
	dec h
	inc h
	dec de
	ld a, a
	dec de
	dec de
	ld hl, $571b
	ld [bc], a
	ld a, l
	ld a, l
	ld a, l
	ld a, l
	ld a, h
	ld a, h
	ld a, h
	ld a, l
	ld a, h
	ld a, h
	ld a, l
	ld a, l
	ld a, l
	ld a, l
	inc d
	inc b
	inc b
	sbc e
	ld a, a
	inc sp
	ld a, [hl]
	jr nc, @+$80

	nop
	add c
	ld a, a
	jp $3c6c


	dec [hl]
	ld a, [hl]
	ld [wd6fa], sp
	rst $10
	bit 0, a
	jr nz, jr_012_7e60

	ld hl, $7e69
	call $3c79
	ld bc, wc601
	call $3e5e
	jr nc, jr_012_7e58

	ld hl, $7edf
	call $3c79
	ld hl, wd7d6
	set 0, [hl]
	jr jr_012_7e66

jr_012_7e58:
	ld hl, $7f71
	call $3c79
	jr jr_012_7e66

jr_012_7e60:
	ld hl, $7efb
	call $3c79

jr_012_7e66:
	jp $0f6a


	nop
	or l
	or l
	xor h
	rst $20
	ld a, a
	or a
	ret nz

	or [hl]
	rst $20
	ld d, c
	cp d
	cp d
	jp z, $b27f

	pop bc
	ld a, [hld]
	sbc $7f
	or l
	cp b
	pop bc
	ld a, a
	ret


	ld c, a
	sub e
	and a
	dec bc
	xor l
	db $e3

jr_012_7e88:
	ld a, a
	sbc c
	add d
	adc h
	ld a, a
	jr nc, @-$28

	rst $20
	ld d, c
	adc d
	sbc e
	jp hl


	ret c

	ld a, a
	ld c, $e3
	xor e
	ret


	ld a, a
	add [hl]
	xor l
	xor e
	ld b, a
	db $e3
	xor e
	ld c, a
	set 2, a
	or d
	ret nz

	jp z, $b27f

	or d
	ld h, $7f
	jr nc, jr_012_7e88

	db $d3
	ld a, a
	cp d
	push bc
	or d
	ld d, l
	call z, wdeb1
	add $7f
	push bc
	rst $18
	jp Jump_012_7fc0


	call nz, wdbba
	jr nc, jr_012_7f14

	or d
	call nc, $e7e3
	ld a, a
	or l
	jp nc, wc433

	or e
	rst $20
	ld c, a
	cp h
	ld [c], a
	or e
	set 3, [hl]
	jp z, $b77f

	ret nc

	ret


	ld a, a
	db $d3
	ret


	jr nc, @-$17

	ld e, b
	nop
	ld d, d
	jp z, $b67f

	or [hl]
	ret c

	or d
	sbc $7f
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
	swap e
	sbc $9d
	adc e
	xor e
	or $f9
	jp z, wc57f

	ret nc

	ret


	ret c

	rst $20
	ld d, c
	push bc
	sbc $c4
	rst $20
	ld a, a
	ld d, h
	add $7f

jr_012_7f14:
	ret


	rst $18
	jp wd04f


	dec l
	ret


	ld a, a
	or e
	or h
	db $dd
	ld a, a
	cp l
	cp l
	jp nc, $e7d9

	ld d, c

Call_012_7f26:
Jump_012_7f26:
	cp h
	or [hl]
	db $d3
	ld a, a
	cp d

Call_012_7f2b:
	ret


jr_012_7f2c:
	ld a, a
	sbc l
	adc e
	xor e
	jp z, $c27f

Jump_012_7f33:
	or [hl]
	rst $18
	jp $4fd3


	push bc
	cp b

Jump_012_7f3a:
	ld a, a

Call_012_7f3b:
	push bc
	rst $10
	push bc
	or d
	ld a, a
	adc a
	add c
	ld b, d
	jr nc, jr_012_7f2c

	ld d, c
	cp d
	sbc $c5
	add $7f
	cp l
	ld a, [hld]
	rst $10
	cp h
	or d
	ld c, a
	cp h
	ld [c], a
	or e
	set 3, [hl]

Call_012_7f56:
Jump_012_7f56:
jr_012_7f56:
	db $dd
	ld a, a
	db $d3
	rst $10
	rst $18
	jp $bc7f


	rst $08
	rst $18
	ret nz

	ld d, l
	or a
	ret nc

	jp z, wc47f

	jp Jump_012_7fd3


	sub c
	add c
	jp $2fd9


	rst $20
	ld d, a
	nop
	or a
	ret nc

	ld a, a
	db $d3
	pop bc
	db $d3
	ret


	ld a, a
	or d
	rst $18
	ld b, h
	or d
	jr nc, jr_012_7f56

	ld d, a
	rla
	ld [bc], a
	rlca
	ld [bc], a
	ld b, $db
	rlca
	inc bc
	ld b, $db
	nop
	ld bc, $0727
	rlca
	rst $38
	ret nc

	ld bc, wc712
	rlca
	ld [bc], a
	ld [de], a
	rst $00
	rlca
	inc bc
	ld d, $12
	inc de
	ld d, $02
	rlca
	rlca
	ld [bc], a
	rlca
	rlca
	rlca
	rlca
	rlca
	inc c
	rlca
	rlca
	db $ed
	rst $30
	dec d
	ccf
	ld a, a
	sub e

Call_012_7fb1:
Jump_012_7fb1:
	ld e, l

Jump_012_7fb2:
	rlca
	dec [hl]
	jp hl


	add a

Jump_012_7fb6:
	ld c, c
	db $dd
	ld a, a

Jump_012_7fb9:
	dec d

Call_012_7fba:
	ld [hl], c

Call_012_7fbb:
	dec a
	ld e, e
	rst $28
	rst $18
	cp d

Jump_012_7fc0:
	rst $18
	sbc a

Jump_012_7fc2:
	ld a, l

Jump_012_7fc3:
	ld d, a
	db $f4

Jump_012_7fc5:
	rst $38

Call_012_7fc6:
Jump_012_7fc6:
	rst $18
	rst $08
	push af

Call_012_7fc9:
Jump_012_7fc9:
	xor c

Jump_012_7fca:
	ld de, $77bb
	rrca
	rla
	rst $30
	rst $28
	and a

Jump_012_7fd2:
	and c

Call_012_7fd3:
Jump_012_7fd3:
	ld e, l

Call_012_7fd4:
	dec sp
	cp a
	ld d, l
	pop bc

Call_012_7fd8:
	rlca

Call_012_7fd9:
Jump_012_7fd9:
	dec de
	db $fd
	xor c
	push af

Call_012_7fdd:
Jump_012_7fdd:
	pop af

Call_012_7fde:
Jump_012_7fde:
	cp a
	ld e, a
	ld [hl], e
	dec bc
	or e
	rra
	ld [hl], a
	sub a

Jump_012_7fe6:
	ld e, a

Jump_012_7fe7:
	call $77af
	rst $20
	cpl
	rst $20
	cp e
	ld a, e
	dec e
	ld a, l
	ld e, l
	cpl
	push de
	rst $00
	cp e
	ld a, l
	db $dd
	rst $30
	db $eb
	rst $08
	db $d3
	ld a, e
	rra
	ld e, e
	cp a
