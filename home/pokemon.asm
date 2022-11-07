DrawHPBar::
; Draw a HP bar d tiles long, and fill it to e pixels.
	push hl
	push de
	push bc

	; Left
	ld a, $71 ; "HP:"
	ld [hli], a
	ld a, $62
	ld [hli], a
	push hl
	ld a, $63
.draw
	ld [hli], a
	dec d
	jr nz, .draw

	; Right
	ld a, [wHPBarType]
	dec a
	ld a, $6d ; status screen and battle
	jr z, .ok
	dec a ; pokemon menu
.ok
	ld [hl], a
	pop hl
	ld a, e
	and a
	jr nz, .fill
	ld a, c
	and a
	jr z, .done

	ld e, $01
.fill
	ld a, e
	sub $08
	jr c, .partial

	ld e, a
	ld a, $6b
	ld [hli], a
	ld a, e
	and a
	jr z, .done
	jr .fill

.partial
	ld a, $63
	add e
	ld [hl], a

.done
	pop bc
	pop de
	pop hl
	ret

LoadMonData:
	jpfar LoadMonData_

OverwritewMoves::
; Write c to [wMoves + b]. Unused.
	ld hl, wMoves
	ld e, b
	ld d, 0
	add hl, de
	ld a, c
	ld [hl], a
	ret

LoadFlippedFrontSpriteByMonIndex::
	ld a, 1
	ld [wSpriteFlipped], a

LoadFrontSpriteByMonIndex::
	push hl
	ld a, [wd0e3]
	push af
	ld a, [wcf78]
	ld [wd0e3], a
	ld a, $3a
	call Predef
	ld hl, wd0e3
	ld a, [hl]
	pop bc
	ld [hl], b
	and a
	pop hl
	jr z, .invalidDexNumber
	cp NUM_POKEMON + 1
	jr c, .validDexNumber

.invalidDexNumber
	ld a, RHYDON ; $01
	ld [wcf78], a
	ret

.validDexNumber
	push hl
	ld de, $9000
	call LoadMonFrontSprite
	pop hl
	ldh a, [hLoadedROMBank]
	push af
	ld a, BANK(CopyUncompressedPicToHL)
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	xor a
	ld [hffe1], a
	call CopyUncompressedPicToHL
	xor a
	ld [wSpriteFlipped], a
	pop af
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	ret

PlayCry::
; Play monster a's cry.
	call GetCryData
	call PlaySound
	jp WaitForSoundToFinish

GetCryData::
; Load cry data for monster a.
	dec a
	ld c, a
	ld b, $00
	ld hl, CryData
	add hl, bc
	add hl, bc
	add hl, bc
	ld a, BANK(CryData)
	call PushBank

	ld a, [hli]
	ld b, a ; cry id
	ld a, [hli]
	ld [wc0f1], a
	ld a, [hl]
	ld [wc0f2], a
	call PopBank
	ld a, b
	ld c, $14
	rlca
	add b
	add c
	ret

DisplayPartyMenu::
	ldh a, [hffd7]
	push af
	xor a
	ldh [hffd7], a
	call GBPalWhiteOutWithDelay3
	call ClearSprites
	call PartyMenuInit
	call DrawPartyMenu
	jp HandlePartyMenuInput

GoBackToPartyMenu::
	ldh a, [hffd7]
	push af
	xor a
	ldh [hffd7], a
	call PartyMenuInit
	call RedrawPartyMenu
	jp HandlePartyMenuInput

PartyMenuInit:
	ld a, $01
	call PushBank
	call LoadHpBarAndStatusTilePatterns
	ld hl, wd6af
	set 6, [hl]
	xor a
	ld [wcc49], a
	ld [wcc37], a
	ld hl, wcc24
	inc a
	ld [hli], a
	xor a
	ld [hli], a
	ld a, [wcc2b]
	push af
	ld [hli], a
	inc hl
	ld a, [wd123]
	and a
	jr z, .storeMaxMenuItemID

	dec a
.storeMaxMenuItemID
	ld [hli], a
	ld a, [wd0e4]
	and a
	ld a, $03
	jr z, .next

	xor a
	ld [wd0e4], a
	inc a

.next
	ld [hli], a
	pop af
	ld [hl], a
	ret

