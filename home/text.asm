TextBoxBorder::
; Draw a c×b text box at hl.
	push hl
	ld a, $79
	ld [hli], a
	inc a
	call .PlaceChars
	inc a
	ld [hl], a
	pop hl
	ld de, SCREEN_WIDTH
	add hl, de

.next
	push hl
	ld a, $7c
	ld [hli], a
	ld a, $7f
	call .PlaceChars
	ld [hl], $7c
	pop hl
	ld de, SCREEN_WIDTH
	add hl, de
	dec b
	jr nz, .next

	ld a, $7d
	ld [hli], a
	ld a, $7a
	call .PlaceChars
	ld [hl], $7e
	ret

.PlaceChars:
; Place char a, c times.
	ld d, c
.loop
	ld [hli], a
	dec d
	jr nz, .loop
	ret

PlaceString::
	push hl

PlaceNextChar::
	ld a, [de]
	cp "@"
	jr nz, .NotTerminator
	ld b, h
	ld c, l
	pop hl
	ret

.NotTerminator
	cp "<NEXT>"
	jr nz, .NotNext

	pop hl
	ld bc, 2 * SCREEN_WIDTH
	add hl, bc
	push hl
	jp NextChar

.NotNext
	cp "<LINE>"
	jr nz, .NotLine
	pop hl
	hlcoord 1, 16
	push hl
	jp NextChar

.NotLine
	and a
	jp z, NullChar

	cp $4c
	jp z, _ContTextNoPause
	cp $4b
	jp z, _ContText
	cp $51
	jp z, Paragraph
	cp $52
	jp z, PrintPlayerName
	cp $53
	jp z, PrintRivalName
	cp $54
	jp z, PrintPKMNText
	cp $5b
	jp z, PrintPCText
	cp $5e
	jp z, PrintRocketText
	cp $5c
	jp z, PrintTMText
	cp $5d
	jp z, PrintTrainerText
	cp $55
	jp z, ContText
	cp $56
	jp z, PrintSixDotsText
	cp $57
	jp z, DoneText
	cp $58
	jp z, PromptText
	cp $59
	jp z, PlaceMoveTargetsName
	cp $5a
	jp z, PlaceMoveUsersName
	cp $e4
	jr z, jr_0484
	cp $e5
	jr nz, jr_048d

jr_0484:
	push hl
	ld bc, $ffec
	add hl, bc
	ld [hl], a
	pop hl
	jr NextChar

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
	ld bc, $ffec
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
	ld bc, $ffec
	add hl, bc
	ld [hl], a
	pop hl
	pop af

jr_04c1:
	ld [hli], a
	call PrintLetterDelay

NextChar::
	inc de
	jp PlaceNextChar

NullChar:
	ld b, h
	ld c, l
	pop hl
	ld de, TextIDErrorText
	dec de
	ret

TextIDErrorText:
	text_decimal hff8c, 1, 2
	text "エラー"
	done

MACRO print_name
	push de
	ld de, \1
	jr PlaceCommandCharacter
ENDM

PrintPlayerName: print_name wd11d
PrintRivalName: print_name wd2ce

PrintTrainerText: print_name TrainerText
PrintTMText:      print_name TMText
PrintPCText:      print_name PCText
PrintRocketText:  print_name RocketText
PrintPKMNText:    print_name PKMNText
PrintSixDotsText: print_name SixDotsText

PlaceMoveTargetsName:
	ldh a, [hfff3]
	xor $01
	jr PlaceMoveUsersName.place

PlaceMoveUsersName:
	ldh a, [hfff3]
.place
	push de
	and a
	jr nz, .enemy
	ld de, wcff0
	jr PlaceCommandCharacter

.enemy
	ld de, EnemyText
	call PlaceString
	ld h, b
	ld l, c
	ld de, wcfc1

PlaceCommandCharacter::
	call PlaceString
	ld h, b
	ld l, c
	pop de
	inc de
	jp PlaceNextChar

