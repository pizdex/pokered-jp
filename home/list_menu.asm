DisplayListMenuID::
	xor a
	ldh [hffba], a
	ld a, $01
	ld [hffb7], a
	ld a, [wd037]
	and a
	jr nz, jr_1709

	ld a, $01
	jr jr_170b

jr_1709:
	ld a, $0f

jr_170b:
	call PushBank
	ld hl, wd6af
	set 6, [hl]
	xor a
	ld [wcc35], a
	ld [wd0ef], a
	ld a, [wcf72]
	ld l, a
	ld a, [wcf73]
	ld h, a
	ld a, [hl]
	ld [wd0ef], a
	ld a, $0d
	ld [wTextBoxID], a
	call DisplayTextBoxID
	call UpdateSprites
	ld hl, wc3cc
	ld de, $090e
	ld a, [wListMenuID]
	and a
	jr nz, jr_1740

	call UpdateSprites

jr_1740:
	ld a, $01
	ld [wcc37], a
	ld a, [wd0ef]
	cp $02
	jr c, jr_174e

	ld a, $02

jr_174e:
	ld [wcc28], a
	ld a, $04
	ld [wcc24], a
	ld a, $05
	ld [wcc25], a
	ld a, $07
	ld [wcc29], a
	ld c, $0a
	call DelayFrames

Jump_1765:
	xor a
	ldh [hffba], a
	call Call_1968
	ld a, $01
	ldh [hffba], a
	call Delay3
	ld a, [wd037]
	and a
	jr z, jr_1793

	ld a, $ed
	ld [wc3f5], a
	ld c, $50
	call DelayFrames
	xor a
	ld [wCurrentMenuItem], a
	ld hl, wc3f5
	ld a, l
	ld [wcc30], a
	ld a, h
	ld [wcc31], a
	jr jr_17a3

jr_1793:
	call LoadGBPal
	call HandleMenuInput
	push af
	call Call_3bc6
	pop af
	bit 0, a
	jp z, Jump_1840

jr_17a3:
	ld a, [wCurrentMenuItem]
	call PlaceUnfilledArrowMenuCursor
	ld a, $01
	ld [wd0f3], a
	ld [wd0f2], a
	xor a
	ld [wcc37], a
	ld a, [wCurrentMenuItem]
	ld c, a
	ld a, [wcc36]
	add c
	ld c, a
	ld a, [wd0ef]
	and a
	jp z, Jump_194c

	dec a
	cp c
	jp c, Jump_194c

	ld a, c
	ld [wcf79], a
	ld a, [wListMenuID]
	cp $03
	jr nz, jr_17d7

	sla c

jr_17d7:
	ld a, [wcf72]
	ld l, a
	ld a, [wcf73]
	ld h, a
	inc hl
	ld b, $00
	add hl, bc
	ld a, [hl]
	ld [wcf78], a
	ld a, [wListMenuID]
	and a
	jr z, jr_180e

	push hl
	call GetItemPrice
	pop hl
	ld a, [wListMenuID]
	cp $03
	jr nz, jr_17fe

	inc hl
	ld a, [hl]
	ld [wcf7e], a

jr_17fe:
	ld a, [wcf78]
	ld [wd092], a
	ld a, $01
	ld [wPredefBank], a
	call GetName
	jr jr_1823

jr_180e:
	ld hl, wd123
	ld a, [wcf72]
	cp l
	ld hl, wd257
	jr z, jr_181d

	ld hl, wde64

jr_181d:
	ld a, [wcf79]
	call GetPartyMonName

jr_1823:
	ld de, wcd68
	call CopyToStringBuffer
	ld a, $01
	ld [wd0f3], a
	ld a, [wCurrentMenuItem]
	ld [wd0f2], a
	xor a
	ld [hffb7], a
	ld hl, wd6af
	res 6, [hl]
	jp PopBank


Jump_1840:
	bit 1, a
	jp nz, Jump_194c

	bit 2, a
	jp nz, $6adf

	ld b, a
	bit 7, b
	ld hl, wcc36
	jr z, jr_1861

	ld a, [hl]
	add $03
	ld b, a
	ld a, [wd0ef]
	cp b
	jp c, Jump_1765

	inc [hl]
	jp Jump_1765


jr_1861:
	ld a, [hl]
	and a
	jp z, Jump_1765

	dec [hl]
	jp Jump_1765


	ld hl, wc463
	ld b, $01
	ld c, $03
	ld a, [wListMenuID]
	cp $02
	jr nz, jr_187f

	ld hl, wc45b
	ld b, $01
	ld c, $0b

jr_187f:
	call TextBoxBorder
	ld hl, wc478
	ld a, [wListMenuID]
	cp $02
	jr nz, jr_1894

	ld a, $f0
	ld [wc47a], a
	ld hl, wc470

jr_1894:
	ld de, $1941
	call PlaceString
	xor a
	ld [wcf7d], a
	jp Jump_18ba


Jump_18a1:
jr_18a1:
	call JoypadLowSensitivity
	ldh a, [hJoyPressed]
	bit 0, a
	jp nz, Jump_193c

	bit 1, a
	jp nz, Jump_193e

	bit 6, a
	jr nz, jr_18ba

	bit 7, a
	jr nz, jr_18cc

	jr jr_18a1

Jump_18ba:
jr_18ba:
	ld a, [wcf7e]
	inc a
	ld b, a
	ld hl, wcf7d
	inc [hl]
	ld a, [hl]
	cp b
	jr nz, jr_18d6

	ld a, $01
	ld [hl], a
	jr jr_18d6

jr_18cc:
	ld hl, wcf7d
	dec [hl]
	jr nz, jr_18d6

	ld a, [wcf7e]
	ld [hl], a

