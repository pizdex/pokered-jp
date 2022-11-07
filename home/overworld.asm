HandleMidJump:
	farjp _HandleMidJump

EnterMap:
	ld a, $ff
	ld [wcd66], a
	call LoadMapData
	farcall unk_03_497b
	ld hl, wd6ab
	bit 0, [hl]
	jr z, jr_1ddf

	ld a, $03
	ld [wd101], a

jr_1ddf:
	ld hl, wd6ad
	bit 5, [hl]
	res 5, [hl]
	call z, ResetUsingStrengthOutOfBattleBit
	call nz, MapEntryAfterBattle
	ld hl, wd6b1

jr_1def:
	ld a, [hl]
	and $18
	jr z, jr_1e01

	res 3, [hl]
	ld b, $1c
	ld hl, $4a61
	call Bankswitch
	call UpdateSprites

jr_1e01:
	ld b, $03
	ld hl, $49d1
	call Bankswitch
	ld hl, wd6ac
	res 5, [hl]
	call UpdateSprites
	ld hl, wd0eb
	set 5, [hl]
	set 6, [hl]
	xor a
	ld [wcd66], a

OverworldLoop:
	call DelayFrame

OverworldLoopLessDelay:
	call DelayFrame
	call LoadGBPal
	ld a, [wd6b5]
	bit 6, a
	call nz, HandleMidJump
	ld a, [wcfac]
	and a
	jp nz, Jump_1fcc

	call JoypadOverworld
	ld b, $07
	ld hl, $7a34
	call Bankswitch
	ld a, [wd982]
	and a
	jp nz, Jump_2153

	ld hl, wd6ac
	bit 3, [hl]
	res 3, [hl]
	jp nz, Jump_2153

	ld a, [wd6b1]
	and $18
	jp nz, HandleFlyWarpOrDungeonWarp

	ld a, [wd036]
	and a
	jp nz, Jump_2043

	ld a, [wd6af]
	bit 7, a
	jr z, jr_1e6a

	ldh a, [hJoyHeld]
	jr jr_1e6c

jr_1e6a:
	ldh a, [hJoyPressed]

jr_1e6c:
	bit 3, a
	jr z, jr_1e76

	xor a
	ldh [hff8c], a
	jp Jump_1e9a


jr_1e76:
	bit 0, a
	jp z, Jump_1f02

	ld a, [wd6af]
	bit 2, a
	jp nz, Jump_1ee4

	call Call_3145
	jr nz, jr_1eda

	call Call_3ee5
	ldh a, [hffeb]
	and a
	jp z, OverworldLoop

	call IsSpriteOrSignInFrontOfPlayer
	ldh a, [hff8c]
	and a
	jp z, OverworldLoop

Jump_1e9a:
	ld a, $35
	call Predef
	call UpdateSprites
	ld a, [wcd5b]
	bit 2, a
	jr nz, jr_1eda

	bit 0, a
	jr nz, jr_1eda

	call DisplayTextID
	ld a, [wEnteringCableClub]
	and a
	jr z, jr_1eda

	dec a
	ld a, $00
	ld [wEnteringCableClub], a
	jr z, jr_1ed7

	ld a, $52
	call Predef
	ld a, [wCurMap]
	ld [wd699], a
	call $6260
	ld a, [wCurMap]
	call SwitchToMapRomBank
	ld hl, wd2e6
	set 7, [hl]

jr_1ed7:
	jp EnterMap


jr_1eda:
	ld a, [wd036]
	and a
	jp nz, Jump_2043

	jp OverworldLoop


Jump_1ee4:
jr_1ee4:
	ld hl, wcd5b
	res 2, [hl]
	call UpdateSprites
	ld a, $01
	ld [wcc4b], a
	ld a, [wd4a7]
	and a
	jp z, OverworldLoop

	ld [wd4a8], a
	xor a
	ld [wd4a7], a
	jp OverworldLoop


Jump_1f02:
	ldh a, [hJoyHeld]
	bit 7, a
	jr z, jr_1f11

	ld a, $01
	ld [$c103], a
	ld a, $04
	jr jr_1f34

jr_1f11:
	bit 6, a
	jr z, jr_1f1e

	ld a, $ff
	ld [$c103], a
	ld a, $08
	jr jr_1f34

jr_1f1e:
	bit 5, a
	jr z, jr_1f2b

	ld a, $ff
	ld [$c105], a
	ld a, $02
	jr jr_1f34

jr_1f2b:
	bit 4, a
	jr z, jr_1ee4

	ld a, $01
	ld [$c105], a

jr_1f34:
	ld [wd4a9], a
	ld a, [wd6af]
	bit 7, a
	jr nz, jr_1f95

	ld a, [wcc4b]
	and a
	jr z, jr_1f95

	ld a, [wd4a9]
	ld b, a
	ld a, [wd4a8]
	cp b
	jr z, jr_1f95

	swap a
	or b
	cp $48
	jr nz, jr_1f5c

	ld a, $02
	ld [wd4a7], a
	jr jr_1f7b

jr_1f5c:
	cp $84
	jr nz, jr_1f67

	ld a, $01
	ld [wd4a7], a
	jr jr_1f7b

jr_1f67:
	cp $12
	jr nz, jr_1f72

	ld a, $04
	ld [wd4a7], a
	jr jr_1f7b

jr_1f72:
	cp $21
	jr nz, jr_1f7b

	ld a, $08
	ld [wd4a7], a

jr_1f7b:
	ld hl, wcd5b
	set 2, [hl]
	ld hl, wcc4b
	dec [hl]
	jr nz, jr_1f7b

	ld a, [wd4a9]
	ld [wd4a7], a
	call NewBattle
	jp c, Jump_204e

	jp OverworldLoop


jr_1f95:
	ld a, [wd4a9]
	ld [wd4a7], a
	call UpdateSprites
	ld a, [wWalkBikeSurfState]
	cp $02
	jr z, jr_1fbf

	call CollisionCheckOnLand
	jr nc, jr_1fc5

	push hl
	ld hl, wd6b5
	bit 2, [hl]
	pop hl
	jp z, OverworldLoop

	push hl
	call ExtraWarpCheck
	pop hl
	jp c, CheckWarpsCollision

	jp OverworldLoop


jr_1fbf:
	call CollisionCheckOnWater
	jp c, OverworldLoop

jr_1fc5:
	ld a, $08
	ld [wcfac], a
	jr jr_1fde

Jump_1fcc:
	ld a, [wd6b5]
	bit 7, a
	jr z, jr_1fdb

	ld b, $11
	ld hl, $57b0
	call Bankswitch

