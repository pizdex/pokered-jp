; Disassembly of "pokemon-red-jp.gb"

SECTION "ROM Bank $00e", ROMX[$4000], BANK[$e]

unk_00e_4000:
	dr $38000, $3a95a

unk_00e_695a:
	cp $40
	ret nc

	jp Jump_00e_6a9b


	cp $20
	ret nc

	jp Jump_00e_6b71


	cp $40
	ret nc

	jp Jump_00e_6b34


	cp $40
	ret nc

	jp Jump_00e_6b71


	cp $40
	ld a, $0a
	call Call_00e_6b4e
	jp c, Jump_00e_6a47

	ld a, $05
	call Call_00e_6b4e
	ret nc

	jp Jump_00e_6a9b


	ld a, [wcfd0]
	and a
	ret z

	jp Jump_00e_6b05


	cp $40
	ret nc

	jp Jump_00e_6b77


	cp $40
	ret nc

	jp Jump_00e_6b7d


	cp $80
	ret nc

	ld a, $0a
	call Call_00e_6b4e
	ret nc

	jp Jump_00e_6a41


	cp $40
	ret nc

	jp Jump_00e_6b71


	cp $40
	ret nc

	jp Jump_00e_6a41


	cp $40
	ret nc

	ld a, $0a
	call Call_00e_6b4e
	ret nc

	jp Jump_00e_6a47


	cp $20
	ret nc

	ld a, $05
	call Call_00e_6b4e
	ret nc

	jp Jump_00e_6a3b


	cp $20
	ret nc

	ld a, $05
	call Call_00e_6b4e
	ret nc

	jp Jump_00e_6a11


	cp $80
	ret nc

	ld a, $05
	call Call_00e_6b4e
	ret nc

	jp Jump_00e_6a41


	cp $40
	ret nc

	jp Jump_00e_6b77


	cp $14
	jp c, Jump_00e_6a9b

	cp $80
	ret nc

	ld a, $04
	call Call_00e_6b4e
	ret nc

	jp Jump_00e_6a41


	cp $80
	ret nc

	ld a, $05
	call Call_00e_6b4e
	ret nc

	jp Jump_00e_6a47


	and a
	ret


Jump_00e_6a06:
	ld hl, wccdf
	dec [hl]
	scf
	ret


Call_00e_6a0c:
	ld a, $8e
	jp $3788


Jump_00e_6a11:
	call Call_00e_6b10
	ld a, $10
	ld [wcf00], a
	ld de, wcee6
	ld hl, wcfce
	ld a, [hld]
	ld [de], a
	inc de
	ld a, [hl]
	ld [de], a
	inc de
	ld hl, wcfdc
	ld a, [hld]
	ld [de], a
	inc de
	ld [wcee4], a
	ld [wcfce], a
	ld a, [hl]
	ld [de], a
	ld [wcee5], a
	ld [wcfcd], a
	jr jr_00e_6a89

Jump_00e_6a3b:
	ld a, $14
	ld b, $14
	jr jr_00e_6a4b

Jump_00e_6a41:
	ld a, $13
	ld b, $32
	jr jr_00e_6a4b

Jump_00e_6a47:
	ld a, $12
	ld b, $c8

jr_00e_6a4b:
	ld [wcf00], a
	ld hl, wcfce
	ld a, [hl]
	ld [wcee6], a
	add b
	ld [hld], a
	ld [wcee8], a
	ld a, [hl]
	ld [wcee7], a
	ld [wcee9], a
	jr nc, jr_00e_6a68

	inc a
	ld [hl], a
	ld [wcee9], a

jr_00e_6a68:
	inc hl
	ld a, [hld]
	ld b, a
	ld de, wcfdc
	ld a, [de]
	dec de
	ld [wcee4], a
	sub b
	ld a, [hli]
	ld b, a
	ld a, [de]
	ld [wcee5], a
	sbc b
	jr nc, jr_00e_6a89

	inc de
	ld a, [de]
	dec de
	ld [hld], a
	ld [wcee8], a
	ld a, [de]
	ld [hl], a
	ld [wcee9], a

