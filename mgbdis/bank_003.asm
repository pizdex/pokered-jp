; Disassembly of "pokemon-red-jp.gb"

SECTION "ROM Bank $003", ROMX[$4000], BANK[$3]

	ld a, $20
	ld c, $00
	ldh [rP1], a
	ldh a, [rP1]
	ldh a, [rP1]
	ldh a, [rP1]
	ldh a, [rP1]
	ldh a, [rP1]
	ldh a, [rP1]
	cpl
	and $0f
	swap a
	ld b, a
	ld a, $10
	ldh [rP1], a
	ldh a, [rP1]
	ldh a, [rP1]
	ldh a, [rP1]
	ldh a, [rP1]
	ldh a, [rP1]
	ldh a, [rP1]
	ldh a, [rP1]
	ldh a, [rP1]
	ldh a, [rP1]
	ldh a, [rP1]
	cpl
	and $4f
	cp $0f
	jr nz, jr_003_403a

	jp Jump_003_4074


jr_003_403a:
	or b
	ld b, a
	ldh a, [$b1]
	ld e, a
	xor b
	ld d, a
	and e
	ldh [$b2], a
	ld a, d
	and b
	ldh [$b3], a
	ld a, $30
	ldh [rP1], a
	ld a, b
	ldh [$b1], a
	ld a, [wd6af]
	bit 5, a
	jr nz, jr_003_406c

	ldh a, [$b1]
	ldh [$b4], a
	ld a, [wcd66]
	and a
	ret z

	cpl
	ld b, a
	ldh a, [$b4]
	and b
	ldh [$b4], a
	ldh a, [hJoyPressed]
	and b
	ldh [$b3], a
	ret


Call_003_406c:
jr_003_406c:
	xor a
	ldh [$b4], a
	ldh [$b3], a
	ldh [$b2], a
	ret


Jump_003_4074:
	call $0b31
	ld a, $30
	ldh [rP1], a
	ld hl, $ff8a
	dec [hl]
	jp z, $09cf

	jp $0153


	db $7a, $42, $7d, $42

	add e
	ld b, d
	adc c
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	sbc b
	ld b, d
	ld [hl], a
	ld b, d

	db $77, $42, $c5, $42

	ld [hl], a
	ld b, d
	bit 0, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	adc $42
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	pop de
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	jp c, wdd42

	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ldh [rSCY], a
	ld [hl], a
	ld b, d
	and $42
	db $ec
	ld b, d

	db $77, $42, $77, $42, $ef, $42, $f8, $42, $77, $42, $77, $42

	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	db $10
	ld b, e
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d

	db $77, $42, $a6, $43

	ld d, $43
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	xor a
	ld b, e
	ld [hl], a
	ld b, d
	pop bc
	ld b, e
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld h, c
	ld b, e
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	sbc l
	ld b, e
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	call Call_003_7743
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ret nc

	ld b, e
	db $d3
	ld b, e
	reti


	ld b, e
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	or $44
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	db $fc
	ld b, h
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld c, c
	ld b, e
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld c, h
	ld b, e
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hli], a
	ld b, e
	dec h
	ld b, e
	jr z, jr_003_41ec

	ld sp, $3443
	ld b, e
	ld a, [hld]
	ld b, e
	ld b, [hl]
	ld b, e
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld c, a
	ld b, e
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	dec b
	ld b, l
	dec bc
	ld b, l
	ld de, $1d45
	ld b, l
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld d, d
	ld b, e
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld e, b
	ld b, e
	ld [hl], a
	ld b, d
	ld [hl], a

jr_003_41ec:
	ld b, d
	ld [hl], a
	ld b, d
	ld e, [hl]
	ld b, e
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	rst $38
	ld b, h
	ld [hl], a
	ld b, d
	adc e
	ld b, e
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [c], a
	ld b, e
	db $eb
	ld b, e
	pop af
	ld b, e
	db $fd
	ld b, e
	inc bc
	ld b, h
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	dec d
	ld b, h
	inc h
	ld b, h
	dec l
	ld b, h
	ccf
	ld b, h
	ld d, h
	ld b, h
	ld h, e
	ld b, h
	ld a, e
	ld b, h
	xor e
	ld b, h
	xor [hl]
	ld b, h
	or h
	ld b, h
	jp wcf44


	ld b, h
	push de
	ld b, h
	pop hl
	ld b, h
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	db $e4
	ld b, h
	db $ed
	ld b, h
	add hl, de
	ld b, e
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	add h
	ld b, h
	adc l
	ld b, h
	sbc a
	ld b, h
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	xor b
	ld b, h
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	ld [hl], a
	ld b, d
	rst $38
	rst $38

	db $ff

	rst $38
	rst $38

	db $00, $01, $11, $01, $05, $15, $01, $07, $11, $02

	inc bc

	db $15, $02

	dec b

	db $15, $03

	db $01

	db $11, $03

	ld [bc], a

	db $15, $03

	db $06

	db $11, $03

	ld a, [bc]

	db $15, $03

	dec bc

	db $15, $0a

	db $01

	db $15, $0a

	ld [bc], a

	db $15, $0a

	inc bc

	db $15, $0a

	inc b

	db $15, $0a

	dec b

	db $15, $0a

	db $06

	db $15, $0a

	rlca

	db $15, $0a

	db $08

	db $11, $0a

	add hl, bc

	db $11, $0a

	ld a, [bc]

	db $11, $0a

	dec bc

	db $11, $0a

	inc c

	db $11, $0a

	dec c

	db $11, $0a

	db $0e

	db $15, $0a

	rrca

	db $11, $0d, $01, $15, $0d, $02, $15, $0f

	inc bc

	db $15, $14

	ld a, [bc]

	db $15, $17

	db $01

	db $15, $17

	add hl, bc

	db $15, $17

	ld a, [bc]

	db $15, $1a

	dec bc

	db $15, $1b

	rlca

	db $15, $21

	db $01

	db $11, $21

	ld [bc], a

	db $11, $23

	db $01

	db $15, $23

	db $08

	db $15, $24

	ld a, [bc]

	db $15, $27, $01, $15, $27, $02, $11, $27, $03, $15, $28, $01, $15, $28, $02, $15
	db $28, $03, $15, $28, $04, $15, $28, $05, $11, $28, $06, $15, $28, $07, $15, $28
	db $08, $11, $2d

	db $01

	db $15, $2d

	dec bc

	db $15, $34

	dec b

	db $15, $e4

	db $01

	db $15, $e4

	ld [bc], a

	db $15, $e4

	inc bc

	db $15, $8f

	db $01

	db $15, $90

	inc b

	db $15, $91

	inc b

	db $15, $91

	dec b

	db $15, $91

	db $06

	db $15, $92

	db $06

	db $15, $93

	inc b

	db $15, $93

	dec b

	db $15, $94

	db $01

	db $15, $94

	ld [bc], a

	db $15, $94

	inc bc

	db $15, $94

	inc b

	db $15, $95

	dec b

	db $11, $84

	ld [bc], a

	db $15, $87

	dec bc

	db $15, $9b

	ld [bc], a

	db $15, $a5

	ld [bc], a

	db $15, $a5

	inc bc

	db $15, $b1

	db $06

	db $15, $b1

	rlca

	db $15, $b5

	db $01

	db $11, $53

	db $01

	db $15, $53

	ld [bc], a

	db $15, $53

	inc bc

	db $15, $53

	inc b

	db $15, $53

	dec b

	db $15, $53

	db $06

	db $15, $53

	rlca

	db $15, $53

	db $08

	db $15, $53

	add hl, bc

	db $15, $53

	ld a, [bc]

	db $15, $53

	dec bc

	db $15, $53

	inc c

	db $15, $53

	dec c

	db $15, $53

	db $0e

	db $15, $c2

	db $06

	db $15, $c2

	rlca

	db $15, $c2

	db $08

	db $15, $c2

	add hl, bc

	db $15, $c2

	ld a, [bc]

	db $15, $c2

	dec c

	db $15, $58

	db $01

	db $15, $58

	ld [bc], a

	db $11, $58

	inc bc

	db $11, $33, $05, $15, $33, $06, $15, $33, $07, $15, $3b

	db $08

	db $15, $3b

	add hl, bc

	db $15, $3b

	ld a, [bc]

	db $15, $3b

	dec bc

	db $15, $3b

	inc c

	db $15, $3b

	dec c

	db $15, $3d

	db $06

	db $15, $3d

	rlca

	db $15, $3d

	db $08

	db $15, $3d

	add hl, bc

	db $15, $60

	ld [bc], a

	db $11, $66

	ld a, [bc]

	db $15, $67

	db $06

	db $15, $67

	add hl, bc

	db $15, $68

	add hl, bc

	db $15, $68

	ld a, [bc]

	db $15, $68

	dec bc

	db $15, $c6

	dec b

	db $15, $c6

	db $06

	db $15, $c6

	ld a, [bc]

	db $15, $c7

	db $06

	db $15, $c7

	rlca

	db $15, $c8

	ld [bc], a

	db $15, $c8

	inc bc

	db $15, $c8

	inc b

	db $15, $c8

	dec b

	db $15, $c9

	inc bc

	db $15, $c9

	inc b

	db $15, $ca

	db $01

	db $15, $ca

	dec b

	db $15, $ca

	db $06

	db $15, $ca

	rlca

	db $15, $ca

	db $08

	db $11, $ca

	add hl, bc

	db $11, $cf

	db $01

	db $15, $cf

	ld [bc], a

	db $15, $cf

	inc bc

	db $15, $cf

	inc b

	db $15, $cf

	dec b

	db $15, $d0

	ld [bc], a

	db $15, $d0

	inc bc

	db $15, $d0

	inc b

	db $15, $d1

	ld [bc], a

	db $15, $d1

	inc bc

	db $15, $d1

	inc b

	db $15, $d1

	dec b

	db $15, $d1

	db $06

	db $15, $d1

	rlca

	db $15, $d2

	ld [bc], a

	db $15, $d2

	inc bc

	db $15, $d2

	inc b

	db $15, $d2

	dec b

	db $15, $d2

	db $06

	db $15, $d2

	rlca

	db $15, $d2

	db $08

	db $15, $d3

	db $06

	db $15, $d3

	rlca

	db $15, $d3

	db $08

	db $15, $d3

	add hl, bc

	db $15, $d3

	ld a, [bc]

	db $15, $d4

	dec b

	db $15, $d4

	db $06

	db $15, $d4

	rlca

	db $15, $d4

	db $08

	db $15, $d4

	add hl, bc

	db $15, $d4

	ld a, [bc]

	db $15, $d4

	dec bc

	db $15, $d4

	inc c

	db $15, $d5

	ld [bc], a

	db $15, $d5

	inc bc

	db $15, $d5

	inc b

	db $15, $e9

	ld [bc], a

	db $15, $e9

	inc bc

	db $15, $e9

	inc b

	db $15, $ea

	db $01

	db $15, $ea

	ld [bc], a

	db $15, $ea

	inc bc

	db $15, $ea

	inc b

	db $15, $ea

	dec b

	db $15, $ea

	db $06

	db $15, $eb

	inc bc

	db $15, $eb

	inc b

	db $15, $eb

	dec b

	db $15, $f4

	ld [bc], a

	db $15, $d6

	ld [bc], a

	db $15, $d7

	inc bc

	db $15, $d7

	inc b

	db $15, $d8

	inc bc

	db $15, $d8

	inc b

	db $15, $d8

	dec b

	db $15, $d8

	db $06

	db $15, $d8

	db $08

	db $15, $d9

	db $01

	db $15, $d9

	ld [bc], a

	db $15, $d9

	inc bc

	db $15, $d9

	inc b

	db $15, $da

	db $01

	db $15, $da

	ld [bc], a

	db $15, $db

	db $01

	db $15, $db

	ld [bc], a

	db $15, $db

	inc bc

	db $15, $db

	inc b

	db $15, $dc

	db $01

	db $15, $e2

	db $01

	db $15, $e2

	ld [bc], a

	db $15, $e2

	inc bc

	db $15, $e3

	db $01

	db $15, $e3

	ld [bc], a

	db $15, $e3

	inc bc

	db $15, $6c

	inc bc

	db $15, $6c

	inc b

	db $15, $78

	ld [bc], a

	db $11, $c0

	db $01

	db $15, $c0

	ld [bc], a

	db $15, $9f

	db $01

	db $11, $9f

	ld [bc], a

	db $11, $a0

	db $01

	db $11, $a0

	ld [bc], a

	db $11, $a1

	ld [bc], a

	db $15, $a1

	inc bc

	db $15, $a1

	dec b

	db $11, $a1

	db $06

	db $11, $a2

	db $01

	db $11, $a2

	ld [bc], a

	db $11, $a2

	inc bc

	db $15, $ff

	ld bc, $2115
	and a
	sub $cb
	add $21
	ld a, [hld]
	ld b, l
	call $3c79
	ld hl, $455a
	jp $3c79


	ld bc, wcd68
	nop
	jp z, $b64f

	or d
	ret c

	or a
	db $dd
	ld a, a
	jp z, $b7df

	cp h
	ret nz

	rst $20
	ld d, b
	ld [$78fa], sp
	rst $08
	call $2dc7
	call $3e07
	jp $0f6a


	ld bc, wcd68
	nop
	ret


	ld a, a
	or [hl]
	or d
	ret c

	or a
	ret


	ld a, a
	or l
	or [hl]
	add hl, hl
	inc sp
	ld c, a
	or d
	call c, $7fdd
	or l
	cp [hl]
	reti


	sub $b3
	add $7f
	push bc
	rst $18
	ret nz

	rst $20
	ld e, b
	ld hl, wd6a7
	set 1, [hl]
	ld a, [wd6b1]
	bit 5, a
	jr nz, jr_003_45a7

	ld a, [wCurMap]
	cp $a2
	ret nz

	ld a, [wd800]
	and $03
	cp $03
	ret z

	ld hl, $45b2
	call $3509
	ret nc

	ld hl, wd6a7
	res 1, [hl]
	ld hl, $45b5
	jp $3c79


jr_003_45a7:
	ld hl, wd6a7
	res 1, [hl]
	ld hl, $45c5
	jp $3c79


	dec bc
	rlca
	rst $38
	nop
	push bc
	ld h, $da
	ld h, $7f
	jp z, $b8d4

	jp $0f4f


	and b
	jr nc, @-$17

	ld e, b
	nop
	cp [hl]
	rst $18
	or [hl]
	cp b
	ret


	ld a, a
	adc d
	add c
	add a
	ret c

	xor e
	rlca
	rst $20
	ld c, a
	ld d, [hl]
	ld a, a
	push bc
	ret nc

	ret


	ret c

	jp z, $d47f

	jp nc, $bac4

	or e
	ld e, b

	ld a, [wcf7d]
	push af
	push bc
	push de
	push hl
	push hl
	ld d, $32
	ld a, $a1
	cp l
	jr nz, jr_003_45f8

	ld a, $d2
	cp h
	jr nz, jr_003_45f8

	ld d, $14

jr_003_45f8:
	ld a, [hl]
	sub d
	ld d, a
	ld a, [hli]
	and a
	jr z, jr_003_460e

Jump_003_45ff:
jr_003_45ff:
	ld a, [hli]
	ld b, a
	ld a, [wcf78]
	cp b
	jp z, Jump_003_4628

	inc hl
	ld a, [hl]
	cp $ff
	jr nz, jr_003_45ff

jr_003_460e:
	pop hl
	ld a, d
	and a
	jr z, jr_003_4649

	inc [hl]
	ld a, [hl]
	add a
	dec a
	ld c, a
	ld b, $00
	add hl, bc
	ld a, [wcf78]
	ld [hli], a
	ld a, [wcf7d]
	ld [hli], a
	ld [hl], $ff
	jp Jump_003_4648


Jump_003_4628:
	ld a, [wcf7d]
	ld b, a
	ld a, [hl]
	add b
	cp $64
	jp c, Jump_003_4646

	sub $63
	ld [wcf7d], a
	ld a, d
	and a
	jr z, jr_003_4642

	ld a, $63
	ld [hli], a
	jp Jump_003_45ff


jr_003_4642:
	pop hl
	and a
	jr jr_003_4649

Jump_003_4646:
	ld [hl], a
	pop hl

Jump_003_4648:
	scf

jr_003_4649:
	pop hl
	pop de
	pop bc
	pop bc
	ld a, b
	ld [wcf7d], a
	ret


	push hl
	inc hl
	ld a, [wcf79]
	sla a
	add l
	ld l, a
	jr nc, jr_003_465e

	inc h

jr_003_465e:
	inc hl
	ld a, [wcf7d]
	ld e, a
	ld a, [hl]
	sub e
	ld [hld], a
	ld [wcf7e], a
	and a
	jr nz, jr_003_4691

	ld e, l
	ld d, h
	inc de
	inc de

jr_003_4670:
	ld a, [de]
	inc de
	ld [hli], a
	cp $ff
	jr nz, jr_003_4670

	xor a
	ld [wcc36], a
	ld [wCurrentMenuItem], a
	ld [wcc2c], a
	pop hl
	ld a, [hl]
	dec a
	ld [hl], a
	ld [wd0ef], a
	cp $02
	jr c, jr_003_4692

	ld [wcc28], a
	jr jr_003_4692

jr_003_4691:
	pop hl

jr_003_4692:
	ret


	db $ba, $02, $c3, $02

	jp wc702


	ld [bc], a
	call nc, wd002
	ld [bc], a
	jp z, wc702

	ld [bc], a
	call $fb02
	ld [bc], a
	jp $c302


	ld [bc], a

	db $eb, $02, $eb, $02

	di
	ld [bc], a
	di
	ld [bc], a
	di
	ld [bc], a
	di
	ld [bc], a
	di
	ld [bc], a
	di
	ld [bc], a
	di
	ld [bc], a
	di
	ld [bc], a
	rst $30
	ld [bc], a
	rst $30
	ld [bc], a
	rst $30
	ld [bc], a
	rst $30
	ld [bc], a
	rst $30
	ld [bc], a
	di
	ld [bc], a
	di
	ld [bc], a
	di
	ld [bc], a
	di
	ld [bc], a
	di
	ld [bc], a
	di
	ld [bc], a
	di
	ld [bc], a
	ei
	ld [bc], a
	rst $28
	ld [bc], a
	rst $28
	ld [bc], a

	db $ba, $02, $ba, $02, $ba, $02, $cd, $1f, $bd, $02, $bd, $02

	jp $c302


	ld [bc], a
	ret nz

	ld [bc], a
	db $e4
	rra
	jp $c302


	ld [bc], a
	db $c3
	ld [bc], a

	db $c3, $02, $e4, $1f

	jp $c302


	ld [bc], a
	ret nz

	ld [bc], a
	jp $bd02


	ld [bc], a
	jp $bd02


	ld [bc], a
	add sp, $1f
	add sp, $1f
	add sp, $1f
	rst $00
	ld [bc], a
	rst $00
	ld [bc], a
	cp l
	ld [bc], a
	ret nz

	ld [bc], a
	rst $00
	ld [bc], a
	cp l
	ld [bc], a
	cp l
	ld [bc], a
	add sp, $1f
	jp $c302


	ld [bc], a
	jp $c302


	ld [bc], a
	jp wd002


	ld [bc], a
	jp $c302


	ld [bc], a
	jp z, $c302

	ld [bc], a
	jp $bd02


	ld [bc], a
	add sp, $1f
	ldh [$1f], a
	ret nc

	ld [bc], a
	db $e4
	rra
	ret nc

	ld [bc], a
	jp wc702


	ld [bc], a
	cp l
	ld [bc], a
	ret nc

	ld [bc], a
	cp l
	ld [bc], a
	ret nz

	ld [bc], a
	ret nc

	ld [bc], a
	ret c

	ld [bc], a
	ret c

	ld [bc], a
	ret c

	ld [bc], a
	ret c

	ld [bc], a
	ret c

	ld [bc], a
	ret c

	ld [bc], a
	ret c

	ld [bc], a
	ret c

	ld [bc], a
	ret c

	ld [bc], a
	ret c

	ld [bc], a
	ret c

	ld [bc], a
	db $e4
	rra
	db $e4
	rra
	ret c

	ld [bc], a
	add sp, $1f
	ldh a, [$1f]
	ldh [$1f], a
	di
	rra
	di
	rra
	ei
	ld [bc], a
	ret c

	ld [bc], a
	ret c

	ld [bc], a
	ret c

	ld [bc], a
	ret c

	ld [bc], a
	cp d
	ld [bc], a
	db $eb
	ld [bc], a
	ei
	ld [bc], a
	db $eb
	ld [bc], a
	cp l
	ld [bc], a
	cp l
	ld [bc], a
	cp l
	ld [bc], a
	cp l
	ld [bc], a
	cp l
	ld [bc], a
	cp l
	ld [bc], a
	jp z, wca02

	ld [bc], a
	jp z, wca02

	ld [bc], a
	jp z, $bd02

	ld [bc], a
	ret nz

	ld [bc], a
	reti


	rra
	cp l
	ld [bc], a
	jp z, wca02

	ld [bc], a
	jp z, wca02

	ld [bc], a
	cp l
	ld [bc], a
	ldh a, [$1f]
	ldh a, [$1f]
	ldh a, [$1f]
	ldh a, [$1f]
	ldh a, [$1f]
	ldh a, [$1f]
	ldh a, [$1f]
	call nc, $bd02
	ld [bc], a
	call nc, $bd02
	ld [bc], a
	rst $00
	ld [bc], a
	cp l
	ld [bc], a
	rst $00
	ld [bc], a
	rst $00
	ld [bc], a
	ret nz

	ld [bc], a
	rst $00
	ld [bc], a
	db $e4
	rra
	db $e4
	rra
	db $e4
	rra
	db $e4
	rra
	rst $00
	ld [bc], a
	rst $00
	ld [bc], a
	db $ec
	rra
	ret nz

	ld [bc], a
	call wcd02
	ld [bc], a
	call wcd02
	ld [bc], a
	cp l
	ld [bc], a
	cp l
	ld [bc], a
	call $fb02
	ld [bc], a
	jp $c302


	ld [bc], a
	jp wc002


	ld [bc], a
	jp $bd02


	ld [bc], a
	di
	rra
	cp l
	ld [bc], a
	jp $c302


	ld [bc], a
	jp $c302


	ld [bc], a
	jp wca02


	ld [bc], a
	jp z, $c302

	ld [bc], a
	jp $e402


	rra
	db $e4
	rra
	add sp, $1f
	jp wd002


	ld [bc], a
	db $e4
	rra
	add sp, $1f
	ldh [$1f], a
	ldh [$1f], a
	ldh [$1f], a
	ldh [$1f], a
	ldh [$1f], a
	ldh [$1f], a
	ldh [$1f], a
	ldh [$1f], a
	di
	rra
	di
	rra
	di
	rra
	di
	rra
	di
	rra
	di
	rra
	di
	rra
	db $ec
	rra
	db $ec
	rra
	db $ec
	rra
	push hl
	ld [bc], a
	push hl
	ld [bc], a
	push hl
	ld [bc], a
	push hl
	ld [bc], a
	push hl
	ld [bc], a
	push hl
	ld [bc], a
	push hl
	ld [bc], a
	push hl
	ld [bc], a
	push hl
	ld [bc], a
	ldh [$1f], a
	ldh [$1f], a
	ldh [$1f], a
	rst $00
	ld [bc], a
	jp wcd02


	ld [bc], a
	add sp, $1f
	di
	rra
	di
	rra
	di
	rra
	di
	rra
	di
	rra
	di
	rra
	jp z, wca02

	ld [bc], a
	di
	rra
	di
	rra
	di
	rra
	di
	rra
	ret nz

	ld [bc], a
	ldh [$1f], a
	ldh a, [$1f]

	db $06, $06, $06

	ld b, $11
	ld b, $06
	ld b, $07
	inc d
	inc d
	db $01

	db $07, $15

	dec d
	dec d
	dec d
	ld d, $12
	ld d, $15
	ld d, $16
	ld d, $15
	dec d
	ld d, $16
	dec d
	ld d, $15
	inc d

	db $15, $14

	inc d
	inc d
	inc d

	db $12, $17, $06, $07, $11, $07

	rlca
	rlca
	dec e
	rlca
	rla
	rlca
	rla

	db $17, $18

	rla
	rla
	rla
	rlca
	dec e
	rlca
	rla
	ld [de], a
	inc d
	ld [de], a
	rlca
	rlca
	rla
	rla
	rlca
	rla
	ld [de], a
	rlca
	rlca
	rla
	dec d
	rlca
	rla
	rla
	rlca
	rla
	rla
	rlca
	rlca
	ld [de], a
	ld de, $1207
	rlca
	ld [de], a
	ld [de], a
	rlca
	rla
	ld d, $17
	rla
	rlca
	rlca
	jr jr_003_48fc

	ld de, $1818
	jr jr_003_4901

	jr jr_003_4903

	jr jr_003_490a

	dec e
	dec e
	rla
	dec e
	dec e
	dec e
	dec e
	ld d, $1d
	dec e
	dec e
	dec e
	ld d, $18
	dec e

