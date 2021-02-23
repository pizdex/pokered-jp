; Disassembly of "pokemon-red-jp.gb"

SECTION "ROM Bank $01d", ROMX[$4000], BANK[$1d]

	inc b
	add hl, bc
	dec b
	rlca
	rrca
	rrca
	rrca
	rrca
	rrca
	ld bc, $0f02
	rrca
	dec bc
	rrca
	rrca
	ld [de], a
	inc de
	inc de
	add hl, bc
	ld d, $0f
	inc d
	inc d
	jr @+$1b

	dec d
	dec d
	rla
	ld a, [de]
	dec bc
	rrca
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
	jr nz, jr_01d_4042

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

jr_01d_4042:
	rrca
	rrca
	dec de
	ld c, $0a
	dec bc
	ld c, $0f
	rrca
	ld c, $3d
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
	ld hl, $7da8
	ld b, $00

jr_01d_4061:
	ld de, $0003

Call_01d_4064:
	ld a, [wCurMap]
	call $3ddd
	ret nc

	push bc
	push hl
	ld hl, wd66f
	ld c, b
	ld b, $02
	ld a, $10
	call $3e9d
	ld a, c
	pop hl
	pop bc
	inc b
	and a
	inc hl
	ld d, [hl]
	inc hl
	ld e, [hl]
	inc hl
	jr nz, jr_01d_4061

	ld a, [wd2e0]
	call Call_01d_40a8
	cp d
	jr nc, jr_01d_4061

	ld a, [wd2e0]
	add $04
	cp d
	jr c, jr_01d_4061

	ld a, [wd2e1]
	call Call_01d_40a8
	cp e
	jr nc, jr_01d_4061

	ld a, [wd2e1]
	add $05
	cp e
	jr c, jr_01d_4061

	scf
	ret


Call_01d_40a8:
	sub $05
	cp $f0
	ret c

	xor a
	ret


	call $0b71
	ld a, $07
	ld [wcc4d], a
	ld a, $15
	call $3e9d
	ld a, $09
	ld [wcc4d], a
	ld a, $11
	call $3e9d
	ld a, $06
	ld [wcc4d], a
	ld a, $11
	call $3e9d
	call $0b53
	ret


	rlca
	add hl, bc
	ld a, [bc]
	db $dd
	ld c, b
	ld a, [de]
	ld b, d
	ldh [rLCDC], a
	nop
	ld [hl], h
	ld c, b
	ld hl, $40fc
	ld de, $4100
	call $31c7
	call $3c6c
	ld hl, $4236
	ld de, $410f
	ld a, [wd57a]
	call $31a8
	ld [wd57a], a
	ret


	sub e
	add [hl]
	xor c
	ld d, b
	adc d
	add l
	add [hl]
	ld d, b

Jump_01d_4104:
	xor a
	ld [wcd66], a
	ld [wd57a], a
	ld [wd97c], a
	ret


	add hl, de
	ld b, c
	sub h
	ld [hld], a
	cp l
	ld [hld], a
	or [hl]
	ld b, c
	sbc c
	ld b, c
	ld a, [wd2e0]
	ld b, a
	ld a, [wd2e1]
	ld c, a
	ld hl, $4144
	call $348c
	cp $ff
	jp z, $3261

	call $34d0
	ld hl, wd6b5
	set 7, [hl]
	ld a, $a7
	call $0e45
	ld a, $ff
	ld [wcd66], a
	ld a, $04
	ld [wd97c], a
	ret


	dec bc
	inc de
	ld [hl], l
	ld b, c
	ld bc, $7813
	ld b, c
	ld [bc], a
	ld [de], a
	ld a, e
	ld b, c
	ld [bc], a
	dec bc
	ld a, [hl]
	ld b, c
	ld a, [bc]
	db $10
	add c
	ld b, c
	ld b, $04
	add h
	ld b, c
	dec c
	dec b
	add a
	ld b, c
	ld c, $04
	adc d
	ld b, c
	rrca
	nop
	adc l
	ld b, c
	rrca
	ld bc, $4190
	db $10
	dec c
	sub e
	ld b, c
	ld de, $960d
	ld b, c
	rst $38
	ld b, b
	add hl, bc
	rst $38
	jr nz, jr_01d_4182

	rst $38
	add b
	add hl, bc
	rst $38
	db $10
	ld b, $ff
	add b

jr_01d_4182:
	ld [bc], a
	rst $38
	add b
	rlca
	rst $38
	db $10
	ld [$10ff], sp
	add hl, bc
	rst $38
	ld b, b
	ld [$40ff], sp
	ld b, $ff
	jr nz, @+$08

	rst $38
	jr nz, @+$0e

	rst $38
	ld a, [wcd38]
	and a
	jr nz, jr_01d_41ae

	xor a
	ld [wcd66], a
	ld hl, wd6b5
	res 7, [hl]
	ld a, $00
	ld [wd97c], a
	ret


jr_01d_41ae:
	ld b, $11
	ld hl, $57b0
	jp $3620


	ld a, [wd034]
	cp $ff
	jp z, Jump_01d_4104

	ld a, $f0
	ld [wcd66], a

Call_01d_41c3:
	ld a, $0c
	ldh [$8c], a
	call $13f1
	ld hl, wd6d0
	set 1, [hl]
	ld bc, $e301
	call $3e5e
	jr nc, jr_01d_41e5

	ld a, $0d
	ldh [$8c], a
	call $13f1
	ld hl, wd6d0
	set 0, [hl]
	jr jr_01d_41ec

jr_01d_41e5:
	ld a, $0e
	ldh [$8c], a
	call $13f1

jr_01d_41ec:
	ld hl, wd2d5
	set 7, [hl]
	ld hl, wd6a9
	set 7, [hl]
	ld a, [wd6d0]
	or $fc
	ld [wd6d0], a
	ld a, [wd6d1]
	or $03
	ld [wd6d1], a
	ld a, $23
	ld [wcc4d], a
	ld a, $15
	call $3e9d
	ld hl, wd76a
	set 1, [hl]
	set 7, [hl]
	jp Jump_01d_4104


	sub a
	ld b, d
	ld [hld], a
	ld b, l
	ld a, a
	ld b, l
	ret z

	ld b, l
	ld hl, $7146
	ld b, [hl]
	pop bc
	ld b, [hl]
	ld [de], a
	ld b, a
	ld d, h
	ld b, a
	cp h

jr_01d_422d:
	ld b, a
	push bc
	rrca
	jr c, @+$46

	or c
	ld b, h
	dec h
	ld b, l
	ld [bc], a
	ld b, b
	ret nc

	sub $3c
	ld b, l
	ld h, c
	ld b, l
	ld d, [hl]
	ld b, l
	ld d, [hl]
	ld b, l
	inc bc
	ld b, b
	ret nc

	sub $89
	ld b, l
	xor [hl]
	ld b, l
	and [hl]
	ld b, l
	and [hl]
	ld b, l
	inc b
	ld b, b
	ret nc

	sub $d2
	ld b, l
	ld [bc], a
	ld b, [hl]
	db $ed
	ld b, l
	db $ed
	ld b, l
	dec b
	jr nz, jr_01d_422d

	sub $2b
	ld b, [hl]
	ld c, a
	ld b, [hl]
	ld b, [hl]
	ld b, [hl]
	ld b, [hl]
	ld b, [hl]
	ld b, $30
	ret nc

	sub $7b
	ld b, [hl]
	and e
	ld b, [hl]
	sbc b
	ld b, [hl]
	sbc b
	ld b, [hl]
	rlca
	ld b, b
	ret nc

	sub $cb
	ld b, [hl]
	ld a, [c]
	ld b, [hl]
	ld [$ea46], a
	ld b, [hl]
	ld [wd030], sp
	sub $1c
	ld b, a
	ld b, b
	ld b, a
	ld [hl], $47
	ld [hl], $47
	add hl, bc
	ld b, b
	ret nc

	sub $5e
	ld b, a
	sbc b
	ld b, a
	adc a
	ld b, a
	adc a
	ld b, a
	rst $38
	ld [wd0fa], sp
	sub $cb
	ld c, a
	jr z, jr_01d_42ce

	bit 0, a
	jr nz, jr_01d_42ab

	call z, Call_01d_41c3
	call $30fe
	jr jr_01d_42f9

jr_01d_42ab:
	ld a, $01
	ld [wcc3c], a
	ld hl, $43c7
	call $3c79
	call $0b71
	ld a, $32
	ld [wcc4d], a
	ld a, $11
	call $3e9d
	call $0ebd
	call $3e07
	call $0b53
	jr jr_01d_42f9

jr_01d_42ce:
	ld hl, $42fc
	call $3c79
	ld hl, wd6ac
	set 6, [hl]
	set 7, [hl]
	ld hl, $4388
	ld de, $4388
	call $339c
	ldh a, [$8c]
	ld [wSpriteIndex], a
	call $33b2
	call $331f
	ld a, $08
	ld [wd039], a
	ld a, $03
	ld [wd57a], a

jr_01d_42f9:
	jp $0f6a


	nop
	jp z, wcaca

	jp z, $ace3

	rst $20
	ld c, a
	cp d
	cp d
	jp z, $b57f

	jp c, $7fc9

	or [hl]
	cp b
	jp c, Jump_01d_7f26

	jr nc, @-$17

	ld d, c
	ld e, [hl]
	ld a, a
	call z, $b6df
	jp nz, $7fc9

	bit 7, a
	rst $08
	inc sp
	ld c, a
	cp d
	ret


	ld a, a
	dec bc
	sbc a
	inc sp
	ld d, l
	ret nz

	or d
	cp [hl]
	or d
	db $dd
	ld a, a
	ret nz

	jp $b5c5


	cp l
	ret


	jr nc, @-$17

	ld d, c
	cp h
	or [hl]
	cp h
	ld d, [hl]
	ld a, a
	or a
	ret nc

	add $4f
	ret nc

	jp nz, wdfb6

	jp $bc7f


	rst $08
	rst $18

jr_01d_434a:
	jp $55ca


	cp h
	ld [c], a
	or e
	ld h, $c5
	or d
	rst $20
	ld d, l
	cp d
	sbc $34
	jp z, $c37f

	or [hl]
	add hl, hl
	sbc $7f
	push bc
	cp h
	jr nc, jr_01d_434a

	ld d, l
	inc sp
	jp z, Jump_01d_5156

	or d
	rst $08
	ld a, a
	or d
	pop bc
	inc [hl]
	rst $20
	ld c, a
	cp e
	or d
	or a
	ld [c], a
	or e
	ret


	ld a, a
	ld e, l
	ld d, l
	adc d
	add l
	add [hl]

jr_01d_437c:
	ret


	ld a, a
	or e
	inc sp
	rst $08
	or h
	db $dd
	ld a, a
	ret nc

	sub $e7
	ld d, a
	nop
	jp z, Jump_01d_7fe3

	jp z, $ace3

jr_01d_438f:
	rst $20
	ld c, a
	jp z, $bc29

	or d
	ld a, a
	ret nz

	ret nz

	or [hl]
	or d
	ld a, a
	jr nc, jr_01d_437c

	ret nz

	rst $20
	ld d, l
	or a
	ret nc

	ret


	ld a, a
	or [hl]
	pop bc
	jr nc, jr_01d_438f

	ld d, l
	or d
	rst $08
	ld d, [hl]
	ld d, l
	cp a
	ret


	ld a, a
	or c
	or [hl]
	cp h
	add $55
	rlca
	ret c

	db $e3
	xor e
	ld a, a
	add hl, de
	xor h
	dec bc
	db $dd
	ld a, a
	call c, $bfc0
	or e
	rst $20
	ld d, b
	dec bc
	ld d, b
	nop
	cp d
	ret


	sub $b3
	push bc
	ld a, a
	rst $08
	cp c
	or [hl]
	ret nz

	db $dd
	ld a, a
	cp h
	jp Jump_01d_4fca


	inc a
	or [hl]
	ret nz

	pop bc
	add $7f
	cp h
	jp nc, $26bc

	ld a, a
	jp nz, wc5b6

	or d
	rst $20
	ld d, l
	ld e, [hl]
	jp z, Jump_01d_5556

	adc $de
	inc l
	jp nz, Jump_01d_7fdd

	db $d3
	rst $18
	jp $b67f


	or d
	cp e
	sbc $bd
	reti


	rst $20
	ld d, c
	call c, $bcc0
	jp z, $544f

	ret


	ld a, a
	cp h
	pop hl
	daa
	ld [c], a
	or e
	db $dd
	ld d, l
	or d
	pop bc
	or [hl]
	rst $10
	ld a, a
	cp h
	push bc
	or l
	cp l
	ld a, a
	jp nz, wd8d3

	jr nc, @-$17

	ld d, c
	or d
	jp nz, $7fc9

	res 6, [hl]
	ld d, [hl]
	ld c, a
	rst $08
	ret nz

	ld a, a
	or c
	or l
	or e
	rst $20
	ld d, l
	ld d, [hl]
	ld a, a
	cp e
	rst $10
	ld a, [hld]
	jr nc, @-$17

	ld d, b
	dec c
	ld d, b
	nop
	rlca
	ret c

	db $e3
	xor e
	add hl, de
	xor h
	dec bc
	cp e
	or h
	ld a, a
	or c
	jp c, Jump_01d_4f3a

	inc [hl]
	sbc $c5
	add $7f
	and a
	dec a
	and [hl]
	ret


	ld a, a
	ret nz

	or [hl]
	or d
	ld d, l
	ld d, h
	db $d3
	ld a, a
	or d
	or e
	cp d
	call nz, Call_01d_7fdd
	or a
	cp b
	rst $20

jr_01d_4461:
	ld d, c
	or a
	ret nc

	ld h, $7f
	or d
	pop bc
	add $de
	rst $08
	or h
	ret


jr_01d_446d:
	ld c, a
	ld e, l
	add $7f
	push bc
	rst $18
	ret nz

	ld a, a
	or c
	or [hl]
	cp h
	jr nc, jr_01d_4461

	ld d, c
	cp d
	jp c, $7f33

	ld d, h
	ret c

	db $e3
	rlca
	add $4f
	or d
	inc [hl]
	pop de
	ld a, a
	cp d
	call nz, Call_01d_7f26
	inc sp
	or a
	reti


	jr nc, jr_01d_446d

	or e
	ld d, c
	cp d
	ret


	ld a, a
	ld e, h
	jp z, $e756

	ld c, a
	ld d, h
	ret c

	db $e3
	rlca
	call $b27f
	inc [hl]
	pop de
	ld d, l
	or a
	ret nc

	call $be7f
	sbc $3d
	jp nz, $e730

	ld d, a
	nop
	ld d, d
	jp z, $8a7f

	add l
	add [hl]
	or [hl]
	rst $10
	ld c, a

jr_01d_44bb:
	ld e, h
	ld hl, sp-$03
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
	ld hl, sp-$03
	jp z, $2c7f

	call c, Call_01d_7fda
	jr nc, jr_01d_44bb

	ld c, a
	inc l
	call c, wc6da
	ld a, a
	cp e
	cp a
	or d
	cp d
	rst $08

Call_01d_44df:
	jp c, Jump_01d_7fc0

	jp wcab7


	ld d, l
	or d
	pop bc
	add hl, hl
	or a
	inc sp
	ld a, a
	rrca
	add d
	xor e
	ld a, a
	cp l
	reti


	rst $20
	ld d, l
	cp e
	or d
	or a
	ld [c], a
	or e
	ret


	ld a, a
	call c, $302b
	rst $20
	ld d, c
	or l
	jp c, Jump_01d_7f26

	pop de
	or [hl]
	cp h
	ld d, [hl]
	ld a, a
	cp d
	cp d
	inc sp
	ld c, a
	ld d, h
	ld a, a
	dec bc
	sbc a
	db $dd
	ld a, a
	call nc, wc3df
	reti


	ld a, a

jr_01d_4518:
	call nz, Call_01d_55b7
	jp nz, wdfb8

	ret nz

	ld a, a
	db $d3
	ret


	jr nc, @+$58

	ld d, a
	nop
	add $d3
	jp nz, Jump_01d_7f26

	or d
	rst $18
	ld b, h
	or d
	jr nc, jr_01d_4518

	ld d, a
	ld [$3621], sp
	ld b, d
	call $3214
	jp $0f6a


	nop
	ld d, [hl]
	ld a, a
	cp e
	jp $4fe7


	cp a
	db $db
	cp a
	db $db
	ld d, [hl]
	ld d, l
	add hl, de
	sub d
	jp $b77f


	ret nz

	sbc $2c
	ldh [$c5], a
	or d

jr_01d_4554:
	or [hl]
	ld d, a
	nop
	ld d, [hl]
	ld a, a
	pop bc
	or [hl]
	rst $10
	ld a, a
	jp nz, wc0b7

	ld e, b
	nop
	ret nz

	or d
	ret c

	ld [c], a
	cp b
	ld h, $7f
	push bc
	or d
	call nz, wc44f
	jp Jump_01d_7fd3


	ret c

	db $e3
	rrca
	db $e3
	add $ca
	ld a, a
	or [hl]
	jp $b2c5


	ld l, $e7
	ld d, a
	ld [$4221], sp
	ld b, d
	call $3214
	jp $0f6a


	nop
	or e
	or l
	db $e3
	xor h
	rst $20
	ld c, a
	or l
	jp c, $7fc9

	add c
	add l
	ret c

	jp z, $bb55

	or d
	cp d
	or e
	pop bc
	ld [c], a
	or e
	ld a, a
	jr nc, jr_01d_4554

	xor h
	rst $20
	ld d, a
	nop
	rst $00
	or e
	or l
	db $e3
	xor h
	rst $20
	ld e, b
	nop
	add d
	add h
	db $e3
	adc h
	xor h
	rst $20
	ld c, a
	rst $08
	jr nc, @-$2f

	jr nc, jr_01d_463a

	jp c, $bcde

	pop hl
	or e
	ld a, a
	ret nz

	ret c

	push bc
	or d
	xor h
	adc h
	ld d, a
	ld [$4e21], sp
	ld b, d
	call $3214
	jp $0f6a


	nop
	or l
	jp c, $7fc4

	ld d, h
	ret


	ld c, a
	adc c
	xor e
	ld a, [de]
	sub a
	db $e3
	adc e
	xor a
	xor e
	rst $20
	ld d, l
	add hl, de
	sub c
	rlca
	xor e
	ld a, a
	jr nc, @+$30

	rst $20
	ld d, a
	nop

jr_01d_45ee:
	ld d, [hl]
	ld a, a
	or l
	rst $08
	or h
	call nz, $544f
	db $d3
	ld a, a
	or d
	or a
	ld h, $7f
	or c
	rst $18
	jp wc5d9


	ld e, b
	nop
	or l
	rst $08
	or h
	jp z, $ba7f

	cp d
	ret


	ld a, a
	ret c

	db $e3
	rrca
	db $e3
	ld h, $4f
	jr nc, jr_01d_45ee

	or [hl]
	ld a, a
	cp h
	rst $18
	jp $b27f


	reti


	ret


	or [hl]
	ld d, [hl]
	and $57
	ld [$5a21], sp
	ld b, d
	call $3214
	jp $0f6a


	nop
	add l
	and l
	sub d
	ld a, a
	cp d
	cp a
	rst $20
	ld c, a
	cp [hl]
	or [hl]
	or d
	ld a, a
	cp e
	or d

jr_01d_463a:
	or a
	ld [c], a
	or e
	ret


	ld a, a
	or [hl]
	cp b
	call nz, $27b3
	rst $20
	ld d, a
	nop
	sub b
	db $eb
	db $e3
	adc h
	sub e
	db $e3
	rst $20
	ld e, b
	nop
	add d
	or b
	add h
	xor h
	adc h
	rst $20
	ld c, a
	ld d, h
	ld h, $7f
	or l
	jp c, $b87f

	rst $10
	or d
	ld d, l
	add l
	and l
	sub d
	ld a, a
	inc sp
	or a
	jp c, Jump_01d_7f3a

	or d
	or d
	sbc $30
	ld h, $56
	ld d, a
	ld [$6621], sp
	ld b, d
	call $3214
	jp $0f6a


	nop
	cp h
	sbc $c6
	ld a, a
	jp nz, $b2d6

	ld a, a
	ld e, l
	jp z, $b64f

	pop bc
	or [hl]
	ret nz

	db $d3
	ld a, a
	or e
	jp nz, $bcb8

	or d
	ld a, a
	db $d3
	ret


	jr nc, @-$17

	ld d, a
	nop
	jp Jump_01d_7f26


	cp l
	dec a
	rst $18
	ret nz

	ld d, [hl]
	rst $20
	ld e, b
	nop
	cp d
	sbc $c5
	ld a, a
	rst $08
	cp c
	or [hl]
	ret nz

	ld a, a
	cp h
	ret nz

	rst $10
	ld d, [hl]
	ld c, a
	ld d, [hl]
	ld a, a
	ret c

	db $e3
	rrca
	db $e3
	add $7f
	or l
	cp d
	rst $10
	jp c, $e7d9

	ld d, a
	ld [$7221], sp
	ld b, d
	call $3214
	jp $0f6a


	nop
	add [hl]
	xor e
	rlca
	ld a, a
	add h
	dec de
	ld a, a
	add l
	and l
	sub d
	rst $20
	ld d, l
	cp d
	cp d
	or [hl]
	rst $10
	ld a, a
	cp e
	or a
	call $55ca
	or d
	or [hl]
	cp [hl]
	push bc
	or d
	ld l, $e7
	ld d, a
	nop
	inc de
	xor h
	adc l
	db $e3
	xor h
	rst $20
	ld e, b
	nop
	add d
	or b
	db $e3
	adc h
	rst $20

jr_01d_46f8:
	ld c, a
	ld d, h
	ld a, a
	ret c

	db $e3
	rlca
	ld a, a
	jp nc, $bc2b

	jp wc9d9


	or [hl]
	rst $20
	ld d, l
	rst $08
	cp [hl]

jr_01d_470a:
	ret nz

	ld a, a
	cp d
	inc [hl]
	db $d3
	jr nc, jr_01d_46f8

	ld d, a
	ld [$7e21], sp
	ld b, d
	call $3214
	jp $0f6a


	nop
	ld b, c
	adc e
	ld a, a
	ld b, c
	adc e
	xor h
	rst $20
	ld c, a
	adc $d7
	rst $20
	ld d, l

jr_01d_4729:
	ld a, [de]
	ld a, [de]
	rst $18
	jp wded9


	inc l
	ldh [$c5], a
	or d
	sub $e7
	ld d, a
	nop
	ld d, [hl]
	ld a, a
	or d

jr_01d_473a:
	ld a, a
	or d
	jp $e7c3


	ld e, b
	nop
	rst $08
	or c
	ld a, a
	rst $08
	jp $4fe7


	push de
	jr nc, jr_01d_4729

	ld a, a
	cp h
	ret nz

	ld a, a
	jr nc, jr_01d_470a

	jr nc, jr_01d_473a

	ld d, a
	ld [$8a21], sp
	ld b, d
	call $3214
	jp $0f6a


	nop
	sub e
	add [hl]
	xor c
	ld a, a
	dec bc
	sbc a
	jp z, $2d4f

	rst $18
	call nz, wcd7f
	or d
	cp e
	ld a, a
	cp h
	jp wc0b2


	ld h, $55
	ret c

	db $e3
	rrca
	db $e3
	ld h, $7f
	or [hl]
	or h
	rst $18
	jp $c3b7


	ld d, l
	or a
	ld [c], a
	or e
	or [hl]
	rst $10
	ld a, a
	call z, $b6df
	jp nz, $e730

	ld d, a
	nop
	ld d, [hl]
	ld a, a
	cp e
	cp l
	ld h, $30
	rst $20
	ld e, b
	nop
	or a
	ret nc

	ld h, $56
	ld c, a
	sub e
	add [hl]
	xor c
	ld a, a
	ret c

	db $e3
	rrca
	db $e3
	add $7f
	or [hl]
	jp $3ada


	ld d, l
	ld d, h
	ret c

	db $e3
	rlca
	add $7f
	cp l
	cp l
	jp nc, $7fd9

	jr nc, @-$23

	or e
	ld d, a
	ld [wd0fa], sp
	sub $cb
	ld c, a
	jr nz, jr_01d_47cc

	ld hl, $47d5
	call $3c79
	jr jr_01d_47d2

jr_01d_47cc:
	ld hl, $4856
	call $3c79

