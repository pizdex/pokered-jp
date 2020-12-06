; Disassembly of "pokemon-red-jp.gb"

SECTION "ROM Bank $01c", ROMX[$4000], BANK[$1c]

	call Call_01c_46c5
	call $03bf
	ld c, $64
	call $3781
	call $0167
	ld hl, $8800
	ld bc, $0400
	call Call_01c_4118
	ld hl, $9600
	ld bc, $0100
	call Call_01c_4118
	ld hl, $97e0
	ld bc, $0010
	ld a, $ff
	call $372a
	ld hl, wc3a0
	call Call_01c_4122
	ld hl, wc4b8
	call Call_01c_4122
	ld a, $c0
	ldh [rBGP], a
	call $0181
	ld a, $ff
	call $3788
	ld c, $1f
	ld a, $c7
	call $0e35
	ld c, $80
	call $3781
	xor a
	ld [wcd3d], a
	ld [wcd3e], a
	ld c, $1a

jr_01c_4058:
	push bc
	call Call_01c_413a
	pop bc
	dec c
	jr nz, jr_01c_4058

	ret


Call_01c_4061:
Jump_01c_4061:
	ld hl, $4107
	ld b, $04

jr_01c_4066:
	ld a, [hli]
	ldh [rBGP], a
	ld c, $05
	call $3781
	dec b
	jr nz, jr_01c_4066

	ret


Jump_01c_4072:
	xor a
	ldh [$ba], a
	call $3761
	call Call_01c_412a
	ld hl, wcd3e
	ld c, [hl]
	inc [hl]
	ld b, $00
	ld hl, $40d8
	add hl, bc
	ld a, [hl]
	ld [wcf78], a
	ld [wd092], a
	ld hl, wc420
	call $2f2e
	call $2d7f
	ld hl, $980c
	call Call_01c_410b
	xor a
	ldh [$ba], a
	call $376d
	ld hl, $9800
	call Call_01c_410b
	ld a, $a7
	ldh [rWX], a
	ld hl, $9c00
	call Call_01c_410b
	call Call_01c_412a
	ld a, $fc
	ldh [rBGP], a
	ld bc, $0007

jr_01c_40bc:
	call $40e7
	dec c
	jr nz, jr_01c_40bc

	ld c, $14

jr_01c_40c4:
	call $40e7
	ldh a, [rWX]
	sub $08
	ldh [rWX], a
	dec c
	jr nz, jr_01c_40c4

	xor a
	ldh [$b0], a
	ld a, $c0
	ldh [rBGP], a
	ret


	sbc d
	dec l
	ld [de], a
	inc hl
	sub h
	daa
	dec hl
	ld e, $98
	ld d, $4c
	ld h, e
	cp e
	rlca
	ld l, $60
	ld l, $20
	call Call_01c_40f9
	ld h, $00
	ld l, $70
	call Call_01c_40f9
	ld a, b
	add $08
	ld b, a
	ret


Call_01c_40f9:
jr_01c_40f9:
	ldh a, [rLY]
	cp l
	jr nz, jr_01c_40f9

	ld a, h
	ldh [rSCX], a

jr_01c_4101:
	ldh a, [rLY]
	cp h
	jr z, jr_01c_4101

	ret


	ret nz

	ret nc

	ldh [$f0], a

Call_01c_410b:
	ld a, l
	ldh [$bc], a
	ld a, h
	ldh [$bd], a
	ld a, $01
	ldh [$ba], a
	jp $3e07


Call_01c_4118:
jr_01c_4118:
	ld [hl], $00
	inc hl
	inc hl
	dec bc
	ld a, b
	or c
	jr nz, jr_01c_4118

	ret


Call_01c_4122:
	ld bc, $0050
	ld a, $7e
	jp $372a


Call_01c_412a:
	ld hl, wc3f0
	ld bc, $00c8
	ld a, $7f
	jp $372a


Call_01c_4135:
Jump_01c_4135:
	ld c, $a8
	jp $3781


Call_01c_413a:
	ld hl, wcd3d
	ld e, [hl]
	inc [hl]
	ld d, $00
	ld hl, $41f2
	add hl, de
	add hl, de
	ld e, [hl]
	inc hl
	ld d, [hl]
	ld hl, wc421
	push hl
	push de
	call Call_01c_412a
	pop de
	pop hl

jr_01c_4153:
	ld a, [de]
	inc de
	cp $ff
	jr z, jr_01c_4194

	cp $fe
	jr z, jr_01c_4197

	cp $fd
	jr z, jr_01c_419d

	cp $fc
	jr z, jr_01c_41a0

	cp $fb
	jr z, jr_01c_41a3

	cp $fa
	jr z, jr_01c_41af

	push de
	push hl
	push hl
	push af
	ld hl, $4280
	add a
	ld c, a
	ld b, $00
	add hl, bc
	ld e, [hl]
	inc hl
	ld d, [hl]
	pop af
	ld hl, $445a
	ld c, a
	ld b, $00
	add hl, bc
	ld c, [hl]
	ld b, $ff
	pop hl
	add hl, bc
	call $0405
	pop hl
	ld bc, $0028
	add hl, bc
	pop de
	jr jr_01c_4153

jr_01c_4194:
	call Call_01c_4061

jr_01c_4197:
	call Call_01c_4135
	jp Jump_01c_4072


jr_01c_419d:
	call Call_01c_4061

jr_01c_41a0:
	jp Jump_01c_4135


jr_01c_41a3:
	push de
	ld b, $01
	ld hl, $4986
	call $3620
	pop de
	jr jr_01c_4153

jr_01c_41af:
	ld c, $10
	call $3781
	call Call_01c_412a
	ld de, $4485
	ld hl, $9600
	ld bc, $1c0a
	call $02dd
	ld hl, wc444
	ld de, $41d8
	call $0405
	ld hl, wc458
	ld de, $41e5
	call $0405
	jp Jump_01c_4061


	ld h, b
	ld a, a
	ld h, d
	ld a, a
	ld h, h
	ld a, a
	ld a, a
	ld h, h
	ld a, a
	ld h, [hl]
	ld a, a
	ld l, b
	ld d, b
	ld h, c
	ld a, a
	ld h, e
	ld a, a
	ld h, l
	ld a, a
	ld a, a
	ld h, l
	ld a, a
	ld h, a
	ld a, a
	ld l, c
	ld d, b
	ld h, $42
	add hl, hl
	ld b, d
	inc l
	ld b, d
	cpl
	ld b, d
	inc [hl]
	ld b, d
	jr c, @+$44

	dec sp
	ld b, d
	ld a, $42
	ld b, c
	ld b, d
	ld b, l
	ld b, d
	ld c, c
	ld b, d
	ld c, h
	ld b, d
	ld d, c
	ld b, d
	ld d, h
	ld b, d
	ld e, b
	ld b, d
	ld e, l
	ld b, d
	ld h, c
	ld b, d
	ld h, l
	ld b, d
	ld l, c
	ld b, d
	ld l, l
	ld b, d
	ld [hl], c
	ld b, d
	ld [hl], h
	ld b, d
	ld [hl], a
	ld b, d
	ld a, d
	ld b, d
	ld a, l
	ld b, d
	ld a, a
	ld b, d
	inc e
	nop
	rst $38
	dec e
	ld bc, $1eff
	ld [bc], a
	db $fd
	ld e, $03
	inc b
	dec b
	cp $1f
	rlca
	ld [$20ff], sp
	dec b
	db $fd
	ld hl, $fe05
	ld [hli], a
	ld bc, $23ff
	rlca
	ld [$23fd], sp
	inc d
	inc bc
	cp $24
	ld bc, $24fd
	ld [de], a
	inc de
	dec c
	cp $25
	ld b, $ff
	ld h, $01
	ld b, $fd
	ld h, $15
	inc de
	ld [de], a
	cp $27
	jr jr_01c_4279

	db $fd
	daa
	ld a, [de]
	dec de
	cp $28
	ld c, $0f
	db $fd
	jr z, jr_01c_427b

	ld de, $28fc
	ld d, $17
	cp $29
	add hl, bc
	db $fd
	add hl, hl
	ld a, [bc]
	db $fc
	add hl, hl
	dec bc

jr_01c_4279:
	cp $2a

jr_01c_427b:
	inc c
	rst $38
	ei
	rst $38
	ld a, [$42d6]
	db $db
	ld b, d
	db $e3
	ld b, d
	db $ec
	ld b, d
	push af
	ld b, d
	cp $42
	ld [$1043], sp
	ld b, e
	jr jr_01c_42d5

	jr nz, jr_01c_42d7

	add hl, hl
	ld b, e
	ld [hld], a
	ld b, e
	inc a
	ld b, e
	ld b, l
	ld b, e
	ld c, a
	ld b, e
	ld d, a
	ld b, e
	ld h, b
	ld b, e
	ld l, c
	ld b, e
	ld [hl], e
	ld b, e
	ld a, [hl]
	ld b, e
	adc b
	ld b, e
	sub d
	ld b, e
	sbc e
	ld b, e
	and l
	ld b, e
	xor [hl]
	ld b, e
	or a
	ld b, e
	cp a
	ld b, e
	ret z

	ld b, e
	ret nc

	ld b, e
	jp c, $e143

	ld b, e
	rst $20
	ld b, e
	ld a, [c]
	ld b, e
	rst $30
	ld b, e
	ld [bc], a
	ld b, h
	ld a, [bc]
	ld b, h
	dec d
	ld b, h
	ld a, [de]
	ld b, h
	dec h
	ld b, h
	ld l, $44
	scf
	ld b, h
	ld b, d
	ld b, h
	ld c, d

jr_01c_42d5:
	ld b, h
	adc h

jr_01c_42d7:
	adc a
	xor h
	sbc e
	ld d, b
	ret nz

	inc l
	ret c

	ld a, a
	cp e
	call nz, $50bc
	or l
	or l
	ret nz

	ld a, a
	ret nz

	cp c
	ret


	ret c

	ld d, b
	db $d3
	ret c

	db $d3
	call nz, $bc7f
	add hl, hl
	or a
	ld d, b
	call c, wc5c0
	dec a
	ld a, a
	jp wd4c2


	ld d, b
	rst $08
	cp l
	jr nc, jr_01c_4381

	inc l
	pop hl
	sbc $b2
	pop bc
	ld d, b
	add $bc
	ret


	ld a, a
	cp d
	or e
	inc l
	ld d, b
	cp l
	daa
	db $d3
	ret c

	ld a, a
	cp c
	sbc $50
	add $bc
	jr nc, jr_01c_439b

	or c
	jp nz, $50ba

	ret nc

	call nc, wc4d3
	ld a, a
	cp h
	add hl, hl
	reti


	ld d, b
	or [hl]
	call c, wc128
	ld a, a
	ret nz

	or [hl]
	cp h
	ld d, b
	or d
	cp h
	jp z, $7fd7

	jp nz, $b6c8

	dec l
	ld d, b
	call nc, $b3cf
	pop bc
	ld a, a
	set 3, e
	cp h
	ld d, b
	inc l
	sbc $c5
	or d
	ld a, a
	set 3, e
	push de
	or a
	ld d, b
	res 7, h
	jr nc, jr_01c_43d2

	ret nz

	jp nz, $50d4

	cp e
	or [hl]
	or d
	ld a, a
	call nc, wcbbd
	db $db
	ld d, b
	call nc, $28cf
	pop bc
	ld a, a
	call c, wd9c0
	ld d, b
	call nc, wd3cf
	call nz, $b67f
	dec l
	push de
	or a
	ld d, b
	ret nz

	add $28
	pop bc
	ld a, a
	ret c

	ld [c], a
	or e
	cp l
	cp c
	ld d, b
	ret


	ret


	pop de

jr_01c_4381:
	rst $10
	ld a, a
	call z, wcbd0
	db $db
	ld d, b
	call z, wdc2c
	rst $10
	ld a, a
	db $d3
	call nz, wd0cc
	ld d, b
	rst $08
	jp nz, wcfbc

	ld a, a
	cp c
	sbc $2c
	ld d, b

jr_01c_439b:
	call nz, $bbd0
	call c, $b17f
	or a
	set 0, h
	ld d, b
	or [hl]
	call c, wc4d3
	ld a, a
	set 3, e
	cp h
	ld d, b
	or [hl]
	cp c
	or d
	ld a, a
	or c
	or a
	sub $bc
	ld d, b
	jp nz, wd4c1

	ld a, a
	or [hl]
	ld [hld], a
	or a
	ld d, b
	push bc
	or [hl]
	pop de
	rst $10
	ld a, a
	ret nz

	cp c
	or l
	ld d, b
	push de
	jr nc, jr_01c_444a

	rst $08
	cp e
	ret nc

	jp nz, $4350

	adc b

jr_01c_43d2:
	xor h
	sub e
	and c
	xor e
	adc h
	adc a
	db $e3
	ld d, b
	ld [de], a
	or b
	and a
	add a
	adc a
	db $e3
	ld d, b
	ld b, d
	xor b
	rlca
	and l
	sbc a
	ld d, b
	add [hl]
	xor l
	and l
	add a
	adc a
	db $e3
	ld [de], a
	ld a, [bc]
	add c
	xor e
	ld d, b
	or l
	sbc $26
	cp b
	ld d, b
	adc d
	add d
	xor e
	inc de
	ld a, a
	add e
	sbc e
	db $eb
	add a
	sub e
	ld d, b
	ld [$9fe3], sp
	ld [de], a
	ld a, [bc]
	add c
	xor e
	ld d, b
	and c
	xor e
	adc h
	adc a
	db $e3
	ld a, a
	ld [de], a
	ld a, [bc]
	add c
	xor e
	ld d, b
	adc e
	sub h
	ret c

	add h
	ld d, b
	ld b, b
	and l
	and b
	db $e3
	adc a
	ld a, a
	cp [hl]
	rst $18
	jp $50b2


	sbc l
	xor h
	ld b, d
	ld a, a
	ld [de], a
	ld a, [bc]
	add c
	xor e
	ld d, b
	ld [de], a
	add hl, de
	xor h
	rlca
	ld a, a
	ld b, d
	and a
	add c
	ld d, b
	adc h
	ld b, a
	adc e
	xor l
	and [hl]
	ld [hl], h
	adc d
	xor e
	add a
	adc h
	ld d, b
	ld b, d
	xor b
	ld [de], a
	xor [hl]
	db $e3
	adc d
	db $e3
	ld d, b

jr_01c_444a:
	add e
	rlca
	dec c
	add a
	sub d
	or b
	dec de
	ld a, a
	ld b, d
	xor b
	ld [de], a
	xor [hl]
	db $e3
	adc d
	db $e3
	ld d, b
	rst $38
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
	db $fd
	db $fc
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
	cp $fc
	rst $38
	db $fc
	db $fd
	db $fc
	cp $fc
	db $fd
	db $fd
	db $fc
	db $fd
	ld a, [$ffff]
	cp $fe
	rst $38
	rst $38
	inc a
	inc a
	inc a
	inc a
	inc a
	inc a
	inc a
	inc a
	inc a
	inc a
	inc a
	inc a
	inc a
	inc a
	inc a
	inc a
	inc a
	inc a
	inc a
	inc a
	inc a
	inc a
	inc a
	inc a
	jr z, jr_01c_44cd

	rst $20
	rst $20
	rst $20
	rst $20
	rst $20
	rst $20
	rst $20
	rst $20
	rst $20
	rst $20
	rst $20
	rst $20
	rst $38
	rst $38
	rst $38
	rst $38
	rst $38
	rst $38
	rst $20
	rst $20
	rst $20
	rst $20
	rst $20
	rst $20
	rst $20
	rst $20
	rst $20
	rst $20
	rst $20
	rst $20
	and l
	and l
	rst $38
	rst $38
	cp $fe
	rst $38
	rst $38
	ldh [$e0], a

jr_01c_44cd:
	ldh [$e0], a
	ldh [$e0], a
	cp $fe
	db $fc
	db $fc
	cp $fe
	ldh [$e0], a
	ldh [$e0], a
	ldh [$e0], a
	ldh [$e0], a
	rst $38
	rst $38
	rst $38
	rst $38
	cp $fe
	pop bc
	pop bc
	push bc
	push bc
	rst $20
	rst $20
	rst $20
	rst $20
	rst $30
	rst $30
	rst $30
	rst $30
	rst $38
	rst $38
	rst $38
	rst $38
	rst $38
	rst $38
	rst $38
	rst $38
	rst $28
	rst $28
	rst $28
	rst $28
	rst $20
	rst $20
	rst $20
	rst $20
	db $e3
	db $e3
	and e
	and e
	ld hl, sp-$08
	db $fc
	db $fc
	cp $fe
	xor $ee
	rst $20
	rst $20
	rst $20
	rst $20
	rst $20
	rst $20
	rst $20
	rst $20
	rst $20
	rst $20
	rst $20
	rst $20
	rst $20
	rst $20
	rst $20
	rst $20
	xor $ee
	cp $fe
	db $fc
	db $fc
	ld hl, sp-$08

Call_01c_4525:
	ld a, $f9
	ldh [rOBP0], a
	ld a, $a4
	ldh [rOBP1], a
	ld de, $4587
	ld hl, $8a00
	ld bc, $1e01
	call $02dd
	ld de, $4687
	ld hl, $8a10
	ld bc, $1e01
	call $02dd
	ld de, $46b5
	ld hl, $8a20
	ld bc, $1c01
	call $02dd
	ld hl, $4665
	ld de, wOAMBuffer + $60
	ld bc, $0040
	call $01bb
	ld hl, $46a5
	ld de, wOAMBuffer
	ld bc, $0010
	jp $01bb


	call Call_01c_4525
	ld a, $c2
	call $0e45
	ld hl, wOAMBuffer
	ld bc, $a004

jr_01c_4577:
	push hl
	push bc

jr_01c_4579:
	ld a, [hl]
	add $04
	ld [hli], a
	ld a, [hl]
	add $fc
	ld [hli], a
	inc hl
	inc hl
	dec c
	jr nz, jr_01c_4579

	ld c, $01
	call $0359
	pop bc
	pop hl
	ret c

	ld a, [hl]
	cp $50
	jr nz, jr_01c_4595

	jr jr_01c_4577

jr_01c_4595:
	cp b
	jr nz, jr_01c_4577

	ld hl, wOAMBuffer
	ld c, $04
	ld de, $0004

jr_01c_45a0:
	ld [hl], $a0
	add hl, de
	dec c
	jr nz, jr_01c_45a0

	ld b, $03

jr_01c_45a8:
	ld hl, $ff48
	rrc [hl]
	rrc [hl]
	ld c, $0a
	call $0359
	ret c

	dec b
	jr nz, jr_01c_45a8

	ld de, wOAMBuffer
	ld a, $18

jr_01c_45bd:
	push af
	ld hl, $4613
	ld bc, $0004
	call $01bb
	pop af
	dec a
	jr nz, jr_01c_45bd

	xor a
	ld [wcd3d], a
	ld hl, $4617
	ld c, $06

jr_01c_45d4:
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	push bc
	push hl
	ld hl, wOAMBuffer + $50
	ld c, $04

jr_01c_45df:
	ld a, [de]
	cp $ff
	jr z, jr_01c_45fa

	ld [hli], a
	inc de
	ld a, [de]
	ld [hli], a
	inc de
	inc hl
	inc hl
	dec c
	jr nz, jr_01c_45df

	ld a, [wcd3d]
	cp $18
	jr z, jr_01c_45fa

	add $06
	ld [wcd3d], a

jr_01c_45fa:
	call Call_01c_4644
	push af
	ld hl, wOAMBuffer + $10
	ld de, wOAMBuffer
	ld bc, $0050
	call $01bb
	pop af
	pop hl
	pop bc
	ret c

	dec c
	jr nz, jr_01c_45d4

	and a
	ret


	db $00, $00, $a2, $90, $23, $46, $2b, $46, $33, $46, $3b, $46, $43, $46, $43, $46
	db $68, $30, $68, $40, $68, $58, $68, $78, $68, $38, $68, $48, $68, $60, $68, $70
	db $68, $34, $68, $4c, $68, $54, $68, $64, $68, $3c, $68, $5c, $68, $6c, $68, $74
	db $ff

Call_01c_4644:
	ld b, $08

jr_01c_4646:
	ld hl, wOAMBuffer + $5c
	ld a, [wcd3d]
	ld de, $fffc
	ld c, a

jr_01c_4650:
	inc [hl]
	add hl, de
	dec c
	jr nz, jr_01c_4650

	ldh a, [rOBP1]
	xor $a0
	ldh [rOBP1], a
	ld c, $03
	call $0359
	ret c

	dec b
	jr nz, jr_01c_4646

	ret


	db $48, $50, $8d, $00, $48, $58, $8e, $00, $50, $50, $8f, $00, $50, $58, $90, $00
	db $58, $50, $91, $00, $58, $58, $92, $00, $60, $30, $80, $00, $60, $38, $81, $00
	db $60, $40, $82, $00, $60, $48, $83, $00, $60, $50, $93, $00, $60, $58, $84, $00
	db $60, $60, $85, $00, $60, $68, $83, $00, $60, $70, $81, $00, $60, $78, $86, $00
	db $00, $a0, $a0, $10, $00, $a8, $a0, $30, $08, $a0, $a1, $10, $08, $a8, $a1, $30
	db $04

	nop

	db $1f

	nop

	db $0e

	nop

	db $0a

	db $20

	db $00

jr_01c_46be:
	db $f8

	db $00

	ld [hl], b

	db $00

	ld d, b

	db $00

	nop

Call_01c_46c5:
	call Call_01c_4974
	call $03bf
	ld c, $64
	call $3781
	call $36ca
	call $36ea
	call $0167
	ld hl, $9800
	ld bc, $0800
	ld a, $7f
	call $372a
	call $0181
	ld hl, $ff40
	set 3, [hl]
	xor a
	ld hl, wcc5b
	ld bc, $0060
	call $372a
	xor a
	ld [wcfb2], a
	ldh [$d7], a
	ld [wd087], a
	ld [wd2d7], a
	ld [wcd40], a
	inc a
	ldh [$ba], a
	ld hl, wd521
	ld a, [hl]
	inc a
	jr z, jr_01c_4710

	inc [hl]

jr_01c_4710:
	ld a, $90
	ldh [$b0], a
	ld c, $1f
	ld a, $ca
	call $0e35
	ld hl, wd124
	ld c, $ff