jr_00e_6a89:
	call Call_00e_6bb4
	ld hl, wc3ca
	xor a
	ld [wcf7b], a
	ld a, $48
	call $3e9d
	jp Jump_00e_6a06


Jump_00e_6a9b:
	ld a, [wd81b]
	ld c, a
	ld hl, wd824
	ld d, $00

jr_00e_6aa4:
	ld a, [hli]
	ld b, a
	ld a, [hld]
	or b
	jr z, jr_00e_6aab

	inc d

jr_00e_6aab:
	push bc
	ld bc, $002c
	add hl, bc
	pop bc
	dec c
	jr nz, jr_00e_6aa4

	ld a, d
	cp $02
	jp nc, Jump_00e_6abc

	and a
	ret


Jump_00e_6abc:
	ld a, [wcfcf]
	ld hl, wd824
	ld bc, $002c
	call $3ad1
	ld d, h
	ld e, l
	ld hl, wcfcd
	ld bc, $0004
	call $01bb
	ld hl, $6af2
	call $3c79
	ld a, $01
	ld [wd0e2], a
	ld hl, $49f8
	ld b, $0f
	call $3620
	xor a
	ld [wd0e2], a
	ld a, [wd0f0]
	cp $04
	ret z

	scf
	ret


	ld bc, wd029
	nop
	jp z, $504f

	ld bc, wcfc1
	nop
	db $dd
	set 3, a
	cp d
	jp nc, $e7c0

	ld e, b

Jump_00e_6b05:
	call Call_00e_6a0c
	call Call_00e_6b10
	ld a, $34
	jp Jump_00e_6bab


Call_00e_6b10:
	ld a, [wcfcf]
	ld hl, wd827
	ld bc, $002c
	call $3ad1
	xor a
	ld [hl], a
	ld [wcfd0], a
	ld hl, wd046
	res 0, [hl]
	ret


	call Call_00e_6a0c
	ld hl, wd045
	set 0, [hl]
	ld a, $2e
	jp Jump_00e_6bab


Jump_00e_6b34:
	call Call_00e_6a0c
	ld hl, wd045
	set 1, [hl]
	ld a, $37
	jp Jump_00e_6bab


	call Call_00e_6a0c
	ld hl, wd045
	set 2, [hl]
	ld a, $3a
	jp Jump_00e_6bab


Call_00e_6b4e:
	ldh [$99], a
	ld hl, wcfdb
	ld a, [hli]
	ldh [$95], a
	ld a, [hl]
	ldh [$96], a
	ld b, $02
	call $3902
	ldh a, [$98]
	ld c, a
	ldh a, [$97]
	ld b, a
	ld hl, wcfce
	ld a, [hld]
	ld e, a
	ld a, [hl]
	ld d, a
	ld a, d
	sub b
	ret nz

	ld a, e
	sub c
	ret


Jump_00e_6b71:
	ld b, $0a
	ld a, $41
	jr jr_00e_6b87

Jump_00e_6b77:
	ld b, $0b
	ld a, $42
	jr jr_00e_6b87

Jump_00e_6b7d:
	ld b, $0c
	ld a, $43
	jr jr_00e_6b87

	ld b, $0d
	ld a, $44

jr_00e_6b87:
	ld [wcf00], a
	push bc
	call Call_00e_6bb4
	pop bc
	ld hl, wcfb4
	ld a, [hld]
	push af
	ld a, [hl]
	push af
	push hl
	ld a, $af
	ld [hli], a
	ld [hl], b
	ld hl, $7762
	ld b, $0f
	call $3620
	pop hl
	pop af
	ld [hli], a
	pop af
	ld [hl], a
	jp Jump_00e_6a06