jr_01d_47d2:
	jp $0f6a


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
	sub e
	add [hl]
	xor c
	ld a, a
	ret c

	db $e3
	rrca
	db $e3
	ret


	ld a, a
	cp h

jr_01d_47f3:
	ld [c], a
	or e
	ret nz

	or d
	jp z, $b54f

	jp c, wd3c6

	ld a, a
	call c, wd7b6
	sbc $e7
	ld d, c
	ret nz

	cp h
	or [hl]
	push bc
	ret


	jp z, $b24f

	rst $08
	rst $08
	inc sp
	ret


	ld a, a
	ret c

	db $e3
	rrca
	db $e3
	ret


	ld d, l
	jr nc, jr_01d_47f3

	sub $d8
	db $d3
	ld a, a
	jp nz, $b2d6

	rst $18
	jp $ba7f


	call nz, $e730
	ld d, c
	cp a
	jp c, $56c4

	ld c, a
	inc [hl]
	or e
	db $d3
	ld a, a
	cp d
	ret


	ld a, a
	dec bc
	sbc a
	add $ca
	ld d, l
	inc l
	jp nc, Jump_01d_7fde

	adc a
	add c
	ld b, d
	ld a, a
	ld d, h
	ret


	ld d, l
	jp nz, $b2b6

	jp Jump_01d_7f26


	or c
	jp nz, wdfcf

jr_01d_484e:
	jp $7fd9


	rst $10
	cp h
	or d
	ld l, $57
	nop
	ret nz

	rst $08
	add hl, hl
	ret nz

	ld l, $e7
	ld c, a
	sub e
	add [hl]
	xor c
	ret


	ld a, a
	ret c

	db $e3
	rrca
	db $e3
	ld h, $55
	adc d
	add l
	add [hl]
	ld a, a
	jr nc, jr_01d_484e

	ret nz

	call nz, $e7ca
	ld d, a
	inc bc
	ld [bc], a
	ld de, $0410
	rst $38
	ld de, $0411
	rst $38
	nop
	dec bc
	rla
	dec b
	ld b, $ff
	ret nc

	ld b, c
	push hl
	inc bc
	rlca
	dec bc
	db $10
	rst $38
	ret nc

	ld b, d
	rst $20
	add hl, bc
	ld c, $0f
	rrca
	rst $38
	pop de
	ld b, e
	ldh [rTMA], a
	ld hl, $0e0b
	rst $38
	ret nc

	ld b, h
	sbc $03
	ld c, $0b
	rlca
	rst $38
	jp nc, $e045

	rlca
	rlca
	add hl, bc
	ld de, wd3ff
	ld b, [hl]
	rst $20
	ld a, [bc]
	ld c, $05
	ld c, $ff
	ret nc

	ld b, a
	ldh [$08], a
	ld hl, $0614
	rst $38
	db $d3
	ld c, b
	sbc $04
	rlca
	add hl, bc
	ld a, [bc]
	rst $38
	ret nc

	ld c, c
	rst $20
	ld bc, $1324
	inc d
	rst $38
	ret nc

	ld a, [bc]
	dec a
	dec c
	inc d
	rst $38
	rst $38
	adc e
	dec [hl]
	add c
	rst $00
	ld de, $8110
	rst $00
	ld de, $4911
	ld bc, $014a
	ld bc, $015f
	ld bc, $5d01
	ld c, e
	dec b
	ld d, c
	ld h, h
	ld d, [hl]
	ld h, e
	ld b, [hl]
	ld b, [hl]
	ld e, [hl]
	ld e, h
	ld d, d
	ld b, [hl]
	ld c, [hl]
	ld d, e
	ld d, h
	ld d, l
	dec b
	dec b
	ld c, h
	dec b
	ld h, c
	dec b
	ld h, b
	ld c, h
	ld d, l
	ld c, b
	ld c, b
	ld e, e
	ld c, h
	dec b
	ld b, b
	ld b, h
	ld c, h
	ld c, h
	dec b
	dec b
	dec b
	ld c, l
	ld c, h
	dec b
	dec b
	inc l
	ld d, l
	ld c, h
	dec b
	dec b
	dec b
	ld d, c
	ld h, b
	ld b, a
	dec b
	inc l
	ld e, b
	ld c, b
	ld c, b
	ld c, b
	ld e, d
	dec b
	ld h, d
	dec b
	ld b, e
	ld b, l
	ld d, a
	ld b, [hl]
	ld b, [hl]
	ld b, [hl]
	ld e, c
	ld [hld], a
	dec b
	ld sp, $0540
	dec b
	ld b, c
	dec b
	dec b
	ld b, d
	dec b
	inc b
	dec b
	ld [bc], a
	inc b
	inc b
	db $10
	ld b, b
	ld c, h
	ld c, c
	ld b, e
	ld c, c
	nop
	add $49
	call $3c6c
	ld a, $01
	ld [wcf07], a
	ret


	db $dd
	ld c, $52
	ld c, c
	sbc c
	ld c, c
	ld [$5c21], sp
	ld c, c
	call $3c79
	jp $0f6a


	nop
	add c
	xor e
	sub b
	add [hl]
	ld a, a
	cp b
	cp e
	or d
	ld a, a
	or l
	inc l
	cp e
	sbc $b6
	rst $10
	ld c, a
	push bc
	sbc $30
	or [hl]
	ld a, a
	call wc5ab
	ld a, a
	ld d, h
	db $dd
	ld d, l
	or [hl]
	rst $18
	pop bc

jr_01d_497c:
	ldh [$df], a
	ret nz

	sub $e7
	ld d, c
	cp l
	rst $18
	add hl, hl
	db $e3
	ld a, a
	sub $dc
	or d
	ret


	rst $20
	ld c, a
	ei
	or $f6
	ldh a, [$d3]
	ld a, a
	cp h
	ret nz

	ret


	add $56
	ld d, a
	ld [$a321], sp
	ld c, c
	call $3c79
	jp $0f6a


	nop
	sub $dc
	or d
	ld a, a
	ld d, h
	inc sp
	db $d3
	ld c, a
	or d
	rst $18
	cp h
	ld [c], a
	or e
	cp c
	sbc $d2
	or d
	ld a, a
	cp a
	jr nc, jr_01d_497c

	jp c, Jump_01d_553a

	or d
	or d
	cp d
	call nz, $b17f
	reti


	cp e
	rst $20
	ld d, a
	nop
	ld [bc], a
	rlca
	inc bc
	inc b
	rst $38
	rlca
	inc b
	inc b
	rst $38
	nop
	inc bc
	ld h, $09
	inc b
	rst $38
	db $d3
	ld bc, $0704
	rlca
	cp $01
	ld [bc], a
	inc c
	add hl, bc
	add hl, bc
	rst $38
	rst $38
	inc bc
	ld [de], a
	rst $00
	rlca
	inc bc
	inc de
	rst $00
	rlca
	inc b
	ld de, $0f09
	ld h, d
	ld c, d
	ei
	ld c, c
	ld hl, sp+$49
	nop
	ld bc, wOAMBuffer + $4a
	ld l, h
	inc a
	push bc
	rrca
	push bc
	rrca
	push bc
	rrca
	ld a, l
	add hl, bc
	ld de, $0618
	rst $38
	ld de, $0619
	rst $38
	ld bc, $001b
	ld [c], a
	rlca
	rla
	ld bc, $09e2
	ld [de], a
	ld [bc], a
	ld [c], a
	ld bc, $0307
	ld [c], a
	inc bc
	ld bc, $e204
	dec bc
	inc bc
	dec b
	ld [c], a
	ld b, $00
	nop
	db $e3
	nop
	inc bc
	dec a
	ld de, $ff0b
	rst $38
	add c
	db $10
	dec a
	rlca
	rla
	rst $38
	rst $38
	add d
	ld d, e
	dec a
	inc b
	add hl, bc
	rst $38
	rst $38
	add e
	ld sp, wc7b2
	ld de, $b218
	rst $00
	ld de, $0b19
	rst $00
	ld bc, $481b
	rst $00
	rlca
	rla
	ld e, e
	rst $00
	add hl, bc
	ld [de], a
	ld bc, $01c7
	rlca
	inc de
	rst $00
	inc bc
	ld bc, wc768
	dec bc
	inc bc
	dec a
	rst $00
	ld b, $00
	ld [bc], a
	rla
	inc d
	ld a, h
	ld d, $02
	ld [bc], a
	ld e, a
	db $76
	db $76
	db $76
	db $76
	inc d
	ld a, h
	ld d, $62
	rra
	jr jr_01d_4ac7

	ld a, [de]
	db $76
	db $76
	db $76
	db $76
	inc d
	ld d, $76
	ld h, [hl]
	dec e
	ld e, $6d
	inc d
	inc l
	dec hl
	ld a, [de]
	db $76
	inc d
	dec d
	dec d
	add hl, de
	ld a, [de]
	db $76
	db $76
	db $76
	db $76
	daa
	jr @+$1c

	ld h, [hl]
	ld e, $76
	jr jr_01d_4ac3

	dec e
	dec e
	dec hl
	ld a, h
	dec d
	ld d, $76
	inc d
	add hl, de
	ld a, [de]
	db $76
	ld [hl], h
	db $76
	ld h, [hl]
	ld e, $14
	ld a, a
	jr jr_01d_4ad6

	dec e
	ld e, $76
	jr jr_01d_4aec

	ld a, [de]
	db $76
	db $76
	db $76
	ld b, $0c
	ld h, [hl]
	ld e, $18
	ld a, [de]
	ld c, $0d
	dec bc
	jr @+$55

	ld a, [de]
	dec b
	inc d
	ld [bc], a
	ld a, [bc]

jr_01d_4ac3:
	inc c
	ld bc, $185e

jr_01d_4ac7:
	ld a, [de]
	ld bc, $1614
	inc e
	dec l
	ld e, $01
	ld h, [hl]
	dec hl
	dec d
	dec d
	dec d
	dec d
	add hl, de

jr_01d_4ad6:
	ld a, [de]
	ld bc, $1a18
	ld [bc], a
	ld a, [bc]
	ld bc, $0101
	inc e
	dec e
	dec e
	dec e
	dec e
	dec e
	ld e, $24
	inc e
	ld e, $0d
	inc b
	inc b

jr_01d_4aec:
	ld c, h
	ld b, b
	rst $38
	ld c, d
	push af
	ld c, d
	nop
	inc d
	ld c, [hl]
	ld a, $01
	ld [wcf07], a
	dec a
	ld [wcc3c], a
	ret


	ld bc, $084b
	ld hl, $4b60
	call $3c79
	xor a
	ld [wcc26], a
	ld [wcc36], a

jr_01d_4b0f:
	ld hl, $4ba3
	call $3c79
	ld hl, $4b56
	call $1539
	ld hl, wItemList
	ld a, l
	ld [wcf72], a
	ld a, h
	ld [wcf73], a
	xor a

jr_01d_4b27:
	ld [wcf7a], a
	ld a, $04
	ld [wListMenuID], a
	call $16f7
	jr c, jr_01d_4b49

	ld hl, $4be2
	ld a, [wcf78]
	sub $15
	add a
	ld d, $00
	ld e, a
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	call $3c79
	jr jr_01d_4b0f

jr_01d_4b49:
	xor a
	ld [wcc36], a
	ld hl, $4bc8
	call $3c79
	jp $0f6a


	ld [$1615], sp
	rla
	jr jr_01d_4b75

	ld a, [de]
	dec de
	inc e
	rst $38
	nop
	or e
	inc sp
	ld h, $7f
	or c
	ld h, $df
	ret nz

	ld c, a
	ld d, h
	ld e, l
	jr nc, jr_01d_4b27

	ld h, $7f
	db $d3
	rst $10
	or h
	reti


	ld d, l

jr_01d_4b75:
	ld d, h
	ld a, a
	add hl, de
	xor h
	dec bc
	ld d, c
	or c
	push bc
	ret nz

	db $d3
	ld a, a
	or d
	cp b
	jp nz, $7fb6

	db $d3
	rst $18
	jp wc8d9


	ld d, c
	cp a
	ret


	ld a, a
	add hl, de
	xor h
	dec bc
	add $ca
	ld c, a
	cp l
	ld a, [hli]
	or d
	ld a, a
	set 2, b
	jp nz, Jump_01d_7f26

	or c
	reti


	ret


	inc sp
	cp l
	ld e, b
	nop
	inc sp
	jp z, Jump_01d_5156

	ld d, h
	ld a, a
	add hl, de
	xor h
	dec bc
	ld a, a
	cp $c2
	ret


	ld a, a
	set 2, b
	jp nz, $344f

	jp c, Jump_01d_7fc6

	jp nz, wc3b2

	ld a, a
	jp z, $bcc5

	ld a, a
	rst $08
	cp h
	ld [c], a
	or e
	and $57
	nop
	jp z, $bcc5

	db $dd
	ld a, a
	or a
	or a
	ret nz

	cp b
	ld a, a
	push bc
	rst $18
	ret nz

	rst $10
	ld c, a
	rst $08
	ret nz

	ld a, a
	or d
	rst $10
	rst $18
	cp h
	ldh [$b2], a
	ld d, a
	ld a, [c]
	ld c, e
	ld a, $4c
	and l
	ld c, h
	db $ec
	ld c, h
	ld d, d
	ld c, l
	sbc l
	ld c, l
	ret c

	ld c, l
	ld a, [$004d]
	cp l
	dec a
	jp $4fc9


	ld d, h
	ret


	ld a, a
	cp d
	or e
	add hl, hl
	or a
	ld a, a
	ret c

	ld [c], a
	cp b
	ld h, $55
	cp l
	cp d
	cp h
	ld a, a
	ret nz

	or [hl]
	cp b
	ld a, a
	push bc
	ret c

	rst $08
	cp l
	ld d, c
	cp a
	jp c, wd7b6

	ld a, a
	sbc e
	and l
	xor h
	adc e
	xor [hl]
	ret


	ld a, a
	call c, wca2b
	ld c, a
	ret nz

	ret nz

	or [hl]
	rst $18
	jp $b27f


	push bc
	or d
	ld a, a
	call nz, $33b7
	db $d3
	ld d, l
	jp nz, $b4b6

	reti


	sub $b3
	add $7f
	push bc
	ret c

	rst $08
	cp l
	ld e, b
	nop
	and a
	dec a
	and [hl]
	ld sp, hl
	or $cf
	inc sp
	ret


	ld a, a
	ld d, h
	jp z, $b54f

	call nz, $bcc5
	cp b
	ld a, a
	or d
	or e
	cp d
	call nz, Call_01d_7fdd
	or a
	or a
	rst $08
	cp l
	ld d, c
	cp a
	jp c, $2cb2

	ld [c], a
	or e
	ld a, a
	and a
	dec a
	and [hl]
	ld h, $7f
	ret nz

	or [hl]
	or d
	call nz, $b34f
	rst $08
	cp b
	ld a, a
	or c
	jp nz, $b4b6

	rst $08
	cp [hl]
	sbc $51
	cp a
	jp c, wd7b6

	ld a, a
	or d
	or c
	or d
	daa
	ret c

	ret


	ld a, a
	call c, wca2b
	ld c, a
	ret nz

	ret nz

	or [hl]
	rst $18
	jp $b27f


	push bc
	or d
	ld a, a
	call nz, $33b7
	db $d3
	ld d, l
	jp nz, $b4b6

	reti


	sub $b3
	add $7f
	push bc
	ret c

	rst $08
	cp l
	ld e, b
	nop
	cp l
	dec a
	jp $4fc9


	ld d, h
	ret


	ld a, a
	cp l
	ld a, [hld]
	call nc, $26bb
	ld d, l
	cp l
	cp d
	cp h
	ld a, a
	ret nz

	or [hl]
	cp b
	ld a, a
	push bc
	ret c

	rst $08
	cp l
	ld d, c
	cp a
	jp c, wd7b6

	ld a, a
	cp a
	rst $10
	db $dd
	call nz, Call_01d_7f3c
	call c, wca2b
	ld c, a
	ret nz

	ret nz

	or [hl]
	rst $18
	jp $b27f


	push bc
	or d
	ld a, a
	call nz, $33b7
	db $d3
	ld d, l
	jp nz, $b4b6

	reti


	sub $b3
	add $7f
	push bc
	ret c

	rst $08
	cp l
	ld e, b
	nop
	and a
	dec a
	and [hl]
	ei
	or $cf
	inc sp
	ret


	ld a, a
	ld d, h
	jp z, $b54f

	call nz, $bcc5
	cp b
	ld a, a
	or d
	or e
	cp d
	call nz, Call_01d_7fdd
	or a
	or a
	rst $08
	cp l
	ld d, c
	cp a
	jp c, $2cb2

	ld [c], a
	or e
	ld a, a
	and a
	dec a
	and [hl]
	ld h, $7f
	ret nz

	or [hl]
	or d
	call nz, $b34f
	rst $08
	cp b
	ld a, a
	or c
	jp nz, $b4b6

	rst $08
	cp [hl]
	sbc $51
	cp a
	jp c, wd7b6

	ld a, a
	or [hl]
	or d
	ret c

	or a
	ret


	ld a, a
	call c, wca2b
	ld c, a
	ret nz

	ret nz

	or [hl]
	rst $18
	jp $b27f


	push bc
	or d
	ld a, a
	call nz, $33b7
	db $d3
	ld d, l
	jp nz, $b4b6

	reti


	sub $b3
	add $7f
	push bc
	ret c

	rst $08
	cp l
	ld e, b
	nop
	cp l
	dec a
	jp $4fc9


	ld d, h
	ret


	ld a, a
	ld a, $b3
	daa
	ld [c], a
	ld a, a
	ret c

	ld [c], a
	cp b
	ld h, $55
	cp l
	cp d
	cp h
	ld a, a
	ret nz

	or [hl]
	cp b
	ld a, a
	push bc
	ret c

	rst $08
	cp l
	ld d, c
	cp a
	jp c, wd7b6

	ld a, a
	push bc
	ret nc

	ret


	ret c

	ret


	ld a, a
	call c, wca2b
	ld c, a
	ret nz

	ret nz

	or [hl]
	rst $18
	jp $b27f


	push bc
	or d
	ld a, a
	call nz, $33b7
	db $d3
	ld d, l
	jp nz, $b4b6

	reti


	sub $b3
	add $7f
	push bc
	ret c

	rst $08
	cp l
	ld e, b
	nop
	and a
	dec a
	and [hl]
	db $fd
	or $cf
	inc sp
	ret


	ld a, a
	ld d, h
	jp z, $b54f

	call nz, $bcc5
	cp b
	ld a, a
	or d
	or e
	cp d
	call nz, Call_01d_7fdd
	or a
	or a
	rst $08
	cp l
	ld d, c
	cp a
	jp c, $2cb2

	ld [c], a
	or e
	ld a, a
	and a
	dec a
	and [hl]
	ld h, $7f
	ret nz

	or [hl]
	or d
	call nz, $b34f
	rst $08
	cp b
	ld a, a
	or c
	jp nz, $b4b6

	rst $08
	cp [hl]
	sbc $58
	nop
	cp l
	dec a
	jp $4fc9


	ld d, h
	ret


	ld a, a
	call nz, $bcb8
	pop hl
	ld a, a
	ret


	or e
	ret c

	ld [c], a
	cp b
	ld h, $55
	cp l
	cp d
	cp h
	ld a, a
	ret nz

	or [hl]
	cp b
	ld a, a
	push bc
	ret c

	rst $08
	cp l
	ld e, b
	nop
	cp l
	dec a
	jp $7fc9


	ld d, h
	jp z, $b54f

	call nz, $bcc5
	cp b
	ld a, a
	or d
	or e
	cp d
	call nz, Call_01d_7fdd
	or a
	or a
	rst $08
	cp l
	ld e, b
	inc c
	inc bc
	nop
	ld [bc], a
	add hl, bc
	rst $38
	rlca
	ld [bc], a
	ld [$07ff], sp
	inc bc
	ld [$00ff], sp
	ld bc, $070a
	add hl, bc
	rst $38
	db $d3
	ld bc, wc6f4
	nop
	ld [bc], a
	ld [de], a
	rst $00
	rlca
	ld [bc], a
	ld [de], a
	rst $00
	rlca
	inc bc

VendingMachineMenu::
	ld hl, $4ee6
	call $3c79
	ld a, $13
	ld [wd0ea], a
	call $3130
	xor a
	ld [wcc26], a
	ld [wcc2a], a
	ld a, $03
	ld [wcc29], a
	ld a, $03
	ld [wcc28], a
	ld a, $05
	ld [wcc24], a
	ld a, $01
	ld [wcc25], a
	ld hl, wd6af
	set 6, [hl]
	ld hl, wc3dc
	ld b, $08
	ld c, $0c
	call $03d2
	call $0ebd
	ld hl, wc406
	ld de, $4f01
	call $0405
	ld hl, wd6af
	res 6, [hl]
	call $3b08
	bit 1, a
	jr nz, jr_01d_4ee0

	ld a, [wcc26]
	cp $03
	jr z, jr_01d_4ee0

	xor a
	ldh [$9f], a
	ldh [$a1], a
	ld a, $02
	ldh [$a0], a
	call $35f0
	jr nc, jr_01d_4ea1

	ld hl, $4f2a
	jp $3c79


jr_01d_4ea1:
	call Call_01d_4f5d
	ldh a, [$db]
	ld b, a
	ld c, $01
	call $3e5e
	jr nc, jr_01d_4eda

	ld b, $3c

jr_01d_4eb0:
	ld c, $02
	call $3781
	push bc
	ld a, $a8
	call $0e45
	pop bc
	dec b
	jr nz, jr_01d_4eb0

	ld hl, $4f37
	call $3c79
	ld hl, $ffde
	ld de, wd2cd
	ld c, $03
	ld a, $0c
	call $3e9d
	ld a, $13
	ld [wd0ea], a
	jp $3130


jr_01d_4eda:
	ld hl, $4f43
	jp $3c79


jr_01d_4ee0:
	ld hl, $4f52
	jp $3c79


	nop
	inc l
	inc [hl]
	or e
	ld a, a
	jp z, $3ade

	or d
	or a
	ld a, a
	jr nc, jr_01d_4eda

	ld c, a
	adc $bc
	or d
	ld a, a
	ret


	ret nc

	db $d3
	ret


	jp z, $7f56

	ld d, [hl]
	ld e, b
	or l
	or d
	cp h
	or d
	ret nc

	dec l
	ld a, a
	ld hl, sp-$0a
	or $f0
	ld c, [hl]
	adc d
	add c
	adc c
	adc [hl]
	db $e3
	rrca
	ld a, a
	ld sp, hl
	or $f6
	ldh a, [$4e]
	sbc [hl]
	xor h
	add a
	adc h
	add h
	and a
	ld a, a
	ld sp, hl
	ei
	or $f0
	ld c, [hl]
	or d
	rst $10
	push bc
	or d
	ld d, b
	nop

Call_01d_4f2b:
	or l
	or [hl]
	ret z

	ld h, $7f
	ret nz

	ret c

	push bc
	or d
	cpl
	rst $20
	ld d, a
	ld bc, wcf45

Jump_01d_4f3a:
	nop
	ld h, $7f
	inc sp
	jp wc0b7


	rst $20
	ld d, a
	nop
	cp d
	jp c, $b27f

	inc l
	ld [c], a
	or e
	ld a, a
	db $d3
	jp $b2c5


	rst $20
	ld d, a
	nop
	call nc, Call_01d_44df
	ret c

	ld a, a
	call nc, wc0d2
	rst $20
	ld d, a

Call_01d_4f5d:
	ld hl, $4f76
	ld a, [wcc26]
	add a
	add a
	ld d, $00
	ld e, a
	add hl, de
	ld a, [hli]
	ldh [$db], a
	ld a, [hli]
	ldh [$dc], a
	ld a, [hli]
	ldh [$dd], a
	ld a, [hl]
	ldh [$de], a
	ret


	inc a
	nop
	ld [bc], a
	nop
	dec a
	nop
	inc bc
	nop
	ld a, $00
	inc bc
	ld d, b
	ld [$0404], sp
	jr nz, jr_01d_4fc7

	sub d
	ld c, a
	adc [hl]
	ld c, a
	nop
	ld c, [hl]
	ld d, b
	call $3c6c
	ret


	sbc b
	ld c, a
	pop de
	ld c, a
	ld e, $50
	nop
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
	ld c, a
	or l
	call nz, Call_01d_7fbc
	push bc
	ret


	add $7f
	cp l
	ld a, [hli]
	cp b
	ld a, a
	add hl, hl
	sbc $b7
	sub $51
	inc sp
	db $d3
	ld d, [hl]
	ld [hl], b
	jp z, wca71

	ld c, a
	ld l, $de
	inc a
	ld a, a

