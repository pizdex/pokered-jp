HandleMenuInput:
	xor a
	ld [wd078], a

HandleMenuInput_:
	ldh a, [hff8b]
	push af
	ldh a, [hff8c]
	push af
	xor a
	ldh [hff8b], a
	ld a, $06
	ldh [hff8c], a

Func_3b19:
	xor a
	ld [wd068], a
	call Func_3bc6
	call Delay3

jr_3b23:
	push hl
	ld a, [wd078]
	and a
	jr z, jr_3b32

	ld b, $1c
	ld hl, $5bc3
	call Bankswitch

jr_3b32:
	pop hl
	call JoypadLowSensitivity
	ldh a, [hffb5]
	and a
	jr nz, jr_3b56

	push hl
	ld hl, wTilemap + $ee
	call Func_3c34
	pop hl
	ld a, [wcc34]
	dec a
	jr z, jr_3b4b

	jr jr_3b23

jr_3b4b:
	pop af
	ldh [hff8c], a
	pop af
	ldh [hff8b], a
	xor a
	ld [wcc4a], a
	ret


jr_3b56:
	xor a
	ld [wcc4b], a
	ldh a, [hffb5]
	ld b, a
	bit 6, a
	jr z, jr_3b7b

	ld a, [wCurrentMenuItem]
	and a
	jr z, jr_3b6d

	dec a
	ld [wCurrentMenuItem], a
	jr jr_3b96

jr_3b6d:
	ld a, [wcc4a]
	and a
	jr z, jr_3bbe

	ld a, [wcc28]
	ld [wCurrentMenuItem], a
	jr jr_3b96

jr_3b7b:
	bit 7, a
	jr z, jr_3b96

	ld a, [wCurrentMenuItem]
	inc a
	ld c, a
	ld a, [wcc28]
	cp c
	jr nc, jr_3b92

	ld a, [wcc4a]
	and a
	jr z, jr_3bbe

	ld c, $00

jr_3b92:
	ld a, c
	ld [wCurrentMenuItem], a

jr_3b96:
	ld a, [wcc29]
	and b
	jp z, Func_3b19

jr_3b9d:
	ldh a, [hffb5]
	and $03
	jr z, jr_3bb1

	push hl
	ld hl, wcd5b
	bit 5, [hl]
	pop hl
	jr nz, jr_3bb1

	ld a, $90
	call PlaySound

jr_3bb1:
	pop af
	ldh [hff8c], a
	pop af
	ldh [hff8b], a
	xor a
	ld [wcc4a], a
	ldh a, [hffb5]
	ret


jr_3bbe:
	ld a, [wcc37]
	and a
	jr z, jr_3b96

	jr jr_3b9d

Func_3bc6:
	ld a, [wcc24]
	and a
	jr z, jr_3bd6

	ld hl, wTilemap
	ld bc, $0014

jr_3bd2:
	add hl, bc
	dec a
	jr nz, jr_3bd2

jr_3bd6:
	ld a, [wcc25]
	ld b, $00
	ld c, a
	add hl, bc
	push hl
	ld a, [wLastMenuItem]
	and a
	jr z, jr_3beb

	ld bc, $0028

jr_3be7:
	add hl, bc
	dec a
	jr nz, jr_3be7

jr_3beb:
	ld a, [hl]
	cp $ed
	jr nz, jr_3bf4

	ld a, [wcc27]
	ld [hl], a

jr_3bf4:
	pop hl
	ld a, [wCurrentMenuItem]
	and a
	jr z, jr_3c02

	ld bc, $0028

jr_3bfe:
	add hl, bc
	dec a
	jr nz, jr_3bfe

jr_3c02:
	ld a, [hl]
	cp $ed
	jr z, jr_3c0a

	ld [wcc27], a

jr_3c0a:
	ld a, $ed
	ld [hl], a
	ld a, l
	ld [wcc30], a
	ld a, h
	ld [wcc31], a
	ld a, [wCurrentMenuItem]
	ld [wLastMenuItem], a
	ret


PlaceUnfilledArrowMenuCursor:
	ld b, a
	ld a, [wcc30]
	ld l, a
	ld a, [wcc31]
	ld h, a
	ld [hl], $ec
	ld a, b
	ret


EraseMenuCursor:
	ld a, [wcc30]
	ld l, a
	ld a, [wcc31]
	ld h, a
	ld [hl], $7f
	ret


Func_3c34:
	ld a, [hl]
	ld b, a
	ld a, $ee
	cp b
	jr nz, jr_3c53

	ldh a, [hff8b]
	dec a
	ldh [hff8b], a
	ret nz

	ldh a, [hff8c]
	dec a
	ldh [hff8c], a
	ret nz

	ld a, $7f
	ld [hl], a
	ld a, $ff
	ldh [hff8b], a
	ld a, $06
	ldh [hff8c], a
	ret


jr_3c53:
	ldh a, [hff8b]
	and a
	ret z

	dec a
	ldh [hff8b], a
	ret nz

	dec a
	ldh [hff8b], a
	ldh a, [hff8c]
	dec a
	ldh [hff8c], a
	ret nz

	ld a, $06
	ldh [hff8c], a
	ld a, $ee
	ld [hl], a
	ret


	xor a
	jr jr_3c71

	ld a, $01

jr_3c71:
	ld [wcf07], a
	xor a
	ld [wcc3c], a
	ret


PrintText:
	push hl
	ld a, $01
	ld [wTextBoxID], a
	call DisplayTextBoxID
	call UpdateSprites
	call Delay3
	pop hl

PrintText_NoCreatingTextBox:
	ld bc, wTilemap + $119
	jp TextCommandProcessor