Jump_00e_6bab:
	ld [wcf00], a
	call Call_00e_6bb4
	jp Jump_00e_6a06


Call_00e_6bb4:
	ld a, [wcf00]
	ld [wd0e3], a
	call $1add
	ld hl, $6bc3
	jp $3c79


	ld bc, wd029
	nop
	jp z, $507f

	ld bc, wcfc1
	nop
	add $4f
	ld d, b
	ld bc, wcd68
	nop
	db $dd
	ld a, a
	jp nz, wdfb6

	ret nz

	ld e, b

	call Call_00e_6bf0
	call Call_00e_6bfc
	ld a, [wd034]
	dec a
	ret z

	jp Jump_00e_6c1a


	call Call_00e_6bf0
	jp Jump_00e_6c1a


Call_00e_6bf0:
	ld de, $6d11
	ld hl, $8310
	ld bc, $0e04
	jp $02dd


Call_00e_6bfc:
	call Call_00e_6c95
	ld hl, wd12b
	ld de, wd123
	call Call_00e_6c39
	ld a, $60
	ld hl, wd05e
	ld [hli], a
	ld [hl], a
	ld a, $08
	ld [wcd3e], a
	ld hl, wOAMBuffer
	jp Jump_00e_6c74


Jump_00e_6c1a:
	call Call_00e_6cac
	ld hl, wd823
	ld de, wd81b
	call Call_00e_6c39
	ld hl, wd05e
	ld a, $48
	ld [hli], a
	ld [hl], $20
	ld a, $f8
	ld [wcd3e], a
	ld hl, wOAMBuffer + $18
	jp Jump_00e_6c74


Call_00e_6c39:
	ld a, [de]
	push af
	ld de, wcee4
	ld c, $06
	ld a, $34

jr_00e_6c42:
	ld [de], a
	inc de
	dec c
	jr nz, jr_00e_6c42

	pop af
	ld de, wcee4

jr_00e_6c4b:
	push af
	call Call_00e_6c55
	inc de
	pop af
	dec a
	jr nz, jr_00e_6c4b

	ret


Call_00e_6c55:
	inc hl
	ld a, [hli]
	and a
	jr nz, jr_00e_6c60

	ld a, [hl]
	and a
	ld b, $33
	jr z, jr_00e_6c6b

jr_00e_6c60:
	inc hl
	inc hl
	ld a, [hl]
	and a
	ld b, $32
	jr nz, jr_00e_6c6d

	dec b
	jr jr_00e_6c6d

jr_00e_6c6b:
	inc hl
	inc hl

jr_00e_6c6d:
	ld a, b
	ld [de], a
	ld bc, $0028
	add hl, bc
	ret


Call_00e_6c74:
Jump_00e_6c74:
	ld de, wcee4
	ld c, $06

jr_00e_6c79:
	ld a, [wd05f]
	ld [hli], a
	ld a, [wd05e]
	ld [hli], a
	ld a, [de]
	ld [hli], a
	xor a
	ld [hli], a
	ld a, [wd05e]
	ld b, a
	ld a, [wcd3e]
	add b
	ld [wd05e], a
	inc de
	dec c
	jr nz, jr_00e_6c79

	ret


Call_00e_6c95:
	ld hl, $6ca9
	ld de, wcd3f
	ld bc, $0003
	call $01bb
	ld hl, wc47a
	ld de, $ffff
	jr jr_00e_6cc3

	db $73, $77, $6f

Call_00e_6cac:
	ld hl, $6cc0
	ld de, wcd3f
	ld bc, $0003
	call $01bb
	ld hl, wc3c9
	ld de, $0001
	jr jr_00e_6cc3

	db $73, $74, $78

jr_00e_6cc3:
	ld [hl], $73
	ld bc, $0014
	add hl, bc
	ld a, [wcd40]
	ld [hl], a
	ld a, $08

