TextBoxBorder::
; Draw a c×b text box at hl.
	push hl
	ld a, $79
	ld [hli], a
	inc a
	call Call_03ff
	inc a
	ld [hl], a
	pop hl
	ld de, $0014
	add hl, de

.asm_03e1:
	push hl
	ld a, $7c
	ld [hli], a
	ld a, $7f
	call Call_03ff
	ld [hl], $7c
	pop hl
	ld de, $0014
	add hl, de
	dec b
	jr nz, .asm_03e1

	ld a, $7d
	ld [hli], a
	ld a, $7a
	call Call_03ff
	ld [hl], $7e
	ret

Call_03ff:
	ld d, c
.asm_0400
	ld [hli], a
	dec d
	jr nz, .asm_0400
	ret


PlaceString::
	push hl

PlaceNextChar::
	ld a, [de]
	cp $50
	jr nz, .NotTerminator
	ld b, h
	ld c, l
	pop hl
	ret

.NotTerminator
	cp $4e
	jr nz, .asm_041c

	pop hl
	ld bc, $0028
	add hl, bc
	push hl
	jp Jump_04c5

.asm_041c
	cp $4f
	jr nz, .asm_0428
	pop hl
	ld hl, wc4e1
	push hl
	jp Jump_04c5

.asm_0428:
	and a
	jp z, Jump_04c9

	cp $4c
	jp z, Jump_05bb
	cp $4b
	jp z, Jump_05a9
	cp $51
	jp z, Jump_0588
	cp $52
	jp z, Jump_04da
	cp $53
	jp z, Jump_04e0
	cp $54
	jp z, Jump_04fe
	cp $5b
	jp z, Jump_04f2
	cp $5e
	jp z, Jump_04f8
	cp $5c
	jp z, Jump_04ec
	cp $5d
	jp z, Jump_04e6
	cp $55
	jp z, Jump_0555
	cp $56
	jp z, Jump_0504
	cp $57
	jp z, Jump_0581
	cp $58
	jp z, Jump_0569
	cp $59
	jp z, Jump_050a
	cp $5a
	jp z, Jump_0510
	cp $e4
	jr z, jr_0484
	cp $e5
	jr nz, jr_048d

jr_0484:
	push hl
	ld bc, hffec
	add hl, bc
	ld [hl], a
	pop hl
	jr jr_04c5

jr_048d:
	cp $60
	jr nc, jr_04c1
	cp $40
	jr nc, jr_04ac
	cp $20
	jr nc, jr_049d

	add $80
	jr jr_049f

jr_049d:
	add $90

jr_049f:
	push af
	ld a, $e5
	push hl
	ld bc, hffec
	add hl, bc
	ld [hl], a
	pop hl
	pop af
	jr jr_04c1

jr_04ac:
	cp $44
	jr nc, jr_04b4

	add $59
	jr jr_04b6

jr_04b4:
	add $86

jr_04b6:
	push af
	ld a, $e4
	push hl
	ld bc, hffec
	add hl, bc
	ld [hl], a
	pop hl
	pop af

jr_04c1:
	ld [hli], a
	call PrintLetterDelay

Jump_04c5:
jr_04c5:
	inc de
	jp PlaceNextChar


Jump_04c9:
	ld b, h
	ld c, l
	pop hl
	ld de, $04d1
	dec de
	ret


	add hl, bc
	adc h
	rst $38
	ld [de], a
	nop
	add e
	and l
	db $e3
	ld d, a

Jump_04da:
	push de
	ld de, wd11d
	jr jr_0526

Jump_04e0:
	push de
	ld de, wd2ce
	jr jr_0526

Jump_04e6:
	push de
	ld de, $0536
	jr jr_0526

Jump_04ec:
	push de
	ld de, $0530
	jr jr_0526

Jump_04f2:
	push de
	ld de, $053c
	jr jr_0526

Jump_04f8:
	push de
	ld de, $0541
	jr jr_0526

