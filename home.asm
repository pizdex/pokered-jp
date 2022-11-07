INCLUDE "constants.asm"

SECTION "NULL", ROM0
NULL::

INCLUDE "home/header.asm"

SECTION "Home", ROM0

_Start:
	jp Init

Joypad:
	ldh a, [hLoadedROMBank]
	push af
	ld a, $03
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	call $4000
	pop af
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	ret

INCLUDE "home/lcd.asm"
INCLUDE "home/clear_sprites.asm"
INCLUDE "home/copy.asm"

unkData_01c4:
	dr $01c4, $028c

INCLUDE "home/copy2.asm"
INCLUDE "home/text.asm"
INCLUDE "home/vcopy.asm"
INCLUDE "home/init.asm"
INCLUDE "home/vblank.asm"
INCLUDE "home/fade.asm"
INCLUDE "home/serial.asm"
INCLUDE "home/timer.asm"
INCLUDE "home/audio.asm"
INCLUDE "home/update_sprites.asm"

INCLUDE "data/items/marts.asm"

INCLUDE "home/overworld_text.asm"
INCLUDE "home/decompress.asm"
INCLUDE "home/reset_player_sprite.asm"
INCLUDE "home/fade_audio.asm"
INCLUDE "home/text_script.asm"
INCLUDE "home/start_menu.asm"
INCLUDE "home/count_set_bits.asm"
INCLUDE "home/inventory.asm"
INCLUDE "home/list_menu.asm"
INCLUDE "home/names.asm"
INCLUDE "home/reload_tiles.asm"

INCLUDE "data/maps/map_header_pointers.asm"
INCLUDE "home/overworld.asm"
INCLUDE "home/pokemon.asm"
INCLUDE "home/print_bcd.asm"

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


	ld a, $01
	ld [wcc3c], a
	ret


	ld b, $03
	ld hl, $563d
	jp Bankswitch


	ldh a, [hLoadedROMBank]
	push af
	ld a, $03
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	call $69c4
	pop de
	ld a, d
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	ret


Call_3121:
	push hl
	push de
	push bc
	ld b, $03
	ld hl, $6a6f
	call Bankswitch
	pop bc
	pop de
	pop hl
	ret


DisplayTextBoxID:
Jump_3130:
	ldh a, [hLoadedROMBank]
	push af
	ld a, $01
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	call $766c
	pop bc
	ld a, b
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	ret


Call_3145:
	ld a, [wcc57]
	and a
	ret nz

	ld a, [wd6b5]
	bit 1, a
	ret nz

	ld a, [wd6af]
	and $80
	ret


Call_3156:
	ld hl, wd6b5
	bit 0, [hl]
	res 0, [hl]
	jr nz, jr_318e

	ld a, [wcc57]
	and a
	ret z

	dec a
	add a
	ld d, $00
	ld e, a
	ld hl, $3188
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ldh a, [hLoadedROMBank]
	push af
	ld a, [wcc58]
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	ld a, [wcf0b]
	call Call_3dc7
	pop af
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	ret


	db $fa, $7c

	ret z

	ld a, l
	dec [hl]
	ld a, [hl]

jr_318e:
	ld b, $06
	ld hl, $7c98
	jp Bankswitch


	ld b, $06
	ld hl, $7cd5
	jp Bankswitch


	ret


Call_319f:
	ld a, h
	ld [wd973], a
	ld a, l
	ld [wd974], a
	ret


	push af
	push de
	call Call_319f
	pop hl
	pop af
	push hl
	ld hl, wd6b2
	bit 4, [hl]
	res 4, [hl]
	jr z, jr_31bc

	ld a, [wd97c]

jr_31bc:
	pop hl
	ld [wd97c], a
	call Call_3dc7
	ld a, [wd97c]
	ret


	push de
	ld de, wcf59
	ld bc, $0005
	call CopyBytes
	pop hl
	ld de, wcf5e
	ld bc, $0006
	jp CopyBytes


Call_31db:
	push de
	push af
	ld d, $00
	ld e, a
	ld hl, wd973
	ld a, [hli]
	ld l, [hl]
	ld h, a
	add hl, de
	pop af
	and a
	jr nz, jr_31f1

	ld a, [hl]
	ld [wcc55], a
	jr jr_320d

jr_31f1:
	cp $02
	jr z, jr_320a

	cp $04
	jr z, jr_320a

	cp $06
	jr z, jr_320a

	cp $08
	jr z, jr_320a

	cp $0a
	jr nz, jr_320d

	ld a, [hli]
	ld d, [hl]
	ld e, a
	jr jr_320d

jr_320a:
	ld a, [hli]
	ld h, [hl]
	ld l, a

jr_320d:
	pop de
	ret