jr_01c_4720:
	ld a, [hli]
	cp $ff
	jr z, jr_01c_4766

	inc c
	push hl
	push bc
	ld [wcd3d], a
	ld a, c
	ld [wcd3e], a
	ld hl, wd14c
	ld bc, $002c
	call $3ad1
	ld a, [hl]
	ld [wcd3f], a
	call Call_01c_479f
	call Call_01c_4808
	ld c, $50
	call $3781
	ld hl, wc4a6
	ld b, $03
	ld c, $0e
	call $03d2
	ld hl, wc4cf
	ld de, $4790
	call $0405
	ld c, $b4
	call $3781
	call $0b5a
	pop bc
	pop hl
	jr jr_01c_4720

jr_01c_4766:
	ld a, c
	inc a
	ld hl, wcc5b
	ld bc, $0010
	call $3ad1
	ld [hl], $ff
	call Call_01c_7f69
	xor a
	ld [wcd3d], a
	inc a
	ld [wcd40], a
	call Call_01c_479f
	call Call_01c_489b
	call Call_01c_4974
	xor a
	ldh [$b0], a
	ld hl, $ff40
	res 3, [hl]
	ret


	inc sp
	sbc $34
	or e
	ld a, a
	or d
	ret c

	ld a, a
	or l
	jp nc, wc433

	or e
	rst $20
	ld d, b

Call_01c_479f:
	call $03bf
	ld a, $d0
	ldh [$af], a
	ld a, $c0
	ldh [$ae], a
	ld a, [wcd3d]
	ld [wcf78], a
	ld [wd092], a
	ld [wcfc0], a
	ld [wcf17], a
	ld a, [wcd40]
	and a
	jr z, jr_01c_47c4

	call Call_01c_4862
	jr jr_01c_47d2

jr_01c_47c4:
	ld hl, wc410
	call $2f2e
	call $2d7f
	ld a, $04
	call $3e9d

jr_01c_47d2:
	ld b, $0b
	ld c, $00
	call $3e1f
	ld a, $e4
	ldh [rBGP], a
	ld c, $31
	call Call_01c_4891
	ld d, $a0
	ld e, $04
	ld a, [wcf15]
	and a
	jr z, jr_01c_47ee

	sla e

jr_01c_47ee:
	call Call_01c_47fc
	xor a
	ldh [$af], a
	ld c, a
	call Call_01c_4891
	ld d, $00
	ld e, $fc

Call_01c_47fc:
jr_01c_47fc:
	call $0b31
	ldh a, [$ae]
	add e
	ldh [$ae], a
	cp d
	jr nz, jr_01c_47fc

	ret


Call_01c_4808:
	ld a, [wcd3e]
	ld hl, wd257
	call $2fb1
	call Call_01c_4817
	jp Jump_01c_4955


Call_01c_4817:
	ld hl, wc3dc
	ld b, $08
	ld c, $09
	call $03d2
	ld hl, wc42d
	ld de, $4850
	call $0405
	ld hl, wc406
	ld de, wcd68
	call $0405
	ld a, [wcd3f]
	ld hl, wc433
	call $2f1a
	ld a, [wcd3d]
	ld [wd092], a
	ld hl, wc45a
	ld a, $4b
	call $3e9d
	ld a, [wcd3d]
	jp $2dc7


	ld a, a
	and a
	dec a
	and [hl]
	di
	ld c, [hl]
	adc a
	add c
	ld b, d
	rst $30
	di
	ld c, [hl]
	adc a
	add c
	ld b, d
	ld hl, sp-$0d
	ld d, b

Call_01c_4862:
	ld de, $5941
	ld a, $04
	call $3735
	ld hl, $a188
	ld de, $a000
	ld bc, $0310
	call $01bb
	ld de, $9000
	call $30b9
	ld de, $7e50
	ld a, $0c
	call $3735
	ld a, $03
	call $3e9d
	ld de, $9310
	call $30b9
	ld c, $01

Call_01c_4891:
	ld b, $00
	ld hl, wc410
	ld a, $31
	jp $3e9d


Call_01c_489b:
	ld hl, wd6c6
	set 3, [hl]
	ld a, $56
	call $3e9d
	ld hl, wc3f0
	ld b, $06
	ld c, $0a
	call $03d2
	ld hl, wc3a5
	ld b, $02
	ld c, $08
	call $03d2
	ld hl, wc3cf
	ld de, wd11d
	call $0405
	ld hl, wc419
	ld de, $4910
	call $0405
	ld hl, wc431
	ld de, wd97d
	ld bc, $0103
	call $3c8f
	ld [hl], $6d
	inc hl
	ld de, wd97f
	ld bc, $8102
	call $3c8f
	ld hl, wc455
	ld de, $4917
	call $0405
	ld hl, wc46c
	ld de, wd2cb
	ld c, $83
	call $2fc4
	ld [hl], $f0
	ld hl, $4922
	call Call_01c_4908
	ld hl, $4949
	call Call_01c_4908
	ld hl, wcc5d

Call_01c_4908:
	call $3c79
	ld c, $78
	call $3781
	ld b, d
	and a
	add c
	inc l
	or [hl]
	sbc $50
	ret


	cp d
	rst $18
	ret nz

	ld a, a
	or l
	cp d
	ld [hld], a
	or [hl]
	or d
	ld d, b
	nop
	ld d, h
	dec l
	or [hl]
	sbc $6d
	ret nc

	jp nz, wc0b9

	or [hl]
	dec l
	ld d, b
	add hl, bc
	ld e, e
	call z, $0013
	ld c, a
	ld a, a
	ld a, a
	ld a, a
	ld a, a
	ld a, a
	ld a, a
	ld a, a
	jp nz, wcfb6

	or h
	ret nz

	or [hl]
	dec l
	ld d, b
	add hl, bc
	ld e, h
	call z, $5013
	nop
	ld d, h
	dec l
	or [hl]
	sbc $7f
	set 4, d
	or e
	or [hl]
	ld l, l
	ld d, a

Jump_01c_4955:
	ld hl, wcc5b
	ld bc, $0010
	ld a, [wcd3e]
	call $3ad1
	ld a, [wcd3d]
	ld [hli], a
	ld a, [wcd3f]
	ld [hli], a
	ld e, l
	ld d, h
	ld hl, wcd68
	ld bc, $0006
	jp $01bb


Call_01c_4974:
	ld a, $0a
	ld [wcfaf], a
	ld [wcfb0], a
	ld a, $ff
	ld [wcfae], a
	jp $0b5a


	ld de, $4a08
	ld hl, $87c0
	ld bc, $1c03
	call $02dd
	ld hl, wcfb2
	ld a, [hl]
	push af
	ld [hl], $ff
	push hl
	ldh a, [rOBP1]
	push af
	ld a, $e0
	ldh [rOBP1], a
	ld hl, wOAMBuffer + $84
	ld de, $4a28
	call Call_01c_4a54
	ld a, $04
	ld [wcfae], a
	ld a, $ff
	ld [wc0ee], a
	call $0e45

jr_01c_49b5:
	ld a, [wcfae]
	and a
	jr nz, jr_01c_49b5

	ld a, [wd123]
	ld b, a

jr_01c_49bf:
	call Call_01c_4a54
	ld a, $9e
	call $0e45
	ld c, $1e
	call $3781
	dec b
	jr nz, jr_01c_49bf

	ld a, [wc0ef]
	cp $1f
	ld [wc0f0], a
	jr nz, jr_01c_49e6

	ld a, $ff
	ld [wc0ee], a
	call $0e45
	ld a, $02
	ld [wc0ef], a

jr_01c_49e6:
	ld a, $e8
	ld [wc0ee], a
	call $0e45
	ld d, $28
	call Call_01c_4a44

jr_01c_49f3:
	ld a, [wc026]
	cp $e8
	jr z, jr_01c_49f3

	ld c, $20
	call $3781
	pop af
	ldh [rOBP1], a
	pop hl
	pop af
	ld [hl], a
	jp $0ebd


	db $00

	nop

	db $00

	nop

	db $7e

	nop

	db $7e

	nop

	db $7e

	nop

	db $00

	nop

	db $00

	nop

	db $00

	nop

	db $00

	nop

	db $00

	nop

	db $0c

	inc c

	db $12

	db $1e

	db $21

	ccf

	db $33

	dec l

	db $1e

	ld [de], a

	db $0c

	inc c

	db $24, $34, $7c, $10, $2b, $30, $7d, $10, $2b

	db $38

	db $7d

	db $30

	db $30

	db $30

	db $7d

	db $10
	jr nc, @+$3a

	ld a, l
	jr nc, @+$37

	jr nc, @+$7f

	db $10
	dec [hl]
	jr c, jr_01c_4ac0

	db $30

Call_01c_4a44:
	ld b, $08

jr_01c_4a46:
	ldh a, [rOBP1]
	xor d
	ldh [rOBP1], a

jr_01c_4a4b:
	ld c, $0a
	call $3781
	dec b
	jr nz, jr_01c_4a46

	ret


Call_01c_4a54:
	ld a, [de]
	inc de
	ld [hli], a
	ld a, [de]
	inc de
	ld [hli], a
	ld a, [de]
	inc de
	ld [hli], a
	ld a, [de]
	inc de
	ld [hli], a
	ret


	call Call_01c_4c40
	ld a, $ec
	ld [wc104], a
	call $3e07
	push hl
	call $0b78
	ld hl, wd6b2
	bit 7, [hl]
	res 7, [hl]
	jr nz, jr_01c_4ab9

	ld a, $a0
	call $0e45
	ld hl, wd6b1
	bit 4, [hl]
	res 4, [hl]
	pop hl
	jr nz, jr_01c_4aaf

	call Call_01c_4afb
	ld a, $a3
	call $0e45
	call Call_01c_4cd8
	ld a, b
	and a
	jr nz, jr_01c_4aac

	ld hl, wcd3d
	xor a
	ld [hli], a
	inc a
	ld [hli], a
	ld a, $08
	ld [hli], a
	ld [hl], $ff
	ld hl, wcd48
	call Call_01c_4c81

jr_01c_4aa9:
	call $0d9b

jr_01c_4aac:
	jp Jump_01c_4cc3


jr_01c_4aaf:
	ld c, $32
	call $3781

jr_01c_4ab4:
	call Call_01c_4afb
	jr jr_01c_4aac

jr_01c_4ab9:
	pop hl
	ld de, $4d80
	ld hl, $8000

jr_01c_4ac0:
	ld bc, $050c
	call $02dd
	call Call_01c_4c28
	ld a, $a4
	call $0e45
	ld hl, wcd3d
	xor a
	ld [hli], a
	ld a, $0c
	ld [hli], a
	ld [hl], $08
	ld de, $4ae3
	call Call_01c_4bff
	call $23ae
	jr jr_01c_4aa9

	dec b
	sbc b
	rrca
	sub b
	jr @-$76

	jr nz, @-$7e

	daa
	ld a, b
	dec l
	ld [hl], b
	ld [hld], a
	ld l, b
	ld [hl], $60
	add hl, sp
	ld e, b
	dec sp
	ld d, b
	inc a
	ld c, b
	inc a
	ld b, b

Call_01c_4afb:
	ld hl, wcd3d
	ld a, $10
	ld [hli], a
	ld a, $3c
	ld [hli], a
	call Call_01c_4cd0
	ld [hl], a
	jp Jump_01c_4ca6


	call Call_01c_4c40
	call Call_01c_4cd8
	ld a, b
	and a
	jr z, jr_01c_4b40

	dec a
	jp nz, Jump_01c_4bce

jr_01c_4b19:
	ld a, $9f
	call $0e45
	ld hl, wcd3d
	ld a, $f0
	ld [hli], a
	ld a, $ec
	ld [hli], a
	call Call_01c_4cd0
	ld [hl], a
	call Call_01c_4ca6
	call Call_01c_4cd8
	ld a, b
	dec a
	jr z, jr_01c_4b3a

	ld c, $0a
	call $3781

jr_01c_4b3a:
	call $0b5a
	jp Jump_01c_4cc3


jr_01c_4b40:
	ld a, $04
	call $2368
	ld a, [wd6b1]
	bit 6, a
	jr z, jr_01c_4b61

	ld hl, wcd3d
	ld a, $10
	ld [hli], a
	ld a, $ff
	ld [hli], a
	xor a
	ld [hli], a
	ld [hl], $a1
	ld hl, wcd48
	call Call_01c_4c81
	jr jr_01c_4b19

jr_01c_4b61:
	call Call_01c_4c28
	ld hl, wcd3d
	ld a, $ff
	ld [hli], a
	ld a, $08
	ld [hli], a
	ld [hl], $0c
	call Call_01c_4bff
	ld a, $a4
	call $0e45
	ld hl, wcd3d
	xor a
	ld [hli], a
	ld a, $0c
	ld [hli], a
	ld [hl], $0c
	ld de, $4ba0
	call Call_01c_4bff
	ld c, $28
	call $3781
	ld hl, wcd3e
	ld a, $0b
	ld [hli], a
	ld [hl], $08
	ld de, $4bb8
	call Call_01c_4bff
	call $0b5a
	jp Jump_01c_4cc3


	inc a
	ld c, b
	inc a
	ld d, b
	dec sp
	ld e, b
	ld a, [hld]
	ld h, b
	add hl, sp
	ld l, b
	scf
	ld [hl], b
	scf
	ld a, b
	inc sp
	add b
	jr nc, jr_01c_4b3a

	dec l
	sub b
	ld a, [hli]
	sbc b
	daa
	and b
	ld a, [de]
	sub b
	add hl, de
	add b
	rla
	ld [hl], b
	dec d
	ld h, b
	ld [de], a
	ld d, b
	rrca
	ld b, b
	inc c
	jr nc, jr_01c_4bd0

	jr nz, jr_01c_4bce

	stop
	nop
	ldh a, [rP1]

Jump_01c_4bce:
jr_01c_4bce:
	ld a, $ff

jr_01c_4bd0:
	ld [wcfb2], a
	ld a, [wOAMBuffer + $02]
	ld [wOAMBuffer + $0a], a
	ld a, [wOAMBuffer + $06]
	ld [wOAMBuffer + $0e], a
	ld a, $a0
	ld [wOAMBuffer], a
	ld [wOAMBuffer + $04], a
	ld c, $02
	call $3781
	ld a, $a0
	ld [wOAMBuffer + $08], a
	ld [wOAMBuffer + $0c], a
	call $0b5a
	ld a, $01
	ld [wcfb2], a
	jp Jump_01c_4cc3


Call_01c_4bff:
jr_01c_4bff:
	ld a, [wcd3f]
	xor $01
	ld [wcd3f], a
	ld [wc102], a
	call $3e07
	ld a, [wcd3d]
	cp $ff
	jr z, jr_01c_4c1e

	ld hl, wc104
	ld a, [de]
	inc de
	ld [hli], a
	inc hl
	ld a, [de]
	inc de
	ld [hl], a

jr_01c_4c1e:
	ld a, [wcd3e]
	dec a
	ld [wcd3e], a
	jr nz, jr_01c_4bff

	ret


Call_01c_4c28:
	ld de, $4d80
	ld hl, $8000
	ld bc, $050c
	call $02dd
	ld de, $4e40
	ld hl, $8800
	ld bc, $050c
	jp $02dd


Call_01c_4c40:
	ld a, [wc102]
	ld [wcd50], a
	ld a, [wc104]
	ld [wcd4f], a
	ld hl, $4c64
	ld de, wcd48
	ld bc, $0004
	call $01bb
	ld a, [wc102]
	ld hl, wcd48

jr_01c_4c5e:
	cp [hl]
	inc hl
	jr nz, jr_01c_4c5e

	dec hl
	ret


	nop
	ld [$0c04], sp

Call_01c_4c68:
	ld a, [hl]
	ld [wc102], a
	push hl
	ld hl, wcd48
	ld de, wcd47
	ld bc, $0004
	call $01bb
	ld a, [wcd47]
	ld [wcd4b], a
	pop hl
	ret


Call_01c_4c81:
jr_01c_4c81:
	call Call_01c_4c68
	ld a, [wcd3d]
	ld c, a
	and $03
	jr nz, jr_01c_4c94

	ld a, [wcd40]
	cp $ff
	call nz, $0e45

jr_01c_4c94:
	ld a, [wcd3e]
	add c
	ld [wcd3d], a
	ld c, a
	ld a, [wcd3f]
	cp c
	ret z

	call $3781
	jr jr_01c_4c81

Call_01c_4ca6:
Jump_01c_4ca6:
jr_01c_4ca6:
	call Call_01c_4c68
	ld a, [wcd3d]
	ld c, a
	ld a, [wc104]
	add c
	ld [wc104], a
	ld c, a
	ld a, [wcd3e]
	cp c
	ret z

	ld a, [wcd3f]
	ld c, a
	call $3781
	jr jr_01c_4ca6

Jump_01c_4cc3:
	ld a, [wcd4f]
	ld [wc104], a
	ld a, [wcd50]
	ld [wc102], a
	ret


Call_01c_4cd0:
	ld a, [wcf15]
	xor $01
	inc a
	inc a
	ret


Call_01c_4cd8:
	ld b, $00
	ld hl, $4cfa
	ld a, [wd2e6]
	ld c, a

jr_01c_4ce1:
	ld a, [hli]
	cp $ff
	jr z, jr_01c_4cf5

	cp c
	jr nz, jr_01c_4cef

	ld a, [wc45c]
	cp [hl]
	jr z, jr_01c_4cf3

jr_01c_4cef:
	inc hl
	inc hl
	jr jr_01c_4ce1

jr_01c_4cf3:
	inc hl
	ld b, [hl]

jr_01c_4cf5:
	ld a, b
	ld [wcd51], a
	ret


	db $16

	jr nz, jr_01c_4cfe

	db $16

jr_01c_4cfe:
	db $11
	ld [bc], a

	db $11

	ld [hli], a
	ld [bc], a

	db $10

	ld d, l
	db $01

	db $ff

	ld c, $0a
	call $3781
	ld hl, wd6b5
	set 6, [hl]
	ld de, $4180
	ld hl, $8000
	ld bc, $050c
	call $02dd
	ld a, $04
	ld hl, $4dd2
	call Call_01c_5c35
	ld a, [wc102]
	ld c, a
	ld b, $00
	ld hl, $4dc2
	add hl, bc
	ld de, wOAMBuffer + $9c
	ld bc, $0004
	call $01bb
	ld c, $64
	call $3781
	ld a, [wcd3d]
	and a
	ld hl, $4d9b
	jr z, jr_01c_4d87

	cp $02
	ld hl, $4da4
	jr z, jr_01c_4d87

	ld b, $0a

jr_01c_4d4f:
	ld hl, wc104
	call Call_01c_4d96
	ld hl, wOAMBuffer + $9c
	call Call_01c_4d96
	call $3e07
	dec b
	jr nz, jr_01c_4d4f

	ld a, [wc102]
	cp $04
	jr nz, jr_01c_4d6d

	ld a, $a0
	ld [wOAMBuffer + $9c], a

jr_01c_4d6d:
	ld hl, wcd4f
	xor a
	ld [hli], a
	ld [hl], a
	ld a, $4c
	call $3e9d
	ld a, [wc102]
	cp $04
	jr nz, jr_01c_4d84

	ld a, $44
	ld [wOAMBuffer + $9c], a

jr_01c_4d84:
	ld hl, $4db2

jr_01c_4d87:
	call $3c79
	ld hl, wd6b5
	res 6, [hl]
	call $23ae
	call $36ca
	ret


Call_01c_4d96:
	ld a, [hl]
	xor $01
	ld [hl], a
	ret


	nop
	jp nz, wc5da

	or d
	push bc
	db $e3
	ld d, [hl]
	ld e, b
	nop
	push bc
	add $d3
	ld a, a
	or d
	push bc
	or d
	ld a, a
	ret nc

	ret nz

	or d
	ld d, [hl]
	ld e, b
	nop
	or l
	rst $18
	rst $20
	ld c, a
	res 6, d
	jp Jump_01c_7fd9


	res 6, d
	jp $e7d9


	ld e, b
	ld e, e
	ld c, h
	db $fd
	nop
	ld b, h
	ld c, h
	db $fd
	nop
	ld d, b
	ld b, b
	cp $00
	ld d, b
	ld e, b
	cp $20
	add hl, de
	ld h, b
	ld [bc], a
	ld e, $20
	add b
	add hl, sp
	ld h, b
	ld [bc], a
	ld e, $60
	add b
	ld e, c
	ld h, b
	ld [bc], a
	ld e, $a0
	add b
	ld a, c
	ld h, b
	inc bc
	ld e, $d0
	adc a

	ld a, [wd693]
	ld c, a
	inc a
	cp $10
	jr nc, jr_01c_4e01

	ld [wd693], a
	ld b, $00
	ld hl, $4e26
	add hl, bc
	ld a, [hl]
	ld [wc104], a
	ret


jr_01c_4e01:
	ld a, [wcfac]
	cp $00
	ret nz

	call $0ebd
	call $3e07
	xor a
	ldh [$b4], a
	ldh [$b3], a
	ldh [$b2], a
	ld [wd693], a
	ld hl, wd6b5
	res 6, [hl]
	ld hl, wd6af
	res 7, [hl]
	xor a
	ld [wcd66], a
	ret


	db $38, $36, $34, $32, $31, $30, $30, $30, $31, $32, $33, $34, $36, $38, $3c

	inc a
	ld a, $e4
	ldh [rOBP1], a
	call Call_01c_4e96
	ld hl, wc3ac
	ld bc, $0707
	call $0374
	call $3e07
	xor a
	ldh [$ba], a
	ld a, $91
	ld [wcee4], a
	ld a, $01
	ldh [$f3], a
	ld hl, $57ca
	ld b, $1e
	call $3620
	ld d, $80
	call Call_01c_4a44

jr_01c_4e62:
	ld c, $0a
	call $3781
	ldh a, [rOBP1]
	sla a
	sla a
	ldh [rOBP1], a
	jr nz, jr_01c_4e62

	call $0188
	call Call_01c_4e96
	ld b, $e4

jr_01c_4e79:
	ld c, $0a
	call $3781
	ldh a, [rOBP1]
	srl b
	rra
	srl b
	rra
	ldh [rOBP1], a
	ld a, b
	and a
	jr nz, jr_01c_4e79

	ld a, $01
	ldh [$ba], a
	call $3e07
	jp $0188


Call_01c_4e96:
	ld de, $9000
	ld hl, $8000
	ld bc, $0031
	call $02dd
	ld a, $10
	ld [wd05f], a
	ld a, $70
	ld [wd05e], a
	ld hl, wOAMBuffer
	ld bc, $0606
	ld d, $08