Jump_01d_4fc6:
	or d

jr_01d_4fc7:
	jp c, Jump_01d_7f3a

Jump_01d_4fca:
	rst $10
	cp h
	or d
	ld a, a
	cp c
	inc [hl]
	ld d, a
	nop
	or l

Jump_01d_4fd3:
	call nc, Call_01d_7fe6
	or c

Call_01d_4fd7:
	sbc $c0
	ld c, a
	sbc l
	adc d
	add [hl]

Jump_01d_4fdd:
	ret


	ld a, a
	cp d
	call nz, Call_01d_7fdd
	cp h
	rst $18
	call nz, wc9d9
	or [hl]
	ret z

	and $51
	sbc l
	adc d
	add [hl]
	jp z, wdc7f

	cp h
	ret


	ld a, a
	rst $08
	ld a, [hli]
	inc l
	ldh [$e7], a
	ld d, c
	pop bc
	or d
	cp e
	or d
	ld a, a
	cp d
	db $db
	or [hl]
	rst $10
	ld c, a
	db $d3
	ret


	db $dd
	ld a, a
	or c
	jp nz, wd9d2

	ret


	ld h, $7f
	cp l
	or a
	push bc
	ld d, l
	cp d
	inc [hl]
	db $d3
	ld a, a
	inc l
	ldh [$df], a
	ret nz

	rst $20
	ld d, a
	nop
	sbc l
	adc d
	add [hl]
	ld a, a
	add $b2
	pop bc
	ldh [$de], a
	ld c, a
	inc l
	inc a
	sbc $33
	ld a, a
	or c
	jp nz, wc0d2

	ld a, a
	ld d, h
	db $d3
	ld d, l
	ld e, e
	ret


	ld a, a
	ld [de], a
	db $e3
	adc a
	add $7f
	cp h
	jp wd6d9


	rst $20
	ld d, c
	ret nc

	cp [hl]
	jp wd37f


	rst $10
	rst $18
	ret nz

	and $57

jr_01d_504e:
	ld a, [bc]

Jump_01d_504f:
	ld [bc], a
	rlca
	ld [bc], a
	ld bc, $07ff
	inc bc
	ld bc, $00ff
	inc bc
	inc e
	rlca

jr_01d_505c:
	ld b, $ff
	db $d3
	ld bc, $060b
	dec bc
	rst $38
	pop de
	ld [bc], a
	inc b
	add hl, bc
	add hl, bc
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
	ld b, $04
	rlca
	jr nc, jr_01d_50b9

	add [hl]
	ld d, b
	add b
	ld d, b
	nop
	dec c

Jump_01d_507f:
jr_01d_507f:
	ld d, c

jr_01d_5080:
	call $0d8e
	jp $3c6c


	adc [hl]
	ld d, b
	adc a
	ld d, b
	jp z, $0c50

	ld d, c
	rst $38
	nop
	rst $30
	ld b, l
	or a
	jr nc, jr_01d_504e

	ld a, a
	cp a
	jr nc, jr_01d_505c

	jp Jump_01d_4fd3


	jp nz, $b2d6

	ld a, a
	ld e, l
	add $7f
	push bc
	jp c, $b2c5

	ld d, c
	or l
	or l
	cp b
	ret


	ld a, a
	ld d, h
	db $dd
	ld a, a
	ld c, a
	add hl, de
	and l
	xor e
	adc h
	ld a, a
	sub $b8
	ld a, a

jr_01d_50b9:
	cp a
	jr nc, jr_01d_507f

	reti


	ret


	db $d3
	ld d, l
	ret nz

	or d
	call Call_01d_7fde
	jr nc, jr_01d_5080

	inc [hl]
	push bc
	ld d, a
	nop
	sub e
	add [hl]
	xor c
	ret


	ld a, a
	add $bc
	add $4f
	adc $bf
	or d
	ld a, a
	ret nc

	pop bc
	ld h, $7f
	or c
	reti


	ld a, a
	inc sp
	cp h
	ld [c], a
	or e
	ld d, c
	cp a
	ret


	ld a, a
	or l
	cp b
	add $7f
	ret nz

	rst $18
	jp wc9d9


	ld h, $4f
	cp l
	dec a
	jp $7fc9


	ld d, h
	ld a, a
	ld e, l
	db $dd
	ld d, l
	rst $08
	call nz, wd9d2
	ld a, a
	cp a
	cp h
	or a
	ld a, a
	ld d, h
	ld a, a
	ret c

	db $e3
	rlca
	sub $57
	or $00
	ld [bc], a
	rlca
	inc bc
	ld [bc], a
	rst $38
	rlca
	inc b
	ld [bc], a
	rst $38
	nop
	inc b
	add hl, hl
	dec b
	rlca
	rst $38
	ret nc

	ld bc, $0721
	ld b, $ff
	rst $38
	ld [bc], a
	ld b, $09
	ld a, [bc]
	cp $02
	inc bc

Call_01d_512b:
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
	inc d
	inc b
	dec b
	inc b
	ld d, h
	ld c, b
	ld d, c
	ld b, l
	ld d, c
	nop
	rst $10
	ld d, e
	jp $3c6c


	ld d, d
	ld d, c
	push bc
	rrca
	add e
	rrca
	sub [hl]
	ld d, e
	sub [hl]
	ld d, e
	ld [$0dfa], sp
	rst $10

Jump_01d_5156:
	bit 0, a
	jr nz, jr_01d_51b4

	ld b, $40
	call $34dd
	jr nz, jr_01d_5182

	ld a, [wd70d]
	bit 1, a
	jr nz, jr_01d_5199

	ld hl, $51c5
	call $3c79
	call $3636
	ld a, [wcc26]
	and a
	ld hl, $5215
	jr nz, jr_01d_517d

	ld hl, $51f8

jr_01d_517d:
	call $3c79
	jr jr_01d_51c2

jr_01d_5182:
	ld hl, $5233
	call $3c79
	ld a, $40
	ldh [$db], a
	ld b, $05
	ld hl, $7fae
	call $3620
	ld hl, wd70d
	set 1, [hl]

jr_01d_5199:
	ld hl, $5268
	call $3c79
	ld bc, wc701
	call $3e5e
	jr nc, jr_01d_51bc

	ld hl, $52d4
	call $3c79
	ld hl, wd70d
	set 0, [hl]
	jr jr_01d_51c2

jr_01d_51b4:
	ld hl, $52ef
	call $3c79
	jr jr_01d_51c2

jr_01d_51bc:
	ld hl, $5384
	call $3c79

jr_01d_51c2:
	jp $0f6a


	nop
	or h
	sbc $c1
	ld [c], a
	or e
	ld [hl], d
	call z, $b276
	call wcbde
	ldh [rVBK], a
	call z, wcecd
	ld a, a
	jp z, wcbde

	ld d, c
	set 1, l
	jp z, wce7f

	jp z, wcdcd

	ld a, a
	set 1, [hl]

Call_01d_51e7:
Jump_01d_51e7:
	or e
	jp z, $e7ac

	ld c, a
	jp z, Jump_01d_7fac

	jp z, wcdcc

	call wcc7f
	call Call_01d_57e7
	nop
	sub $ce
	set 1, h
	ld a, a
	jp z, wcbce

	rst $08
	call z, $e7ca
	ld c, a
	jp z, wcacc

	ld a, a
	jp z, Jump_01d_76cc

	ret c

	adc $e3
	sbc $cb
	ldh [$e7], a
	ld d, a
	nop
	jp z, $e6cb

	ld c, a
	adc $ca
	ld a, a
	adc $b3
	jp z, Jump_01d_5556

	set 1, e
	ld a, a
	adc $ca
	call wcac6
	ld a, a
	jp z, wcac9

	sbc $ca
	xor h
	rst $20
	ld d, a
	nop
	or h
	sbc $c1
	ld [c], a
	or e
	jp z, Jump_01d_527f

	or [hl]
	rst $10
	ld c, a
	or a
	sbc $c9
	or d
	jp c, wdd3a

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
	db $d3
	rst $10
	rst $18
	ret nz

	ld a, a
	or d
	jp c, wdd3a

	ld c, a
	or d
	cp a
	or d
	inc sp
	ld a, a

jr_01d_525f:
	cp b
	pop bc
	add $7f
	jp z, wc0d2

	rst $20
	ld e, b
	nop
	or h
	sbc $c1

jr_01d_526c:
	ld [c], a
	or e
	ld [hl], d
	cp l
	sbc $cf
	call $e7de
	ld d, l
	adc $de
	rst $08
	ld a, a
	ret nz

	cp l
	or [hl]
	rst $18
	ret nz

Jump_01d_527f:
	call c, $e7b1
	ld d, l
	jr nc, jr_01d_525f

	add $7f
	push bc
	add $7f
	or d
	or e
	jp $55d3


	ld l, $de
	ld l, $de
	ld a, a
	jp nz, $2cb3

	call $bcde
	ld d, c
	jp z, $b62d

	cp h
	pop hl
	or e
	jp $2c7f


	pop de
	cp h
	ld [c], a
	db $d3
	ld c, a
	or [hl]
	or l
	ld a, a
	jr nc, jr_01d_526c

	call Call_01d_7fde
	or [hl]
	rst $18
	ret nz

	sbc $d4
	ld d, l
	cp a
	call nc, $3e7f
	or e
	dec l
	rst $20
	ld d, l
	or c
	sbc $26
	call nz, $55c5
	or l
	jp c, wc6b2

	ld a, a
	or h
	or h
	db $d3
	sbc $7f
	call nc, wdcd9
	rst $20
	ld e, b
	nop
	ld d, d
	jp z, $b47f

	sbc $c1
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
	dec bc
	ld d, b
	nop
	or h
	sbc $c1
	ld [c], a
	or e
	ld [hl], d
	swap e
	sbc $9d
	adc e
	xor e
	or $fa
	ret


	ld c, a
	push bc
	or [hl]
	ret nc

	jp z, $b67f

	or d
	ret c

	or a
	ld a, a
	call nc, $e733
	ld d, c
	ld d, h
	ld h, $4f
	pop bc
	or [hl]
	rst $10
	ld a, a
	db $d3
	pop bc
	add $7f
	push bc
	rst $18
	jp $55c5


	ret nz

	ret nz

	or [hl]
	call c, Call_01d_7fde
	call nz, wcab7
	ld d, l
	or d
	call c, Call_01d_7fdd
	or l
	cp l
	sub $b3
	add $7f
	push bc
	reti


	inc sp
	rst $20
	ld d, c
	cp a
	call nc, $7f56
	cp a
	jp c, wd7b6

	rst $20
	ld c, a
	adc d
	sbc e
	jp hl


	ret c

	ld a, a
	ld c, $e3
	xor e
	inc sp
	ld d, l
	sub e
	and a
	dec bc
	xor l
	db $e3
	ld a, a
	sbc c
	add d
	adc h
	jp z, wSpriteCurPosY

	jp nz, wc0b9

	or [hl]
	and $55
	swap e
	sbc $9d
	adc e
	xor e
	ld h, $7f
	db $d3
	rst $10
	or h
	reti


	inc sp
	rst $20
	ld d, c
	jp nc, wc0df

	add $7f
	jp Jump_01d_7fc6


	jp z, wd7b2

	sbc $4f
	push bc
	ret nc

	ret


	ret c

	ld a, a
	push bc
	sbc $d4
	inc sp
	rst $20
	ld d, a
	nop
	push bc
	sbc $d4
	ld a, a
	add $d3
	jp nz, $b24f

	rst $18
	ld b, h
	or d
	call nc, $b9de
	rst $20
	ld d, a
	ld [$8cf0], sp
	cp $04
	ld hl, $53c2
	jr nz, jr_01d_53a3

	ld hl, $53a9

jr_01d_53a3:
	call $3c79
	jp $0f6a


	nop
	ld d, h
	ret


	ld a, a
	add l
	adc l
	add [hl]
	call nc, Call_01d_4fd7
	cp h
	ldh [$bc], a
	sbc $26
	ld a, a
	or [hl]
	dec hl
	rst $18
	jp $b17f


	reti


	rst $20
	ld d, a
	nop
	call z, $b2d9
	ld a, a
	ld d, h
	ld a, a
	rlca
	xor h
	inc c
	ld h, $4f
	or [hl]
	dec hl
	rst $18
	jp $b17f


	reti


	rst $20
	ld d, a
	rla
	ld [bc], a
	rlca
	inc b
	inc bc
	rst $38
	rlca
	dec b
	inc bc
	rst $38
	ld [bc], a
	inc bc
	inc b
	inc b
	inc bc
	dec b
	dec b
	inc bc
	dec l
	rlca
	ld b, $ff
	rst $38
	ld bc, $073d
	inc c
	rst $38
	rst $38
	add d
	jr z, jr_01d_5436

	ld [$ff0c], sp
	db $10
	inc bc
	rla
	rst $00
	rlca
	inc b
	rla
	rst $00
	rlca
	dec b
	ld bc, $0101
	ld bc, $2901
	rlca
	jr nz, jr_01d_542a

	ld e, $07
	rlca
	rlca
	rlca
	rlca
	dec c
	rlca
	inc c
	rlca
	ld c, $0c
	inc bc
	inc b
	ld b, l
	ld e, b
	db $10
	ld d, l
	inc h
	ld d, h
	nop
	dec d
	ld e, b
	call $3c6c
	ld hl, $5430

jr_01d_542a:
	ld a, [wd59e]
	jp $3dc7


	ld a, $54
	ld a, l
	ld d, h
	add c
	ld d, h

jr_01d_5436:
	sub a
	ld d, h
	sbc $54
	and l
	ld d, h
	db $ec
	ld d, h
	ld hl, $5478
	call $3509
	ret nc

	ld a, $03
	ldh [$8c], a
	call $13f1
	ld a, $ff
	ld [wcd66], a
	xor a
	ldh [$b4], a
	ld a, $0c
	ld [$c109], a
	ld a, [wcd3d]
	cp $01
	jr z, jr_01d_5466

	ld a, $02
	ld [wd59e], a
	ret


jr_01d_5466:
	ld a, $10
	ld c, $01
	call Call_01d_54fa
	ld a, $f0
	ld [wcd66], a
	ld a, $01
	ld [wd59e], a
	ret


	ld [bc], a
	inc bc
	ld [bc], a
	inc b
	rst $38
	call Call_01d_550b
	ret nz

	xor a
	ldh [$b4], a
	ld [wcd66], a
	call $0ebd
	ld a, $04
	ldh [$8c], a
	call $13f1
	ld a, $ff
	ld [wcd66], a
	ret


	call Call_01d_550b
	ret nz

	xor a
	ld [wcd66], a
	ld a, $05
	ld [wd59e], a
	ret


	ld a, $04
	ld [wd4a7], a
	ld hl, wd70f
	bit 6, [hl]
	res 6, [hl]
	jr z, jr_01d_54d6

	res 7, [hl]
	call $0ebd
	ld a, $f0
	ld [wcd66], a
	ld a, $06
	ldh [$8c], a
	call $13f1
	xor a
	ld [wd983], a
	ld a, $80
	ld c, $03
	call Call_01d_54fa
	ld a, $04
	ld [wd59e], a
	jr jr_01d_54dd

jr_01d_54d6:
	ld a, $05

Call_01d_54d8:
	ldh [$8c], a
	call $13f1

jr_01d_54dd:
	ret


	call Call_01d_550b
	ret nz

	xor a
	ld [wcd66], a
	ld a, $00
	ld [wd59e], a
	ret


	call Call_01d_550b
	ret nz

	call $3e07
	ld a, [wcf08]
	ld [wd59e], a
	ret


Call_01d_54fa:
jr_01d_54fa:
	push af
	ld b, $00
	ld a, c
	ld [wcd38], a
	ld hl, wccd3
	pop af
	call $372a
	jp $34d0


Call_01d_550b:
	ld a, [wcd38]
	and a
	ret


	inc e
	ld d, l
	ld c, b
	ld d, a
	inc e
	ld d, l
	dec l
	ld d, l
	xor c
	ld d, [hl]
	inc h
	ld d, a
	nop
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
	cp d
	ret


	ld a, a
	set 3, e
	or d
	ld a, a
	adc d
	sbc e
	jp hl


	ret c

	inc sp

Jump_01d_553a:
	ld c, a
	or d
	db $db
	sbc $c5
	ld a, a
	ld d, h
	ld a, a
	call nz, wced8
	or e
	jr nc, jr_01d_54fa

	ret


	ld d, l
	ld [$9fe3], sp
	ld h, $7f
	ret nz

	rst $18
	ret nz

	ld a, a
	ei
	or $f6

Jump_01d_5556:
	ldh a, [$e7]
	ld d, c
	cp e
	rst $18
	cp a
	cp b
	ld a, a
	call nc, wcfd8
	cp l
	or [hl]
	and $50
	ld [$133e], sp
	ld [wd0ea], a
	call $3130
	call $3636
	ld a, [wcc26]
	and a
	jp nz, Jump_01d_55d9

	xor a
	ldh [$9f], a
	ldh [$a1], a
	ld a, $05
	ldh [$a0], a
	call $35f0
	jr nc, jr_01d_558e

	ld hl, $569a
	call $3c79
	jr jr_01d_55df

jr_01d_558e:
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
	ld hl, $55ee
	call $3c79
	ld a, $1e

Call_01d_55b7:
	ld [wd983], a
	ld a, $01
	ld [wd68c], a
	ld a, $f6
	ld [wd68d], a
	ld a, $40

Jump_01d_55c6:
	ld c, $03
	call Call_01d_54fa
	ld hl, wd70f
	set 7, [hl]
	res 6, [hl]
	ld a, $03
	ld [wd59e], a
	jr jr_01d_55eb

Jump_01d_55d9:
	ld hl, $5688
	call $3c79

jr_01d_55df:
	ld a, $80
	ld c, $01
	call Call_01d_54fa
	ld a, $04
	ld [wd59e], a

jr_01d_55eb:
	jp $0f6a


	nop
	cp a
	jp c, wca33

	ld d, [hl]
	rst $20
	ld c, a
	ei
	or $f6
	ldh a, [$7f]
	or d
	ret nz

	jr nc, @-$47

	rst $08
	db $e3
	cp l
	rst $20
	ld d, c
	cp d
	cp d
	inc sp
	jp z, $8a7f

	sbc e
	jp hl


	ret c

	ld a, a
	cp [hl]
	sbc $d6
	or e
	ret


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
	jp nz, $b2b6

	rst $08
	cp l
	rst $20
	ld d, l
	ld d, [hl]
	ld a, a
	cp d
	jp c, $bd33

	rst $20
	ld d, c
	ld d, d
	jp z, $b37f

	cp c
	jp nz, Jump_01d_7fb9

	or [hl]
	rst $10
	ld c, a
	adc d
	sbc e
	jp hl


	ret c

	inc e
	db $e3
	and [hl]
	ld a, a
	ld sp, hl
	or $ba
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
	ret


	cp d
	ret c

	ld a, a
	inc l
	or [hl]

jr_01d_5653:
	sbc $26
	ld a, a
	push bc
	cp b
	push bc
	reti


	or [hl]
	rst $20
	ld c, a
	adc d
	sbc e
	jp hl


jr_01d_5660:
	ret c

	inc e
	db $e3
	and [hl]
	ld h, $7f
	push bc
	cp b
	push bc
	rst $18
	ret nz

	rst $10
	ld d, l
	and b
	dec b
	sbc h
	xor e
	inc sp
	ld a, a
	cp h
	rst $10
	cp [hl]
	rst $08
	cp l
	rst $20
	ld d, l
	inc sp
	jp z, $e756

	ld a, a
	jr z, jr_01d_5660

	inc [hl]
	ld a, a
	rst $10
	rst $18
	cp b
	rst $20
	ld d, a
	nop
	cp a
	or e
	or [hl]
	ld d, [hl]
	rst $20
	ld a, a
	rst $08
	ret nz

	ld a, a
	or a
	jp $b87f


	jr nc, jr_01d_5653

	or d
	ld d, a
	nop
	or c
	xor h
	ld a, a
	or l
	or [hl]
	ret z

	ld h, $7f
	ret nz

	ret c

	push bc
	or d
	rst $20
	ld d, a
	nop
	db $d3
	or e
	ld a, a
	or l
	call c, wc6d8
	ld a, a
	cp l
	reti


	and $50
	ld [$36cd], sp
	ld [hl], $fa
	ld h, $cc
	and a
	jr nz, jr_01d_56df

	ld hl, $56fe
	call $3c79
	xor a
	ld [$c109], a
	ld a, $80
	ld c, $03
	call Call_01d_54fa
	ld hl, wd70f
	res 6, [hl]
	res 7, [hl]
	ld a, $00
	ld [wcf08], a
	jr jr_01d_56f6

jr_01d_56df:
	ld hl, $5719
	call $3c79
	ld a, $04
	ld [$c109], a
	ld a, $40
	ld c, $01
	call Call_01d_54fa
	ld a, $05
	ld [wcf08], a

jr_01d_56f6:
	ld a, $06
	ld [wd59e], a
	jp $0f6a


	nop
	adc d
	sbc e
	jp hl


	ret c

	inc e
	db $e3
	and [hl]
	ret


	ld c, a
	ret


	cp d
	ret c

	jp z, $2e7f

	sbc $3c
	ld a, a
	res 6, a
	call nz, wcfd8
	cp l
	rst $20
	ld d, a
	nop
	inc sp
	jp z, $267f

	sbc $3a
	rst $18
	jp Jump_01d_57e7


	nop
	ld a, [hli]
	cp b
	db $db
	or e
	cp e
	rst $08
	rst $20
	ld c, a
	ld d, h
	ld a, a
	ret nz

	cp b
	cp e
	sbc $7f
	call nz, wc0da
	or [hl]
	push bc
	and $55
	rst $08
	ret nz

	ld a, a
	or c
	cp a
	dec sp
	add $7f
	or a
	jp $e7c8


	ld d, a
	ld [$6421], sp
	ld d, a
	call $3c79
	call $3636
	ld a, [wcc26]
	and a
	ld hl, $57fb
	jr nz, jr_01d_575e

	ld hl, $577b

jr_01d_575e:
	call $3c79
	jp $0f6a


	nop
	cp d
	sbc $c1
	call c, $4fe7
	adc d
	sbc e
	jp hl


	ret c

	ld a, a
	ld [$9fe3], sp
	jp z, wca7f

	inc l
	jp nc, $e6c3

	ld d, a
	nop
	adc d
	sbc e
	jp hl


	ret c

	ld a, a
	ld [$9fe3], sp
	jp z, $fa4f

	jp nz, $7fc9

	ld c, $e3

jr_01d_578c:
	xor e
	add $7f
	call c, wdab6
	jp $bdcf


	rst $20
	ld d, c
	cp a
	jp c, wda2f

	add $7f
	jp nc, wd72d

	cp h
	or d
	ld a, a
	ld d, h
	ld h, $4f
	cp [hl]
	or d
	cp a
	cp b
	ld a, a
	cp h
	jp $bdcf


	or [hl]
	rst $10
	ld d, l
	cp [hl]
	sbc $d6
	or e
	ret


	ld a, a
	adc d
	sbc e
	jp hl


	ret c

	inc e
	db $e3
	and [hl]
	inc sp
	ld d, l
	jp nz, wcfb6

	or h
	jp $b87f


	jr nc, @-$43

	or d
	rst $20
	ld d, c
	ret nz

	jr nc, jr_01d_578c

	ld a, a
	inc l
	or [hl]
	sbc $26
	ld a, a
	push bc
	cp b
	push bc
	reti


	or [hl]
	ld c, a
	adc d
	sbc e
	jp hl


	ret c

	inc e
	db $e3
	and [hl]
	db $dd
	ld a, a
	ld l, $de