Call_320f:
	ld a, $10
	jp Predef


	call Call_319f
	xor a
	call Call_31db
	ld a, $02
	call Call_31db
	ld a, [wcc55]
	ld c, a
	ld b, $02
	call Call_320f
	ld a, c
	and a
	jr z, jr_3235

	ld a, $06
	call Call_31db
	jp Jump_3c79


jr_3235:
	ld a, $04
	call Call_31db
	call PrintText

	ld a, $0a
	call Call_31db
	push de
	ld a, $08
	call Call_31db
	pop de
	call Call_339c
	ld hl, wd6b2
	set 4, [hl]
	ld hl, wcd5b
	bit 0, [hl]
	ret nz

	call Call_33b2
	ld hl, wd97c
	inc [hl]
	jp Jump_32a5


	call Call_334e
	ld a, [wSpriteIndex]
	cp $ff
	jr nz, jr_3273

	xor a
	ld [wSpriteIndex], a
	ld [wcc55], a
	ret


jr_3273:
	ld hl, wd6b2
	set 3, [hl]
	ld [wcd4f], a
	xor a
	ld [wcd50], a
	ld a, $4c
	call Predef
	ld a, $f0
	ld [wcd66], a
	xor a
	ldh [hJoyHeld], a
	call Call_3317
	ld hl, wd97c
	inc [hl]
	ret


	ld a, [wd6af]
	and $01
	ret nz

	ld [wcd66], a
	ld a, [wSpriteIndex]
	ldh [hff8c], a
	call DisplayTextID

Jump_32a5:
	xor a
	ld [wcd66], a
	call Call_331f
	ld hl, wd6ac
	set 6, [hl]
	set 7, [hl]
	ld hl, wd6ad
	set 1, [hl]
	ld hl, wd97c
	inc [hl]
	ret


	ld hl, wd0eb
	set 5, [hl]
	set 6, [hl]
	ld hl, wd6ac
	res 7, [hl]
	ld hl, wcd5b
	res 0, [hl]
	ld a, [wd034]
	cp $ff
	jp z, Jump_3309

	ld a, $02
	call Call_31db
	ld a, [wcc55]
	ld c, a
	ld b, $01
	call Call_320f
	ld a, [wd692]
	cp $c8
	jr nc, jr_3301

	ld hl, wd54d
	ld de, $0002
	ld a, [wSpriteIndex]
	call Call_3ddb
	inc hl
	ld a, [hl]
	ld [wcc4d], a
	ld a, $11
	call Predef

jr_3301:
	ld hl, wd6af
	bit 4, [hl]
	res 4, [hl]
	ret nz

Jump_3309:
	xor a
	ld [wcd66], a
	ldh [hJoyHeld], a
	ldh [hJoyPressed], a
	ldh [hffb2], a
	ld [wd97c], a
	ret


Call_3317:
	ld b, $15
	ld hl, $7e2b
	jp Bankswitch


Call_331f:
	ld a, [wcd2d]
	ld [wd036], a
	ld [wd692], a
	cp $c8
	ld a, [wcd2e]
	jr c, jr_3333

	ld [wd03a], a
	ret


jr_3333:
	ld [wd0ec], a
	ret


	ld hl, $7da3
	jr jr_3349

	ld hl, $7dc3
	jr jr_3349

	ld hl, $7de7
	jr jr_3349

	ld hl, $7e07

jr_3349:
	ld b, $15
	jp Bankswitch


Call_334e:
	xor a
	call Call_31db
	ld d, h
	ld e, l

jr_3354:
	call Call_319f
	ld a, [de]
	ld [wSpriteIndex], a
	ld [wcc55], a
	cp $ff
	ret z

	ld a, $02
	call Call_31db
	ld b, $02
	ld a, [wcc55]
	ld c, a
	call Call_320f
	ld a, c
	and a
	jr nz, jr_3394

	push hl
	push de
	push hl
	xor a
	call Call_31db
	inc hl
	ld a, [hl]
	pop hl
	ld [wcd3e], a
	ld a, [wSpriteIndex]
	swap a
	ld [wcd3d], a
	ld a, $39
	call Predef
	pop de
	pop hl
	ld a, [wcd3d]
	and a
	ret nz

jr_3394:
	ld hl, $000c
	add hl, de
	ld d, h
	ld e, l
	jr jr_3354

Call_339c:
	ldh a, [hLoadedROMBank]
	ld [wd06f], a
	ld a, h
	ld [wd069], a
	ld a, l
	ld [wd06a], a
	ld a, d
	ld [wd06b], a
	ld a, e
	ld [wd06c], a
	ret