jr_01c_4eb4:
	push bc
	ld a, [wd05f]
	ld e, a

jr_01c_4eb9:
	ld a, e
	add $08
	ld e, a
	ld [hli], a
	ld a, [wd05e]
	ld [hli], a
	ld a, d
	ld [hli], a
	ld a, $10
	ld [hli], a
	inc d
	dec c
	jr nz, jr_01c_4eb9

	inc d
	ld a, [wd05e]
	add $08
	ld [wd05e], a
	pop bc
	dec b
	jr nz, jr_01c_4eb4

	ret


	ld a, $01
	ldh [$ba], a
	call $3e07
	xor a
	ldh [$b0], a
	dec a
	ld [wcfb2], a
	call $0b31
	ld hl, wc102
	ldh a, [$8c]
	ld c, a
	ld b, $00
	ld de, $0010

jr_01c_4ef5:
	ld a, [hl]
	cp $ff
	jr z, jr_01c_4efb

	inc b

jr_01c_4efb:
	add hl, de
	dec c
	jr nz, jr_01c_4ef5

	ld hl, wOAMBuffer + $10
	ld c, $09

jr_01c_4f04:
	ld a, b
	swap a
	cp l
	jr z, jr_01c_4f15

	push hl
	push bc
	ld bc, $0010
	xor a
	call $372a
	pop bc
	pop hl

jr_01c_4f15:
	ld de, $0010
	add hl, de
	dec c
	jr nz, jr_01c_4f04

	call $3e07
	call Call_01c_4fb9
	ld bc, $0000
	ld a, [wd0f0]
	cp $04
	jr z, jr_01c_4f35

	call Call_01c_4f4e
	call Call_01c_4f5b
	call Call_01c_4f85

jr_01c_4f35:
	ld hl, $4f3e
	add hl, bc
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl


	db $90, $52, $de, $4f

	ld d, b
	ld d, d
	sbc $4f

	db $20, $52, $eb, $50

	ld [$3651], a
	ld d, c

Call_01c_4f4e:
	ld a, [wd036]
	cp $c8
	jr nc, jr_01c_4f58

	res 0, c
	ret


jr_01c_4f58:
	set 0, c
	ret


Call_01c_4f5b:
	ld hl, wd12c

jr_01c_4f5e:
	ld a, [hli]
	or [hl]
	jr nz, jr_01c_4f68

	ld de, $002b
	add hl, de
	jr jr_01c_4f5e

jr_01c_4f68:
	ld de, $001f
	add hl, de
	ld a, [hl]
	add $03
	ld e, a
	ld a, [wd0ec]
	sub e
	jr nc, jr_01c_4f7e

	res 1, c
	ld a, $01
	ld [wcd47], a
	ret


jr_01c_4f7e:
	set 1, c
	xor a
	ld [wcd47], a
	ret


Call_01c_4f85:
	ld a, [wd2dd]
	ld e, a
	ld hl, $4fab

jr_01c_4f8c:
	ld a, [hli]
	cp $ff
	jr z, jr_01c_4f97

	cp e
	jr nz, jr_01c_4f8c

jr_01c_4f94:
	set 2, c
	ret


jr_01c_4f97:
	ld hl, $4fb0

jr_01c_4f9a:
	ld a, [hli]
	cp $ff
	jr z, jr_01c_4fa8

	ld d, a
	ld a, [hli]
	cp e
	jr c, jr_01c_4f9a

	ld a, e
	cp d
	jr nc, jr_01c_4f94

jr_01c_4fa8:
	res 2, c
	ret


	db $33, $52, $c0, $e8, $ff, $3b, $3d

	ld e, a
	db $76
	adc l
	sub a
	rst $08
	db $e4
	rst $38

Call_01c_4fb9:
	ld hl, $8ff0
	ld de, $4fc5
	ld bc, $1c01
	jp $02dd


	db $ff

	rst $38

	db $ff

	rst $38

	db $ff

	rst $38

	db $ff

	rst $38

	db $ff

	rst $38

	db $ff

	rst $38

	db $ff

	rst $38

	db $ff

	rst $38

Call_01c_4fd5:
Jump_01c_4fd5:
	ld a, $ff
	ldh [rBGP], a
	ldh [rOBP0], a
	ldh [rOBP1], a
	ret


	ld a, [wcd47]
	and a
	jr z, jr_01c_4fe9

	call Call_01c_5016
	jr jr_01c_500b

jr_01c_4fe9:
	ld hl, wc472
	ld a, $03
	ld [wd07c], a
	ld a, l
	ld [wd078], a
	ld a, h
	ld [wd077], a
	ld b, $78

jr_01c_4ffb:
	ld c, $03

jr_01c_4ffd:
	push bc
	call Call_01c_5065
	pop bc
	dec c
	jr nz, jr_01c_4ffd

	call $0b31
	dec b
	jr nz, jr_01c_4ffb

jr_01c_500b:
	call Call_01c_4fd5
	xor a
	ld [wd078], a
	ld [wd077], a
	ret


Call_01c_5016:
	ld a, $07
	ld [wcd3d], a
	ld hl, wc3a0
	ld c, $11
	ld de, $0014
	call Call_01c_504c
	inc c
	jr jr_01c_502f

jr_01c_5029:
	ld de, $0014
	call Call_01c_504c

jr_01c_502f:
	inc c
	ld de, $0001
	call Call_01c_504c
	dec c
	dec c
	ld de, $ffec
	call Call_01c_504c
	inc c
	ld de, $ffff
	call Call_01c_504c
	dec c
	dec c
	ld a, c
	and a
	jr nz, jr_01c_5029

	ret


Call_01c_504c:
	push bc

jr_01c_504d:
	ld [hl], $ff

Call_01c_504f:
Jump_01c_504f:
	add hl, de
	push bc
	ld a, [wcd3d]
	dec a
	jr nz, jr_01c_505c

	call Call_01c_5285
	ld a, $07

jr_01c_505c:
	ld [wcd3d], a
	pop bc
	dec c
	jr nz, jr_01c_504d

	pop bc
	ret


Call_01c_5065:
	ld bc, $ffec
	ld de, $0014
	ld a, [wd078]
	ld l, a
	ld a, [wd077]
	ld h, a
	ld a, [wd07c]
	cp $00
	jr z, jr_01c_5091

	cp $01
	jr z, jr_01c_509b

	cp $02
	jr z, jr_01c_50a5

	cp $03
	jr z, jr_01c_50af

jr_01c_5086:
	ld [hl], $ff

jr_01c_5088:
	ld a, l
	ld [wd078], a
	ld a, h
	ld [wd077], a
	ret


jr_01c_5091:
	dec hl
	ld a, [hl]
	cp $ff
	jr nz, jr_01c_50b9

	inc hl
	add hl, bc
	jr jr_01c_5086

jr_01c_509b:
	add hl, de
	ld a, [hl]
	cp $ff
	jr nz, jr_01c_50b9

	add hl, bc
	dec hl
	jr jr_01c_5086

jr_01c_50a5:
	inc hl
	ld a, [hl]
	cp $ff
	jr nz, jr_01c_50b9

	dec hl
	add hl, de
	jr jr_01c_5086

jr_01c_50af:
	add hl, bc
	ld a, [hl]
	cp $ff
	jr nz, jr_01c_50b9

	add hl, de
	inc hl
	jr jr_01c_5086

jr_01c_50b9:
	ld [hl], $ff
	ld a, [wd07c]
	inc a
	cp $04
	jr nz, jr_01c_50c4

	xor a

jr_01c_50c4:
	ld [wd07c], a
	jr jr_01c_5088

Call_01c_50c9:
jr_01c_50c9:
	ld hl, $50de

jr_01c_50cc:
	ld a, [hli]
	cp $01

Call_01c_50cf:
	jr z, jr_01c_50da

	ldh [rBGP], a
	ld c, $02
	call $3781
	jr jr_01c_50cc

jr_01c_50da:
	dec b
	jr nz, jr_01c_50c9

	ret


	db $f9, $fe, $ff, $fe, $f9, $e4, $90, $40, $00, $40, $90, $e4, $01

	ld c, $09

jr_01c_50ed:
	push bc
	xor a
	ldh [$ba], a
	ld hl, wc42c
	ld de, wc440
	ld bc, $ffd8
	call Call_01c_517e
	ld hl, wc468
	ld de, wc454
	ld bc, $0028
	call Call_01c_517e
	ld hl, wc3a8
	ld de, wc3a9
	ld bc, $fffe
	call Call_01c_51ab
	ld hl, wc3ab
	ld de, wc3aa
	ld bc, $0002
	call Call_01c_51ab
	ld a, $01
	ldh [$ba], a
	ld c, $06
	call $3781
	pop bc
	dec c
	jr nz, jr_01c_50ed

	call Call_01c_4fd5
	ld c, $0a
	jp $3781


	ld c, $09
	xor a
	ldh [$ba], a

jr_01c_513b:
	push bc
	ld hl, wc4e0
	ld de, wc4f4
	ld bc, $ffd8
	call Call_01c_517e
	ld hl, wc3b4
	ld de, wc3a0
	ld bc, $0028
	call Call_01c_517e
	ld hl, wc3b2
	ld de, wc3b3
	ld bc, $fffe
	call Call_01c_51ab
	ld hl, wc3a1
	ld de, wc3a0
	ld bc, $0002
	call Call_01c_51ab
	call Call_01c_5285
	call $3e07
	pop bc
	dec c
	jr nz, jr_01c_513b

	call Call_01c_4fd5
	ld c, $0a
	jp $3781


Call_01c_517e:
	ld a, c
	ld [wcd3d], a
	ld a, b
	ld [wcd3e], a
	ld c, $08

jr_01c_5188:
	push bc
	push hl
	push de
	ld bc, $0014
	call $01bb
	pop hl
	pop de
	ld a, [wcd3d]
	ld c, a
	ld a, [wcd3e]
	ld b, a
	add hl, bc
	pop bc
	dec c
	jr nz, jr_01c_5188

	ld l, e
	ld h, d
	ld a, $ff
	ld c, $14

jr_01c_51a6:
	ld [hli], a
	dec c
	jr nz, jr_01c_51a6

	ret


Call_01c_51ab:
	ld a, c
	ld [wcd3d], a
	ld a, b
	ld [wcd3e], a
	ld c, $09

jr_01c_51b5:
	push bc
	push hl
	push de
	ld c, $12

jr_01c_51ba:
	ld a, [hl]
	ld [de], a
	ld a, e
	add $14
	jr nc, jr_01c_51c2

	inc d

jr_01c_51c2:
	ld e, a
	ld a, l
	add $14
	jr nc, jr_01c_51c9

	inc h

jr_01c_51c9:
	ld l, a
	dec c
	jr nz, jr_01c_51ba

	pop hl
	pop de
	ld a, [wcd3d]
	ld c, a
	ld a, [wcd3e]
	ld b, a
	add hl, bc
	pop bc
	dec c
	jr nz, jr_01c_51b5

	ld l, e
	ld h, d
	ld de, $0014
	ld c, $12

Call_01c_51e3:
jr_01c_51e3:
	ld [hl], $ff
	add hl, de
	dec c
	jr nz, jr_01c_51e3

	ret


	ld c, $12
	ld hl, wc3a0
	ld de, wc4f5
	xor a
	ldh [$ba], a

jr_01c_51f5:
	push bc
	push hl
	push de
	push de
	call Call_01c_5216
	pop hl
	call Call_01c_5216
	call Call_01c_5285
	pop hl
	ld bc, $ffec
	add hl, bc
	ld e, l
	ld d, h
	pop hl
	ld bc, $0014
	add hl, bc
	pop bc
	dec c
	jr nz, jr_01c_51f5

	jp Jump_01c_4fd5


Call_01c_5216:
	ld c, $0a

jr_01c_5218:
	ld [hl], $ff
	inc hl
	inc hl
	dec c
	jr nz, jr_01c_5218

	ret


	ld c, $14
	ld hl, wc3a0
	ld de, wc3c7
	xor a
	ldh [$ba], a

jr_01c_522b:
	push bc
	push hl
	push de
	push de
	call Call_01c_5244
	pop hl
	call Call_01c_5244
	call Call_01c_5285
	pop de
	pop hl
	pop bc
	inc hl
	dec de
	dec c
	jr nz, jr_01c_522b

	jp Jump_01c_4fd5


Call_01c_5244:
	ld c, $09
	ld de, $0028

jr_01c_5249:
	ld [hl], $ff
	add hl, de
	dec c
	jr nz, jr_01c_5249

	ret


	call Call_01c_5269
	ld bc, $000a
	ld hl, $52cd
	call Call_01c_5272
	ld c, $0a
	ld b, $01
	ld hl, $52ff
	call Call_01c_5272
	jp Jump_01c_4fd5


Call_01c_5269:
	ld b, $03
	call Call_01c_50c9
	xor a
	ldh [$ba], a
	ret


Call_01c_5272:
jr_01c_5272:
	push bc
	push hl
	ld a, b
	call Call_01c_52bc
	pop hl
	ld bc, $0005
	add hl, bc
	call Call_01c_5285
	pop bc
	dec c
	jr nz, jr_01c_5272

	ret


Call_01c_5285:
	ld a, $01
	ldh [$ba], a
	call $3e07
	xor a
	ldh [$ba], a
	ret


	call Call_01c_5269
	ld c, $0a
	ld hl, $52cd
	ld de, $52ff

jr_01c_529b:
	push bc
	push hl
	push de
	push de
	xor a
	call Call_01c_52bc
	pop hl
	ld a, $01
	call Call_01c_52bc
	pop hl
	ld bc, $0005
	add hl, bc
	ld e, l
	ld d, h
	pop hl
	add hl, bc
	call Call_01c_5285
	pop bc
	dec c
	jr nz, jr_01c_529b

	jp Jump_01c_4fd5


Call_01c_52bc:
	ld [wcd3d], a
	ld a, [hli]
	ld [wcd3e], a
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp Jump_01c_5331


	db $01, $6a, $53, $2a, $c4, $01, $70, $53, $ef, $c3, $01, $7a, $53, $b2, $c3, $01
	db $8c, $53, $ae, $c3, $01, $9a, $53, $aa, $c3, $00, $9a, $53, $a9, $c3, $00, $8c
	db $53, $a5, $c3, $00, $7a, $53, $a1, $c3, $00, $70, $53, $dc, $c3, $00, $6a, $53
	db $19, $c4, $00, $6a, $53, $7d, $c4, $00, $70, $53, $b8, $c4, $00, $7a, $53, $f5
	db $c4, $00, $8c, $53, $f9, $c4, $00, $9a, $53, $fd, $c4, $01, $9a, $53, $fe, $c4
	db $01, $8c, $53, $02, $c5, $01, $7a, $53, $06, $c5, $01, $70, $53, $cb, $c4, $01
	db $6a, $53, $8e, $c4

Jump_01c_5331:
jr_01c_5331:
	push hl
	ld a, [de]
	ld c, a
	inc de

jr_01c_5335:
	ld [hl], $ff
	ld a, [wcd3e]
	and a
	jr z, jr_01c_5340

	inc hl
	jr jr_01c_5341

jr_01c_5340:
	dec hl

jr_01c_5341:
	dec c
	jr nz, jr_01c_5335

	pop hl
	ld a, [wcd3d]
	and a
	ld bc, $0014
	jr z, jr_01c_5351

	ld bc, $ffec

jr_01c_5351:
	add hl, bc
	ld a, [de]
	inc de
	cp $ff
	ret z

	and a
	jr z, jr_01c_5331

	ld c, a

jr_01c_535b:
	ld a, [wcd3e]
	and a
	jr z, jr_01c_5364

	dec hl
	jr jr_01c_5365

jr_01c_5364:
	inc hl

jr_01c_5365:
	dec c
	jr nz, jr_01c_535b

	jr jr_01c_5331

	db $02, $03, $05, $04, $09, $ff, $01, $01, $02, $02, $04, $02, $04, $02, $03, $ff
	db $02, $01, $03, $01, $04, $01, $04, $01, $04, $01, $03, $01, $02, $01, $01, $01
	db $01, $ff, $04, $01, $04, $00, $03, $01, $03, $00, $02, $01, $02, $00, $01, $ff
	db $04, $00, $03, $00, $03, $00, $02, $00, $02, $00, $01, $00, $01, $00, $01, $ff

	call Call_01c_5617
	ld hl, wcfb2
	ld a, [hl]
	push af
	ld [hl], $ff
	push hl
	ld a, $01
	ld [$ffb7], a
	ld a, [wd2dd]
	push af
	ld b, $00
	call Call_01c_5763
	ld hl, wc3b5
	ld de, wcd68
	call $0405
	ld hl, wOAMBuffer
	ld de, wc508
	ld bc, $0010
	call $01bb
	ld hl, $8040
	ld de, $54ae
	ld bc, $1c04
	call $031b
	xor a
	ld [wcd3d], a
	pop af
	jr jr_01c_53ff

Jump_01c_53eb:
	ld hl, wc3a0
	ld bc, $020a
	call $0374
	ld hl, $547f
	ld a, [wcd3d]
	ld c, a
	ld b, $00
	add hl, bc
	ld a, [hl]

jr_01c_53ff:
	ld de, wcee4
	call Call_01c_588d
	ld a, [de]
	push hl
	call Call_01c_57f4
	ld a, $04
	ld [wcd51], a
	ld hl, wOAMBuffer + $10
	call Call_01c_5815
	pop hl
	ld de, wcd68

jr_01c_5419:
	ld a, [hli]
	ld [de], a
	inc de
	cp $50
	jr nz, jr_01c_5419

	ld hl, wc3b5
	ld de, wcd68
	call $0405
	ld hl, wOAMBuffer + $10
	ld de, wc518
	ld bc, $0010
	call $01bb

jr_01c_5435:
	call Call_01c_5b8a
	call $3879
	ldh a, [$b5]
	ld b, a
	and $c3
	jr z, jr_01c_5435

	ld a, $8c
	call $0e45
	bit 6, b
	jr nz, jr_01c_5460

	bit 7, b
	jr nz, jr_01c_546f

	xor a
	ld [wd078], a
	ld [$ffb7], a
	ld [wd068], a
	call $574a
	pop hl
	pop af
	ld [hl], a
	ret


jr_01c_5460:
	ld a, [wcd3d]
	inc a
	cp $2f
	jr nz, jr_01c_5469

	xor a

jr_01c_5469:
	ld [wcd3d], a
	jp Jump_01c_53eb


jr_01c_546f:
	ld a, [wcd3d]
	dec a
	cp $ff
	jr nz, jr_01c_5479

	ld a, $2e

jr_01c_5479:
	ld [wcd3d], a
	jp Jump_01c_53eb


	nop
	inc c
	ld bc, $330d
	push bc
	ld [bc], a
	ld c, $3b
	rrca
	inc bc
	inc hl
	inc h
	ld e, b
	db $10
	ld de, $5f05
	inc d
	ld d, c
	dec d
	inc b
	adc a
	inc de
	ld [de], a
	ld b, $0a
	ld d, $17
	jr jr_01c_54b7

	ld a, [de]
	dec de
	inc e
	dec e
	rlca
	reti


	ld e, $9f
	rra
	ld [$2120], sp
	ld [hli], a
	add $09
	ld d, e
	cp $fe
	ret nz

	ret nz

	ret nz

	ret nz

	ret nz

	nop
	ld a, a

jr_01c_54b7:
	ld a, a
	inc bc
	inc bc
	inc bc
	inc bc
	inc bc
	nop
	nop
	ret nz

	ret nz

	ret nz

	ret nz

	ret nz

	cp $fe
	nop
	inc bc
	inc bc
	inc bc
	inc bc
	inc bc
	ld a, a
	ld a, a
	call Call_01c_5617
	ld hl, wcfb2
	ld a, [hl]
	push af
	ld [hl], $ff
	push hl
	call Call_01c_578e
	call $1aab
	ld hl, wc3b4
	call $0405
	ld hl, wc3b9
	ld de, $54f8
	call $0405
	call $38ae
	call $574a
	pop hl
	pop af
	ld [hl], a
	ret


	ret


	ld a, a
	cp l
	ret nc

	or [hl]
	ld d, b
	call $0188
	call Call_01c_5617
	call $23ae
	call $36ca
	ld de, $4d80
	ld hl, $8040
	ld bc, $050c
	call $02dd
	ld de, $560f
	ld hl, $8ed0
	ld bc, $1c01
	call $031b
	call Call_01c_55ec
	ld hl, wcfb2
	ld a, [hl]
	push af
	ld [hl], $ff
	push hl
	ld hl, wc3b9
	ld de, $55e2
	call $0405
	ld a, [wd2dd]
	ld b, $00
	call Call_01c_5763
	ld hl, wcd3e
	ld de, wc3bd

Jump_01c_5544:
	ld a, $7f
	ld [de], a
	push hl
	push hl
	ld hl, wc3a1
	ld de, $55e7
	call $0405
	ld hl, wc3b7
	ld a, $7f
	ld [hli], a
	ld [hl], a
	pop hl
	ld a, [hl]
	ld b, $04
	call Call_01c_5763
	ld hl, wc3b5
	ld de, wcd68
	call $0405
	ld c, $0f
	call $3781
	ld hl, wc3a9
	ld [hl], $ed
	ld hl, wc3bd
	ld [hl], $ee
	pop hl

jr_01c_5579:
	push hl
	call $0b31
	call $3879
	ldh a, [$b5]
	ld b, a
	pop hl
	and $c3
	jr z, jr_01c_5579

	bit 0, b
	jr nz, jr_01c_559b

	ld a, $8c
	call $0e45
	bit 6, b
	jr nz, jr_01c_55b7

	bit 7, b
	jr nz, jr_01c_55cd

	jr jr_01c_55ac

jr_01c_559b:
	ld a, $8e
	call $0e45
	ld a, [hl]
	ld [wd699], a
	ld hl, wd6b1
	set 3, [hl]
	inc hl
	set 7, [hl]

jr_01c_55ac:
	xor a
	ld [wd078], a
	call $3e04
	pop hl
	pop af
	ld [hl], a
	ret


jr_01c_55b7:
	ld de, wc3bd
	inc hl
	ld a, [hl]
	cp $ff
	jr z, jr_01c_55c7

	cp $fe
	jr z, jr_01c_55b7

	jp Jump_01c_5544


jr_01c_55c7:
	ld hl, wcd3e
	jp Jump_01c_5544