jr_1fdb:
	call UpdateSprites

jr_1fde:
	ld hl, wcd5b
	res 2, [hl]
	ld a, [wWalkBikeSurfState]
	dec a
	jr nz, jr_1ff3

	ld a, [wd6b5]
	bit 6, a
	jr nz, jr_1ff3

	call DoBikeSpeedup

jr_1ff3:
	call AdvancePlayerSprite
	ld a, [wcfac]
	and a
	jp nz, CheckMapConnections

	ld a, [wd6af]
	bit 7, a
	jr nz, jr_201a

	ld hl, wd100
	dec [hl]
	ld a, [wd6ab]
	bit 0, a
	jr z, jr_201a

	ld hl, wd101
	dec [hl]
	jr nz, jr_201a

	ld hl, wd6ab
	res 0, [hl]

jr_201a:
	ld a, [wd70f]
	bit 7, a
	jr z, jr_2030

	ld b, $07
	ld hl, $7a43
	call Bankswitch
	ld a, [wd982]
	and a
	jp nz, Jump_2153

jr_2030:
	ld a, [wd034]
	and a
	jp nz, CheckWarpsNoCollision

	ld a, $13
	call Predef
	ld a, [wd0f2]
	and a
	jp nz, HandleBlackOut

Jump_2043:
	call NewBattle
	ld hl, wd6b5
	res 2, [hl]
	jp nc, CheckWarpsNoCollision

Jump_204e:
	ld hl, wd6ac
	res 6, [hl]
	ld hl, wd6b2
	res 3, [hl]
	ld hl, wd0eb
	set 5, [hl]
	set 6, [hl]
	xor a
	ldh [hJoyHeld], a
	ld a, [wCurMap]
	cp $a6
	jr nz, jr_206e

	ld hl, wd71a
	set 7, [hl]

jr_206e:
	ld hl, wd6ad
	set 5, [hl]
	ld a, [wCurMap]
	cp $28
	jp z, Jump_2087

	ld hl, $4ba3
	ld b, $0f
	call Bankswitch
	ld a, d
	and a
	jr z, jr_208f

Jump_2087:
	ld c, $0a
	call DelayFrames
	jp EnterMap


jr_208f:
	ld a, $ff
	ld [wd034], a
	call RunMapScript
	jp HandleBlackOut


NewBattle:
	ld a, [wd6ac]
	bit 4, a
	jr nz, jr_20b5

	call Call_3145
	jr nz, jr_20b5

	ld a, [wd6ad]
	bit 4, a
	jr nz, jr_20b5

	farjp InitBattle


jr_20b5:
	and a
	ret


DoBikeSpeedup:
	ld a, [wcc57]
	and a
	ret nz

	ld a, [wCurMap]
	cp $1c
	jr nz, jr_20c8

	ldh a, [hJoyHeld]
	and $70
	ret nz

jr_20c8:
	jp AdvancePlayerSprite


CheckWarpsNoCollision:
	ld a, [wd32d]
	and a
	jp z, CheckMapConnections

	ld a, [wd32d]
	ld b, $00
	ld c, a
	ld a, [wd2e0]
	ld d, a
	ld a, [wd2e1]
	ld e, a
	ld hl, wd32e

CheckWarpsNoCollisionLoop:
	ld a, [hli]
	cp d
	jr nz, jr_2146

	ld a, [hli]
	cp e
	jr nz, jr_2147

	push hl
	push bc
	ld hl, wd6b5
	set 2, [hl]
	ld b, $03
	ld hl, $4ae3
	call Bankswitch
	pop bc
	pop hl
	jr c, jr_214c

	push hl
	push bc
	call ExtraWarpCheck
	pop bc
	pop hl
	jr nc, jr_2147

	ld a, [wd6b2]
	bit 2, a
	jr nz, jr_214c

	push de
	push bc
	call Joypad
	pop bc
	pop de
	ldh a, [hJoyHeld]
	and $f0
	jr z, jr_2147

	jr jr_214c

CheckWarpsCollision:
	ld a, [wd32d]
	ld c, a
	ld hl, wd32e

jr_2124:
	ld a, [hli]
	ld b, a
	ld a, [wd2e0]
	cp b
	jr nz, jr_213d

	ld a, [hli]
	ld b, a
	ld a, [wd2e1]
	cp b
	jr nz, jr_213e

	ld a, [hli]
	ld [wd3ae], a
	ld a, [hl]
	ldh [hff8b], a
	jr jr_2153

jr_213d:
	inc hl

jr_213e:
	inc hl
	inc hl
	dec c
	jr nz, jr_2124

	jp OverworldLoop


jr_2146:
	inc hl

jr_2147:
	inc hl
	inc hl
	jp ContinueCheckWarpsNoCollisionLoop


jr_214c:
	ld a, [hli]
	ld [wd3ae], a
	ld a, [hli]
	ldh [hff8b], a

Jump_2153:
jr_2153:
	ld a, [wd32d]
	sub c
	ld [wd6ba], a
	ld a, [wCurMap]
	ld [wd6bb], a
	call CheckIfInOutsideMap
	jr nz, jr_2187

	ld a, [wCurMap]
	ld [wd2e4], a
	ld a, [wd2e8]
	ld [wd2e5], a
	ldh a, [hff8b]
	ld [wCurMap], a
	cp $52
	jr nz, jr_2182

	ld a, $06
	ld [wMapPalOffset], a
	call GBFadeOutToBlack

jr_2182:
	call PlayMapChangeSound
	jr jr_21c1

jr_2187:
	ldh a, [hff8b]
	cp $ff
	jr z, jr_21b4

	ld [wCurMap], a
	ld b, $1c
	ld hl, $4cd8
	call Bankswitch
	ld a, [wcd51]
	dec a
	jr nz, jr_21a8

	ld hl, wd6b1
	set 3, [hl]
	call LeaveMapAnim
	jr jr_21ab

jr_21a8:
	call PlayMapChangeSound

jr_21ab:
	ld hl, wd6b5
	res 0, [hl]
	res 1, [hl]
	jr jr_21c1

jr_21b4:
	ld a, [wd2e4]
	ld [wCurMap], a
	call PlayMapChangeSound
	xor a
	ld [wMapPalOffset], a

jr_21c1:
	ld hl, wd6b5
	set 0, [hl]
	call IgnoreInputForHalfSecond
	jp EnterMap