Call_01d_57e7:
Jump_01d_57e7:
	inc a
	ld a, a
	push bc
	add hl, hl
	ret nz

	rst $10
	ld d, l
	ld [$9fe3], sp
	jp z, $b57f

	call c, Call_01d_7fd8
	jr nc, @-$28

	rst $20
	ld d, a
	nop
	or l
	rst $18
	call nz, $bc7f
	jp nz, $b2da

	rst $20
	ld c, a
	inc l
	ld [c], a
	or e
	jp c, Jump_01d_7fde

	cp e
	sbc $7f
	jr nc, @-$1f

	ret nz

	ret z

	rst $20
	ld d, a
	ld a, [bc]
	inc b
	dec b
	inc bc
	inc b
	rst $38
	dec b
	inc b
	inc b
	rst $38
	nop
	inc bc
	nop
	call c, $0400
	ld bc, $00dc
	ld [bc], a
	inc hl
	ld b, $0a
	rst $38
	jp nc, $2301

	ld [$ff05], sp
	db $d3
	ld [bc], a
	ld [$05c7], sp
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
	rlca
	add hl, bc
	dec b
	dec b
	ld e, a
	db $ec
	ld e, b
	ld e, l
	ld e, b
	nop
	or e
	ld e, [hl]
	call Call_01d_5873
	call $3c6c
	ld hl, $5902
	ld de, $5899
	ld a, [wd5da]
	call $31a8
	ld [wd5da], a
	ret


Call_01d_5873:
	ld hl, wd0eb
	bit 6, [hl]
	res 6, [hl]
	ret z

	ld hl, $5885
	ld de, $588a
	call $31c7
	ret


	adc l
	add [hl]
	sub b
	add a
	ld d, b
	add [hl]
	xor a
	add d
	ld d, b

Jump_01d_588e:
	xor a
	ld [wcd66], a
	ld [wd5da], a
	ld [wd97c], a
	ret


	ld h, c
	ld [hld], a
	sub h
	ld [hld], a
	cp l
	ld [hld], a
	and c
	ld e, b
	ld a, [wd034]
	cp $ff
	jp z, Jump_01d_588e

	ld a, $f0
	ld [wcd66], a

Call_01d_58ae:
	ld a, $09
	ldh [$8c], a
	call $13f1
	ld hl, wd711
	set 1, [hl]
	ld bc, wce01
	call $3e5e
	jr nc, jr_01d_58d0

	ld a, $0a
	ldh [$8c], a
	call $13f1
	ld hl, wd711
	set 0, [hl]
	jr jr_01d_58d7

jr_01d_58d0:
	ld a, $0b
	ldh [$8c], a
	call $13f1

jr_01d_58d7:
	ld hl, wd2d5
	set 4, [hl]
	ld hl, wd6a9
	set 4, [hl]
	ld a, [wd711]
	or $fc
	ld [wd711], a
	jp Jump_01d_588e


	ld c, e
	ld e, c
	jr c, jr_01d_594b

	jp z, $355b

	ld e, h
	and d
	ld e, h
	ld a, [hli]
	ld e, l
	adc l
	ld e, l
	rlca
	ld e, [hl]
	ld a, e
	ld e, d
	reti


	ld e, d
	inc l
	ld e, e
	ld [bc], a
	jr nz, jr_01d_5916

	rst $10
	ld b, d
	ld e, e
	and h
	ld e, e
	sub h
	ld e, e
	sub h
	ld e, e
	inc bc
	jr nz, jr_01d_5922

	rst $10
	call nc, $0a5b
	ld e, h

jr_01d_5916:
	ld bc, $015c
	ld e, h
	inc b
	ld b, b
	ld de, $3fd7
	ld e, h
	ld [hl], c
	ld e, h

jr_01d_5922:
	ld e, e
	ld e, h
	ld e, e
	ld e, h
	dec b
	jr nz, jr_01d_593a

	rst $10
	xor h
	ld e, h
	add sp, $5c
	rst $10
	ld e, h
	rst $10
	ld e, h
	ld b, $20
	ld de, $34d7
	ld e, l
	ld [hl], h
	ld e, l

jr_01d_593a:
	ld l, h
	ld e, l
	ld l, h
	ld e, l
	rlca
	jr nz, @+$13

	rst $10
	sub a
	ld e, l
	ret c

	ld e, l
	call z, wcc5d
	ld e, l
	rst $38

jr_01d_594b:
	ld [$11fa], sp
	rst $10
	bit 1, a
	jr z, jr_01d_5967

	bit 0, a
	jr nz, jr_01d_595f

	call z, Call_01d_58ae
	call $30fe
	jr jr_01d_5995

jr_01d_595f:
	ld hl, $5a32
	call $3c79
	jr jr_01d_5995

jr_01d_5967:
	ld hl, $5998
	call $3c79
	ld hl, wd6ac
	set 6, [hl]
	set 7, [hl]
	ld hl, $5a0e
	ld de, $5a0e
	call $339c
	ldh a, [$8c]
	ld [wSpriteIndex], a
	call $33b2
	call $331f
	ld a, $05
	ld [wd039], a
	xor a
	ldh [$b4], a
	ld a, $03
	ld [wd5da], a

jr_01d_5995:
	jp $0f6a


	nop
	add [hl]
	xor a
	add d
	ld [hl], d
	ld d, [hl]
	ld a, a
	sbc e
	jp hl


	ld a, a
	sbc e
	jp hl


	ld a, a
	sbc e
	jp hl


	rst $20
	ld d, c
	cp d
	call c, Call_01d_44df
	ld a, a
	ld a, [hli]
	call nz, $26b7
	ld c, a
	cp [hl]
	rst $18
	cp h
	ldh [$c6], a
	ld a, a
	ret nz

	ret nz

	or [hl]
	or d
	db $dd
	ld a, a
	or d
	inc [hl]
	pop de
	call nz, $55ca
	or [hl]
	ret nz

	jp z, Jump_01d_7fd7

	or d
	ret nz

	or d
	call c, Call_01d_51e7
	ld d, [hl]
	ld a, a
	inc [hl]
	cp b
	db $dd
	ld a, a
	cp b
	rst $10
	rst $18
	ret nz

	rst $10
	ld a, a
	inc l
	jp nc, $e7c2

	ld c, a
	ret z

	pop de
	rst $18
	jp $bc7f


	rst $08
	rst $18
	ret nz

	rst $10
	ld a, a
	pop de
	jp $bab2


	or e
	ld d, c
	ld d, [hl]
	ld a, a
	cp h
	ret


	dec sp
	ret


	ld a, a
	call c, wc92b
	ld a, a
	ld a, [hli]
	cp b
	or d
	db $dd
	ld c, a
	or e
	cp c
	jp wSpriteCurPosY


	reti


	ld h, $7f
	sub $b2
	rst $20
	ld d, a
	nop
	call z, $56de
	rst $20
	ld c, a
	or l
	rst $00
	cp h
	ld a, a
	call nc, $b5d8
	reti


	push bc
	rst $20
	ld d, c
	cp a
	rst $10
	rst $20
	ld c, a
	ld b, c
	xor e
	add a
	ld a, a
	add hl, de
	xor h
	dec bc
	db $dd
	ld a, a
	or e
	cp c
	call nz, $e7da
	ld e, b
	nop
	inc [hl]
	cp b
	inc [hl]
	cp b
	jp z, $347f

	cp b
	db $dd
	ld a, a
	or c
	dec sp
	ret nz

	rst $10
	ld c, a
	rst $30
	adc a
	db $e3
	xor e
	ld a, a
	ld a, [hli]
	call nz, Call_01d_7fc6
	inc [hl]
	sbc $34
	sbc $55
	rrca
	and b
	db $e3
	dec bc
	ld h, $7f
	or l
	or l
	or a
	cp b
	ld a, a
	push bc
	reti


	rst $20
	ld d, c
	cp d
	jp c, $7fca

	or c
	or d
	jp Jump_01d_4fc6


	or a
	ld [c], a
	or e
	call z, Call_01d_7fdd
	or c
	ret nz

	or h
	reti


	ld a, a
	call c, $7f2b
	push bc
	ret


	jr nc, @-$17

	ld d, a
	nop
	ld b, c
	xor e
	add a
	ld a, a
	add hl, de
	xor h
	dec bc
	db $dd
	ld a, a
	db $d3
	rst $18
	jp $b57f


	jp c, Jump_01d_4f3a

	or l
	rst $00
	cp h
	ret


	ld a, a
	ld d, h
	ret


	ld d, l
	ld a, $b3
	daa
	ld [c], a
	ld a, a
	ret c

	ld [c], a
	cp b
	db $dd
	ld a, a
	or c
	add hl, hl
	reti


	rst $20
	ld d, c
	ret nz

	ret nz

	or [hl]
	rst $18
	jp wc57f


	or d
	ld a, a
	call nz, $33b7
	db $d3
	ld c, a
	push bc
	ret nc

	ret


	ret c

	ret


	ld a, a
	call c, wdd2b
	ld d, l
	jp nz, $b4b6

	reti


	ld a, a
	sub $b3
	add $7f
	push bc
	reti


	rst $20
	ld d, c
	cp a
	or e
	jr nc, @+$58

	rst $20
	ld a, a
	cp d
	jp c, Jump_01d_7fdd

	or l
	rst $00
	cp h
	add $e7
	ld d, a
	nop
	ld d, d
	jp z, $867f

	xor a
	add d
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
	ld de, $5100
	ld a, [$f6f6]
	ret z

	sbc $7f
	pop de
	or [hl]
	cp h
	ld a, a
	sub $d8
	ld c, a
	call c, wd426
	add $7f
	jp nz, wdcc0

	reti


	ld a, a
	ld d, h
	ld a, a
	call c, Call_01d_512b
	ld e, h
	or $fc
	add $ca
	ld a, a
	ld a, [hli]
	cp b
	or d
	rst $20
	ld c, a
	inc [hl]
	cp b
	inc [hl]
	cp b
	ld h, $7f
	call z, $b2b3
	sbc $7f
	cp h
	jp wd9b1


	rst $20
	ld d, a
	nop
	add $d3
	jp nz, Jump_01d_7f26

	or d
	rst $18
	ld b, h
	or d
	jr nc, @+$59

	ld [$0221], sp
	ld e, c
	call $3214
	jp $0f6a


	nop
	ret nz

	jr nc, jr_01d_5bc5

	jp nz, $b2d6

	ld a, a
	jr nc, @-$45

	inc sp

jr_01d_5b4d:
	jp z, $307f

	jp nc, $e730

	ld c, a
	ld d, [hl]
	ld a, a
	call c, wd9b6
	or [hl]
	and $51
	ld d, h
	jp z, $927f

	add a
	sub l
	xor h
	add a
	jr nc, jr_01d_5b4d

	ld d, c
	cp d
	ret


	ld a, a
	dec bc
	sbc a
	add $7f

jr_01d_5b6e:
	or a
	ret nz

jr_01d_5b70:
	ld a, a
	or [hl]
	rst $10
	ld a, a
	add $ca
	ld c, a
	cp a
	or e
	or d
	or e
	ld a, a
	ld d, h
	ret


	ld a, a
	or l
	cp b
	ld a, a
	call z, $bbb6
	ld d, l
	adc a
	xor h
	ld b, d
	ret c

	ld a, a
	or l
	cp h
	or h
	jp $d47f


	reti


	rst $20
	ld d, a
	nop
	ld d, [hl]
	rst $20
	ld c, a
	ret nz

	jr nc, jr_01d_5b6e

	ret


	ld a, a
	inc sp
	jp z, wc57f

	or d
	rst $20
	ld e, b
	nop
	cp d
	inc [hl]
	db $d3
	ret


	ld a, a
	ld e, l
	ld a, a
	call nz, $b2ca
	or h
	ld c, a
	ld b, b
	xor c
	db $e3
	ld a, a
	jr nc, jr_01d_5b70

	inc sp
	push bc
	cp b
	ld d, l
	sub d

jr_01d_5bbc:
	add a
	sub l
	xor h
	add a
	db $d3
	ld a, a
	ret nc

	ld h, $b2

jr_01d_5bc5:
	jp wc5d9


	rst $20
	ld d, a
	ld [$0e21], sp
	ld e, c
	call $3214
	jp $0f6a


	nop
	sbc l
	dec bc
	adc e
	xor l
	xor e
	ld a, a
	jr nc, jr_01d_5bbc

	ret nz

	ld a, a
	or l
	jp c, Jump_01d_4fca

	sub l
	xor e
	dec bc
	xor l
	add $7f
	or c
	cp d
	ld h, $da
	jp $ba55


	ret


	ld a, a
	adc l
	add [hl]
	sub b
	add a
	ld a, a
	dec bc
	sbc a
	add $7f
	jp z, wdfb2

	ret nz

	rst $20
	ld d, a
	nop
	ld d, [hl]
	ld a, a
	call nc, wdad7
	ret nz

	rst $20
	ld e, b
	nop
	ret nz

	call nz, Call_01d_7fb4
	rst $08
	cp c
	jp Jump_01d_7fd3


	or l
	jp c, Jump_01d_4fca

	sub l
	xor e
	dec bc
	xor l
	ld a, a
	sbc l
	adc h
	adc a
	db $e3
	ld d, l
	add [hl]
	xor a
	add d
	ret


	ld a, a
	or l
	cp h
	or h
	add $7f
	or d
	or a
	reti


	ld a, a
	jp nz, wd8d3

	jr nc, jr_01d_5c8c

	ld [$1a21], sp
	ld e, c
	call $3214
	jp $0f6a


	nop
	or l
	jp c, $7fc9

	ld d, h
	ld a, a
	or c
	call nc, wc9bc
	ld a, a
	call c, Call_01d_4f2b
	ret nz

	rst $18
	ld b, [hl]
	ret c

	call nz, $b17f
	inc l
	call c, wc5b2
	rst $20
	ld d, a
	nop
	ld d, [hl]
	ld a, a
	cp a
	or e
	or [hl]
	rst $20
	ld c, a
	or l
	rst $08
	or h
	db $d3
	ld a, a
	call c, $7f2b
	jp nz, $b2b6

	or [hl]
	and $58
	nop
	ret nz

	ret nz

	or [hl]
	or d
	ld a, a
	or l
	call c, wc0df
	ld a, a
	or c
	call nz, wd333
	ld c, a
	inc [hl]
	cp b
	ld a, a
	ret z

	pop de
	ret c

	ld a, a
	call nz, wdfb2
	ret nz

jr_01d_5c8c:
	ld a, a
	cp d
	or e
	or [hl]
	jp z, wc955

	cp d
	reti


	ld a, a
	call nz, wdbba
	ld h, $7f
	cp l
	or a
	ld a, a
	jr nc, jr_01d_5cce

	rst $20
	ld d, a
	ld [$2621], sp
	ld e, c
	call $3214
	jp $0f6a


	nop
	or l
	rst $18
	call nz, Call_01d_7fe7
	rst $08
	pop bc
	push bc
	rst $20
	ld d, c
	adc l
	add [hl]
	sub b
	add a
	ld a, a
	dec bc
	sbc a
	ret


	ld a, a
	jp nc, $3cb2

	jp nz, wd04f

	or h
	push bc
	or d
	ld a, a
	or [hl]
	dec a
	ld a, a
	adc e

jr_01d_5cce:
	adc h
	sub d
	sbc a
	jp z, $347f

	or e
	jr nc, jr_01d_5d2e

	nop
	ld d, [hl]
	ld a, a
	adc $b5
	rst $20
	ld c, a
	call nc, $7fd9
	inc l
	ldh [$c5], a
	or d
	or [hl]
	rst $20
	ld e, b
	nop
	or l
	rst $08
	or h
	jp z, wce7f

	ret z

	ld h, $7f
	or c
	ret c

	cp a
	or e
	ld a, a
	jr nc, @-$17

	ld c, a
	call nz, $3db8
	jp nz, Jump_01d_7fc6

	sbc d
	xor e
	sub e
	db $dd
	ld a, a
	or l
	cp h
	or h
	sub $b3
	rst $20
	ld d, c
	ret nc

	or h
	push bc
	or d
	ld a, a
	or [hl]
	dec a
	jp z, wd67f

	cp b
	ld a, a
	ret nc

	reti


	call nz, $bc4f
	or a
	ret c

	ld h, $7f
	ret nc

	or h
	jp $b87f


	reti


	ld d, [hl]
	rst $20
	ld d, a
	ld [$3221], sp
	ld e, c

jr_01d_5d2e:
	call $3214
	jp $0f6a


	nop
	cp d
	ret


	ld a, a
	or l
	jp c, Jump_01d_4fd3

	sub l
	xor e
	dec bc
	xor l
	ld a, a
	add [hl]
	xor a
	add d
	ret


	ld a, a
	db $d3
	sbc $b6
	cp [hl]
	or d
	rst $20
	ld d, c
	sub l
	xor e
	dec bc
	xor l
	jp z, wd17f

	or [hl]
	cp h
	ld a, a
	or [hl]
	rst $10
	ld c, a
	sub $b8
	ld a, a
	inc [hl]
	or e
	inc a
	jp nz, Jump_01d_7fdd

	jp nz, wdfb6

	ret nz

	ld a, a
	call nz, $b3b2
	ld d, a
	nop
	ld h, $b5
	db $e3
	sbc $56
	rst $20
	ld e, b
	nop
	rst $08
	jr nc, jr_01d_5df7

	rst $08
	jr nc, @-$17

	ld c, a
	or l
	jp c, wcac6

	ld a, a
	cp h
	pop hl
	daa
	ld [c], a
	or e
	ld h, $7f
	ret nz

	ret c

	push bc
	or d
	ld d, a
	ld [$3e21], sp
	ld e, c
	call $3214
	jp $0f6a


	nop
	cp d
	cp d
	ret


	ld a, a
	ret c

	db $e3
	rrca
	db $e3
	ld a, a
	add [hl]
	xor a
	add d
	jp z, $814f

	dec b
	ld a, a
	sub l
	xor e
	dec bc
	xor l
	ret


	ld a, a
	cp h
	cp a
	sbc $30
	rst $20
	ld d, c
	or l
	or d
	xor h
	rst $20
	ld c, a
	or l
	rst $08
	or h
	jp z, wc57f

	add $c9
	ld a, a
	cp h
	cp a
	sbc $7f
	push bc
	sbc $30
	and $57
	nop
	push bc
	or [hl]
	push bc
	or [hl]
	ld a, a
	inc sp
	or a
	reti


	push bc
	rst $20
	ld e, b
	nop
	ld d, [hl]
	ld a, a
	res 6, [hl]
	ret c

	ld a, a
	or c
	reti


	ld a, a
	call nz, wdbba
	add $4f
	or [hl]
	add hl, hl
	ld h, $7f
	or c
	reti


	rst $20
	ld d, c
	res 6, [hl]
	ret c

	call nz, $b67f
	add hl, hl
	rst $20

jr_01d_5df7:
	ld c, a
	or l
	rst $08
	or h
	jp z, $347f

	pop bc
	rst $10
	db $dd
	ld a, a
	or h
	rst $10
	inc a
	and $57
	ld [$11fa], sp
	rst $10
	bit 1, a
	ld hl, $5e92
	jr nz, jr_01d_5e15

	ld hl, $5e1b

jr_01d_5e15:
	call $3c79
	jp $0f6a


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
	adc l
	add [hl]
	sub b
	add a
	ld a, a
	dec bc
	sbc a
	jp z, $b67f

	rst $10
	cp b
	ret c

	ld a, a
	call nc, $b7bc
	ld c, a
	ret nc

	or h

jr_01d_5e42:
	push bc
	or d
	ld a, a
	or [hl]
	dec a
	inc sp
	ld a, a
	cp h
	or a
	rst $10
	jp c, wd9c3

	rst $20
	ld d, c
	add [hl]
	xor a
	add d
	ret


	ld a, a
	call nc, wcac2
	ld a, a
	cp l
	jr z, jr_01d_5edc

	cp a
	cp d
	add $4f
	or d
	reti


	ld a, a
	sub $b3
	add $7f
	ret nc

	or h
	reti


	ld h, $56
	ld d, c
	ret nc

	or h
	push bc
	or d
	ld a, a
	or [hl]
	dec a
	ret


	ld a, a
	call nz, wda27
	jp $7fd9


	call nz, wddba
	ld c, a
	cp e
	ld h, $bc
	ld a, a
	jr nc, jr_01d_5e42

	push bc
	or d
	call nz, $b17f
	or h
	push bc
	or d
	ld l, $e7
	ld d, a
	nop
	add hl, hl
	sbc $30
	or d
	add $7f
	push bc
	or l
	ld a, a
	or d
	or a
	ld a, a
	ret


	cp d
	reti


	ld c, a
	sub l
	xor e
	dec bc
	xor l
	ret


	ld a, a
	cp d
	call c, wddbb
	ld a, a
	ret nc

	ret nz

	push bc
	rst $20
	ld d, a
	inc bc
	ld [bc], a
	ld de, $0504
	rst $38
	ld de, $0505
	rst $38
	nop
	ld [$0e30], sp
	ld [wd0ff], sp
	ld b, c
	xor $01
	ld hl, $0c11
	rst $38
	ret nc

	ld b, d
	db $dd
	rlca
	ld hl, $0b0c
	rst $38
	db $d3
	ld b, e
	db $dd
	inc bc
	ld hl, $0510
	rst $38
	ret nc

jr_01d_5edc:
	ld b, h
	db $dd
	ld [$0921], sp
	rlca
	rst $38
	pop de
	ld b, l
	sbc $01
	ld hl, $0c06
	rst $38
	ret nc

	ld b, [hl]
	sbc $02
	ld hl, $060b
	rst $38
	jp nc, wdd47

	inc b
	inc h
	inc de
	dec bc
	rst $38
	ret nc

	ld [wc74e], sp
	ld de, $4e04
	rst $00
	ld de, $0105
	ld bc, $0101
	ld bc, $2d05
	ld l, $30
	dec b
	dec l
	dec b
	cpl
	jr nc, jr_01d_5f19

	cpl
	dec l
	dec b
	cpl
	dec b

jr_01d_5f19:
	dec b
	dec l

jr_01d_5f1b:
	dec l
	cpl
	dec b
	ld l, $2f
	dec b
	jr nc, jr_01d_5f28

	dec b
	dec l
	dec l
	dec l
	dec b

jr_01d_5f28:
	dec b
	ld [hld], a
	dec b
	ld sp, $0505
	dec b
	inc b
	dec b
	dec b
	inc d
	inc b
	rlca
	ld hl, sp+$5f
	ld b, d
	ld e, a
	ld a, $5f
	nop
	jp nc, wcd5f

	ld l, h
	inc a
	ret


	ld c, b
	ld e, a
	ld a, [hl]
	ld e, a
	xor [hl]
	ld e, a
	nop
	add d
	sub b
	ret


	ld a, a
	or h
	sbc $c1
	ld [c], a
	or e
	ld c, a
	or c
	jr nc, jr_01d_5f1b

	ld a, a
	and d
	inc de
	xor e
	rst $18
	jp $b27f


	or e
	sbc $33
	cp l
	ld d, c
	adc $d7
	rst $20
	ld a, a
	ld d, h
	ret


	ld a, a
	and d
	inc de
	xor e
	rst $18
	jp wc44f


	ld a, $b9
	ret nz

	ld a, a
	or [hl]
	sbc $2c
	ld a, a
	inc sp
	cp h
	ld [c], a
	rst $20
	ld d, a
	nop
	and d
	inc de
	xor e
	cp e
	sbc $df
	jp $bd4f


	ld a, [hli]
	or d
	ld a, a
	ld d, h
	ld a, a
	cp b
	call c, $b2bc
	sbc $30
	rst $20
	ld d, c
	ret nc

	ret nz

	ld a, a
	cp d
	call nz, Call_01d_7fd3
	push bc
	or d
	ld c, a
	ld d, h
	ret


	ld a, a
	add l
	adc l
	add [hl]
	call nz, $7fb6
	db $d3
	rst $18
	jp $bcd9


	ld d, a
	nop
	add d
	sub b
	ret


	ld a, a
	and d
	inc de
	xor e
	ld a, a
	push bc
	add $d4
	rst $10
	ld c, a
	call z, $e0c6
	call z, $e0c6
	ld a, a
	or d
	rst $18
	jp wc5c0


	ld d, [hl]
	ld d, c
	inc e
	adc b
	ret nz

	ld a, a
	ret


	or [hl]
	and $57
	rla
	ld [bc], a
	rlca
	inc b
	ld b, $ff
	rlca
	dec b
	ld b, $ff
	nop
	inc bc
	inc hl
	dec b
	ld [wd0ff], sp
	ld bc, $0623
	inc b
	rst $38
	pop de
	ld [bc], a
	inc hl
	dec b
	ld c, $ff
	ret nc

	inc bc
	rra
	rst $00
	rlca
	inc b
	rra
	rst $00
	rlca
	dec b
	ld b, $06
	ld bc, $0103
	dec [hl]
	ld bc, $0707
	jr c, @+$3b

	rlca
	rrca
	rlca
	inc [hl]
	rlca
	ld [hl], $37
	scf
	scf
	scf
	dec c
	rlca
	inc c
	rlca
	rlca
	rlca
	ld c, $16
	add hl, bc
	ld a, [bc]
	push bc
	ld h, a
	ld h, e
	ld h, c
	jr nz, jr_01d_607d

	nop
	ld l, e
	ld h, a
	call Call_01d_602f
	call $3c6c
	ld hl, $606a
	ld a, [wd5dd]
	jp $3dc7