jr_01c_55cd:
	ld de, wc3a9
	dec hl
	ld a, [hl]
	cp $ff
	jr z, jr_01c_55dd

	cp $fe
	jr z, jr_01c_55cd

	jp Jump_01c_5544


jr_01c_55dd:
	ld hl, wcd49
	jr jr_01c_55cd

	call wc47f
	inc a
	ld d, b
	ld a, a
	ld a, a
	ld a, a
	ld a, a
	ld d, b

Call_01c_55ec:
	ld hl, wcd3d
	ld [hl], $ff
	inc hl
	ld a, [wd68a]
	ld e, a
	ld a, [wd68b]
	ld d, a
	ld bc, $000b

jr_01c_55fd:
	srl d
	rr e
	ld a, $fe
	jr nc, jr_01c_5606

	ld a, b

jr_01c_5606:
	ld [hl], a
	inc hl
	inc b
	dec c
	jr nz, jr_01c_55fd

	ld [hl], $ff
	ret


	nop
	nop
	db $10
	jr c, @+$7e

	cp $fe
	nop

Call_01c_5617:
	call $3e04
	call $03bf
	call $0ebd
	ld hl, wc3a0
	ld b, $12
	ld c, $12
	call $03d2
	call $0167
	ld hl, $5611
	ld de, $9600
	ld bc, $0100
	ld a, $04
	call $028c
	ld hl, $5b82
	ld de, $8040
	ld bc, $0008
	ld a, $1c
	call $02c0
	ld hl, wc3a0
	ld de, $567c

jr_01c_564f:
	ld a, [de]
	and a
	jr z, jr_01c_5665

	ld b, a
	and $0f
	ld c, a
	ld a, b
	swap a
	and $0f
	add $60

jr_01c_565e:
	ld [hli], a
	dec c
	jr nz, jr_01c_565e

	inc de
	jr jr_01c_564f

jr_01c_5665:
	call $0181
	ld b, $02
	call $3e1f
	call $3e07
	call $3e0c
	xor a
	ld [wd068], a
	inc a
	ld [wd078], a
	ret


	ld a, d
	ld sp, $3128
	ld a, d
	ld de, $7361
	add c
	ld b, e
	ld de, $2931
	ld sp, $7161
	ld h, h
	add c
	ld b, c
	ld de, $6111
	ld d, c
	ld h, h
	ld [hl], c
	pop bc
	ld [hl], e
	ld d, c
	ld [hl], h
	ld h, d
	ld de, $6111
	ld [hl], c
	ld h, c
	ld d, c
	ld [hl], e
	ld h, h
	ld [hl], c
	ld h, e
	pop bc
	ld h, c
	or c
	ld de, $6111
	pop bc
	ld h, c
	pop bc
	ld h, a
	ld [hl], c
	ld h, e
	ld [hl], c
	or c
	ld b, c
	ld de, $6111
	ld [hl], c
	ld h, c
	ld [hl], c
	ld h, c
	ld [hl], e
	ld d, c
	ld [hl], d
	ld d, c
	ld [hl], e
	ld d, c
	ld b, d
	ld de, $6111
	ld [hl], c
	ld h, c
	ld [hl], c
	ld h, c
	ld [hl], c
	ld h, l
	ld [hl], c
	ld h, e
	ld [hl], c
	ld b, d
	ld de, $6111
	ld [hl], c
	ld h, c
	ld [hl], c
	ld h, c
	ld [hl], c
	or c
	and c
	ld h, e
	ld [hl], c
	ld h, e
	ld [hl], c
	ld b, d
	ld de, $6111
	ld [hl], d
	ld d, c
	ld h, c
	ld [hl], c
	ld b, e
	and c
	ld h, c
	ld [hl], c
	ld h, e
	ld [hl], c
	ld b, d
	ld de, $b111
	and c
	ld h, c
	ld [hl], c
	ld h, c
	ld [hl], c
	ld h, c
	ld b, e
	ld h, c
	ld d, c
	ld [hl], h
	sub c
	ld b, c
	ld de, $4211
	ld h, c
	ld [hl], c
	ld h, c
	ld [hl], c
	or c
	ld b, e
	and c
	ld h, h
	ld [hl], c
	or c
	ld b, c
	ld de, $4211
	ld h, c
	ld d, c
	or c
	pop af
	ld b, l
	ld h, c
	ld [hl], h
	ld b, d
	ld de, $4211
	and c
	ld [hl], c
	ld b, c
	pop af
	ld b, d
	sub c
	ld h, e
	ld [hl], c
	ld h, d
	ld b, e
	ld de, $4311
	pop af
	ld b, c
	pop de
	pop hl
	ld [hl], d
	ld d, c
	ld [hl], e
	ld h, c
	or c
	ld b, e
	ld de, $4211
	sub c
	ld [hl], c
	add c
	ld b, d
	and c
	ld h, c
	ld [hl], c
	or c
	ld b, a
	ld de, $4211
	ld h, c
	ld d, c
	ld [hl], c
	pop hl
	pop bc
	ld [c], a
	pop de
	ld c, b
	ld de, $2f31
	inc hl
	ld sp, $af00
	ld [wd078], a
	call $3e15
	call $03bf
	call $0188
	call $23ae
	call $36ca
	call $0ebd
	jp $3e1d


Call_01c_5763:
	push af
	ld a, b
	ld [wcd51], a
	pop af
	ld de, wcee4
	call Call_01c_588d
	ld a, [de]
	push hl
	call Call_01c_57f4
	call Call_01c_5809
	pop hl
	ld de, wcd68

jr_01c_577b:
	ld a, [hli]
	ld [de], a
	inc de
	cp $50
	jr nz, jr_01c_577b

	ld hl, wOAMBuffer
	ld de, wc508
	ld bc, $00a0
	jp $01bb


Call_01c_578e:
	ld b, $03
	ld hl, $6cd6
	call $3620
	call Call_01c_5875
	ld hl, wOAMBuffer
	ld de, wcee4

jr_01c_579f:
	ld a, [de]
	cp $ff
	jr z, jr_01c_57bc

	and a
	jr z, jr_01c_57b9

	push hl
	call Call_01c_588d
	pop hl
	ld a, [de]
	cp $19
	jr z, jr_01c_57b9

	call Call_01c_57f4
	ld a, $04
	ld [hli], a
	xor a
	ld [hli], a

jr_01c_57b9:
	inc de
	jr jr_01c_579f

jr_01c_57bc:
	ld a, l
	and a
	jr nz, jr_01c_57d5

	ld hl, wc42d
	ld b, $02
	ld c, $0f
	call $03d2
	ld hl, wc456
	ld de, $57e9
	call $0405
	jr jr_01c_57dd

jr_01c_57d5:
	ld a, [wd2dd]
	ld b, $00
	call Call_01c_5763

jr_01c_57dd:
	ld hl, wOAMBuffer
	ld de, wc508
	ld bc, $00a0
	jp $01bb


	ld a, a
	cp [hl]
	or d
	cp a
	cp b
	pop bc
	ld a, a
	call z, $b2d2
	ld d, b

Call_01c_57f4:
	push af
	and $f0
	srl a
	add $18
	ld b, a
	ld [hli], a
	pop af
	and $0f
	swap a
	srl a
	add $18
	ld c, a
	ld [hli], a
	ret


Call_01c_5809:
	ld a, [wcd51]
	and a
	ld hl, wOAMBuffer + $90
	jr z, jr_01c_5815

	ld hl, wOAMBuffer + $80

Call_01c_5815:
jr_01c_5815:
	push hl
	ld hl, $fcfc
	add hl, bc
	ld b, h
	ld c, l
	pop hl

Call_01c_581d:
	ld de, $0202

jr_01c_5820:
	push de
	push bc

jr_01c_5822:
	ld a, b
	ld [hli], a
	ld a, c
	ld [hli], a
	ld a, [wcd51]
	ld [hli], a
	inc a
	ld [wcd51], a
	xor a
	ld [hli], a
	inc d
	ld a, $08
	add c
	ld c, a
	dec e
	jr nz, jr_01c_5822

	pop bc
	pop de
	ld a, $08
	add b
	ld b, a
	dec d
	jr nz, jr_01c_5820

	ret


Call_01c_5842:
	xor a
	ld [wcd52], a
	ld de, $0202

jr_01c_5849:
	push de
	push bc

jr_01c_584b:
	ld a, b
	ld [hli], a
	ld a, c
	ld [hli], a
	ld a, [wcd51]
	ld [hli], a
	ld a, [wcd52]
	ld [hli], a
	xor $20
	ld [wcd52], a
	inc d
	ld a, $08
	add c
	ld c, a
	dec e
	jr nz, jr_01c_584b

	pop bc
	pop de
	push hl
	ld hl, wcd51
	inc [hl]
	inc [hl]
	pop hl
	ld a, $08
	add b
	ld b, a
	dec d
	jr nz, jr_01c_5849

	ret


Call_01c_5875:
	ld de, wcee4

jr_01c_5878:
	ld a, [de]
	inc de
	cp $ff
	ret z

	ld c, a
	ld l, e
	ld h, d

jr_01c_5880:
	ld a, [hl]
	cp $ff
	jr z, jr_01c_5878

	cp c
	jr nz, jr_01c_588a

	xor a
	ld [hl], a

jr_01c_588a:
	inc hl
	jr jr_01c_5880

Call_01c_588d:
	cp $25
	jr c, jr_01c_58a0

	ld bc, $0004
	ld hl, $591e

jr_01c_5897:
	cp [hl]
	jr c, jr_01c_589d

	add hl, bc
	jr jr_01c_5897

jr_01c_589d:
	inc hl
	jr jr_01c_58a9

jr_01c_58a0:
	ld hl, $58af
	ld c, a
	ld b, $00
	add hl, bc
	add hl, bc
	add hl, bc

jr_01c_58a9:
	ld a, [hli]
	ld [de], a
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ret


	or d
	rrca
	ld e, d
	add d
	inc de
	ld e, d
	ld [hld], a
	rla
	ld e, d
	ld a, [hli]
	ld a, [de]
	ld e, d
	ld e, [hl]
	ld e, $5a
	sbc d
	ld [hli], a
	ld e, d
	ld d, a
	ld h, $5a
	ret c

	dec hl
	ld e, d
	ld a, [c]
	jr nc, jr_01c_5924

	jr nz, jr_01c_5900

	ld e, d
	ld e, d
	add hl, sp
	ld e, d
	nop
	rrca
	ld e, d
	and d
	ld a, $5a
	ld h, d
	ld b, l
	ld e, d
	inc [hl]
	ld c, h
	ld e, d
	jr z, jr_01c_5931

	ld e, d
	ld a, [hld]
	ld e, d
	ld e, d
	adc d
	ld h, c
	ld e, d
	ld e, b
	ld l, b
	ld e, d
	ld e, l
	ld l, a
	ld e, d
	dec l
	db $76
	ld e, d
	ld c, [hl]
	ld a, l
	ld e, d
	sbc h
	add l
	ld e, d
	sbc [hl]
	adc l
	ld e, d
	cp l
	sub l
	ld e, d
	res 3, l
	ld e, d
	jp c, Jump_01c_5aa5

jr_01c_5900:
	ld d, l
	xor l
	ld e, d
	add h
	or l
	ld e, d
	sub $bd
	ld e, d
	or $c5
	ld e, d
	db $f4
	adc $5a
	jp nc, Jump_01c_5ad7

	add b
	ldh [$5a], a
	ld h, b
	add sp, $5a
	ld a, [de]
	ldh a, [$5a]
	dec bc
	ld hl, sp+$5a
	add hl, hl
	or d
	rrca
	ld e, d
	ld l, $82

jr_01c_5924:
	inc de
	ld e, d
	inc sp
	ld h, d
	ld b, l
	ld e, d
	inc [hl]
	ld b, d
	nop
	ld e, e
	dec sp
	ld [hld], a
	rla

jr_01c_5931:
	ld e, d
	ld a, $26
	rlca
	ld e, e
	ld b, h
	ld a, [hli]
	ld a, [de]
	ld e, d
	ld b, l
	dec h
	ld d, e
	ld e, d
	ld b, [hl]
	ld a, [hli]
	ld a, [de]
	ld e, d
	ld c, c
	ld c, d
	ld e, d
	ld e, d
	ld c, h
	ld l, d
	ld h, c
	ld e, d
	ld c, a
	ld e, c
	ld l, b
	ld e, d
	ld d, c
	ld e, e
	ld l, a
	ld e, d
	ld d, e
	ld a, $0e
	ld e, e
	ld d, h
	ld c, a
	ld a, b
	ld e, e
	ld d, a
	sbc l
	add l
	ld e, d
	ld e, b
	ld a, [hl]
	adc l
	ld e, d
	ld e, c
	inc c
	rla
	ld e, e
	ld e, a
	sbc d
	ld [hli], a
	ld e, d
	ld l, c
	xor c
	jr nz, jr_01c_59c9

	ld l, l
	ld b, b
	ld b, c
	ld e, e
	ld [hl], a
	jr nz, jr_01c_599e

	ld e, e
	ld a, b
	ld e, d
	jr nc, jr_01c_59d5

	ld a, c
	jr nz, jr_01c_59a6

	ld e, e
	ld a, d
	ld e, d
	jr nc, jr_01c_59dd

	adc l
	ld d, a
	ld h, $5a
	adc [hl]
	ld e, [hl]
	ld e, $5a
	sub l
	ld e, a
	ld [hl], $5b
	sbc b
	ld e, [hl]
	ld e, $5a
	sbc h
	ret c

	dec hl
	ld e, d
	sbc l
	ret z

	ld h, a
	ld e, e
	sbc a
	ret c

	dec hl
	ld e, d

jr_01c_599e:
	and e
	push af
	dec sp
	ld e, e
	and h
	sbc d
	ld [hli], a
	ld e, d

jr_01c_59a6:
	and l
	ret c

	dec hl
	ld e, d
	and [hl]
	ld a, [c]
	ld h, d
	ld e, e
	xor [hl]
	ld a, [c]
	jr nc, jr_01c_5a0c

	xor a
	jr nz, jr_01c_59e9

	ld e, d
	cp b
	ld e, d
	add hl, sp
	ld e, d
	cp d
	reti


	and l
	ld e, d
	cp l
	ld d, h
	xor l
	ld e, d
	cp [hl]
	xor [hl]
	adc l
	ld e, d
	ret nz

	rst $10
	cp l

jr_01c_59c9:
	ld e, d
	pop bc
	push af
	dec sp
	ld e, e
	jp nz, $e070

	ld e, d
	jp $4140


jr_01c_59d5:
	ld e, e
	call nz, $8d7e
	ld e, d
	push bc
	sbc d
	ld [hli], a

jr_01c_59dd:
	ld e, d
	add $43
	ld c, e
	ld e, e
	rst $00
	ld b, b
	ld b, c
	ld e, e
	rst $08
	ld d, a
	ld d, e

jr_01c_59e9:
	ld e, e
	sub $5a
	ld e, b
	ld e, e
	reti


	ld a, [c]
	ld h, d
	ld e, e
	ld [c], a
	ret z

	ld h, a
	ld e, e
	push hl
	add hl, de
	ld l, a
	ld e, e
	and $5e
	ld e, $5a
	rst $20
	ld a, [hli]
	ld a, [de]
	ld e, d
	jp hl


	ld a, $0e
	ld e, e
	db $ed
	ld e, d
	ld e, b
	ld e, e
	ld hl, sp+$20

jr_01c_5a0c:
	add hl, hl
	ld e, e
	rst $38
	sbc l
	adc d
	and l
	ld d, b
	sub e
	add [hl]
	xor c
	ld d, b
	sub l
	ld a, [de]
	ld d, b
	sbc c
	sub h
	rrca
	ld d, b
	adc e
	add h
	xor e
	ld d, b
	add a
	sub b
	add hl, de
	ld d, b
	adc a
	sbc l
	sbc a
	adc e
	ld d, b
	adc l
	add [hl]
	sub b
	add a
	ld d, b
	rlca
	and a
	xor e
	ld d, b
	adc l
	add [hl]
	add e
	add c
	ld d, b
	and d
	sbc l
	dec de
	add [hl]
	ld d, b
	rst $30
	ld a, [hld]
	sbc $34
	or e
	db $db
	ld d, b
	ld hl, sp+$3a
	sbc $34
	or e
	db $db
	ld d, b
	ld sp, hl
	ld a, [hld]
	sbc $34
	or e
	db $db
	ld d, b
	ld a, [wde3a]
	inc [hl]
	or e
	db $db
	ld d, b
	ei
	ld a, [hld]
	sbc $34
	or e
	db $db
	ld d, b
	db $fc
	ld a, [hld]
	sbc $34
	or e
	db $db
	ld d, b
	db $fd
	ld a, [hld]
	sbc $34
	or e
	db $db
	ld d, b
	cp $3a
	sbc $34
	or e
	db $db
	ld d, b
	rst $38
	ld a, [hld]
	sbc $34
	or e
	db $db
	ld d, b
	rst $30
	or $3a
	sbc $34
	or e
	db $db
	ld d, b
	rst $30
	rst $30
	ld a, [hld]
	sbc $34
	or e
	db $db
	ld d, b
	rst $30
	ld hl, sp+$3a
	sbc $34
	or e
	db $db
	ld d, b
	rst $30
	ld sp, hl
	ld a, [hld]
	sbc $34
	or e
	db $db
	ld d, b
	rst $30
	ld a, [wde3a]
	inc [hl]
	or e
	db $db
	ld d, b

Jump_01c_5aa5:
	rst $30
	ei
	ld a, [hld]
	sbc $34
	or e
	db $db
	ld d, b
	rst $30
	db $fc
	ld a, [hld]
	sbc $34
	or e
	db $db
	ld d, b
	rst $30
	db $fd
	ld a, [hld]
	sbc $34
	or e
	db $db
	ld d, b
	rst $30
	cp $3a
	sbc $34
	or e
	db $db
	ld d, b
	rst $30
	rst $38
	ld a, [hld]
	sbc $bd
	or d
	inc [hl]
	or e
	ld d, b
	ld hl, sp-$0a
	ld a, [hld]
	sbc $bd
	or d
	inc [hl]
	or e
	ld d, b

Jump_01c_5ad7:
	ld hl, sp-$09
	ld a, [hld]
	sbc $bd
	or d
	inc [hl]
	or e
	ld d, b
	ld hl, sp-$08
	ld a, [hld]
	sbc $34
	or e
	db $db
	ld d, b
	ld hl, sp-$07
	ld a, [hld]
	sbc $34
	or e
	db $db
	ld d, b
	ld hl, sp-$06
	ld a, [hld]
	sbc $34
	or e
	db $db
	ld d, b
	ld hl, sp-$05
	ld a, [hld]
	sbc $34
	or e
	db $db
	ld d, b
	sub e
	add [hl]
	xor c
	ret


	db $d3
	ret c

	ld d, b
	add h
	sub c
	add [hl]
	sbc [hl]
	call nc, Call_01c_50cf
	add c
	xor c
	and d
	sbc l
	sub e
	xor e
	sub a
	and [hl]
	ld d, b
	ret nc

	cp e
	or a
	ld a, a
	ret


	ld a, a
	cp d
	call nc, $8a50
	xor e
	sub e
	add b
	xor e
	sub [hl]
	ld a, [hli]
	or e
	ld d, b
	ret c

	db $e3
	rlca
	adc $de
	inc a
	ld d, b
	pop bc
	or [hl]
	jp nz, wdbb3

	ld d, b
	ld d, h
	adc a
	xor c
	db $e3
	ld d, b
	call z, $2ac0
	inc l
	rst $08
	ld d, b
	sub b
	xor l
	xor e
	ld b, c
	add h
	xor e
	xor b
	db $e3
	inc de
	ld d, b
	ld [de], a
	or b
	rlca
	rrca
	ret


	or c
	push bc
	ld d, b
	ld e, [hl]
	add b
	dec bc
	sub e
	ld d, b
	adc e
	and [hl]
	sbc e
	adc $de
	cp h
	ldh [rNR30], a
	and [hl]
	ld d, b
	ld d, h
	call nc, $b7bc
	ld d, b
	adc d
	sbc e
	jp hl


	ret c

	ld c, $e3
	xor e
	ld d, b
	push bc
	push bc
	cp h
	ret


	inc [hl]
	or e
	cp b
	jp nz, wd150

	inc l
	sbc $ca
	jp nz, wde33

	cp h
	ld [c], a
	ld d, b
	ld b, d
	ld h, [hl]
	rst $38
	cp l
	sbc c
	rst $38
	ld e, d
	inc h

Call_01c_5b8a:
	ld a, [wd068]
	inc a
	cp $19
	jr z, jr_01c_5ba5

	cp $32
	jr nz, jr_01c_5bb5

	ld hl, wc508
	ld de, wOAMBuffer
	ld bc, $0090
	call $01bb
	xor a
	jr jr_01c_5bb5

jr_01c_5ba5:
	ld hl, wOAMBuffer
	ld b, $24
	ld de, $0004

jr_01c_5bad:
	ld [hl], $a0
	add hl, de
	dec b
	jr nz, jr_01c_5bad

	ld a, $19

jr_01c_5bb5:
	ld [wd068], a
	jp $0b31


	xor a
	ld [wcc26], a
	ld b, a
	inc a
	jr jr_01c_5bce

	ld hl, wcf19
	ld a, [wcc26]
	ld c, a
	ld b, $00
	add hl, bc
	ld a, [hl]

jr_01c_5bce:
	ld c, a
	ld hl, $5c2d
	add hl, bc
	ld a, [wcf15]
	xor $01
	add [hl]
	ld c, a
	add a
	ld b, a
	ld a, [wd068]
	and a
	jr z, jr_01c_5bf0

	cp c
	jr z, jr_01c_5c01

jr_01c_5be5:
	inc a
	cp b
	jr nz, jr_01c_5bea

	xor a

jr_01c_5bea:
	ld [wd068], a
	jp $0b31


jr_01c_5bf0:
	push bc
	ld hl, wcc5b
	ld de, wOAMBuffer
	ld bc, $0060
	call $01bb
	pop bc
	xor a
	jr jr_01c_5be5

jr_01c_5c01:
	push bc
	ld hl, wOAMBuffer + $02
	ld bc, $0010
	ld a, [wcc26]
	call $3ad1
	ld c, $40
	ld a, [hl]
	cp $04
	jr z, jr_01c_5c19

	cp $08
	jr nz, jr_01c_5c1d

jr_01c_5c19:
	dec hl
	dec hl
	ld c, $01