Call_33b2:
	ld hl, wd483
	ld d, $00
	ld a, [wSpriteIndex]
	dec a
	add a
	ld e, a
	add hl, de
	ld a, [hli]
	ld [wcd2d], a
	ld a, [hl]
	ld [wcd2e], a
	jp Jump_3432


	push hl
	ld hl, wd6ac
	bit 7, [hl]
	res 7, [hl]
	pop hl
	ret z

	ldh a, [hLoadedROMBank]
	push af
	ld a, [wd06f]
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	push hl
	ld b, $09
	ld hl, $7eb2
	call Bankswitch
	ld hl, $3417
	call PrintText
	pop hl
	pop af
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	ld b, $06
	ld hl, $7e9f
	call Bankswitch
	jp WaitForSoundToFinish


Call_33ff:
	ld a, [wcf06]
	and a
	jr nz, jr_340e

	ld a, [wd069]
	ld h, a
	ld a, [wd06a]
	ld l, a
	ret


jr_340e:
	ld a, [wd06b]
	ld h, a
	ld a, [wd06c]
	ld l, a
	ret


	db $01, $68, $cd, $00, $72, $50, $08

	call Call_33ff
	call Call_05f1
	jp TextScriptEnd


	ld a, [wcd5b]
	bit 0, a
	ret nz

	call Call_33b2
	xor a
	ret


Jump_3432:
	ld a, [wcd2d]
	cp $e1
	ret z

	cp $f2
	ret z

	cp $f3
	ret z

	ld a, [wd039]
	and a
	ret nz

	xor a
	ld [wAudioFadeOutControl], a
	ld a, $ff
	call PlaySound
	ld a, $1f
	ld [wAudioROMBank], a
	ld [wAudioSavedROMBank], a
	ld a, [wcd2d]
	ld b, a
	ld hl, $3483

jr_345b:
	ld a, [hli]
	cp $ff
	jr z, jr_3467

	cp b
	jr nz, jr_345b

	ld a, $f6
	jr jr_3478

jr_3467:
	ld hl, $347e

jr_346a:
	ld a, [hli]
	cp $ff
	jr z, jr_3476

	cp b
	jr nz, jr_346a

	ld a, $f9
	jr jr_3478

jr_3476:
	ld a, $fc

jr_3478:
	ld [wNewSoundID], a
	jp PlaySound


	db $cb, $ce, $da, $e8, $ff, $d5, $d9, $dc, $dd, $e3, $e4, $e5, $e6, $ff

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
	call Call_3556
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

	xor a
	ld [wcd3b], a
	ld [$c206], a
	ld hl, wd6af
	set 7, [hl]
	ret


	ld a, $1c
	call Predef
	ld a, b
	and a
	ret


	ld [wd0e3], a
	ld b, $01
	ld hl, $7fc9
	jp Bankswitch


	call Call_34f8
	ld c, $06
	jp Jump_3781


Call_34f8:
	ld a, $09
	ldh [hff8b], a
	call Call_3546
	ldh a, [hff8d]
	ld [hl], a
	ret


	ld de, $fff9
	add hl, de
	ld [hl], a
	ret


	ld a, [wd2e0]
	ld b, a
	ld a, [wd2e1]
	ld c, a

Jump_3511:
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
	jp Jump_3511


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


Call_3556:
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


	call Call_35e8
	ld a, [wd0f0]
	and a
	jr nz, jr_35de

	ld a, $0e
	call BankswitchHome
	ld a, [wd018]
	dec a
	ld hl, $5c31
	ld bc, $0005
	call AddNTimes
	ld de, wd01a
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	ld de, wd025
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	jp BankswitchBack


jr_35de:
	ld hl, wd01a
	ld de, $5941
	ld [hl], e
	inc hl
	ld [hl], d
	ret


Call_35e8:
	ld b, $04
	ld hl, $7fb3
	jp Bankswitch


	ld de, wd2cb
	ld hl, $ff9f
	ld c, $03
	jp Jump_3ad8


	ld de, wd523
	ld hl, $ffa0
	ld c, $02
	jp Jump_3ad8


BankswitchHome:
	ld [wcf04], a
	ldh a, [hLoadedROMBank]
	ld [wcf03], a
	ld a, [wcf04]
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	ret


BankswitchBack:
	ld a, [wcf03]
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	ret

Bankswitch:
	ldh a, [hLoadedROMBank]
	push af
	ld a, b
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	ld bc, $362e
	push bc
	jp hl


	pop bc
	ld a, b
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	ret


	call Call_3761
	call Call_3649
	jr jr_3672

	ld a, $14
	ld [wTextBoxID], a
	call Call_3649
	jp Jump_3130