jr_003_48fc:
	jr @+$1a

	dec d
	ld [de], a
	ld [de], a

jr_003_4901:
	ld [de], a
	ld [de], a

jr_003_4903:
	ld [de], a
	ld [de], a
	ld [de], a
	ld [de], a
	rlca
	ld [de], a
	ld [de], a

jr_003_490a:
	ld [de], a
	ld [de], a
	ld [de], a
	ld [de], a
	ld [de], a
	ld [de], a
	rla
	jr jr_003_492b

	jr jr_003_492d

	jr jr_003_492f

	jr jr_003_4920

	rla
	rlca
	rlca
	dec e
	dec e
	dec e
	dec e

jr_003_4920:
	dec e
	dec e
	ld de, $1111
	ld de, $1515
	ld de, $1d1d

jr_003_492b:
	dec e
	dec e

jr_003_492d:
	dec e
	dec e

jr_003_492f:
	dec e
	dec e
	ld b, $1d
	rla
	rla
	rla
	rlca
	rla
	rla
	rla
	rlca
	ld [de], a
	ld [de], a
	ld [de], a
	ld [de], a
	rlca
	dec d
	ld [de], a
	ld [de], a
	ld de, $1407
	ld [de], a
	ld b, $18
	ld de, $1111
	ld de, $1111
	ld bc, $0101
	ld d, $16
	ld b, $06
	ld b, $14
	dec d
	inc d
	inc d
	inc d
	ld de, $1211
	ld de, $1211
	ld de, $1111
	ld de, $1d11
	rlca
	dec e
	ld bc, $1711
	ld d, $18
	ld de, $1111
	inc de
	inc de
	ld de, $1111
	ld de, $1d1d
	dec e

	ld a, $90
	ldh [$b0], a
	ldh [rWY], a
	xor a
	ldh [$ba], a
	ld [wd100], a
	ld [wd039], a
	ldh [$b3], a
	ldh [$b2], a
	ldh [$b4], a
	ld [wcd65], a
	ld [wd522], a
	ld hl, wd6be
	ld [hli], a
	ld [hl], a
	ld hl, wcd3d
	ld bc, $001e
	call $372a
	ret


	ld a, [wd32d]
	and a
	ret z

	ld c, a
	ld hl, wd32e

jr_003_49ae:
	ld a, [wd2e0]
	cp [hl]
	jr nz, jr_003_49c9

	inc hl
	ld a, [wd2e1]
	cp [hl]
	jr nz, jr_003_49ca

	inc hl
	ld a, [hli]
	ld [wd3ae], a
	ld a, [hl]
	ldh [$8b], a
	ld hl, wd6b5
	set 2, [hl]
	ret


jr_003_49c9:
	inc hl

jr_003_49ca:
	inc hl
	inc hl
	inc hl
	dec c
	jr nz, jr_003_49ae

	ret


	ld hl, wd6b1
	bit 5, [hl]
	ret nz

	ld hl, $4a2c
	ld a, [wd2e0]
	ld b, a
	ld a, [wd2e1]
	ld c, a
	ld a, [wCurMap]
	ld d, a

jr_003_49e6:
	ld a, [hli]
	cp $ff
	ret z

	cp d
	jr nz, jr_003_4a1d

	ld a, [hli]
	cp b
	jr nz, jr_003_4a1e

	ld a, [hli]
	cp c
	jr nz, jr_003_49e6

	ld a, [wCurMap]
	cp $a1
	ld a, $02
	ld [wd5e5], a
	jr z, jr_003_4a21

	ld a, [wCurMap]
	cp $a2
	ld a, $02
	ld [wd5e7], a
	jr z, jr_003_4a21

	ld hl, wd6b1
	set 5, [hl]
	ld a, $01
	ld [wWalkBikeSurfState], a
	ld [wWalkBikeSurfStateCopy], a
	jp $2cfe


jr_003_4a1d:
	inc hl

jr_003_4a1e:
	inc hl
	jr jr_003_49e6

jr_003_4a21:
	ld a, $02
	ld [wWalkBikeSurfState], a
	ld [wWalkBikeSurfStateCopy], a
	jp $2cfe


	db $1b

	ld a, [bc]
	db $11

	db $1b

	dec bc
	db $11

	db $1d

	db $08
	db $21

	db $1d

	add hl, bc
	db $21

	db $a1

	rlca
	ld [de], a

	db $a1

	rlca
	inc de

	db $a2

	ld c, $04

	db $a2

	ld c, $05

	db $ff

	push hl
	push de
	push bc
	ld a, [$c109]
	srl a
	ld c, a
	ld b, $00
	ld hl, $4a68
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, [wd2e0]
	ld b, a
	ld a, [wd2e1]
	ld c, a
	ld de, $4a64
	push de
	jp hl


	pop bc
	pop de
	pop hl
	ret


	db $70, $4a

	ld a, d
	ld c, d
	add b
	ld c, d
	add [hl]
	ld c, d

	ld a, [wd2e7]
	add a
	dec a
	cp b
	jr z, jr_003_4a92

	jr jr_003_4a90

	ld a, b
	and a
	jr z, jr_003_4a92

	jr jr_003_4a90

	ld a, c
	and a
	jr z, jr_003_4a92

	jr jr_003_4a90

	ld a, [wd2e8]
	add a
	dec a
	cp c
	jr z, jr_003_4a92

	jr jr_003_4a90

jr_003_4a90:
	and a
	ret


jr_003_4a92:
	scf
	ret


	push hl
	push de
	push bc
	call Call_003_4bc2
	ld a, [wCurMap]
	cp $63
	jr z, jr_003_4ad6

	ld a, [$c109]
	srl a
	ld c, a
	ld b, $00
	ld hl, $4abd
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, [wcfad]
	ld de, $0001
	call $3ddb

jr_003_4ab9:
	pop bc
	pop de
	pop hl
	ret


	push bc
	ld c, d
	call wd04a
	ld c, d
	db $d3
	ld c, d
	ld bc, $1712
	dec a
	inc b
	jr @+$35

	rst $38
	ld bc, $ff5c
	ld a, [de]
	ld c, e
	rst $38
	rrca
	ld c, [hl]
	rst $38

jr_003_4ad6:
	ld a, [wcfad]
	cp $15
	jr nz, jr_003_4ae0

	scf
	jr jr_003_4ab9

jr_003_4ae0:
	and a
	jr jr_003_4ab9

	push hl
	push de
	push bc
	ld b, $06
	ld hl, $7ec1
	call $3620
	jr c, jr_003_4b0e

	ld a, [wd2e6]
	add a
	ld c, a
	ld b, $00
	ld hl, $4b12
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld de, $0001
	ld a, [wc45c]
	call $3ddb
	jr nc, jr_003_4b0e

	ld hl, wd6b5
	res 2, [hl]

jr_003_4b0e:
	pop bc
	pop de
	pop hl
	ret


	db $42, $4b, $46, $4b, $49, $4b, $4b, $4b, $46, $4b, $4f, $4b, $49, $4b

	ld c, a
	ld c, e

	db $51, $4b, $45, $4b

	ld b, l
	ld c, e
	ld [hl], b
	ld c, e
	ld b, l
	ld c, e
	ld d, l
	ld c, e
	ld [hl], h
	ld c, e
	ld l, a
	ld c, e
	ld e, d
	ld c, e
	ld e, [hl]
	ld c, e
	ld h, d
	ld c, e
	ld h, [hl]
	ld c, e
	ld l, d
	ld c, e
	ld [hl], h
	ld c, e
	ld l, h
	ld c, e
	ld [hl], d
	ld c, e

	db $1b, $58, $ff, $3b, $1a, $1c, $ff, $5e, $ff, $5a, $5c, $3a, $ff, $4a, $ff, $54
	db $5c, $32, $ff

	scf
	add hl, sp
	ld e, $4a
	rst $38
	dec d
	ld d, l
	inc b
	rst $38
	jr jr_003_4b7a

	ld [hli], a
	rst $38
	ld a, [de]
	inc e
	jr c, @+$01

	ld a, [de]
	inc e
	ld d, e
	rst $38
	inc [hl]
	rst $38
	ld b, e
	ld e, b
	jr nz, jr_003_4b8b

	inc de
	rst $38
	dec de
	dec sp
	rst $38

PrintSafariZoneSteps::
	ld a, [wCurMap]
	cp $d9

jr_003_4b7a:
	ret c

	cp $e2
	ret nc

	ld hl, wc3a0
	ld b, $03
	ld c, $07
	call $03d2
	ld hl, wc3b5

jr_003_4b8b:
	ld de, wd68c
	ld bc, $0203
	call $3c8f
	ld hl, wc3b8
	ld de, $4bb2
	call $0405
	ld hl, wc3dd
	ld de, $4bb7
	call $0405
	ld hl, wc3e1
	ld de, wd983
	ld bc, $0102
	jp $3c8f


	di
	ei
	or $f6
	ld d, b
	inc e
	db $e3
	and [hl]
	ld a, a
	ld a, a
	ld a, a
	cp d
	ld d, b

Call_003_4bbf:
	call $3ec4

Call_003_4bc2:
	ld a, [wd2e0]
	ld d, a
	ld a, [wd2e1]
	ld e, a
	ld a, [$c109]
	and a
	jr nz, jr_003_4bd6

	ld a, [wc484]
	inc d
	jr jr_003_4bf2

jr_003_4bd6:
	cp $04
	jr nz, jr_003_4be0

	ld a, [wc434]
	dec d
	jr jr_003_4bf2

jr_003_4be0:
	cp $08
	jr nz, jr_003_4bea

	ld a, [wc45a]
	dec e
	jr jr_003_4bf2

jr_003_4bea:
	cp $0c
	jr nz, jr_003_4bf2

	ld a, [wc45e]
	inc e

jr_003_4bf2:
	ld c, a
	ld [wcfad], a
	ret


Call_003_4bf7:
	xor a
	ldh [$db], a
	ld hl, wd2e0
	ld a, [hli]
	ld d, a
	ld e, [hl]
	ld a, [$c109]
	and a
	jr nz, jr_003_4c11

	ld hl, $ffdb
	set 0, [hl]
	ld a, [wc4ac]
	inc d
	jr jr_003_4c3c

jr_003_4c11:
	cp $04
	jr nz, jr_003_4c20

	ld hl, $ffdb
	set 1, [hl]
	ld a, [wc40c]
	dec d
	jr jr_003_4c3c

jr_003_4c20:
	cp $08
	jr nz, jr_003_4c2f

	ld hl, $ffdb
	set 2, [hl]
	ld a, [wc458]
	dec e
	jr jr_003_4c3c

jr_003_4c2f:
	cp $0c
	jr nz, jr_003_4c3c

	ld hl, $ffdb
	set 3, [hl]
	ld a, [wc460]
	inc e

jr_003_4c3c:
	ld c, a
	ld [wd69b], a
	ld [wcfad], a
	ret


	call Call_003_4bf7
	ld hl, wd4af
	ld a, [hli]
	ld h, [hl]
	ld l, a

jr_003_4c4d:
	ld a, [hli]
	cp $ff
	jr z, jr_003_4c6b

	cp c
	jr nz, jr_003_4c4d

	ld hl, $268f
	call $265b
	ld a, $ff
	jr c, jr_003_4c6b

	ld a, [wd69b]
	cp $15
	ld a, $ff
	jr z, jr_003_4c6b

	call Call_003_4c6f

jr_003_4c6b:
	ld [wd69b], a
	ret


Call_003_4c6f:
	ld a, [wd697]
	dec a
	swap a
	ld d, $00
	ld e, a
	ld hl, $c214
	add hl, de
	ld a, [hli]
	ldh [$dc], a
	ld a, [hl]
	ldh [$dd], a
	ld a, [wNumSprites]
	ld c, a
	ld de, $000f
	ld hl, $c214
	ldh a, [$db]
	and $03
	jr z, jr_003_4cb1

jr_003_4c92:
	inc hl
	ldh a, [$dd]
	cp [hl]
	jr nz, jr_003_4cab

	dec hl
	ld a, [hli]
	ld b, a
	ldh a, [$db]
	rrca
	jr c, jr_003_4ca5

	ldh a, [$dc]
	dec a
	jr jr_003_4ca8

jr_003_4ca5:
	ldh a, [$dc]
	inc a

jr_003_4ca8:
	cp b
	jr z, jr_003_4cd0

jr_003_4cab:
	dec c
	jr z, jr_003_4cd3

	add hl, de
	jr jr_003_4c92

jr_003_4cb1:
	ld a, [hli]
	ld b, a
	ldh a, [$dc]
	cp b
	jr nz, jr_003_4cca

	ld b, [hl]
	ldh a, [$db]
	bit 2, a
	jr nz, jr_003_4cc4

	ldh a, [$dd]
	inc a
	jr jr_003_4cc7

jr_003_4cc4:
	ldh a, [$dd]
	dec a

jr_003_4cc7:
	cp b
	jr z, jr_003_4cd0

jr_003_4cca:
	dec c
	jr z, jr_003_4cd3

	add hl, de
	jr jr_003_4cb1

jr_003_4cd0:
	ld a, $ff
	ret


jr_003_4cd3:
	xor a
	ret


	ld a, [wd6af]
	add a
	jp c, Jump_003_4d88

	ld a, [wd123]
	and a
	jp z, Jump_003_4d88

	call Call_003_4f17
	ld a, [wd100]
	and $03
	jp nz, Jump_003_4d88

	ld [wcf79], a
	ld hl, wd12f
	ld de, wd124

jr_003_4cf7:
	ld a, [hl]
	and $08
	jr z, jr_003_4d36

	dec hl
	dec hl
	ld a, [hld]
	ld b, a
	ld a, [hli]
	or b
	jr z, jr_003_4d34

	ld a, [hl]
	dec a
	ld [hld], a
	inc a
	jr nz, jr_003_4d0e

	dec [hl]
	inc hl
	jr jr_003_4d34

jr_003_4d0e:
	ld a, [hli]
	or [hl]
	jr nz, jr_003_4d34

	push hl
	inc hl
	inc hl
	ld [hl], a
	ld a, [de]
	ld [wNumSetBits], a
	push de
	ld a, [wcf79]
	ld hl, wd257
	call $2fb1
	xor a
	ld [wcd66], a
	call $3c6c
	ld a, $d0
	ldh [$8c], a
	call $13f1
	pop de
	pop hl

jr_003_4d34:
	inc hl
	inc hl

jr_003_4d36:
	inc de
	ld a, [de]
	inc a
	jr z, jr_003_4d47

	ld bc, $002c
	add hl, bc
	push hl
	ld hl, wcf79
	inc [hl]
	pop hl
	jr jr_003_4cf7

jr_003_4d47:
	ld hl, wd12f
	ld a, [wd123]
	ld d, a
	ld e, $00

jr_003_4d50:
	ld a, [hl]
	and $08
	or e
	ld e, a
	ld bc, $002c
	add hl, bc
	dec d
	jr nz, jr_003_4d50

	ld a, e
	and a
	jr z, jr_003_4d6c

	ld b, $02
	ld a, $1f
	call $3e9d
	ld a, $97
	call $0e45

jr_003_4d6c:
	ld a, $14
	call $3e9d
	ld a, d
	and a
	jr nz, jr_003_4d88

	call $3c6c
	ld a, $d1
	ldh [$8c], a
	call $13f1
	ld hl, wd6ad
	set 5, [hl]
	ld a, $ff
	jr jr_003_4d89

Jump_003_4d88:
jr_003_4d88:
	xor a

jr_003_4d89:
	ld [wd0f2], a
	ret


	call $3ec4
	push hl
	ld d, $00
	ld a, [wd2e6]
	add a
	add a
	ld b, a
	add a
	add b
	jr nc, jr_003_4d9e

	inc d

jr_003_4d9e:
	ld e, a
	ld hl, $4df7
	add hl, de
	ld de, wd4aa
	ld c, $0b

jr_003_4da8:
	ld a, [hli]
	ld [de], a
	inc de
	dec c
	jr nz, jr_003_4da8

	ld a, [hl]
	ldh [$d7], a
	xor a
	ldh [$d8], a
	pop hl
	ld a, [wd2e6]
	push hl
	push de
	ld hl, $4deb
	ld de, $0001
	call $3ddb
	pop de
	pop hl
	jr c, jr_003_4dd0

	ld a, [wd2e6]
	ld b, a
	ldh a, [$8b]
	cp b
	jr z, jr_003_4dea

jr_003_4dd0:
	ld a, [wd3ae]
	cp $ff
	jr z, jr_003_4dea

	call $2d09
	ld a, [wd2e0]
	and $01
	ld [wd2e2], a
	ld a, [wd2e1]
	and $01
	ld [wd2e3], a

jr_003_4dea:
	ret


	db $03, $0a, $0d, $11, $12, $13, $0c, $14, $16, $0f, $07, $ff, $19, $e0, $45, $00
	db $40, $ca, $01, $ff, $ff, $ff, $52, $02, $19, $70, $52, $e0, $4d, $de, $01, $ff
	db $ff, $ff, $ff, $00, $1a, $90, $53, $90, $4d, $e8, $01, $18, $19, $1e, $ff, $00
	db $1a, $d0, $69, $d0, $63, $fa, $01, $ff, $ff, $ff, $20, $01, $19, $70, $52, $e0
	db $4d, $de, $01, $ff, $ff, $ff, $ff, $00, $1a, $50, $46, $50, $40, $ee, $01, $3a
	db $ff, $ff, $ff, $02, $1a, $90, $53, $90, $4d, $e8, $01, $18, $19, $1e, $ff, $00

	ld a, [de]
	ld d, b
	ld b, [hl]
	ld d, b
	ld b, b
	xor $01
	ld a, [hld]
	rst $38
	rst $38
	rst $38
	ld [bc], a

	db $19, $80, $59, $a0, $53, $0a, $02, $ff, $ff, $ff, $ff, $00, $1a, $d0, $5b, $e0
	db $55, $14, $02, $17, $32, $ff, $ff, $00

	ld a, [de]
	ret nc

	ld e, e
	ldh [rHDMA5], a
	inc d
	ld [bc], a
	rla
	ld [hld], a
	rst $38
	rst $38
	nop
	dec de
	ldh a, [$7e]
	ld h, b
	ld a, l
	call nz, $ff01
	rst $38
	rst $38
	rst $38
	nop
	ld a, [de]
	ret nc

	ld e, e
	ldh [rHDMA5], a
	inc d
	ld [bc], a
	rla
	ld [hld], a
	rst $38
	rst $38
	nop
	dec de
	jr nc, jr_003_4eff

	sub b
	ld h, e
	rra
	ld [bc], a
	rst $38
	rst $38
	rst $38
	rst $38
	ld bc, $f019
	ld l, e
	db $10
	ld h, [hl]
	ld a, [hli]
	ld [bc], a
	rst $38
	rst $38
	rst $38
	rst $38
	ld bc, wc01b
	ld b, l
	nop
	ld b, b
	cpl
	ld [bc], a
	ld [de], a
	rst $38
	rst $38
	rst $38
	nop
	add hl, de
	ld d, b
	ld [hl], e
	ld h, b
	ld l, l
	scf
	ld [bc], a
	rst $38
	rst $38
	rst $38
	rst $38
	nop
	dec de
	ret nz

	ld d, b
	and b
	ld c, h
	ld b, c
	ld [bc], a
	rst $38
	rst $38
	rst $38
	rst $38
	ld bc, $a01b
	ld e, [hl]
	ret nz

	ld e, b
	ld c, l
	ld [bc], a
	dec d
	ld [hl], $ff
	rst $38
	nop
	add hl, de
	sub b
	ld h, c
	or b
	ld e, e
	ld d, l
	ld [bc], a
	rst $38
	rst $38
	rst $38
	rst $38
	nop
	dec de
	ret nc

	ld [hl], d
	db $10
	ld l, l
	ld e, a
	ld [bc], a
	rst $38
	rst $38
	rst $38
	rst $38
	nop
	dec de
	jr nz, jr_003_4f71

	ld [hl], b
	db $76
	ld h, [hl]
	ld [bc], a
	rlca
	rla
	rst $38
	rst $38
	nop

jr_003_4eff:
	ld a, [de]
	ret nc

	ld [hl], a
	ret nc

	ld [hl], c
	ld [hl], d
	ld [bc], a
	ld [de], a
	rst $38
	rst $38
	rst $38
	ld bc, $5019
	ld a, e
	ldh a, [rPCM12]
	add l
	ld [bc], a
	rst $38
	rst $38
	rst $38
	ld b, l
	db $01