jr_01c_5c1d:
	ld b, $04
	ld de, $0004

jr_01c_5c22:
	ld a, [hl]
	add c
	ld [hl], a
	add hl, de
	dec b
	jr nz, jr_01c_5c22

	pop bc
	ld a, c
	jr jr_01c_5be5

	db $05, $10, $20

	ld hl, $5c84
	ld a, $1c

Call_01c_5c35:
	ld bc, $0000

jr_01c_5c38:
	push af
	push bc
	push hl
	add hl, bc
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	ld a, [hli]
	ld c, a
	ld a, [hli]
	ld b, a
	ld a, [hli]
	ld h, [hl]
	ld l, a
	call $02dd
	pop hl
	pop bc
	ld a, $06
	add c
	ld c, a
	pop af
	dec a
	jr nz, jr_01c_5c38

	ret


	call $0167
	ld hl, $5c84
	ld a, $1c
	ld bc, $0000

jr_01c_5c60:
	push af
	push bc
	push hl
	add hl, bc
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	push de
	ld a, [hli]
	ld c, a
	swap c
	ld b, $00
	ld a, [hli]
	ld e, [hl]
	inc hl
	ld d, [hl]
	pop hl
	call $028c
	pop hl
	pop bc
	ld a, $06
	add c
	ld c, a
	pop af
	dec a
	jr nz, jr_01c_5c60

	jp $0181


	db $40, $48, $04, $05, $00, $80, $ed, $73, $08, $04, $40, $80, $80, $71, $04, $05
	db $c0, $80, $40, $4e, $04, $05, $00, $81, $c0, $76, $04, $05, $40, $81, $5d, $5e
	db $01, $1c, $80, $81, $6d, $5e, $01, $1c, $a0, $81, $7d, $5e, $01, $1c, $c0, $81
	db $8d, $5e, $01, $1c, $e0, $81, $9d, $5e, $01, $1c, $00, $82, $ad, $5e, $01, $1c
	db $20, $82, $bd, $5e, $01, $1c, $40, $82, $cd, $5e, $01, $1c, $60, $82, $1d, $5f
	db $04, $1c, $80, $83, $80, $47, $04, $05, $00, $84, $ed, $73, $08, $04, $40, $84
	db $c0, $70, $04, $05, $c0, $84, $80, $4d, $04, $05, $00, $85, $80, $77, $04, $05
	db $40, $85, $1d, $5e, $01, $1c, $80, $85, $2d, $5e, $01, $1c, $a0, $85, $3d, $5e
	db $01, $1c, $c0, $85, $4d, $5e, $01, $1c, $e0, $85, $dd, $5e, $01, $1c, $00, $86
	db $ed, $5e, $01, $1c, $20, $86, $fd, $5e, $01, $1c, $40, $86, $0d, $5f, $01, $1c
	db $60, $86, $5d, $5f, $04, $1c, $80, $87

	push hl
	push de
	push bc
	ldh a, [$8c]
	ld hl, wd124
	ld e, a
	ld d, $00
	add hl, de
	ld a, [hl]
	call Call_01c_5dad
	ld [wcd51], a
	call Call_01c_5d87
	pop bc
	pop de
	pop hl
	ret


jr_01c_5d46:
	xor a
	ldh [$8c], a
	ld a, [wcd58]
	call Call_01c_5dad
	ld [wcd51], a
	jr jr_01c_5d87

	ld a, [wcf78]
	call Call_01c_5dad
	push af
	ld hl, $8000
	call Call_01c_5d70
	pop af
	add $54
	ld hl, $8040
	call Call_01c_5d70
	xor a
	ld [wcd58], a
	jr jr_01c_5d46

Call_01c_5d70:
	push hl
	add a
	ld c, a
	ld b, $00
	ld hl, $5c84
	add hl, bc
	add hl, bc
	add hl, bc
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	ld a, [hli]
	ld c, a
	ld a, [hli]
	ld b, a
	pop hl
	jp $02dd


Call_01c_5d87:
jr_01c_5d87:
	push af
	ld c, $10
	ld h, $c3
	ldh a, [$8c]
	swap a
	ld l, a
	add $10
	ld b, a
	pop af
	cp $08
	jr z, jr_01c_5d9e

	call Call_01c_5842
	jr jr_01c_5da1

jr_01c_5d9e:
	call Call_01c_581d

jr_01c_5da1:
	ld hl, wOAMBuffer
	ld de, wcc5b
	ld bc, $0060
	jp $01bb


Call_01c_5dad:
	ld [wd0e3], a
	ld a, $3a
	call $3e9d
	ld a, [wd0e3]
	ld c, a
	dec a
	srl a
	ld hl, $5dd1
	ld e, a
	ld d, $00
	add hl, de
	ld a, [hl]
	bit 0, c
	jr nz, jr_01c_5dca

	swap a

jr_01c_5dca:
	and $f0
	srl a
	srl a
	ret


	ld [hl], a
	ld [hl], b
	nop

	db $55

	ld d, [hl]
	ld h, [hl]
	ld h, [hl]
	ld h, h
	ld b, h
	sbc c
	ld b, h
	adc b
	inc sp
	nop
	nop
	nop
	nop
	inc sp
	sbc c
	inc sp
	nop
	ld [hl], a
	db $76
	ld h, [hl]
	ld h, b
	nop
	nop
	nop
	add hl, bc
	sub b
	nop
	nop
	nop
	nop
	ld [hl], a
	ld [hl], l
	ld d, b
	nop
	sbc c
	sub b
	ld de, $4544
	ld d, b
	ld [bc], a
	jr nz, jr_01c_5e00

jr_01c_5e00:
	add b
	dec b
	ld d, c
	rla
	ld [hl], b
	nop
	nop
	nop
	sub b
	scf
	dec b
	ld d, l
	ld d, d
	jr nz, @+$62

	nop
	ld l, c
	ld e, b
	ld d, b
	sbc c
	sbc c
	ld [bc], a
	ld [hli], a
	inc h
	inc b
	ld b, h
	adc b
	add b
	nop

	INCBIN "gfx/auto/image_01c_5e1d.2bpp"

	INCBIN "gfx/auto/image_01c_5f1d.2bpp"

	call $373e
	ld hl, $6043
	ld a, [wcd3d]
	swap a
	srl a
	ld c, a
	ld b, $00
	add hl, bc
	ld a, [hli]
	ld [wcd0f], a
	ld a, [hli]
	ld [wcd25], a
	ld a, [hli]
	push af
	ld de, wcd1f
	ld bc, $0006
	call $01bb
	ld a, $50
	ld [wcd24], a
	pop af
	ld l, a
	ld h, $00
	ld de, $61de
	add hl, hl
	add hl, de
	ld a, [hli]
	ld [wcd10], a
	ld a, [hl]
	ld [wcd11], a
	ld a, [wcd0f]
	ld de, wcd13
	call Call_01c_6032
	ld a, [wcd25]
	ld de, wcd19
	call Call_01c_6032
	ld hl, wd6b6
	ld a, [wcd3d]
	ld c, a
	ld b, $02
	ld a, $10
	call $3e9d
	ld a, c
	and a
	ld a, $04
	ld [wcd12], a
	jr nz, jr_01c_6020

	xor a
	ld [wcd12], a
	call Call_01c_6020
	ld a, $01
	ld [wcd12], a
	call $3636
	ld a, [wcc26]
	and a
	jr nz, jr_01c_6020

	call Call_01c_6093
	jr c, jr_01c_6020

	ld hl, $6214
	call $3c79

Call_01c_6020:
jr_01c_6020:
	ld hl, wcd12
	ld a, [hld]
	ld e, a
	ld d, $00
	ld a, [hld]
	ld l, [hl]
	ld h, a
	add hl, de
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp $3c79


Call_01c_6032:
	push de
	ld [wd0e3], a
	call $1aab
	ld hl, wcd68
	pop de
	ld bc, $0006
	jp $01bb


	and a
	xor b
	nop
	sub d
	ret c

	db $e3
	ld d, b
	ld d, b
	sub h
	ld a, [hli]
	nop
	add hl, de
	ret c

	add hl, de
	ret c

	ld d, b
	ld a, l
	ld [hl], d
	ld [bc], a
	ld b, c
	ld b, c
	sbc $50
	ld d, b
	and e
	ld a, [hld]
	nop
	ld b, b
	add d
	db $e3
	xor e
	ld d, b
	dec b
	ld b, b
	ld bc, $bcb5
	ld [c], a
	or e
	ld d, b
	ld [$010b], sp
	push bc
	jp nc, $b32f

	ld d, b
	ld l, [hl]
	ld c, b
	ld bc, $bbcf
	cp d
	ld d, b
	ld d, b
	ld d, l
	adc l
	ld bc, $9db5
	and [hl]
	ld d, b
	ld d, b
	ld b, c
	ld e, $02
	ret c

	xor e
	rrca
	ld d, b
	ld d, b
	rrca
	inc bc
	ld [bc], a
	sub b
	xor l
	xor h
	ld b, c
	db $e3

Call_01c_6093:
	xor a
	ld [wd05a], a
	dec a
	ld [wcfb2], a
	call $2df3
	push af
	call Call_01c_6125
	pop af
	ld a, $01
	jr c, jr_01c_6120

	ld a, [wcd0f]
	ld b, a
	ld a, [wcf78]
	cp b
	ld a, $02
	jr nz, jr_01c_6120

	ld a, [wcf79]
	ld hl, wd14c
	ld bc, $002c
	call $3ad1
	ld a, [hl]
	ld [wd0ec], a
	ld hl, wd6b6
	ld a, [wcd3d]
	ld c, a
	ld b, $01
	ld a, $10
	call $3e9d
	ld hl, $6202
	call $3c79
	ld a, [wcf79]
	push af
	ld a, [wd0ec]
	push af
	call $370a
	call Call_01c_6144
	ld a, $38
	call $3e9d
	call $03bf
	pop af
	ld [wd0ec], a
	pop af
	ld [wcf79], a
	ld a, [wcd25]
	ld [wcf78], a
	xor a
	ld [wcc49], a
	ld [wcf7c], a
	call $3969
	ld a, $80
	ld [wcc49], a
	call $3971
	call Call_01c_6125
	ld b, $03
	ld hl, $71e7
	call $3620
	call Call_01c_619c
	and a
	ld a, $03
	jr jr_01c_6121

jr_01c_6120:
	scf

jr_01c_6121:
	ld [wcd12], a
	ret


Call_01c_6125:
	call $3e04
	call $3dee
	call $1ba5
	call $374a
	call $3e07
	call $0b3c
	ld c, $0a
	call $3781
	ld b, $03
	ld hl, $4f2e
	jp $3620


Call_01c_6144:
	ld hl, wcd3d
	ld a, [wcd0f]
	ld [hli], a
	ld a, [wcd25]
	ld [hl], a
	ld hl, wd233
	ld bc, $0006
	ld a, [wcf79]
	call $3ad1
	ld de, wcd41
	ld bc, $0006
	call Call_01c_6194
	ld hl, $61dc
	ld de, wcd49
	call Call_01c_6194
	ld de, wd806
	call Call_01c_6194
	ld hl, wd137
	ld bc, $002c
	ld a, [wcf79]
	call $3ad1
	ld de, wcd47
	ld bc, $0002
	call Call_01c_6194
	call $3e8c
	ld hl, $ffd3
	ld de, wcd4f
	jp $01bb


Call_01c_6194:
	push hl
	push bc
	call $01bb
	pop bc
	pop hl
	ret


Call_01c_619c:
	ld hl, wd257
	ld bc, $0006
	call Call_01c_61d2
	ld hl, wcd1f
	ld bc, $0006
	call $01bb
	ld hl, wd233
	ld bc, $0006
	call Call_01c_61d2
	ld hl, $61dc
	ld bc, $0006
	call $01bb
	ld hl, wd137
	ld bc, $002c
	call Call_01c_61d2
	ld hl, wcd4f
	ld bc, $0002
	jp $01bb


Call_01c_61d2:
	ld a, [wd123]
	dec a
	call $3ad1
	ld e, l
	ld d, h
	ret


	ld e, l
	ld d, b
	db $e4
	ld h, c
	xor $61
	ld hl, sp+$61
	ld sp, $5e62
	ld h, d
	ld l, h
	ld h, d
	sbc c
	ld h, d
	and b
	ld h, d
	or l
	ld h, d
	ldh [$62], a
	pop af
	ld h, d
	dec de
	ld h, e
	ld [hli], a
	ld h, e
	ld a, [hld]
	ld h, e
	ld h, l
	ld h, e
	ld [hl], e
	ld h, e
	sbc l
	ld h, e
	and h
	ld h, e
	nop
	inc l
	ldh [$b1], a
	ld c, a
	adc b
	db $e3
	dec de
	and [hl]
	db $dd
	ld a, a
	jp nz, $b2c5

	inc sp
	ld d, [hl]
	call nz, $0058
	ld d, d
	jp z, $507f

	ld bc, wcd13
	nop
	call nz, Call_01c_504f
	ld bc, wcd19
	nop
	db $dd
	ld a, a
	cp d
	or e
	or [hl]
	sbc $bc
	ret nz

	rst $20
	ld d, b
	ld de, $500a
	nop
	or l
	jp c, $507f

	ld bc, wcd13
	nop
	ld a, a
	cp e
	ld h, $bc
	jp wded9


	jr nc, @-$17

	ld d, c
	or a
	ret nc

	ld a, a
	db $d3
	rst $18
	jp wd7c0


	ld a, a
	ld d, b
	ld bc, wcd19
	nop
	call nz, $ba4f
	or e
	or [hl]
	sbc $bc
	sub $b3
	ld l, $e6
	ld d, a
	nop
	cp a
	sbc $c5
	db $e3
	ld c, a
	ld d, [hl]
	rst $08
	rst $18
	ld a, a
	or d
	rst $18
	or [hl]
	ld d, a
	nop
	ld d, [hl]
	push bc
	sbc $30
	ld c, a
	ld d, b
	ld bc, wcd13
	nop
	inc l
	ldh [$7f], a
	push bc
	or d
	inc l
	ldh [$de], a
	ld d, c
	db $d3
	cp h
	ld a, a
	jp nz, wcfb6

	or h
	ret nz

	rst $10
	ld c, a
	rst $08
	rst $18
	cp e
	or a

jr_01c_628e:
	add $7f
	cp d
	cp d
	call $ba7f
	or d
	sub $e7
	ld d, a
	nop
	adc d
	xor e
	add [hl]
	xor [hl]
	db $e3
	ld d, a
	nop
	or l
	jp c, $7fc9

	call nc, wc0df
	ld c, a
	ld d, b
	ld bc, wcd19
	nop
	ld a, a
	add c
	add c
	jr nc, jr_01c_628e

	and $57
	nop
	cp d
	jp c, wdaba

	ld c, a
	or a
	ret nc

	ld a, a
	ld d, b
	ld bc, wcd13
	nop
	ld a, a
	db $d3
	rst $18
	call nz, $e6d9
	ld d, c
	call c, wc9bc
	ld a, a
	ld d, b
	ld bc, wcd19
	nop
	call nz, $ba4f
	or e
	or [hl]
	sbc $7f
	cp h
	push bc
	or d
	or [hl]
	and $57
	nop
	rst $08
	db $e3
	ld a, a
	sbc a
	ret c

	add $7f
	call nz, $7fca
	or d
	call c, $26de
	ld d, [hl]
	ld d, a
	nop
	ld d, [hl]
	pop de
	and $4f
	ld d, b
	ld bc, wcd13
	nop
	inc sp
	jp z, wc57f

	or d
	inc l
	ldh [$c5], a
	or d
	or [hl]
	ld d, c
	jp Jump_01c_7fc6


	or d
	jp c, $7fc0

	call nz, wcab7
	ld c, a
	sub $db
	cp h
	cp b
	ld a, a
	ret nz

	ret


	pop de
	sub $57
	nop
	or c
	ret c

	ld h, $c4
	sub $57
	nop
	cp d
	or e
	or [hl]
	sbc $bc
	ret nz

	ld a, a
	ld d, b
	ld bc, wcd19
	nop
	ld c, a
	jp nz, $b8d6

	push bc
	rst $18
	ret nz

	or [hl]
	or d
	and $57
	nop
	ret z

	db $e3
	ld a, a
	or a
	ret nc

	ld c, a
	ld d, b
	ld bc, wcd13
	nop
	ld a, a
	db $d3
	rst $18
	jp $e6d9


	ld d, c
	call c, $bcc0
	ret


	ld a, a
	ld d, b
	ld bc, wcd19
	nop
	call nz, wc44f
	ret c

	or [hl]
	or h
	jp $b87f


	jp c, $b2c5

	and $57
	nop
	add c
	and d
	push bc
	rst $10
	ld a, a
	cp h
	ld [c], a
	db $e3
	ld h, $c5
	or d
	push bc
	ld d, a
	nop
	ld d, [hl]
	ld a, a
	cp d
	jp c, Jump_01c_504f

	ld bc, wcd13
	nop
	inc l
	ldh [$7f], a
	push bc
	or d
	call c, Call_01c_51e3
	jp Jump_01c_7fc6


	or d
	jp c, wd7c0

	ld c, a
	ld l, $df
	ret nz

	or d
	ld a, a
	call nz, $b6d8
	or h
	jp wc8d6


	rst $18
	rst $20
	ld d, a
	nop
	or c
	ret c

	ld h, $c4
	ret z

	ld d, a
	ld bc, wcd19
	nop
	ld a, a
	add hl, hl
	sbc $b7
	and $4f
	call c, $bcc0
	ret


	ld a, a
	ld d, b
	ld bc, wcd13
	nop
	jp z, $297f

	sbc $b7
	sub $57
	call $3ec4
	ld a, b
	cp $ff
	jr nz, jr_01c_63ca

	ld a, [wcf16]

jr_01c_63ca:
	cp $fc
	jp z, Jump_01c_65a2

	ld l, a
	ld h, $00
	add hl, hl
	ld de, $6553
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld de, $6720
	push de
	jp hl


	ld hl, $689e
	ld de, $674e
	ret


	ld hl, $687e
	ld de, wcf27
	ld bc, $0010
	call $01bb
	ld a, [wd041]
	ld hl, wcffb
	call Call_01c_6577
	ld b, a
	ld a, [wd046]
	ld hl, wcfbf
	call Call_01c_6577
	ld c, a
	ld hl, wcf28
	ld a, [wcf17]
	add $1f
	ld [hli], a
	inc hl
	ld a, [wcf18]
	add $1f
	ld [hli], a
	inc hl
	ld a, b
	ld [hli], a
	inc hl
	ld a, c
	ld [hl], a
	ld hl, wcf27
	ld de, $674e
	ld a, $01
	ld [wcf16], a
	ret


	ld hl, $68ae
	ld de, $673e
	ret


	ld hl, $687e
	ld de, wcf27
	ld bc, $0010
	call $01bb
	ld a, [wcf78]
	cp $bf
	jr c, jr_01c_6444

	ld a, $01

jr_01c_6444:
	call Call_01c_657d
	push af
	ld hl, wcf28
	ld a, [wcf1f]
	add $1f
	ld [hli], a
	inc hl
	pop af
	ld [hl], a
	ld hl, wcf27
	ld de, $676e
	ret


	ld hl, $688e
	ld de, wcf28
	ret


	ld hl, $68be
	ld de, wcf27
	ld bc, $0010
	call $01bb
	ld a, [wcf78]
	call Call_01c_657d
	ld hl, wcf2a
	ld [hl], a
	ld hl, wcf27
	ld de, $677e
	ret


	ld hl, $68ce
	ld de, $678e
	ret


	ld hl, $68de
	ld de, $67ae
	ret


	ld hl, $68fe
	ld de, $673e
	ret


	ld hl, $690e
	ld de, $67ce
	ret


	ld hl, $691e
	ld de, $685e
	ld a, $08
	ld [wcf16], a
	ret


	ld hl, $687e
	ld de, wcf27
	ld bc, $0010
	call $01bb
	ld a, [wd2e6]
	cp $0f
	jr z, jr_01c_64ec

	cp $11
	jr z, jr_01c_64f0

	ld a, [wd2dd]
	cp $25
	jr c, jr_01c_64d8

	cp $e2
	jr c, jr_01c_64d5

	cp $e5
	jr c, jr_01c_64f0

	cp $f5
	jr z, jr_01c_64f4

	cp $f6
	jr z, jr_01c_64f0

jr_01c_64d5:
	ld a, [wd2e4]

jr_01c_64d8:
	cp $0b
	jr c, jr_01c_64de

	ld a, $ff

jr_01c_64de:
	inc a
	ld hl, wcf28
	ld [hld], a
	ld de, $673e
	ld a, $09
	ld [wcf16], a
	ret


jr_01c_64ec:
	ld a, $18
	jr jr_01c_64de

jr_01c_64f0:
	ld a, $22
	jr jr_01c_64de

jr_01c_64f4:
	xor a
	jr jr_01c_64de

	push bc
	ld hl, $687e
	ld de, wcf27
	ld bc, $0010
	call $01bb
	pop bc
	ld a, c
	and a
	ld a, $1e
	jr nz, jr_01c_6511

	ld a, [wcf17]
	call Call_01c_657d

jr_01c_6511:
	ld [wcf28], a
	ld hl, wcf27
	ld de, $673e
	ret


	ld hl, $681e
	ld de, wcc5b
	ld bc, $0040
	call $01bb
	ld de, $656f
	ld hl, wcc5d
	ld a, [wd2d5]
	ld c, $08

jr_01c_6532:
	srl a
	push af
	jr c, jr_01c_6542

	push bc
	ld a, [de]
	ld c, a
	xor a

jr_01c_653b:
	ld [hli], a
	dec c
	jr nz, jr_01c_653b

	pop bc
	jr jr_01c_6547

jr_01c_6542:
	ld a, [de]

jr_01c_6543:
	inc hl
	dec a
	jr nz, jr_01c_6543

jr_01c_6547:
	pop af
	inc de
	dec c
	jr nz, jr_01c_6532

	ld hl, $68ee
	ld de, wcc5b
	ret


	rst $18
	ld h, e
	and $63
	jr z, @+$66

	cpl
	ld h, h
	ld h, d
	ld h, h
	ld a, a
	ld h, h
	add [hl]
	ld h, h
	sub h
	ld h, h
	adc l
	ld h, h
	and a
	ld h, h
	ld e, e
	ld h, h
	rst $30
	ld h, h
	sbc e
	ld h, h
	dec de
	ld h, l
	ld b, $06
	ld b, $12
	ld b, $06
	ld b, $06

