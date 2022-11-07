PrintNumber:
	push bc
	xor a
	ldh [hff95], a
	ldh [hff96], a
	ldh [hff97], a
	ld a, b
	and $0f
	cp $01
	jr z, jr_3cb8

	cp $02
	jr z, jr_3caf

	ld a, [de]
	ldh [hff96], a
	inc de
	ld a, [de]
	ldh [hff97], a
	inc de
	ld a, [de]
	ldh [hff98], a
	jr jr_3cbb

jr_3caf:
	ld a, [de]
	ldh [hff97], a
	inc de
	ld a, [de]
	ldh [hff98], a
	jr jr_3cbb

jr_3cb8:
	ld a, [de]
	ldh [hff98], a

jr_3cbb:
	push de
	ld d, b
	ld a, c
	ld b, a
	xor a
	ld c, a
	ld a, b
	cp $02
	jr z, jr_3d2c

	cp $03
	jr z, jr_3d1c

	cp $04
	jr z, jr_3d0b

	cp $05
	jr z, jr_3cfa

	cp $06
	jr z, jr_3ce8

	ld a, $0f
	ldh [hff99], a
	ld a, $42
	ldh [hff9a], a
	ld a, $40
	ldh [hff9b], a
	call Call_3d55
	call Call_3db9

jr_3ce8:
	ld a, $01
	ldh [hff99], a
	ld a, $86
	ldh [hff9a], a
	ld a, $a0
	ldh [hff9b], a
	call Call_3d55
	call Call_3db9

jr_3cfa:
	xor a
	ldh [hff99], a
	ld a, $27
	ldh [hff9a], a
	ld a, $10
	ldh [hff9b], a
	call Call_3d55
	call Call_3db9

jr_3d0b:
	xor a
	ldh [hff99], a
	ld a, $03
	ldh [hff9a], a
	ld a, $e8
	ldh [hff9b], a
	call Call_3d55
	call Call_3db9

jr_3d1c:
	xor a
	ldh [hff99], a
	xor a
	ldh [hff9a], a
	ld a, $64
	ldh [hff9b], a
	call Call_3d55
	call Call_3db9

jr_3d2c:
	ld c, $00
	ldh a, [hff98]

jr_3d30:
	cp $0a
	jr c, jr_3d39

	sub $0a
	inc c
	jr jr_3d30

jr_3d39:
	ld b, a
	ldh a, [hff95]
	or c
	ldh [hff95], a
	jr nz, jr_3d46

	call Call_3db3
	jr jr_3d4a

jr_3d46:
	ld a, $f6
	add c
	ld [hl], a

jr_3d4a:
	call Call_3db9
	ld a, $f6
	add b
	ld [hli], a
	pop de
	dec de
	pop bc
	ret

Call_3d55:
	ld c, $00

jr_3d57:
	ldh a, [hff99]
	ld b, a
	ldh a, [hff96]
	ldh [hff9c], a
	cp b
	jr c, jr_3da7

	sub b
	ldh [hff96], a
	ldh a, [hff9a]
	ld b, a
	ldh a, [hff97]
	ldh [hff9d], a
	cp b
	jr nc, jr_3d79

	ldh a, [hff96]
	or $00
	jr z, jr_3da3

	dec a
	ldh [hff96], a
	ldh a, [hff97]

jr_3d79:
	sub b
	ldh [hff97], a
	ldh a, [hff9b]
	ld b, a
	ldh a, [hff98]
	ldh [hff9e], a
	cp b
	jr nc, jr_3d99

	ldh a, [hff97]
	and a
	jr nz, jr_3d94

	ldh a, [hff96]
	and a
	jr z, jr_3d9f

	dec a
	ldh [hff96], a
	xor a

jr_3d94:
	dec a
	ldh [hff97], a
	ldh a, [hff98]

jr_3d99:
	sub b
	ldh [hff98], a
	inc c
	jr jr_3d57

jr_3d9f:
	ldh a, [hff9d]
	ldh [hff97], a

jr_3da3:
	ldh a, [hff9c]
	ldh [hff96], a

jr_3da7:
	ldh a, [hff95]
	or c
	jr z, jr_3db3

	ld a, $f6
	add c
	ld [hl], a
	ldh [hff95], a
	ret

Call_3db3:
jr_3db3:
	bit 7, d
	ret z

	ld [hl], $f6
	ret

Call_3db9:
	bit 7, d
	jr nz, jr_3dc5

	bit 6, d
	jr z, jr_3dc5

	ldh a, [hff95]
	and a
	ret z

jr_3dc5:
	inc hl
	ret


CallFunctionInTable:
	push hl
	push de
	push bc
	add a
	ld d, 0
	ld e, a
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld de, .return
	push de
	jp hl

.return
	pop bc
	pop de
	pop hl
	ret

IsInArray:
	ld b, $00
	ld c, a

jr_3dde:
	ld a, [hl]
	cp $ff
	jr z, jr_3dea

	cp c
	jr z, jr_3dec

	inc b
	add hl, de
	jr jr_3dde

jr_3dea:
	and a
	ret

jr_3dec:
	scf
	ret