Call_003_4f17:
	ld a, [wd984]
	and a
	ret z

	ld hl, wd9a1
	inc [hl]
	ret nz

	dec hl
	inc [hl]
	ret nz

	dec hl
	inc [hl]
	ld a, [hl]
	cp $50
	ret c

	ld a, $50
	ld [hl], a
	ret


	ld hl, $4f61
	ld a, [wCurMap]
	ld c, a
	ld b, $00
	add hl, bc
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, [hli]
	ld [wd806], a
	and a
	jr z, jr_003_4f52

	push hl
	ld de, wd807
	ld bc, $0014
	call $01bb
	pop hl
	ld bc, $0014
	add hl, bc

jr_003_4f52:
	ld a, [hli]
	ld [wd823], a
	and a
	ret z

	ld de, wd824
	ld bc, $0014
	jp $01bb


	db $53, $51, $53, $51

	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c

jr_003_4f71:
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c

	db $55, $51, $6b, $51

	xor l
	ld d, c
	dec b
	ld d, d
	ld e, l
	ld d, d
	ld [hl], e
	ld d, d
	dec c
	ld d, e
	rst $30
	ld d, d
	ld b, a
	ld d, d
	bit 2, d
	adc c
	ld d, d
	pop hl
	ld d, d
	sub l
	ld d, e
	xor e
	ld d, e
	pop bc
	ld d, e
	rst $10
	ld d, e
	db $ed
	ld d, e
	inc bc
	ld d, h
	ld [hl], c
	ld d, h
	ld [hl], c
	ld d, h
	ld c, l
	ld d, l
	add c
	ld d, c
	rst $08
	ld d, l
	dec de
	ld d, d
	db $31
	ld d, d

	db $53, $51, $53, $51, $53, $51, $53, $51, $53, $51, $53, $51

	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c

	db $53, $51, $97, $51

	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	jp wd951


	ld d, c
	rst $28
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	sbc a
	ld d, d
	cp c
	ld d, l
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld de, $5356
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	inc hl
	ld d, e

Call_003_507f:
Jump_003_507f:
	dec h
	ld d, e
	daa
	ld d, e
	dec a
	ld d, e
	ld d, e
	ld d, e
	ld l, c
	ld d, e
	ld a, a
	ld d, e
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	sbc l
	ld d, h
	or e
	ld d, h
	ret


	ld d, h
	rst $18
	ld d, h
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	push af
	ld d, h
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c

Call_003_50bb:
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	add a
	ld d, h
	ld d, e
	ld d, c
	push hl
	ld d, l
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	daa
	ld d, [hl]
	ei
	ld d, l
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	dec bc
	ld d, l
	ld hl, $3755
	ld d, l
	cpl
	ld d, h
	ld b, l
	ld d, h
	ld e, e
	ld d, h
	add hl, de
	ld d, h
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	adc l
	ld d, l
	and e
	ld d, l
	ld [hl], a
	ld d, l
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	or l
	ld d, d
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	ld d, e
	ld d, c
	rst $38
	rst $38

	db $00, $00, $19, $03, $24, $03, $a5, $03, $a5, $02, $a5, $02, $24, $03, $24, $03
	db $24, $04, $a5, $04, $24, $05, $24, $00, $19, $03, $a5, $03, $24, $04, $24, $04
	db $a5, $05, $24, $03, $70, $02, $a5, $05, $a5, $04, $70, $05, $70, $00

	add hl, de
	inc bc
	and l
	inc bc
	inc bc
	inc b
	and l
	inc b
	inc bc
	ld [bc], a
	and l
	ld [bc], a
	inc bc
	inc bc
	dec b
	dec b
	dec b
	inc bc
	rrca
	inc b
	rrca
	nop

	db $08, $04, $70, $05, $71, $03, $70, $05, $70, $04, $71, $06, $71, $04, $7c, $03
	db $7b, $03, $54, $05, $54, $00

	inc d
	ld b, $24
	dec b
	dec b
	rlca
	inc h
	ld b, $05
	rlca
	dec b
	ld [$0824], sp
	dec b
	inc bc
	ld h, h
	dec b
	ld h, h
	rlca
	ld h, h
	nop
	ld a, [bc]
	ld [$076b], sp
	ld l, e
	add hl, bc
	ld l, e
	ld [$06a9], sp
	ld l, e
	ld a, [bc]
	ld l, e
	ld a, [bc]
	xor c
	ld [$0b6d], sp
	ld l, e
	ld [$0004], sp
	ld a, [bc]
	ld [$076b], sp
	ld l, e
	rlca
	xor c
	ld [$09a9], sp
	ld l, e
	ld a, [bc]
	ld l, l
	ld a, [bc]
	ld l, e
	dec bc
	ld l, e
	add hl, bc
	inc b
	add hl, bc
	xor c
	nop
	ld a, [bc]
	add hl, bc
	ld l, e
	add hl, bc
	xor c
	ld a, [bc]
	ld l, e
	ld a, [bc]
	xor c
	dec bc
	ld l, e
	ld a, [bc]
	ld l, l
	inc c
	ld l, l
	ld a, [bc]
	inc b
	inc c
	ld l, e
	inc c
	inc b
	nop
	inc d
	ld a, [bc]
	and l
	ld a, [bc]
	dec b
	ld [$06a5], sp
	ld l, h
	ld [$0a05], sp
	ld l, h
	inc c
	and l
	inc c
	dec b
	ld [$0c6c], sp
	ld l, h
	nop
	add hl, de
	rlca
	ld [hl], b
	ld [$0c71], sp
	inc h
	inc c
	cp c
	dec c
	cp c
	ld a, [bc]
	sub h
	ld c, $b9
	dec c
	inc h
	ld [$0c94], sp
	sub h
	nop
	rrca
	ld [$0970], sp
	ld [hl], c
	dec c
	inc h
	inc c
	cp c
	dec c
	cp c
	inc c
	sub h
	ld c, $b9
	ld a, [bc]
	sub h
	rlca
	ld a, h
	ld [$007b], sp
	rrca
	db $10
	and l
	db $10
	dec b
	ld c, $a5
	dec bc
	ld l, h
	dec c
	dec b
	rrca
	ld l, h
	ld de, $11a5
	dec b
	dec c
	ld l, h
	ld de, $006c
	rrca
	dec c
	cp c
	dec c
	inc h
	rrca
	inc h
	ld a, [bc]
	add hl, sp
	inc c
	add hl, sp
	rrca
	cp c
	db $10
	cp c
	db $10
	inc h
	ld c, $39
	db $10
	add hl, sp
	nop
	rrca
	dec c
	cp c
	dec c
	inc h
	rrca
	inc h
	ld a, [bc]
	add hl, sp
	inc c
	add hl, sp
	rrca
	cp c
	db $10
	cp c
	db $10
	inc h
	ld c, $39
	db $10
	add hl, sp
	nop
	rrca
	ld c, $6c
	rrca
	dec b
	inc c
	ld l, h
	add hl, bc
	jr nc, jr_003_52a0

	dec b
	dec c
	jr nc, jr_003_52a6

	ld l, h
	ld de, $0b05
	jr nc, jr_003_52ac

jr_003_529d:
	jr nc, jr_003_529f

jr_003_529f:
	rrca

jr_003_52a0:
	db $10
	ld l, e
	ld de, $116b
	xor c

jr_003_52a6:
	rrca
	ld l, d
	db $10
	xor c
	ld [de], a
	ld l, e

jr_003_52ac:
	rrca
	ld l, e
	ld de, $0d6a
	ld [hli], a
	rrca
	ld [hli], a
	nop
	rrca
	db $10
	ld l, e
	ld de, $116b
	xor c
	rrca
	ld l, d
	db $10
	xor c
	ld [de], a
	ld l, e
	ld de, $116a
	ld [hli], a
	dec c
	ld [hli], a
	ld [de], a
	xor c
	nop
	rrca
	db $10
	ld b, $10
	dec b
	ld c, $06
	dec bc
	ld l, h
	dec c
	dec b
	rrca
	ld l, h
	ld de, $1106
	dec b
	dec c
	ld l, h
	ld de, $006c
	rrca
	jr jr_003_529d

	add hl, de
	inc h
	rla
	inc h
	jr jr_003_532b

	ld d, $b9
	ld a, [de]
	ld b, c
	ld a, [de]
	cp c
	dec de
	inc h
	inc e
	cp d
	ld e, $ba
	nop
	rrca
	ld [de], a
	inc h
	ld [de], a
	add hl, sp
	ld de, $106c
	ld hl, $2414
	inc d
	add hl, sp
	inc de
	ld l, h
	ld de, $0f21
	ld hl, $2112
	nop
	rrca
	inc de
	inc h
	inc de
	cp c
	ld de, $1639
	cp c
	ld d, $24
	ld [de], a
	add hl, sp
	ld [de], a
	ld hl, $2114
	inc de
	add hl, sp
	inc d
	add hl, sp
	nop
	nop
	nop
	nop
	nop
	ld a, [bc]
	inc d
	add hl, de
	dec d

jr_003_532b:
	add hl, de
	ld d, $19
	rla
	add hl, de
	inc de
	add hl, de
	ld [de], a
	add hl, de
	jr @+$1b

	inc d
	ld de, $1116
	add hl, de
	sub e
	nop
	ld a, [bc]
	inc d
	add hl, de
	dec d
	add hl, de
	ld d, $19
	rla
	add hl, de
	inc de
	add hl, de
	ld [de], a
	add hl, de
	add hl, de
	sub e
	inc d
	ld de, $1116
	jr jr_003_536b

	nop
	ld a, [bc]
	inc d
	add hl, de
	dec d
	add hl, de
	ld d, $19
	rla
	add hl, de
	inc de
	add hl, de
	ld [de], a
	add hl, de
	add hl, de
	sub e
	inc d
	ld de, $1116
	jr jr_003_5381

	nop
	rrca
	dec d

jr_003_536b:
	add hl, de
	ld d, $19
	rla
	add hl, de
	jr jr_003_538b

	inc d
	add hl, de
	inc de
	add hl, de
	ld a, [de]
	sub e
	ld d, $11
	jr @+$13

	inc e

jr_003_537d:
	sub e
	nop
	rrca
	dec d

jr_003_5381:
	add hl, de
	ld d, $19
	rla
	add hl, de
	jr jr_003_53a1

	inc d
	add hl, de
	inc e

jr_003_538b:
	sub e
	ld d, $11
	jr jr_003_53a1

	inc e
	sub e
	ld e, $93
	nop
	inc d
	jr @-$45

	add hl, de
	inc h
	dec de
	inc h
	jr jr_003_53df

	ld d, $b9
	ld a, [de]

jr_003_53a1:
	ld b, c
	ld a, [de]
	cp c
	add hl, de
	ld c, h
	inc e
	cp d
	ld e, $ba
	nop
	rrca
	jr @-$45

	ld a, [de]
	inc h
	rla
	ld c, h
	jr @+$43

	ld d, $b9
	ld a, [de]
	ld b, c
	ld a, [de]
	cp c
	ld e, $ba
	inc e
	sub [hl]
	ld e, $96
	nop
	rrca
	jr jr_003_537d

	ld a, [de]
	ld c, h
	rla
	inc h
	ld a, [de]
	ld b, c
	ld d, $b9
	inc e
	ld b, c
	ld a, [de]
	cp c
	ld e, $ba
	inc e
	sub [hl]
	ld e, $96
	nop
	add hl, de
	inc d
	dec b
	ld d, $05
	ld [de], a
	and l
	inc d

jr_003_53df:
	ld b, [hl]
	inc d
	and l
	ld [de], a
	ld b, [hl]
	ld d, $46
	ld d, $a5
	rla
	and [hl]
	add hl, de
	and [hl]
	nop
	add hl, de
	inc d
	dec b
	ld d, $05
	add hl, de
	and [hl]
	jr jr_003_543c

	dec de
	and [hl]
	ld a, [de]
	ld b, [hl]
	inc e
	ld b, [hl]
	dec e
	and [hl]
	add hl, de
	inc hl
	dec de
	inc hl
	nop
	add hl, de
	inc d
	dec b
	ld d, $05
	add hl, de
	and [hl]
	jr jr_003_5452

	add hl, de
	inc hl
	ld a, [de]
	ld b, [hl]
	inc e
	ld b, [hl]
	dec e
	and [hl]
	dec de
	inc hl
	dec e
	inc hl
	nop
	ld e, $16
	inc bc
	add hl, de
	ld [de], a
	ld d, $41
	jr @+$0e

	rra
	and a
	add hl, de
	inc c
	rra
	xor b
	ld e, $2e
	rla
	ld a, [de]
	rla
	jr z, jr_003_542f

jr_003_542f:
	ld e, $18
	inc bc
	ld a, [de]
	ld b, [hl]
	ld d, $6d
	add hl, de
	inc c
	ld hl, $17a7
	inc c

jr_003_543c:
	jr jr_003_544d

	add hl, de
	ld l, $19
	ld [bc], a
	inc e
	ld a, [de]
	nop
	ld e, $16
	inc bc
	ld a, [de]
	ld [de], a
	rla
	ld l, l
	add hl, de

jr_003_544d:
	inc c
	ld e, $a7
	dec de
	inc c

jr_003_5452:
	ld e, $a8
	jr nz, jr_003_54cd

	ld a, [de]
	jr z, @+$1e

	inc a
	nop
	ld e, $19
	inc bc
	ld a, [de]
	ld b, [hl]
	rla
	ld b, c
	jr jr_003_5470

	ld hl, $1aa7
	inc c
	add hl, de
	rrca
	rra
	ld [hl], a
	ld a, [de]
	inc a
	inc e
	ld [bc], a

jr_003_5470:
	nop
	nop
	dec b
	dec b
	jr jr_003_5480

	jr @+$11

	jr @+$07

	jr jr_003_5486

	jr @+$11

	jr jr_003_5494

jr_003_5480:
	jr jr_003_54a0

	jr jr_003_54a7

	jr jr_003_54ae

jr_003_5486:
	jr jr_003_5497

	ld e, $3a
	ld e, $25
	ld e, $17
	ld e, $5c
	inc e
	ld e, h
	dec d
	ld l, e

jr_003_5494:
	dec e
	add d
	inc e

jr_003_5497:
	cpl
	inc e
	rla
	ld h, $80
	nop
	ld a, [bc]
	ld e, $1b

jr_003_54a0:
	ld e, $5c
	jr nz, @+$19

	jr nz, jr_003_5502

	inc e

jr_003_54a7:
	dec h
	ld e, $3a
	ld e, $25
	inc e
	ld a, [hld]

jr_003_54ae:
	ld h, $78
	dec h
	ld e, l
	nop
	ld a, [bc]
	ld e, $3a
	ld e, $25
	jr nz, jr_003_54f4

	jr nz, jr_003_54e1

	inc e

jr_003_54bd:
	ld e, h
	ld e, $1b
	ld e, $5c
	inc e
	rla
	ld e, $82
	dec h
	ld [$0a00], sp
	rra
	dec h
	rra

jr_003_54cd:
	ld a, [hld]
	ld hl, $2125
	ld a, [hld]
	dec e

jr_003_54d3:
	ld e, h
	rra
	rla
	rra
	ld e, h
	dec e
	rla
	daa
	ld e, l
	dec h
	ld a, b
	nop
	ld a, [bc]
	rra

jr_003_54e1:
	ld e, h
	rra
	rla
	ld hl, $215c
	rla
	dec e
	dec h
	rra
	ld a, [hld]
	rra
	dec h
	dec e
	ld a, [hld]
	daa
	ld [$8220], sp

jr_003_54f4:
	nop
	ld a, [bc]
	jr nz, jr_003_552f

	ld e, $37
	ld [hli], a
	and e
	ld e, $a3
	ld [hli], a
	ld hl, $a320

jr_003_5502:
	ld e, $0d
	inc e
	and e
	dec h
	adc a
	daa
	adc b
	nop
	ld a, [bc]
	jr nz, jr_003_552f

	ld [hli], a
	scf
	ld [hli], a
	scf
	ld e, $a3
	ld e, $37
	jr nz, @-$5b

	ld e, $0d
	inc e
	and e
	daa
	adc a
	dec h
	adc b
	nop
	ld a, [bc]
	rra
	scf
	ld hl, $2321
	scf
	jr nz, jr_003_54cd

	ld [hli], a
	and e
	jr z, jr_003_54bd

	ld [hli], a

jr_003_552f:
	dec c
	ld h, $8f
	inc h
	and e
	ld a, [hli]
	adc b
	nop
	ld a, [bc]
	ld hl, $1f37
	scf
	inc hl
	ld hl, $a320
	rra
	scf
	jr z, jr_003_54d3

	ld [hli], a
	and e
	inc hl
	dec c
	ld a, [hli]
	adc a
	ld a, [hli]
	adc b
	nop
	add hl, de
	dec d
	and l
	rla
	inc h
	ld e, $a6
	rla
	and l
	dec d
	inc h
	ld e, $96
	jr nz, @-$68

	inc e
	ld e, $1e
	ld e, $20
	ld e, $05
	dec b
	jr jr_003_5570

	jr @+$11

	jr @+$07

	jr jr_003_5576

	jr @+$11

	jr jr_003_5584

jr_003_5570:
	jr jr_003_5590

	jr @+$25

	jr jr_003_559e

jr_003_5576:
	jr jr_003_5582

jr_003_5578:
	ld l, $82
	ld l, $81
	ld l, $36
	ld sp, $3174
	ld [hl], a

jr_003_5582:
	inc [hl]
	dec l

jr_003_5584:
	ld sp, $3426
	ld l, $35

jr_003_5589:
	ld d, l
	dec [hl]
	ld c, h
	nop
	rrca
	inc sp
	ld [hl], h

jr_003_5590:
	inc sp
	ld [hl], a
	inc sp

jr_003_5593:
	ld h, $34
	ld bc, $9134
	inc [hl]
	adc l
	jr c, jr_003_55c4

	ld [hl], $65

jr_003_559e:
	scf
	ld c, h
	inc a
	ld c, h
	nop
	add hl, de
	scf
	ld bc, $9137
	scf
	adc l
	ld b, b
	jr z, jr_003_55ed

	ld l, $40
	ld d, l
	add hl, sp
	dec l
	ld b, c
	ld c, h
	ccf
	ld c, h
	ld b, e
	ld c, h
	nop
	ld a, [bc]
	dec d
	ld b, $15
	xor l
	inc d
	ld d, h
	jr jr_003_5616

	rla
	xor l

jr_003_55c4:
	rla
	ld b, $20
	ld [hl], $23
	ld [hl], $21
	dec [hl]
	inc h
	dec [hl]
	nop
	ld a, [bc]
	ld a, [de]
	ld l, h
	ld hl, $1a4c
	dec b
	ld h, $23
	ld h, $4c
	ld h, $23
	add hl, hl
	dec l
	dec hl
	ld c, h
	add hl, hl
	inc hl
	dec hl
	inc hl
	nop
	ld a, [bc]
	ld d, $6a
	jr jr_003_5593

	ld a, [de]
	ld l, e
	inc h

jr_003_55ed:
	ld [hli], a
	daa
	ld [hli], a
	ld a, [hli]
	ld [hli], a
	add hl, hl
	add hl, hl
	jr z, jr_003_5578

	jr z, jr_003_5589

	dec hl
	daa
	nop
	rrca
	jr jr_003_5668

	ld a, [de]
	xor c
	ld d, $6b
	ld a, [hli]
	ld [hli], a
	jr z, @+$79

	dec l
	ld [hli], a
	dec hl
	daa
	add hl, hl
	add d
	ld a, [hli]
	add hl, hl
	dec l
	add hl, hl
	nop
	rrca
	jr @+$6c

	ld a, [de]
	xor c

jr_003_5616:
	ld d, $6b
	inc h
	ld [hli], a
	daa
	ld [hli], a
	ld a, [hli]
	ld [hli], a
	add hl, hl
	daa
	add hl, hl
	add d
	ld a, [hli]
	add hl, hl
	dec hl
	sub c
	nop
	inc d
	ld [de], a
	dec sp
	inc de
	dec sp
	ld de, $143b
	dec sp
	db $10
	dec sp
	rrca
	dec sp
	dec d
	dec sp
	ld d, $3b
	dec e
	db $76

Call_003_563a:
	rra
	halt
	nop

	ld a, $01
	ld [wcd65], a
	ld a, [wcf78]
	cp $c4
	jp nc, Jump_003_663a

	ld hl, $5657
	dec a
	add a
	ld c, a
	ld b, $00
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl


	db $fd
	ld d, [hl]
	db $fd
	ld d, [hl]
	db $fd
	ld d, [hl]

	db $fd, $56

	add d
	ld e, d
	sub c
	ld e, d
	adc $5a
	db $fd
	ld d, [hl]
	ld [hl], d

jr_003_5668:
	ld e, e
	ld [hl], a
	ld e, e

	db $d7, $5b

	rst $10
	ld e, e
	rst $10
	ld e, e
	rst $10
	ld e, e
	rst $10
	ld e, e
	rst $10
	ld e, e
	rst $10
	ld e, e
	rst $10
	ld e, e
	rst $10
	ld e, e

	db $d7, $5b

	ld d, c
	ld h, b
	ld h, [hl]
	ld h, b
	scf
	ld h, [hl]
	scf
	ld h, [hl]
	scf
	ld h, [hl]
	scf
	ld h, [hl]
	scf
	ld h, [hl]
	scf
	ld h, [hl]
	cp [hl]
	ld h, b
	ld [de], a
	ld h, c
	scf
	ld h, [hl]
	ld [hl], a
	ld e, e
	ld [hl], a
	ld e, e
	ld [hl], a
	ld e, e
	ret nc

	ld e, e
	ret nc

	ld e, e
	ret nc

	ld e, e
	ret nc

	ld e, e
	ret nc

	ld e, e
	ret nc

	ld e, e
	scf
	ld h, [hl]
	scf
	ld h, [hl]
	scf
	ld h, [hl]
	scf
	ld h, [hl]
	scf
	ld h, [hl]
	ld [hli], a
	ld h, c
	ld [hl], a
	ld e, e
	ld sp, $3761
	ld h, [hl]
	scf
	ld h, [hl]
	call c, wd761
	ld e, e
	rst $10
	ld e, e
	rst $10
	ld e, e
	db $eb
	ld h, c
	ld a, [$ff61]
	ld h, c
	inc b
	ld h, d
	scf
	ld h, [hl]
	rst $10
	ld e, e
	rst $10
	ld e, e
	rst $10
	ld e, e
	scf
	ld h, [hl]
	scf
	ld h, [hl]
	inc de
	ld h, d
	inc de
	ld h, d
	inc de
	ld h, d
	inc de
	ld h, d
	ld a, e
	ld h, e
	dec l
	ld h, h
	jr nc, @+$66

	scf
	ld h, [hl]
	ld c, a
	ld h, d
	scf
	ld h, [hl]
	scf
	ld h, [hl]
	sbc e
	ld h, e
	xor b
	ld h, e
	jp nc, $9c63

	ld h, h
	and e
	ld h, h
	and e
	ld h, h
	and e
	ld h, h
	and e
	ld h, h

	ld a, [wd034]
	and a
	jp z, Jump_003_679f

	dec a
	jp nz, Jump_003_67a9

	ld a, [wd123]
	cp $06
	jr nz, jr_003_5717

	ld a, [wd9b2]
	cp $1e
	jp z, Jump_003_67cf