jr_00e_6ccf:
	add hl, de
	ld [hl], $76
	dec a
	jr nz, jr_00e_6ccf

	add hl, de
	ld a, [wcd41]
	ld [hl], a
	ret


	call Call_00e_6bf0
	ld hl, wd12b
	ld de, wd123
	call Call_00e_6c39
	ld hl, wd05e
	ld a, $50
	ld [hli], a
	ld [hl], $40
	ld a, $08
	ld [wcd3e], a
	ld hl, wOAMBuffer
	call Call_00e_6c74
	ld hl, wd823
	ld de, wd81b
	call Call_00e_6c39
	ld hl, wd05e
	ld a, $50
	ld [hli], a
	ld [hl], $60
	ld hl, wOAMBuffer + $18
	jp Jump_00e_6c74

unk_00e_6d11:
	dr $3ad11, $3b0a1

unk_00e_70a1:
	ld hl, wccd3
	xor a
	ld [hl], a
	ld a, [wcf79]
	ld c, a
	ld b, $01
	call Call_00e_7422

	ldh a, [$d7]
	push af
	xor a
	ld [wd0e6], a
	dec a
	ld [wcf79], a
	push hl
	push bc
	push de
	ld hl, wd123
	push hl

Jump_00e_70c1:
jr_00e_70c1:
	ld hl, wcf79
	inc [hl]
	pop hl
	inc hl
	ld a, [hl]
	cp $ff
	jp z, Jump_00e_7271

	ld [wcee4], a
	push hl
	ld a, [wcf79]
	ld c, a
	ld hl, wccd3
	ld b, $02
	call Call_00e_7422
	ld a, c
	and a
	jp z, Jump_00e_70c1

	ld a, [wcee4]
	dec a
	ld b, $00
	ld hl, $7427
	add a
	rl b
	ld c, a
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	push hl
	ld a, [wcf78]
	push af
	xor a
	ld [wcc49], a
	call $2d68
	pop af
	ld [wcf78], a
	pop hl

Jump_00e_7104:
	ld a, [hli]
	and a
	jr z, jr_00e_70c1

	ld b, a
	cp $03
	jr z, jr_00e_7124

	ld a, [wd0f0]
	cp $32
	jr z, jr_00e_70c1

	ld a, b
	cp $02
	jr z, jr_00e_7137

	ld a, [wccd4]
	and a
	jr nz, jr_00e_70c1

	ld a, b
	cp $01
	jr z, jr_00e_7140

jr_00e_7124:
	ld a, [wd0f0]
	cp $32
	jp nz, Jump_00e_726c

	ld a, [hli]
	ld b, a
	ld a, [wcfa0]
	cp b
	jp c, Jump_00e_70c1

	jr jr_00e_7149

jr_00e_7137:
	ld a, [hli]
	ld b, a
	ld a, [wcf78]
	cp b
	jp nz, Jump_00e_726c

jr_00e_7140:
	ld a, [hli]
	ld b, a
	ld a, [wcfa0]
	cp b
	jp c, Jump_00e_726d

