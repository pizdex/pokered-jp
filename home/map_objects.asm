DecodeArrowMovementRLE::
jr_348c:
	ld a, [hli]
	cp $ff
	ret z

	cp b
	jr nz, jr_34a5

	ld a, [hli]
	cp c
	jr nz, jr_34a6

	ld a, [hli]
	ld d, [hl]
	ld e, a
	ld hl, wccd3
	call DecodeRLEList
	dec a
	ld [wcd38], a
	ret

jr_34a5:
	inc hl

jr_34a6:
	inc hl
	inc hl
	jr jr_348c

TextScript_ItemStoragePC:
	call SaveScreenTilesToBuffer2
	ld b, $01
	ld hl, $7bf8
	jr jr_34c3

TextScript_BillsPC:
	call SaveScreenTilesToBuffer2
	ld b, $08
	ld hl, $40ef
	jr jr_34c3

TextScript_GameCornerPrizeMenu:
	ld b, $14
	ld hl, $7ab3

jr_34c3:
	call Bankswitch
	jp HoldTextDisplayOpen


TextScript_PokemonCenterPC:
	ld b, $05
	ld hl, $7e34
	jr jr_34c3

StartSimulatingJoypadStates::
	xor a
	ld [wcd3b], a
	ld [$c206], a
	ld hl, wd6af
	set 7, [hl]
	ret

IsItemInBag::
	ld a, $1c
	call Predef
	ld a, b
	and a
	ret

DisplayPokedex::
	ld [wd0e3], a
	ld b, $01
	ld hl, $7fc9
	jp Bankswitch

SetSpriteFacingDirectionAndDelay::
	call SetSpriteFacingDirection
	ld c, $06
	jp DelayFrames

SetSpriteFacingDirection:
	ld a, $09
	ldh [hff8b], a
	call Call_3546
	ldh a, [hff8d]
	ld [hl], a
	ret


	ld de, hfff9
	add hl, de
	ld [hl], a
	ret


	ld a, [wd2e0]
	ld b, a
	ld a, [wd2e1]
	ld c, a

CheckCoords:
	xor a
	ld [wcd3d], a

jr_3515:
	ld a, [hli]
	cp $ff
	jr z, jr_352c

	push hl
	ld hl, wcd3d
	inc [hl]
	pop hl
	cp b
	jr z, jr_3526

	inc hl
	jr jr_3515

jr_3526:
	ld a, [hli]
	cp c
	jr nz, jr_3515

	scf
	ret


jr_352c:
	and a
	ret

CheckBoulderCoords::
	push hl
	ld hl, $c204
	ldh a, [hff8c]
	swap a
	ld d, $00
	ld e, a
	add hl, de
	ld a, [hli]
	sub $04
	ld b, a
	ld a, [hl]
	sub $04
	ld c, a
	pop hl
	jp CheckCoords


Call_3546:
	ld h, $c1
	jr jr_354c

	ld h, $c2

jr_354c:
	ldh a, [hff8b]
	ld b, a
	ldh a, [hff8c]
	swap a
	add b
	ld l, a
	ret


DecodeRLEList:
	xor a
	ld [wccd2], a

jr_355a:
	ld a, [de]
	cp $ff
	jr z, jr_3575

	ldh [hff8b], a
	inc de
	ld a, [de]
	ld b, $00
	ld c, a
	ld a, [wccd2]
	add c
	ld [wccd2], a
	ldh a, [hff8b]
	call ByteFill
	inc de
	jr jr_355a

jr_3575:
	ld a, $ff
	ld [hl], a
	ld a, [wccd2]
	inc a
	ret


	push hl
	call Call_3598
	ld [hl], $fe
	call Call_35a2
	ldh a, [hff8d]
	ld [hl], a
	pop hl
	ret


Call_358b:
	push hl
	call Call_3598
	ld [hl], $ff
	call Call_35a2
	ld [hl], $ff
	pop hl
	ret


Call_3598:
	ld h, $c2
	ldh a, [hff8c]
	swap a
	add $06
	ld l, a
	ret


Call_35a2:
	push de
	ld hl, wMapSpriteData
	ldh a, [hff8c]
	dec a
	add a
	ld d, $00
	ld e, a
	add hl, de
	pop de
	ret