ContinueCheckWarpsNoCollisionLoop:
	inc b
	dec c
	jp nz, CheckWarpsNoCollisionLoop

CheckMapConnections:
	ld a, [wd2e1]
	cp $ff
	jr nz, jr_2215

	ld a, [wd306]
	ld [wCurMap], a
	ld a, [wd30e]
	ld [wd2e1], a
	ld a, [wd2e0]
	ld c, a
	ld a, [wd30d]
	add c
	ld c, a
	ld [wd2e0], a
	ld a, [wd30f]
	ld l, a
	ld a, [wd310]
	ld h, a
	srl c
	jr z, jr_220a

jr_21fc:
	ld a, [wd30c]
	add $06
	ld e, a
	ld d, $00
	ld b, $00
	add hl, de
	dec c
	jr nz, jr_21fc

jr_220a:
	ld a, l
	ld [wd2de], a
	ld a, h
	ld [wd2df], a
	jp Jump_22c4


jr_2215:
	ld b, a
	ld a, [wd4a4]
	cp b
	jr nz, jr_2259

	ld a, [wd311]
	ld [wCurMap], a
	ld a, [wd319]
	ld [wd2e1], a
	ld a, [wd2e0]
	ld c, a
	ld a, [wd318]
	add c
	ld c, a
	ld [wd2e0], a
	ld a, [wd31a]
	ld l, a
	ld a, [wd31b]
	ld h, a
	srl c
	jr z, jr_224e

jr_2240:
	ld a, [wd317]
	add $06
	ld e, a
	ld d, $00
	ld b, $00
	add hl, de
	dec c
	jr nz, jr_2240

jr_224e:
	ld a, l
	ld [wd2de], a
	ld a, h
	ld [wd2df], a
	jp Jump_22c4


jr_2259:
	ld a, [wd2e0]
	cp $ff
	jr nz, jr_2290

	ld a, [wd2f0]
	ld [wCurMap], a
	ld a, [wd2f7]
	ld [wd2e0], a
	ld a, [wd2e1]
	ld c, a
	ld a, [wd2f8]
	add c
	ld c, a
	ld [wd2e1], a
	ld a, [wd2f9]
	ld l, a
	ld a, [wd2fa]
	ld h, a
	ld b, $00
	srl c
	add hl, bc
	ld a, l
	ld [wd2de], a
	ld a, h
	ld [wd2df], a
	jp Jump_22c4


jr_2290:
	ld b, a
	ld a, [wd4a3]
	cp b
	jr nz, jr_22dd

	ld a, [wd2fb]
	ld [wCurMap], a
	ld a, [wd302]
	ld [wd2e0], a
	ld a, [wd2e1]
	ld c, a
	ld a, [wd303]
	add c
	ld c, a
	ld [wd2e1], a
	ld a, [wd304]
	ld l, a
	ld a, [wd305]
	ld h, a
	ld b, $00
	srl c
	add hl, bc
	ld a, l
	ld [wd2de], a
	ld a, h
	ld [wd2df], a

Jump_22c4:
	call LoadMapHeader
	call PlayDefaultMusicFadeOutCurrent
	ld b, $09
	call RunPaletteCommand
	ld b, $05
	ld hl, $7840
	call Bankswitch
	call LoadTileBlockMap
	jp OverworldLoopLessDelay


jr_22dd:
	jp OverworldLoop


PlayMapChangeSound:
	ld a, [wc448]
	cp $0b
	jr nz, jr_22eb

	ld a, $ad
	jr jr_22ed

jr_22eb:
	ld a, $b5

jr_22ed:
	call PlaySound
	ld a, [wMapPalOffset]
	and a
	ret nz

	jp GBFadeOutToBlack


CheckIfInOutsideMap:
	ld a, [wd2e6]
	and a
	ret z

	cp $17
	ret


ExtraWarpCheck:
	ld a, [wCurMap]
	cp $61
	jr z, jr_2329

	cp $c7
	jr z, jr_232e

	cp $c8
	jr z, jr_232e

	cp $ca
	jr z, jr_232e

	cp $52
	jr z, jr_232e

	ld a, [wd2e6]
	and a
	jr z, jr_232e

	cp $0d
	jr z, jr_232e

	cp $0e
	jr z, jr_232e

	cp $17
	jr z, jr_232e

jr_2329:
	ld hl, $4a45
	jr jr_2331

jr_232e:
	ld hl, $4a94

jr_2331:
	ld b, $03
	jp Bankswitch


MapEntryAfterBattle:
	ld b, $03
	ld hl, $49a5
	call Bankswitch
	ld a, [wMapPalOffset]
	and a
	jp z, GBFadeInFromWhite

	jp LoadGBPal


HandleBlackOut:
	call GBFadeOutToBlack
	ld a, $08
	call StopMusic
	ld hl, wd6ad
	res 5, [hl]
	ld a, $01
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	call $755f
	call $6260
	call PlayDefaultMusicFadeOutCurrent
	jp $5bb6


StopMusic:
	ld [wAudioFadeOutControl], a
	ld a, $ff
	ld [wNewSoundID], a
	call PlaySound

jr_2373:
	ld a, [wAudioFadeOutControl]
	and a
	jr nz, jr_2373

	jp StopAllSounds


HandleFlyWarpOrDungeonWarp:
	call UpdateSprites
	call Delay3
	xor a
	ld [wcf06], a
	ld [wWalkBikeSurfState], a
	ld [wd034], a
	ld [wMapPalOffset], a
	ld hl, wd6b1
	set 2, [hl]
	res 5, [hl]
	call LeaveMapAnim
	ld a, $01
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	call $6260
	jp $5bb6


LeaveMapAnim:
	ld b, $1c
	ld hl, $4b0b
	jp Bankswitch


LoadPlayerSpriteGraphics:
	ld a, [wWalkBikeSurfState]
	dec a
	jr z, jr_23bb

	ldh a, [hffd7]
	and a
	jr nz, jr_23ca

	jr jr_23c0

jr_23bb:
	call IsBikeRidingAllowed
	jr c, jr_23ca

jr_23c0:
	xor a
	ld [wWalkBikeSurfState], a
	ld [wWalkBikeSurfStateCopy], a
	jp LoadWalkingPlayerSpriteGraphics


jr_23ca:
	ld a, [wWalkBikeSurfState]
	and a
	jp z, LoadWalkingPlayerSpriteGraphics

	dec a
	jp z, LoadBikePlayerSpriteGraphics

	dec a
	jp z, LoadSurfingPlayerSpriteGraphics

	jp LoadWalkingPlayerSpriteGraphics