jr_00e_7149:
	ld [wd0ec], a
	ld a, $01
	ld [wd0e6], a
	push hl
	ld a, [hl]
	ld [wcee5], a
	ld a, [wcf79]
	ld hl, wd257
	call $2fb1
	call $386e
	ld hl, $7307
	call $3c79
	ld c, $32
	call $3781
	xor a
	ldh [$ba], a
	ld hl, wc3a0
	ld bc, $0c14
	call $0374
	ld a, $01
	ldh [$ba], a
	ld a, $ff
	ld [wcfb2], a
	call $0188
	ld hl, $7e15
	ld b, $1e
	call $3620
	jp c, Jump_00e_72c1

	ld hl, $72d1
	call $3c79
	pop hl
	ld a, [hl]
	ld [wd092], a
	ld [wcf7f], a
	ld [wcee5], a
	ld a, $01
	ld [wd093], a
	ld a, $0e
	ld [wd094], a
	call $37b3
	push hl
	ld hl, $72e0
	call $3c89
	ld a, $89
	call $3788
	call $3790
	ld c, $28
	call $3781
	call $03bf
	call Call_00e_728a
	ld a, [wd0e3]
	push af
	ld a, [wd092]
	ld [wd0e3], a
	ld a, $3a
	call $3e9d
	ld a, [wd0e3]
	dec a
	ld hl, $4000
	ld bc, $001c
	call $3ad1
	ld de, wd095
	call $01bb
	ld a, [wd092]
	ld [wd095], a
	pop af
	ld [wd0e3], a
	ld hl, wcf8f
	ld de, wcfa1
	ld b, $01
	call $3980
	ld a, [wcf79]
	ld hl, wd12b
	ld bc, $002c
	call $3ad1
	ld e, l
	ld d, h
	push hl
	push bc
	ld bc, $0022
	add hl, bc
	ld a, [hli]
	ld b, a
	ld c, [hl]
	ld hl, wcfa2
	ld a, [hld]
	sub c
	ld c, a
	ld a, [hl]
	sbc b
	ld b, a
	ld hl, wcf81
	ld a, [hl]
	add c
	ld [hld], a
	ld a, [hl]
	adc b
	ld [hl], a
	dec hl
	pop bc
	call $01bb
	ld a, [wd092]
	ld [wd0e3], a
	xor a
	ld [wcc49], a
	call Call_00e_7326
	pop hl
	ld a, $42
	call $3e9d
	ld a, [wd034]
	and a
	call z, Call_00e_731d
	ld a, $3a
	call $3e9d
	ld a, [wd0e3]
	dec a
	ld c, a
	ld b, $01
	ld hl, wd27b
	push bc
	call Call_00e_7422
	pop bc
	ld hl, wd28e
	call Call_00e_7422
	pop de
	pop hl
	ld a, [wcf7f]
	ld [hl], a
	push hl
	ld l, e
	ld h, d
	jr jr_00e_726d

Jump_00e_726c:
	inc hl

Jump_00e_726d:
jr_00e_726d:
	inc hl
	jp Jump_00e_7104


Jump_00e_7271:
	pop de
	pop bc
	pop hl
	pop af
	ldh [$d7], a
	ld a, [wd0f0]
	cp $32
	ret z

	ld a, [wd034]
	and a
	ret nz

	ld a, [wd0e6]
	and a
	call nz, $0d9b
	ret


Call_00e_728a:
	ld a, [wd092]
	push af
	ld a, [wd095]
	ld [wd092], a
	call $37b3
	pop af
	ld [wd092], a
	ld hl, wcd68
	ld de, wcf45

jr_00e_72a1:
	ld a, [de]
	inc de
	cp [hl]
	inc hl
	ret nz

	cp $50
	jr nz, jr_00e_72a1

	ld a, [wcf79]
	ld bc, $0006
	ld hl, wd257
	call $3ad1
	push hl
	call $37b3
	ld hl, wcd68
	pop de
	jp $01bb


Jump_00e_72c1:
	ld hl, $72ef
	call $3c79
	call $03bf
	pop hl
	call Call_00e_731d
	jp Jump_00e_70c1


	nop
	or l
	jp nc, wc433

	or e
	rst $20
	ld a, a
	ld d, b
	ld bc, wcf45
	nop
	jp z, $0057

	ld c, a
	ld d, b
	ld bc, wcd68
	nop
	add $7f
	cp h
	sbc $b6
	cp h
	ret nz

	ld d, a
	nop
	or c
	jp c, $e656

	ld c, a
	ld d, b
	ld bc, wcf45
	nop
	ret


	ld a, a
	call $b6de
	ld h, $7f
	call nz, wdfcf
	ret nz

	rst $20
	ld e, b
	nop
	ld d, [hl]
	ld a, a
	or l
	call nc, $e6e7
	ld c, a
	ld d, b
	ld bc, wcf45
	nop
	ret


	ld a, a
	sub $b3
	cp l
	ld h, $56
	rst $20
	ld d, a

