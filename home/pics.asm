Call_2ffd:
	ld bc, wd095
	add hl, bc
	ld a, [hli]
	ld [wSpriteInputPtr], a
	ld a, [hl]
	ld [wSpriteInputPtr + 1], a
	ld a, [wcf78]
	ld b, a
	cp $15
	ld a, $01
	jr z, jr_3031

	ld a, b
	cp $1f
	ld a, $09
	jr c, jr_3031

	ld a, b
	cp $4a
	ld a, $0a
	jr c, jr_3031

	ld a, b
	cp $75
	ld a, $0b
	jr c, jr_3031

	ld a, b
	cp $9a
	ld a, $0c
	jr c, jr_3031

	ld a, $0d

jr_3031:
	jp DecompressSpriteData


LoadMonFrontSprite:
	push de
	ld hl, $000b
	call Call_2ffd
	ld hl, wd09f
	ld a, [hli]
	ld c, a
	pop de
	push de
	and $0f
	ldh [hff8b], a
	ld b, a
	ld a, $07
	sub b
	inc a
	srl a
	ld b, a
	add a
	add a
	add a
	sub b
	ldh [hff8d], a
	ld a, c
	swap a
	and $0f
	ld b, a
	add a
	add a
	add a
	ldh [hff8c], a
	ld a, $07
	sub b
	ld b, a
	ldh a, [hff8d]
	add b
	add a
	add a
	add a
	ldh [hff8d], a
	xor a
	ld [$4000], a
	ld hl, $a000
	call Call_30ae
	ld de, $a188
	ld hl, $a000
	call Call_3091
	ld hl, $a188
	call Call_30ae
	ld de, $a310
	ld hl, $a188
	call Call_3091
	pop de
	jp Jump_30b9


Call_3091:
	ldh a, [hff8d]
	ld b, $00
	ld c, a
	add hl, bc
	ldh a, [hff8b]

jr_3099:
	push af
	push hl
	ldh a, [hff8c]
	ld c, a

jr_309e:
	ld a, [de]
	inc de
	ld [hli], a
	dec c
	jr nz, jr_309e

	pop hl
	ld bc, $0038
	add hl, bc
	pop af
	dec a
	jr nz, jr_3099

	ret


Call_30ae:
	ld bc, $0188

jr_30b1:
	xor a
	ld [hli], a
	dec bc
	ld a, b
	or c
	jr nz, jr_30b1

	ret


Jump_30b9:
	xor a
	ld [$4000], a
	push de
	ld hl, $a497
	ld de, $a30f
	ld bc, $a187
	ld a, $c4
	ldh [hff8b], a

jr_30cb:
	ld a, [de]
	dec de
	ld [hld], a
	ld a, [bc]
	dec bc
	ld [hld], a
	ld a, [de]
	dec de
	ld [hld], a
	ld a, [bc]
	dec bc
	ld [hld], a
	ldh a, [hff8b]
	dec a
	ldh [hff8b], a
	jr nz, jr_30cb

	ld a, [wSpriteFlipped]
	and a
	jr z, jr_30f2

	ld bc, $0310
	ld hl, $a188

jr_30ea:
	swap [hl]
	inc hl
	dec bc
	ld a, b
	or c
	jr nz, jr_30ea

jr_30f2:
	pop hl
	ld de, $a188
	ld c, $31
	ldh a, [hLoadedROMBank]
	ld b, a
	jp CopyVideoData

DisableWaitingAfterTextDisplay::
	ld a, $01
	ld [wcc3c], a
	ret