IsBikeRidingAllowed:
	ld a, [wCurMap]
	cp $22
	jr z, jr_23f7

	cp $09
	jr z, jr_23f7

	ld a, [wd2e6]
	ld b, a
	ld hl, $23f9

jr_23ee:
	ld a, [hli]
	cp b
	jr z, jr_23f7

	inc a
	jr nz, jr_23ee

	and a
	ret


jr_23f7:
	scf
	ret


	nop
	inc bc
	dec bc
	ld c, $11
	rst $38

LoadTilesetTilePatternData:
	ld a, [wd4ad]
	ld l, a
	ld a, [wd4ae]
	ld h, a
	ld de, $9000
	ld bc, $0600
	ld a, [wd4aa]
	jp CopyFarBytes2


LoadTileBlockMap:
	ld hl, wc6e8
	ld a, [wd32c]
	ld d, a
	ld bc, $0514

jr_241d:
	ld a, d
	ld [hli], a
	dec bc
	ld a, c
	or b
	jr nz, jr_241d

	ld hl, wc6e8
	ld a, [wd2e8]
	ldh [hff8c], a
	add $06
	ldh [hff8b], a
	ld b, $00
	ld c, a
	add hl, bc
	add hl, bc
	add hl, bc
	ld c, $03
	add hl, bc
	ld a, [wd2e9]
	ld e, a
	ld a, [wd2ea]
	ld d, a
	ld a, [wd2e7]
	ld b, a

jr_2445:
	push hl
	ldh a, [hff8c]
	ld c, a

jr_2449:
	ld a, [de]
	inc de
	ld [hli], a
	dec c
	jr nz, jr_2449

	pop hl
	ldh a, [hff8b]
	add l
	ld l, a
	jr nc, jr_2457

	inc h

jr_2457:
	dec b
	jr nz, jr_2445

	ld a, [wd2f0]
	cp $ff
	jr z, jr_2481

	call SwitchToMapRomBank
	ld a, [wd2f1]
	ld l, a
	ld a, [wd2f2]
	ld h, a
	ld a, [wd2f3]
	ld e, a
	ld a, [wd2f4]
	ld d, a
	ld a, [wd2f5]
	ldh [hff8b], a
	ld a, [wd2f6]
	ldh [hff8c], a
	call LoadNorthSouthConnectionsTileMap

jr_2481:
	ld a, [wd2fb]
	cp $ff
	jr z, jr_24a8

	call SwitchToMapRomBank
	ld a, [wd2fc]
	ld l, a
	ld a, [wd2fd]
	ld h, a
	ld a, [wd2fe]
	ld e, a
	ld a, [wd2ff]
	ld d, a
	ld a, [wd300]
	ldh [hff8b], a
	ld a, [wd301]
	ldh [hff8c], a
	call LoadNorthSouthConnectionsTileMap

jr_24a8:
	ld a, [wd306]
	cp $ff
	jr z, jr_24ce

	call SwitchToMapRomBank
	ld a, [wd307]
	ld l, a
	ld a, [wd308]
	ld h, a
	ld a, [wd309]
	ld e, a
	ld a, [wd30a]
	ld d, a
	ld a, [wd30b]
	ld b, a
	ld a, [wd30c]
	ldh [hff8b], a
	call LoadEastWestConnectionsTileMap

jr_24ce:
	ld a, [wd311]
	cp $ff
	jr z, jr_24f4

	call SwitchToMapRomBank
	ld a, [wd312]
	ld l, a
	ld a, [wd313]
	ld h, a
	ld a, [wd314]
	ld e, a
	ld a, [wd315]
	ld d, a
	ld a, [wd316]
	ld b, a
	ld a, [wd317]
	ldh [hff8b], a
	call LoadEastWestConnectionsTileMap

jr_24f4:
	ret


LoadNorthSouthConnectionsTileMap:
	ld c, $03

jr_24f7:
	push de
	push hl
	ldh a, [hff8b]
	ld b, a

jr_24fc:
	ld a, [hli]
	ld [de], a
	inc de
	dec b
	jr nz, jr_24fc

	pop hl
	pop de
	ldh a, [hff8c]
	add l
	ld l, a
	jr nc, jr_250b

	inc h

jr_250b:
	ld a, [wd2e8]
	add $06
	add e
	ld e, a
	jr nc, jr_2515

	inc d

jr_2515:
	dec c
	jr nz, jr_24f7

	ret


LoadEastWestConnectionsTileMap:
jr_2519:
	push hl
	push de
	ld c, $03

jr_251d:
	ld a, [hli]
	ld [de], a
	inc de
	dec c
	jr nz, jr_251d

	pop de
	pop hl
	ldh a, [hff8b]
	add l
	ld l, a
	jr nc, jr_252c

	inc h

jr_252c:
	ld a, [wd2e8]
	add $06
	add e
	ld e, a
	jr nc, jr_2536

	inc d

jr_2536:
	dec b
	jr nz, jr_2519

	ret


IsSpriteOrSignInFrontOfPlayer:
	xor a
	ldh [hff8c], a
	ld a, [wd42f]
	and a
	jr z, jr_256f

	ld a, $35
	call Predef
	ld hl, wd430
	ld a, [wd42f]
	ld b, a
	ld c, $00

jr_2551:
	inc c
	ld a, [hli]
	cp d
	jr z, jr_2559

	inc hl
	jr jr_256c

jr_2559:
	ld a, [hli]
	cp e
	jr nz, jr_256c

	push hl
	push bc
	ld hl, wd450
	ld b, $00
	dec c
	add hl, bc
	ld a, [hl]
	ldh [hff8c], a
	pop bc
	pop hl
	ret


jr_256c:
	dec b
	jr nz, jr_2551

jr_256f:
	ld a, $35
	call Predef
	ld hl, wd4b1
	ld b, $03
	ld d, $20

jr_257b:
	ld a, [hli]
	cp c
	jr z, jr_2584

	dec b
	jr nz, jr_257b

IsSpriteInFrontOfPlayer:
	ld d, $10

jr_2584:
	ld bc, $3c40
	ld a, [$c109]
	cp $04
	jr nz, jr_2595

	ld a, b
	sub d
	ld b, a
	ld a, $08
	jr jr_25b0

jr_2595:
	cp $00
	jr nz, jr_25a0

	ld a, b
	add d
	ld b, a
	ld a, $04
	jr jr_25b0

jr_25a0:
	cp $0c
	jr nz, jr_25ab

	ld a, c
	add d
	ld c, a
	ld a, $01
	jr jr_25b0

