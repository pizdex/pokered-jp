SoftReset::
	call StopAllSounds
	call GBPalWhiteOut
	ld c, 32
	call DelayFrames

Init::
;  Program init.

LCDC_DEFAULT EQU %11100011
; * LCD enabled
; * Window tile map at $9C00
; * Window display enabled
; * BG and window tile data at $8800
; * BG tile map at $9800
; * 8x8 OBJ size
; * OBJ display enabled
; * BG display enabled

	di

	xor a
	ldh [rIF], a
	ldh [rIE], a
	ldh [rSCX], a
	ldh [rSCY], a
	ldh [rSB], a
	ldh [rSC], a
	ldh [rWX], a
	ldh [rWY], a
	ldh [rTMA], a
	ldh [rTAC], a
	ldh [rBGP], a
	ldh [rOBP0], a
	ldh [rOBP1], a

	ld a, LCDCF_ON
	ldh [rLCDC], a
	call DisableLCD

	ld sp, wStackTop

; Clear RAM
	ld hl, _RAM
	ld bc, $2000
.clear
	ld [hl], 0
	inc hl
	dec bc
	ld a, b
	or c
	jr nz, .clear

	call ClearVRAM

	ld hl, _HRAM
	ld bc, $7f
	call ByteFill

	call ClearSprites

	ld a, BANK(WriteDMACodeToHRAM)
	ldh [$b8], a
	ld [rROMB0], a
	call WriteDMACodeToHRAM

	xor a
	ldh [$d7], a
	ldh [rSTAT], a
	ldh [$ae], a
	ldh [$af], a
	ldh [rIF], a
	ld a, IEF_SERIAL + IEF_TIMER + IEF_VBLANK
	ldh [rIE], a

	ld a, 144 ; move the window off-screen
	ldh [$b0], a
	ldh [rWY], a
	ld a, 7
	ldh [rWX], a

	ld a, $ff
	ldh [$aa], a

	ld h, HIGH(vBGMap0)
	call ClearBGMap
	ld h, HIGH(vBGMap1)
	call ClearBGMap

	ld a, LCDC_DEFAULT
	ldh [rLCDC], a
	ld a, 16
	ldh [$8a], a
	call StopAllSounds


	ei

	ld a, $40
	call Predef

	ld a, $1f
	ld [wc0ef], a
	ld [wc0f0], a
	ld a, $9c
	ld [$ffbd], a
	xor a
	ld [$ffbc], a
	dec a
	ld [wcfb2], a

	ld a, $32
	call Predef

	call DisableLCD
	call ClearVRAM
	call GBPalNormal
	call ClearSprites
	ld a, LCDC_DEFAULT
	ldh [rLCDC], a

	jp SetDefaultNamesBeforeTitlescreen

ClearVRAM::
	ld hl, _VRAM
	ld bc, $2000
	xor a
	jp ByteFill

StopAllSounds::
	ld a, $02
	ld [wc0ef], a
	ld [wc0f0], a
	xor a
	ld [wcfae], a
	ld [wc0ee], a
	ld [wcfb1], a
	dec a
	jp PlaySound
