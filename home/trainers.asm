StoreTrainerHeaderPointer:
	ld a, h
	ld [wd973], a
	ld a, l
	ld [wd974], a
	ret

ExecuteCurMapScriptInTable::
	push af
	push de
	call StoreTrainerHeaderPointer
	pop hl
	pop af
	push hl
	ld hl, wd6b2
	bit 4, [hl]
	res 4, [hl]
	jr z, .asm_31bc

	ld a, [wCurMapScript]

.asm_31bc
	pop hl
	ld [wCurMapScript], a
	call CallFunctionInTable
	ld a, [wCurMapScript]
	ret

LoadGymLeaderAndCityName::
	push de
	ld de, wcf59
	ld bc, $0005
	call CopyBytes
	pop hl
	ld de, wcf5e
	ld bc, $0006
	jp CopyBytes

ReadTrainerHeaderInfo::
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
	jr nz, .asm_31f1

	ld a, [hl]
	ld [wcc55], a
	jr .asm_320d

.asm_31f1
	cp $02
	jr z, .asm_320a
	cp $04
	jr z, .asm_320a
	cp $06
	jr z, .asm_320a
	cp $08
	jr z, .asm_320a
	cp $0a
	jr nz, .asm_320d

	ld a, [hli]
	ld d, [hl]
	ld e, a
	jr .asm_320d

.asm_320a
	ld a, [hli]
	ld h, [hl]
	ld l, a

.asm_320d
	pop de
	ret

TrainerFlagAction:
	ld a, $10
	jp Predef

TalkToTrainer::
	call StoreTrainerHeaderPointer
	xor a
	call ReadTrainerHeaderInfo
	ld a, $02
	call ReadTrainerHeaderInfo
	ld a, [wcc55]
	ld c, a
	ld b, $02
	call TrainerFlagAction
	ld a, c
	and a
	jr z, .asm_3235

	ld a, $06
	call ReadTrainerHeaderInfo
	jp PrintText

.asm_3235
	ld a, $04
	call ReadTrainerHeaderInfo
	call PrintText

	ld a, $0a
	call ReadTrainerHeaderInfo
	push de
	ld a, $08
	call ReadTrainerHeaderInfo
	pop de
	call Func_339c
	ld hl, wd6b2
	set 4, [hl]
	ld hl, wcd5b
	bit 0, [hl]
	ret nz

	call EngageMapTrainer
	ld hl, wCurMapScript
	inc [hl]
	jp StartTrainerBattle

CheckFightingMapTrainers::
	call CheckForEngagingTrainers
	ld a, [wSpriteIndex]
	cp $ff
	jr nz, .asm_3273

	xor a
	ld [wSpriteIndex], a
	ld [wcc55], a
	ret

.asm_3273
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
	call TrainerWalkUpToPlayer
	ld hl, wCurMapScript
	inc [hl]
	ret

DisplayEnemyTrainerTextAndStartBattle::
	ld a, [wd6af]
	and $01
	ret nz

	ld [wcd66], a
	ld a, [wSpriteIndex]
	ldh [hff8c], a
	call DisplayTextID

StartTrainerBattle:
	xor a
	ld [wcd66], a
	call InitBattleEnemyParameters
	ld hl, wd6ac
	set 6, [hl]
	set 7, [hl]
	ld hl, wd6ad
	set 1, [hl]
	ld hl, wCurMapScript
	inc [hl]
	ret

EndTrainerBattle::
	ld hl, wd0eb
	set 5, [hl]
	set 6, [hl]
	ld hl, wd6ac
	res 7, [hl]
	ld hl, wcd5b
	res 0, [hl]
	ld a, [wd034]
	cp $ff
	jp z, ResetButtonPressedAndMapScript

	ld a, $02
	call ReadTrainerHeaderInfo
	ld a, [wcc55]
	ld c, a
	ld b, $01
	call TrainerFlagAction
	ld a, [wd692]
	cp $c8
	jr nc, .asm_3301

	ld hl, wd54d
	ld de, $0002
	ld a, [wSpriteIndex]
	call IsInArray
	inc hl
	ld a, [hl]
	ld [wcc4d], a
	ld a, $11
	call Predef

.asm_3301
	ld hl, wd6af
	bit 4, [hl]
	res 4, [hl]
	ret nz

ResetButtonPressedAndMapScript:
	xor a
	ld [wcd66], a
	ldh [hJoyHeld], a
	ldh [hJoyPressed], a
	ldh [hffb2], a
	ld [wCurMapScript], a
	ret

TrainerWalkUpToPlayer:
	ld b, $15
	ld hl, $7e2b
	jp Bankswitch

InitBattleEnemyParameters:
	ld a, [wcd2d]
	ld [wd036], a
	ld [wd692], a
	cp $c8
	ld a, [wcd2e]
	jr c, .asm_3333

	ld [wd03a], a
	ret

.asm_3333
	ld [wd0ec], a
	ret

GetSpritePosition1::
	ld hl, $7da3
	jr .asm_3349

	ld hl, $7dc3
	jr .asm_3349

	ld hl, $7de7
	jr .asm_3349

	ld hl, $7e07
.asm_3349
	ld b, $15
	jp Bankswitch

CheckForEngagingTrainers:
	xor a
	call ReadTrainerHeaderInfo
	ld d, h
	ld e, l

jr_3354:
	call StoreTrainerHeaderPointer
	ld a, [de]
	ld [wSpriteIndex], a
	ld [wcc55], a
	cp $ff
	ret z

	ld a, $02
	call ReadTrainerHeaderInfo
	ld b, $02
	ld a, [wcc55]
	ld c, a
	call TrainerFlagAction
	ld a, c
	and a
	jr nz, jr_3394

	push hl
	push de
	push hl
	xor a
	call ReadTrainerHeaderInfo
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

Func_339c:
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

EngageMapTrainer:
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
	jp PlayTrainerMusic

PrintEndBattleText::
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


GetSavedEndBattleTextPointer:
	ld a, [wcf06]
	and a
	jr nz, .asm_340e

	ld a, [wd069]
	ld h, a
	ld a, [wd06a]
	ld l, a
	ret

.asm_340e
	ld a, [wd06b]
	ld h, a
	ld a, [wd06c]
	ld l, a
	ret


	db $01, $68, $cd, $00, $72, $50, $08

	call GetSavedEndBattleTextPointer
	call TextCommandProcessor
	jp TextScriptEnd

CheckIfAlreadyEngaged::
	ld a, [wcd5b]
	bit 0, a
	ret nz
	call EngageMapTrainer
	xor a
	ret

PlayTrainerMusic:
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