TMText::      db   "わざマシン@"
TrainerText:: db   "トレーナー@"
PCText::      db   "パソコン@"
RocketText::  db   "ロケットだん@"
PKMNText::    db   "ポケモン@"
SixDotsText:: db   "⋯⋯@"
EnemyText::   db   "てきの @"

ContText:
	push de
	ld b, h
	ld c, l
	ld hl, ContCharText
	call TextCommandProcessor
	ld h, b
	ld l, c
	pop de
	inc de
	jp PlaceNextChar

ContCharText::
	text "<_CONT>@"
	text_end

PromptText:
	ld a, [wd0f0]
	cp $04
	jp z, .ok

	ld a, $ee
	ldcoord_a 18, 16
.ok
	call ProtectedDelay3
	call ManualTextScroll
	ld a, " "
	ldcoord_a 18, 16

DoneText::
	pop hl
	ld de, .stop
	dec de
	ret

.stop:
	text_end

Paragraph:
	push de
	ld a, $ee
	ldcoord_a 18, 16
	call ProtectedDelay3
	call ManualTextScroll
	hlcoord 1, 13
	lb bc, 4, 18
	call ClearScreenArea
	ld c, 20
	call DelayFrames
	pop de
	hlcoord 1, 14
	jp NextChar

_ContText::
	ld a, $ee
	ldcoord_a 18, 16
	call ProtectedDelay3
	push de
	call ManualTextScroll
	pop de
	ld a, " "
	ldcoord_a 18, 16

_ContTextNoPause::
	push de
	call ScrollTextUpOneLine
	call ScrollTextUpOneLine
	hlcoord 1, 16
	pop de
	jp NextChar

ScrollTextUpOneLine::
	hlcoord 0, 14 ; top row of text
	decoord 0, 13 ; empty line above text
	ld b, SCREEN_WIDTH * 3
.copyText
	ld a, [hli]
	ld [de], a
	inc de
	dec b
	jr nz, .copyText
	hlcoord 1, 16
	ld a, " "
	ld b, SCREEN_WIDTH - 2
.clearText
	ld [hli], a
	dec b
	jr nz, .clearText

	ld b, 5
.wait
	call DelayFrame
	dec b
	jr nz, .wait
	ret

ProtectedDelay3:
	push bc
	call Delay3
	pop bc
	ret

TextCommandProcessor:
	ld a, [wd2d7]
	push af
	set 1, a
	ld [wd2d7], a
	ld a, c
	ld [wcc3a], a
	ld a, b
	ld [wcc3b], a

NextTextCommand::
	ld a, [hli]
	cp TX_END
	jr nz, .TextCommand
	pop af
	ld [wd2d7], a
	ret

.TextCommand
	push hl
	ld hl, TextCommandJumpTable
	push bc
	add a
	ld b, 0
	ld c, a
	add hl, bc
	pop bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl

TextCommand_BOX::
; draw a box (height, width)
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
	jr NextTextCommand

TextCommand_START::
; write text until "@"
	pop hl
	ld d, h
	ld e, l
	ld h, b
	ld l, c
	call PlaceString
	ld h, d
	ld l, e
	inc hl
	jr NextTextCommand

TextCommand_RAM::
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
	jr NextTextCommand

TextCommand_BCD::
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
	jr NextTextCommand

TextCommand_MOVE::
	pop hl
	ld a, [hli]
	ld [wcc3a], a
	ld c, a
	ld a, [hli]
	ld [wcc3b], a
	ld b, a
	jp NextTextCommand

TextCommand_LOW::
; write text at (1,16)
	pop hl
	bccoord 1, 16 ; second line of dialogue text box
	jp NextTextCommand