Call_01d_602f:
	ld hl, wd0eb
	bit 6, [hl]
	res 6, [hl]
	push hl
	call nz, Call_01d_6048
	pop hl
	bit 5, [hl]
	res 5, [hl]
	call nz, $3edd
	ld hl, wd71a
	res 7, [hl]
	ret


Call_01d_6048:
	ld hl, $6051
	ld de, $6055
	jp $31c7


	rlca
	and a
	xor e
	ld d, b
	add l
	sub c
	and l
	ld d, b

Jump_01d_6059:
	xor a
	ld [wcd66], a
	ld [wd5dd], a
	ld [wd97c], a
	ret


	ldh a, [$8c]
	ld [wcc55], a
	ret


	ld [hl], d
	ld h, b
	and b
	ld h, b
	cp d
	ld h, b
	ld c, $61
	ld a, [wd97b]
	and a
	ret z

	ldh [$8c], a
	cp $04
	jr nz, jr_01d_6087

jr_01d_607d:
	ld a, $04
	ld [wd4a7], a
	ld de, $609b
	jr jr_01d_608f

jr_01d_6087:
	ld de, $609e
	ld a, $01
	ld [wd4a7], a

jr_01d_608f:
	call $3684
	ld a, $01
	ld [wd5dd], a
	ld [wd97c], a
	ret


	add b
	ld b, b
	rst $38
	add b
	rst $38
	ld a, [wd6af]
	bit 0, a
	ret nz

	xor a
	ld [wcd66], a
	ld a, [wd97b]
	ld [wcc55], a
	ldh [$8c], a
	jp $13f1


Call_01d_60b5:
	ld a, $10
	jp $3e9d


	ld a, [wd034]
	cp $ff
	jp z, Jump_01d_6059

	ld a, [wcc55]
	ldh [$db], a
	ld c, a
	ld b, $02
	ld hl, wd719
	call Call_01d_60b5
	ld a, c
	and a
	jr nz, jr_01d_60df

	call $3790
	ld a, $ad
	call $0e45
	call $3790

jr_01d_60df:
	ld a, [wcc55]
	ldh [$db], a
	ld c, a
	ld b, $01
	ld hl, wd719
	call Call_01d_60b5
	ld a, [wcc55]
	sub $02
	ld c, a
	ld b, $01
	ld hl, wd71b
	call Call_01d_60b5
	call $3edd
	xor a
	ld [wcd66], a
	ld [wd97b], a
	ld a, $00
	ld [wd5dd], a
	ld [wd97c], a
	ret


	ld a, [wd034]
	cp $ff
	jp z, Jump_01d_6059

	ld a, $f0
	ld [wcd66], a

Call_01d_611b:
	ld a, $0a
	ldh [$8c], a
	call $13f1
	ld hl, wd719
	set 1, [hl]
	ld bc, $ee01
	call $3e5e
	jr nc, jr_01d_613d

	ld a, $0b
	ldh [$8c], a
	call $13f1
	ld hl, wd719
	set 0, [hl]
	jr jr_01d_6144

jr_01d_613d:
	ld a, $0c
	ldh [$8c], a
	call $13f1

jr_01d_6144:
	ld hl, wd2d5
	set 6, [hl]
	ld hl, wd6a9
	set 6, [hl]
	ld a, [wd719]
	or $fc
	ld [wd719], a
	ld hl, wd71a
	set 0, [hl]
	ld hl, wd0eb
	set 5, [hl]
	jp Jump_01d_6059


	and e
	ld h, c
	ld l, l
	ld h, e
	and $63
	ld e, l
	ld h, h
	call Call_01d_4064
	ld h, l
	rst $20
	ld h, l
	ld e, h
	ld h, [hl]
	rst $10
	ld h, [hl]
	cp b
	ld h, d
	ld b, $63
	ld h, c
	ld h, e

Jump_01d_617b:
	ldh a, [$8c]
	ld [wSpriteIndex], a
	call $33b2
	call $331f
	ld hl, wd6ac
	set 6, [hl]
	set 7, [hl]
	ld a, [wSpriteIndex]
	cp $01
	jr z, jr_01d_6198

	ld a, $02
	jr jr_01d_619a

jr_01d_6198:
	ld a, $03

jr_01d_619a:
	ld [wd5dd], a
	ld [wd97c], a
	jp $0f6a


	ld [$19fa], sp
	rst $10
	bit 1, a
	jr z, jr_01d_61c1

	bit 0, a
	jr nz, jr_01d_61b8

	call z, Call_01d_611b
	call $30fe
	jp $0f6a


jr_01d_61b8:
	ld hl, $626a
	call $3c79
	jp $0f6a


jr_01d_61c1:
	ld hl, $61d8
	call $3c79
	ld hl, $6240
	ld de, $6240
	call $339c
	ld a, $07
	ld [wd039], a
	jp Jump_01d_617b


	nop
	or e
	or l
	or l
	db $e3
	cp l
	rst $20
	ld d, c
	call c, wcabc
	ld a, a
	db $d3
	or h
	reti


	ld a, a
	or l
	call nz, $e7ba
	ld c, a
	rlca
	and a
	xor e
	inc l
	rst $08
	ld a, a
	ld d, h
	dec bc
	sbc a
	ret


	ld a, a
	add l
	sub c
	and l
	ld d, c
	call c, wc9bc
	ld a, a
	ld d, h
	jp z, $bd7f

	dec a
	jp Jump_01d_4fdd


jr_01d_6208:
	adc $c9
	or l
	inc sp
	ld a, a
	call nc, wc3b2
	ld a, a
	cp d
	ld h, $bc
	rst $08
	cp b
	reti


	ld d, l
	jp nz, wd3dc

	ret


	ld a, a
	ld a, [hld]
	or [hl]
	ret c

	ld a, a
	push bc
	ret


	jr nc, jr_01d_6208

	rst $20
	ld d, c
	or e
	or l
	or l
	db $e3
	cp l
	rst $20
	ld c, a
	call nc, $34b9
	push bc
	or l
	cp h
	ret


	ld a, a
	sub $b3
	or d
	jp z, $b27f

	or d
	or [hl]
	rst $20
	ld d, a
	nop
	call c, wcabc
	ld a, a
	db $d3
	or h
	jp nz, wc0b7

	rst $20
	ld d, c
	or l
	rst $08
	or h
	add $7f
	cp d
	cp a
	rst $20
	ld c, a
	add a
	ret c

	sbc a
	ld c, $ab
	ld a, a
	add hl, de
	xor h
	dec bc
	jp z, wcc7f

	cp e
	call c, $b2bc
	rst $20
	ld d, b
	ld de, $500d
	nop
	cp d
	ret


	ld a, a
	call c, wdd2b
	ld a, a
	ret nc

	sbc $c5
	jp z, $304f

jr_01d_6278:
	or d
	db $d3
	sbc $2c
	call nc, Call_01d_7fb7
	call nz, wd67f
	sbc $33
	reti


	ld h, $55
	cp a
	ret c

	ldh [$7f], a
	rst $08
	pop bc

jr_01d_628d:
	ld h, $b2
	jr nc, jr_01d_6278

	ld d, c
	adc $de
	ld a, [hld]
	ld a, a
	or a
	ld [c], a
	or e
	call nz, $337f
	jp z, $304f

	or d
	db $d3
	sbc $2c
	ld a, a
	call nz, $7fb6
	or l
	cp b
	ret c

	dec sp
	ld a, a
	call nz, wd655
	sbc $33
	ld a, a
	or d
	reti


	ret


	jr nc, @-$17

	ld d, a
	nop
	or e
	or l
	db $e3
	cp l
	rst $20
	ld d, c
	cp d
	ret


	ld a, a
	add a
	ret c

	sbc a
	ld c, $ab
	ld a, a
	add hl, de
	xor h
	dec bc
	jp z, wd34f

	rst $18
	jp $7fd9


	jr nc, jr_01d_628d

	inc sp
	ld d, c
	ld d, h
	ret


	ld a, a
	call nz, $bcb8
	pop hl
	ld a, a
	ret


	or e
	ret c

	ld [c], a
	cp b

jr_01d_62e3:
	db $dd
	ld c, a
	ret nz

	or [hl]
	jp nc, $7fd9

jr_01d_62ea:
	cp d
	or e
	or [hl]
	ld h, $7f
	or c
	reti


	rst $20
	ld d, c
	cp a
	jp c, wd7b6

	rst $20
	ld c, a
	cp d
	ret


	ld a, a
	ld e, h
	db $dd
	ld a, a
	or e
	cp c
	call nz, $b2da
	rst $20
	ld d, a
	nop
	ld d, d
	jp z, $857f

	sub c
	and l
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
	ld sp, hl
	cp $ca
	ld c, a
	db $d3
	or h
	reti


	ld a, a
	or l
	or l
	call c, $e72b
	ld a, a
	jr nc, jr_01d_62e3

	db $d3
	sbc $2c
	rst $20
	ld d, c
	jr nc, jr_01d_62ea

	db $d3
	sbc $2c
	jp z, wce4f

	ret


	or l
	ld a, a
	adc a
	add c
	ld b, d
	ret


	ld a, a
	ld d, h
	rst $20
	ld d, c
	xor b
	adc c
	xor e
	call nc, wd87f
	ld a, [bc]
	db $e3
	inc de
	add $4f
	or l
	ld a, $b4
	cp e
	cp [hl]
	reti


	call nz, wd67f
	or d
	cpl
	rst $20
	ld d, a
	nop
	add $d3
	jp nz, Jump_01d_7f26

	or d
	rst $18
	ld b, h
	or d
	jr nc, @+$59

	ld [$64cd], sp
	ld h, b
	ld a, [wd719]
	bit 2, a
	jr nz, jr_01d_638a

	ld hl, $6393
	call $3c79
	ld hl, $63b1
	ld de, $63b1
	call $339c
	jp Jump_01d_617b


jr_01d_638a:
	ld hl, $63bd
	call $3c79
	jp $0f6a


	nop
	ld d, h
	ld h, $7f
	jp z, Jump_01d_7fb8

	adc $c9
	or l
	ret


	ld a, a
	or l
	sbc $34
	ld c, a
	inc [hl]
	ret


	ld a, a
	cp b
	rst $10
	or d
	or [hl]
	ld a, a
	cp h
	rst $18
	jp $e6d9


	ld d, a
	nop
	ld d, [hl]
	ld a, a
	or c
	pop bc
	rst $20
	ld a, a
	call nc, wdad7
	ret nz

	ld e, b
	nop
	db $d3
	or h
	reti


	ld a, a
	rst $18
	jp $b3b2


	ld a, a
	ret


	jp z, $b84f

	or e
	or a
	ld a, a
	pop bc
	pop hl
	or e
	ret


	ld a, a
	cp e
	sbc $bf
	ld h, $56
	ld d, c
	pop de
	add $e0
	pop de
	add $e0
	ld d, [hl]
	ld a, a
	dec de
	sub c
	dec de
	sub c
	ld d, a
	ld [$64cd], sp
	ld h, b
	ld a, [wd719]
	bit 3, a
	jr nz, jr_01d_6403

	ld hl, $640c
	call $3c79
	ld hl, $6436
	ld de, $6436
	call $339c
	jp Jump_01d_617b


jr_01d_6403:
	ld hl, $643f
	call $3c79
	jp $0f6a


	nop
	inc [hl]
	db $db
	ld a, $b3
	call nz, wc57f
	ret


	rst $18
	jp $b57f


	ret c

	call nc, $26bd
	ld c, a
	or c
	cp h
	db $dd
	ld a, a
	or c
	rst $10
	rst $18
	jp $5455


	ret


	ld a, a
	cp h
	pop hl
	daa
	ld [c], a
	or e
	ld a, a
	cp h
	jp wdfcf


	cp [hl]
	ld d, a
	nop
	rst $08
	or d
	ret c

	call nc, wc0bc
	rst $20
	ld e, b
	nop
	set 0, h
	ret


	ld a, a
	ld d, h
	ld a, a
	ret nc

	reti


	call nz, $c24f
	or d
	ld a, a
	rst $00
	cp l
	ret nc

	ret nz

	cp b
	ld a, a
	push bc
	rst $18
	pop bc
	ldh [$b3], a
	sbc $33
	cp e
	rst $20
	ld d, a
	ld [$64cd], sp
	ld h, b
	ld a, [wd719]
	bit 4, a
	jr nz, jr_01d_647a

	ld hl, $6483
	call $3c79
	ld hl, $649e
	ld de, $649e
	call $339c
	jp Jump_01d_617b


jr_01d_647a:
	ld hl, $64b1
	call $3c79
	jp $0f6a


	nop
	ld d, h
	db $dd
	ld a, a
	cp c
	sbc $b7
	pop hl
	or e
	ld a, a
	cp h
	jp nz, $bcb8

	ret nz

	ld c, a
	ld a, $b8
	add $7f
	or [hl]
	jp $b6d9


	or d
	rst $20
	ld d, a
	nop
	ld d, [hl]
	rst $20
	ld c, a
	db $d3
	rst $18
	call nz, $b97f
	sbc $b7
	pop hl
	or e
	ld a, a
	cp h
	push bc
	or a
	ldh [$58], a
	nop
	pop de
	dec l
	or [hl]
	cp h
	or d
	ld a, a
	jp z, $bcc5

	jp z, $b74f

	ret nc

	add $7f
	or d
	rst $18
	jp Jump_01d_7fd3


	call c, wd7b6
	push bc
	or d
	sub $57
	ld [$64cd], sp
	ld h, b
	ld a, [wd719]
	bit 5, a
	jr nz, jr_01d_64ea

	ld hl, $64f3
	call $3c79
	ld hl, $6512
	ld de, $6512
	call $339c
	jp Jump_01d_617b


jr_01d_64ea:
	ld hl, $651a
	call $3c79
	jp $0f6a


	nop
	ret nz

	jr nc, jr_01d_6576

	push bc
	sbc $c4
	push bc
	cp b
	ld a, a
	cp l
	or a
	ld a, a
	push bc
	sbc $33
	ld c, a
	adc $c9
	or l
	ld a, a
	ld d, h
	ld a, a
	jp nz, wdfb6

	jp $2ed9


	rst $20
	ld d, a
	nop
	ld d, [hl]
	ld a, a
	db $d3
	or h
	ret nz

	rst $20
	ld e, b
	nop
	or l
	or d
	rst $10
	ret


	ld a, a
	push de
	jp nc, $e656

	ld d, c
	inc [hl]
	db $db
	ld a, $b3
	ld a, a
	ld d, h
	ld h, $7f
	or d
	ret c

	ldh [rVBK], a
	ld l, $cb
	ld a, a
	jp nz, wdfb6

	jp wSpriteCurPosY


	ret nz

	or d
	ret z

	db $e3
	rst $20
	ld d, a
	ld [$64cd], sp
	ld h, b
	ld a, [wd719]
	bit 6, a
	jr nz, jr_01d_655d

	ld hl, $6566
	call $3c79
	ld hl, $6583
	ld de, $6583
	call $339c
	jp Jump_01d_617b


jr_01d_655d:
	ld hl, $658a
	call $3c79
	jp $0f6a


	nop
	or l
	jp c, $7fca

	add l
	sub c
	and l
	ld h, $7f
	ld d, h
	ld c, a
	jp z, wd22c

	ret nz

jr_01d_6576:
	ld a, a
	or a
	rst $18
	or [hl]
	cp c
	db $dd
	ld a, a
	cp h
	rst $18
	jp $2ed9


	ld d, a
	nop
	or c
	ret c

	ldh [$cf], a
	or c
	ld e, b
	nop
	ret c

	db $e3
	rrca
	db $e3
	ret


	ld a, a
	add l
	sub c
	and l
	ld h, $4f
	call nc, Call_01d_7fcf
	ret


	ld a, $d8
	inc sp
	ld a, a
	cp a
	or e
	push bc
	sbc $7f
	cp h
	ret nz

	call nz, Call_01d_55b7
	cp b
	rst $10
	or d
	ld a, a
	call nc, wd0cf
	pop bc
	db $dd
	ld a, a
	jp $bcd7


	jp wcb55


	ret


	call nz, Call_01d_7fd8
	ld d, h
	ld h, $7f
	call nz, $33de
	rst $18
	ret nz

	rst $20
	ld d, c
	cp a
	ret


	ld a, a
	or l
	or [hl]
	add hl, hl
	inc sp
	ld a, a
	add l
	sub c
	and l
	jp z, $3c7f

	inc l
	ld c, a
	call nc, wddcf
	ld a, a
	or l
	ret c

	reti


	cp d
	call nz, Call_01d_7f26
	inc sp
	or a
	ret nz

	ret


	cp e
	ld d, a
	ld [$64cd], sp
	ld h, b
	ld a, [wd719]
	bit 7, a
	jr nz, jr_01d_6604

	ld hl, $660d
	call $3c79
	ld hl, $662e
	ld de, $662e
	call $339c
	jp Jump_01d_617b


jr_01d_6604:
	ld hl, $6638
	call $3c79
	jp $0f6a


	nop
	or d
	db $db
	sbc $c5
	ld a, a
	dec bc
	sbc a
	add $7f
	or d
	rst $18
	ret nz

	cp c
	inc [hl]
	ld c, a
	or l
	or d
	rst $10
	add $ca
	ld a, a
	cp d
	cp d
	ld h, $7f
	or c
	rst $18
	jp wc8d9


	or h
	ld d, a
	nop
	or c
	db $e3
	ld a, a
	or c
	jp nz, wdfb6

	ret nz

	ld e, b
	nop
	ld b, $ad
	xor b
	xor h
	ld b, d
	ld a, a
	add [hl]
	xor [hl]
	add d
	adc c
	xor e
	ld a, a
	or c
	ret nz

	ret c

	ld h, $4f
	adc $c9
	or l
	ld a, a
	adc a
	add c
	ld b, d
	inc sp
	ld a, a
	add $de
	or a
	ld h, $7f
	or c
	reti


	sub $57
	ld [$64cd], sp
	ld h, b
	ld a, [wd71a]
	bit 0, a
	jr nz, jr_01d_6679

	ld hl, $6682
	call $3c79
	ld hl, $66a1
	ld de, $66a1
	call $339c
	jp Jump_01d_617b


jr_01d_6679:
	ld hl, $66a8
	call $3c79
	jp $0f6a


	nop
	adc $c9
	or l
	ret


	ld a, a
	inc l
	ldh [hLoadedROMBank], a
	jp wcade


	ld c, a
	add e
	add c
	sub b
	ld a, a
	sub c
	db $e3
	ld a, a
	add h
	db $e3
	ld a, a
	call nz, $b27f
	call c, $c3da
	reti


	ld d, a
	nop
	call wcddb
	db $db
	ld d, [hl]
	ld e, b
	nop
	ret nz

	cp h
	or [hl]
	add $7f
	adc $c9
	or l
	jp z, wSpriteCurPosY

	dec l
	add $7f
	sub $dc
	or d
	rst $20
	ld c, a
	inc sp
	db $d3
	ld a, a
	call nz, $bcb6
	jp $bc7f


	rst $08
	or e
	or [hl]
	rst $10
	ld d, l
	cp d
	or l
	ret c

	ld a, a
	ld d, h
	add $ca
	ld a, a
	jp nz, $b2d6

	sub $57
	ld [$19fa], sp
	rst $10
	bit 1, a
	jr nz, jr_01d_66e4

	ld hl, $66ed
	jr jr_01d_66e7

jr_01d_66e4:
	ld hl, $674f

jr_01d_66e7:
	call $3c79
	jp $0f6a


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
	ret z

jr_01d_6701:
	rst $18
	cp c
	jp nz, $857f

	sub c
	and l
	jp z, wce4f

	ret


	or l
	ret


	ld a, a
	ld b, d
	xor b
	sbc e
	db $eb
	xor h
	adc e
	xor a
	sub h
	and [hl]
	jr nc, jr_01d_6701

	ld d, c
	cp a
	jp c, wd7c5

	ld a, a
	cp d
	rst $18
	pop bc
	jp z, $874f

	db $e3
	and [hl]
	add $7f
	ret nc

	dec l
	inc sp
	ld a, a
	or a
	jp nc, $e7db

	ld d, c
	or c
	call nz, $d47f
	cp c
	inc [hl]
	push bc
	or l
	cp h
	db $dd
	ld c, a
	db $d3
	rst $18
	jp $b27f


	rst $18
	ret nz

	ld a, a

jr_01d_6746:
	adc $b3
	ld h, $7f
	or d
	or d
	ld l, $e7
	ld d, a
	nop
	ld d, d
	rst $20
	ld a, a
	or [hl]
	rst $18
	ret nz

	or [hl]
	rst $20
	ld c, a
	or c
	jp nz, $b87f

	reti


	cp h
	or d
	ld a, a
	or l
	call nc, $7f2c
	jr nc, jr_01d_6746

	ret nz

	push bc
	rst $20
	ld d, a
	ld l, $02
	ld de, $0110
	rst $38
	ld de, $0111
	rst $38
	nop
	add hl, bc
	ld a, [bc]
	rlca
	rlca
	rst $38
	ret nc

	ld b, c
	rst $28
	ld bc, $060c
	dec d
	rst $38
	ret nc

	ld b, d
	ret nc

	add hl, bc
	inc c
	inc c
	dec d
	rst $38
	ret nc

	ld b, e
	db $d3
	inc b
	inc c
	ld [$ff0f], sp
	ret nc

	ld b, h
	ret nc

	ld a, [bc]
	inc c
	inc c
	rrca
	rst $38
	ret nc

	ld b, l
	db $d3
	dec b
	inc c
	ld [de], a
	rrca
	rst $38
	ret nc

	ld b, [hl]
	ret nc

	dec bc
	inc c
	ld [de], a
	rlca
	rst $38
	ret nc

	ld b, a
	db $d3
	ld b, $0c
	inc c
	rlca
	rst $38
	ret nc

	ld c, b
	ret nc

	inc c
	inc h
	ld de, $ff14
	ret nc

	add hl, bc
	add c
	rst $00
	ld de, $8110
	rst $00
	ld de, $4011
	ld h, c
	ld h, c
	ld b, b
	ld b, b
	ld h, c
	ld b, c
	ld b, c
	ld b, c
	ld b, c
	ld b, h
	ld c, $0e
	ld b, h
	ld b, h
	ld c, $0e
	ld e, c
	ld c, $0e
	ld b, h
	ld c, $0e
	ld b, h
	ld b, h
	ld c, $0e
	ld b, h
	ld c, $0e
	ld l, e
	ld h, e
	ld c, $44
	ld l, e
	ld h, e
	ld c, $6b
	ld h, e
	ld c, $44
	ld c, $0e
	ld b, h
	ld b, h
	ld c, $0e
	ld b, h
	ld c, $0e
	ld b, h
	ld c, $0e
	ld b, h
	ld b, h
	ld c, $0e
	ld d, b
	ld e, b
	ld c, $6b
	ld h, e
	ld c, $44
	ld l, e
	ld h, e
	ld c, $44
	ld b, l
	ld c, $44
	ld c, $0e
	ld c, b
	ld d, l
	ld c, $0e
	ld b, h
	ld c, $0e
	ld b, h
	ld c, $0e
	ld c, $0e
	ld c, $0e
	ld b, h
	inc l
	ld c, $14
	inc b
	add hl, bc
	inc b
	ld l, c
	cpl
	ld l, b
	dec hl
	ld l, b
	nop
	add $68
	call $3c6c
	ret


	add hl, sp
	ld l, b
	ld a, h
	ld l, b
	sbc [hl]
	ld l, b
	xor e
	ld l, b
	cp c
	ld l, b
	nop
	cp d
	cp d
	inc sp
	jp z, wcf7f

	or d
	add $c1
	ld c, a
	ld d, h
	ret


	ld a, a
	cp c
	sbc $b7
	pop hl
	or e
	db $dd
	ld a, a
	cp h
	jp $bdcf


	ld d, c
	or c
	call nz, wd27f
	dec l
	rst $10
	cp h
	or d
	ld a, a
	ld d, h
	push bc
	inc [hl]
	db $dd
	ld c, a
	db $d3
	pop bc
	cp d
	sbc $33
	cp b
	reti


	ld a, a
	or l
	or a
	ldh [hLoadedROMBank], a
	cp e
	sbc $d3
	ld d, l
	or d
	rst $10
	rst $18
	cp h
	ldh [$b2], a
	ld a, a
	rst $08
	cp l
	ret z

	ld d, a
	nop
	rlca
	and a
	xor e
	ld a, a
	and l
	inc e
	and l
	sub e
	ret c

	db $e3
	ret


	ld a, a
	cp a
	or e
	cp [hl]
	jp nz, $e0bc

	ld c, a
	sbc e
	dec bc
	jp z, $beb6

	ret


	ld a, a
	cp h
	ldh [$bc], a
	sbc $30
	rst $20
	ld d, a
	nop
	ld d, h
	ld a, a
	and l
	inc e
	ld a, a
	or l
	or e
	cp [hl]
	jp nz, $c2bc

	ld d, a
	nop
	ld d, h
	ld a, a
	and l
	inc e
	ld a, a
	cp c
	sbc $b7
	pop hl
	or e
	cp h
	jp nz, $0057

	ld d, h
	ld a, a
	and l
	inc e
	ld a, a
	inc l
	rst $18
	cp c
	sbc $bc
	jp nz, $1757

	dec b
	rlca
	ld [bc], a
	ld [bc], a
	rst $38
	rlca
	inc bc
	ld [bc], a
	rst $38
	inc b
	ld [$a800], sp
	inc b
	inc c
	nop
	xor c
	inc b
	stop
	xor d
	inc b
	ld [bc], a
	inc bc
	ld [bc], a
	inc b
	add hl, bc
	inc bc
	inc b
	dec c
	inc b
	inc b
	ld de, $0105
	daa
	rlca
	dec b
	rst $38
	rst $38
	ld bc, wc726
	rlca
	ld [bc], a
	ld h, $c7
	rlca
	inc bc
	ld a, [de]
	rst $00
	inc b
	ld [wc71c], sp
	inc b
	inc c
	ld e, $c7
	inc b
	db $10
	rla
	rla
	rla
	rla
	rla
	rla
	rla
	rla
	rla
	add hl, bc
	inc bc
	ld a, [bc]
	rla
	rla
	rla
	rla
	rla
	rla
	rlca
	rlca
	rlca
	add hl, de
	jr @+$03

	jr @+$03

	jr jr_01d_6927

	inc c
	rlca
	rlca
	rlca
	rlca
	rlca
	rlca