jr_25ab:
	ld a, c
	sub d
	ld c, a
	ld a, $02

jr_25b0:
	ld [wd4a9], a
	ld a, [wNumSprites]
	and a
	ret z

	ld hl, $c110
	ld d, a
	ld e, $01

jr_25be:
	push hl
	ld a, [hli]
	and a
	jr z, jr_25d2

	inc l
	ld a, [hli]
	inc a
	jr z, jr_25d2

	inc l
	ld a, [hli]
	cp b
	jr nz, jr_25d2

	inc l
	ld a, [hl]
	cp c
	jr z, jr_25dc

jr_25d2:
	pop hl
	ld a, l
	add $10
	ld l, a
	inc e
	dec d
	jr nz, jr_25be

	ret


jr_25dc:
	pop hl
	ld a, l
	and $f0
	inc a
	ld l, a
	set 7, [hl]
	ld a, e
	ldh [hff8c], a
	ret


CollisionCheckOnLand:
	ld a, [wd6b5]
	bit 6, a
	jr nz, jr_2625

	ld a, [wcd38]
	and a
	jr nz, jr_2625

	ld a, [wd4a9]
	ld d, a
	ld a, [$c10c]
	and d
	jr nz, jr_2617

	xor a
	ldh [hff8c], a
	call IsSpriteInFrontOfPlayer
	ldh a, [hff8c]
	and a
	jr nz, jr_2617

	ld hl, $268f
	call CheckForJumpingAndTilePairCollisions
	jr c, jr_2617

	call CheckTilePassable
	jr nc, jr_2625

jr_2617:
	ld a, [wc02a]
	cp $b4
	jr z, jr_2623

	ld a, $b4
	call PlaySound

jr_2623:
	scf
	ret


jr_2625:
	and a
	ret


CheckTilePassable:
	ld a, $35
	call Predef
	ld a, [wcfad]
	ld c, a
	ld hl, wd4af
	ld a, [hli]
	ld h, [hl]
	ld l, a

jr_2636:
	ld a, [hli]
	cp $ff
	jr z, jr_263f

	cp c
	ret z

	jr jr_2636

jr_263f:
	scf
	ret


CheckForJumpingAndTilePairCollisions:
	push hl
	ld a, $35
	call Predef
	push de
	push bc
	ld b, $06
	ld hl, $7f2a
	call Bankswitch
	pop bc
	pop de
	pop hl
	and a
	ld a, [wd6b5]
	bit 6, a
	ret nz

	ld a, [wcfad]
	ld c, a

jr_265f:
	ld a, [wd2e6]
	ld b, a
	ld a, [hli]
	cp $ff
	jr z, jr_268d

	cp b
	jr z, jr_266f

	inc hl

jr_266c:
	inc hl
	jr jr_265f

jr_266f:
	ld a, [wc45c]
	ld b, a
	ld a, [hl]
	cp b
	jr z, jr_267e

	inc hl
	ld a, [hl]
	cp b
	jr z, jr_2685

	jr jr_266c

jr_267e:
	inc hl
	ld a, [hl]
	cp c
	jr z, jr_268b

	jr jr_265f

jr_2685:
	dec hl
	ld a, [hli]
	cp c
	inc hl
	jr nz, jr_265f

jr_268b:
	scf
	ret


jr_268d:
	and a
	ret


	db $11

	jr nz, @+$07

	db $11

	ld b, c
	dec b

	db $03, $30, $2e, $11

	ld a, [hli]

	db $05, $11

	dec b

	db $21, $03, $52, $2e, $03, $55, $2e, $03, $56, $2e, $03, $20, $2e, $03

	ld e, [hl]

	db $2e, $03

	ld e, a

	db $2e, $ff

	inc bc

	db $14

	ld l, $03

	db $48

	ld l, $11

	db $14

	dec b
	rst $38

LoadCurrentMapView:
	ldh a, [hLoadedROMBank]
	push af
	ld a, [wd4aa]
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	ld a, [wd2de]
	ld e, a
	ld a, [wd2df]
	ld d, a
	ld hl, wc508
	ld b, $05

jr_26d3:
	push hl
	push de
	ld c, $06

jr_26d7:
	push bc
	push de
	push hl
	ld a, [de]
	ld c, a
	call DrawTileBlock
	pop hl
	pop de
	pop bc
	inc hl
	inc hl
	inc hl
	inc hl
	inc de
	dec c
	jr nz, jr_26d7

	pop de
	ld a, [wd2e8]
	add $06
	add e
	ld e, a
	jr nc, jr_26f5

	inc d

jr_26f5:
	pop hl
	ld a, $60
	add l
	ld l, a
	jr nc, jr_26fd

	inc h

jr_26fd:
	dec b
	jr nz, jr_26d3

	ld hl, wc508
	ld bc, $0000
	ld a, [wd2e2]
	and a
	jr z, jr_2710

	ld bc, $0030
	add hl, bc

jr_2710:
	ld a, [wd2e3]
	and a
	jr z, jr_271a

	ld bc, $0002
	add hl, bc

jr_271a:
	ld de, wc3a0
	ld b, $12

jr_271f:
	ld c, $14

jr_2721:
	ld a, [hli]
	ld [de], a
	inc de
	dec c
	jr nz, jr_2721

	ld a, $04
	add l
	ld l, a
	jr nc, jr_272e

	db $24

jr_272e:
	dec b
	jr nz, jr_271f

	pop af
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	ret


AdvancePlayerSprite:
	ld a, [$c103]
	ld b, a
	ld a, [$c105]
	ld c, a
	ld hl, wcfac
	dec [hl]
	jr nz, jr_2754

	ld a, [wd2e0]
	add b
	ld [wd2e0], a
	ld a, [wd2e1]
	add c
	ld [wd2e1], a

jr_2754:
	ld a, [wcfac]
	cp $07
	jp nz, Jump_2847

	ld a, c
	cp $01
	jr nz, jr_2773

	ld a, [wd4a5]
	ld e, a
	and $e0
	ld d, a
	ld a, e
	add $02
	and $1f
	or d
	ld [wd4a5], a
	jr jr_27be

jr_2773:
	cp $ff
	jr nz, jr_2789

	ld a, [wd4a5]
	ld e, a
	and $e0
	ld d, a
	ld a, e
	sub $02
	and $1f
	or d
	ld [wd4a5], a
	jr jr_27be