Call_3649:
	xor a
	ld [wd0f1], a
	ld hl, wc43a
	ld bc, $080f
	ret


	call Call_3761
	ld a, $06
	ld [wd0f1], a
	ld hl, wc425
	ld bc, $080e
	jr jr_3672

	call Call_3761
	ld a, $03
	ld [wd0f1], a
	ld hl, wc438
	ld bc, $080d

jr_3672:
	ld a, $14
	ld [wTextBoxID], a
	call DisplayTextBoxID
	jp Jump_376d


	sub b
	ret nc

	cpl
	add $01
	scf
	ret


	call Call_358b
	push hl
	push bc
	call Call_3598
	xor a
	ld [hl], a
	ld hl, wcc5b
	ld c, $00

jr_3693:
	ld a, [de]
	ld [hli], a
	inc de
	inc c
	cp $ff
	jr nz, jr_3693

	ld a, c
	ld [wcf0a], a
	pop bc
	ld hl, wd6af
	set 0, [hl]
	pop hl
	xor a
	ld [wcd3b], a
	ld [wccd3], a
	dec a
	ld [wcd66], a
	ld [wcd3a], a
	ret


	push hl
	ld hl, $ffe7
	xor a
	ld [hld], a
	ld a, [hld]
	and a
	jr z, jr_36c8

	ld a, [hli]

jr_36c0:
	sub [hl]
	jr c, jr_36c8

	inc hl
	inc [hl]
	dec hl
	jr jr_36c0

jr_36c8:
	pop hl
	ret


Call_36ca:
	ldh a, [rLCDC]
	bit 7, a
	jr nz, jr_36de

	ld hl, $4b19
	ld de, $8800
	ld bc, $0400
	ld a, $04
	jp CopyFarBytesDouble


jr_36de:
	ld de, $4b19
	ld hl, $8800
	ld bc, $0480
	jp CopyVideoDataDouble


LoadTextBoxTilePatterns:
	ldh a, [rLCDC]
	bit 7, a
	jr nz, jr_36fe

	ld hl, $52f1
	ld de, $9600
	ld bc, $0200
	ld a, $04
	jp CopyFarBytes2


jr_36fe:
	ld de, $52f1
	ld hl, $9600
	ld bc, $0420
	jp CopyVideoData


LoadHpBarAndStatusTilePatterns:
	ldh a, [rLCDC]
	bit 7, a
	jr nz, jr_371e

	ld hl, $4f39
	ld de, $9620
	ld bc, $01e0
	ld a, $04
	jp CopyFarBytes2


jr_371e:
	ld de, $4f39
	ld hl, $9620
	ld bc, $041e
	jp CopyVideoData


ByteFill::
; fill bc bytes with the value of a, starting at hl
	push de
	ld d, a
.copy
	ld a, d
	ld [hli], a
	dec bc
	ld a, b
	or c
	jr nz, .copy
	pop de
	ret

UncompressSpriteFromDE::
; Decompress pic at a:de.
	ld hl, wSpriteInputPtr
	ld [hl], e
	inc hl
	ld [hl], d
	jp DecompressSpriteData


SaveScreenTilesToBuffer2:
	ld hl, wc3a0
	ld de, wcd7c
	ld bc, $0168
	jp CopyBytes


Call_374a:
	call Call_3752
	ld a, $01
	ldh [hffba], a
	ret


Call_3752:
	xor a
	ldh [hffba], a
	ld hl, wcd7c
	ld de, wc3a0
	ld bc, $0168
	jp CopyBytes


Call_3761:
	ld hl, wc3a0
	ld de, wc508
	ld bc, $0168
	jp CopyBytes


Jump_376d:
	xor a
	ldh [hffba], a
	ld hl, wc508
	ld de, wc3a0
	ld bc, $0168
	call CopyBytes
	ld a, $01
	ldh [hffba], a
	ret


DelayFrames:
Jump_3781:
jr_3781:
	call DelayFrame
	dec c
	jr nz, jr_3781

	ret


PlaySoundWaitForCurrent:
	push af
	call WaitForSoundToFinish
	pop af
	jp PlaySound


WaitForSoundToFinish::
	ld a, [wd060]
	and $80
	ret nz

	push hl

jr_3797:
	ld hl, wc02a
	xor a
	or [hl]
	inc hl
	or [hl]
	inc hl
	inc hl
	or [hl]
	jr nz, jr_3797

	pop hl
	ret


	ld l, b
	ld d, b

	db $00, $40

	push af
	ld b, l

	db $3f, $43

	inc sp
	jp nc, wd92b

	db $1c, $5d

GetName:
	ld a, [wd092]
	ld [wd0e3], a
	cp $c4
	jp nc, GetMachineName

	ldh a, [hLoadedROMBank]
	push af
	push hl
	push bc
	push de
	ld a, [wNameListType]
	dec a
	jr nz, jr_37d5

	call GetMonName
	ld hl, $0006
	add hl, de
	ld e, l
	ld d, h
	jr jr_3815