jr_01d_6927:
	rlca
	inc d
	inc b
	inc b
	xor [hl]
	ld l, c
	scf
	ld l, c
	inc [hl]
	ld l, c
	nop
	adc b
	ld l, c
	jp $3c6c


	dec a
	ld l, c
	ld [hl], d
	ld l, c
	ld a, d
	ld l, c
	nop
	ld a, $b8
	ld a, a
	or l
	jp nz, wd0b7

	call nc, $33cf
	ld c, a
	add l
	adc l
	add [hl]
	db $dd
	ld a, a
	ret nc

	jp nz, wcfb9

	cp h
	jp $e3c8


	rst $20
	ld d, c
	inc [hl]
	or e
	call nc, Call_01d_7fd7
	jp nc, wd72d

	cp h
	or d
	ld c, a
	ld d, h
	ret


	ld a, a
	add l
	adc l
	add [hl]
	ld a, a
	rst $10
	cp h
	or d
	sbc $33
	cp l
	sub $57
	ld [$073e], sp
	ld [wcd3d], a
	jr jr_01d_6980

	ld [$083e], sp
	ld [wcd3d], a

jr_01d_6980:
	ld a, $54
	call $3e9d
	jp $0f6a


	rla
	ld [bc], a
	rlca
	ld [bc], a
	ld [bc], a
	and a
	rlca
	inc bc
	ld [bc], a
	and a
	nop
	inc bc
	inc c
	ld b, $07
	rst $38
	ret nc

	ld bc, $0825
	dec b
	rst $38
	rst $38
	ld [bc], a
	rrca
	add hl, bc
	add hl, bc
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
	add hl, bc
	inc bc
	ld bc, $070a
	db $10
	ld de, $0707
	inc d
	dec d
	rlca
	dec c
	inc c
	rlca
	ld c, $14
	inc b
	inc b
	and e
	ld l, e
	call wca69
	ld l, c
	nop
	ld a, d
	ld l, e
	jp $3c6c


	rst $10
	ld l, c
	or a
	ld l, d
	sbc $6a
	sbc $6a
	ld l, e
	ld l, e
	ld [$20fa], sp
	rst $10
	bit 7, a
	jr nz, jr_01d_6a02

	ld hl, $6a0b
	call $3c79
	ld bc, $eb01
	call $3e5e
	jr nc, jr_01d_69fa

	ld hl, $6a3a
	call $3c79
	ld hl, wd720
	set 7, [hl]
	jr jr_01d_6a08

jr_01d_69fa:
	ld hl, $6aa6
	call $3c79
	jr jr_01d_6a08

jr_01d_6a02:
	ld hl, $6a57
	call $3c79

jr_01d_6a08:
	jp $0f6a


	nop
	pop bc
	xor h
	pop bc
	xor h
	ld a, a
	pop bc
	xor h
	rst $20
	ld c, a
	or d
	or d
	ld a, a
	ld e, h
	db $dd
	ld a, a
	jp nz, wdfb8

	ret nz

	ld l, $e7
	ld d, c
	ld d, h
	add $7f
	cp d
	or d
	jp nz, Jump_01d_7fdd

	or l
	cp h
	or h
	ret c

	ldh [rVBK], a
	ret nz

	ret


	cp h
	cp b
	ld a, a
	push bc
	reti


	ld l, $e7
	ld e, b
	nop
	ld d, d
	jp z, $b97f

	sbc $b7
	pop hl
	or e
	cp h
	ldh [$b6], a
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
	pop bc
	xor h
	ld a, a
	pop bc
	xor h
	pop bc
	xor h
	rst $20

jr_01d_6a60:
	ld c, a
	cp d
	jp c, $7fca

	push de
	dec sp
	db $dd
	call z, $7fd9
	or l
	call nz, $307f
	ld l, $e7
	ld d, c
	push de
	dec sp
	db $dd
	call z, wc4d9
	ld a, a
	ld d, h
	jp z, wc94f

	or e
	ret nc

	cp a
	ld h, $7f
	cp h
	add hl, hl
	or a
	ld a, a
	cp e
	jp c, $55c3

	call z, wde30
	ld a, a
	call nc, wc5d7
	or d
	sub $b3
	push bc
	ld a, a
	call c, wdd2b
	ld d, l
	or d
	db $db
	or d
	db $db
	ld a, a
	cp b
	ret c

	jr nc, jr_01d_6a60

	ld l, $e7
	ld d, a
	nop
	add $d3
	jp nz, Jump_01d_7f26

	or l
	or l
	cp b
	jp wd37f


	jp $b2c5


	cpl
	ld d, a
	nop
	cp a
	or e
	rst $20
	ld a, a
	add c
	db $e3
	dec de
	add c
	jp z, $f94f

	cp h
	pop hl
	reti


	or d
	ret


	ld a, a
	ld d, h
	add $55
	cp h
	sbc $b6
	ld a, a
	cp l
	reti


	ld a, a
	or [hl]
	ret


	or e
	cp [hl]
	or d
	ld h, $7f
	or c
	reti


	rst $20
	ld d, a
	nop
	ld e, e
	add $4f
	inc sp
	sbc $bc
	and b
	db $e3
	and [hl]
	ld h, $7f
	call nz, $b234
	jp $e7d9


	ld d, c
	ld d, [hl]
	ld a, a
	ld d, [hl]
	ld a, a
	ld d, [hl]
	ld d, c
	inc sp
	sbc $be
	jp nz, $7fc9

	call nz, Call_01d_54d8
	jp z, $f94f

	cp h
	pop hl
	reti


	or d
	ld d, [hl]
	ld a, a
	sbc e
	jp hl


	add c
	and d
	db $e3
	ld d, l
	adc d
	xor e
	rrca
	db $e3
	ld a, a
	sbc e
	ret c

	db $e3
	ld a, [bc]
	db $e3
	ld d, [hl]
	ld d, l
	cp h
	or [hl]
	cp h
	ld a, a
	inc [hl]
	cp d
	add $7f
	or d
	reti


	ret


	or [hl]
	ld d, l
	rst $08
	jr nc, jr_01d_6baa

	call c, wdfb6
	jp wcf7f


	cp [hl]
	sbc $51
	cp d
	sbc $34
	ld a, a
	sbc c
	sub h
	rrca
	ld a, a
	inc [hl]
	or e
	cp b
	jp nz, Jump_01d_4fc6

	pop bc
	ld [c], a
	or e
	cp e
	add $7f
	or d
	or a
	rst $08
	cp l
	ld d, l
	ld d, [hl]
	ld a, a
	rst $08
	dec l
	jp z, wce7f

	or e
	cp d
	cp b
	ld a, a
	rst $08
	inc sp
	ld d, l
	ld d, h
	ld a, a
	pop bc
	ld [c], a
	or e
	cp e
	ld a, a
	ret nz

	or d
	ld d, c
	ld d, [hl]
	ld a, a
	ld d, [hl]
	ld a, a
	ld d, [hl]
	ld d, a
	nop
	adc c
	sbc c
	add a
	ret


	ld a, a
	ld b, b
	add c
	ld b, d
	ld h, $7f
	or c
	reti


	rst $20
	ld d, a
	rla
	ld [bc], a
	rlca
	ld [bc], a
	inc bc
	and a
	rlca
	inc bc
	inc bc
	and a
	inc bc
	inc b
	nop
	inc bc
	inc b
	ld bc, $0104
	ld [bc], a
	dec b
	ld [bc], a
	jr nz, jr_01d_6b97

	dec bc
	rst $38
	ret nc

	ld bc, $0720

jr_01d_6b97:
	ld b, $fe
	ld [bc], a
	ld [bc], a
	ld [de], a
	rst $00
	rlca
	ld [bc], a
	ld [de], a
	rst $00
	rlca
	inc bc
	inc b
	inc b
	dec b
	ld b, $07
	rlca
	rlca

jr_01d_6baa:
	rlca
	ld [$0707], sp
	ld b, $07
	inc c
	rlca
	rlca
	inc d
	inc b
	inc b
	add hl, sp
	ld l, l
	jp nz, $bf6b

	ld l, e
	nop
	add hl, de
	ld l, l
	jp $3c6c


	ld a, [$036b]
	ld l, l

Call_01d_6bc6:
	xor a
	ld [wcd37], a
	ld de, wcc5b
	ld hl, $6bf6

jr_01d_6bd0:
	ld a, [hli]
	and a
	jr z, jr_01d_6bf2

	push hl
	push de
	ld [wd0e3], a
	ld b, a
	ld a, $1c
	call $3e9d
	pop de
	pop hl
	ld a, b
	and a
	jr z, jr_01d_6bd0

	ld a, [wd0e3]
	ld [de], a
	inc de
	push hl
	ld hl, wcd37
	inc [hl]
	pop hl
	jr jr_01d_6bd0

jr_01d_6bf2:
	ld a, $ff
	ld [de], a
	ret


	add hl, hl
	ld a, [hli]
	rra
	nop
	ld [$22fa], sp
	rst $10
	bit 0, a
	jr nz, jr_01d_6c24

	ld hl, $6c54
	call $3c79
	call Call_01d_6bc6
	ld a, [wcd37]
	and a
	jr z, jr_01d_6c1b

	ld b, $18
	ld hl, $5779
	call $3620
	jr jr_01d_6c21

jr_01d_6c1b:
	ld hl, $6c98
	call $3c79

jr_01d_6c21:
	jp $0f6a


jr_01d_6c24:
	bit 1, a
	jr z, jr_01d_6c30

	ld hl, $6ca4
	call $3c79
	jr jr_01d_6c21

jr_01d_6c30:
	call Call_01d_6d11
	ld hl, $6cd1
	call $3c79
	ld hl, wd722
	set 2, [hl]
	ld a, [wd68f]
	ld b, a
	ld c, $1e
	call $3e78
	jr nc, jr_01d_6c21

	ld hl, wd722
	res 0, [hl]
	res 1, [hl]
	res 2, [hl]
	jr jr_01d_6c21

	nop
	jp z, $e3b2

	rst $20
	ld d, c
	call c, $bcc0
	jp z, $837f

	and l
	db $e3
	add c
	ld a, a
	jp z, $beb6

	ld d, c
	or d
	jp nz, Jump_01d_7fd3

	jp nc, wd72d

	cp h
	or d
	ld a, a
	add l
	adc l
	add [hl]
	ld c, a
	cp c
	sbc $b7
	pop hl
	or e
	ld a, a
	cp h
	jp $7fd9


	add b
	and [hl]
	sub $e7
	ld d, c
	or c
	push bc
	ret nz

	rst $20
	ld c, a
	or d
	or d
	ld a, a
	add l
	adc l
	add [hl]
	ld a, a
	db $d3
	rst $18
	jp $b6d9


	and $58
	nop
	db $d3
	rst $18
	jp $b2c5


	ld a, a
	add b
	and [hl]
	ret z

	ld d, [hl]
	ld d, a
	nop
	pop bc
	ld [c], a
	rst $18
	call nz, $2c7f
	or [hl]
	sbc $7f
	or [hl]
	or [hl]
	reti


	sub $e7
	ld d, c
	cp a
	cp d
	rst $10
	call wddde
	ld a, a
	cp l
	cp d
	cp h
	ld a, a
	ld c, a
	dec de
	and l
	dec de
	and l
	ld a, a
	cp h
	jp wd9b8


	call nz, wd67f
	db $db
	cp h
	db $e3
	rst $20
	ld d, a
	nop
	or l
	cp a
	or d
	ret z

	db $e3
	rst $20
	ld d, c
	db $d3
	or e

jr_01d_6cdb:
	ld a, a
	add l
	adc l
	add [hl]
	ld a, a
	or d
	or a
	or [hl]
	or h
	rst $18
	ret nz

	sub $e3
	rst $20
	ld d, c
	call nc, Call_01d_44df
	ret c

	ld a, a
	add l
	adc l
	add [hl]
	jp z, Jump_01d_504f

	ld bc, wcf45
	nop
	ld a, a
	jr nc, jr_01d_6cdb

	ret nz

	ld a, a
	add b
	and [hl]
	ret z

	rst $20
	ld e, b
	ld [$033e], sp
	ld [wcd3d], a
	ld a, $54
	call $3e9d
	jp $0f6a


Call_01d_6d11:
	ld b, $18
	ld hl, $5912
	jp $3620


	rla
	ld [bc], a
	rlca
	ld [bc], a
	inc b
	and a
	rlca
	inc bc
	inc b
	and a
	nop
	ld [bc], a
	jr nz, jr_01d_6d2d

	add hl, bc
	cp $02
	ld bc, $0a20

jr_01d_6d2d:
	dec bc
	rst $38
	pop de
	ld [bc], a
	ld [de], a
	rst $00
	rlca
	ld [bc], a
	ld [de], a
	rst $00
	rlca
	inc bc
	ld [de], a
	inc de
	ld d, $02
	dec bc
	dec bc
	rlca
	rlca
	ld [$0708], sp
	rrca
	rlca
	inc c
	rlca
	rlca
	ld b, $04
	rlca
	jr nc, jr_01d_6d8e

	ld e, e
	ld l, l
	ld d, l
	ld l, l
	nop
	push af
	ld l, l
	call $0d8e
	jp $3c6c


	ld h, e
	ld l, l
	ld h, h
	ld l, l
	and a
	ld l, l

jr_01d_6d61:
	db $f4
	ld l, l
	rst $38
	nop
	cp h
	sbc $b6
	ld a, a
	add [hl]
	xor l
	xor e
	adc l
	and [hl]
	ld a, a
	jp nz, wdfb6

	jp $e6d9


	ld d, c
	cp h
	sbc $b6
	ld a, a
	cp h
	sub $b3
	call nz, $bd7f
	reti


	ret


	db $dd
	ld c, a
	call nz, $e1c1
	or e
	inc sp
	ld a, a
	call nc, $bbd2
	cp [hl]

jr_01d_6d8e:
	jp $bf55


	ret


	rst $08
	rst $08
	ret


	ld a, a
	or [hl]
	ret nz

	pop bc
	inc sp
	ld d, l

jr_01d_6d9b:
	cp a
	jr nc, jr_01d_6d61

	reti


	ld a, a
	sub d
	add a
	sub l
	xor h
	add a
	sub $57
	nop
	or a
	ret nc

	add $ca
	ld a, a
	call nz, $30d3
	pop bc
	jp z, $b27f

	reti


	or [hl]
	push bc
	and $51
	call nz, $30d3
	pop bc
	call nz, $ba7f
	or e
	or [hl]
	sbc $bc
	jp wd34f


	rst $10
	rst $18
	ret nz

	ld a, a
	ld d, h
	jp z, wc455

	jp Jump_01d_7fd3


	jp z, $b8d4

	ld a, a
	cp a
	jr nc, jr_01d_6d9b

	call nz, $b27f
	or e
	ld d, c
	ret nz

	jp nc, wc3bc

	ld a, a
	ret nc

	reti


	ld a, a
	or [hl]
	pop bc
	jp z, $b14f

	reti


	call nz, $b57f
	db $d3
	or e
	ld h, $c8
	ld d, a
	or $00
	ld [bc], a
	rlca
	inc bc
	inc bc
	rst $38
	rlca
	inc b
	inc bc
	rst $38
	nop
	inc b
	add hl, hl
	dec b
	rlca
	rst $38
	ret nc

	ld bc, $0806
	dec c
	cp $00
	ld [bc], a
	db $10
	ld a, [bc]
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
	ld [bc], a
	inc b
	inc b
	db $10
	ld b, b
	jr nc, jr_01d_6e96

	dec l
	ld l, [hl]
	nop
	add b
	ld l, [hl]
	jp $3c6c


	ld c, h
	rrca
	ld [hl], $6e
	ld e, a
	ld l, [hl]
	nop
	ld b, d
	and l
	adc h
	ld b, b
	xor c
	db $e3

jr_01d_6e3d:
	jp z, wc57f

	or d
	ret


	or [hl]
	cp h
	rst $10
	ld c, a
	ld d, h

jr_01d_6e47:
	ret


	ld a, a
	cp d
	or e
	add hl, hl
	or a
	ret c

	ld [c], a
	cp b
	db $dd
	ld d, l
	ret nz

	or [hl]
	jp nc, $b6d9

	rst $10
	ld a, a
	cp l
	or a
	push bc
	ret


	add $57
	nop
	or d
	dec hl
	ld a, a
	call nz, $b3b2
	ld a, a
	call nz, wc9b7
	ld a, a
	ret nz

	jp nc, Jump_01d_4fc6

	inc [hl]
	or e
	jr z, jr_01d_6e3d

	ld a, a
	or l
	or l
	jp nc, Jump_01d_7fc6

	or [hl]
	or e
	dec a
	or a
	jr nc, jr_01d_6e47

	ld d, a
	nop
	ld [bc], a
	rlca
	inc bc
	inc b
	rst $38
	rlca
	inc b
	inc b
	rst $38
	nop
	inc bc
	ld h, $09
	inc b
	rst $38
	db $d3
	ld bc, $061b
	ld a, [bc]
	rst $38

jr_01d_6e96:
	rst $38
	ld [bc], a
	jr nz, jr_01d_6ea2

	rlca
	rst $38
	rst $38
	inc bc
	ld [de], a
	rst $00
	rlca
	inc bc

jr_01d_6ea2:
	inc de
	rst $00
	rlca
	inc b
	ld bc, $0404
	nop
	ld b, b
	or l
	ld l, [hl]
	or d
	ld l, [hl]
	nop
	ld c, b

jr_01d_6eb1:
	ld l, a
	jp $3c6c


	cp e
	ld l, [hl]
	rst $20
	ld l, [hl]
	ld [hld], a
	ld l, a
	nop
	ret nz

	cp b
	ret


	ld a, a
	pop de
	cp l
	jp nc, Jump_01d_4fca

	adc $de
	call nz, wdc7f
	ld h, $cf
	rst $08
	add $7f
	cp a
	jr nc, jr_01d_6eb1

	jp Jump_01d_5556


	or l
	call nz, $30d3
	pop bc
	db $d3
	ld a, a
	or c
	rst $08
	ret c

	ld a, a
	or l
	ret c

	rst $08
	cp [hl]
	sbc $c9
	ld d, a
	nop
	ld d, [hl]
	ld a, a
	cp d
	rst $08
	rst $18
	ret nz

	ld a, a
	cp d
	call nz, Call_01d_7fc6
	pop de
	cp l
	jp nc, Jump_01d_4fca

	set 0, h
	ret


	ld a, a
	rst $08
	ret z

	ld h, $7f
	cp l
	or a
	inc sp
	push bc
	rst $20
	ld d, c
	cp h
	ld [c], a
	rst $18
	pop bc
	pop hl
	or e
	ld a, a
	set 0, h
	db $dd
	ld a, a
	or [hl]
	rst $10
	or [hl]
	or e
	ld a, a
	ret


	inc sp
	ld c, a
	or a
	sbc $2c
	ld [c], a
	ld a, a
	inc l
	ldh [rHDMA5], a
	and c
	sbc b
	sbc l
	sub a
	ld a, a
	pop de
	cp l
	jp nc, $7fc4

	sub $3a
	jp c, wd9c4

	rst $20
	ld d, a
	nop
	and l
	xor h
	add [hl]
	db $e3
	ld [hl], d
	and l
	xor h
	ld a, a
	or a
	ld l, [hl]
	rst $20
	ld d, b
	ld [$283e], sp
	call $2dc7
	jp $0f6a


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
	ld bc, $0007
	or b
	nop
	inc bc
	inc e
	ld b, $06
	rst $38
	ret nc

	ld bc, $080a
	add hl, bc
	rst $38
	jp nc, $3802

	ld [$fe05], sp
	ld bc, $1203
	rst $00
	rlca
	ld [bc], a
	ld [de], a
	rst $00
	rlca
	inc bc
	or $c6
	ld bc, $0707
	inc b
	inc b
	ld e, h
	ld [hl], l
	dec sp
	ld [hl], c
	add d
	ld l, a
	nop
	inc l
	ld [hl], l
	call $3c6c
	ld hl, $6f96
	ld a, [wd5cb]
	jp $3dc7


Jump_01d_6f8e:
	xor a
	ld [wcd66], a
	ld [wd5cb], a
	ret


	xor h
	ld l, a
	xor l
	ld l, a
	rst $08
	ld l, a
	jr nz, jr_01d_700e

	ld c, c
	ld [hl], b
	ld a, a
	ld [hl], b
	xor h
	ld [hl], b
	call nz, $e870
	ld [hl], b
	cp $70
	ld e, $71
	ret


	ld a, $ff
	ld [wcd66], a
	ld hl, wccd3
	ld de, $6fc8
	call $3556
	dec a
	ld [wcd38], a
	call $34d0
	ld a, $02
	ld [wd5cb], a
	ret


	ld b, b
	ld bc, $0110
	ld b, b
	inc bc
	rst $38
	ld a, [wcd38]
	and a
	ret nz

	call $3e07
	xor a
	ld [wcd66], a
	ld hl, wd2d4
	res 7, [hl]
	ld a, $01
	ldh [$8c], a
	call $13f1
	call $3e07
	ld hl, wd6ac
	set 6, [hl]
	set 7, [hl]
	ld hl, $7248
	ld de, $72ae
	call $339c
	ld a, $f3
	ld [wd036], a
	ld a, [wd694]
	cp $b1
	jr nz, jr_01d_700a

	ld a, $01
	jr jr_01d_7014

jr_01d_700a:
	cp $99
	jr nz, jr_01d_7012

jr_01d_700e:
	ld a, $02
	jr jr_01d_7014

jr_01d_7012:
	ld a, $03