jr_2789:
	ld a, b
	cp $01
	jr nz, jr_27a5

	ld a, [wd4a5]
	add $40
	ld [wd4a5], a
	jr nc, jr_27be

	ld a, [wd4a6]
	inc a
	and $03
	or $98
	ld [wd4a6], a
	jr jr_27be

jr_27a5:
	cp $ff
	jr nz, jr_27be

	ld a, [wd4a5]
	sub $40
	ld [wd4a5], a
	jr nc, jr_27be

	ld a, [wd4a6]
	dec a
	and $03
	or $98
	ld [wd4a6], a

jr_27be:
	ld a, c
	and a
	jr z, jr_27c2

jr_27c2:
	ld hl, wd2e3
	ld a, [hl]
	add c
	ld [hl], a
	cp $02
	jr nz, jr_27da

	xor a
	ld [hl], a
	ld hl, wXOffsetSinceLastSpecialWarp
	inc [hl]
	ld de, wd2de
	call MoveTileBlockMapPointerEast
	jr jr_281c

jr_27da:
	cp $ff
	jr nz, jr_27ed

	ld a, $01
	ld [hl], a
	ld hl, wXOffsetSinceLastSpecialWarp
	dec [hl]
	ld de, wd2de
	call MoveTileBlockMapPointerWest
	jr jr_281c

jr_27ed:
	ld hl, wd2e2
	ld a, [hl]
	add b
	ld [hl], a
	cp $02
	jr nz, jr_2808

	xor a
	ld [hl], a
	ld hl, wYOffsetSinceLastSpecialWarp
	inc [hl]
	ld de, wd2de
	ld a, [wd2e8]
	call MoveTileBlockMapPointerSouth
	jr jr_281c

jr_2808:
	cp $ff
	jr nz, jr_281c

	ld a, $01
	ld [hl], a
	ld hl, wYOffsetSinceLastSpecialWarp
	dec [hl]
	ld de, wd2de
	ld a, [wd2e8]
	call MoveTileBlockMapPointerNorth

jr_281c:
	call LoadCurrentMapView
	ld a, [$c103]
	cp $01
	jr nz, jr_282b

	call ScheduleSouthRowRedraw
	jr jr_2847

jr_282b:
	cp $ff
	jr nz, jr_2834

	call ScheduleNorthRowRedraw
	jr jr_2847

jr_2834:
	ld a, [$c105]
	cp $01
	jr nz, jr_2840

	call ScheduleEastColumnRedraw
	jr jr_2847

jr_2840:
	cp $ff
	jr nz, jr_2847

	call ScheduleWestColumnRedraw

Jump_2847:
jr_2847:
	ld a, [$c103]
	ld b, a
	ld a, [$c105]
	ld c, a
	sla b
	sla c
	ldh a, [hSCY]
	add b
	ldh [hSCY], a
	ldh a, [hSCX]
	add c
	ldh [hSCX], a
	ld hl, $c114
	ld a, [wNumSprites]
	and a
	jr z, jr_2875

	ld e, a

jr_2867:
	ld a, [hl]
	sub b
	ld [hli], a
	inc l
	ld a, [hl]
	sub c
	ld [hl], a
	ld a, $0e
	add l
	ld l, a
	dec e
	jr nz, jr_2867

jr_2875:
	ret


MoveTileBlockMapPointerEast:
	ld a, [de]
	add $01
	ld [de], a
	ret nc

	inc de
	ld a, [de]
	inc a
	ld [de], a
	ret


MoveTileBlockMapPointerWest:
	ld a, [de]
	sub $01
	ld [de], a
	ret nc

	inc de
	ld a, [de]
	dec a
	ld [de], a
	ret


MoveTileBlockMapPointerSouth:
	add $06
	ld b, a
	ld a, [de]
	add b
	ld [de], a
	ret nc

	inc de
	ld a, [de]
	inc a
	ld [de], a
	ret


MoveTileBlockMapPointerNorth:
	add $06
	ld b, a
	ld a, [de]
	sub b
	ld [de], a
	ret nc

	inc de
	ld a, [de]
	dec a
	ld [de], a
	ret


ScheduleNorthRowRedraw:
	ld hl, wc3a0
	call CopyToRedrawRowOrColumnSrcTiles
	ld a, [wd4a5]
	ldh [hffd1], a
	ld a, [wd4a6]
	ldh [hffd2], a
	ld a, $02
	ldh [hffd0], a
	ret


CopyToRedrawRowOrColumnSrcTiles:
	ld de, wcbfc
	ld c, $28

jr_28bc:
	ld a, [hli]
	ld [de], a
	inc de
	dec c
	jr nz, jr_28bc

	ret


ScheduleSouthRowRedraw:
	ld hl, wc4e0
	call CopyToRedrawRowOrColumnSrcTiles
	ld a, [wd4a5]
	ld l, a
	ld a, [wd4a6]
	ld h, a
	ld bc, $0200
	add hl, bc
	ld a, h
	and $03
	or $98
	ldh [hffd2], a
	ld a, l
	ldh [hffd1], a
	ld a, $02
	ldh [hffd0], a
	ret


ScheduleEastColumnRedraw:
	ld hl, wc3b2
	call ScheduleColumnRedrawHelper
	ld a, [wd4a5]
	ld c, a
	and $e0
	ld b, a
	ld a, c
	add $12
	and $1f
	or b
	ldh [hffd1], a
	ld a, [wd4a6]
	ldh [hffd2], a
	ld a, $01
	ldh [hffd0], a
	ret


ScheduleColumnRedrawHelper:
	ld de, wcbfc
	ld c, $12

jr_2908:
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hl]
	ld [de], a
	inc de
	ld a, $13
	add l
	ld l, a
	jr nc, jr_2915

	inc h

jr_2915:
	dec c
	jr nz, jr_2908

	ret


ScheduleWestColumnRedraw:
	ld hl, wc3a0
	call ScheduleColumnRedrawHelper
	ld a, [wd4a5]
	ldh [hffd1], a
	ld a, [wd4a6]
	ldh [hffd2], a
	ld a, $01
	ldh [hffd0], a
	ret


DrawTileBlock:
	push hl
	ld a, [wd4ab]
	ld l, a
	ld a, [wd4ac]
	ld h, a
	ld a, c
	swap a
	ld b, a
	and $f0
	ld c, a
	ld a, b
	and $0f
	ld b, a
	add hl, bc
	ld d, h
	ld e, l
	pop hl
	ld c, $04