jr_37d5:
	ld a, [wPredefBank]
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	ld a, [wNameListType]
	dec a
	add a
	ld d, $00
	ld e, a
	jr nc, jr_37e8

	inc d

jr_37e8:
	ld hl, $37a5
	add hl, de
	ld a, [hli]
	ldh [hff96], a
	ld a, [hl]
	ldh [hff95], a
	ldh a, [hff95]
	ld h, a
	ldh a, [hff96]
	ld l, a
	ld a, [wd092]
	ld b, a
	ld c, $00

jr_37fe:
	ld d, h
	ld e, l

jr_3800:
	ld a, [hli]
	cp $50
	jr nz, jr_3800

	inc c
	ld a, b
	cp c
	jr nz, jr_37fe

	ld h, d
	ld l, e
	ld de, wcd68
	ld bc, $0014
	call CopyBytes

jr_3815:
	ld a, e
	ld [wcf74], a
	ld a, d
	ld [wcf75], a
	pop de
	pop bc
	pop hl
	pop af
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	ret


Call_3827:
	ldh a, [hLoadedROMBank]
	push af
	ld a, [wListMenuID]
	cp $01
	ld a, $01
	jr nz, jr_3835

	ld a, $0f

jr_3835:
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	ld hl, wcf76
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, [wcf78]
	cp $c4
	jr nc, jr_385a

	ld bc, $0003

jr_384a:
	add hl, bc
	dec a
	jr nz, jr_384a

	dec hl
	ld a, [hld]
	ldh [hff8d], a
	ld a, [hld]
	ldh [hff8c], a
	ld a, [hl]
	ldh [hff8b], a
	jr jr_3864

jr_385a:
	ld a, $1e
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	call $7fb2

jr_3864:
	ld de, $ff8b
	pop af
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	ret


Call_386e:
	ld hl, wcf45

jr_3871:
	ld a, [de]
	inc de
	ld [hli], a
	cp $50
	jr nz, jr_3871

	ret


Call_3879:
	call Joypad
	ld a, [$ffb7]
	and a
	ldh a, [hJoyPressed]
	jr z, jr_3886

	ldh a, [hJoyHeld]

jr_3886:
	ldh [hffb5], a
	ldh a, [hJoyPressed]
	and a
	jr z, jr_3892

	ld a, $1e
	ldh [hFrameCounter], a
	ret


jr_3892:
	ldh a, [hFrameCounter]
	and a
	jr z, jr_389b

	xor a
	ldh [hffb5], a
	ret


jr_389b:
	ldh a, [hJoyHeld]
	and $03
	jr z, jr_38a9

	ldh a, [hffb6]
	and a
	jr nz, jr_38a9

	xor a
	ldh [hffb5], a

jr_38a9:
	ld a, $05
	ldh [hFrameCounter], a
	ret


WaitForTextScrollButtonPress:
	ldh a, [hff8b]
	push af
	ldh a, [hff8c]
	push af
	xor a
	ldh [hff8b], a
	ld a, $06
	ldh [hff8c], a

jr_38bb:
	push hl
	ld a, [wd078]
	and a
	jr z, jr_38c5

	call $5b8a

jr_38c5:
	ld hl, wc4f2
	call Call_3c34
	pop hl
	call Call_3879
	ld a, $2d
	call Predef
	ldh a, [hffb5]
	and $03
	jr z, jr_38bb

	pop af
	ldh [hff8c], a
	pop af
	ldh [hff8b], a
	ret


Call_38e1:
	ld a, [wd0f0]
	cp $04
	jr z, jr_38f0

	call WaitForTextScrollButtonPress
	ld a, $90
	jp PlaySound


jr_38f0:
	ld c, $41
	jp Jump_3781


Call_38f5:
	push hl
	push bc
	ld hl, $7e73
	ld b, $0d
	call Bankswitch
	pop bc
	pop hl
	ret


Call_3902:
	push hl
	push de
	push bc
	ld a, [$ffb8]
	push af
	ld a, $0d
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	call $7ed7
	pop af
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	pop bc
	pop de
	pop hl
	ret


Call_391d:
Jump_391d:
	ld a, [wd6af]
	bit 6, a
	ret nz

	ld a, [wd2d7]
	bit 1, a
	ret z

	push hl
	push de
	push bc
	ld a, [wd2d7]
	bit 0, a
	jr z, jr_393c

	ld a, [wd2d4]
	and $0f
	ldh [hFrameCounter], a
	jr jr_3940

jr_393c:
	ld a, $01
	ldh [hFrameCounter], a

jr_3940:
	call Joypad
	ldh a, [hJoyHeld]
	bit 0, a
	jr z, jr_394b

	jr jr_394f