jr_01d_7014:
	ld [wd03a], a
	xor a
	ldh [$b4], a
	ld a, $03
	ld [wd5cb], a
	ret


	ld a, [wd034]
	cp $ff
	jp z, Jump_01d_6f8e

	call $0ebd
	ld hl, wd7e6
	set 1, [hl]
	ld a, $f0
	ld [wcd66], a
	ld a, $01
	ldh [$8c], a
	call Call_01d_712d
	ld a, $01
	ldh [$8c], a
	call $358b
	ld a, $04
	ld [wd5cb], a
	ret


	ld b, $02
	ld hl, $4a7e
	call $3620
	ld a, $02
	ldh [$8c], a
	call Call_01d_712d
	ld a, $02
	ldh [$8c], a
	call $358b
	ld de, $7079
	ld a, $02
	ldh [$8c], a
	call $3684
	ld a, $d6
	ld [wcc4d], a
	ld a, $15
	call $3e9d
	ld a, $05
	ld [wd5cb], a
	ret


	ld b, b
	ld b, b
	ld b, b
	ld b, b
	ld b, b
	rst $38
	ld a, [wd6af]
	bit 0, a
	ret nz

	ld a, $02
	ld [wd4a7], a
	ld a, $01
	ldh [$8c], a
	ld a, $08
	ldh [$8d], a
	call $34f0
	ld a, $02
	ldh [$8c], a
	xor a
	ldh [$8d], a
	call $34f0
	ld a, $03
	ldh [$8c], a
	call Call_01d_712d
	ld a, $06
	ld [wd5cb], a
	ret


	ld a, $02
	ldh [$8c], a
	ld a, $0c
	ldh [$8d], a
	call $34f0
	ld a, $04
	ldh [$8c], a
	call Call_01d_712d
	ld a, $07
	ld [wd5cb], a
	ret


	ld a, $02
	ldh [$8c], a
	xor a
	ldh [$8d], a
	call $34f0
	ld a, $05
	ldh [$8c], a
	call Call_01d_712d
	ld de, $70e5
	ld a, $02
	ldh [$8c], a
	call $3684
	ld a, $08
	ld [wd5cb], a
	ret


	ld b, b
	ld b, b
	rst $38
	ld a, [wd6af]
	bit 0, a
	ret nz

	ld a, $d6
	ld [wcc4d], a
	ld a, $11
	call $3e9d
	ld a, $09
	ld [wd5cb], a
	ret


	ld a, $ff
	ld [wcd66], a
	ld hl, wccd3
	ld de, $7119
	call $3556
	dec a
	ld [wcd38], a
	call $34d0
	ld a, $0a
	ld [wd5cb], a
	ret


	ld b, b
	inc b
	jr nz, jr_01d_711e

	rst $38

jr_01d_711e:
	ld a, [wcd38]
	and a
	ret nz

	xor a
	ld [wcd66], a
	ld a, $00
	ld [wd5cb], a
	ret


Call_01d_712d:
	ld a, $f0
	ld [wcd66], a
	call $13f1
	ld a, $ff
	ld [wcd66], a
	ret


	ld b, l
	ld [hl], c
	ld a, e
	ld [hl], e
	add h
	ld [hl], e
	dec c
	ld [hl], h
	cp c
	ld [hl], h
	ld [$e6fa], sp
	rst $10
	bit 1, a
	ld hl, $7159
	jr z, jr_01d_7153

	ld hl, $7316

jr_01d_7153:
	call $3c79
	jp $0f6a


	nop
	ld d, e
	ld [hl], d
	sub $b5
	db $e3
	xor h
	rst $20
	ld a, a
	ld d, d
	rst $20
	ld c, a
	ld d, d
	db $d3
	ld a, a
	or a
	ret nz

	or [hl]
	rst $20
	ld d, l
	ld d, [hl]
	ld a, a
	jp z, wcaac

	xor h
	ld a, a
	or e
	jp c, $b2bc

	ld l, $e7
	ld d, c
	and l
	add c
	add hl, de
	and [hl]
	ret


	ld a, a
	or l
	rst $08
	or h
	ld h, $7f
	sub $dc
	or d
	call nz, wca4f
	ret c

	or c
	or d
	ld a, a
	push bc
	or d
	or [hl]
	rst $10
	push bc
	rst $20
	ld d, c
	or l
	jp c, $7fca

	dec l
	or [hl]
	sbc $7f
	or c
	jp nz, Jump_01d_7fd2

	push bc
	ld h, $d7
	ld c, a
	or [hl]
	sbc $47
	or a
	push bc
	ld a, a
	ld d, h
	db $dd
	ld a, a
	cp e
	ld h, $bc
	ret nz

	rst $20
	ld d, c
	or d
	db $db
	sbc $c5
	ld a, a
	adc a
	add c
	ld b, d
	ret


	ld a, a
	ld d, h
	add $4f
	or [hl]
	pop bc
	ld a, a
	rst $08
	cp b
	reti


	ld a, a
	sub $b3
	push bc
	ld d, l
	adc c
	xor e
	ld a, [de]
	sub a
	db $e3
	adc e
	xor a
	xor e
	db $dd
	ld a, a
	cp e
	ld h, $bc
	ret nz

	rst $20
	ld d, c
	ld d, [hl]
	ld a, a
	cp a
	cp h
	jp $b27f


	rst $08
	rst $20
	ld d, c
	or l
	jp c, $7fca

	ld d, h
	ld a, a
	ret c

	db $e3
	rlca
	ret


	ld c, a
	pop bc
	ld [c], a
	or e
	jp wc6de


	ld a, a
	or d
	reti


	rst $20
	ld d, c
	ld d, d
	rst $20
	ld c, a
	cp d
	ret


	ld a, a
	or d
	ret nc

	ld h, $7f
	call c, wd9b6
	or [hl]
	and $51
	ld d, [hl]
	ld a, a
	ld d, [hl]
	ld a, a
	ld d, [hl]
	ld c, a
	ld d, [hl]
	ld a, a
	call c, wdfb6
	ret nz

	rst $20
	ld a, a
	or l
	cp h
	or h
	jp wd9d4


	rst $20
	ld d, c
	cp d
	ret


	ld a, a
	or l
	jp c, wcfbb

	ld h, $e7
	ld c, a
	cp [hl]
	or [hl]
	or d
	inc sp
	ld a, a
	or d
	pop bc
	ld a, [hld]
	sbc $e7
	ld d, l
	jp nz, $b2d6

	rst $18
	jp $ba7f


	call nz, wc57f
	sbc $30
	sub $e7
	ld d, a
	nop
	ld d, [hl]
	ld a, a
	ld a, [hld]
	or [hl]
	push bc
	rst $20
	ld c, a
	adc $de
	call nz, Call_01d_7fc6
	or l
	call c, wc0df
	ret


	or [hl]
	rst $20
	ld d, l
	ld l, $de
	ret c

	ld [c], a
	cp b
	db $dd
	ld a, a
	or [hl]
	cp c
	ret nz

	ret


	add $7f
	rst $08
	cp c
	ret nz

	rst $20
	ld d, c
	cp [hl]
	rst $18
	or [hl]
	cp b
	ld a, a
	ld d, h
	ld a, a
	ret c

	db $e3
	rlca
	ret


	ld c, a
	pop bc
	ld [c], a
	or e
	jp wc6de


	ld a, a
	ret nz

	rst $18
	ret nz

	ret


	add $7f
	sub $b3
	rst $20
	ld d, c
	db $d3
	or e
	ld d, [hl]
	rst $20
	ld c, a
	or l
	jp c, wcfbb

	ret


	ld a, a
	jp $b6de


	jp z, $b57f

	call c, $b6d8
	sub $e7
	ld d, l
	ld d, [hl]
	ld a, a
	cp a
	ret c

	ldh [$7f], a
	push bc
	or d
	ld l, $e7
	ld e, b
	nop
	jp z, wcae3

	xor h
	rst $20
	ld c, a
	or [hl]
	rst $18
	ret nz

	rst $20
	ld a, a
	or [hl]
	rst $18
	ret nz

	rst $20
	ld a, a
	or [hl]
	rst $18
	ret nz

	rst $20
	ld d, c
	ld d, d
	add $7f
	rst $08
	cp c
	reti


	ld a, a
	sub $b3
	push bc
	ld c, a
	or l
	jp c, wcfbb

	ld a, a
	inc sp
	jp z, wc57f

	db $e3
	or d
	rst $20
	ld d, c
	rst $08
	rst $20
	ld a, a
	ld d, h
	ret


	ld c, a
	jp $bbde


	or d
	ld a, a
	ld d, e
	cp e
	rst $08
	ld a, a
	or c
	or d
	jp Jump_01d_55c6


	cp d
	cp d
	rst $08

jr_01d_72f3:
	inc sp
	ld a, a
	sub $b8
	ld a, a
	ld h, $de
	ld a, [hld]
	rst $18
	ret nz

	rst $20
	ld d, c
	adc $d2
	jp $c27f


	or [hl]
	call c, $e7bd
	ld c, a
	jp z, $ace3

	rst $20
	ld a, a
	jp z, wcae3

	xor h
	jp z, $e7ac

	ld e, b
	nop
	push bc
	ld l, $56
	ld c, a
	push bc
	ld l, $7f
	rst $08
	cp c
	jp wcfbc


	rst $18
	ret nz

	sbc $30
	ld d, [hl]
	ld d, c
	or l
	jp c, $7fc9

	cp a
	jr nc, jr_01d_72f3

	or [hl]
	ret nz

	ld d, [hl]
	ld c, a
	rst $08
	pop bc
	ld h, $df
	jp wdec5


	or [hl]
	ld a, a
	or d
	push bc
	or d
	jp z, wc52d

	ret


	add $51
	cp h
	ld [c], a
	or e
	ld h, $7f
	push bc
	or d
	ld l, $56
	ld c, a
	or l
	rst $08
	or h
	ld h, $7f
	ld d, h
	ld a, a
	ret c

	db $e3
	rlca
	ld d, l
	cp h
	sbc $7f
	sub b
	xor l
	xor e
	ld b, c
	add h
	xor e
	jr nc, @+$58

	rst $20
	ld d, c
	ld d, [hl]
	ld a, a
	ld d, [hl]
	ld a, a
	ld d, [hl]
	ld c, a
	ld d, [hl]
	ld a, a
	ret nc

	call nz, wc0d2
	cp b
	ld a, a
	ret z

	db $e3
	cp c
	inc [hl]
	ld d, a
	nop
	add h
	db $e3
	add [hl]
	inc de
	ld [hl], d
	ld d, d
	rst $20
	ld d, a
	ld [$96fa], sp
	sub $ea
	db $e3
	ret nc

	call $1aab
	ld hl, $7397
	call $3c79
	jp $0f6a


	nop
	add h
	db $e3
	add [hl]
	inc de
	ld [hl], d
	call nz, wc4b3
	or e
	ld a, a
	or [hl]
	rst $18
	ret nz

	push bc
	rst $20
	ld c, a
	ld d, h
	ld a, a
	ret c

	db $e3
	rlca
	ld a, a
	cp [hl]
	or d
	jp z, $55e7

	cp d
	cp d
	db $db
	ld a, a
	or [hl]
	rst $10
	ld a, a
	or l
	jp nc, wc433

	or e
	rst $20
	ld d, c
	jp z, wd22c

	jp Jump_01d_507f


	ld bc, wcd68
	nop
	db $dd
	ld a, a
	db $d3
	rst $10
	rst $18
	jp $544f


	ld a, a
	dec l
	or [hl]
	sbc $7f
	or c
	jp nz, wc6d2

	ld d, l
	inc sp
	or [hl]
	cp c
	ret nz

	ld a, a
	cp d
	db $db
	call nz, $b87f
	rst $10
	dec a
	reti


	call nz, wc055
	cp b
	rst $08
	cp h
	cp b
	ld a, a
	push bc
	rst $18
	ret nz

	push bc
	rst $20
	ld d, c
	ld d, [hl]
	ld a, a
	or d
	call nc, wd4b2
	rst $20
	ld c, a
	ld d, d
	jp z, $b57f

	call nz, wc6c5
	ld a, a
	push bc
	rst $18
	ret nz

	rst $20
	ld d, a
	nop
	add h
	db $e3
	add [hl]
	inc de
	ld [hl], d
	ld d, e
	ld d, [hl]
	rst $20
	ld c, a
	ld d, [hl]
	ld a, a
	dec hl
	sbc $c8
	sbc $30
	rst $20
	ld d, c
	or l
	rst $08
	or h
	ld h, $7f
	cp h
	jp wc9de


	or e
	add $7f
	or [hl]
	rst $18
	ret nz

	call nz, $b74f
	or d
	jp $ba7f


	cp d
	add $7f
	call nz, $33de
	ld a, a
	or a
	ret nz

	ret


	add $51
	ld d, h
	ld a, a
	ret c

	db $e3
	rlca
	add $7f
	jp nz, wc3b2

	ld a, a
	ret nc

	ret nz

	rst $10
	ld c, a
	or l
	rst $08
	or h
	jp z, wcf7f

	cp c
	call nz, wc0df
	rst $20
	ld d, c
	ld d, e
	sub $56
	rst $20
	ld c, a
	push bc
	ld l, $7f
	rst $08
	cp c
	ret nz

	ret


	or [hl]
	ld a, a
	call c, wd9b6
	or [hl]
	and $55
	ld d, [hl]
	ld a, a
	ld d, [hl]
	ld a, a
	ld d, [hl]
	ld d, c
	or l
	rst $08
	or h
	ld h, $7f
	ld d, h
	ld a, a
	ret nz

	pop bc
	call $4fc9
	cp h
	sbc $d7
	or d
	call nz, $b17f
	or d
	inc l
	ld [c], a
	or e
	db $dd
	ld d, l
	call c, wdabd
	call nz, $7fd9
	or [hl]
	rst $10
	jr nc, @-$17

	ld d, c
	cp a
	jp c, wca33

	ld a, a
	inc [hl]
	sbc $c5
	add $7f
	ld h, $de
	ld a, [hld]
	rst $18
	jp Jump_01d_4fd3


	sub e
	xor h
	ld b, d
	ld a, a
	add $ca
	ld a, a
	ret nz

	jp $2fde


	rst $20
	ld d, a
	nop
	add h
	db $e3
	add [hl]
	inc de
	ld [hl], d
	ld d, d
	rst $20
	ld d, c
	ld d, h
	ld a, a
	ret c

	db $e3
	rlca
	db $dd
	ld a, a
	cp [hl]
	or d
	jp z, $bc7f

	ret nz

	ret


	jp z, wcb4f

	call nz, wc9d8
	ld a, a
	pop bc
	or [hl]
	rst $10
	ld a, a
	inc sp
	jp z, wc57f

	or d
	cp d
	call nz, $55dd
	ld d, [hl]
	ld a, a
	or l
	rst $08
	or h
	jp z, wdc7f

	or [hl]
	rst $18
	call nz, wc5d9
	rst $20
	ld d, c
	ld d, d
	call nz, $547f
	ret


	ld c, a
	ld l, $c2
	ret nc

	ld [c], a
	or e
	push bc
	ld a, a
	adc c
	xor e
	ld a, [de]
	sub a
	db $e3
	adc e
	xor a
	xor e
	rst $20
	ld d, l
	ret nc

	ld a, [hli]
	call nz, $307f
	rst $18
	ret nz

	cpl
	rst $20
	ld d, c
	cp a
	jp c, wca33

	ld d, [hl]
	ld a, a
	ld d, d
	rst $20
	ld c, a
	call c, $bcc0
	add $7f
	jp nz, wc3b2

	ld a, a
	or a
	push bc
	cp e
	or d
	rst $20
	ld d, a
	inc bc
	inc b
	rlca
	inc bc
	ld bc, $0771
	inc b
	ld [bc], a
	ld [hl], c
	nop
	inc bc
	nop
	halt
	nop
	inc b
	nop
	halt
	nop
	ld [bc], a
	ld [bc], a
	ld b, $08
	rst $38
	ret nc

	ld bc, $0b03
	rlca
	rst $38
	pop de
	ld [bc], a
	ld [de], a
	rst $00
	rlca
	inc bc
	inc de
	rst $00
	rlca
	inc b
	db $f4
	add $00
	inc bc
	push af
	add $00
	inc b
	ld c, c
	ld sp, $4a32
	ld c, e
	dec b
	dec b
	ld c, h
	ld c, e
	dec b
	dec b
	ld c, h
	ld d, d
	ld sp, $6f32
	rlca
	ld b, $05
	sbc [hl]
	ld [hl], a
	ld c, [hl]
	db $76
	ld a, b
	ld [hl], l
	nop
	ld [hl], d
	ld [hl], a
	call Call_01d_758e
	call $3c6c
	ld hl, $7652
	ld de, $75b8
	ld a, [wd5cc]
	call $31a8
	ld [wd5cc], a
	ret


Call_01d_758e:
	ld hl, wd0eb
	bit 5, [hl]
	res 5, [hl]
	ret z

	ld hl, wd6b3
	set 1, [hl]
	ld a, [wd7e2]
	bit 1, a
	jr z, jr_01d_75a6

	ld a, $05
	jr jr_01d_75a8

jr_01d_75a6:
	ld a, $24

jr_01d_75a8:
	ld [wd07c], a
	ld bc, $0002
	ld a, $17
	jp $3e9d


Jump_01d_75b3:
	xor a
	ld [wd5cc], a
	ret


	rst $18
	ld [hl], l
	sub h
	ld [hld], a
	inc a
	db $76
	add hl, hl
	db $76
	jp nz, wc975

jr_01d_75c3:
	ld hl, wccd3
	ld a, $40
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hl], a
	ld a, $06
	ld [wcd38], a
	call $34d0
	ld a, $03
	ld [wd5cc], a
	ld [wd97c], a
	ret


	ld hl, $7620
	call $3509
	jp nc, $3261

	xor a
	ldh [$b3], a
	ldh [$b4], a
	ld [wccd3], a
	ld [wcd38], a
	ld a, [wcd3d]
	cp $03
	jr c, jr_01d_7603

	ld hl, wd7e2
	bit 6, [hl]
	set 6, [hl]
	jr z, jr_01d_75c3

jr_01d_7603:
	ld a, $02
	ldh [$8c], a
	call $13f1
	ld a, $40
	ld [wccd3], a
	ld a, $01
	ld [wcd38], a
	call $34d0
	ld a, $03
	ld [wd5cc], a
	ld [wd97c], a
	ret


	ld a, [bc]
	inc b
	ld a, [bc]
	dec b
	dec bc
	inc b
	dec bc
	dec b
	rst $38
	ld a, [wcd38]
	and a
	ret nz

	call $3e07
	xor a
	ld [wcd66], a
	ld [wd5cc], a
	ld [wd97c], a
	ret


	call $32bd
	ld a, [wd034]
	cp $ff
	jp z, Jump_01d_75b3

	ld a, $01
	ldh [$8c], a
	jp $13f1


	ld e, a
	db $76
	ld d, [hl]
	ld [hl], a
	ld bc, $e200
	rst $10
	ld l, c
	db $76
	ld [$fb77], sp
	db $76
	ei
	db $76
	rst $38
	ld [$5221], sp
	db $76
	call $3214
	jp $0f6a


	nop
	ld d, h
	ld a, a
	ret c

	db $e3
	rlca
	call wd67f
	or e
	cp d
	cp a
	rst $20
	ld d, c
	call c, $bcc0
	ld h, $7f
	cp h
	jp wc9de


	or e
	ret


	ld a, a
	add l
	xor e
	sub h
	rst $20
	ld d, c
	cp d
	or l
	ret c

	ld a, a
	ld d, h
	ld a, a
	jp nz, wdcb6

	cp [hl]
	ret nz

	rst $10
	ld c, a
	ret nc

	daa
	add $7f
	inc sp
	reti


	ld a, a
	db $d3
	ret


	jp z, $b27f

jr_01d_76a1:
	push bc
	or d
	call c, $b151
	or d
	jp Jump_01d_7fdd


	cp d
	or l
	rst $10
	cp [hl]
	reti


	rst $18
	jp wc44f


	rst $18
	jp Jump_01d_7fd3


	or a
	ld [c], a
	or e
	ret c

	ld [c], a
	cp b
	sub $e7
	ld d, c
	jr nc, jr_01d_76a1

	jp $ba7f


	or l
	rst $18
	pop bc
	ldh [$df], a
	ret nz

	rst $10

Jump_01d_76cc:
	ld c, a
	or c
	sbc $c0
	ret


	ld a, a
	ld d, h
	ld d, l
	ld l, $de
	ld l, $de
	ld a, a
	or e
	ld a, [hli]
	cp c
	ld a, a
	push bc
	or d
	sbc $30
	or [hl]
	rst $10
	ld d, c
	ld d, [hl]
	ld a, a
	or c
	jp z, $acca

	rst $20
	ld c, a
	inc l
	ldh [$7f], a
	or [hl]
	cp b
	ld a, [hli]
	jp z, $b27f

	or d
	or [hl]
	cp h
	rst $10
	rst $20
	ld d, a
	nop
	ld d, [hl]
	ld a, a
	push bc
	sbc $c3
	ld a, a
	call nc, wc5c2
	ret


	rst $20
	ld e, b
	nop
	cp l
	cp d
	cp h
	jp z, $337f

	or a
	reti


	ld a, a

jr_01d_7712:
	ret nc

	ret nz

	or d
	ret z

	rst $20
	ld c, a
	call c, wdfb6
	ret nz

	ld d, [hl]
	rst $20
	ld d, l
	jp nz, wc927

	ld a, a
	call wc6d4
	ld a, a
	cp l
	cp l
	pop de
	call nz, $b27f
	or d
	call c, Call_01d_51e7
	ld d, h
	ld a, a

jr_01d_7733:
	ret c

	db $e3
	rlca
	ld a, a
	cp h
	sbc $c9
	ld a, a
	ld b, b
	xor c
	db $e3
	jp z, wcf4f

	jr nc, jr_01d_7712

	jr nc, @+$58

	rst $20
	ld d, l
	cp d
	sbc $c5
	ld a, a
	db $d3
	ret


	inc l
	ldh [$7f], a
	push bc
	or d
	call c, $e7d6
	ld d, a
	nop
	jr nc, jr_01d_7733

	or [hl]
	ret


	ld a, a
	cp d
	or h
	ld h, $7f
	or a
	cp d
	or h
	reti


	ld d, [hl]
	ld c, a
	ld [hl], b
	add $29
	jp $7fca


	push bc
	rst $10
	sbc $e7
	ld [hl], c
	ld d, a
	inc bc
	inc b
	dec bc
	inc b
	ld [bc], a
	xor [hl]
	dec bc
	dec b
	ld [bc], a
	xor [hl]
	nop
	inc b
	nop
	or $00
	dec b
	ld bc, $00f6
	ld bc, $063b
	add hl, bc
	rst $38
	ret nc

	ld b, c
	db $f4
	ld bc, wc72d
	dec bc
	inc b
	dec l
	rst $00
	dec bc
	dec b
	or $c6
	nop
	inc b
	or $c6
	nop
	dec b
	ld hl, $2421
	ld hl, $0221
	jr @+$1a

	jr @+$04

	ld [bc], a
	jr jr_01d_77c3

	jr @+$04

	ld [bc], a
	jr nz, jr_01d_77b5

	jr nz, jr_01d_77b4

	ld [bc], a
	ld a, [de]

jr_01d_77b4:
	dec b

jr_01d_77b5:
	ld [bc], a
	ld [bc], a
	ld [bc], a
	ld b, h
	dec b
	ld b, h
	ld [bc], a
	rlca
	ld b, $05
	add $79
	sbc d
	ld a, b

jr_01d_77c3:
	ret z

	ld [hl], a
	nop
	sbc d
	ld a, c
	call Call_01d_77de
	call $3c6c
	ld hl, $789e
	ld de, $7804
	ld a, [wd5cd]
	call $31a8
	ld [wd5cd], a
	ret


Call_01d_77de:
	ld hl, wd0eb
	bit 5, [hl]
	res 5, [hl]
	ret z

	ld a, [wd7e3]
	bit 1, a
	jr z, jr_01d_77f2

	ld a, $05
	jp Jump_01d_77f4


jr_01d_77f2:
	ld a, $24

Jump_01d_77f4:
	ld [wd07c], a
	ld bc, $0002
	ld a, $17
	jp $3e9d


Jump_01d_77ff:
	xor a
	ld [wd5cd], a
	ret


	dec hl
	ld a, b
	sub h
	ld [hld], a
	adc b
	ld a, b
	ld [hl], l
	ld a, b
	ld c, $78
	ret


jr_01d_780f:
	ld hl, wccd3
	ld a, $40
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hl], a
	ld a, $06
	ld [wcd38], a
	call $34d0
	ld a, $03
	ld [wd5cd], a
	ld [wd97c], a
	ret


	ld hl, $786c
	call $3509
	jp nc, $3261

	xor a
	ldh [$b3], a
	ldh [$b4], a
	ld [wccd3], a
	ld [wcd38], a
	ld a, [wcd3d]
	cp $03
	jr c, jr_01d_784f

	ld hl, wd7e3
	bit 6, [hl]
	set 6, [hl]
	jr z, jr_01d_780f