jr_2948:
	push bc
	ld a, [de]
	ld [hli], a
	inc de
	ld a, [de]
	ld [hli], a
	inc de
	ld a, [de]
	ld [hli], a
	inc de
	ld a, [de]
	ld [hl], a
	inc de
	ld bc, $0015
	add hl, bc
	pop bc
	dec c
	jr nz, jr_2948

	ret


JoypadOverworld:
	xor a
	ld [$c103], a
	ld [$c105], a
	call RunMapScript
	call Joypad
	ld a, [wd6b2]
	bit 3, a
	jr nz, jr_2983

	ld a, [wCurMap]
	cp $1c
	jr nz, jr_2983

	ldh a, [hJoyHeld]
	and $f3
	jr nz, jr_2983

	ld a, $80
	ldh [hJoyHeld], a

jr_2983:
	ld a, [wd6af]
	bit 7, a
	ret z

	ldh a, [hJoyHeld]
	ld b, a
	ld a, [wcd3b]
	and b
	ret nz

	ld hl, wcd38
	dec [hl]
	ld a, [hl]
	cp $ff
	jr z, jr_29ac

	ld hl, wccd3
	add l
	ld l, a
	jr nc, jr_29a2

	inc h

jr_29a2:
	ld a, [hl]
	ldh [hJoyHeld], a
	and a
	ret nz

	ldh [hJoyPressed], a
	ldh [hffb2], a
	ret


jr_29ac:
	xor a
	ld [wcd3a], a
	ld [wcd38], a
	ld [wccd3], a
	ld [wcd66], a
	ldh [hJoyHeld], a
	ld hl, wd6b5
	ld a, [hl]
	and $f8
	ld [hl], a
	ld hl, wd6af
	res 7, [hl]
	ret


CollisionCheckOnWater:
	ld a, [wd6af]
	bit 7, a
	jp nz, Jump_2a15

	ld a, [wd4a9]
	ld d, a
	ld a, [$c10c]
	and d
	jr nz, jr_29f6

	ld hl, $26b1
	call CheckForJumpingAndTilePairCollisions
	jr c, jr_2a06

	ld a, $35
	call Predef
	ld a, [wcfad]
	cp $14
	jr z, jr_2a15

	cp $32
	jr z, jr_2a23

	cp $48
	jr z, jr_2a15

jr_29f6:
	ld hl, wd4af
	ld a, [hli]
	ld h, [hl]
	ld l, a

jr_29fc:
	ld a, [hli]
	cp $ff
	jr z, jr_2a06

	cp c
	jr z, jr_2a17

	jr jr_29fc

jr_2a06:
	ld a, [wc02a]
	cp $b4
	jr z, jr_2a12

	ld a, $b4
	call PlaySound

jr_2a12:
	scf
	jr jr_2a16

Jump_2a15:
jr_2a15:
	and a

jr_2a16:
	ret


jr_2a17:
	xor a
	ld [wWalkBikeSurfState], a
	call LoadPlayerSpriteGraphics
	call PlayDefaultMusic
	jr jr_2a15

jr_2a23:
	ld a, [wd2e6]
	cp $0e
	jr nz, jr_2a15

	jr jr_2a17

RunMapScript:
	push hl
	push de
	push bc
	ld b, $03
	ld hl, $7557
	call Bankswitch
	ld a, [wcd5b]
	bit 1, a
	jr z, jr_2a46

	ld b, $03
	ld hl, $75e7
	call Bankswitch

jr_2a46:
	pop bc
	pop de
	pop hl
	call RunNPCMovementScript
	ld a, [wCurMap]
	call SwitchToMapRomBank
	ld hl, wd2ed
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld de, $2a5d
	push de
	jp hl


	ret


LoadWalkingPlayerSpriteGraphics:
	ld de, $4180
	ld hl, $8000
	jr LoadPlayerSpriteGraphicsCommon

LoadSurfingPlayerSpriteGraphics:
	ld de, $76c0
	ld hl, $8000
	jr LoadPlayerSpriteGraphicsCommon

LoadBikePlayerSpriteGraphics:
	ld de, $4000
	ld hl, $8000

LoadPlayerSpriteGraphicsCommon:
	push de
	push hl
	ld bc, $050c
	call CopyVideoData
	pop hl
	pop de
	ld a, $c0
	add e
	ld e, a
	jr nc, jr_2a85

	inc d

jr_2a85:
	set 3, h
	ld bc, $050c
	jp CopyVideoData


LoadMapHeader:
	ld b, $03
	ld hl, $7445
	call Bankswitch
	ld a, [wd2e6]
	ld [wd0de], a
	ld a, [wCurMap]
	call SwitchToMapRomBank
	ld a, [wd2e6]
	ld b, a
	res 7, a
	ld [wd2e6], a
	ldh [hff8b], a
	bit 7, b
	ret nz

	ld hl, $1bcb
	ld a, [wCurMap]
	sla a
	jr nc, jr_2aba

	inc h

jr_2aba:
	add l
	ld l, a
	jr nc, jr_2abf

	inc h

jr_2abf:
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld de, wd2e6
	ld c, $0a

jr_2ac7:
	ld a, [hli]
	ld [de], a
	inc de
	dec c
	jr nz, jr_2ac7

	ld a, $ff
	ld [wd2f0], a
	ld [wd2fb], a
	ld [wd306], a
	ld [wd311], a
	ld a, [wd2ef]
	ld b, a
	bit 3, b
	jr z, jr_2ae9

	ld de, wd2f0
	call CopyMapConnectionHeader

jr_2ae9:
	bit 2, b
	jr z, jr_2af3

	ld de, wd2fb
	call CopyMapConnectionHeader

jr_2af3:
	bit 1, b
	jr z, jr_2afd

	ld de, wd306
	call CopyMapConnectionHeader

jr_2afd:
	bit 0, b
	jr z, jr_2b07

	ld de, wd311
	call CopyMapConnectionHeader

jr_2b07:
	ld a, [hli]
	ld [wd328], a
	ld a, [hli]
	ld [wd329], a
	push hl
	ld a, [wd328]
	ld l, a
	ld a, [wd329]
	ld h, a
	ld de, wd32c
	ld a, [hli]
	ld [de], a
	ld a, [hli]
	ld [wd32d], a
	and a
	jr z, jr_2b33

	ld c, a
	ld de, wd32e

jr_2b28:
	ld b, $04

jr_2b2a:
	ld a, [hli]
	ld [de], a
	inc de
	dec b
	jr nz, jr_2b2a

	dec c
	jr nz, jr_2b28