Jump_04fe:
	push de
	ld de, $0548
	jr jr_0526

Jump_0504:
	push de
	ld de, $054d
	jr jr_0526

Jump_050a:
	ldh a, [hfff3]
	xor $01
	jr jr_0512

Jump_0510:
	ldh a, [hfff3]

jr_0512:
	push de
	and a
	jr nz, jr_051b

	ld de, wcff0
	jr jr_0526

jr_051b:
	ld de, $0550
	call PlaceString
	ld h, b
	ld l, c
	ld de, wcfc1

jr_0526:
	call PlaceString
	ld h, b
	ld l, c
	pop de
	inc de
	jp PlaceNextChar


	call c, $9d2b
	adc e
	xor e
	ld d, b

	db $93, $a7, $e3, $94, $e3, $50, $40, $8e, $89, $ab, $50

	xor b
	adc b
	xor h
	sub e
	jr nc, @-$20

	ld d, b

	db $43, $88, $a1, $ab, $50, $75, $75, $50, $c3, $b7, $c9, $7f, $50

Jump_0555:
	push de
	ld b, h
	ld c, l
	ld hl, $0565
	call TextCommandProcessor
	ld h, b
	ld l, c
	pop de
	inc de
	jp PlaceNextChar


	db $00, $4b, $50, $50

Jump_0569:
	ld a, [wd0f0]
	cp $04
	jp z, Jump_0576

	ld a, $ee
	ld [wc4f2], a

Jump_0576:
	call Call_05eb
	call ManualTextScroll
	ld a, $7f
	ld [wc4f2], a

Jump_0581:
	pop hl
	ld de, $0587
	dec de
	ret


	db $50

Jump_0588:
	push de
	ld a, $ee
	ld [wc4f2], a
	call Call_05eb
	call ManualTextScroll
	ld hl, wc4a5
	ld bc, $0412
	call ClearScreenArea
	ld c, $14
	call DelayFrames
	pop de
	ld hl, wc4b9
	jp Jump_04c5


Jump_05a9:
	ld a, $ee
	ld [wc4f2], a
	call Call_05eb
	push de
	call ManualTextScroll
	pop de
	ld a, $7f
	ld [wc4f2], a

Jump_05bb:
	push de
	call Call_05c9
	call Call_05c9
	ld hl, wc4e1
	pop de
	jp Jump_04c5


Call_05c9:
	ld hl, wc4b8
	ld de, wc4a4
	ld b, $3c

jr_05d1:
	ld a, [hli]
	ld [de], a
	inc de
	dec b
	jr nz, jr_05d1

	ld hl, wc4e1
	ld a, $7f
	ld b, $12

jr_05de:
	ld [hli], a
	dec b
	jr nz, jr_05de

	ld b, $05

jr_05e4:
	call DelayFrame
	dec b
	jr nz, jr_05e4

	ret


Call_05eb:
	push bc
	call Delay3
	pop bc
	ret


TextCommandProcessor:
Jump_05f1:
	ld a, [wd2d7]
	push af
	set 1, a
	ld [wd2d7], a
	ld a, c
	ld [wcc3a], a
	ld a, b
	ld [wcc3b], a

NextTextCommand:
jr_0602:
	ld a, [hli]
	cp $50
	jr nz, jr_060c

	pop af
	ld [wd2d7], a
	ret