jr_01d_784f:
	ld a, $02
	ldh [$8c], a
	call $13f1
	ld a, $40
	ld [wccd3], a
	ld a, $01
	ld [wcd38], a
	call $34d0
	ld a, $03
	ld [wd5cd], a
	ld [wd97c], a
	ret


	ld a, [bc]
	inc b
	ld a, [bc]
	dec b
	dec bc
	inc b
	dec bc
	dec b
	rst $38
	ld a, [wcd38]
	and a
	ret nz

	call $3e07
	xor a
	ld [wcd66], a
	ld [wd5cd], a
	ld [wd97c], a
	ret


	call $32bd
	ld a, [wd034]
	cp $ff
	jp z, Jump_01d_77ff

	ld a, $01
	ldh [$8c], a
	jp $13f1


	xor e
	ld a, b
	ld a, [hl]
	ld a, c
	ld bc, $e300
	rst $10
	or l
	ld a, b
	ld d, l
	ld a, c
	dec a
	ld a, c
	dec a
	ld a, c
	rst $38
	ld [$9e21], sp
	ld a, b
	call $3214
	jp $0f6a


	nop
	or l
	jp c, $7fca

	cp h
	jp wc9de


	or e
	ret


	ld a, a
	adc e
	add hl, de
	rst $20
	ld d, c
	set 0, h
	db $d3
	ld a, a
	ld d, h
	db $d3
	ld c, a
	ret nz

	ret nz

	or [hl]
	or d
	ld a, a
	or a
	ret nz

	or h
	jp c, Jump_01d_553a

	inc [hl]
	cp d
	rst $08
	inc sp
	db $d3
	ld a, a
	jp nz, $b8d6

	push bc
	reti


	rst $20
	ld d, c
	or l
	jp c, $7fca

	cp a
	sbc $c5
	ld a, a
	or a
	ret nz

	or h
	ld a, a
	rst $00
	or [hl]
	jp c, $4fc0

	ld d, h
	call nz, wc47f
	db $d3
	add $7f
	or d
	or a
	jp wc0b7


	rst $20
	ld d, l
	cp a
	cp h
	jp $ba7f


	jp c, wd7b6

	db $d3
	push bc
	rst $20
	ld d, c
	ld d, d
	call nz, $b27f
	rst $18
	ret nz

	push bc
	rst $20
	ld d, c
	or l
	jp c, $c1c0

	ret


	ld a, a
	adc h
	db $e3
	ld b, b
	db $e3
	ld a, a
	ld b, b
	xor c
	db $e3
	db $dd
	ld c, a
	or e
	cp c
	jp wSpriteCurPosY


	reti


	ld h, $7f
	or d
	or d
	rst $20
	ld d, c
	add d
	db $e3
	rst $20
	ld a, a
	sbc c
	db $e3
	xor h
	rst $20
	ld d, a
	nop
	inc [hl]
	or e
	cp h
	ret nz

	ld a, a
	cp d
	call nz, $e730
	ld c, a
	ld d, [hl]
	ld a, a
	or l
	jp c, Jump_01d_7f26

	rst $08
	cp c
	reti


	call nz, $e7ca
	ld e, b
	nop
	rst $08
	cp c
	pop bc
	rst $08
	rst $18

jr_01d_795b:
	ret nz

	rst $10
	ld c, a
	or l
	jp c, $7fc9

	inc sp
	ld a, [hld]
	sbc $ca
	ld a, a
	or l
	call c, $30d8
	rst $20
	ld d, l
	cp b
	cp a
	xor h
	rst $20
	ld a, a
	jp nz, wc627

	ld a, a
	or d
	rst $18
	jp $b87f


	jp c, Jump_01d_57e7

	nop
	jr nc, jr_01d_795b

	or [hl]
	ret


	ld a, a
	cp d
	or h
	ld h, $7f
	or a
	cp d
	or h
	reti


	ld d, [hl]
	ld c, a
	ld [hl], b
	add $29
	jp $7fca


	push bc
	rst $10
	sbc $e7
	ld [hl], c
	ld d, a
	inc bc
	inc b
	dec bc
	inc b
	ld [bc], a
	push af
	dec bc
	dec b
	inc bc
	push af
	nop
	inc b
	nop
	rst $30
	nop
	dec b
	ld bc, $00f7
	ld bc, $063a
	add hl, bc
	rst $38
	ret nc

	ld b, c
	jp hl


	ld bc, wc72d
	dec bc
	inc b
	dec l
	rst $00
	dec bc
	dec b
	or $c6
	nop
	inc b
	or $c6
	nop
	dec b
	ld bc, $0501
	ld bc, $0801
	dec b
	dec b
	dec b
	ld a, [bc]
	inc c
	ld [de], a
	dec b
	inc de
	dec c
	inc c
	ld a, [bc]
	dec b
	dec bc
	inc c
	ld [$0507], sp
	inc c
	ld [$110d], sp
	dec b
	ld a, [bc]
	dec c
	rrca
	ld b, $05
	dec hl
	ld a, h
	ret z

	ld a, d
	ldh a, [$79]
	nop
	rst $38
	ld a, e
	call Call_01d_7a06
	call $3c6c
	ld hl, $7acc
	ld de, $7a2c
	ld a, [wd5ce]
	call $31a8
	ld [wd5ce], a
	ret


Call_01d_7a06:
	ld hl, wd0eb
	bit 5, [hl]
	res 5, [hl]
	ret z

	ld a, [wd7e4]
	bit 1, a
	jr z, jr_01d_7a1a

	ld a, $0e
	jp Jump_01d_7a1c


jr_01d_7a1a:
	ld a, $3b

Jump_01d_7a1c:
	ld [wd07c], a
	ld bc, $0002
	ld a, $17
	jp $3e9d


Jump_01d_7a27:
	xor a
	ld [wd5ce], a
	ret


	ld d, e
	ld a, d
	sub h
	ld [hld], a
	or b
	ld a, d
	sbc l
	ld a, d
	ld [hl], $7a
	ret


jr_01d_7a37:
	ld hl, wccd3
	ld a, $40
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hl], a
	ld a, $06
	ld [wcd38], a
	call $34d0
	ld a, $03
	ld [wd5ce], a
	ld [wd97c], a
	ret


	ld hl, $7a94
	call $3509
	jp nc, $3261

	xor a
	ldh [$b3], a
	ldh [$b4], a
	ld [wccd3], a
	ld [wcd38], a
	ld a, [wcd3d]
	cp $03
	jr c, jr_01d_7a77

	ld hl, wd7e4
	bit 6, [hl]
	set 6, [hl]
	jr z, jr_01d_7a37

jr_01d_7a77:
	ld a, $02
	ldh [$8c], a
	call $13f1
	ld a, $40
	ld [wccd3], a
	ld a, $01
	ld [wcd38], a
	call $34d0
	ld a, $03
	ld [wd5ce], a
	ld [wd97c], a
	ret


	ld a, [bc]
	inc b
	ld a, [bc]
	dec b
	dec bc
	inc b
	dec bc
	dec b
	rst $38
	ld a, [wcd38]
	and a
	ret nz

	call $3e07
	xor a
	ld [wcd66], a
	ld [wd5ce], a
	ld [wd97c], a
	ret


	call $32bd
	ld a, [wd034]
	cp $ff
	jp z, Jump_01d_7a27

	ld a, $01
	ldh [$8c], a
	call $13f1
	ld a, $01
	ld [wd5cb], a
	ret


	reti


	ld a, d
	db $e3
	ld a, e
	ld bc, $e400
	rst $10
	db $e3
	ld a, d
	sub [hl]
	ld a, e
	add h
	ld a, e
	add h
	ld a, e
	rst $38
	ld [wcc21], sp
	ld a, d
	call $3214
	jp $0f6a


	nop
	or c
	ret nz

	cp h
	jp z, $bc7f

	jp wc9de


jr_01d_7aed:
	or e
	ret


	ld a, a
	add [hl]
	add a
	adc c
	rst $20
	ld d, c
	or c
	sbc $c0
	ld a, a
	add h
	db $e3
	add [hl]
	inc de
	ret


	ld a, a
	dec bc
	dec bc
	add c
	add $4f
	or [hl]
	call c, $26b2
	rst $10
	jp c, wdec3

	jr nc, jr_01d_7aed

	jp Jump_01d_51e7


	dec bc
	dec bc
	add c
	ld a, a
	pop de
	or [hl]
	cp h
	jp z, $c27f

	sub $b8
	jp $b24f


	or d
	ld a, a

jr_01d_7b22:
	or l
	call nz, $7fba
	jr nc, @-$1f

	ret nz

	rst $20
	ld d, l
	or d
	rst $08
	inc l
	ldh [$7f], a
	ret nc

	reti


	ld a, a
	or [hl]
	add hl, hl
	db $d3
	ld a, a
	push bc
	or d

jr_01d_7b39:
	ld h, $c8
	rst $20
	ld d, c
	ld d, h
	ld a, a
	dec l
	or [hl]
	sbc $4f
	jp nz, wdfb8

	jp $7fd9


	sub $b3
	inc l
	ldh [$7f], a
	jr nc, jr_01d_7b22

	jr nc, jr_01d_7b39

	ld d, l
	ld d, h
	jp z, wc07f

	ret nz

	or [hl]
	call c, wd9be
	ld a, a
	db $d3
	ret


	cp e
	ld d, c
	ld d, d
	ld d, [hl]
	rst $20
	ld a, a
	or c
	sbc $c0
	add $d3
	ld c, a
	sbc h
	xor e
	sub e
	ret


	ld a, a
	ret nz

	ret nz

	or [hl]
	or d
	rst $18
	jp wd37f


	ret


	db $dd
	ld d, l
	or l
	cp h
	or h
	jp $d47f


	reti


	rst $20
	ld d, a
	nop
	adc $df
	adc $b3
	rst $20
	ld c, a
	ret nz

	or d
	cp h
	ret nz

	ld a, a
	db $d3
	sbc $30
	sub $e7
	ld e, b
	nop
	or c
	sbc $c0
	ret


	ld a, a
	or [hl]
	pop bc
	ld a, a
	jr nc, @-$17

	ld c, a
	dec bc
	dec bc
	add c
	ld h, $7f
	jp nc, Jump_01d_7fdd

	jp nz, wd9b9

	ld a, a
	jr nc, @-$45

	ret


	ld d, l
	cp d
	call nz, $7fca
	or c
	reti


	rst $20
	ld d, c
	db $d3
	or e
	ld a, a
	cp d
	jp c, $b27f

	inc l
	ld [c], a
	or e
	ld c, a
	or c
	ret nz

	cp h
	ld h, $7f
	or d
	or e
	ld a, a
	cp d
	call nz, $7fca
	push bc
	or d
	rst $20
	ld d, l
	jp nz, wc927

	ld a, a
	call wc6d4
	ld a, a
	cp l
	cp l
	ret nc

	push bc
	rst $20
	ld d, a
	nop
	jr nc, @-$24

	or [hl]
	ret


	ld a, a
	cp d
	or h
	ld h, $7f
	or a
	cp d
	or h
	reti


	ld d, [hl]
	ld c, a
	ld [hl], b
	add $29
	jp $7fca


	push bc
	rst $10
	sbc $e7
	ld [hl], c
	ld d, a
	nop
	inc b
	dec bc
	inc b
	ld [bc], a
	or $0b
	dec b
	inc bc
	or $00
	inc b
	nop
	ld [hl], c
	nop
	dec b
	nop
	ld [hl], c
	nop
	ld bc, $0639
	add hl, bc
	rst $38
	ret nc

	ld b, c
	or $01
	dec l
	rst $00
	dec bc
	inc b
	dec l
	rst $00
	dec bc
	dec b
	or $c6
	nop
	inc b
	or $c6
	nop
	dec b
	ld b, a
	ld b, a
	ld [hl], $47
	ld b, a
	ld h, a
	ld [hl], $36
	ld c, [hl]
	ld h, l
	ld d, d
	ld c, [hl]
	ld [hl], $65
	ld d, d
	ld h, l
	ld h, a
	ld [hl], $65
	ld h, l
	ld d, d
	ld c, e
	ld [hl], $65
	ld d, d
	ld h, a
	ld d, d
	ld [hl], $68
	ld l, b
	ld hl, $7d4a
	call $3c79
	ld hl, wd6af
	set 6, [hl]
	push hl
	ld a, [wUpdateSpritesEnabled]
	push af
	ldh a, [$d7]
	push af
	xor a
	ldh [$d7], a
	ld [wSpriteFlipped], a
	ld [wUpdateSpritesEnabled], a
	ld [wcd41], a
	ld [wcd42], a
	ld a, [wd521]
	ld b, a
	cp $33
	jr c, jr_01d_7c79

	ld b, $32
	sub b
	ld [wcd42], a

jr_01d_7c79:
	ld hl, wcd42
	inc [hl]
	push bc
	ld a, [wcd41]
	ld [wcd3d], a
	ld b, $1c
	ld hl, $7f9b
	call $3620
	call Call_01d_7cb0
	pop bc
	jr c, jr_01d_7c9a

	ld hl, wcd41
	inc [hl]
	ld a, [hl]
	cp b
	jr nz, jr_01d_7c79

jr_01d_7c9a:
	pop af
	ldh [$d7], a
	pop af
	ld [wUpdateSpritesEnabled], a
	pop hl
	res 6, [hl]
	call $3e04
	call $03bf
	call $3e1d
	jp $3e0c


Call_01d_7cb0:
	ld c, $06

jr_01d_7cb2:
	push bc
	call Call_01d_7cdb
	call $38ae
	ldh a, [$b4]
	bit 1, a
	jr nz, jr_01d_7cd8

	ld hl, wcc6b
	ld de, wcc5b
	ld bc, $0050
	call $01bb
	pop bc
	ld a, [wcc5b]
	cp $ff
	jr z, jr_01d_7cd6

	dec c
	jr nz, jr_01d_7cb2

jr_01d_7cd6:
	and a
	ret


jr_01d_7cd8:
	pop bc
	scf
	ret


Call_01d_7cdb:
	call $3e04
	call $03bf
	ld hl, wcc5b
	ld a, [hli]
	ld [wcd3d], a
	ld [wcf78], a
	ld [wd092], a
	ld [wcfc0], a
	ld [wcf17], a
	ld a, [hli]
	ld [wcd3f], a
	ld de, wcd68
	ld bc, $0006
	call $01bb
	ld b, $0b
	ld c, $00
	call $3e1f
	ld hl, wc410
	call $2f2e
	call $2d7f
	call $3e0c
	ld hl, wc4a6
	ld b, $02
	ld c, $0e
	call $03d2
	ld hl, wc4cf
	ld de, $7d3b
	call $0405
	ld hl, wc4d1
	ld de, wcd42
	ld bc, $0103
	call $3c8f
	ld b, $1c
	ld hl, $4817
	jp $3620


	jr nc, @-$4c

	ld a, a
	ld a, a
	ld a, a
	or [hl]

jr_01d_7d41:
	or d
	ld a, a
	inc sp
	sbc $34
	or e
	or d
	ret c

	ld d, b
	nop
	ld d, h
	ret c

	db $e3
	rlca
	ld a, a
	sbc h
	adc h
	sub e
	call nz, $c27f
	push bc
	or d
	jr nc, jr_01d_7d41

	ld d, c
	inc sp
	sbc $34
	or e
	ld a, a
	or d
	ret c

	ld a, a
	ret c

	adc h
	sub e
	ld c, a
	or [hl]
	sbc $d8
	ld a, a
	adc e
	adc h
	sub d
	sbc a
	db $dd
	ld a, a
	sub $3b
	jr nc, @-$42

	ret nz

	rst $20
	ld e, b
	ld hl, $7da8
	call Call_01d_7f9e
	ld [wcd41], a
	ld hl, wd66f
	ld a, [wcd41]
	ld c, a
	ld b, $02
	ld a, $10
	call $3e9d
	ld a, c
	and a
	ret nz

	call $3c6c
	ld a, $01
	ld [wcc3c], a
	ld a, [wcd3d]
	ld [wd0e3], a
	call $1add
	ld a, $24
	jp $3f25


	inc sp
	ld [de], a
	ld bc, $2a33
	db $10
	dec a
	inc c
	ld [de], a
	inc h
	inc bc
	ld h, $14
	rlca
	ld c, $64
	add hl, bc
	dec c
	ld l, b
	ld b, $00
	dec d
	ld de, $1509
	dec [hl]
	db $10
	rst $00
	rrca
	dec d
	ret


	rla
	ld d, $ca
	ld bc, $9219
	inc c
	inc b
	jr jr_01d_7ddf

	ld bc, $0818
	jr nc, @-$62

	ld bc, wdb0a
	dec b
	ld b, $d2
	inc bc
	dec bc
	jp hl


jr_01d_7ddf:
	rrca
	ld [bc], a
	or b
	ld bc, $e400
	dec bc
	rrca
	db $e3
	ld d, $1d
	ld d, e
	db $10
	ld de, $0153
	inc c
	and b
	rrca
	rrca
	and d
	ld de, $a519
	db $10
	ld [$09d7], sp
	ld bc, $2c22
	add hl, bc
	ld [hli], a
	ld b, [hl]
	inc de
	ld [hli], a
	ld e, d
	ld [$02c2], sp
	dec b
	jp nz, $1a07

	ld l, a
	dec bc
	ld c, $01
	inc b
	ld c, $16
	dec b
	jr nc, jr_01d_7e2c

	ccf
	ld [bc], a
	inc e
	rrca
	rrca
	inc e
	dec l
	ld [$481c], sp
	ld de, $5b1c
	inc b
	inc e
	ld a, c
	ld [$0477], sp
	inc bc
	ld [hl], a
	ld [hli], a
	inc b

jr_01d_7e2c:
	ld a, c
	ld [bc], a
	inc c
	ld a, c
	dec b
	dec d
	ld b, $0f
	jr nc, @+$26

	ld bc, $3d0a
	add hl, bc
	ld hl, $10a1
	add hl, bc
	dec b
	dec bc
	ld c, $03
	ld [$0f0f], sp
	inc bc
	jr z, @+$01

	nop
	ld d, d
	jp z, Jump_01d_504f

	ld bc, wcd68
	nop
	db $dd
	ld a, a
	ret nc

	jp nz, wc0b9

	rst $20
	ld d, b
	ld [$3dfa], sp
	call $0e47
	ld bc, $5ecd
	ld a, $30
	add hl, de
	ld hl, wd66f
	ld a, [wcd41]
	ld c, a
	ld b, $01
	ld a, $10
	call $3e9d
	ld a, $89
	call $3788
	call $3790
	jp $0f6a


	call $38ae
	xor a
	ld [wcc3c], a
	ld hl, $7e8e
	call $3c79
	jp $0f6a


	nop
	cp h
	or [hl]
	cp h
	ld a, a
	ld d, d
	jp z, $344f

	or e
	jr z, @-$21

	ld a, a
	db $d3
	or e
	ld a, a
	db $d3
	jp $b2c5


	rst $20
	ld d, a
	ld b, $45
	ld a, $1c
	call $3e9d
	ld a, b
	and a
	ret z

	ld hl, $7f2d
	call Call_01d_7f9e
	ld [wcd41], a
	ld hl, wd67d
	ld a, [wcd41]
	ld c, a
	ld b, $02
	ld a, $10
	call $3e9d
	ld a, c
	and a
	ret nz

	xor a
	ldh [$9f], a
	ldh [$a0], a
	ldh [$a1], a
	ld a, [wcd3d]
	sub $3b
	cp $0a
	jr z, jr_01d_7ee2

	cp $14
	jr z, jr_01d_7ee8

	cp $28
	jr z, jr_01d_7ee8

	jr jr_01d_7ef4

jr_01d_7ee2:
	ld a, $10
	ldh [$a1], a
	jr jr_01d_7ef8

jr_01d_7ee8:
	ld a, $20
	ldh [$a1], a
	jr jr_01d_7ef8

	ld a, $40
	ldh [$a1], a
	jr jr_01d_7ef8

jr_01d_7ef4:
	ld a, $01
	ldh [$a0], a

jr_01d_7ef8:
	ld de, wd524
	ld hl, $ffa1
	ld c, $02
	ld a, $0b
	call $3e9d
	ld hl, wd67d
	ld a, [wcd41]
	ld c, a
	ld b, $01
	ld a, $10
	call $3e9d
	call $3c6c
	ld a, [wd523]
	cp $99
	jr nz, jr_01d_7f28

	ld a, [wd524]
	cp $99
	jr nz, jr_01d_7f28

	ld a, $2c

Call_01d_7f26:
Jump_01d_7f26:
	jr jr_01d_7f2a

jr_01d_7f28:
	ld a, $2b

jr_01d_7f2a:
	jp $3f25


	add a
	ld [$8700], sp
	db $10
	ld bc, $0b87
	inc bc
	add a
	ld c, $03
	add a

Jump_01d_7f3a:
	inc c
	inc b

Call_01d_7f3c:
	add a
	inc c
	add hl, bc
	add a
	rrca
	add hl, bc
	add a
	ld c, $10
	add a
	db $10
	ld a, [bc]
	add a
	rlca
	dec bc
	add a
	ld [$870f], sp
	rrca
	inc c
	rst $38
	nop
	ld d, d
	jp z, $894f

	add c
	xor e
	db $dd
	ld a, a
	ld d, b
	ld [bc], a
	and b
	rst $38
	jp nz, wcf00

	or d
	ld a, a
	ret nc

	jp nz, wc0b9

	rst $20
	ld d, b
	db $10
	ld d, b
	nop
	ld d, d
	jp z, $894f

	add c
	xor e
	ld a, a
	db $dd
	ld d, b
	ld [bc], a
	and b
	rst $38
	jp nz, wcf00

	or d
	ld a, a
	ret nc

	jp nz, wc0b9

	rst $20
	ld d, b
	stop
	ld d, c
	cp h
	or [hl]
	cp h
	ld a, a
	ld d, d
	jp z, wc54f

	sbc $cf
	or d
	or [hl]
	ld a, a
	or l
	call nz, $c3bc
	cp h
	rst $08
	rst $18
	ret nz

	rst $20
	ld d, a

Call_01d_7f9e:
	ld a, [wcd40]
	ld d, a
	ld a, [wcd41]
	ld e, a
	ld a, [wCurMap]
	ld b, a
	ld c, $00

Jump_01d_7fac:
jr_01d_7fac:
	ld a, [hli]
	cp $ff
	ret z

	cp b
	jr nz, jr_01d_7fbd

	ld a, [hli]

Call_01d_7fb4:
	cp d
	jr nz, jr_01d_7fbe

Call_01d_7fb7:
	ld a, [hli]

Jump_01d_7fb8:
	cp e

Jump_01d_7fb9:
	jr nz, jr_01d_7fac

	ld a, c

Call_01d_7fbc:
	ret


jr_01d_7fbd:
	inc hl

jr_01d_7fbe:
	inc hl
	inc c

Jump_01d_7fc0:
	jr jr_01d_7fac

	xor d
	ld c, $80
	dec b

Call_01d_7fc6:
Jump_01d_7fc6:
	add h
	ld [bc], a
	ld hl, $bc64
	add b
	ld [$20d4], sp

Call_01d_7fcf:
	nop
	add h
	inc b

Jump_01d_7fd2:
	sub b

Call_01d_7fd3:
Jump_01d_7fd3:
	inc b
	call nz, $2940

Call_01d_7fd7:
Jump_01d_7fd7:
	inc b

Call_01d_7fd8:
	ld h, $a5

Call_01d_7fda:
	add e
	inc b
	nop

Call_01d_7fdd:
Jump_01d_7fdd:
	inc c

Call_01d_7fde:
Jump_01d_7fde:
	ld a, [bc]
	inc de
	add hl, bc
	ld l, d
	add hl, bc

Jump_01d_7fe3:
	jr nz, jr_01d_7fe6

	ld l, b

Call_01d_7fe6:
jr_01d_7fe6:
	ld h, b

Call_01d_7fe7:
	nop
	ld bc, $c1c0
	pop bc
	adc l
	add b
	ld [hld], a
	nop
	jr z, jr_01d_7ff3

	add hl, de

jr_01d_7ff3:
	dec bc
	and b
	inc bc
	jp $0000


	ld bc, $a340
	ld bc, $4021
	inc h