TextCommand_PROMPT_BUTTON::
; wait for button press; show arrow
	ld a, [wd0f0]
	cp $04
	jp z, TextCommand_WAIT_BUTTON

	ld a, $ee
	ld [wTilemap + $152], a
	push bc
	call ManualTextScroll
	pop bc
	ld a, $7f
	ld [wTilemap + $152], a
	pop hl
	jp NextTextCommand

TextCommand_SCROLL::
	ld a, $7f
	ld [wTilemap + $152], a
	call ScrollTextUpOneLine
	call ScrollTextUpOneLine
	pop hl
	ld bc, $c4e1
	jp NextTextCommand

TextCommand_START_ASM::
	pop hl
	ld de, $0602
	push de
	jp hl

TextCommand_NUM::
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

TextCommand_PAUSE::
; wait for button press or 30 frames
	push bc
	call Joypad
	ldh a, [hJoyHeld]
	and A_BUTTON | B_BUTTON
	jr nz, .done
	ld c, 30
	call DelayFrames
.done
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
.loop
	ld a, [hli]
	cp b
	jr z, .play
	inc hl
	jr .loop

.play
	cp $14
	jr z, .pokemonCry
	cp $15
	jr z, .pokemonCry
	cp $16
	jr z, .pokemonCry

	ld a, [hl]
	call PlaySound
	call WaitForSoundToFinish
	pop hl
	pop bc
	jp NextTextCommand

.pokemonCry
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

.loop
	ld a, $75
	ld [hli], a
	push de
	call Joypad
	pop de
	ldh a, [hJoyHeld] ; joypad state
	and A_BUTTON | B_BUTTON
	jr nz, .next ; if so, skip the delay
	ld c, 10
	call DelayFrames
.next
	dec d
	jr nz, .loop

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

TextCommandJumpTable::
; entries correspond to TX_* constants (see macros/scripts/text.asm)
	dw TextCommand_START         ; TX_START
	dw TextCommand_RAM           ; TX_RAM
	dw TextCommand_BCD           ; TX_BCD
	dw TextCommand_MOVE          ; TX_MOVE
	dw TextCommand_BOX           ; TX_BOX
	dw TextCommand_LOW           ; TX_LOW
	dw TextCommand_PROMPT_BUTTON ; TX_PROMPT_BUTTON
	dw TextCommand_SCROLL        ; TX_SCROLL
	dw TextCommand_START_ASM     ; TX_START_ASM
	dw TextCommand_NUM           ; TX_NUM
	dw TextCommand_PAUSE         ; TX_PAUSE
	dw TextCommand_SOUND         ; TX_SOUND_GET_ITEM_1 (also handles other TX_SOUND_* commands)
	dw TextCommand_DOTS          ; TX_DOTS
	dw TextCommand_WAIT_BUTTON   ; TX_WAIT_BUTTON
	dw TextCommand_SOUND         ; TX_SOUND_GET_ITEM_1 (also handles other TX_SOUND_* commands)
	dw TextCommand_SOUND         ; TX_SOUND_GET_ITEM_1 (also handles other TX_SOUND_* commands)
	dw TextCommand_SOUND         ; TX_SOUND_GET_ITEM_1 (also handles other TX_SOUND_* commands)
	dw TextCommand_SOUND         ; TX_SOUND_GET_ITEM_1 (also handles other TX_SOUND_* commands)
	dw TextCommand_SOUND         ; TX_SOUND_GET_ITEM_1 (also handles other TX_SOUND_* commands)
	dw TextCommand_SOUND         ; TX_SOUND_GET_ITEM_1 (also handles other TX_SOUND_* commands)
	dw TextCommand_SOUND         ; TX_SOUND_GET_ITEM_1 (also handles other TX_SOUND_* commands)
	dw TextCommand_SOUND         ; TX_SOUND_GET_ITEM_1 (also handles other TX_SOUND_* commands)
	dw TextCommand_SOUND         ; TX_SOUND_GET_ITEM_1 (also handles other TX_SOUND_* commands)