Call_00e_731d:
	ld a, [wd0f0]
	cp $32
	ret z

	jp $1ba5


Call_00e_7326:
	ld hl, $7427
	ld a, [wd0e3]
	ld [wcf78], a
	dec a
	ld bc, $0000
	ld hl, $7427
	add a
	rl b
	ld c, a
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a

jr_00e_733e:
	ld a, [hli]
	and a
	jr nz, jr_00e_733e

jr_00e_7342:
	ld a, [hli]
	and a
	jr z, jr_00e_737c

	ld b, a
	ld a, [wd0ec]
	cp b
	ld a, [hli]
	jr nz, jr_00e_7342

	ld d, a
	ld a, [wcc49]
	and a
	jr nz, jr_00e_7361

	ld hl, wd133
	ld a, [wcf79]
	ld bc, $002c
	call $3ad1

jr_00e_7361:
	ld b, $04

jr_00e_7363:
	ld a, [hli]
	cp d
	jr z, jr_00e_737c

	dec b
	jr nz, jr_00e_7363

	ld a, d
	ld [wd0bd], a
	ld [wd0e3], a
	call $1b6d
	call $386e
	ld a, $1b
	call $3e9d

jr_00e_737c:
	ld a, [wcf78]
	ld [wd0e3], a
	ret


	call $3ec4
	push hl
	push de
	push bc
	ld hl, $7427
	ld b, $00
	ld a, [wcf78]
	dec a
	add a
	rl b
	ld c, a
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a

jr_00e_739a:
	ld a, [hli]
	and a
	jr nz, jr_00e_739a

	jr jr_00e_73a2

jr_00e_73a0:
	pop de

jr_00e_73a1:
	inc hl

jr_00e_73a2:
	ld a, [hli]
	and a
	jp z, Jump_00e_7415

	ld b, a
	ld a, [wd0ec]
	cp b
	jp c, Jump_00e_7415

	ld a, [wcee4]
	and a
	jr z, jr_00e_73bb

	ld a, [wcd3d]
	cp b
	jr nc, jr_00e_73a1

jr_00e_73bb:
	push de
	ld c, $04

jr_00e_73be:
	ld a, [de]
	inc de
	cp [hl]
	jr z, jr_00e_73a0

	dec c
	jr nz, jr_00e_73be

	pop de
	push de
	ld c, $04

jr_00e_73ca:
	ld a, [de]
	and a
	jr z, jr_00e_73ec

	inc de
	dec c
	jr nz, jr_00e_73ca

	pop de
	push de
	push hl
	ld h, d
	ld l, e
	call Call_00e_7419
	ld a, [wcee4]
	and a
	jr z, jr_00e_73eb

	push de
	ld bc, $0012
	add hl, bc
	ld d, h
	ld e, l
	call Call_00e_7419
	pop de

jr_00e_73eb:
	pop hl

jr_00e_73ec:
	ld a, [hl]
	ld [de], a
	ld a, [wcee4]
	and a
	jr z, jr_00e_73a0

	push hl
	ld a, [hl]
	ld hl, $0015
	add hl, de
	push hl
	dec a
	ld hl, $5658
	ld bc, $0006
	call $3ad1
	ld de, wcee4
	ld a, $0e
	call $01a3
	ld a, [wcee9]
	pop hl
	ld [hl], a
	pop hl
	jr jr_00e_73a0

Jump_00e_7415:
	pop bc
	pop de
	pop hl
	ret


Call_00e_7419:
	ld c, $03

jr_00e_741b:
	inc de
	ld a, [de]
	ld [hli], a
	dec c
	jr nz, jr_00e_741b

	ret


