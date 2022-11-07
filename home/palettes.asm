RestoreScreenTilesAndReloadTilePatterns::
	call ClearSprites
	ld a, $01
	ld [wUpdateSpritesEnabled], a
	call ReloadMapSpriteTilePatterns
	call Call_374a
	call LoadTextBoxTilePatterns
	call RunDefaultPaletteCommand
	jr Delay3

GBPalWhiteOutWithDelay3:
	call GBPalWhiteOut

Delay3:
	ld c, $03
	jp DelayFrames

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

RunDefaultPaletteCommand:
	ld b, $ff
RunPaletteCommand:
	ld a, [wcf15]
	and a
	ret z

	ld a, $45
	jp Predef

GetHealthBarColor::
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

ReloadMapSpriteTilePatterns:
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
	call LoadFontTilePatterns
	jp UpdateSprites