jr_003_5717:
	xor a
	ld [wd0e1], a
	ld a, [wd037]
	cp $02
	jr nz, jr_003_5726

	ld hl, wd983
	dec [hl]

jr_003_5726:
	call $3e1d
	ld a, $43
	ld [wNumSetBits], a
	call $376d
	ld hl, $68a9
	call $3c79
	ld hl, $59a0
	ld b, $0f
	call $3620
	ld b, $10
	jp z, Jump_003_5871

	ld a, [wd037]
	dec a
	jr nz, jr_003_5759

	ld hl, wd806
	ld de, wd11d
	ld bc, $0006
	call $01bb
	jp Jump_003_57fb


jr_003_5759:
	ld a, [wCurMap]
	cp $93
	jr nz, jr_003_576a

	ld a, [wcfbf]
	cp $91
	ld b, $10
	jp z, Jump_003_5871

jr_003_576a:
	call $3e8c
	ld b, a
	ld hl, wcf78
	ld a, [hl]
	cp $01
	jp z, Jump_003_57fb

	cp $04
	jr z, jr_003_578a

	ld a, $c8
	cp b
	jr c, jr_003_576a

	ld a, [hl]
	cp $03
	jr z, jr_003_578a

	ld a, $96
	cp b
	jr c, jr_003_576a

jr_003_578a:
	ld a, [wcfd0]
	and a
	jr z, jr_003_579e

	and $27
	ld c, $0c
	jr z, jr_003_5798

	ld c, $19

jr_003_5798:
	ld a, b
	sub c
	jp c, Jump_003_57fb

	ld b, a

jr_003_579e:
	push bc
	xor a
	ldh [$96], a
	ld hl, wcfdb
	ld a, [hli]
	ldh [$97], a
	ld a, [hl]
	ldh [$98], a
	ld a, $ff
	ldh [$99], a
	call $38f5
	ld a, [wcf78]
	cp $03
	ld a, $0c
	jr nz, jr_003_57bd

	ld a, $08

jr_003_57bd:
	ldh [$99], a
	ld b, $04
	call $3902
	ld hl, wcfcd
	ld a, [hli]
	ld b, a
	ld a, [hl]
	srl b
	rr a
	srl b
	rr a
	and a
	jr nz, jr_003_57d6

	inc a

jr_003_57d6:
	ldh [$99], a
	ld b, $04
	call $3902
	ldh a, [$97]
	and a
	jr z, jr_003_57e6

	ld a, $ff
	ldh [$98], a

jr_003_57e6:
	pop bc
	ld a, [wcfee]
	cp b
	jr c, jr_003_57fd

	ldh a, [$97]
	and a
	jr nz, jr_003_57fb

	call $3e8c
	ld b, a
	ldh a, [$98]
	cp b
	jr c, jr_003_57fd

Jump_003_57fb:
jr_003_57fb:
	jr jr_003_5875

jr_003_57fd:
	ldh a, [$98]
	ld [wNumSetBits], a
	xor a
	ldh [$96], a
	ldh [$97], a
	ld a, [wcfee]
	ldh [$98], a
	ld a, $64
	ldh [$99], a
	call $38f5
	ld a, [wcf78]
	ld b, $ff
	cp $04
	jr z, jr_003_5828

	ld b, $c8
	cp $03
	jr z, jr_003_5828

	ld b, $96
	cp $02
	jr z, jr_003_5828

jr_003_5828:
	ld a, b
	ldh [$99], a
	ld b, $04
	call $3902
	ldh a, [$97]
	and a
	ld b, $63
	jr nz, jr_003_5871

	ld a, [wNumSetBits]
	ldh [$99], a
	call $38f5
	ld a, $ff
	ldh [$99], a
	ld b, $04
	call $3902
	ld a, [wcfd0]
	and a
	jr z, jr_003_585b

	and $27
	ld b, $05
	jr z, jr_003_5856

	ld b, $0a

jr_003_5856:
	ldh a, [$98]
	add b
	ldh [$98], a

jr_003_585b:
	ldh a, [$98]
	cp $0a
	ld b, $20
	jr c, jr_003_5871

	cp $1e
	ld b, $61
	jr c, jr_003_5871

	cp $46
	ld b, $62
	jr c, jr_003_5871

	ld b, $63

Jump_003_5871:
jr_003_5871:
	ld a, b
	ld [wNumSetBits], a

jr_003_5875:
	ld c, $14
	call $3781
	ld a, $c1
	ld [wd059], a
	xor a
	ldh [$f3], a
	ld [wcc5b], a
	ld [wd038], a
	ld a, [wcf79]
	push af
	ld a, [wcf78]
	push af
	ld a, $08
	call $3e9d
	pop af
	ld [wcf78], a
	pop af
	ld [wcf79], a
	ld a, [wNumSetBits]
	cp $10
	ld hl, $59a7
	jp z, Jump_003_5992

	cp $20
	ld hl, $59c0
	jp z, Jump_003_5992

	cp $61
	ld hl, $59d1
	jp z, Jump_003_5992

	cp $62
	ld hl, $59e9
	jp z, Jump_003_5992

	cp $63
	ld hl, $59fd
	jp z, Jump_003_5992

	ld hl, wcfcd
	ld a, [hli]
	push af
	ld a, [hli]
	push af
	inc hl
	ld a, [hl]
	push af
	push hl
	ld hl, wd046
	bit 3, [hl]
	jr z, jr_003_58e1

	ld a, $4c
	ld [wcfbf], a
	jr jr_003_58ee

jr_003_58e1:
	set 3, [hl]
	ld hl, wcceb
	ld a, [wcfd8]
	ld [hli], a
	ld a, [wcfd9]
	ld [hl], a

jr_003_58ee:
	ld a, [wcf78]
	push af
	ld a, [wcfbf]
	ld [wcf78], a
	ld a, [wcfda]
	ld [wd0ec], a
	ld hl, $6df1
	ld b, $0f
	call $3620
	pop af
	ld [wcf78], a
	pop hl
	pop af
	ld [hld], a
	dec hl
	pop af
	ld [hld], a
	pop af
	ld [hl], a
	ld a, [wcfcc]
	ld [wd0e1], a
	ld [wcf78], a
	ld [wNumSetBits], a
	ld a, [wd037]
	dec a
	jr z, jr_003_598f

	ld hl, $5a16
	call $3c79
	ld a, $3a
	call $3e9d
	ld a, [wNumSetBits]
	dec a
	ld c, a
	ld b, $02
	ld hl, wd27b
	ld a, $10
	call $3e9d
	ld a, c
	push af
	ld a, [wNumSetBits]
	dec a
	ld c, a
	ld b, $01
	ld a, $10
	call $3e9d
	pop af
	and a
	jr nz, jr_003_5964

	ld hl, $5a5f
	call $3c79
	call $0188
	ld a, [wcfcc]
	ld [wNumSetBits], a
	ld a, $3d
	call $3e9d

jr_003_5964:
	ld a, [wd123]
	cp $06
	jr z, jr_003_5977

	xor a
	ld [wcc49], a
	call $0188
	call $3971
	jr jr_003_5998

jr_003_5977:
	call $0188
	call $6aaf
	ld hl, $5a2f
	ld a, [wd770]
	bit 0, a
	jr nz, jr_003_598a

	ld hl, $5a48

jr_003_598a:
	call $3c79
	jr jr_003_5998

jr_003_598f:
	ld hl, $5a16

Jump_003_5992:
	call $3c79
	call $0188

jr_003_5998:
	ld a, [wd037]
	and a
	ret nz

	ld hl, wd2a1
	inc a
	ld [wcf7d], a
	jp $16cc


	nop
	sub $b9
	rst $10
	jp c, $e7c0

	ld c, a
	cp d
	or d
	jp nz, Jump_003_7fca

	jp nz, wcfb6

	ret c

	cp a
	or e
	add $c5
	or d
	cpl
	rst $20
	ld e, b
	nop
	ld d, h
	add $4f
	or e
	rst $08
	cp b
	ld a, a
	or c
	ret nz

	rst $10
	push bc
	or [hl]
	rst $18
	ret nz

	rst $20
	ld e, b
	nop
	dec hl
	sbc $c8
	sbc $e7
	ld a, a
	ld d, h
	ld h, $4f
	inc e
	db $e3
	and [hl]
	or [hl]
	rst $10
	ld a, a
	inc sp
	jp wcfbc


	rst $18
	ret nz

	rst $20
	ld e, b
	nop
	or c
	or c
	rst $20
	ld c, a
	jp nz, wcfb6

	or h
	ret nz

	call nz, $b57f
	db $d3
	rst $18
	ret nz

	ret


	add $e7
	ld e, b
	nop
	or l
	cp h
	or d
	rst $20
	ld c, a
	or c
	call nz, $c17f
	ld [c], a
	rst $18
	call nz, Call_003_7fc9
	call nz, wdbba
	jr nc, @-$1f

	ret nz

	ret


	add $e7
	ld e, b

	db $00, $d4, $df, $c0, $e3, $e7, $4f, $50, $01, $c1, $cf, $00, $dd, $7f, $c2, $b6
	db $cf, $b4, $c0, $2f, $e7, $50, $12, $06, $50

	ld bc, wde64
	nop
	jp z, $9d7f

	adc d
	add [hl]
	ret


	ld a, a
	call nz, wdbba
	call $c34f
	sbc $bf
	or e
	cp e
	jp c, $e7c0

	ld e, b
	ld bc, wde64
	nop
	jp z, $307f

	jp c, wc9b6

	ld a, a
	ld e, e
	add $4f
	jp $bfde


	or e
	cp e
	jp c, $e7c0

	ld e, b
	ld bc, wcfc1
	nop
	ret


	ld a, a
	ld [de], a
	db $e3
	adc a
	ld h, $7f
	or c
	ret nz

	rst $10
	cp h
	cp b
	ld c, a
	ld d, h
	dec l
	or [hl]
	sbc $c6
	ld a, a
	adc l
	db $e3
	dec de
	cp e
	jp c, $bdcf

	rst $20
	ld d, b
	inc de
	ld b, $50
	ld a, [wd034]
	and a
	jp nz, Jump_003_679f

	ld b, $1c
	ld hl, $53aa
	jp $3620


	ld a, [wd034]
	and a
	jp nz, Jump_003_679f

	ld a, [wWalkBikeSurfState]
	ld [wWalkBikeSurfStateCopy], a
	cp $02
	jp z, Jump_003_679f

	dec a
	jr nz, jr_003_5ab5

	call Call_003_6cd0
	xor a
	ld [wWalkBikeSurfState], a
	call $0d9b
	ld hl, $68c9
	jr jr_003_5acb

jr_003_5ab5:
	call $23dc
	jp nc, Jump_003_67ca

	call Call_003_6cd0
	xor a
	ldh [$b4], a
	inc a
	ld [wWalkBikeSurfState], a
	ld hl, $68ba
	call $0d9b

jr_003_5acb:
	jp $3c79


	ld a, [wWalkBikeSurfState]
	ld [wWalkBikeSurfStateCopy], a
	cp $02
	jr z, jr_003_5af4

	call Call_003_6bc3
	jp c, Jump_003_67d4

	call Call_003_5b31
	ld hl, wd6af
	set 7, [hl]
	ld a, $02
	ld [wWalkBikeSurfState], a
	call $0d9b
	ld hl, $5b55
	jp $3c79


jr_003_5af4:
	xor a
	ldh [$8c], a
	ld d, $10
	call $2584
	res 7, [hl]
	ldh a, [$8c]
	and a
	jr nz, jr_003_5b15

	ld hl, wd4af
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, [wcfad]
	ld b, a

jr_003_5b0d:
	ld a, [hli]
	cp b
	jr z, jr_003_5b1b

	cp $ff
	jr nz, jr_003_5b0d

jr_003_5b15:
	ld hl, $5b64
	jp $3c79


jr_003_5b1b:
	call Call_003_5b31
	ld hl, wd6af
	set 7, [hl]
	xor a
	ld [wWalkBikeSurfState], a
	dec a
	ld [wcd66], a
	call $0d9b
	jp $2a5e


Call_003_5b31:
	ld a, [wd4a9]
	bit 3, a
	ld b, $40
	jr nz, jr_003_5b48

	bit 2, a
	ld b, $80
	jr nz, jr_003_5b48

	bit 1, a
	ld b, $20
	jr nz, jr_003_5b48

	ld b, $10

jr_003_5b48:
	ld a, b
	ld [wccd3], a
	xor a
	ld [wcd39], a
	inc a
	ld [wcd38], a
	ret


	nop
	ld d, d
	jp z, Jump_003_507f

	ld bc, wcd68
	nop
	add $c9
	rst $18
	ret nz

	rst $20
	ld e, b
	nop
	or l
	ret c

	reti


	ld a, a
	ld a, [hld]
	cp h
	ld [c], a
	ld h, $7f
	push bc
	or d
	rst $20
	ld e, b
	ld a, $29
	jp $3e9d


	ld a, [wd034]
	and a
	jp nz, Jump_003_679f

	ld a, [wcf79]
	push af
	ld a, [wcf78]
	ld [wd11b], a
	push af
	ld a, $05
	ld [wd05a], a
	ld a, $ff
	ld [wUpdateSpritesEnabled], a
	call $2df3
	pop bc
	jr c, jr_003_5bca

	ld a, b
	ld [wcf78], a
	ld a, $01
	ld [wccd4], a
	ld a, $8e
	call $3788
	call $3790
	ld hl, $70a1
	ld b, $0e
	call $3620
	ld a, [wd0e6]
	and a
	jr z, jr_003_5bc7

	pop af
	ld [wcf79], a
	ld hl, wd2a1
	ld a, $01
	ld [wcf7d], a
	jp $16cc


jr_003_5bc7:
	call Call_003_679a

jr_003_5bca:
	xor a
	ld [wcd65], a
	pop af
	ret


	ld a, [wd034]
	and a
	jp nz, Jump_003_679f

jr_003_5bd7:
	ld a, [wcf79]
	push af
	ld a, [wcf78]
	push af
	ld a, $01
	ld [wd05a], a
	ld a, $ff
	ld [wUpdateSpritesEnabled], a
	ld a, [wd117]
	and a
	jr z, jr_003_5bf4

	call $2e08
	jr jr_003_5bf7

jr_003_5bf4:
	call $2df3

jr_003_5bf7:
	jp c, Jump_003_5ebd

	ld hl, wd12b
	ld bc, $002c
	ld a, [wcf79]
	call $3ad1
	ld a, [wcf79]
	ld [wcf01], a
	ld d, a
	ld a, [wcf78]
	ld e, a
	ld [wd092], a
	pop af
	ld [wcf78], a
	pop af
	ld [wcf79], a
	ld a, [wd117]
	and a
	jr z, jr_003_5c28

	ld a, [wcf79]
	cp d
	jr z, jr_003_5bd7

jr_003_5c28:
	ld a, [wcf78]
	cp $35
	jr nc, jr_003_5c9b

	cp $34
	jr z, jr_003_5c3c

	cp $23
	jp nc, Jump_003_5ed6

	cp $10
	jr nc, jr_003_5c9b

Jump_003_5c3c:
jr_003_5c3c:
	ld bc, $0004
	add hl, bc
	ld a, [wcf78]
	ld bc, $f008
	cp $0b
	jr z, jr_003_5c69

	ld bc, $f110
	cp $0c
	jr z, jr_003_5c69

	ld bc, $f220
	cp $0d
	jr z, jr_003_5c69

	ld bc, $f307
	cp $0e
	jr z, jr_003_5c69

	ld bc, $f440
	cp $0f
	jr z, jr_003_5c69

	ld bc, $f6ff

jr_003_5c69:
	ld a, [hl]
	and c
	jp z, Jump_003_5e59

	xor a
	ld [hl], a
	ld a, b
	ld [wd05a], a
	ld a, [wcc2f]
	cp d
	jp nz, Jump_003_5e5f

	xor a
	ld [wcfff], a
	push hl
	ld hl, wd041
	res 0, [hl]
	pop hl
	ld bc, $001e
	add hl, bc
	ld de, wd00a
	ld bc, $000a
	call $01bb
	ld a, $28
	call $3e9d
	jp Jump_003_5e5f


jr_003_5c9b:
	inc hl
	ld a, [hli]
	ld b, a
	ld [wcee7], a
	ld a, [hl]
	ld c, a
	ld [wcee6], a
	or b
	jr nz, jr_003_5ce5

	ld a, [wcf78]
	cp $35
	jr z, jr_003_5cb7

	cp $36
	jr z, jr_003_5cb7

	jp Jump_003_5e59


jr_003_5cb7:
	ld a, [wd034]
	and a
	jr z, jr_003_5cf2

	push hl
	push de
	push bc
	ld a, [wcf01]
	ld c, a
	ld hl, wccf5
	ld b, $02
	ld a, $10
	call $3e9d
	ld a, c
	and a
	jr z, jr_003_5ce0

	ld a, [wcf01]
	ld c, a
	ld hl, wd035
	ld b, $01
	ld a, $10
	call $3e9d

jr_003_5ce0:
	pop bc
	pop de
	pop hl
	jr jr_003_5cf2

jr_003_5ce5:
	ld a, [wcf78]
	cp $35
	jp z, Jump_003_5e59

	cp $36
	jp z, Jump_003_5e59

jr_003_5cf2:
	push hl
	push bc
	ld bc, $0020
	add hl, bc
	pop bc
	ld a, [hli]
	cp b
	jr nz, jr_003_5cff

	ld a, [hl]
	cp c

jr_003_5cff:
	pop hl
	jr nz, jr_003_5d1c

	ld a, [wcf78]
	cp $10
	jp nz, Jump_003_5e59

	inc hl
	inc hl
	ld a, [hld]
	and a
	jp z, Jump_003_5e59

	ld a, $34
	ld [wcf78], a
	dec hl
	dec hl
	dec hl
	jp Jump_003_5c3c


jr_003_5d1c:
	xor a
	ld [wd060], a
	ld [wc02a], a
	push hl
	push de
	ld bc, $0020
	add hl, bc
	ld a, [hli]
	ld [wcee5], a
	ld a, [hl]
	ld [wcee4], a
	ld a, [wd117]
	and a
	jp z, Jump_003_5dab

	ld hl, wcee4
	ld a, [hli]
	push af
	ld a, [hli]
	push af
	ld a, [hli]
	push af
	ld a, [hl]
	push af
	ld hl, wd14d
	ld a, [wcf79]
	ld bc, $002c
	call $3ad1
	ld a, [hli]
	ld [wcee5], a
	ldh [$95], a
	ld a, [hl]
	ld [wcee4], a
	ldh [$96], a
	ld a, $05
	ldh [$99], a
	ld b, $02
	call $3902
	ld bc, $ffdf
	add hl, bc
	ldh a, [$98]
	push af
	ld b, a
	ld a, [hl]
	ld [wcee6], a
	sub b
	ld [hld], a
	ld [wcee8], a
	ldh a, [$97]
	ld b, a
	ld a, [hl]
	ld [wcee7], a
	sbc b
	ld [hl], a
	ld [wcee9], a
	ld hl, wc3ab
	ld a, [wcf79]
	ld bc, $0028
	call $3ad1
	ld a, $8d
	call $3788
	ld a, $02
	ld [wListMenuID], a
	ld a, $48
	call $3e9d
	pop af
	ld b, a
	ld hl, wcee7
	pop af
	ld [hld], a
	pop af
	ld [hld], a
	pop af
	ld [hld], a
	pop af
	ld [hl], a
	jr jr_003_5dca

Jump_003_5dab:
	ld a, [wcf78]
	cp $3d
	ld b, $3c
	jr z, jr_003_5dca

	ld b, $50
	jr nc, jr_003_5dca

	cp $3c
	ld b, $32
	jr z, jr_003_5dca

	cp $13
	ld b, $c8
	jr c, jr_003_5dca

	ld b, $32
	jr z, jr_003_5dca

	ld b, $14

jr_003_5dca:
	pop de
	pop hl
	ld a, [hl]
	add b
	ld [hld], a
	ld [wcee8], a
	ld a, [hl]
	ld [wcee9], a
	jr nc, jr_003_5ddd

	inc [hl]
	ld a, [hl]
	ld [wcee9], a

jr_003_5ddd:
	push de
	inc hl
	ld d, h
	ld e, l
	ld hl, $0021
	add hl, de
	ld a, [wcf78]
	cp $35
	jr z, jr_003_5e03

	ld a, [hld]
	ld b, a
	ld a, [de]
	sub b
	dec de
	ld b, [hl]
	ld a, [de]
	sbc b
	jr nc, jr_003_5e17

	ld a, [wcf78]
	cp $12
	jr c, jr_003_5e17

	cp $36
	jr z, jr_003_5e17

	jr jr_003_5e30

jr_003_5e03:
	dec hl
	dec de
	ld a, [hli]
	srl a
	ld [de], a
	ld [wcee9], a
	ld a, [hl]
	rr a
	inc de
	ld [de], a
	ld [wcee8], a
	dec de
	jr jr_003_5e23

jr_003_5e17:
	ld a, [hli]
	ld [de], a
	ld [wcee9], a
	inc de
	ld a, [hl]
	ld [de], a
	ld [wcee8], a
	dec de

jr_003_5e23:
	ld a, [wcf78]
	cp $10
	jr nz, jr_003_5e30

	ld bc, $ffe1
	add hl, bc
	xor a
	ld [hl], a

jr_003_5e30:
	ld h, d
	ld l, e
	pop de
	ld a, [wcc2f]
	cp d
	jr nz, jr_003_5e4c

	ld a, [hli]
	ld [wcffc], a
	ld a, [hld]
	ld [wcffd], a
	ld a, [wcf78]
	cp $10
	jr nz, jr_003_5e4c

	xor a
	ld [wcfff], a

jr_003_5e4c:
	ld hl, wOAMBuffer + $83
	ld bc, $0028
	inc d

jr_003_5e53:
	add hl, bc
	dec d
	jr nz, jr_003_5e53

	jr jr_003_5e5f

Jump_003_5e59:
	call Call_003_679a
	jp Jump_003_5ec3


Jump_003_5e5f:
jr_003_5e5f:
	ld a, [wd117]
	and a
	jr nz, jr_003_5e6a

	push hl
	call Call_003_678f
	pop hl