jr_394b:
	bit 1, a
	jr z, jr_3954

jr_394f:
	call DelayFrame
	jr jr_3959

jr_3954:
	ldh a, [hFrameCounter]
	and a
	jr nz, jr_3940

jr_3959:
	pop bc
	pop de
	pop hl
	ret


jr_395d:
	ld a, [hli]
	ld [de], a
	inc de
	ld a, h
	cp b
	jr nz, jr_395d

	ld a, l
	cp c
	jr nz, jr_395d

	ret


	ld hl, $7f19
	ld b, $01
	jp Bankswitch


	push hl
	push de
	push bc
	ld b, $03
	ld hl, $7617
	call Bankswitch
	pop bc
	pop de
	pop hl
	ret


	ld c, $00

jr_3982:
	inc c
	call Call_3994
	ldh a, [hff97]
	ld [de], a
	inc de
	ldh a, [hff98]
	ld [de], a
	inc de
	ld a, c
	cp $05
	jr nz, jr_3982

	ret


Call_3994:
	push hl
	push de
	push bc
	ld a, b
	ld d, a
	push hl
	ld hl, wd095
	ld b, $00
	add hl, bc
	ld a, [hl]
	ld e, a
	pop hl
	push hl
	sla c
	ld a, d
	and a
	jr z, jr_39c9

	add hl, bc

jr_39ab:
	xor a
	ldh [hff96], a
	ldh [hff97], a
	inc b
	ld a, b
	cp $ff
	jr z, jr_39c9

	ldh [hff98], a
	ldh [hff99], a
	call Call_38f5
	ld a, [hld]
	ld d, a
	ldh a, [hff98]
	sub d
	ld a, [hli]
	ld d, a
	ldh a, [hff97]
	sbc d
	jr c, jr_39ab

jr_39c9:
	srl c
	pop hl
	push bc
	ld bc, $000b
	add hl, bc
	pop bc
	ld a, c
	cp $02
	jr z, jr_3a09

	cp $03
	jr z, jr_3a10

	cp $04
	jr z, jr_3a15

	cp $05
	jr z, jr_3a1d

	push bc
	ld a, [hl]
	swap a
	and $01
	sla a
	sla a
	sla a
	ld b, a
	ld a, [hli]
	and $01
	sla a
	sla a
	add b
	ld b, a
	ld a, [hl]
	swap a
	and $01
	sla a
	add b
	ld b, a
	ld a, [hl]
	and $01
	add b
	pop bc
	jr jr_3a21

jr_3a09:
	ld a, [hl]
	swap a
	and $0f
	jr jr_3a21

jr_3a10:
	ld a, [hl]
	and $0f
	jr jr_3a21

jr_3a15:
	inc hl
	ld a, [hl]
	swap a
	and $0f
	jr jr_3a21

jr_3a1d:
	inc hl
	ld a, [hl]
	and $0f

jr_3a21:
	ld d, $00
	add e
	ld e, a
	jr nc, jr_3a28

	inc d

jr_3a28:
	sla e
	rl d
	srl b
	srl b
	ld a, b
	add e
	jr nc, jr_3a35

	inc d

jr_3a35:
	ldh [hff98], a
	ld a, d
	ldh [hff97], a
	xor a
	ldh [hff96], a
	ld a, [wd0ec]
	ldh [hff99], a
	call Call_38f5
	ldh a, [hff96]
	ldh [hff95], a
	ldh a, [hff97]
	ldh [hff96], a
	ldh a, [hff98]
	ldh [hff97], a
	ld a, $64
	ldh [hff99], a
	ld a, $03
	ld b, a
	call Call_3902
	ld a, c
	cp $01
	ld a, $05
	jr nz, jr_3a74

	ld a, [wd0ec]
	ld b, a
	ldh a, [hff98]
	add b
	ldh [hff98], a
	jr nc, jr_3a72

	ldh a, [hff97]
	inc a
	ldh [hff97], a

jr_3a72:
	ld a, $0a

jr_3a74:
	ld b, a
	ldh a, [hff98]
	add b
	ldh [hff98], a
	jr nc, jr_3a81

	ldh a, [hff97]
	inc a
	ldh [hff97], a

jr_3a81:
	ldh a, [hff97]
	cp $04
	jr nc, jr_3a91

	cp $03
	jr c, jr_3a99

	ldh a, [hff98]
	cp $e8
	jr c, jr_3a99

jr_3a91:
	ld a, $03
	ldh [hff97], a
	ld a, $e7
	ldh [hff98], a