jr_18d6:
	ld hl, wc479
	ld a, [wListMenuID]
	cp $02
	jr nz, jr_1930

	ld c, $03
	ld a, [wcf7d]
	ld b, a
	ld hl, hff9f
	xor a
	ld [hli], a
	ld [hli], a
	ld [hl], a

jr_18ed:
	ld de, hffa1
	ld hl, hff8d
	push bc
	ld a, $0b
	call Predef
	pop bc
	dec b
	jr nz, jr_18ed

	ldh a, [hff8e]
	and a
	jr z, jr_191c

	xor a
	ldh [hffa2], a
	ldh [hffa3], a
	ld a, $02
	ldh [hffa4], a
	ld a, $0d
	call Predef
	ldh a, [hffa2]
	ldh [hff9f], a
	ldh a, [hffa3]
	ldh [hffa0], a
	ldh a, [hffa4]
	ldh [hffa1], a

jr_191c:
	ld hl, wc474
	ld de, $1945
	call PlaceString
	ld de, hff9f
	ld c, $83
	call PrintBCDNumber
	ld hl, wc471

jr_1930:
	ld de, wcf7d
	ld bc, $8102
	call PrintNumber
	jp Jump_18a1


Jump_193c:
	xor a
	ret


Jump_193e:
	ld a, $ff
	ret


	db $f1, $f6, $f7, $50, $7f, $7f, $7f, $7f, $7f, $7f, $50

Jump_194c:
	ld a, [wCurrentMenuItem]
	ld [wd0f2], a
	ld a, $02
	ld [wd0f3], a
	ld [wcc37], a
	xor a
	ld [hffb7], a
	ld hl, wd6af
	res 6, [hl]
	call PopBank
	scf
	ret


Call_1968:
	ld hl, wc3e1
	ld b, $09
	ld c, $0e
	call ClearScreenArea
	ld a, [wcf72]
	ld e, a
	ld a, [wcf73]
	ld d, a
	inc de
	ld a, [wcc36]
	ld c, a
	ld a, [wListMenuID]
	cp $03
	ld a, c
	jr nz, jr_198b

	sla a
	sla c

jr_198b:
	add e
	ld e, a
	jr nc, jr_1990

	inc d

jr_1990:
	ld hl, wc3f6
	ld b, $04

Jump_1995:
	ld a, b
	ld [wcf79], a
	ld a, [de]
	ld [wd0e3], a
	cp $ff
	jp z, Jump_1aa1

	push bc
	push de
	push hl
	push hl
	push de
	ld a, [wListMenuID]
	and a
	jr z, jr_19b6

	cp $01
	jr z, jr_19d8

	call GetItemName
	jr jr_19db

jr_19b6:
	push hl
	ld hl, wd123
	ld a, [wcf72]
	cp l
	ld hl, wd257
	jr z, jr_19c6

	ld hl, wde64

jr_19c6:
	ld a, [wcf79]
	ld b, a
	ld a, $04
	sub b
	ld b, a
	ld a, [wcc36]
	add b
	call GetPartyMonName
	pop hl
	jr jr_19db

jr_19d8:
	call GetMoveName

jr_19db:
	call PlaceString
	pop de
	pop hl
	ld a, [wcf7a]
	and a
	jr z, jr_19fd

	push hl
	ld a, [de]
	ld de, $421c
	ld [wcf78], a
	call GetItemPrice
	pop hl
	ld bc, $0006
	add hl, bc
	ld c, $83
	call PrintBCDNumber
	ld [hl], $f0

jr_19fd:
	ld a, [wListMenuID]
	and a
	jr nz, jr_1a41

	ld a, [wd0e3]
	push af
	push hl
	ld hl, wd123
	ld a, [wcf72]
	cp l
	ld a, $00
	jr z, jr_1a15

	ld a, $02

jr_1a15:
	ld [wcc49], a
	ld hl, wcf79
	ld a, [hl]
	ld b, a
	ld a, $04
	sub b
	ld b, a
	ld a, [wcc36]
	add b
	ld [hl], a
	call LoadMonData
	ld a, [wcc49]
	and a
	jr z, jr_1a35

	ld a, [wcf82]
	ld [wcfa0], a

jr_1a35:
	pop hl
	ld bc, $0006
	add hl, bc
	call PrintLevel
	pop af
	ld [wd0e3], a

jr_1a41:
	pop hl
	pop de
	inc de
	ld a, [wListMenuID]
	cp $03
	jr nz, jr_1a8f

	ld a, [wd0e3]
	ld [wcf78], a
	call IsKeyItem
	ld a, [wd0e9]
	and a
	jr nz, jr_1a7b

	push hl
	ld bc, $0009
	add hl, bc
	ld a, $f1
	ld [hli], a
	ld a, [wd0e3]
	push af
	ld a, [de]
	ld [wcf7e], a
	push de
	ld de, wd0e3
	ld [de], a
	ld bc, $0102
	call PrintNumber
	pop de
	pop af
	ld [wd0e3], a
	pop hl

jr_1a7b:
	inc de
	pop bc
	inc c
	push bc
	inc c
	ld a, [wcc35]
	and a
	jr z, jr_1a8f

	sla a
	cp c
	jr nz, jr_1a8f

	dec hl
	ld a, $ec
	ld [hli], a

jr_1a8f:
	ld bc, $0028
	add hl, bc
	pop bc
	inc c
	dec b
	jp nz, Jump_1995

	ld bc, hfff8
	add hl, bc
	ld a, $ee
	ld [hl], a
	ret


Jump_1aa1:
	ld de, $1aa7
	jp PlaceString

ListMenuCancelText::
	db $d4, $d2, $d9, $50