Call_01c_6577:
	bit 3, a
	ld a, $19
	ret nz

	ld a, [hl]

Call_01c_657d:
	ld [wd0e3], a
	and a
	jr z, jr_01c_658d

	push bc
	ld a, $3a
	call $3e9d
	pop bc
	ld a, [wd0e3]

jr_01c_658d:
	ld e, a
	ld d, $00
	ld hl, $6a1e
	add hl, de
	ld a, [hl]
	ret


	ld hl, $67ee
	ld de, wcf28
	ld bc, $0030
	jp $01bb


Jump_01c_65a2:
	ld hl, wcf19
	ld a, [wcf27]
	ld e, a
	ld d, $00
	add hl, de
	ld e, l
	ld d, h
	ld a, [de]
	and a
	ld e, $05
	jr z, jr_01c_65bb

	dec a
	ld e, $0a
	jr z, jr_01c_65bb

	ld e, $0f

jr_01c_65bb:
	push de
	ld hl, wcf31
	ld bc, $0006
	ld a, [wcf27]
	call $3ad1
	pop de
	ld [hl], e
	ret


Call_01c_65cb:
Jump_01c_65cb:
	ld a, [hl]
	and $07
	ret z

	ld b, a

jr_01c_65d0:
	push bc
	xor a
	ldh [rP1], a
	ld a, $30
	ldh [rP1], a
	ld b, $10

jr_01c_65da:
	ld e, $08
	ld a, [hli]
	ld d, a

jr_01c_65de:
	bit 0, d
	ld a, $10
	jr nz, jr_01c_65e6

	ld a, $20

jr_01c_65e6:
	ldh [rP1], a
	ld a, $30
	ldh [rP1], a
	rr d
	dec e
	jr nz, jr_01c_65de

	dec b
	jr nz, jr_01c_65da

	ld a, $20
	ldh [rP1], a
	ld a, $30
	ldh [rP1], a
	call Call_01c_6714
	pop bc
	dec b
	ret z

	jr jr_01c_65d0

	xor a
	ld [wcf15], a
	call Call_01c_666b
	ret nc

	ld a, $01
	ld [wcf15], a
	call Call_01c_6645
	ld a, $01
	ld [wcf27], a
	ld de, $695e
	ld hl, $743e
	call Call_01c_66d5
	xor a
	ld [wcf27], a
	ld de, $696e
	ld hl, $6bde
	call Call_01c_66d5
	xor a
	ld [wcf27], a
	ld de, $692e
	ld hl, $6ab6
	call Call_01c_66d5
	call $0a8c
	ld hl, $698e
	jp Jump_01c_65cb


Call_01c_6645:
	ld hl, $6659
	ld c, $09

jr_01c_664a:
	push bc
	ld a, [hli]
	push hl
	ld h, [hl]
	ld l, a
	call Call_01c_65cb
	pop hl
	inc hl
	pop bc
	dec c
	jr nz, jr_01c_664a

	ret


	ld a, [hl]
	ld l, c
	sbc [hl]
	ld l, c
	xor [hl]
	ld l, c
	cp [hl]
	ld l, c
	adc $69
	sbc $69
	xor $69
	cp $69
	ld c, $6a

Call_01c_666b:
	ld hl, $694e
	call Call_01c_65cb
	call Call_01c_6714
	ldh a, [rP1]
	and $03
	cp $03
	jr nz, jr_01c_66c7

	ld a, $20
	ldh [rP1], a
	ldh a, [rP1]
	ldh a, [rP1]
	call Call_01c_6714
	call Call_01c_6714
	ld a, $30
	ldh [rP1], a
	call Call_01c_6714
	call Call_01c_6714
	ld a, $10
	ldh [rP1], a
	ldh a, [rP1]
	ldh a, [rP1]
	ldh a, [rP1]
	ldh a, [rP1]
	ldh a, [rP1]
	ldh a, [rP1]
	call Call_01c_6714
	call Call_01c_6714
	ld a, $30
	ldh [rP1], a
	ldh a, [rP1]
	ldh a, [rP1]
	ldh a, [rP1]
	call Call_01c_6714
	call Call_01c_6714
	ldh a, [rP1]
	and $03
	cp $03
	jr nz, jr_01c_66c7

	call Call_01c_66cc
	and a
	ret


jr_01c_66c7:
	call Call_01c_66cc
	scf
	ret


Call_01c_66cc:
	ld hl, $693e
	call Call_01c_65cb
	jp Jump_01c_6714


Call_01c_66d5:
	di
	push de
	call $0167
	ld a, $e4
	ldh [rBGP], a
	ld de, $8800
	ld a, [wcf27]
	and a
	jr z, jr_01c_66ec

	call Call_01c_6728
	jr jr_01c_66f2

jr_01c_66ec:
	ld bc, $1000
	call $01bb

jr_01c_66f2:
	ld hl, $9800
	ld de, $000c
	ld a, $80
	ld c, $0d

jr_01c_66fc:
	ld b, $14

jr_01c_66fe:
	ld [hli], a
	inc a
	dec b
	jr nz, jr_01c_66fe

	add hl, de
	dec c
	jr nz, jr_01c_66fc

	ld a, $e3
	ldh [rLCDC], a
	pop hl
	call Call_01c_65cb
	xor a
	ldh [rBGP], a
	ei
	ret


Call_01c_6714:
Jump_01c_6714:
	ld de, $1b58

jr_01c_6717:
	nop
	nop
	nop
	dec de
	ld a, d
	or e
	jr nz, jr_01c_6717

	ret


	push de
	call Call_01c_65cb
	pop hl
	jp Jump_01c_65cb


Call_01c_6728:
	ld b, $80

jr_01c_672a:
	ld c, $10

jr_01c_672c:
	ld a, [hli]
	ld [de], a
	inc de
	dec c
	jr nz, jr_01c_672c

	ld c, $10
	xor a

jr_01c_6735:
	ld [de], a
	inc de
	dec c
	jr nz, jr_01c_6735

	dec b
	jr nz, jr_01c_672a

	ret


	ld hl, $0301
	nop
	nop
	nop
	inc de
	ld de, $0000
	nop
	nop
	nop
	nop
	nop
	nop
	ld [hli], a
	dec b
	rlca
	ld a, [bc]
	nop
	inc c
	inc de
	ld de, $0503
	ld bc, $0a00
	inc bc
	inc bc
	nop
	ld a, [bc]
	ld [$0a13], sp
	inc bc
	ld a, [bc]
	nop
	inc b
	ld [$030b], sp
	rrca
	dec bc
	nop
	inc de
	rlca
	ld hl, $0701
	dec b
	ld bc, $0700
	ld b, $00
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld hl, $0701
	dec b
	ld bc, $0801
	ld [$0000], sp
	nop
	nop
	nop
	nop
	nop
	nop
	ld [hli], a
	dec b
	inc bc
	dec b
	nop
	nop
	inc de
	dec bc
	inc bc
	ld a, [bc]
	nop
	inc b
	inc de
	add hl, bc
	ld [bc], a
	rrca
	nop
	ld b, $13
	rlca
	inc bc
	nop
	inc b
	inc b
	rrca
	add hl, bc
	inc bc
	nop
	nop
	inc c
	inc de
	ld de, $0322
	inc bc
	nop
	nop
	nop
	inc de
	rlca
	ld [bc], a
	dec b
	nop
	ld [$0913], sp
	inc bc
	ld a, [bc]
	nop
	ld a, [bc]
	inc de
	ld de, $0000
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
	ld [hli], a
	inc bc
	inc bc
	dec b
	nop
	nop
	inc de
	inc bc
	inc bc
	nop
	nop
	inc b
	inc de
	dec c
	inc bc
	dec b
	nop
	ld c, $13
	ld de, $0000
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

	db $23, $07, $06, $10, $01, $00, $02, $0c, $02, $00, $0c, $00, $12, $01, $02, $00
	db $0c, $02, $12, $03, $02, $00, $0c, $04, $12, $05, $02, $00, $0c, $06, $12, $07
	db $02, $00, $0c, $08, $12, $09, $02, $00, $0c, $0a, $12, $0b, $00, $00, $00, $00

	inc h
	ld a, [bc]
	ld [bc], a
	nop
	inc bc
	inc c
	inc b
	dec c
	ld [bc], a
	dec b
	rlca
	inc c
	ld [$020d], sp
	rrca
	dec bc
	inc c
	inc c
	dec c
	ld [bc], a
	ld a, [bc]
	db $10
	dec bc
	ld de, $020c
	dec b
	ld c, $0d
	rrca
	ld c, $02
	rrca
	db $10
	dec c
	ld de, $020e
	ld a, [bc]
	inc bc
	rrca
	inc b
	db $10
	ld [bc], a
	rrca
	rlca
	rrca
	ld [$0210], sp
	ld a, [bc]
	dec bc
	rrca
	inc c
	db $10
	ld [bc], a
	dec b
	rrca
	rrca
	db $10
	stop
	nop
	ld [hli], a
	inc bc
	rlca
	dec b
	dec b
	dec bc
	rlca
	dec c
	ld [bc], a
	ld a, [bc]
	ld [$090b], sp
	dec c
	inc bc
	rrca
	inc c
	dec bc
	ld c, $0d
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
	ld d, c
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
	ld d, c
	stop
	rra
	nop
	jr nz, jr_01c_6895

jr_01c_6895:
	ld hl, $0000
	nop
	nop
	nop
	nop
	nop
	nop
	ld d, c
	ld e, $00
	ld e, $00
	ld e, $00
	ld e, $00
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld d, c
	inc c
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
	ld d, c
	dec d
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
	ld d, c
	ld a, [de]
	nop
	dec de
	nop
	inc e
	nop
	dec e
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld d, c
	ld c, $00
	dec c
	nop
	stop
	inc d
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld d, c
	stop
	ld [hli], a
	nop
	ld [de], a
	nop
	jr jr_01c_68f7

jr_01c_68f7:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld d, c
	stop
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
	ld d, c
	inc d
	nop
	ld e, $00
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
	ld d, c
	inc h
	nop
	ld [de], a
	nop
	ld [bc], a
	nop
	ld de, $0000
	nop
	nop
	nop
	nop
	nop
	nop
	ld e, c
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

	db $89, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
	db $89, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

	sbc c
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
	and c
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
	cp c
	ld bc, $0000
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
	cp c
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
	ld a, c
	ld e, l
	ld [$0b00], sp
	adc h
	ret nc

	db $f4
	ld h, b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld a, c
	ld d, d
	ld [$0b00], sp
	xor c
	rst $20
	sbc a
	ld bc, $7ec0
	add sp, -$18
	add sp, -$18
	ldh [$79], a
	ld b, a
	ld [$0b00], sp
	call nz, $16d0
	and l
	set 1, c
	dec b
	ret nc

	db $10
	and d
	jr z, @+$7b

	inc a
	ld [$0b00], sp
	ldh a, [rNR12]
	and l
	ret


	ret


	ret z

	ret nc

	inc e
	and l
	jp z, Jump_01c_79c9

	ld sp, $0008
	dec bc
	inc c
	and l
	jp z, $7ec9

	ret nc

	ld b, $a5
	set 1, c
	ld a, [hl]
	ld a, c
	ld h, $08
	nop
	dec bc
	add hl, sp
	call $0c48
	ret nc

	inc [hl]
	and l
	ret


	ret


	add b
	ret nc

	ld a, c
	dec de
	ld [$0b00], sp
	ld [$eaea], a
	ld [$a9ea], a
	ld bc, $4fcd
	inc c
	ret nc

	ld a, c
	db $10
	ld [$0b00], sp
	ld c, h
	jr nz, @+$0a

	ld [$eaea], a
	ld [$60ea], a
	ld [$10ea], a
	ld d, $16
	ld d, $12
	ld [de], a
	ld [de], a
	inc de
	inc de
	inc de
	ld d, $16
	inc de
	jr @+$1a

	jr jr_01c_6a44

	dec d
	dec d
	add hl, de
	add hl, de
	dec d
	dec d
	inc d
	inc d
	jr jr_01c_6a51

	dec d
	dec d
	ld de, $1111
	inc d
	inc d
	inc d
	rla
	rla
	ld [de], a

jr_01c_6a44:
	jr jr_01c_6a5d

	rla
	ld de, $1611
	ld [de], a
	ld [de], a
	ld [de], a
	ld [de], a
	inc d
	inc d
	dec d

jr_01c_6a51:
	dec d
	jr jr_01c_6a6c

	jr jr_01c_6a69

	dec d
	dec d
	dec d
	ld [de], a
	ld de, $1111

jr_01c_6a5d:
	jr jr_01c_6a77

	jr jr_01c_6a7a

	add hl, de
	add hl, de
	ld d, $16
	ld d, $13
	inc de
	add hl, de

jr_01c_6a69:
	add hl, de
	add hl, de
	ld [de], a

jr_01c_6a6c:
	ld [de], a
	rla
	rla
	add hl, de
	add hl, de
	dec d
	dec d
	dec d
	ld de, $1411

jr_01c_6a77:
	inc d
	add hl, de
	add hl, de

jr_01c_6a7a:
	inc d
	inc d
	inc d
	add hl, de
	jr jr_01c_6a98

	ld [de], a
	ld [de], a
	jr @+$1a

	rla
	ld d, $19
	add hl, de
	dec d
	dec d
	rla
	inc d
	inc d
	add hl, de
	add hl, de
	rla
	ld de, $1315
	inc de
	ld [de], a
	ld [de], a
	ld [de], a
	add hl, de

jr_01c_6a98:
	rla
	ld d, $10
	jr @+$14

	dec d
	add hl, de
	ld [de], a
	ld de, $1913
	add hl, de
	inc de
	jr jr_01c_6ab9

	add hl, de
	ld de, $1511
	dec d
	add hl, de
	rla
	ld de, $1218
	add hl, de
	ld de, $1015
	db $10
	cp a
	ld a, a
	sub l

jr_01c_6ab9:
	cpl
	ld d, h
	ld a, a
	ld b, e
	ld [$7fbf], sp
	sbc c
	ld l, a
	ld d, h
	ld a, a
	ld b, e
	ld [$7fbf], sp
	ld d, c
	rrca
	ld d, h
	ld a, a
	ld b, e
	ld [$7fbf], sp
	scf
	ld b, e
	ld d, h
	ld a, a
	ld b, e
	ld [$7fbf], sp
	sub c
	ld a, d
	ld d, h
	ld a, a
	ld b, e
	ld [$7fbf], sp
	sbc e
	ld l, [hl]
	ld d, h
	ld a, a
	ld b, e
	ld [$7fbf], sp
	ld e, [hl]
	ld [bc], a
	ld d, h
	ld a, a
	ld b, e
	ld [$7fbf], sp
	ret nc

	ld e, e
	ld d, h
	ld a, a
	ld b, e
	ld [$7fbf], sp
	rst $38
	ld e, c
	ld d, h
	ld a, a
	ld b, e
	ld [$7fbf], sp
	ld e, d
	add hl, de
	ld d, h
	ld a, a
	ld b, e
	ld [$7fbf], sp
	sub $61
	ld d, h
	ld a, a
	ld b, e
	ld [$7fbf], sp
	ld a, e
	rrca
	ld d, h
	ld a, a
	ld b, e
	ld [$7fbf], sp
	ld d, h
	ld a, a
	pop af
	ld a, [hli]
	ld b, e
	ld [$7fbf], sp
	sbc $47
	pop af
	ld a, [hli]
	ld l, [hl]
	db $76
	cp a
	ld a, a
	sbc $47
	pop af
	ld a, [hli]
	dec d
	db $10
	cp a
	ld a, a
	sbc b
	ld a, d
	adc e
	ld a, d
	ld b, e
	ld [$7fbf], sp
	sbc $46
	ret nc

	ld c, l
	ld b, e
	ld [$7fbf], sp
	sub d
	ld l, [hl]
	db $eb
	ld e, l
	ld b, e
	ld [$7fbf], sp
	sbc a
	ld a, [hli]
	ld e, d
	add hl, de
	ld b, e
	ld [$7fbf], sp
	dec [hl]
	ld [hl], a
	ld l, [hl]
	ld h, [hl]
	ld b, e
	ld [$7fbf], sp
	db $db
	ld h, d
	push af
	ld e, l
	ld b, e
	ld [$7fbf], sp
	sbc h
	ld a, $d5
	dec h
	ld b, e
	ld [$7fbf], sp
	ld d, h
	ld b, e
	adc c
	ld l, $43
	ld [$7fbf], sp
	sbc $62
	db $fc
	ld d, l
	ld b, e
	ld [$7fbf], sp
	sbc a
	dec sp
	sbc d
	ld [bc], a
	ld b, e
	ld [$7fbf], sp
	cp d
	ld e, d
	rst $28
	ld c, c
	ld b, e
	ld [$7fbf], sp
	cp d
	ld e, d
	sbc e
	ld a, [de]
	ld b, e
	ld [$7fbf], sp
	rst $38
	ld b, a
	add hl, sp
	ld d, [hl]
	ld b, e
	ld [$7fbf], sp
	or $43
	add hl, sp
	ld d, [hl]
	ld b, e
	ld [$7fbf], sp
	ld [hl], b
	db $76
	add hl, sp
	ld d, [hl]
	ld b, e
	ld [$7fbf], sp
	rst $20
	inc e
	ld h, d
	inc c
	ld b, e
	ld [$7fbf], sp
	ld e, [hl]
	ccf
	adc c
	ld l, $43
	ld [$7fbf], sp
	ld e, [hl]
	ccf
	sbc d
	ld [bc], a
	ld b, e
	ld [$7fbf], sp
	ld e, [hl]
	ccf
	ld e, d
	add hl, de
	ld b, e
	ld [$7fbf], sp
	sbc $46
	db $eb
	ld e, l
	ld b, e
	ld [$7fbf], sp
	push de
	dec h
	ld [de], a
	ld e, e
	ld b, e
	ld [$7fbf], sp
	sbc a
	dec sp
	sbc b
	ld a, [hli]
	ld b, e
	ld [$1010], sp
	ld de, $1010
	db $10
	ld de, $1010
	db $10
	ld de, $1010
	db $10
	ld de, $1010
	db $10
	ld de, $1010
	db $10
	ld de, $1010
	db $10
	ld de, $1010
	db $10
	ld de, $1010
	db $10
	ld de, $1010
	db $10
	ld de, $1010
	db $10
	ld de, $1010
	db $10
	ld de, $1010
	db $10
	ld de, $1010
	db $10
	ld de, $1010
	db $10
	ld de, $1010
	db $10
	ld de, $2010
	db $10
	ld hl, $2010
	db $10
	ld hl, $2010
	db $10
	ld hl, $2010
	db $10
	ld hl, $2010
	db $10
	ld hl, $2010
	db $10
	ld hl, $2010
	db $10
	ld hl, $2010
	db $10
	ld hl, $2010
	db $10
	ld hl, $2010
	db $10
	ld hl, $2010
	db $10
	ld hl, $2010
	db $10
	ld hl, $2010
	db $10
	ld hl, $2010
	db $10
	ld hl, $2010
	db $10
	ld hl, $2010
	db $10
	ld hl, $1010
	db $10
	ld de, $1010
	db $10
	ld de, $1010
	db $10
	ld de, $1010
	db $10
	ld de, $1010
	db $10
	ld de, $1010
	db $10
	ld de, $1010
	db $10
	ld de, $1010
	db $10
	ld de, $1010
	db $10
	ld de, $1010
	db $10
	ld de, $1010
	db $10
	ld de, $1010
	db $10
	ld de, $1010
	db $10
	ld de, $1010
	db $10
	ld de, $1010
	db $10
	ld de, $1010
	db $10
	ld de, $2010
	db $10
	jr nc, jr_01c_6cb6

	ld sp, $3114
	ld d, h
	jr nc, jr_01c_6cfc

	ld d, d
	db $10
	ld d, d
	db $10
	ld d, d
	db $10
	ld d, d
	db $10
	ld d, d
	db $10
	ld d, d
	db $10
	ld d, d
	db $10

jr_01c_6cb6:
	ld d, d
	db $10
	ld d, $10
	ld [de], a
	db $10
	inc de
	db $10
	inc d
	db $10
	ld d, d
	db $10
	ld d, d
	db $10
	ld d, d
	db $10
	ld d, d
	db $10
	ld d, d
	db $10
	ld d, d
	db $10
	ld d, d
	db $10
	ld d, d
	db $10
	ld d, d
	db $10
	ld d, d
	db $10
	jr nc, @+$16

	ld sp, $3114
	ld d, h
	jr nc, jr_01c_6d30

	ld hl, $1010
	db $10
	jr nc, jr_01c_6cfa

	ld sp, $3118
	ld e, b
	jr nc, jr_01c_6d40

	ld bc, $1c10
	db $10
	inc e
	db $10
	inc e
	db $10
	inc e
	db $10
	inc e
	db $10
	inc e
	db $10
	inc e
	db $10
	inc e
	db $10

jr_01c_6cfa:
	inc e
	db $10

jr_01c_6cfc:
	inc e
	db $10
	inc e
	db $10
	inc e
	db $10
	inc e
	db $10
	inc e
	db $10
	inc e
	db $10
	inc e
	db $10
	inc e
	db $10
	inc e
	db $10
	inc e
	db $10
	inc e
	db $10
	dec c
	db $10
	jr nc, jr_01c_6d2e

	ld sp, $3118
	ld e, b
	jr nc, jr_01c_6d74

	ld de, $2010
	db $10
	ld c, $14
	rrca
	inc d
	rrca
	ld d, h
	ld c, $54
	ld b, e
	stop
	nop
	nop
	nop

jr_01c_6d2e:
	nop
	nop

jr_01c_6d30:
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

jr_01c_6d40:
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
	ld b, e
	db $10
	ld c, $18
	rrca
	jr jr_01c_6d68

	ld e, b
	ld c, $58
	ld hl, $1010
	db $10
	inc [hl]
	inc d
	dec [hl]
	inc d
	ld [hl], $14
	ld e, $14

jr_01c_6d68:
	ld b, e
	stop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

jr_01c_6d74:
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
	ld b, e
	db $10
	jr c, jr_01c_6dae

	add hl, sp
	jr jr_01c_6dd3

	jr @+$3d

	jr jr_01c_6dae

	db $10
	jr nz, jr_01c_6db0

	ld b, h
	inc d
	ld b, l
	inc d
	ld b, [hl]
	inc d
	ld b, a
	inc d
	ld b, e
	stop
	nop
	nop
	nop