jr_003_5e6a:
	ld a, [wcf78]
	cp $10
	jr c, jr_003_5e9b

	cp $34
	jr z, jr_003_5e9b

	ld a, $8d
	call $3788
	ld a, $02
	ld [wListMenuID], a
	ld a, $48
	call $3e9d
	ld a, $f7
	ld [wd05a], a
	ld a, [wcf78]
	cp $35
	jr z, jr_003_5ea0

	cp $36
	jr z, jr_003_5ea0

	ld a, $f5
	ld [wd05a], a
	jr jr_003_5ea0

jr_003_5e9b:
	ld a, $8e
	call $3788

jr_003_5ea0:
	xor a
	ld [$ffba], a
	call $03bf
	dec a
	ld [wUpdateSpritesEnabled], a
	call $2ed0
	ld a, $01
	ld [$ffba], a
	ld c, $32
	call $3781
	call $38ae
	jr jr_003_5ec3

Jump_003_5ebd:
	xor a
	ld [wcd65], a
	pop af
	pop af

Jump_003_5ec3:
jr_003_5ec3:
	ld a, [wd117]
	and a
	ret nz

	call $3e15
	call z, $3e1d
	ld a, [wd034]
	and a
	ret nz

	jp $1b86


Jump_003_5ed6:
	push hl
	ld a, [hl]
	ld [wd092], a
	ld [wNumSetBits], a
	ld bc, $0021
	add hl, bc
	ld a, [hl]
	ld [wd0ec], a
	call $2f2e
	push de
	ld a, d
	ld hl, wd257
	call $2fb1
	pop de
	pop hl
	ld a, [wcf78]
	cp $28
	jp z, Jump_003_5f5f

	push hl
	sub $23
	add a
	ld bc, $0011
	add hl, bc
	add l
	ld l, a
	jr nc, jr_003_5f08

	inc h

jr_003_5f08:
	ld a, $0a
	ld b, a
	ld a, [hl]
	cp $64
	jr nc, jr_003_5f46

	add b
	jr nc, jr_003_5f15

	ld a, $ff

jr_003_5f15:
	ld [hl], a
	pop hl
	call Call_003_5f50
	ld hl, $602c
	ld a, [wcf78]
	sub $22
	ld c, a

jr_003_5f23:
	dec c
	jr z, jr_003_5f2f

jr_003_5f26:
	ld a, [hli]
	ld b, a
	ld a, $50
	cp b
	jr nz, jr_003_5f26

	jr jr_003_5f23

jr_003_5f2f:
	ld de, wcf45
	ld bc, $000a
	call $01bb
	ld a, $8e
	call $0e45
	ld hl, $6000
	call $3c79
	jp Jump_003_678f


jr_003_5f46:
	pop hl
	ld hl, $601c
	call $3c79
	jp $3e15


Call_003_5f50:
	ld bc, $0022
	add hl, bc
	ld d, h
	ld e, l
	ld bc, $ffee
	add hl, bc
	ld b, $01
	jp $3980


Jump_003_5f5f:
	push hl
	ld bc, $0021
	add hl, bc
	ld a, [hl]
	cp $64
	jr z, jr_003_5f46

	inc a
	ld [hl], a
	ld [wd0ec], a
	push hl
	push de
	ld d, a
	ld hl, $4fb5
	ld b, $16
	call $3620
	pop de
	pop hl
	ld bc, $ffed
	add hl, bc
	ldh a, [$96]
	ld [hli], a
	ldh a, [$97]
	ld [hli], a
	ldh a, [$98]
	ld [hl], a
	pop hl
	ld a, [wcf79]
	push af
	ld a, [wcf78]
	push af
	push de
	push hl
	ld bc, $0022
	add hl, bc
	ld a, [hli]
	ld b, a
	ld c, [hl]
	pop hl
	push bc
	push hl
	call Call_003_5f50
	pop hl
	ld bc, $0023
	add hl, bc
	pop bc
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
	ld a, $f8
	ld [wd05a], a
	call $2ed0
	pop de
	ld a, d
	ld [wcf79], a
	ld a, e
	ld [wNumSetBits], a
	xor a
	ld [wcc49], a
	call $2d68
	ld d, $01
	ld hl, $782c
	ld b, $04
	call $3620
	call $38ae
	xor a
	ld [wcc49], a
	ld a, $1a
	call $3e9d
	xor a
	ld [wccd4], a
	ld hl, $70a1
	ld b, $0e
	call $3620
	ld a, $01
	ld [wUpdateSpritesEnabled], a
	pop af
	ld [wcf78], a
	pop af
	ld [wcf79], a
	jp Jump_003_678f


	ld bc, wcd68
	nop
	ret


	ld a, a
	ld d, b
	ld bc, wcf45
	nop
	ret


	ld c, a
	or a
	cp a
	ld a, a
	ld b, e
	add c
	xor e
	sub e
	ld h, $7f
	or c
	ld h, $df
	ret nz

	rst $20
	ld e, b
	nop
	jp nz, wdfb6

	jp $7fd3


	cp d
	or e
	or [hl]
	ld h, $7f
	push bc
	or d
	sub $58
	ret nz

	or d
	ret c

	ld [c], a
	cp b
	ld d, b
	cp d
	or e
	add hl, hl
	or a
	ret c

	ld [c], a
	cp b
	ld d, b
	ld a, $b3
	daa
	ld [c], a
	ret c

	ld [c], a
	cp b
	ld d, b
	cp l
	ld a, [hld]
	call nc, Call_003_50bb
	call nz, $bcb8
	pop hl
	ret


	or e
	ret c

	ld [c], a
	cp b
	ld d, b
	ld hl, $60a4
	call $3c79
	ld hl, wcfee
	srl [hl]
	ld a, $ca
	ld hl, wcce9
	ld de, wcce8
	jr jr_003_607e

	ld hl, $60b1
	call $3c79
	ld hl, wcfee
	ld a, [hl]
	add a
	jr nc, jr_003_6075

	ld a, $ff

jr_003_6075:
	ld [hl], a
	ld a, $c9
	ld hl, wcce8
	ld de, wcce9

jr_003_607e:
	ld [wd059], a
	xor a
	ld [wcc5b], a
	ldh [$f3], a
	ld [de], a

jr_003_6088:
	call $3e8c
	and $07
	cp $05
	jr nc, jr_003_6088

	inc a
	ld b, a
	ld a, [hl]
	add b
	jr nc, jr_003_6099

	ld a, $ff

jr_003_6099:
	ld [hl], a
	ld a, $08
	call $3e9d
	ld c, $46
	jp $3781


	nop
	ld d, d
	jp z, $837f

	adc d
	db $dd
	ld a, a
	push bc
	add hl, hl
	ret nz

	rst $20
	ld d, a
	nop
	ld d, d
	jp z, $b27f

	cp h
	db $dd
	ld a, a
	push bc
	add hl, hl
	ret nz

	rst $20
	ld d, a
	ld a, [wd034]
	and a
	jr nz, jr_003_6109

	ld a, [wCurMap]
	cp $f7
	jr z, jr_003_6109

	ld a, [wd2e6]
	ld b, a
	ld hl, $610c

jr_003_60d2:
	ld a, [hli]
	cp $ff
	jr z, jr_003_6109

	cp b
	jr nz, jr_003_60d2

	ld hl, wd6b1
	set 3, [hl]
	set 6, [hl]
	ld hl, wd6ad
	res 4, [hl]
	ld hl, wd70f
	res 7, [hl]
	xor a
	ld [wd983], a
	ld [wd59e], a
	inc a
	ld [wd055], a
	ld [wcd65], a
	ld a, [wd117]
	and a
	ret nz

	call Call_003_6cd0
	ld c, $1e
	call $3781
	jp Jump_003_678f


jr_003_6109:
	jp Jump_003_679f


	inc bc
	rrca
	ld de, $1016
	rst $38
	ld b, $64

Jump_003_6114:
	ld a, [wd034]
	and a
	jp nz, Jump_003_679f

	ld a, b
	ld [wd0b8], a
	jp Jump_003_6781


	ld a, [wd034]
	and a
	jp z, Jump_003_679f

	ld hl, wd040
	set 0, [hl]
	jp Jump_003_6781


	xor a
	ld [wd69e], a
	call Call_003_4bbf
	ld a, [$4bbf]
	cp $18
	jr nz, jr_003_6144

	ld hl, $6181
	jr jr_003_6155

jr_003_6144:
	cp $24
	jr nz, jr_003_614d

	ld hl, $61aa
	jr jr_003_6155

jr_003_614d:
	cp $5e
	jp nz, Jump_003_679f

	ld hl, $61d3

jr_003_6155:
	ld a, [wCurMap]
	ld b, a

jr_003_6159:
	ld a, [hli]
	cp $ff
	jp z, Jump_003_679f

	cp b
	jr nz, jr_003_6170

	ld a, [hli]
	cp d
	jr nz, jr_003_6171

	ld a, [hli]
	cp e
	jr nz, jr_003_6172

	ld a, [hl]
	ld [wd69e], a
	jr jr_003_6175

jr_003_6170:
	inc hl

jr_003_6171:
	inc hl

jr_003_6172:
	inc hl
	jr jr_003_6159

jr_003_6175:
	ld hl, $68a9
	call $3c79
	ld hl, wd6a7
	set 7, [hl]
	ret


	rst $08
	inc b
	inc b
	nop
	rst $08
	inc b
	dec b
	ld bc, $0cd1
	inc b
	ld [bc], a
	pop de
	inc c
	dec b
	inc bc
	call nc, $0a06
	inc b
	call nc, $0b06
	dec b
	jp hl


	inc b
	ld [de], a
	ld b, $e9
	inc b
	inc de
	rlca
	ld [$0a08], a
	ld [$08ea], sp
	dec bc
	add hl, bc
	rst $38
	ret nc

	ld [$0a09], sp
	ret nc

	add hl, bc
	add hl, bc
	dec bc
	jp nc, $0704

	inc c
	jp nc, $0705

	dec c
	db $d3
	inc c
	dec b
	ld c, $d3
	dec c
	dec b
	rrca
	push de
	ld [$1007], sp
	push de
	add hl, bc
	rlca
	ld de, $08e9
	inc bc
	ld [de], a
	jp hl


	add hl, bc
	inc bc
	inc de
	rst $38
	db $eb
	ld [$1409], sp
	db $eb
	add hl, bc
	add hl, bc
	dec d
	rst $38
	ld a, [wd034]
	dec a
	jp nz, Jump_003_679f

	ld a, $01
	ld [wd055], a
	jp Jump_003_6781


	ld a, [wd034]
	and a
	jp z, Jump_003_679f

	ld hl, wd040
	set 1, [hl]
	jp Jump_003_6781


	ld b, $c8
	jp Jump_003_6114


	ld b, $fa
	jp Jump_003_6114


	ld a, [wd034]
	and a
	jp z, Jump_003_679f

	ld hl, wd040
	set 2, [hl]
	jp Jump_003_6781


	ld a, [wd034]
	and a
	jr nz, jr_003_6222

	call Call_003_679f
	ld a, $02
	ld [wcd65], a
	ret


jr_003_6222:
	ld hl, wcfb9
	ld a, [hli]
	push af
	ld a, [hl]
	push af
	push hl
	ld a, [wcf78]
	sub $37
	ld [hl], a
	call Call_003_6781
	ld a, $ae
	ld [wcfb9], a
	call $376d
	call $3e07
	xor a
	ldh [$f3], a
	ld b, $0f
	ld hl, $7762
	call $3620
	pop hl
	pop af
	ld [hld], a
	pop af
	ld [hl], a
	ret


	ld a, [wd034]
	and a
	jr nz, jr_003_629f

	call Call_003_6cd0
	ld a, [wCurMap]
	cp $17
	jr nz, jr_003_627a

	ld a, [wd757]
	bit 7, a
	jr nz, jr_003_6299

	ld hl, $630c
	call $3509
	jr nc, jr_003_6299

	ld hl, $6349
	call $3c79
	ld hl, wd757
	set 6, [hl]
	ret


jr_003_627a:
	cp $1b
	jr nz, jr_003_6299

	ld a, [wd75f]
	bit 1, a
	jr nz, jr_003_6299

	ld hl, $6315
	call $3509
	jr nc, jr_003_6299

	ld hl, $6349
	call $3c79
	ld hl, wd75f
	set 0, [hl]
	ret


jr_003_6299:
	ld hl, $631a
	jp $3c79


jr_003_629f:
	xor a
	ld [wcd3d], a
	ld b, $f8
	ld hl, wd12f
	call Call_003_62f4
	ld a, [wd034]
	dec a
	jr z, jr_003_62b7

	ld hl, wd827
	call Call_003_62f4

jr_003_62b7:
	ld hl, wcfff
	ld a, [hl]
	and b
	ld [hl], a
	ld hl, wcfd0
	ld a, [hl]
	and b
	ld [hl], a
	call $374a
	ld a, [wcd3d]
	and a
	ld hl, $631a
	jp z, $3c79

	ld hl, $6349
	call $3c79
	ld a, [wd060]
	and $80
	jr nz, jr_003_62ee

	call $3790
	ld b, $08
	ld hl, $4fec
	call $3620

jr_003_62e8:
	ld a, [wc02c]
	and a
	jr nz, jr_003_62e8

jr_003_62ee:
	ld hl, $6337
	jp $3c79


Call_003_62f4:
	ld de, $002c
	ld c, $06

jr_003_62f9:
	ld a, [hl]
	push af
	and $07
	jr z, jr_003_6304

	ld a, $01
	ld [wcd3d], a

jr_003_6304:
	pop af
	and b
	ld [hl], a
	add hl, de
	dec c
	jr nz, jr_003_62f9

	ret


	ld a, $09
	dec a
	ld a, [bc]
	ccf
	ld a, [bc]
	ld a, $0b
	rst $38
	ld a, [bc]
	dec de
	ld a, [bc]
	add hl, de
	rst $38
	nop
	ld d, h
	ret


jr_003_631d:
	call z, wddb4
	ld a, a
	call z, wc0b2
	rst $20
	ld d, c
	or e
	db $e3
	sbc $e7
	ld c, a
	cp l
	ld a, [hld]
	rst $10
	cp h
	or d
	ld a, a
	ret z

	or d
	db $db
	jr nc, jr_003_631d

	ld e, b
	nop
	cp l
	dec a
	jp Jump_003_7fc9


	ld d, h
	ld h, $4f
	jp nc, $7fdd

	cp e
	rst $08
	cp h
	ret nz

	rst $20
	ld e, b
	nop
	ld d, d
	jp z, $544f

	ret


	call z, wddb4
	ld a, a
	call z, wc3b2
	ret nc

	ret nz

	rst $20
	ld d, b
	ld b, $08
	ld a, [wd034]
	and a
	jr nz, jr_003_6378

	ld a, $ff
	call $0e45
	ld a, $b8
	ld c, $02
	call $0e35

jr_003_636e:
	ld a, [wc028]
	cp $b8
	jr z, jr_003_636e

	call $0d9b

jr_003_6378:
	jp $0f6a


	ld a, [wd034]
	and a
	jp nz, Jump_003_679f

	ld hl, $6388
	jp $3c79


	nop
	or c
	push bc
	ret nz

	ret


	ld a, a
	adc c
	add c
	xor e
	ld c, a
	ld d, b
	ld [bc], a
	inc hl
	push de
	jp nz, wcf00

	or d
	ld e, b
	call Call_003_6403
	jp c, Jump_003_679f

	ld bc, $0585
	ld a, $01
	jr jr_003_63dc

	call Call_003_6403
	jp c, Jump_003_679f

jr_003_63ae:
	call $3e8c
	srl a
	jr c, jr_003_63c7

	and $03
	cp $02
	jr nc, jr_003_63ae

	ld hl, $63ce
	add a
	ld c, a
	ld b, $00
	add hl, bc
	ld b, [hl]
	inc hl
	ld c, [hl]
	and a

jr_003_63c7:
	ld a, $00
	rla
	xor $01
	jr jr_003_63dc

	ld a, [bc]
	sbc l
	ld a, [bc]
	ld b, a
	call Call_003_6403
	jp c, Jump_003_679f

	call Call_003_6bf5
	ld a, e

jr_003_63dc:
	ld [wcd3d], a
	dec a
	jr nz, jr_003_63ef

	ld a, $01
	ld [wd03c], a
	ld a, b
	ld [wd0ec], a
	ld a, c
	ld [wd036], a

jr_003_63ef:
	ld hl, wWalkBikeSurfState
	ld a, [hl]
	push af
	push hl
	ld [hl], $00
	ld b, $1c
	ld hl, $4d07
	call $3620
	pop hl
	pop af
	ld [hl], a
	ret


Call_003_6403:
	ld a, [wd034]
	and a
	jr z, jr_003_640b

	scf
	ret


jr_003_640b:
	call Call_003_6bc3
	ret c

	ld a, [wWalkBikeSurfState]
	cp $02
	jr z, jr_003_642b

	call Call_003_6cd0
	ld hl, $68a9
	call $3c79
	ld a, $8e
	call $0e45
	ld c, $50
	call $3781
	and a
	ret


jr_003_642b:
	scf
	ret


	jp Jump_003_67a4


	ld a, [wd034]
	and a
	jp nz, Jump_003_679f

	call Call_003_6cd0
	ld b, $1d
	ld hl, $405c
	call $3620
	ld hl, $6483
	jr nc, jr_003_6459

	ld c, $04

jr_003_6449:
	ld a, $9e
	call $3788
	ld a, $b2
	call $3788
	dec c
	jr nz, jr_003_6449

	ld hl, $645c

jr_003_6459:
	jp $3c79


	nop
	or l
	xor h
	rst $20
	ld c, a
	sbc l
	adc e
	xor e
	ld h, $7f
	jp z, wc9de

	or e
	ld a, a
	cp h
	jp $2fd9


	rst $20
	ld d, l
	pop bc
	or [hl]
	cp b
	add $7f
	add b
	add c
	sub d
	sbc a
	ld h, $7f
	or e
	rst $08
	rst $18
	jp $e7d9


	ld e, b
	nop
	ld d, [hl]
	ld a, a
	ld d, [hl]
	ld a, a
	call z, $e7b3
	ld c, a
	ld d, [hl]
	ld a, a
	push bc
	sbc $c6
	db $d3
	ld a, a
	jp z, wc9de

	or e
	ld a, a
	cp h
	push bc
	or d
	ld e, b
	ld a, [wd034]
	and a
	jp nz, Jump_003_679f

	ld a, [wcf79]
	push af
	ld a, [wcf78]
	ld [wcd3d], a

jr_003_64ad:
	xor a
	ld [wUpdateSpritesEnabled], a
	ld a, $01
	ld [wd05a], a
	call $2df3
	jr nc, jr_003_64be

	jp Jump_003_65cd


jr_003_64be:
	ld a, [wcd3d]
	cp $52
	jp nc, Jump_003_6597

	ld a, $02
	ld [wccdb], a
	ld hl, $65d9
	ld a, [wcd3d]
	cp $50
	jr c, jr_003_64d8

	ld hl, $65ea

jr_003_64d8:
	call $3c79
	ld hl, $5377
	ld b, $0f
	call $3620
	jr nz, jr_003_64ad

	ld hl, wd133
	ld bc, $002c
	call Call_003_69b6
	push hl
	ld a, [hl]
	ld [wNumSetBits], a
	call $1b6d
	call $386e
	pop hl
	ld a, [wcd3d]
	cp $50
	jr nc, jr_003_655a

	ld bc, $0015
	add hl, bc
	ld a, [hl]
	cp $c0
	jr c, jr_003_6512

	ld hl, $65f9
	call $3c79
	jr jr_003_64be

jr_003_6512:
	ld a, [hl]
	add $40
	ld [hl], a
	ld a, $01
	ld [wNumSetBits], a
	call Call_003_68d9
	ld hl, $6613
	call $3c79

jr_003_6524:
	pop af
	ld [wcf79], a
	call $3e15
	call $3e1d
	jp Jump_003_678f


Jump_003_6531:
jr_003_6531:
	ld a, [wcf79]
	ld b, a
	ld a, [wcc2f]
	cp b
	jr nz, jr_003_654d

	ld hl, wd148
	ld bc, $002c
	call $3ad1
	ld de, wd014
	ld bc, $0004
	call $01bb

jr_003_654d:
	ld a, $8e
	call $0e45
	ld hl, $6626
	call $3c79
	jr jr_003_6524

jr_003_655a:
	call Call_003_6562
	jr nz, jr_003_6531

	jp Jump_003_65ca


Call_003_6562:
	xor a
	ld [wcc49], a
	call Call_003_694a
	ld hl, wd133
	ld bc, $002c
	call Call_003_69b6
	ld bc, $0015
	add hl, bc
	ld a, [wNumSetBits]
	ld b, a
	ld a, [wcd3d]
	cp $51
	jr z, jr_003_6592

	ld a, [hl]
	and $3f
	cp b
	ret z

	add $0a
	cp b
	jr nc, jr_003_658c

	ld b, a

jr_003_658c:
	ld a, [hl]
	and $c0
	add b
	ld [hl], a
	ret


jr_003_6592:
	ld a, [hl]
	cp b
	ret z

	jr jr_003_658c

Jump_003_6597:
	ld hl, wcd3d
	dec [hl]
	dec [hl]
	xor a
	ld hl, wCurrentMenuItem
	ld [hli], a
	ld [hl], a
	ld b, $04

jr_003_65a4:
	push bc
	ld hl, wd133
	ld bc, $002c
	call Call_003_69b6
	ld a, [hl]
	and a
	jr z, jr_003_65bb

	call Call_003_6562
	jr z, jr_003_65bb

	ld hl, wcc27
	inc [hl]

jr_003_65bb:
	ld hl, wCurrentMenuItem
	inc [hl]
	pop bc
	dec b
	jr nz, jr_003_65a4

	ld a, [wcc27]
	and a
	jp nz, Jump_003_6531

Jump_003_65ca:
	call Call_003_679a

Jump_003_65cd:
	call $3e15
	call $3e1d
	pop af
	xor a
	ld [wcd65], a
	ret


	nop
	inc [hl]
	ret


	call c, wc92b
	ld c, a
	ld b, e
	add c
	xor e
	sub e
	db $dd
	call z, $bdd4
	and $57
	nop
	inc [hl]
	ret


	call c, wdd2b
	ld c, a
	or [hl]
	or d
	call z, $bdb8
	reti


	and $57
	ld bc, wcf45
	nop
	jp z, $ba7f

	jp c, $2cb2

	ld [c], a
	or e
	ld c, a
	call z, $bdd4
	cp d
	call nz, Call_003_7f26
	inc sp
	or a
	rst $08
	cp [hl]
	sbc $58
	ld bc, wcf45
	nop
	ret


	ld c, a
	call c, $432b
	add c
	xor e
	sub e
	ld h, $7f
	call z, wc0b4
	rst $20
	ld e, b
	nop
	call c, $432b
	add c
	xor e
	sub e
	ld h, $4f
	or [hl]
	or d
	call z, $bcb8
	ret nz

	rst $20
	ld e, b
	jp Jump_003_679f