jr_2b33:
	ld a, [hli]
	ld [wd42f], a
	and a
	jr z, jr_2b61

	ld c, a
	ld de, wd450
	ld a, d
	ldh [hff95], a
	ld a, e
	ldh [hff96], a
	ld de, wd430

jr_2b47:
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	inc de
	push de
	ldh a, [hff95]
	ld d, a
	ldh a, [hff96]
	ld e, a
	ld a, [hli]
	ld [de], a
	inc de
	ld a, d
	ldh [hff95], a
	ld a, e
	ldh [hff96], a
	pop de
	dec c
	jr nz, jr_2b47

jr_2b61:
	ld a, [wd6ad]
	bit 5, a
	jp nz, Jump_2c09

	ld a, [hli]
	ld [wNumSprites], a
	push hl
	ld hl, $c110
	ld de, $c210
	xor a
	ld b, $f0

jr_2b77:
	ld [hli], a
	ld [de], a
	inc e
	dec b
	jr nz, jr_2b77

	ld hl, $c112
	ld de, $0010
	ld c, $0f

jr_2b85:
	ld [hl], $ff
	add hl, de
	dec c
	jr nz, jr_2b85

	pop hl
	ld de, $c110
	ld a, [wNumSprites]
	and a
	jp z, Jump_2c09

	ld b, a
	ld c, $00

Jump_2b99:
	ld a, [hli]
	ld [de], a
	inc d
	ld a, $04
	add e
	ld e, a
	ld a, [hli]
	ld [de], a
	inc e
	ld a, [hli]
	ld [de], a
	inc e
	ld a, [hli]
	ld [de], a
	ld a, [hli]
	ldh [hff8d], a
	ld a, [hli]
	ldh [hff8e], a
	push bc
	push hl
	ld b, $00
	ld hl, wMapSpriteData
	add hl, bc
	ldh a, [hff8d]
	ld [hli], a
	ldh a, [hff8e]
	ld [hl], a
	ldh a, [hff8e]
	ldh [hff8d], a
	and $3f
	ld [hl], a
	pop hl
	ldh a, [hff8d]
	bit 6, a
	jr nz, jr_2bd0

	bit 7, a
	jr nz, jr_2be4

	jr jr_2bf4

jr_2bd0:
	ld a, [hli]
	ldh [hff8d], a
	ld a, [hli]
	ldh [hff8e], a
	push hl
	ld hl, wd483
	add hl, bc
	ldh a, [hff8d]
	ld [hli], a
	ldh a, [hff8e]
	ld [hl], a
	pop hl
	jr jr_2bfd

jr_2be4:
	ld a, [hli]
	ldh [hff8d], a
	push hl
	ld hl, wd483
	add hl, bc
	ldh a, [hff8d]
	ld [hli], a
	xor a
	ld [hl], a
	pop hl
	jr jr_2bfd

jr_2bf4:
	push hl
	ld hl, wd483
	add hl, bc
	xor a
	ld [hli], a
	ld [hl], a
	pop hl

jr_2bfd:
	pop bc
	dec d
	ld a, $0a
	add e
	ld e, a
	inc c
	inc c
	dec b
	jp nz, Jump_2b99

Jump_2c09:
	ld a, $19
	call Predef
	ld hl, $4f2e
	ld b, $03
	call Bankswitch
	pop hl
	ld a, [wd2e7]
	add a
	ld [wd4a3], a
	ld a, [wd2e8]
	add a
	ld [wd4a4], a
	ld a, [wCurMap]
	ld c, a
	ld b, $00
	ldh a, [hLoadedROMBank]
	push af
	ld a, $03
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	ld hl, $4693
	add hl, bc
	add hl, bc
	ld a, [hli]
	ld [wd2da], a
	ld a, [hl]
	ld [wd2db], a
	pop af
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	ret


CopyMapConnectionHeader:
	ld c, $0b

jr_2c4b:
	ld a, [hli]
	ld [de], a
	inc de
	dec c
	jr nz, jr_2c4b

	ret


LoadMapData:
	ldh a, [hLoadedROMBank]
	push af
	call DisableLCD
	ld a, $98
	ld [wd4a6], a
	xor a
	ld [wd4a5], a
	ldh [hSCY], a
	ldh [hSCX], a
	ld [wcfac], a
	ld [wd0de], a
	ld [wWalkBikeSurfStateCopy], a
	ld [wd327], a
	call LoadTextBoxTilePatterns
	call LoadMapHeader
	ld b, $05
	ld hl, $7840
	call Bankswitch
	call LoadTileBlockMap
	call LoadTilesetTilePatternData
	call LoadCurrentMapView
	ld hl, wc3a0
	ld de, $9800
	ld b, $12

jr_2c90:
	ld c, $14

jr_2c92:
	ld a, [hli]
	ld [de], a
	inc e
	dec c
	jr nz, jr_2c92

	ld a, $0c
	add e
	ld e, a
	jr nc, jr_2c9f

	inc d

jr_2c9f:
	dec b
	jr nz, jr_2c90

	ld a, $01
	ld [wUpdateSpritesEnabled], a
	call EnableLCD
	ld b, $09
	call RunPaletteCommand
	call LoadPlayerSpriteGraphics
	ld a, [wd6b1]
	and $18
	jr nz, jr_2cc6

	ld a, [wd6b2]
	bit 1, a
	jr nz, jr_2cc6

	call UpdateMusic6Times
	call PlayDefaultMusicFadeOutCurrent

jr_2cc6:
	pop af
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	ret


SwitchToMapRomBank:
	push hl
	push bc
	ld c, a
	ld b, $00
	ld a, $03
	call PushBank
	ld hl, $4883
	add hl, bc
	ld a, [hl]
	ldh [hffe8], a
	call PopBank
	ldh a, [hffe8]
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	pop bc
	pop hl
	ret


IgnoreInputForHalfSecond:
	ld a, $1e
	ld [wd0ff], a
	ld hl, wd6af
	ld a, [hl]
	or $26
	ld [hl], a
	ret


ResetUsingStrengthOutOfBattleBit:
	ld hl, wd6a7
	res 0, [hl]
	ret

ForceBikeOrSurf::
	ld b, $05
	ld hl, $23ae
	call Bankswitch
	jp PlayDefaultMusic

LoadDestinationWarpPosition::
	ld b, a
	ldh a, [hLoadedROMBank]
	push af
	ld a, [wcf0d]
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	ld a, b
	add a
	add a
	ld c, a
	ld b, $00
	add hl, bc
	ld bc, $0004
	ld de, wd2de
	call CopyBytes
	pop af
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	ret