Call_00e_7422:
	ld a, $10
	jp $3e9d

unk_00e_7427:
	dr $3b427, $3bdb1

jr_00e_7db1:
	inc hl
	rrca
	ld c, l
	ld [de], a
	ld c, a
	nop


	ldh a, [$f3]
	and a
	ld de, wcffc
	ld hl, wd00a
	ld a, [wcfb9]
	jr z, jr_00e_7dce

	ld de, wcfcd
	ld hl, wcfdb
	ld a, [wcfb3]

jr_00e_7dce:
	ld b, a
	ld a, [de]
	cp [hl]
	inc de
	inc hl
	ld a, [de]
	sbc [hl]
	jp z, Jump_00e_7e62

	ld a, b
	cp $9c
	jr nz, jr_00e_7e02

	push hl
	push de
	push af
	ld c, $32
	call $3781
	ld hl, wcfff
	ldh a, [$f3]
	and a
	jr z, jr_00e_7df0

	ld hl, wcfd0

jr_00e_7df0:
	ld a, [hl]
	and a
	ld [hl], $02
	ld hl, $7e6d
	jr z, jr_00e_7dfc

	ld hl, $7e7a

jr_00e_7dfc:
	call $3c79
	pop af
	pop de
	pop hl

jr_00e_7e02:
	ld a, [hld]
	ld [wcee4], a
	ld c, a
	ld a, [hl]
	ld [wcee5], a
	ld b, a
	jr z, jr_00e_7e12

	srl b
	rr c

jr_00e_7e12:
	ld a, [de]
	ld [wcee6], a
	add c
	ld [de], a
	ld [wcee8], a
	dec de
	ld a, [de]
	ld [wcee7], a
	adc b
	ld [de], a
	ld [wcee9], a
	inc hl
	inc de
	ld a, [de]
	dec de
	sub [hl]
	dec hl
	ld a, [de]
	sbc [hl]
	jr c, jr_00e_7e3a

	ld a, [hli]
	ld [de], a
	ld [wcee9], a
	inc de
	ld a, [hl]
	ld [de], a
	ld [wcee8], a

jr_00e_7e3a:
	ld hl, $7fdb
	call Call_00e_7ffa
	ldh a, [$f3]
	and a
	ld hl, wc45e
	ld a, $01
	jr z, jr_00e_7e4e

	ld hl, wc3ca
	xor a

jr_00e_7e4e:
	ld [wcf7b], a
	ld a, $48
	call $3e9d
	ld hl, $4eb8
	call Call_00e_7ffa
	ld hl, $7e90
	jp $3c79


Jump_00e_7e62:
	ld c, $32
	call $3781
	ld hl, $7f4e
	jp Jump_00e_7ffa


	nop
	ld e, d
	jp z, wc84f

	pop de
	ret c

	jp z, wd22c

	ret nz

	rst $20
	ld d, a
	nop
	ld e, d
	jp z, $b97f

	sbc $ba
	or e
	add $c5
	rst $18
	jp wc84f


	pop de
	ret c

	jp z, wd22c

	ret nz

	rst $20
	ld d, a
	nop
	ld e, d
	jp z, wc07f

	or d
	ret c

	ld [c], a
	cp b
	db $dd
	ld c, a
	or [hl]
	or d
	call z, $bcb8
	ret nz

	rst $20
	ld e, b
	ld hl, wcffb
	ld de, wcfcc
	ld bc, wd046
	ld a, [wd044]
	ldh a, [$f3]
	and a
	jr nz, jr_00e_7ec3

	ld hl, wcfcc
	ld de, wcffb
	ld bc, wd041
	ld [wcc2e], a
	ld a, [wd03f]

jr_00e_7ec3:
	bit 6, a
	jp nz, Jump_00e_7f76

	push hl
	push de
	push bc
	ld hl, wd040
	ldh a, [$f3]
	and a
	jr z, jr_00e_7ed6

	ld hl, wd045