Jump_003_663a:
	ld a, [wd034]
	and a
	jp nz, Jump_003_679f

	ld a, [wcf78]
	sub $c9
	push af
	jr nc, jr_003_664b

	add $37

jr_003_664b:
	inc a
	ld [wNumSetBits], a
	ld a, $44
	call $3e9d
	ld a, [wNumSetBits]
	ld [wd0bd], a
	call $1b6d
	call $386e
	pop af
	ld hl, $6710
	jr nc, jr_003_6669

	ld hl, $671b

jr_003_6669:
	call $3c79
	ld hl, $672b
	call $3c79
	ld hl, wc43a
	ld bc, $080f
	ld a, $14
	ld [wd0ea], a
	call $3130
	ld a, [wCurrentMenuItem]
	and a
	jr z, jr_003_668c

	ld a, $02
	ld [wcd65], a
	ret


jr_003_668c:
	ld a, [wcf79]
	push af
	ld a, [wcf78]
	push af

jr_003_6694:
	ld hl, wcf45
	ld de, wd01d
	ld bc, $0008
	call $01bb
	ld a, $ff
	ld [wUpdateSpritesEnabled], a
	ld a, $03
	ld [wd05a], a
	call $2df3
	push af
	ld hl, wd01d
	ld de, wcf45
	ld bc, $0008
	call $01bb
	pop af
	jr nc, jr_003_66cb

	pop af
	pop af
	call $3e04
	call $0188
	call $3e1d
	jp $376d


jr_003_66cb:
	ld a, $43
	call $3e9d
	push bc
	ld a, [wcf79]
	ld hl, wd257
	call $2fb1
	pop bc
	ld a, c
	and a
	jr nz, jr_003_66ec

	ld a, $a5
	call $3788
	ld hl, $6756
	call $3c79
	jr jr_003_6694

jr_003_66ec:
	ld hl, $7e76
	ld b, $0b
	call $3620
	jr c, jr_003_6694

	ld a, $1b
	call $3e9d
	pop af
	ld [wcf78], a
	pop af
	ld [wcf79], a
	ld a, b
	and a
	ret z

	ld a, [wcf78]
	call $1b55
	ret c

	jp Jump_003_678f


	nop
	ld e, h
	db $dd
	ld a, a
	or a
	inc [hl]
	or e
	cp h
	ret nz

	rst $20
	ld e, b
	nop
	swap e
	sbc $9d
	adc e
	xor e
	db $dd
	ld a, a
	or a
	inc [hl]
	or e
	cp h
	ret nz

	rst $20
	ld e, b
	nop
	push bc
	or [hl]
	add $ca
	ld a, a
	ld d, b
	ld bc, wcf45
	nop
	ld h, $4f
	or a
	db $db
	cp b
	cp e
	jp c, $b2c3

	ret nz

	rst $20
	ld d, c
	ld d, b
	ld bc, wcf45
	nop
	db $dd
	ld c, a
	ld d, h
	add $7f
	or l
	ld a, $b4
	cp e
	cp [hl]
	rst $08
	cp l
	or [hl]
	and $57
	ld bc, wcd68
	nop
	call nz, Call_003_507f
	ld bc, wcf45
	nop
	jp z, $b14f

	or d
	cp h
	ld [c], a
	or e
	ld h, $7f
	call c, $b6d9
	rst $18
	ret nz

	rst $20
	ld d, c
	ld d, b
	ld bc, wcf45
	nop
	jp z, $b57f

	ld a, $b4
	rst $10
	jp c, $b2c5

	rst $20
	ld e, b

Call_003_6781:
Jump_003_6781:
	ld hl, $68a9
	call $3c79
	ld a, $8e
	call $0e45
	call $38ae

Call_003_678f:
Jump_003_678f:
jr_003_678f:
	ld hl, wd2a1
	ld a, $01
	ld [wcf7d], a
	jp $16cc


Call_003_679a:
	ld hl, $6824
	jr jr_003_67d7

Call_003_679f:
Jump_003_679f:
	ld hl, $67de
	jr jr_003_67d7

Jump_003_67a4:
	ld hl, $6805
	jr jr_003_67d7

Jump_003_67a9:
	call $3e1d
	call $376d
	call $3e07
	ld a, $c1
	ld [wd059], a
	ld a, $08
	call $3e9d
	ld hl, $6833
	call $3c79
	ld hl, $6843
	call $3c79
	jr jr_003_678f

Jump_003_67ca:
	ld hl, $6857
	jr jr_003_67d7

Jump_003_67cf:
	ld hl, $6888
	jr jr_003_67d7

Jump_003_67d4:
	ld hl, $6870

jr_003_67d7:
	xor a
	ld [wcd65], a
	jp $3c79


	nop
	add h
	db $e3
	add [hl]
	inc de
	ret


	ld a, a
	cp d
	call nz, Call_003_563a
	ld c, a
	ld d, d
	sub $e7
	ld a, a
	cp d
	or e
	or d
	or e
	db $d3
	ret


	add $ca
	ld d, l
	jp nz, $b2b6

	inc [hl]
	or a
	ld h, $7f
	or c
	reti


	ret


	inc l
	ldh [$e7], a
	ld e, b
	nop
	ret nz

	or d
	cp [hl]
	jp nz, Jump_003_7fc5

	or c
	dec l
	or [hl]
	ret c

	db $d3
	ret


	inc sp
	cp l
	rst $20
	ld c, [hl]
	jp nz, $b3b6

	cp d
	call nz, Call_003_7fca
	inc sp
	or a
	rst $08
	cp [hl]
	sbc $e7
	ld e, b
	nop
	jp nz, wdfb6

	jp $7fd3


	cp d
	or e
	or [hl]
	ld h, $c5
	or d
	sub $58
	nop
	ld e, l
	add $7f
	inc e
	db $e3
	and [hl]
	db $dd
	ld a, a
	jp z, $b62c

	jp c, $e7c0

	ld e, b
	nop
	set 0, h
	ret


	ld a, a
	db $d3
	ret


	db $dd
	ld a, a
	call nz, wc0df
	rst $10
	ld a, a
	inc [hl]
	db $db
	ld a, $b3
	rst $20
	ld e, b
	nop
	cp d
	cp d
	inc sp
	jp z, $2c7f

	jp $bcde


	ldh [$c6], a
	ld c, [hl]
	ret


	reti


	cp d
	call nz, Call_003_7fca
	inc sp
	or a
	rst $08
	cp [hl]
	sbc $58
	nop
	cp d
	cp d
	inc sp
	jp z, $0150

	ld l, b
	call wc600
	ld c, a
	ret


	reti


	cp d
	call nz, Call_003_7fca
	inc sp
	or a
	rst $08
	cp [hl]
	sbc $58
	nop
	inc e
	xor h
	add a
	adc h
	add $7f
	or c
	dec l
	cp c
	jp wd9b2


	ld a, a
	ld d, h
	ld h, $4f
	or d
	rst $18
	ld b, h
	or d
	push bc
	ret


	inc sp
	ld a, a
	jp nz, $b4b6

	rst $08
	cp [hl]
	sbc $e7
	ld e, b

	db $00, $52, $ca, $50, $05, $01, $45, $cf, $00, $dd, $7f, $c2, $b6, $df, $c0, $e7
	db $57

	nop
	ld d, d
	jp z, $0550

	ld bc, wcf45
	nop
	add $7f
	ret


	rst $18
	ret nz

	ld e, b
	nop
	ld d, d
	jp z, $0550

	ld bc, wcf45
	nop
	or [hl]
	rst $10
	ld a, a
	or l
	ret c

	ret nz

	ld e, b

Call_003_68d9:
	ld hl, wd133
	ld bc, $002c
	ld a, [wcf79]
	call $3ad1
	push hl
	ld de, wcd72
	ld a, $5e
	call $3e9d
	pop hl
	ld c, $15
	ld b, $00
	add hl, bc
	ld de, wcd73
	ld b, $00

jr_003_68f9:
	inc b
	ld a, b
	cp $05
	ret z

	ld a, [wNumSetBits]
	dec a
	jr nz, jr_003_690b

	ld a, [wCurrentMenuItem]
	inc a
	cp b
	jr nz, jr_003_6911

jr_003_690b:
	ld a, [hl]
	and $c0
	call nz, Call_003_6915

jr_003_6911:
	inc hl
	inc de
	jr jr_003_68f9

Call_003_6915:
	push bc
	ld a, [de]
	ldh [$98], a
	xor a
	ldh [$95], a
	ldh [$96], a
	ldh [$97], a
	ld a, $05
	ldh [$99], a
	ld b, $04
	call $3902
	ld a, [hl]
	ld b, a
	swap a
	and $0f
	srl a
	srl a
	ld c, a

jr_003_6934:
	ldh a, [$98]
	cp $08
	jr c, jr_003_693c

	ld a, $07

jr_003_693c:
	add b
	ld b, a
	ld a, [wNumSetBits]
	dec a
	jr z, jr_003_6947

	dec c
	jr nz, jr_003_6934

jr_003_6947:
	ld [hl], b
	pop bc
	ret


Call_003_694a:
	ld a, [wcc49]
	and a
	ld hl, wd133
	ld bc, $002c
	jr z, jr_003_6973

	ld hl, wd82b
	dec a
	jr z, jr_003_6973

	ld hl, wd9da
	ld bc, $0021
	dec a
	jr z, jr_003_6973

	ld hl, wd999
	dec a
	jr z, jr_003_696e

	ld hl, wd003

jr_003_696e:
	call Call_003_69bc
	jr jr_003_6976

jr_003_6973:
	call Call_003_69b6

jr_003_6976:
	ld a, [hl]
	dec a
	push hl
	ld hl, $5658
	ld bc, $0006
	call $3ad1
	ld de, wcd68
	ld a, $0e
	call $01a3
	ld de, wcd6d
	ld a, [de]
	ld b, a
	pop hl
	push bc
	ld bc, $0015
	ld a, [wcc49]
	cp $04
	jr nz, jr_003_699e

	ld bc, $0011

jr_003_699e:
	add hl, bc
	ld a, [hl]
	and $c0
	pop bc
	or b
	ld h, d
	ld l, e
	inc hl
	ld [hl], a
	xor a
	ld [wNumSetBits], a
	call Call_003_6915
	ld a, [hl]
	and $3f
	ld [wNumSetBits], a
	ret


Call_003_69b6:
	ld a, [wcf79]
	call $3ad1

Call_003_69bc:
	ld a, [wCurrentMenuItem]
	ld c, a
	ld b, $00
	add hl, bc
	ret


	push hl
	ld a, [wcf78]
	call $1b55
	pop hl
	jr c, jr_003_6a1e

	push hl
	call Call_003_6a6f
	ld a, [wd0e9]
	pop hl
	and a
	jr nz, jr_003_6a1e

	push hl
	ld a, [wcf78]
	ld [wNumSetBits], a
	call $1add
	call $386e
	ld hl, $6a35
	call $3c79
	ld hl, wc43a
	ld bc, $080f
	ld a, $14
	ld [wd0ea], a
	call $3130
	ld a, [wd0f3]
	cp $02
	pop hl
	scf
	ret z

	push hl
	ld a, [wcf79]
	call $16cc
	ld a, [wcf78]
	ld [wNumSetBits], a
	call $1add
	call $386e
	ld hl, $6a28
	call $3c79
	pop hl
	and a
	ret


jr_003_6a1e:
	push hl
	ld hl, $6a4e
	call $3c79
	pop hl
	scf
	ret


	ld bc, wcd68
	nop
	db $dd
	ld c, a
	cp l
	jp $bccf


	ret nz

	rst $20
	ld e, b
	ld bc, wcf45
	nop
	db $dd
	ld a, a
	cp l
	jp $bdcf


	ld c, a
	adc $de
	call nz, Call_003_7fc6
	sub $db
	cp h
	or d
	inc sp
	cp l
	or [hl]
	and $58
	nop
	cp a
	jp c, Jump_003_7fca

	call nz, wd3c3
	ld a, a
	ret nz

	or d
	cp [hl]
	jp nz, $a1c5

	sbc b
	inc sp
	cp l
	ld c, a
	cp l
	jp $bad9


	call nz, Call_003_7fca
	inc sp
	or a
	rst $08
	cp [hl]
	sbc $e7
	ld e, b

Call_003_6a6f:
	ld a, $01
	ld [wd0e9], a
	ld a, [wcf78]
	cp $c4
	jr nc, jr_003_6a98

	push af
	ld hl, $6aa4
	ld de, wcee4
	ld bc, $000f
	call $01bb
	pop af
	dec a
	ld c, a
	ld hl, wcee4
	ld b, $02
	ld a, $10
	call $3e9d
	ld a, c
	and a
	ret nz

jr_003_6a98:
	ld a, [wcf78]
	call $1b55
	ret c

	xor a
	ld [wd0e9], a
	ret


	db $f0, $01, $f0, $4f, $00, $9f, $00, $c0, $f0, $3b, $00, $11, $b2, $d9, $1a

	inc a
	ld [de], a
	ld a, [wcf78]
	ld [wd092], a
	ld c, a

jr_003_6abc:
	inc de
	ld a, [de]
	ld b, a
	ld a, c
	ld c, b
	ld [de], a
	cp $ff
	jr nz, jr_003_6abc

	call $2f2e
	ld hl, wddb0
	ld bc, $0006
	ld a, [wd9b2]
	dec a
	jr z, jr_003_6af9

	dec a
	call $3ad1
	push hl
	ld bc, $0006
	add hl, bc
	ld d, h
	ld e, l
	pop hl
	ld a, [wd9b2]
	dec a
	ld b, a

jr_003_6ae6:
	push bc
	push hl
	ld bc, $0006
	call $01bb
	pop hl
	ld d, h
	ld e, l
	ld bc, $fffa
	add hl, bc
	pop bc
	dec b
	jr nz, jr_003_6ae6

jr_003_6af9:
	ld hl, wd11d
	ld de, wddb0
	ld bc, $0006
	call $01bb
	ld a, [wd9b2]
	dec a
	jr z, jr_003_6b35

	ld hl, wde64
	ld bc, $0006
	dec a
	call $3ad1
	push hl
	ld bc, $0006
	add hl, bc
	ld d, h
	ld e, l
	pop hl
	ld a, [wd9b2]
	dec a
	ld b, a

jr_003_6b22:
	push bc
	push hl
	ld bc, $0006
	call $01bb
	pop hl
	ld d, h
	ld e, l
	ld bc, $fffa
	add hl, bc
	pop bc
	dec b
	jr nz, jr_003_6b22

jr_003_6b35:
	ld hl, wde64
	ld a, $02
	ld [wd05a], a
	ld a, $4e
	call $3e9d
	ld a, [wd9b2]
	dec a
	jr z, jr_003_6b72

	ld hl, wd9d2
	ld bc, $0021
	dec a
	call $3ad1
	push hl
	ld bc, $0021
	add hl, bc
	ld d, h
	ld e, l
	pop hl
	ld a, [wd9b2]
	dec a
	ld b, a

jr_003_6b5f:
	push bc
	push hl
	ld bc, $0021
	call $01bb
	pop hl
	ld d, h
	ld e, l
	ld bc, $ffdf
	add hl, bc
	pop bc
	dec b
	jr nz, jr_003_6b5f

jr_003_6b72:
	ld a, [wcfda]
	ld [wcfcf], a
	ld hl, wcfcc
	ld de, wd9d2
	ld bc, $000c
	call $01bb
	ld hl, wd2d8
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hl]
	ld [de], a
	inc de
	push de
	ld a, [wd0ec]
	ld d, a
	ld hl, $4fb5
	ld b, $16
	call $3620
	pop de
	ldh a, [$96]
	ld [de], a
	inc de
	ldh a, [$97]
	ld [de], a
	inc de
	ldh a, [$98]
	ld [de], a
	inc de
	xor a
	ld b, $0a

jr_003_6baa:
	ld [de], a
	inc de
	dec b
	jr nz, jr_003_6baa

	ld hl, wcfd8
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	ld hl, wcfe5
	ld b, $04

jr_003_6bbc:
	ld a, [hli]
	inc de
	ld [de], a
	dec b
	jr nz, jr_003_6bbc

	ret


Call_003_6bc3:
	ld a, [wd2e6]
	ld hl, $6beb
	ld de, $0001
	call $3ddb
	jr nc, jr_003_6be7

	ld a, [wd2e6]
	cp $0e
	ld a, [wcfad]
	jr z, jr_003_6be3

	cp $48
	jr z, jr_003_6be9

	cp $32
	jr z, jr_003_6be9

jr_003_6be3:
	cp $14
	jr z, jr_003_6be9

jr_003_6be7:
	scf
	ret


jr_003_6be9:
	and a
	ret


	nop
	inc bc
	dec b
	rlca
	dec c
	ld c, $11
	ld d, $17
	rst $38

Call_003_6bf5:
	ld a, [wCurMap]
	ld de, $0003
	ld hl, $6c24
	call $3ddb
	jr c, jr_003_6c06

	ld e, $02
	ret


jr_003_6c06:
	inc hl
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld b, [hl]
	inc hl
	ld e, $00

jr_003_6c0e:
	call $3e8c
	srl a
	ret c

	and $03
	cp b
	jr nc, jr_003_6c0e

	add a
	ld c, a
	ld b, $00
	add hl, bc
	ld b, [hl]
	inc hl
	ld c, [hl]
	ld e, $01
	ret


	nop
	adc b
	ld l, h
	ld bc, $6c88
	inc bc
	sub d
	ld l, h
	dec b
	sbc c
	ld l, h
	ld b, $9e
	ld l, h
	rlca
	rst $00
	ld l, h
	ld [$6cb5], sp
	rrca
	sub d
	ld l, h
	ld de, $6c99
	dec d
	sbc [hl]
	ld l, h
	ld d, $99
	ld l, h
	rla
	xor h
	ld l, h
	jr @-$52

	ld l, h
	inc e
	xor h
	ld l, h
	dec e
	xor h
	ld l, h
	ld e, $b5
	ld l, h
	rra
	or l
	ld l, h
	jr nz, jr_003_6c0e

	ld l, h
	ld hl, $6c8d
	ld [hli], a
	cp [hl]
	ld l, h
	inc hl
	sub d
	ld l, h
	inc h
	sub d
	ld l, h
	ld b, c
	sub d
	ld l, h
	ld e, [hl]
	sbc c
	ld l, h
	and c
	or l
	ld l, h
	and d
	or l
	ld l, h
	reti


	and e
	ld l, h
	jp c, Jump_003_6ca3

	db $db
	and e
	ld l, h
	call c, Call_003_6ca3
	ld [c], a
	cp [hl]
	ld l, h
	db $e3
	cp [hl]
	ld l, h
	db $e4
	cp [hl]
	ld l, h
	rst $38
	ld [bc], a
	rrca
	jr jr_003_6c9b

	ld b, a
	ld [bc], a
	rrca
	sbc l
	rrca
	ld b, a
	inc bc
	rrca
	cpl
	rrca
	sbc l
	rrca
	ld c, [hl]
	ld [bc], a
	rrca

jr_003_6c9b:
	ld c, [hl]
	rrca
	rla
	ld [bc], a
	rla
	ld l, [hl]
	rrca
	dec h

Call_003_6ca3:
Jump_003_6ca3:
	inc b
	rrca
	ld e, b
	rrca
	ld c, [hl]
	rrca
	cpl
	rrca
	dec h
	inc b
	dec b
	jr jr_003_6cbf

	ld c, [hl]
	rrca
	sbc l
	rrca
	add l
	inc b
	rrca
	dec de
	rrca
	ld e, h
	rrca
	rla
	rrca
	sbc l
	inc b

jr_003_6cbf:
	rla
	ld [$9e17], sp
	rla
	adc d
	rla
	ld e, l
	inc b
	rla
	sbc [hl]
	rrca
	ld c, [hl]
	rrca
	sbc l
	rrca
	add l

Call_003_6cd0:
	call $26bb
	jp $0ebd


	ld hl, $4f61
	ld de, wcee4
	ld c, $00

jr_003_6cde:
	inc hl
	ld a, [hld]
	inc a
	jr z, jr_003_6cf7

	push hl
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, [hli]
	and a
	call nz, Call_003_6cfb
	ld a, [hli]
	and a
	call nz, Call_003_6cfb
	pop hl
	inc hl
	inc hl
	inc c
	jr jr_003_6cde

jr_003_6cf7:
	ld a, $ff
	ld [de], a
	ret


Call_003_6cfb:
	inc hl
	ld b, $0a

jr_003_6cfe:
	ld a, [wNumSetBits]
	cp [hl]
	jr nz, jr_003_6d07

	ld a, c
	ld [de], a
	inc de

jr_003_6d07:
	inc hl
	inc hl
	dec b
	jr nz, jr_003_6cfe

	dec hl
	ret


	ld de, wcd3f
	ld hl, $6da1
	ld bc, $0008
	call $01bb
	ld hl, wcd49
	ld bc, $0008
	xor a
	call $372a
	ld de, wcd49
	ld hl, wcd3f
	ld a, [wd2d5]
	ld b, a
	ld c, $08

jr_003_6d30:
	srl b
	jr nc, jr_003_6d3b

	ld a, [hl]
	add $04
	ld [hl], a
	ld a, $01
	ld [de], a

jr_003_6d3b:
	inc hl
	inc de
	dec c
	jr nz, jr_003_6d30

	ld hl, wcd3d
	ld a, $e8
	ld [hli], a
	ld [hl], $60
	ld hl, wc47e
	ld de, wcd49
	call Call_003_6d57
	ld hl, wc4ba
	ld de, wcd4d

Call_003_6d57:
	ld c, $04

jr_003_6d59:
	push de
	push hl
	ld a, [wcd3d]
	ld [hli], a
	inc a
	ld [wcd3d], a
	ld a, [de]
	and a
	ld a, [wcd3e]
	jr nz, jr_003_6d6f

	call Call_003_6d9c
	jr jr_003_6d72

jr_003_6d6f:
	inc a
	inc a
	inc hl

jr_003_6d72:
	ld [wcd3e], a
	ld de, $0013
	add hl, de
	ld a, [wcd3f]
	call Call_003_6d9c
	add hl, de
	call Call_003_6d9c
	push bc
	ld hl, wcd40
	ld de, wcd3f
	ld bc, $0008
	call $01bb
	pop bc
	pop hl
	ld de, $0004
	add hl, de
	pop de
	inc de
	dec c
	jr nz, jr_003_6d59

	ret