jr_01c_6dae:
	nop
	nop

jr_01c_6db0:
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
	ld b, e

jr_01c_6dd3:
	db $10
	ld c, b
	jr jr_01c_6e20

	jr jr_01c_6e23

	jr jr_01c_6e26

	jr jr_01c_6dfe

	db $10
	db $10
	db $10
	ld d, h
	inc d
	ld d, l
	inc d
	ld d, [hl]
	inc d
	ld d, a
	inc d
	ld b, e
	stop
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

jr_01c_6dfe:
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
	ld b, e
	db $10
	ld e, b
	jr jr_01c_6e70

	jr jr_01c_6e73

	jr jr_01c_6e76

	jr jr_01c_6e2e

	db $10
	jr nz, jr_01c_6e30

jr_01c_6e20:
	ld e, $54
	ld d, d

jr_01c_6e23:
	inc d
	scf
	inc d

jr_01c_6e26:
	ld e, $14
	ld b, e
	stop
	nop
	nop
	nop

jr_01c_6e2e:
	nop
	nop

jr_01c_6e30:
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
	ld b, e
	db $10
	ld e, $58
	ld d, d
	jr jr_01c_6eab

	jr jr_01c_6e79

	jr jr_01c_6e7e

	db $10
	db $10
	db $10
	ld b, b
	jr jr_01c_6eb6

	jr jr_01c_6eb8

	jr jr_01c_6ea7

	ld e, b
	ld b, e
	stop
	nop
	nop
	nop
	nop
	nop

jr_01c_6e70:
	nop
	nop
	nop

jr_01c_6e73:
	nop
	nop
	nop

jr_01c_6e76:
	nop
	nop
	nop

jr_01c_6e79:
	nop
	nop
	nop
	nop
	nop

jr_01c_6e7e:
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
	ld b, e
	db $10
	ld b, b
	inc d
	ld d, e
	inc d
	ld d, e
	inc d
	ld b, b
	ld d, h
	ld de, $2010
	db $10
	ld d, b
	jr jr_01c_6ef4

	jr jr_01c_6ef6

	ld e, b
	ld d, b

jr_01c_6ea7:
	ld e, b
	ld b, e
	stop

jr_01c_6eab:
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

jr_01c_6eb6:
	nop
	nop

jr_01c_6eb8:
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
	ld b, e
	db $10
	ld d, b
	inc d
	ld d, c
	inc d
	ld d, c
	ld d, h
	ld d, b
	ld d, h
	ld hl, $1010
	db $10
	ld de, $1010
	db $10
	ld de, $1010
	db $10
	ld b, e
	stop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

jr_01c_6ef4:
	nop
	nop

jr_01c_6ef6:
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
	ld b, e
	db $10
	ld de, $1010
	db $10
	ld de, $1010
	db $10
	ld de, $2010
	db $10
	ld hl, $2010
	db $10
	ld hl, $2010
	db $10
	ld b, e
	stop
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
	ld b, e
	db $10
	ld hl, $2010
	db $10
	ld hl, $2010
	db $10
	ld hl, $1010
	db $10
	ld de, $1010
	db $10
	ld de, $1010
	db $10
	ld b, e
	stop
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
	ld b, e
	db $10
	ld de, $1010
	db $10
	ld de, $1010
	db $10
	ld de, $2010
	db $10
	ld c, $14
	rrca
	inc d
	rrca
	ld d, h
	ld c, $54
	ld b, e
	stop
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
	ld b, e
	db $10
	ld c, $18
	rrca
	jr jr_01c_6fe8

	ld e, b
	ld c, $58
	ld hl, $1010
	db $10
	ld c, $18
	rrca
	jr jr_01c_6ff4

	ld e, b
	ld c, $58

jr_01c_6fe8:
	ld b, e
	stop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

jr_01c_6ff4:
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
	ld b, e
	db $10
	ld c, $14
	rrca
	inc d
	rrca
	ld d, h
	ld c, $54
	ld de, $2010
	db $10
	jr c, jr_01c_703a

	add hl, sp
	jr jr_01c_705f

	jr jr_01c_7062

	jr jr_01c_706c

	stop
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

jr_01c_703a:
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
	ld b, e
	db $10
	inc [hl]
	inc d
	dec [hl]
	inc d
	ld [hl], $14
	ld e, $14
	ld hl, $1010

jr_01c_705f:
	db $10
	jr nc, jr_01c_7076

jr_01c_7062:
	ld sp, $3114
	ld d, h
	jr nc, jr_01c_70bc

	ld b, e
	stop
	nop

jr_01c_706c:
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

jr_01c_7076:
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
	ld b, e
	db $10
	jr nc, jr_01c_70ae

	ld sp, $3118
	ld e, b
	jr nc, jr_01c_70f4

	ld de, $2010
	db $10
	inc a
	inc d
	dec a
	inc d
	ld a, $14
	ld [hld], a
	ld d, h
	ld b, e
	stop
	nop
	nop
	nop

jr_01c_70ae:
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

jr_01c_70bc:
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
	ld b, e
	db $10
	ld [hli], a
	jr jr_01c_70fa

	jr jr_01c_70fd

	jr jr_01c_710d

	ld e, b
	ld hl, $1010
	db $10
	ld c, h
	inc d
	ld c, l
	inc d
	ld c, [hl]
	inc d
	ld c, a
	inc d
	ld b, e
	stop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

jr_01c_70f4:
	nop
	nop
	nop
	nop
	nop
	nop

jr_01c_70fa:
	nop
	nop
	nop

jr_01c_70fd:
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

jr_01c_710d:
	nop
	nop
	nop
	nop
	nop
	ld b, e
	db $10
	dec h
	jr jr_01c_713d

	jr jr_01c_7140

	jr jr_01c_7143

	jr jr_01c_712e

	db $10
	jr nz, jr_01c_7130

	ld e, h
	inc d
	ld e, l
	inc d
	ld e, [hl]
	inc d
	ld e, a
	inc d
	ld b, e
	stop
	nop
	nop
	nop

jr_01c_712e:
	nop
	nop

jr_01c_7130:
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

jr_01c_713d:
	nop
	nop
	nop

jr_01c_7140:
	nop
	nop
	nop

jr_01c_7143:
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
	ld b, e
	db $10
	add hl, hl
	jr jr_01c_7181

	jr jr_01c_7184

	jr jr_01c_7187

	jr jr_01c_717e

	db $10
	db $10
	db $10
	ld [hld], a
	inc d
	dec l
	inc d
	ld l, $14
	cpl
	inc d
	ld b, e
	stop
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

jr_01c_717e:
	nop
	nop
	nop

jr_01c_7181:
	nop
	nop
	nop

jr_01c_7184:
	nop
	nop
	nop

jr_01c_7187:
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
	ld b, e
	db $10
	ld [hld], a
	jr jr_01c_71ae

	jr jr_01c_71b1

	jr jr_01c_71b4

	jr jr_01c_71ae

	db $10
	jr nz, jr_01c_71b0

	ld b, b
	inc d
	ld d, e
	inc d
	ld d, e
	inc d
	ld b, b
	ld d, h
	ccf
	db $10
	inc e
	db $10
	inc e
	db $10

jr_01c_71ae:
	inc e
	db $10

jr_01c_71b0:
	inc e

jr_01c_71b1:
	db $10
	inc e
	db $10

jr_01c_71b4:
	inc e
	db $10
	inc e
	db $10
	inc e
	db $10
	inc e
	db $10
	inc e
	db $10
	inc e
	db $10
	inc e
	db $10
	inc e
	db $10
	inc e
	db $10
	inc e
	db $10
	inc e
	db $10
	inc e
	db $10
	inc e
	db $10
	inc e
	db $10
	inc e
	db $10
	ld b, c
	db $10
	ld b, b
	inc d
	ld d, e
	inc d
	ld d, e
	inc d
	ld b, b
	ld d, h
	ld hl, $1010
	db $10
	ld d, b
	inc d
	ld d, c
	inc d
	ld d, c
	ld d, h
	ld d, b
	ld d, h
	ld d, d
	db $10
	inc c
	db $10
	inc c
	db $10
	ld [bc], a
	db $10
	inc bc
	db $10
	inc b
	db $10
	dec b
	db $10
	ld b, $10
	rlca
	db $10
	ld d, d
	db $10
	ld [$0310], sp
	db $10
	add hl, bc
	db $10
	ld a, [bc]
	db $10
	rlca
	db $10
	ld b, $10
	dec bc
	db $10
	ld a, [bc]
	db $10
	dec e
	db $10
	inc c
	db $10
	inc c
	db $10
	ld d, d
	db $10
	ld d, b
	inc d
	ld d, c
	inc d
	ld d, c
	ld d, h
	ld d, b
	ld d, h
	ld de, $2010
	db $10
	ld hl, $2010
	db $10
	ld hl, $2010
	db $10
	ld hl, $2010
	db $10
	ld hl, $2010
	db $10
	ld hl, $2010
	db $10
	ld hl, $2010
	db $10
	ld hl, $2010
	db $10
	ld hl, $2010
	db $10
	ld hl, $2010
	db $10
	ld hl, $2010
	db $10
	ld hl, $2010
	db $10
	ld hl, $2010
	db $10
	ld hl, $2010
	db $10
	ld hl, $2010
	db $10
	ld hl, $2010
	db $10
	ld hl, $1010
	db $10
	ld de, $1010
	db $10
	ld de, $1010
	db $10
	ld de, $1010
	db $10
	ld de, $1010
	db $10
	ld de, $1010
	db $10
	ld de, $1010
	db $10
	ld de, $1010
	db $10
	ld de, $1010
	db $10
	ld de, $1010
	db $10
	ld de, $1010
	db $10
	ld de, $1010
	db $10
	ld de, $1010
	db $10
	ld de, $1010
	db $10
	ld de, $1010
	db $10
	ld de, $1010
	db $10
	ld de, $2010
	db $10
	ld hl, $2010
	db $10
	ld hl, $2010
	db $10
	ld hl, $2010
	db $10
	ld hl, $2010
	db $10
	ld hl, $2010
	db $10
	ld hl, $2010
	db $10
	ld hl, $2010
	db $10
	ld hl, $2010
	db $10
	ld hl, $2010
	db $10
	ld hl, $2010
	db $10
	ld hl, $2010
	db $10
	ld hl, $2010
	db $10
	ld hl, $2010
	db $10
	ld hl, $2010
	db $10
	ld hl, $2010
	db $10
	ld hl, $0010
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
	cp [hl]
	ld [hl], a
	reti


	ld h, [hl]
	add hl, sp
	ld d, [hl]
	ret c

	ld sp, $0000
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
	cp [hl]
	ld [hl], a
	or $43
	sbc e
	ld a, [de]
	rst $28
	dec a
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
	cp [hl]
	ld [hl], a
	rst $38
	ld b, a
	or d
	db $76
	rst $28
	dec a
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
	rst $38
	nop
	rst $38
	rrca
	ldh a, [$1f]
	ldh [$3f], a
	rst $08
	ccf
	rst $08
	inc a
	rst $08
	inc a
	rst $08
	nop
	rst $38
	nop
	rst $38
	nop
	rst $38
	ld a, [hl]
	add e
	ld [hl], a
	sbc c
	ld [hl], a
	sbc c
	ld a, [hl]
	add e
	ld [hl], b
	sbc a
	nop
	rst $38
	nop
	rst $38
	nop
	rst $38
	ld a, $c3
	ld [hl], a
	sbc c
	ld [hl], a
	sbc c
	ld [hl], a
	sbc c
	ld a, $c3
	nop
	rst $38
	nop
	rst $38
	nop
	rst $38
	ld a, $c3
	ld [hl], b
	sbc a
	ld [hl], b
	sbc a
	ld [hl], b
	sbc a
	ld a, $c3
	nop
	rst $38
	nop
	rst $38
	nop
	rst $38
	ld [hl], a
	sbc c
	ld a, [hl]
	sub e
	ld a, h
	add a
	ld a, [hl]
	sub e
	ld [hl], a
	sbc c
	nop
	rst $38
	nop
	rst $38
	nop
	rst $38
	ccf
	pop bc
	ld [hl], b
	sbc a
	ld a, [hl]
	add e
	ld [hl], b
	sbc a
	ccf
	pop bc
	nop
	rst $38
	nop
	rst $38
	nop
	rst $38
	ld a, a
	add c
	inc e
	rst $20
	inc e
	rst $20
	inc e
	rst $20
	inc e
	rst $20
	nop
	rst $38
	nop
	rst $38
	nop
	rst $38
	rst $20
	add hl, sp
	rst $38
	ld de, $29ff
	rst $38
	add hl, hl
	rst $20
	add hl, sp
	nop
	rst $38
	nop
	rst $38
	nop
	rst $38
	ld [hl], a
	sbc c
	ld a, a
	adc c
	ld a, a
	sub c
	ld [hl], a
	sbc c
	ld [hl], a
	sbc c
	nop
	rst $38
	nop
	rst $38
	nop
	rst $38
	ccf
	pop bc
	ld [hl], b
	sbc a
	ccf
	pop bc
	rlca
	ld sp, hl
	ld a, [hl]
	add e
	nop
	rst $38
	nop
	rst $38
	nop
	rst $38
	ld a, [hl]
	add e
	ld [hl], a
	sbc c
	ld [hl], a
	sbc c
	ld a, h
	add a
	ld [hl], a
	sbc c
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
	ld a, [hl]
	xor e
	ld a, $d5
	nop
	rst $38
	nop
	rst $38
	nop
	rst $38
	ldh a, [rIF]
	ldh a, [rIF]
	db $ec
	rst $38
	call c, $3cef
	rst $08
	inc a
	rst $08
	rst $38
	rst $38
	ret nz

	ret nz

	add b
	add b
	add b
	sbc a
	add b
	sbc a
	add b
	sbc a
	add b
	sbc a
	add b
	sbc a
	rst $38
	rst $38
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
	rst $38
	rst $38
	rst $38
	cp $ff
	db $fc
	rst $38
	ld hl, sp-$01
	ldh a, [$e7]
	ld hl, sp-$3d
	db $fc
	add c
	cp $ff
	nop
	rst $38
	ld bc, $03ff
	rst $38
	rlca
	rst $38
	rrca
	rst $20
	rra
	jp $813f


	ld a, a
	nop
	rst $38
	nop
	rst $38
	nop
	rst $38
	ld a, h
	rst $38
	ld h, [hl]
	rst $38
	ld h, [hl]
	rst $38
	ld a, b
	rst $38
	ld h, [hl]
	rst $38
	nop
	rst $38
	nop
	rst $38
	nop
	rst $38
	ld a, $ff
	ld h, b
	rst $38
	ld a, h
	rst $38
	ld h, b
	rst $38
	ld a, $ff
	nop
	rst $38
	nop
	rst $38
	nop
	rst $38
	ld a, h
	rst $38
	ld h, [hl]
	rst $38
	ld h, [hl]
	rst $38
	ld h, [hl]
	rst $38
	ld a, h
	rst $38
	nop
	rst $38
	nop
	rst $38
	nop
	rst $38
	nop
	rst $38
	inc c
	rst $38
	ld e, $ff
	ccf
	rst $38
	ld a, a
	rst $38
	nop
	rst $38
	nop
	rst $38
	nop
	rst $38
	jr c, @+$01

	ld a, h
	rst $38
	ld a, h
	rst $38
	ld a, h
	rst $38
	jr c, @+$01

	ld d, b
	ld [hl], b
	sub b
	ldh a, [$88]
	rst $38
	and $7e
	sub c
	sbc a
	rst $38
	ld a, [hl]
	rst $38
	nop
	rst $38
	nop
	ld [$1009], sp
	ld sp, wd310
	db $10
	rra
	ld sp, hl
	rst $38
	cp $06
	rst $38
	inc bc
	rst $38
	nop
	dec c
	db $fd
	dec c
	db $fd
	add hl, bc
	ld sp, hl
	add hl, bc
	ld sp, hl
	ret


	ld sp, hl
	add hl, sp
	ld sp, $e1f9
	ld sp, hl
	ld bc, $00ff
	rst $38
	ld bc, $03ff
	rst $38
	rlca
	rst $38
	rrca
	rst $20
	rra
	jp $813f


	ld a, a
	rst $38
	nop
	rst $38
	ld bc, $03ff
	rst $38
	rlca
	rst $38
	rrca
	rst $20
	rra
	jp $813f


	ld a, a
	nop
	rst $38
	nop
	rst $38
	rst $38
	nop
	rst $38
	nop
	rst $38
	rst $38
	rst $38
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
	inc e
	rst $20
	ld a, $c3
	inc e
	rst $20
	nop
	rst $38
	inc e
	rst $20
	ld bc, $01f9
	ld sp, hl
	ld bc, $01f9
	ld sp, hl
	ld bc, $01f9
	ld sp, hl
	ld bc, $01f9
	ld sp, hl
	rst $38
	nop
	rst $38
	ld bc, $03ff
	rst $38
	rlca
	rst $38
	rrca
	rst $20
	rra
	jp $813f


	ld a, a
	nop
	rst $38
	nop

jr_01c_7641:
	rst $38
	nop
	rst $38
	nop
	rst $38
	inc c
	rst $38
	ld e, $ff
	ccf
	rst $38
	ld a, a
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
	jr jr_01c_7641

	inc a
	jp $81fe


	sbc a
	add b
	sbc a
	add b
	sbc a
	add b
	sbc a
	add b
	sbc a
	add e
	sbc h
	add h
	sbc a
	add e
	sbc a
	add b
	rst $38
	nop
	rst $38
	nop
	rst $38
	jr @-$17

	dec l
	jp Jump_01c_76ff


	ld a, a
	ld a, [bc]
	rra
	ret z

	rst $38
	rst $38
	nop
	rst $38
	ld h, b
	sbc a
	sub b
	ccf
	ld [hl], b
	ld a, a
	ld hl, sp-$31
	db $fc
	rlca
	db $fc
	rlca
	rst $38
	sbc a
	add c
	sbc [hl]
	add d
	sbc [hl]
	add d
	cp h
	cp h
	and a
	and a
	sub h
	sub h
	sbc c
	adc c
	sbc [hl]
	adc [hl]
	jr nc, @+$41

	inc bc
	cpl
	inc b
	ld e, h
	ld [$0d28], sp
	ld e, l
	sbc [hl]
	cp a
	sub b
	rst $38
	add c
	rst $38
	ldh [$fd], a
	ld b, h
	ld a, [hl]
	ld b, d
	ld a, a
	add c
	rst $38
	inc bc
	rst $38
	ld bc, $60ff
	rst $38
	ret nz

	rst $38
	ld sp, hl
	cp c
	ld h, l
	push hl
	dec b
	dec b
	add hl, bc
	xor c
	add hl, bc
	ld e, c
	adc c
	ld sp, hl
	add hl, sp
	pop af
	adc c
	xor c
	sbc e
	adc a
	sbc h
	adc a
	sbc a
	add a
	sbc a
	add b
	sbc a
	add e
	sbc [hl]
	add a
	sbc l
	add l
	sbc a
	add e
	ld b, $fe
	ccf
	rst $38
	ld hl, sp-$01
	add e
	cp a
	db $fc
	ld a, a
	ldh [$e1], a
	and b
	ldh [$60], a
	ld a, a
	ld e, b
	ld a, a
	ld h, b
	ld a, a
	ldh [$e7], a
	ld b, c
	rst $00
	and c
	xor a
	ld a, [c]
	rst $38
	sbc l
	sbc a
	ld [hl], b
	rst $38
	add l

Jump_01c_76ff:
	push de
	ld h, l
	db $fd
	ld e, c
	reti


	ld h, l
	push af
	dec h
	db $fd
	add hl, sp
	ld sp, hl
	push hl
	push af
	dec d
	db $fd
	and b
	ldh [$b0], a
	ldh a, [$d8]
	ld a, b
	sub a
	cp a
	rst $38
	ld a, [hl]
	rst $38
	nop
	rst $38
	nop
	rst $38
	nop
	inc d
	inc e
	inc d
	inc e
	inc de
	rra
	ei
	rst $38
	cp $06
	rst $38
	inc bc
	rst $38
	nop
	rst $38
	nop
	sub l
	push af
	sbc l
	db $fd
	dec d
	push af
	push de
	push af
	dec [hl]
	dec [hl]
	ld sp, hl
	jp hl


	ld sp, hl
	ld bc, $01f9
	rst $38
	rst $38
	ret nz

	ret nz

	add b
	add b
	sbc a
	add b
	sbc a
	add b
	sbc a
	add b
	sbc a
	add b
	sbc a
	add b
	rst $38
	rst $38
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
	sbc a
	add b
	sbc a
	add b
	sbc a
	add b
	sbc a
	add b
	sbc a
	add b
	sbc a
	add b
	sbc a
	add b
	sbc a
	add b
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
	add b
	sbc a
	add c
	sbc a
	add d
	sbc [hl]
	add e
	sbc a
	add a
	sbc h
	sbc e
	sbc d
	and c
	and c
	sbc l
	sbc l
	scf
	rst $38
	ret c

	ret c

	di
	di
	cp $37
	rst $08
	ld c, c
	rst $28
	add sp, -$01
	nop
	rst $08
	add b
	nop
	rst $38
	add b
	rst $38
	nop
	rst $38
	nop
	rst $38
	nop
	rst $38
	add b
	rst $38
	add b
	rst $38
	ldh [$7f], a
	or b
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
	add b
	sbc a
	add c
	sbc a
	add e
	sbc a
	add e
	sbc a
	add d
	sbc [hl]
	add d
	sbc [hl]
	add c
	sbc a
	add c
	sbc a
	nop
	rst $38
	adc a
	rst $38
	ldh a, [$f0]
	ld h, $26
	ld b, c
	ld b, c
	ld b, c
	ld b, c
	ld b, d
	ld b, d
	inc a
	inc a
	ld b, $ff
	rra
	rst $38
	rst $20
	rst $20
	ld c, a
	ld c, e
	rra
	ld de, $111d
	dec c
	add hl, bc
	ld [bc], a
	ld [bc], a
	ld bc, $01f9
	ld sp, hl
	ld bc, $01f9
	ld sp, hl
	ld bc, $01f9
	ld sp, hl
	pop bc
	ld sp, hl
	ld hl, $9f39
	add c
	sbc a
	add b
	sbc a
	add b
	sbc a
	add b
	sbc a
	add c
	sbc [hl]
	add d
	sbc h
	add h
	sbc h
	add h
	rst $38
	ldh [$9f], a
	rst $38
	ldh [$61], a
	add c
	add e
	nop
	rlca
	rlca
	rra
	ld a, [de]
	dec sp
	ld [hli], a
	ld h, e
	rst $38
	inc a
	jp $81c2


	adc a
	rlca
	ld a, $0f
	ld hl, sp+$1f
	ldh a, [rIF]
	ld hl, sp+$07
	db $fc
	inc a
	rst $08
	inc a
	rst $08
	dec sp
	call z, wc837
	rrca
	rst $38
	rrca
	rst $38
	nop
	rst $38
	nop
	rst $38
	add b
	add b
	add b
	add b
	add b
	add b
	add b
	add b
	add b
	add b
	add b
	add b
	add b
	add b
	add b
	add b
	inc a
	rst $08
	inc a
	rst $08
	db $fc
	rrca
	db $fc
	rrca
	ld hl, sp-$01
	ldh a, [rIE]
	nop
	rst $38
	nop
	rst $38
	add b
	add b
	add b
	add b
	add b
	add b
	add b
	add b
	add b
	add b
	add b
	add b
	add b
	add b
	add b
	add b
	inc a
	rst $08
	inc a
	rst $08
	inc a
	rst $08
	inc a
	rst $08
	inc a
	rst $08
	inc a
	rst $08
	inc a
	rst $08
	inc a
	rst $08
	adc [hl]
	sbc [hl]
	add h
	sbc h
	adc c
	sbc c
	adc [hl]
	sbc [hl]
	adc b
	sbc b
	adc b
	sbc b
	add h
	sbc h
	add h
	sbc h
	add a
	add b
	add a
	add c
	rrca
	ld [bc], a
	rra
	ld [bc], a
	rlca
	inc b
	rlca
	inc b
	rlca
	inc b
	inc bc
	ld [bc], a
	ldh a, [rIE]
	db $fc
	rrca
	cp $03
	db $fd
	ld bc, $00fc
	ld hl, sp+$00
	ld hl, sp+$00
	ldh a, [rP1]
	add hl, sp
	ld sp, hl
	ld c, l
	call wdd55
	sub l
	sbc l
	xor l
	cp l
	ld l, c
	ld a, c
	ld sp, $2139
	add hl, sp
	add d
	sbc [hl]
	add d
	sbc [hl]
	add d
	sbc [hl]
	add h
	sbc h
	add h
	sbc h
	add h
	sbc h
	add h
	sbc h
	adc h
	sbc h
	ld b, $00
	ld h, l
	inc b
	and l
	inc h
	and b
	jr nz, jr_01c_78d7