jr_00e_7ed6:
	bit 4, [hl]
	push af
	ld hl, $577e
	ld b, $1e
	call nz, $3620
	ld a, [wd2d4]
	add a
	ld hl, $7fdb
	ld b, $0f
	jr nc, jr_00e_7ef1

	ld hl, $57be
	ld b, $1e

jr_00e_7ef1:
	call $3620
	ld hl, $57a8
	ld b, $1e
	pop af
	call nz, $3620
	pop bc
	ld a, [bc]
	set 3, a
	ld [bc], a
	pop de
	pop hl
	push hl
	ld a, [hl]
	ld [de], a
	ld bc, $0005
	add hl, bc
	inc de
	inc de
	inc de
	inc de
	inc de
	inc bc
	inc bc
	call $01bb
	ldh a, [$f3]
	and a
	jr z, jr_00e_7f24

	ld a, [de]
	ld [wcceb], a
	inc de
	ld a, [de]
	ld [wccec], a
	dec de

jr_00e_7f24:
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	inc de
	inc hl
	inc hl
	inc hl
	inc de
	inc de
	inc de
	ld bc, $0008
	call $01bb
	ld bc, $ffef
	add hl, bc
	ld b, $04

jr_00e_7f3c:
	ld a, [hli]
	and a
	jr z, jr_00e_7f47

	ld a, $05
	ld [de], a
	inc de
	dec b
	jr nz, jr_00e_7f3c

jr_00e_7f47:
	pop hl
	ld a, [hl]
	ld [wd0e3], a
	call $1aab
	ld hl, wcd26
	ld de, wcd12
	call Call_00e_7f67
	ld hl, wcd2e
	ld de, wcd1a
	call Call_00e_7f67
	ld hl, $7f7c
	jp $3c79


Call_00e_7f67:
	ldh a, [$f3]
	and a
	jr z, jr_00e_7f70

	push hl
	ld h, d
	ld l, e
	pop de

jr_00e_7f70:
	ld bc, $0008
	jp $01bb


Jump_00e_7f76:
	ld hl, $7f4e
	jp Jump_00e_7ffa


	nop
	ld e, d
	jp z, $504f

	ld bc, wcd68
	nop
	add $7f
	call $bcde
	sbc $bc
	ret nz

	rst $20
	ld e, b
	ld hl, wd041
	ld de, wcfba
	ldh a, [$f3]
	and a
	jr z, jr_00e_7fa0

	ld hl, wd046
	ld de, wcfb4

jr_00e_7fa0:
	ld a, [de]
	cp $40
	jr nz, jr_00e_7fb0

	bit 1, [hl]
	jr nz, jr_00e_7fc4

	set 1, [hl]
	ld hl, $7fcf
	jr jr_00e_7fb9

jr_00e_7fb0:
	bit 2, [hl]
	jr nz, jr_00e_7fc4

	set 2, [hl]
	ld hl, $7fe5

jr_00e_7fb9:
	push hl
	ld hl, $7fdb
	call Call_00e_7ffa
	pop hl
	jp $3c79


jr_00e_7fc4:
	ld c, $32
	call $3781
	ld hl, $7f4e
	jp Jump_00e_7ffa


	nop
	ld e, d
	jp z, wc44f

	cp b
	cp h
	pop hl
	cp d
	or e
	add hl, hl
	or a
	add $7f
	jp nz, $b8d6

	push bc
	rst $18
	ret nz

	rst $20
	ld e, b
	nop
	ld e, d
	jp z, $304f

	add hl, hl
	or a
	cp d
	or e
	add hl, hl
	or a
	add $7f
	jp nz, $b8d6

	push bc
	rst $18
	ret nz

	rst $20
	ld e, b

Call_00e_7ffa:
Jump_00e_7ffa:
	ld b, $0f
	jp $3620


	db $fd