jr_060c:
	push hl
	ld hl, $0746
	push bc
	add a
	ld b, $00
	ld c, a
	add hl, bc
	pop bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl


	pop hl
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	ld a, [hli]
	ld b, a
	ld a, [hli]
	ld c, a
	push hl
	ld h, d
	ld l, e
	call TextBoxBorder
	pop hl
	jr jr_0602

	pop hl
	ld d, h
	ld e, l
	ld h, b
	ld l, c
	call PlaceString
	ld h, d
	ld l, e
	inc hl
	jr jr_0602

	pop hl
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	push hl
	ld h, b
	ld l, c
	call PlaceString
	pop hl
	jr jr_0602

	pop hl
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	ld a, [hli]
	push hl
	ld h, b
	ld l, c
	ld c, a
	call PrintBCDNumber
	ld b, h
	ld c, l
	pop hl
	jr jr_0602

	pop hl
	ld a, [hli]
	ld [wcc3a], a
	ld c, a
	ld a, [hli]
	ld [wcc3b], a
	ld b, a
	jp NextTextCommand


	pop hl
	ld bc, wc4e1
	jp NextTextCommand


	ld a, [wd0f0]
	cp $04
	jp z, TextCommand_WAIT_BUTTON

	ld a, $ee
	ld [wc4f2], a
	push bc
	call ManualTextScroll
	pop bc
	ld a, $7f
	ld [wc4f2], a
	pop hl
	jp NextTextCommand


	ld a, $7f
	ld [wc4f2], a
	call Call_05c9
	call Call_05c9
	pop hl
	ld bc, wc4e1
	jp NextTextCommand


	pop hl
	ld de, $0602
	push de
	jp hl


	pop hl
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	ld a, [hli]
	push hl
	ld h, b
	ld l, c
	ld b, a
	and $0f
	ld c, a
	ld a, b
	and $f0
	swap a
	set 6, a
	ld b, a
	call PrintNumber
	ld b, h
	ld c, l
	pop hl
	jp NextTextCommand


	push bc
	call Joypad
	ldh a, [hJoyHeld]
	and $03
	jr nz, jr_06cf

	ld c, $1e
	call DelayFrames

jr_06cf:
	pop bc
	pop hl
	jp NextTextCommand

TextCommand_SOUND::
; play a sound effect from TextCommandSounds
	pop hl
	push bc
	dec hl
	ld a, [hli]
	ld b, a
	push hl
	ld hl, TextCommandSounds

jr_06dd:
	ld a, [hli]
	cp b
	jr z, jr_06e4

	inc hl
	jr jr_06dd

jr_06e4:
	cp $14
	jr z, jr_06fc

	cp $15
	jr z, jr_06fc

	cp $16
	jr z, jr_06fc

	ld a, [hl]
	call PlaySound
	call WaitForSoundToFinish
	pop hl
	pop bc
	jp NextTextCommand

jr_06fc:
	push de
	ld a, [hl]
	call PlayCry
	pop de
	pop hl
	pop bc
	jp NextTextCommand

TextCommandSounds::
	db $0b, $86
	db $12, $9a
	db $0e, $91
	db $0f, $86
	db $10, $89
	db $11, $94
	db $13, $98
	db $14, $a8
	db $15, $97
	db $16, $78

TextCommand_DOTS::
; wait for button press or 30 frames while printing "…"s
	pop hl
	ld a, [hli]
	ld d, a
	push hl
	ld h, b
	ld l, c

jr_0721:
	ld a, $75
	ld [hli], a
	push de
	call Joypad
	pop de
	ldh a, [hJoyHeld]
	and $03
	jr nz, jr_0734

	ld c, $0a
	call DelayFrames

jr_0734:
	dec d
	jr nz, jr_0721

	ld b, h
	ld c, l
	pop hl
	jp NextTextCommand

TextCommand_WAIT_BUTTON:
	push bc
	call ManualTextScroll
	pop bc
	pop hl
	jp NextTextCommand


	db $2d, $06, $3a, $06, $48, $06

	ld e, d
	ld b, $1b
	db $06

	db $68, $06, $6f, $06

	adc d
	db $06

	db $9c, $06, $a2, $06, $c0, $06, $d4, $06

	dec de
	rlca
	dec a
	rlca
	call nc, wd406
	ld b, $d4
	db $06

	db $d4, $06, $d4, $06

	db $d4
	db $06

	db $d4, $06

	call nc, wd406
	db $06
