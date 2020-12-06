; Disassembly of "pokemon-red-jp.gb"

SECTION "ROM Bank $00b", ROMX[$4000], BANK[$b]

unk_00b_4000:
	dr $2c000, $2fbf6

unkImage_00b_7bf6:
	INCBIN "gfx/auto/image_00b_7bf6.2bpp"

unkImage_00b_7df6:
	INCBIN "gfx/auto/image_00b_7df6.2bpp"

Jump_00b_7e76:
	ld a, [wcf79]
	ld hl, wd133
	ld bc, $002c
	call $3ad1
	ld a, [wd0bd]
	ld b, a
	ld c, $04

jr_00b_7e88:
	ld a, [hli]
	cp b
	jr z, jr_00b_7e91

	dec c
	jr nz, jr_00b_7e88

	and a
	ret


jr_00b_7e91:
	ld hl, $7e99
	call $3c79
	scf
	ret


	ld bc, wcd68
	nop
	jp z, $bd7f

	inc sp
	add $4f
	ld d, b
	ld bc, wcf45
	nop
	db $dd
	ld a, a
	or l
	ld a, $b4
	jp wcfb2


	cp l
	ld e, b

	ld a, [wd038]
	and $7f
	cp $0a
	ret z

	ld hl, $7ec5
	jr nc, jr_00b_7ec2

	ld hl, $7ed2

jr_00b_7ec2:
	jp $3c79


	nop
	cp d
	or e
	or [hl]
	jp z, $3a7f

	jp nz, wde28

	jr nc, @-$17

	ld e, b
	nop
	cp d
	or e
	or [hl]
	jp z, $b27f

	rst $08
	set 0, h
	jp nz, Jump_00b_7fc9

	sub $b3
	jr nc, jr_00b_7f3b

	ld de, $a203
	ld hl, $a187
	call Call_00b_7f20
	call Call_00b_7ef8
	ld de, $a38b
	ld hl, $a30f
	call Call_00b_7f20

Call_00b_7ef8:
	ld b, $03

jr_00b_7efa:
	ld c, $1c

jr_00b_7efc:
	push bc
	ld a, [de]
	ld bc, $ffc9
	call Call_00b_7f3a
	ld a, [de]
	dec de
	swap a
	ld bc, $0037
	call Call_00b_7f3a
	pop bc
	dec c
	jr nz, jr_00b_7efc

	dec de
	dec de
	dec de
	dec de
	ld a, b
	ld bc, $ffc8
	add hl, bc
	ld b, a
	dec b
	jr nz, jr_00b_7efa

	ret


Call_00b_7f20:
	ld a, $1c
	ldh [$8b], a
	ld bc, $ffff

jr_00b_7f27:
	ld a, [de]
	dec de
	swap a
	call Call_00b_7f3a
	ldh a, [$8b]
	dec a
	ldh [$8b], a
	jr nz, jr_00b_7f27

	dec de
	dec de
	dec de
	dec de
	ret


Call_00b_7f3a:
	push hl

Call_00b_7f3b:
jr_00b_7f3b:
	and $0f
	ld hl, $7f4b
	add l
	ld l, a
	jr nc, jr_00b_7f45

	inc h

jr_00b_7f45:
	ld a, [hl]
	pop hl
	ld [hld], a
	ld [hl], a
	add hl, bc
	ret


	db $00, $03, $0c, $0f, $30, $33, $3c, $3f, $c0, $c3, $cc, $cf, $f0, $f3, $fc, $ff

	xor a
	ld hl, wcd68
	ld [hli], a
	ldh a, [$f3]
	and a
	ld a, [wd009]
	jr z, jr_00b_7f6b

	ld a, [wcfda]

jr_00b_7f6b:
	add a
	ldh [$98], a
	xor a
	ldh [$95], a
	ldh [$96], a
	ldh [$97], a
	ld a, $64
	ldh [$99], a
	ld b, $04
	call $3902
	ldh a, [$98]
	ld [hli], a
	ldh a, [$99]
	ldh [$98], a
	ld a, $0a
	ldh [$99], a
	ld b, $04
	call $3902
	ldh a, [$98]
	swap a
	ld b, a
	ldh a, [$99]
	add b
	ld [hl], a
	ld de, wcce7
	ld c, $03
	ld a, $0b
	call $3e9d
	ld hl, $7fa7
	jp $3c79


	nop
	cp d
	ld a, [hld]
	sbc $26
	ld a, a
	or c
	ret nz

	ret c

	add $7f
	pop bc
	rst $10
	ld a, [hld]
	rst $18
	ret nz

	rst $20
	ld e, b
	ld a, [wc102]
	and $08
	jr z, jr_00b_7fde

	ld b, $45
	ld a, $1c
	call $3e9d
	ld a, b
	and a

Jump_00b_7fc9:
	ld b, $33
	jr z, jr_00b_7fd6

	ld hl, wd523
	ld a, [hli]
	or [hl]
	jr nz, jr_00b_7fde

	ld b, $32

jr_00b_7fd6:
	call $3c6c
	ld a, b
	call $3f25
	xor a

jr_00b_7fde:
	ld [wcd3d], a
	ret


	nop
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
	jp $b2c5


	rst $20
	ld d, a
	nop
	adc c
	add c
	xor e
	db $dd
	ld a, a
	db $d3
	rst $18
	jp $b2c5


	rst $20
	ld d, a
	ld a, c