Call_003_6d9c:
	ld [hli], a
	inc a
	ld [hl], a
	inc a
	ret


	db $20, $28, $30, $38, $40, $48, $50, $58

	INCBIN "gfx/auto/image_003_6da9.2bpp"

	call $3ec4
	ld hl, wc6e8
	ld a, [wd2e8]
	add $06
	ld e, a
	ld d, $00
	add hl, de
	add hl, de
	add hl, de
	ld e, $03
	add hl, de
	ld e, a
	ld a, b
	and a
	jr z, jr_003_71c6

jr_003_71c2:
	add hl, de
	dec b
	jr nz, jr_003_71c2

jr_003_71c6:
	add hl, bc
	ld a, [wd07c]
	ld [hl], a
	ld a, [wd2de]
	ld c, a
	ld a, [wd2df]
	ld b, a
	call Call_003_725c
	ret c

	push hl
	ld l, e
	ld h, $00
	ld e, $06
	ld d, h
	add hl, hl
	add hl, hl
	add hl, de
	add hl, bc
	pop bc
	call Call_003_725c
	ret c

Call_003_71e7:
Jump_003_71e7:
	ld a, [wd034]
	inc a
	ret z

	ldh a, [$ba]
	push af
	ldh a, [$d7]
	push af
	xor a
	ldh [$ba], a
	ldh [$d7], a
	call $26bb
	call $3e1d
	ld hl, wd4a5
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld de, $ffc0
	add hl, de
	ld a, h
	and $03
	or $98
	ld a, l
	ld [wcee4], a
	ld a, h
	ld [wcee5], a
	ld a, $02
	ld [$ffbe], a
	ld c, $09

jr_003_721b:
	push bc
	push hl
	push hl
	ld hl, wOAMBuffer + $78
	ld de, $0014
	ld a, [$ffbe]

jr_003_7227:
	add hl, de
	dec a
	jr nz, jr_003_7227

	call $28b7
	pop hl
	ld de, $0020
	ld a, [$ffbe]
	ld c, a

jr_003_7236:
	add hl, de
	ld a, h
	and $03
	or $98
	dec c
	jr nz, jr_003_7236

	ldh [$d2], a
	ld a, l
	ldh [$d1], a
	ld a, $02
	ldh [$d0], a
	call $0b31
	ld hl, $ffbe
	inc [hl]
	inc [hl]
	pop hl
	pop bc
	dec c
	jr nz, jr_003_721b

	pop af
	ldh [$d7], a
	pop af
	ldh [$ba], a
	ret


Call_003_725c:
	ld a, h
	sub b
	ret nz

	ld a, l
	sub c
	ret


	xor a
	ld [wcd65], a
	ld a, [wd2e6]
	and a
	jr z, jr_003_7279

	cp $07
	jr nz, jr_003_7285

	ld a, [wcfad]
	cp $50
	jr nz, jr_003_7285

	jr jr_003_72a4

jr_003_7279:
	dec a
	ld a, [wcfad]
	cp $3d
	jr z, jr_003_72a4

	cp $52
	jr z, jr_003_72a4

jr_003_7285:
	ld hl, $728b
	jp $3c79


	nop
	or d
	or c
	or d
	daa
	ret c

	inc sp
	ld c, a
	or a
	jp c, $b3bf

	push bc
	ld a, a
	db $d3
	ret


	ld h, $7f
	or c
	ret c

	rst $08
	cp [hl]
	sbc $e7
	ld e, b

jr_003_72a4:
	ld [wcd4d], a
	ld a, $01
	ld [wcd65], a
	ld a, [wcf79]
	ld hl, wd257
	call $2fb1
	ld hl, wd6af
	set 6, [hl]
	call $3e04
	call $0188
	call $3dee
	ld a, $90
	ldh [$b0], a
	call $3e07
	call $0b3c
	call $26bb
	call $373e
	call $3e07
	xor a
	ldh [$b0], a
	ld hl, $7314
	call $3c79
	call $374a
	ld hl, wd6af
	res 6, [hl]
	ld a, $ff
	ld [wUpdateSpritesEnabled], a
	call Call_003_7329
	ld de, $7432
	call Call_003_73d1
	call Call_003_71e7
	ld b, $1e
	ld hl, $5ec2
	call $3620
	ld a, $01
	ld [wUpdateSpritesEnabled], a
	ld a, $ac
	call $0e45
	ld a, $90
	ldh [$b0], a
	call $0ebd
	jp Jump_003_71e7


	ld bc, wcd68
	nop
	jp z, $b24f

	or c
	or d
	daa
	ret c

	inc sp
	ld a, a
	or a
	ret c

	rst $08
	cp b
	rst $18
	ret nz

	rst $20
	ld e, b

Call_003_7329:
	xor a
	ld [wcd50], a
	ld a, $e4
	ldh [rOBP1], a
	ld a, [wcd4d]
	cp $52
	jr z, jr_003_7352

	ld de, $42d0
	ld hl, $8fc0
	ld bc, $1902
	call $02dd
	ld de, $43d0
	ld hl, $8fe0
	ld bc, $1902
	call $02dd
	jr jr_003_7387

jr_003_7352:
	ld hl, $8fc0
	call Call_003_737e
	ld hl, $8fd0
	call Call_003_737e
	ld hl, $8fe0
	call Call_003_737e
	ld hl, $8ff0
	call Call_003_737e
	call Call_003_7387
	ld hl, wOAMBuffer + $93
	ld de, $0004
	ld a, $30
	ld c, e

jr_003_7376:
	ld [hl], a
	add hl, de
	xor $60
	dec c
	jr nz, jr_003_7376

	ret


Call_003_737e:
	ld de, $45b7
	ld bc, $1e01
	jp $02dd


Call_003_7387:
jr_003_7387:
	call Call_003_739a
	ld a, $09
	ld de, $7392
	jp $3ae1


	db $fc
	db $10
	db $fd
	db $10
	cp $10
	rst $38
	db $10

Call_003_739a:
	ld hl, $c104
	ld a, [hli]
	ld b, a
	inc hl
	ld a, [hli]
	ld c, a
	inc hl
	inc hl
	ld a, [hl]
	srl a
	ld e, a
	ld d, $00
	ld a, [wcd50]
	and a
	ld hl, $73c1
	jr z, jr_003_73b6

	ld hl, $73c9

jr_003_73b6:
	add hl, de
	ld e, [hl]
	inc hl
	ld d, [hl]
	ld a, b
	add d
	ld b, a
	ld a, c
	add e
	ld c, a
	ret


	ld [$0824], sp
	inc b
	ld hl, sp+$14
	jr @+$16

	ld [$0834], sp
	db $f4
	add sp, $14
	jr z, @+$16

Call_003_73d1:
	push de
	ld a, [wd2e8]
	add $06
	ld c, a
	ld b, $00
	ld d, $00
	ld hl, wd2de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	add hl, bc
	ld a, [$c109]
	and a
	jr z, jr_003_73f9

	cp $04
	jr z, jr_003_7401

	cp $08
	jr z, jr_003_7409

	ld a, [wd2e3]
	and a
	jr z, jr_003_7412

	jr jr_003_741e

jr_003_73f9:
	ld a, [wd2e2]
	and a
	jr z, jr_003_7412

	jr jr_003_7411

jr_003_7401:
	ld a, [wd2e2]
	and a
	jr z, jr_003_7413

	jr jr_003_7412

jr_003_7409:
	ld a, [wd2e3]
	and a
	jr z, jr_003_7418

	jr jr_003_7412

jr_003_7411:
	add hl, bc

jr_003_7412:
	add hl, bc

jr_003_7413:
	ld e, $02
	add hl, de
	jr jr_003_7422

jr_003_7418:
	ld e, $01
	add hl, bc
	add hl, de
	jr jr_003_7422

jr_003_741e:
	ld e, $03
	add hl, bc
	add hl, de

jr_003_7422:
	pop de
	ld a, [hl]
	ld c, a

jr_003_7425:
	ld a, [de]
	inc de
	inc de
	cp $ff
	ret z

	cp c
	jr nz, jr_003_7425

	dec de
	ld a, [de]
	ld [hl], a
	ret


	ld [hld], a
	ld l, l
	inc sp
	ld l, h
	inc [hl]
	ld l, a
	dec [hl]
	ld c, h
	ld h, b
	ld l, [hl]
	dec bc
	ld a, [bc]
	inc a
	dec [hl]
	ccf
	dec [hl]
	dec a
	ld [hl], $ff

	ld a, [wCurMap]
	cp $0c
	jr nc, jr_003_7457

	ld c, a
	ld b, $01
	ld hl, wd68a
	ld a, $10
	call $3e9d

jr_003_7457:
	ld hl, $4085
	ld a, [wCurMap]
	ld b, $00
	ld c, a
	add hl, bc
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	push hl
	ld de, $427a
	ld a, l
	sub e
	jr nc, jr_003_746e

	dec h

jr_003_746e:
	ld l, a
	ld a, h
	sub d
	ld h, a
	ld a, h
	ldh [$95], a
	ld a, l
	ldh [$96], a
	xor a
	ldh [$97], a
	ldh [$98], a
	ld a, $03
	ldh [$99], a
	ld b, $02
	call $3902
	ld a, [wCurMap]
	ld b, a
	ldh a, [$98]
	ld c, a
	ld de, wd54d
	pop hl

jr_003_7491:
	ld a, [hli]
	cp $ff
	jr z, jr_003_74a3

	cp b
	jr nz, jr_003_74a3

	ld a, [hli]
	inc hl
	ld [de], a
	inc de
	ld a, c
	inc c
	ld [de], a
	inc de
	jr jr_003_7491

jr_003_74a3:
	ld a, $ff
	ld [de], a
	ret


Jump_003_74a7:
	ld hl, wd525
	ld bc, $0020
	xor a
	call $372a
	ld hl, $427a
	xor a
	ld [wd027], a

jr_003_74b8:
	ld a, [hli]
	cp $ff
	ret z

	push hl
	inc hl
	ld a, [hl]
	cp $11
	jr nz, jr_003_74cf

	ld hl, wd525
	ld a, [wd027]
	ld c, a
	ld b, $01
	call Call_003_7518

jr_003_74cf:
	ld hl, wd027
	inc [hl]
	pop hl
	inc hl
	inc hl
	jr jr_003_74b8

	ldh a, [$da]
	swap a
	ld b, a
	ld hl, wd54d

jr_003_74e0:
	ld a, [hli]
	cp $ff
	jr z, jr_003_74f6

	cp b
	ld a, [hli]
	jr nz, jr_003_74e0

	ld c, a
	ld b, $02
	ld hl, wd525
	call Call_003_7518
	ld a, c
	and a
	jr nz, jr_003_74f7

jr_003_74f6:
	xor a

jr_003_74f7:
	ldh [$e5], a
	ret


	ld hl, wd525
	ld a, [wcc4d]
	ld c, a
	ld b, $00
	call Call_003_7518
	jp $0ebd


	ld hl, wd525
	ld a, [wcc4d]
	ld c, a
	ld b, $01
	call Call_003_7518
	jp $0ebd


Call_003_7518:
	push hl
	push de
	push bc
	ld a, c
	ld d, a
	and $07
	ld e, a
	ld a, d
	srl a
	srl a
	srl a
	add l
	ld l, a
	jr nc, jr_003_752c

	inc h

jr_003_752c:
	inc e
	ld d, $01

jr_003_752f:
	dec e
	jr z, jr_003_7536

	sla d
	jr jr_003_752f

jr_003_7536:
	ld a, b
	and a
	jr z, jr_003_7545

	cp $02
	jr z, jr_003_754e

	ld a, [hl]
	ld b, a
	ld a, d
	or b
	ld [hl], a
	jr jr_003_7552

jr_003_7545:
	ld a, [hl]
	ld b, a
	ld a, d
	xor $ff
	and b
	ld [hl], a
	jr jr_003_7552

jr_003_754e:
	ld a, [hl]
	ld b, a
	ld a, d
	and b

jr_003_7552:
	pop bc
	pop de
	pop hl
	ld c, a
	ret


	ld a, [wd6a7]
	bit 0, a
	ret z

	ld a, [wcd5b]
	bit 1, a
	ret nz

	xor a
	ldh [$8c], a
	call $2582
	ldh a, [$8c]
	ld [wd697], a
	and a
	jp z, Jump_003_760f

	ld hl, $c101
	ld d, $00
	ldh a, [$8c]
	swap a
	ld e, a
	add hl, de
	res 7, [hl]
	call $35a2
	ld a, [hl]
	cp $10
	jp nz, Jump_003_760f

	ld hl, wcd5b
	bit 6, [hl]
	set 6, [hl]
	ret z

	ldh a, [$b4]
	and $f0
	ret z

	ld a, $5a
	call $3e9d
	ld a, [wd69b]
	and a
	jp nz, Jump_003_760f

	ldh a, [$b4]
	ld b, a
	ld a, [$c109]
	cp $04
	jr z, jr_003_75bb

	cp $08
	jr z, jr_003_75c3

	cp $0c
	jr z, jr_003_75cb

	bit 7, b
	ret z

	ld de, $75e1
	jr jr_003_75d1

jr_003_75bb:
	bit 6, b
	ret z

	ld de, $75df
	jr jr_003_75d1

jr_003_75c3:
	bit 5, b
	ret z

	ld de, $75e3
	jr jr_003_75d1

jr_003_75cb:
	bit 4, b
	ret z

	ld de, $75e5

jr_003_75d1:
	call $3684
	ld a, $a8
	call $0e45
	ld hl, wcd5b
	set 1, [hl]
	ret


	ld b, b
	rst $38
	nop
	rst $38
	add b
	rst $38
	ret nz

	rst $38
	ld a, [wd6af]
	bit 0, a
	ret nz

	ld hl, $5f80
	ld b, $1e
	call $3620
	call Call_003_406c
	ld [wcd66], a
	call Call_003_760f
	set 7, [hl]
	ld a, [wd697]
	ldh [$8c], a
	call $35a2
	ld [hl], $10
	ld a, $ac
	jp $0e45


Call_003_760f:
Jump_003_760f:
	ld hl, wcd5b
	res 1, [hl]
	res 6, [hl]
	ret


	ld de, wd123
	ld a, [wcc49]
	and $0f
	jr z, jr_003_7624

	ld de, wd81b

jr_003_7624:
	ld a, [de]
	inc a
	cp $07
	ret nc

	ld [de], a
	ld a, [de]
	ld [$ffe4], a
	add e
	ld e, a
	jr nc, jr_003_7633

	inc d

jr_003_7633:
	ld a, [wcf78]
	ld [de], a
	inc de
	ld a, $ff
	ld [de], a
	ld hl, wd233
	ld a, [wcc49]
	and $0f
	jr z, jr_003_7648

	ld hl, wd92b

jr_003_7648:
	ld a, [$ffe4]
	dec a
	call $3ac7
	ld d, h
	ld e, l
	ld hl, wd11d
	ld bc, $0006
	call $01bb
	ld a, [wcc49]
	and a
	jr nz, jr_003_7674

	ld hl, wd257
	ld a, [$ffe4]
	dec a
	call $3ac7
	ld a, $02
	ld [wd05a], a
	ld a, $4e
	call $3e9d

jr_003_7674:
	ld hl, wd12b
	ld a, [wcc49]
	and $0f
	jr z, jr_003_7681

	ld hl, wd823

jr_003_7681:
	ld a, [$ffe4]
	dec a
	ld bc, $002c
	call $3ad1
	ld e, l
	ld d, h
	push hl
	ld a, [wcf78]
	ld [wd092], a
	call $2f2e
	ld hl, wd095
	ld a, [hli]
	ld [de], a
	inc de
	pop hl
	push hl
	ld a, [wcc49]
	and $0f
	ld a, $98
	ld b, $88
	jr nz, jr_003_76e9

	ld a, [wcf78]
	ld [wNumSetBits], a
	push de
	ld a, $3a
	call $3e9d
	pop de
	ld a, [wNumSetBits]
	dec a
	ld c, a
	ld b, $02
	ld hl, wd27b
	call Call_003_799f
	ld a, c
	ld [wd118], a
	ld a, [wNumSetBits]
	dec a
	ld c, a
	ld b, $01
	push bc
	call Call_003_799f
	pop bc
	ld hl, wd28e
	call Call_003_799f
	pop hl
	push hl
	ld a, [wd034]
	and a
	jr nz, jr_003_770c

	call $3e8c
	ld b, a
	call $3e8c

jr_003_76e9:
	push bc
	ld bc, $001b
	add hl, bc
	pop bc
	ld [hli], a
	ld [hl], b
	ld bc, $fff4
	add hl, bc
	ld a, $01
	ld c, a
	xor a
	ld b, a
	call $3994
	ldh a, [$97]
	ld [de], a
	inc de
	ldh a, [$98]
	ld [de], a
	inc de
	xor a
	ld [de], a
	inc de
	ld [de], a
	inc de
	jr jr_003_772a

jr_003_770c:
	ld bc, $001b
	add hl, bc
	ld a, [wcfd8]
	ld [hli], a
	ld a, [wcfd9]
	ld [hl], a
	ld a, [wcfcd]
	ld [de], a
	inc de
	ld a, [wcfce]
	ld [de], a
	inc de
	xor a
	ld [de], a
	inc de
	ld a, [wcfd0]
	ld [de], a
	inc de

jr_003_772a:
	ld hl, wd09b
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	ld hl, wd0a4
	ld a, [hli]
	inc de
	push de
	ld [de], a
	ld a, [hli]
	inc de
	ld [de], a
	ld a, [hli]
	inc de
	ld [de], a
	ld a, [hli]

Call_003_7743:
	inc de
	ld [de], a
	push de
	dec de
	dec de
	dec de
	xor a
	ld [wcee4], a
	ld a, $3e
	call $3e9d
	pop de
	ld a, [wd2d8]
	inc de
	ld [de], a
	ld a, [wd2d9]
	inc de
	ld [de], a
	push de
	ld a, [wd0ec]
	ld d, a
	ld hl, $4fb5
	ld b, $16
	call $3620
	pop de
	inc de
	ldh a, [$96]
	ld [de], a
	inc de
	ldh a, [$97]
	ld [de], a
	inc de
	ldh a, [$98]
	ld [de], a
	xor a
	ld b, $0a

jr_003_777a:
	inc de
	ld [de], a
	dec b
	jr nz, jr_003_777a

	inc de
	inc de
	pop hl
	call Call_003_77ac
	inc de
	ld a, [wd0ec]
	ld [de], a
	inc de
	ld a, [wd034]
	dec a
	jr nz, jr_003_779d

	ld hl, wcfdb
	ld bc, $000a
	call $01bb
	pop hl
	jr jr_003_77a7

jr_003_779d:
	pop hl
	ld bc, $0010
	add hl, bc
	ld b, $00
	call $3980

jr_003_77a7:
	scf
	ret


	call $3ec4

Call_003_77ac:
	ld b, $04

jr_003_77ae:
	ld a, [hli]
	and a
	jr z, jr_003_77cd

	dec a
	push hl
	push de
	push bc
	ld hl, $5658
	ld bc, $0006
	call $3ad1
	ld de, wcd68
	ld a, $0e
	call $01a3
	pop bc
	pop de
	pop hl
	ld a, [wcd6d]

jr_003_77cd:
	inc de
	ld [de], a
	dec b
	jr nz, jr_003_77ae

	ret


	ld hl, wd123
	ld a, [hl]
	cp $06
	scf
	ret z

	inc a
	ld [hl], a
	ld c, a
	ld b, $00
	add hl, bc
	ld a, [wcf78]
	ld [hli], a
	ld [hl], $ff
	ld hl, wd12b
	ld a, [wd123]
	dec a
	ld bc, $002c
	call $3ad1
	ld e, l
	ld d, h
	ld hl, wcf7f
	call $01bb
	ld hl, wd233
	ld a, [wd123]
	dec a
	call $3ac7
	ld d, h
	ld e, l
	ld hl, wd92b
	ld a, [wcf79]
	call $3ac7
	ld bc, $0006
	call $01bb
	ld hl, wd257
	ld a, [wd123]
	dec a
	call $3ac7
	ld d, h
	ld e, l
	ld hl, wd94f
	ld a, [wcf79]
	call $3ac7
	ld bc, $0006
	call $01bb
	ld a, [wcf78]
	ld [wNumSetBits], a
	ld a, $3a
	call $3e9d
	ld a, [wNumSetBits]
	dec a
	ld c, a
	ld b, $01
	ld hl, wd27b
	push bc
	call Call_003_799f
	pop bc
	ld hl, wd28e
	call Call_003_799f
	and a
	ret


	ld a, [wcf7c]
	and a
	jr z, jr_003_786f

	cp $02
	jr z, jr_003_786f

	cp $03
	ld hl, wd991
	jr z, jr_003_78ab

	ld hl, wd9b2
	ld a, [hl]
	cp $1e
	jr nz, jr_003_7879

	jr jr_003_7877

jr_003_786f:
	ld hl, wd123
	ld a, [hl]
	cp $06
	jr nz, jr_003_7879

jr_003_7877:
	scf
	ret


jr_003_7879:
	inc a
	ld [hl], a
	ld c, a
	ld b, $00
	add hl, bc
	ld a, [wcf7c]
	cp $02
	ld a, [wd991]
	jr z, jr_003_788c

	ld a, [wcf78]

jr_003_788c:
	ld [hli], a
	ld [hl], $ff
	ld a, [wcf7c]
	dec a
	ld hl, wd12b
	ld bc, $002c
	ld a, [wd123]
	jr nz, jr_003_78a7

	ld hl, wd9d2
	ld bc, $0021
	ld a, [wd9b2]

jr_003_78a7:
	dec a
	call $3ad1

jr_003_78ab:
	push hl
	ld e, l
	ld d, h
	ld a, [wcf7c]
	and a
	ld hl, wd9d2
	ld bc, $0021
	jr z, jr_003_78c7

	cp $02
	ld hl, wd991
	jr z, jr_003_78cd

	ld hl, wd12b
	ld bc, $002c

jr_003_78c7:
	ld a, [wcf79]
	call $3ad1

jr_003_78cd:
	push hl
	push de
	ld bc, $0021
	call $01bb
	pop de
	pop hl
	ld a, [wcf7c]
	and a
	jr z, jr_003_78ea

	cp $02
	jr z, jr_003_78ea

	ld bc, $0021
	add hl, bc
	ld a, [hl]
	inc de
	inc de
	inc de
	ld [de], a

jr_003_78ea:
	ld a, [wcf7c]
	cp $03
	ld de, wd98b
	jr z, jr_003_7909

	dec a
	ld hl, wd233
	ld a, [wd123]
	jr nz, jr_003_7903

	ld hl, wddb0
	ld a, [wd9b2]

jr_003_7903:
	dec a
	call $3ac7
	ld d, h
	ld e, l