jr_3a99:
	pop bc
	pop de
	pop hl
	ret


	ldh a, [hLoadedROMBank]
	push af
	ld a, $03
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	call $77d3
	pop bc
	ld a, b
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	ret


	ldh a, [hLoadedROMBank]
	push af
	ld a, $03
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	call $7854
	pop bc
	ld a, b
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	ret


Call_3ac7:
	and a
	ret z

	ld bc, $0006

jr_3acc:
	add hl, bc
	dec a
	jr nz, jr_3acc

	ret


AddNTimes:
	and a
	ret z

jr_3ad3:
	add hl, bc
	dec a
	jr nz, jr_3ad3

	ret


Jump_3ad8:
jr_3ad8:
	ld a, [de]
	cp [hl]
	ret nz

	inc de
	inc hl
	dec c
	jr nz, jr_3ad8

	ret


	ld h, $c3
	swap a
	ld l, a
	call Call_3afd
	push bc
	ld a, $08
	add c
	ld c, a
	call Call_3afd
	pop bc
	ld a, $08
	add b
	ld b, a
	call Call_3afd
	ld a, $08
	add c
	ld c, a

Call_3afd:
	ld [hl], b
	inc hl
	ld [hl], c
	inc hl
	ld a, [de]
	inc de
	ld [hli], a
	ld a, [de]
	inc de
	ld [hli], a
	ret


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

Jump_3b19:
	xor a
	ld [wd068], a
	call Call_3bc6
	call Call_3e07

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
	call Call_3879
	ldh a, [hffb5]
	and a
	jr nz, jr_3b56

	push hl
	ld hl, wc48e
	call Call_3c34
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
	jp z, Jump_3b19

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

Call_3bc6:
	ld a, [wcc24]
	and a
	jr z, jr_3bd6

	ld hl, wc3a0
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


Call_3c34:
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
Jump_3c79:
	push hl
	ld a, $01
	ld [wTextBoxID], a
	call DisplayTextBoxID
	call UpdateSprites
	call Call_3e07
	pop hl

PrintText_NoCreatingTextBox:
	ld bc, wc4b9
	jp Jump_05f1


Call_3c8f:
Jump_3c8f:
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


Call_3dc7:
	push hl
	push de
	push bc
	add a
	ld d, $00
	ld e, a
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld de, $3dd7
	push de
	jp hl


	pop bc
	pop de
	pop hl
	ret


Call_3ddb:
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


	call ClearSprites
	ld a, $01
	ld [wUpdateSpritesEnabled], a
	call Call_3e38
	call Call_374a
	call LoadTextBoxTilePatterns
	call Call_3e1d
	jr jr_3e07

GBPalWhiteOutWithDelay3:
	call GBPalWhiteOut

Call_3e07:
Delay3:
jr_3e07:
	ld c, $03
	jp Jump_3781


GBPalNormal:
	ld a, $e4
	ldh [rBGP], a
	ld a, $d0
	ldh [rOBP0], a
	ret


GBPalWhiteOut:
	xor a
	ldh [rBGP], a
	ldh [rOBP0], a
	ldh [rOBP1], a
	ret


Call_3e1d:
	ld b, $ff

Call_3e1f:
	ld a, [wcf15]
	and a
	ret z

	ld a, $45
	jp Predef


	ld a, e
	cp $1b
	ld d, $00
	jr nc, jr_3e36

	cp $0a
	inc d
	jr nc, jr_3e36

	inc d

jr_3e36:
	ld [hl], d
	ret


Call_3e38:
	ld hl, wFontLoaded
	ld a, [hl]
	push af
	res 0, [hl]
	push hl
	xor a
	ld [wd327], a
	call DisableLCD
	ld b, $05
	ld hl, $7840
	call Bankswitch
	call EnableLCD
	pop hl
	pop af
	ld [hl], a
	call LoadPlayerSpriteGraphics
	call Call_36ca
	jp UpdateSprites


	ld a, b
	ld [wd0e3], a
	ld [wcf78], a
	ld a, c
	ld [wcf7d], a
	ld hl, wd2a1
	call AddItemToInventory
	ret nc

	call GetItemName
	call Call_386e
	scf
	ret


	ld a, b
	ld [wcf78], a
	ld a, c
	ld [wd0ec], a
	xor a
	ld [wcc49], a
	ld b, $13
	ld hl, $7da1
	jp Bankswitch


Random::
	push hl
	push de
	push bc
	ld b, $04
	ld hl, $7fea
	call Bankswitch
	ldh a, [hffd3]
	pop bc
	pop de
	pop hl
	ret


Predef::
	ld [wcc4e], a

	ldh a, [hLoadedROMBank]
	ld [wcf0d], a

	push af
	ld a, $13
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	call $7ea5
	ld a, [wPredefBank]
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	ld de, .done
	push de
	jp hl