HandlePartyMenuInput:
	ld a, $01
	ld [wcc4a], a
	ld a, $40
	ld [wd078], a
	call HandleMenuInput_
	call PlaceUnfilledArrowMenuCursor
	ld b, a
	xor a
	ld [wd078], a
	ld a, [wCurrentMenuItem]
	ld [wcc2b], a
	ld hl, wd6af
	res 6, [hl]
	ld a, [wcc35]
	and a
	jp nz, Jump_2ea3

	pop af
	ldh [hffd7], a
	bit 1, b
	jr nz, .noPokemonChosen

	ld a, [wd123]
	and a
	jr z, .noPokemonChosen

	ld a, [wCurrentMenuItem]
	ld [wcf79], a
	ld hl, wd124
	ld b, $00
	ld c, a
	add hl, bc
	ld a, [hl]
	ld [wcf78], a
	ld [wcfc0], a
	call PopBank
	and a
	ret

.noPokemonChosen
	call PopBank
	scf
	ret

Jump_2ea3:
	bit 1, b
	jr z, jr_2ebb

	ld b, $04
	ld hl, $5dd1
	call Bankswitch
	xor a
	ld [wcc35], a
	ld [wd05a], a
	call RedrawPartyMenu
	jr HandlePartyMenuInput

jr_2ebb:
	ld a, [wCurrentMenuItem]
	ld [wcf79], a
	ld b, $04
	ld hl, $6116
	call Bankswitch
	jr HandlePartyMenuInput

DrawPartyMenu:
	ld hl, $7a0c
	jr DrawPartyMenuCommon

RedrawPartyMenu:
	ld hl, $7a1d

DrawPartyMenuCommon:
	ld b, $04
	jp Bankswitch

PrintStatusCondition::
	push de
	dec de
	dec de
	ld a, [de]
	ld b, a
	dec de
	ld a, [de]
	or b
	pop de
	jr nz, jr_2eed

	ld a, $cb
	ld [hli], a
	ld a, $de
	ld [hli], a
	ld [hl], $bc
	and a
	ret


jr_2eed:
	ldh a, [hLoadedROMBank]
	push af
	ld a, $1e
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	call $4000
	pop bc
	ld a, b
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	ret


PrintLevel:
	ld a, $6e
	ld [hli], a
	ld c, $02
	ld a, [wcfa0]
	cp 100
	jr c, jr_2f1a

	dec hl
	inc c
	jr jr_2f1a

	ld a, $6e
	ld [hli], a
	ld c, $03
	ld a, [wcfa0]

jr_2f1a:
	ld [wd0e3], a
	ld de, wd0e3
	ld b, $41
	jp PrintNumber

GetwMoves:
	ld hl, wMoves
	ld c, a
	ld b, $00
	add hl, bc
	ld a, [hl]
	ret

GetMonHeader:
	ldh a, [hLoadedROMBank]
	push af
	ld a, $0e
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	push bc
	push de
	push hl
	ld a, [wd0e3]
	push af
	ld a, [wd092]
	ld [wd0e3], a

	ld de, $64c7
	ld b, $66
	cp FOSSIL_KABUTOPS
	jr z, .specialID

	ld de, $67ad
	cp MON_GHOST
	jr z, .specialID

	ld de, $6624
	ld b, $77
	cp FOSSIL_AERODACTYL
	jr z, .specialID

	cp MEW
	jr z, .mew

	ld a, $3a
	call Predef
	ld a, [wd0e3]
	dec a
	ld bc, $001c
	ld hl, $4000
	call AddNTimes
	ld de, wd095
	ld bc, $001c
	call CopyBytes
	jr .done

.specialID
	ld hl, wd09f
	ld [hl], b
	inc hl
	ld [hl], e
	inc hl
	ld [hl], d
	jr .done

.mew
	ld hl, $4200
	ld de, wd095
	ld bc, $001c
	ld a, $01
	call CopyFarBytes

.done
	ld a, [wd092]
	ld [wd095], a
	pop af
	ld [wd0e3], a
	pop hl
	pop de
	pop bc
	pop af
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	ret

GetPartyMonName2:
	ld a, [wcf79]
	ld hl, wd257

GetPartyMonName:
	push hl
	push bc
	call SkipFixedLengthTextEntries
	ld de, wcd68
	push de
	ld bc, NAME_LENGTH
	call CopyBytes
	pop de
	pop bc
	pop hl
	ret