jr_003_7909:
	ld hl, wddb0
	ld a, [wcf7c]
	and a
	jr z, jr_003_791c

	ld hl, wd98b
	cp $02
	jr z, jr_003_7922

	ld hl, wd233

jr_003_791c:
	ld a, [wcf79]
	call $3ac7

jr_003_7922:
	ld bc, $0006
	call $01bb
	ld a, [wcf7c]
	cp $03
	ld de, wd985
	jr z, jr_003_7947

	dec a
	ld hl, wd257
	ld a, [wd123]
	jr nz, jr_003_7941

	ld hl, wde64
	ld a, [wd9b2]

jr_003_7941:
	dec a
	call $3ac7
	ld d, h
	ld e, l

jr_003_7947:
	ld hl, wde64
	ld a, [wcf7c]
	and a
	jr z, jr_003_795a

	ld hl, wd985
	cp $02
	jr z, jr_003_7960

	ld hl, wd257

jr_003_795a:
	ld a, [wcf79]
	call $3ac7

jr_003_7960:
	ld bc, $0006
	call $01bb
	pop hl
	ld a, [wcf7c]
	cp $01
	jr z, jr_003_799a

	cp $03
	jr z, jr_003_799a

	push hl
	srl a
	add $02
	ld [wcc49], a
	call $2d68
	ld b, $16
	ld hl, $4f8e
	call $3620
	ld a, d
	ld [wd0ec], a
	pop hl
	ld bc, $0021
	add hl, bc
	ld [hli], a
	ld d, h
	ld e, l
	ld bc, $ffee
	add hl, bc
	ld b, $01
	call $3980

jr_003_799a:
	and a
	ret


	call $3ec4

Call_003_799f:
	push hl
	push de
	push bc
	ld a, c
	ld d, a
	and $07
	ld e, a
	ld a, d
	srl a
	srl a
	srl a
	add l
	ld l, a
	jr nc, jr_003_79b3

	inc h

jr_003_79b3:
	inc e
	ld d, $01

jr_003_79b6:
	dec e
	jr z, jr_003_79bd

	sla d
	jr jr_003_79b6

jr_003_79bd:
	ld a, b
	and a
	jr z, jr_003_79cb

	cp $02
	jr z, jr_003_79d3

	ld b, [hl]
	ld a, d
	or b
	ld [hl], a
	jr jr_003_79d6

jr_003_79cb:
	ld b, [hl]
	ld a, d
	xor $ff
	and b
	ld [hl], a
	jr jr_003_79d6

jr_003_79d3:
	ld b, [hl]
	ld a, d
	and b

jr_003_79d6:
	pop bc
	pop de
	pop hl
	ld c, a
	ret


	ld hl, wd124
	ld de, wd12c

jr_003_79e1:
	ld a, [hli]
	cp $ff
	jr z, jr_003_7a3c

	push hl
	push de
	ld hl, $0003
	add hl, de
	xor a
	ld [hl], a
	push de
	ld b, $04

jr_003_79f1:
	ld hl, $0007
	add hl, de
	ld a, [hl]
	and a
	jr z, jr_003_7a21

	dec a
	ld hl, $001c
	add hl, de
	push hl
	push de
	push bc
	ld hl, $5658
	ld bc, $0006
	call $3ad1
	ld de, wcd68
	ld a, $0e
	call $01a3
	ld a, [wcd6d]
	pop bc
	pop de
	pop hl
	inc de
	push bc
	ld b, a
	ld a, [hl]
	and $c0
	add b
	ld [hl], a
	pop bc

jr_003_7a21:
	dec b
	jr nz, jr_003_79f1

	pop de
	ld hl, $0021
	add hl, de
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hl]
	ld [de], a
	pop de
	pop hl
	push hl
	ld bc, $002c
	ld h, d
	ld l, e
	add hl, bc
	ld d, h
	ld e, l
	pop hl
	jr jr_003_79e1

jr_003_7a3c:
	xor a
	ld [wcf79], a
	ld [wNumSetBits], a
	ld a, [wd123]
	ld b, a

jr_003_7a47:
	push bc
	call Call_003_68d9
	pop bc
	ld hl, wcf79
	inc [hl]
	dec b
	jr nz, jr_003_7a47

	ret


	call $3ec4
	xor a
	ldh [$a5], a
	ldh [$a6], a
	ldh [$a7], a
	ld d, $01

jr_003_7a60:
	ldh a, [$a2]
	and $f0
	jr nz, jr_003_7a91

	inc d
	ldh a, [$a2]
	swap a
	and $f0
	ld b, a
	ldh a, [$a3]
	swap a
	ldh [$a3], a
	and $0f
	or b
	ldh [$a2], a
	ldh a, [$a3]
	and $f0
	ld b, a
	ldh a, [$a4]
	swap a
	ldh [$a4], a
	and $0f
	or b
	ldh [$a3], a
	ldh a, [$a4]
	and $f0
	ldh [$a4], a
	jr jr_003_7a60

jr_003_7a91:
	push de
	push de
	call Call_003_7b36
	pop de
	ld a, b
	swap a
	and $f0
	ldh [$a5], a
	dec d
	jr z, jr_003_7af2

	push de
	call Call_003_7b0d
	call Call_003_7b36
	pop de
	ldh a, [$a5]
	or b
	ldh [$a5], a
	dec d
	jr z, jr_003_7af2

	push de
	call Call_003_7b0d
	call Call_003_7b36
	pop de
	ld a, b
	swap a
	and $f0
	ldh [$a6], a
	dec d
	jr z, jr_003_7af2

	push de
	call Call_003_7b0d
	call Call_003_7b36
	pop de
	ldh a, [$a6]
	or b
	ldh [$a6], a
	dec d
	jr z, jr_003_7af2

	push de
	call Call_003_7b0d
	call Call_003_7b36
	pop de
	ld a, b
	swap a
	and $f0
	ldh [$a7], a
	dec d
	jr z, jr_003_7af2

	push de
	call Call_003_7b0d
	call Call_003_7b36
	pop de
	ldh a, [$a7]
	or b
	ldh [$a7], a

jr_003_7af2:
	ldh a, [$a5]
	ldh [$a2], a
	ldh a, [$a6]
	ldh [$a3], a
	ldh a, [$a7]
	ldh [$a4], a
	pop de
	ld a, $06
	sub d
	and a
	ret z

jr_003_7b04:
	push af
	call Call_003_7b0d
	pop af
	dec a
	jr nz, jr_003_7b04

	ret


Call_003_7b0d:
	ldh a, [$a4]
	swap a
	and $0f
	ld b, a
	ldh a, [$a3]
	swap a
	ldh [$a3], a
	and $f0
	or b
	ldh [$a4], a
	ldh a, [$a3]
	and $0f
	ld b, a
	ldh a, [$a2]
	swap a
	ldh [$a2], a
	and $f0
	or b
	ldh [$a3], a
	ldh a, [$a2]
	and $0f
	ldh [$a2], a
	ret


Call_003_7b36:
	ld bc, $0003

jr_003_7b39:
	ld de, $ff9f
	ld hl, $ffa2
	push bc
	call $3ad8
	pop bc
	ret c

	inc b
	ld de, $ffa1
	ld hl, $ffa4
	push bc
	call Call_003_7b6f
	pop bc
	jr jr_003_7b39

	call $3ec4
	and a
	ld b, c

jr_003_7b58:
	ld a, [de]
	adc [hl]
	daa
	ld [de], a
	dec de
	dec hl
	dec c
	jr nz, jr_003_7b58

	jr nc, jr_003_7b6b

	ld a, $99
	inc de

jr_003_7b66:
	ld [de], a
	inc de
	dec b
	jr nz, jr_003_7b66

jr_003_7b6b:
	ret


	call $3ec4

Call_003_7b6f:
	and a
	ld b, c

jr_003_7b71:
	ld a, [de]
	sbc [hl]
	daa
	ld [de], a
	dec de
	dec hl
	dec c
	jr nz, jr_003_7b71

	jr nc, jr_003_7b85

	ld a, $00
	inc de

jr_003_7b7f:
	ld [de], a
	inc de
	dec b
	jr nz, jr_003_7b7f

	scf

jr_003_7b85:
	ret


	call $3e8c
	ldh a, [$d4]
	ld [wd2d8], a
	call $3e8c
	ldh a, [$d3]
	ld [wd2d9], a
	ld a, $ff
	ld [wd69a], a
	ld hl, wd123
	call Call_003_7bdb
	ld hl, wd9b2
	call Call_003_7bdb
	ld hl, wd2a1
	call Call_003_7bdb
	ld hl, wd4b9
	call Call_003_7bdb
	xor a
	ld [wcc49], a
	ld [wd2d5], a
	ld [wd2d6], a
	ld [wd523], a
	ld [wd524], a
	ld [wd2cb], a
	ld [wd2cd], a
	ld a, $30
	ld [wd2cc], a
	ld hl, wd56f
	ld bc, $00c8
	xor a
	call $372a
	jp Jump_003_74a7


Call_003_7bdb:
	xor a
	ld [hli], a
	dec a
	ld [hl], a
	ret


	call $3ec4
	ld hl, wd2a1

jr_003_7be6:
	inc hl
	ld a, [hli]
	cp $ff
	jr z, jr_003_7bf2

	cp b
	jr nz, jr_003_7be6

	ld a, [hl]
	ld b, a
	ret


jr_003_7bf2:
	ld b, $00
	ret


	ld hl, wcc97
	ld de, $0000
	xor a
	ldh [$97], a
	ldh [$98], a
	ldh [$99], a
	ldh [$9a], a

Jump_003_7c04:
	ldh a, [$99]
	ld b, a
	ldh a, [$95]
	call $367d
	ld d, a
	and a
	jr nz, jr_003_7c16

	ldh a, [$98]
	set 0, a
	ldh [$98], a

jr_003_7c16:
	ldh a, [$9a]
	ld b, a
	ldh a, [$96]
	call $367d
	ld e, a
	and a
	jr nz, jr_003_7c28

	ldh a, [$98]
	set 1, a
	ldh [$98], a

jr_003_7c28:
	ldh a, [$98]
	cp $03
	jr z, jr_003_7c62

	ld a, e
	cp d
	jr c, jr_003_7c46

	ldh a, [$9d]
	bit 1, a
	jr nz, jr_003_7c3c

	ld d, $c0
	jr jr_003_7c3e

jr_003_7c3c:
	ld d, $80

jr_003_7c3e:
	ldh a, [$9a]
	add $01
	ldh [$9a], a
	jr jr_003_7c58

jr_003_7c46:
	ldh a, [$9d]
	bit 0, a
	jr nz, jr_003_7c50

	ld d, $00
	jr jr_003_7c52

jr_003_7c50:
	ld d, $40

jr_003_7c52:
	ldh a, [$99]
	add $01
	ldh [$99], a

jr_003_7c58:
	ld a, d
	ld [hli], a
	ldh a, [$97]
	inc a
	ldh [$97], a
	jp Jump_003_7c04


jr_003_7c62:
	ld [hl], $ff
	ret


	xor a
	ldh [$9d], a
	ld a, [$c104]
	ld d, a
	ld a, [$c106]
	ld e, a
	ld hl, $c100
	ldh a, [$95]
	add l
	add $04
	ld l, a
	jr nc, jr_003_7c7c

	inc h

jr_003_7c7c:
	ld a, d
	ld b, a
	ld a, [hli]
	call $367d
	jr nc, jr_003_7c8f

	push hl
	ld hl, $ff9d
	bit 0, [hl]
	set 0, [hl]
	pop hl
	jr jr_003_7c98

jr_003_7c8f:
	push hl
	ld hl, $ff9d
	bit 0, [hl]
	res 0, [hl]
	pop hl

jr_003_7c98:
	push hl
	ld hl, $ffe5
	ld [hli], a
	ld a, $10
	ld [hli], a
	call $36b5
	ld a, [hl]
	ldh [$95], a
	pop hl
	inc hl
	ld b, e
	ld a, [hl]
	call $367d
	jr nc, jr_003_7cba

	push hl
	ld hl, $ff9d
	bit 1, [hl]
	set 1, [hl]
	pop hl
	jr jr_003_7cc3

jr_003_7cba:
	push hl
	ld hl, $ff9d
	bit 1, [hl]
	res 1, [hl]
	pop hl

jr_003_7cc3:
	ld [$ffe5], a
	ld a, $10
	ld [$ffe6], a
	call $36b5
	ld a, [$ffe7]
	ldh [$96], a
	ldh a, [$9b]
	and a
	ret z

	ldh a, [$9d]
	cpl
	and $03
	ldh [$9d], a
	ret


	ldh a, [$95]
	ld [wcd37], a
	dec a
	ld de, wccd3
	ld hl, wcc97
	add l
	ld l, a
	jr nc, jr_003_7cf0

	inc h

jr_003_7cf0:
	ld a, [hld]
	call Call_003_7cfe
	ld [de], a
	inc de
	ldh a, [$95]
	dec a
	ldh [$95], a
	jr nz, jr_003_7cf0

	ret


Call_003_7cfe:
	push hl
	ld b, a
	ld hl, $7d11

jr_003_7d03:
	ld a, [hli]
	cp $ff
	jr z, jr_003_7d0f

	cp b
	jr z, jr_003_7d0e

	inc hl
	jr jr_003_7d03

jr_003_7d0e:
	ld a, [hl]

jr_003_7d0f:
	pop hl
	ret


	ld b, b
	ld b, b
	nop
	add b
	add b
	jr nz, @-$3e

	db $10
	rst $38
	ret


	call $3ec4

Call_003_7d1e:
	push hl
	xor a
	ldh [$96], a
	ld a, b
	ldh [$97], a
	ld a, c
	ldh [$98], a
	ld a, $30
	ldh [$99], a
	call $38f5
	ld a, d
	and a
	jr z, jr_003_7d4d

	srl d
	rr e
	srl d
	rr e
	ldh a, [$97]
	ld b, a
	ldh a, [$98]
	srl b
	rr a
	srl b
	rr a
	ldh [$98], a
	ld a, b
	ldh [$97], a

jr_003_7d4d:
	ld a, e
	ldh [$99], a
	ld b, $04
	call $3902
	ldh a, [$98]
	ld e, a
	pop hl
	and a
	ret nz

	ld e, $01
	ret


	ld a, [wcee6]
	ld c, a
	ld a, [wcee7]
	ld b, a
	ld a, [wcee8]
	ld e, a
	ld a, [wcee9]
	ld d, a
	push de
	push bc
	call Call_003_7e1c
	ld a, e
	ld [wcef9], a
	ld a, d
	ld [wcef8], a
	pop bc
	pop de
	call Call_003_7e16
	ret z

	ld a, $ff
	jr c, jr_003_7d87

	ld a, $01

jr_003_7d87:
	ld [wceea], a
	call $3ec4
	ld a, [wcee8]
	ld e, a
	ld a, [wcee9]
	ld d, a

jr_003_7d95:
	push de
	ld a, [wcee6]
	ld c, a
	ld a, [wcee7]
	ld b, a
	call Call_003_7e16
	jr z, jr_003_7ddb

	jr nc, jr_003_7db5

	dec bc
	ld a, c
	ld [wcee8], a
	ld a, b
	ld [wcee9], a
	call Call_003_7e6a
	ld a, e
	sub d
	jr jr_003_7dc3

jr_003_7db5:
	inc bc
	ld a, c
	ld [wcee8], a
	ld a, b
	ld [wcee9], a
	call Call_003_7e6a
	ld a, d
	sub e

jr_003_7dc3:
	call Call_003_7e3a
	and a
	jr z, jr_003_7dcc

	call Call_003_7df6

jr_003_7dcc:
	ld a, [wcee8]
	ld [wcee6], a
	ld a, [wcee9]
	ld [wcee7], a
	pop de
	jr jr_003_7d95

jr_003_7ddb:
	pop de
	ld a, e
	ld [wcee6], a
	ld a, d
	ld [wcee7], a
	or e
	jr z, jr_003_7deb

	call Call_003_7e6a
	ld d, e

jr_003_7deb:
	call Call_003_7e3a
	ld a, $01
	call Call_003_7df6
	jp $3e07


Call_003_7df6:
	push hl

jr_003_7df7:
	push af
	push de
	ld d, $06
	call $2d2c
	ld c, $02
	call $3781
	pop de
	ld a, [wceea]
	add e
	cp $31
	jr nc, jr_003_7e13

	ld e, a
	pop af
	dec a
	jr nz, jr_003_7df7

	pop hl
	ret


jr_003_7e13:
	pop af
	pop hl
	ret


Call_003_7e16:
	ld a, d
	sub b
	ret nz

	ld a, e
	sub c
	ret


Call_003_7e1c:
	ld a, d
	sub b
	jr c, jr_003_7e29

	jr z, jr_003_7e30

jr_003_7e22:
	ld a, e
	sub c
	ld e, a
	ld a, d
	sbc b
	ld d, a
	ret


jr_003_7e29:
	ld a, c
	sub e
	ld e, a
	ld a, b
	sbc d
	ld d, a
	ret


jr_003_7e30:
	ld a, e
	sub c
	jr c, jr_003_7e29

	jr nz, jr_003_7e22

	ld de, $0000
	ret


Call_003_7e3a:
	push af
	push de
	ld a, [wListMenuID]
	and a
	jr z, jr_003_7e67

	ld a, [wcee6]
	ld [wceec], a
	ld a, [wcee7]
	ld [wceeb], a
	push hl
	ld de, $0015
	add hl, de
	push hl
	ld a, $7f
	ld [hli], a
	ld [hli], a
	ld [hli], a
	pop hl
	ld de, wceeb
	ld bc, $0203
	call $3c8f
	call $0b31
	pop hl

jr_003_7e67:
	pop de
	pop af
	ret


Call_003_7e6a:
	push hl
	ld hl, wcee4
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
	push hl
	push de
	call Call_003_7d1e
	ld a, e
	pop de
	pop bc
	push af
	call Call_003_7d1e
	pop af
	ld d, e
	ld e, a
	pop hl
	ret


	ld a, [$c109]
	cp $04
	jr nz, jr_003_7eb9

	ld a, [wd2e6]
	ld b, a
	ld a, [wc434]
	ld c, a
	ld hl, $7ec5

jr_003_7e9c:
	ld a, [hli]
	cp $ff
	jr z, jr_003_7eb9

	cp b
	jr nz, jr_003_7eb5

	ld a, [hli]
	cp c
	jr nz, jr_003_7eb6

	ld a, [hl]
	push af
	call $3c6c
	pop af
	call $3f25
	xor a
	ldh [$db], a
	ret


jr_003_7eb5:
	inc hl

jr_003_7eb6:
	inc hl
	jr jr_003_7e9c

jr_003_7eb9:
	ld a, $ff
	ldh [$db], a
	ld b, $14
	ld hl, $79eb
	jp $3620


	db $17

	jr nc, @+$3c

	db $08, $3d

	ccf

	db $08, $1e

	ld b, b

	db $13

	ld [hld], a
	ld b, b

	db $01, $32

	ld b, b

	db $14

	jr z, @+$42

	db $12

	ld d, $41

	db $07

	dec e
	ld b, b

	db $05, $1d

	ld b, b

	db $0c

	ld [hli], a
	ld b, b

	db $02

	ld d, h
	ld b, d

	db $02

	ld d, l
	ld b, d

	db $06, $54

	ld b, d

	db $06, $55

	ld b, d

	db $12

	ld d, b
	ld b, d

	db $12

	ld d, d
	ld b, d

	db $0d

	ld [hl], $40

	db $ff

	ld [$1321], sp
	ld a, a
	call $3c79
	ld a, [wd2e1]
	bit 0, a
	ld hl, $7f22
	jr nz, jr_003_7f0d

	ld hl, $7f39

jr_003_7f0d:
	call $3c79
	jp $0f6a


	nop
	cp d
	cp d
	jp z, $8d7f

	add [hl]
	add e
	add c
	ld a, a
	cp d
	or e
	add hl, hl
	sbc $58
	nop
	ld d, h
	ld a, a
	ld e, l

Call_003_7f26:
	ret


	ld a, a
	pop bc
	ld [c], a
	or e
	jp $e7de


	ld c, a
	ld d, h
	ld a, a
	ret c

	db $e3
	rlca
	ld a, a
	adc $de
	inc a
	ld d, a
	nop
	ld d, h
	ret


	ld a, a
	cp e
	or d
	cp d
	or e
	ld a, a
	or a
	or [hl]
	sbc $4f
	ld d, h
	ld a, a
	ret c

	db $e3
	rlca
	ld a, a
	adc $de
	inc a
	ld d, a
	ld [$6b21], sp
	ld a, a
	ld a, [wd2e6]
	cp $13
	jr nz, jr_003_7f65

	ld a, [wc420]
	cp $38
	jr nz, jr_003_7f65

	ld hl, $7f79

jr_003_7f65:
	call $3c79
	jp $0f6a


	nop
	ld d, h
	ret


	ld a, a
	adc $de
	ld h, $7f
	or d
	rst $18
	ld b, h

jr_003_7f76:
	or d
	rst $20
	ld d, a
	nop
	inc a
	jp nz, wde30

	ld a, a
	jr nc, jr_003_7fd7

	ld d, a
	nop
	cp d
	cp d
	jp z, $837f

	and a
	dec a
	db $e3
	adc a
	db $e3
	jr nc, jr_003_7f76

	ld d, a
	nop
	adc a
	add d
	xor e
	sbc l
	xor h
	ld b, d
	jr nc, @-$17

	ld d, b
	ld b, $08
	ld a, $01
	ld [wcc3c], a
	ld hl, wd6af
	set 6, [hl]
	call $3e04
	xor a
	ldh [$b0], a
	inc a
	ldh [$ba], a
	call $36ca
	ld b, $1c
	ld hl, $53aa
	call $3620
	ld hl, wd6af
	res 6, [hl]
	ld de, $0f6a
	push de
	ldh a, [hLoadedROMBank]

Jump_003_7fc5:
	push af

Call_003_7fc6:
	jp $14ba


Call_003_7fc9:
Jump_003_7fc9:
	nop

Call_003_7fca:
Jump_003_7fca:
	call c, $e7b1
	ld a, a
	ld d, h
	rlca
	xor h
	inc c
	ld h, $4f
	ret nz

	cp b
	cp e

jr_003_7fd7:
	sbc $7f
	cp a
	db $db
	rst $18
	jp $2fd9


	rst $20
	ld d, a
	ld bc, $0929
	inc bc
	db $10
	ld [bc], a
	ld h, b
	ld hl, $3121
	add hl, hl
	ld hl, $0013
	add hl, bc
	ld bc, $4383
	ld c, c
	adc b
	jr nz, @+$52

	ld b, c
	ld bc, $1143
	pop bc
	ld b, c
	inc de
	inc bc
	db $d3