.done
	pop af
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	ret


	ld a, [wcc4f]
	ld h, a
	ld a, [wcc50]
	ld l, a
	ld a, [wcc51]
	ld d, a
	ld a, [wcc52]
	ld e, a
	ld a, [wcc53]
	ld b, a
	ld a, [wcc54]
	ld c, a
	ret


	ld b, $07
	ld hl, $7d15
	jp Bankswitch


Call_3ee5:
	ldh a, [hLoadedROMBank]
	push af
	ldh a, [hJoyHeld]
	bit 0, a
	jr z, jr_3f1a

	ld a, $11
	ld [MBC1RomBank], a
	ldh [hLoadedROMBank], a
	call $78c5
	ldh a, [hffee]
	and a
	jr nz, jr_3f0d

	ld a, [wcd3e]
	ld [MBC1RomBank], a
	ldh [hLoadedROMBank], a
	ld de, $3f0a
	push de
	jp hl


	xor a
	jr jr_3f1c

jr_3f0d:
	ld b, $03
	ld hl, $7e8a
	call Bankswitch
	ldh a, [hffdb]
	and a
	jr z, jr_3f1c

jr_3f1a:
	ld a, $ff

jr_3f1c:
	ldh [hffeb], a
	pop af
	ld [MBC1RomBank], a
	ldh [hLoadedROMBank], a
	ret


	ldh [hff8c], a
	ld hl, $3f52
	call Call_3f3f
	ld hl, wTextPredefFlag
	set 0, [hl]
	call DisplayTextID
	ld hl, wMapTextPtr
	ldh a, [hffec]
	ld [hli], a
	ldh a, [hffed]
	ld [hl], a
	ret


Call_3f3f:
	ld a, [wMapTextPtr]
	ldh [hffec], a
	ld a, [wd2ec]
	ldh [hffed], a
	ld a, l
	ld [wMapTextPtr], a
	ld a, h
	ld [wd2ec], a
	ret


	ld e, a
	ld a, d
	ld a, l
	ld a, d

	db $0b, $79

	rst $18
	ld a, b
	cp b
	ld a, c
	pop af
	ld a, c
	rrca
	ld a, d
	daa
	ld a, a
	ld l, d
	ld a, c
	dec h
	ld a, c
	sub c
	ld a, c
	ld e, e
	ld a, h
	ld [hl], l
	ld a, h
	and c
	ld a, a
	ldh [$ff7c], a
	ld b, $7d
	dec sp
	ld a, l
	ld h, l
	ld a, l
	ld [hli], a
	ld a, [hl]
	ld [hl], h
	ld a, [hl]
	ld a, d
	ld a, a
	sub a
	ld a, [hl]
	ret c

	ld a, [hl]
	dec d
	ld a, a
	sub b
	ld a, l
	cp h
	ld a, l
	sbc $7d
	db $ed
	ld a, l
	rst $38
	ld a, l
	sbc b
	ld a, a
	rst $08
	ld a, a
	call c, $5d7d
	ld a, e
	ld b, l
	ld b, l
	ld e, [hl]
	ld b, l
	ld c, b
	ld a, [hl]
	adc [hl]
	ld a, [hl]
	rst $08
	ld a, l
	jp c, $ab7f

	ld a, a
	rst $00
	ld a, a
	ld [c], a
	ld a, a
	ld d, d
	ld a, a
	ld l, h
	ld a, a
	ld bc, $197e
	ld a, [hl]
	ld e, b
	ld a, [hl]
	ld [hl], h
	ld a, l
	ld sp, hl
	ld a, d
	ld a, [c]
	ld a, a
	ld [c], a
	ld a, a
	ld sp, hl
	ld a, c
	add h
	ld a, l
	cp a
	ld a, a
	sbc l
	ld a, a
	xor l
	ld a, a
	and b
	ld a, c
	ld sp, hl
	ld a, [hl]
	or b
	ld a, [hl]
	add hl, bc
	ld a, a
	ld c, [hl]
	ld a, a
	adc [hl]
	ld a, a
	sub b
	ld a, a
	ld d, b
	ld a, a
	add d
	ld a, a
	ret


	ld a, a
	and b
	ld a, c
	ld sp, hl
	ld a, [hl]
	or b
	ld a, [hl]
	add hl, bc
	ld a, a
	ld c, [hl]
	ld a, a
	adc [hl]
	ld a, a
	sub b
	ld a, a
	ld d, b
	ld a, a
	add d
	ld a, a
	ret


	ld a, a
	and l
	or a
	ld h, a
	db $e3
	ld [hl], a
	cp e
	db $fd
	ret


	ei
	add l
	rst $20
	ld d, e
	ret


	add c
	and e
	rst $00
	ccf
	add l
	inc sp
	ld c, l
	dec d
	nop