jr_01c_78d7:
	nop
	jr jr_01c_78f2

	ld [$0008], sp
	nop
	ld [bc], a
	ld [bc], a
	ld [bc], a
	ld [bc], a
	inc bc
	ld bc, $0103
	inc bc
	ld [bc], a
	ld bc, $1100
	ld de, $1113
	ld hl, wc139
	ld a, c

jr_01c_78f2:
	pop bc
	ld sp, hl
	pop hl
	ld a, c
	sub c
	sbc c
	sub c
	add hl, de
	ret


	add hl, bc
	jp hl


	adc c
	sbc b
	adc b
	sbc b
	adc c
	sub b
	sub c
	sub b
	sub e
	sub b
	sbc a
	sub [hl]
	sbc a
	sbc b
	adc a
	sbc a
	add a
	ld b, h
	rst $00
	ld l, b
	rst $28
	pop af
	rst $38
	add e
	rst $38
	inc b
	db $fc
	ld e, $fe
	ld h, c
	pop hl
	db $fc
	db $fc
	rrca
	rst $38
	ld [$90f8], sp
	db $fc
	sub b
	cp a
	sub c
	sbc a
	sbc [hl]
	sbc a
	adc b
	adc a
	ld [$f90f], sp
	ld bc, $81f9
	ld a, c
	ld b, c
	ld a, c
	ld b, c
	ld sp, hl
	pop bc
	cp c
	and c
	cp c
	and c
	ld sp, hl
	pop af
	add b
	add b
	add b
	add b
	add b
	add b
	add b
	add b
	add b
	add b
	add b
	add b
	ret nz

	ret nz

	rst $38
	rst $38
	and b
	and b
	cp a
	cp a
	nop
	nop
	rst $38
	rst $38
	rst $38
	rst $38
	nop
	nop
	nop
	nop
	rst $38
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
	rst $38
	nop
	nop
	rst $38
	rst $38
	nop
	nop
	rst $38
	rst $38
	nop
	nop
	rst $38
	rst $38
	nop
	nop
	nop
	nop
	add d
	sbc [hl]
	add c
	sbc a
	add b
	sbc a
	add b
	sbc a
	add c
	sbc a
	add d
	sbc [hl]
	add l
	sbc l
	add d
	sbc a
	ld bc, $0001
	nop
	add b
	add b
	ld h, b
	ldh [$fc], a
	cp h
	rst $38
	ld b, e
	cp [hl]
	cp a
	ld b, c
	rst $38
	ret nz

	nop
	ret nz

	ret nz

	jr nc, jr_01c_79d4

	rrca
	rrca
	rra
	inc de
	rst $38
	db $ec
	rst $38
	db $d3
	ld l, h
	ld l, a
	ld b, c
	ld a, c
	ld b, c
	ld a, c
	add c
	ld sp, hl
	ld bc, $81f9
	ld sp, hl
	pop bc
	ld a, c
	add c
	ld sp, hl
	ld bc, $8af9
	sbc d
	sub d
	sub d
	sbc a
	sub e
	adc h
	sbc a
	add c
	sbc a
	add c

Jump_01c_79c9:
	sbc a
	add d
	sbc [hl]
	add c
	sbc a
	nop
	nop
	nop
	nop
	nop
	nop

jr_01c_79d4:
	add a
	add b
	rst $38
	ld h, b
	rst $38
	sbc b
	rst $38
	ld b, a
	ldh a, [rIE]
	rra
	add hl, bc
	ccf
	ld b, $ff
	ld [bc], a
	rst $38
	ld [bc], a
	rst $08
	ld [bc], a
	sbc a
	sbc d
	rst $28
	db $e4
	ccf
	rst $38
	ld sp, hl
	ld c, c
	ld sp, hl
	ld c, c
	ld sp, hl
	ld c, c
	pop af
	sbc c
	pop af
	add hl, de
	pop hl
	add hl, sp
	pop bc
	ld sp, hl
	ld bc, $9ff9
	add b
	sbc a
	add b
	sbc a
	add c
	sbc [hl]
	add e
	sbc [hl]
	add d
	sbc a
	add c
	sbc [hl]
	add d
	sbc a
	add e
	db $fc
	inc c
	ld hl, sp+$78
	adc h
	db $fc
	ld [hli], a
	xor $22
	ld l, [hl]
	ld [bc], a
	ld e, $ff
	rst $38
	jr nz, jr_01c_7a3e

	jr @+$21

	jr nz, @+$41

	ld b, b
	ld a, a
	and c
	cp a
	db $e3
	rst $38
	cp h
	cp a
	pop af
	rst $38
	daa
	ccf
	ld l, c
	jp hl


	jp hl


	jp hl


	cp c
	ld sp, hl
	and l
	push hl
	ld [hl], l
	push af
	sub l
	sub l
	sbc c
	sbc c
	push af
	push af

jr_01c_7a3e:
	call $03bf
	call $36ca
	call $36ea
	call Call_01c_7a89
	jr c, jr_01c_7a5a

	call Call_01c_7afa
	jr c, jr_01c_7a5a

	call Call_01c_7b27
	jr c, jr_01c_7a5a

	ld a, $02
	jr jr_01c_7a70

jr_01c_7a5a:
	ld hl, wd6af
	push hl
	set 6, [hl]
	ld hl, $7a74
	call $3c79
	ld c, $64
	call $3781
	pop hl
	res 6, [hl]
	ld a, $01

jr_01c_7a70:
	ld [wd065], a
	ret


	nop
	sbc e
	add b
	add c
	and [hl]
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
	ld e, b

Call_01c_7a89:
	ld a, $0a
	ld [$0000], a
	ld a, $01
	ld [$6000], a
	ld [$4000], a
	ld hl, $a598
	ld bc, $0ffc
	call Call_01c_7cec
	ld c, a
	ld a, [$b594]
	cp c
	jp z, Jump_01c_7ab8

	ld hl, $a598
	ld bc, $0ffc
	call Call_01c_7cec
	ld c, a
	ld a, [$b594]
	cp c
	jp nz, Jump_01c_7b61

Jump_01c_7ab8:
	ld hl, $a598
	ld de, wd11d
	ld bc, $0006
	call $01bb
	ld hl, $a59e
	ld de, wd27b
	ld bc, $0737
	call $01bb
	ld a, [wd2e6]
	set 7, a
	ld [wd2e6], a
	ld hl, $acd5
	ld de, wc100
	ld bc, $0200
	call $01bb
	ld a, [$b593]
	ld [$ffd7], a
	ld hl, $b02d
	ld de, wd9b2
	ld bc, $0566
	call $01bb
	and a
	jp Jump_01c_7b62


Call_01c_7afa:
	ld a, $0a
	ld [$0000], a
	ld a, $01
	ld [$6000], a
	ld [$4000], a
	ld hl, $a598
	ld bc, $0ffc
	call Call_01c_7cec
	ld c, a
	ld a, [$b594]
	cp c
	jr nz, jr_01c_7b61

	ld hl, $b02d
	ld de, wd9b2
	ld bc, $0566
	call $01bb
	and a
	jp Jump_01c_7b62


Call_01c_7b27:
Jump_01c_7b27:
	ld a, $0a
	ld [$0000], a
	ld a, $01
	ld [$6000], a
	ld [$4000], a
	ld hl, $a598
	ld bc, $0ffc
	call Call_01c_7cec
	ld c, a
	ld a, [$b594]
	cp c
	jp nz, Jump_01c_7b61

	ld hl, $aed5
	ld de, wd123
	ld bc, $0158
	call $01bb
	ld hl, $a59e
	ld de, wd27b
	ld bc, $0026
	call $01bb
	and a
	jp Jump_01c_7b62


Jump_01c_7b61:
jr_01c_7b61:
	scf

Jump_01c_7b62:
	ld a, $00
	ld [$6000], a
	ld [$0000], a
	ret


	call Call_01c_7a89
	call Call_01c_7afa
	jp Jump_01c_7b27


	ld b, $01
	ld hl, $5c41
	call $3620
	ld hl, $7bc6
	call Call_01c_7bb1
	and a
	ret nz

	ld c, $28
	call $3781
	call Call_01c_7f2d
	jr z, jr_01c_7b96

	ld hl, $7bfa
	call Call_01c_7bb1
	and a
	ret nz

jr_01c_7b96:
	ld hl, $7be3
	call $3c79
	call Call_01c_7ce3
	ld c, $0a
	call $3781
	ld a, $b6
	call $3788
	call $3790
	ld c, $1e
	jp $3781


Call_01c_7bb1:
	call $3c79
	ld hl, wc42c
	ld bc, $0801
	ld a, $14
	ld [wd0ea], a
	call $3130
	ld a, [wcc26]
	ret


	db $00, $ba, $ba, $cf, $33, $c9, $7f, $b6, $c2, $d4, $b8, $dd, $4f, $54, $a7, $43
	db $e3, $93, $c6, $7f, $b6, $b7, $ba, $d0, $cf, $bd, $b6, $e6, $57, $00, $52, $ca
	db $4f, $a7, $43, $e3, $93, $c6, $7f, $bc, $df, $b6, $d8, $7f, $b6, $b7, $c9, $ba
	db $bc, $c0, $e7, $57, $00, $cf, $b4, $c6, $7f, $b6, $b6, $da, $c0, $7f, $a7, $43
	db $e3, $93, $26, $4f, $b7, $b4, $c3, $7f, $bc, $cf, $b2, $cf, $bd, $26, $55, $b3
	db $b4, $b6, $d7, $7f, $b6, $b2, $c3, $d3, $7f, $b2, $b2, $33, $bd, $b6, $e6, $57

Call_01c_7c26:
	ld a, $0a
	ld [$0000], a
	ld a, $01
	ld [$6000], a
	ld [$4000], a
	ld hl, wd11d
	ld de, $a598
	ld bc, $0006
	call $01bb
	ld hl, wd27b
	ld de, $a59e
	ld bc, $0737
	call $01bb
	ld hl, wc100
	ld de, $acd5
	ld bc, $0200
	call $01bb
	ld hl, wd9b2
	ld de, $b02d
	ld bc, $0566
	call $01bb
	ld a, [$ffd7]
	ld [$b593], a
	ld hl, $a598
	ld bc, $0ffc
	call Call_01c_7cec
	ld [$b594], a
	xor a
	ld [$6000], a
	ld [$0000], a
	ret


Call_01c_7c7d:
	ld a, $0a
	ld [$0000], a
	ld a, $01
	ld [$6000], a
	ld [$4000], a
	ld hl, wd9b2
	ld de, $b02d
	ld bc, $0566
	call $01bb
	ld hl, $a598
	ld bc, $0ffc
	call Call_01c_7cec
	ld [$b594], a
	xor a
	ld [$6000], a
	ld [$0000], a
	ret


Jump_01c_7caa:
	ld a, $0a
	ld [$0000], a
	ld a, $01
	ld [$6000], a
	ld [$4000], a
	ld hl, wd123
	ld de, $aed5
	ld bc, $0158
	call $01bb
	ld hl, wd27b
	ld de, $a59e
	ld bc, $0026
	call $01bb
	ld hl, $a598
	ld bc, $0ffc
	call Call_01c_7cec
	ld [$b594], a
	xor a
	ld [$6000], a
	ld [$0000], a
	ret


Call_01c_7ce3:
	call Call_01c_7c26
	call Call_01c_7c7d
	jp Jump_01c_7caa


Call_01c_7cec:
	ld d, $00

jr_01c_7cee:
	ld a, [hli]
	add d
	ld d, a
	dec bc
	ld a, b
	or c
	jr nz, jr_01c_7cee

	ld a, d
	cpl
	ret


Call_01c_7cf9:
	ld hl, $7d13
	ld a, [wd51f]
	and $7f
	cp $04
	ld b, $02
	jr c, jr_01c_7d0a

	inc b
	and $03

jr_01c_7d0a:
	ld e, a
	ld d, $00
	add hl, de
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ret


	nop
	and b
	ld h, [hl]
	and l
	call z, $32aa
	or b
	ld hl, $7d79
	call $3c79
	call $3636
	ld a, [wcc26]
	and a
	ret nz

	ld hl, wd51f
	bit 7, [hl]
	call z, Call_01c_7e9c
	call Call_01c_7dd4
	call $0ebd
	call $3b08
	bit 1, a
	ret nz

	ld a, $b6
	call $3788
	call $3790
	call Call_01c_7cf9
	ld e, l
	ld d, h
	ld hl, wd9b2
	call Call_01c_7da6
	ld a, [wcc26]
	set 7, a
	ld [wd51f], a
	call Call_01c_7cf9
	ld de, wd9b2
	call Call_01c_7da6
	ld hl, wd2eb
	ld de, wcd3d
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hl]
	ld [de], a
	call $3f35
	call Call_01c_7ce3
	ld hl, wcd3d
	call $3f3f
	ret


	nop
	ld d, h
	ld a, a
	inc e
	xor h
	add a
	adc h
	db $dd
	ld a, a
	or [hl]
	or h
	reti


	call nz, $344f
	or e
	inc l
	add $7f
	and a
	ld b, e
	db $e3
	sub e
	ld h, $7f
	or [hl]
	or [hl]
	jp c, $bdcf

	ld d, c
	ld d, [hl]
	ld a, a
	cp a
	jp c, wd333

	ld a, a
	or d
	or d
	inc sp
	cp l
	or [hl]
	and $57

Call_01c_7da6:
	push hl
	ld a, $0a
	ld [$0000], a
	ld a, $01
	ld [$6000], a
	ld a, b
	ld [$4000], a
	ld bc, $0566
	call $01bb
	pop hl
	xor a
	ld [hli], a
	dec a
	ld [hl], a
	ld hl, $a000
	ld bc, $1599
	call Call_01c_7cec
	ld [$b598], a
	xor a
	ld [$6000], a
	ld [$0000], a
	ret


Call_01c_7dd4:
	xor a
	ldh [$ba], a
	ld a, $03
	ld [wcc29], a
	ld a, $07
	ld [wcc28], a
	ld a, $02
	ld [wcc24], a
	ld a, $0c
	ld [wcc25], a
	xor a
	ld [wcc37], a
	ld a, [wd51f]
	and $7f
	ld [wcc26], a
	ld [wcc2a], a
	ld hl, wc3a0
	ld b, $02
	ld c, $09
	call $03d2
	ld hl, $7e50
	call $3c79
	ld hl, wc3ab
	ld b, $10
	ld c, $07
	call $03d2
	ld hl, wc3d5
	ld de, $7e64
	call $0405
	ld a, [wd51f]
	and $7f
	add $f7
	ld [wc3d1], a
	ld hl, wc3c9
	ld de, $7e94
	call $0405
	call Call_01c_7ee8
	ld hl, wc3da
	ld de, wcd3d
	ld bc, $0028
	ld a, $08

jr_01c_7e3e:
	push af
	ld a, [de]
	and a
	jr z, jr_01c_7e45

	ld [hl], $78

jr_01c_7e45:
	add hl, bc
	inc de
	pop af
	dec a
	jr nz, jr_01c_7e3e

	ld a, $01
	ldh [$ba], a
	ret


	nop
	ld d, h
	ld a, a
	inc e
	xor h
	add a
	adc h
	db $dd
	ld a, a
	ld c, a
	or h
	rst $10
	sbc $33
	cp b
	jr nc, @-$43

	or d
	ld d, b
	ld d, b
	inc e
	xor h
	add a
	adc h
	rst $30
	ld c, [hl]
	inc e
	xor h
	add a
	adc h
	ld hl, sp+$4e
	inc e
	xor h
	add a
	adc h
	ld sp, hl
	ld c, [hl]
	inc e
	xor h
	add a
	adc h
	ld a, [$1c4e]
	xor h
	add a
	adc h
	ei
	ld c, [hl]
	inc e
	xor h
	add a
	adc h
	db $fc
	ld c, [hl]
	inc e
	xor h
	add a
	adc h
	db $fd
	ld c, [hl]
	inc e
	xor h
	add a
	adc h
	cp $50
	or d
	rst $08
	ret


	inc e
	xor h
	add a
	adc h
	ld d, b

Call_01c_7e9c:
	ld a, $0a
	ld [$0000], a
	ld a, $01
	ld [$6000], a
	ld a, $02
	ld [$4000], a
	call Call_01c_7ebe
	ld a, $03
	ld [$4000], a
	call Call_01c_7ebe
	xor a
	ld [$6000], a
	ld [$0000], a
	ret


Call_01c_7ebe:
	ld hl, $a000
	call Call_01c_7ee3
	ld hl, $a566
	call Call_01c_7ee3
	ld hl, $aacc
	call Call_01c_7ee3
	ld hl, $b032
	call Call_01c_7ee3
	ld hl, $a000
	ld bc, $1599
	call Call_01c_7cec
	ld [$b598], a
	ret


Call_01c_7ee3:
	xor a
	ld [hli], a
	dec a
	ld [hl], a
	ret


Call_01c_7ee8:
	ld hl, wcd3d
	push hl
	ld a, $0a
	ld [$0000], a
	ld a, $01
	ld [$6000], a
	ld a, $02
	ld [$4000], a
	call Call_01c_7f1c
	ld a, $03
	ld [$4000], a
	call Call_01c_7f1c
	xor a
	ld [$6000], a
	ld [$0000], a
	pop hl
	ld a, [wd51f]
	and $7f
	ld c, a
	ld b, $00
	add hl, bc
	ld a, [wd9b2]
	ld [hl], a
	ret


Call_01c_7f1c:
	ld a, [$a000]
	ld [hli], a
	ld a, [$a566]
	ld [hli], a
	ld a, [$aacc]
	ld [hli], a
	ld a, [$b032]
	ld [hli], a
	ret


Call_01c_7f2d:
	ld a, $0a
	ld [$0000], a
	ld a, $01
	ld [$6000], a
	ld [$4000], a
	ld a, [$a598]
	and a
	jr z, jr_01c_7f60

	ld hl, $a598
	ld bc, $0ffc
	call Call_01c_7cec
	ld c, a
	ld a, [$b594]
	cp c
	jr nz, jr_01c_7f60

	ld hl, $a5fb
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, [wd2d8]
	cp l
	jr nz, jr_01c_7f60

	ld a, [wd2d9]
	cp h

jr_01c_7f60:
	ld a, $00
	ld [$6000], a
	ld [$0000], a
	ret


Call_01c_7f69:
	ld a, [wd521]
	dec a
	cp $32
	jr nc, jr_01c_7f84

	ld hl, $a598
	ld bc, $0060
	call $3ad1
	ld e, l
	ld d, h
	ld hl, wcc5b
	ld bc, $0060
	jr jr_01c_7fad

jr_01c_7f84:
	ld hl, $a5f8
	ld de, $a598
	ld bc, $1260
	call Call_01c_7fad
	ld hl, wcc5b
	ld de, $b7f8
	ld bc, $0060
	jr jr_01c_7fad

	ld hl, $a598
	ld bc, $0060
	ld a, [wcd3d]
	call $3ad1
	ld de, wcc5b
	ld bc, $0060

Call_01c_7fad:
jr_01c_7fad:
	ld a, $0a
	ld [$0000], a
	ld a, $01
	ld [$6000], a
	xor a
	ld [$4000], a
	call $01bb
	xor a
	ld [$6000], a
	ld [$0000], a
	ret


Jump_01c_7fc6:
	ld a, $0a
	ld [$0000], a
	ld a, $01
	ld [$6000], a
	xor a
	call Call_01c_7feb
	ld a, $01
	call Call_01c_7feb

Jump_01c_7fd9:
	ld a, $02
	call Call_01c_7feb
	ld a, $03
	call Call_01c_7feb
	xor a
	ld [$6000], a
	ld [$0000], a
	ret


Call_01c_7feb:
	ld [$4000], a
	ld hl, $a000
	ld bc, $2000
	xor a
	jp $372a


	nop
	ld bc, $0000
	nop
	nop
	nop
	add b
