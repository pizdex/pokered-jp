LoadFontTilePatterns:
	ldh a, [rLCDC]
	bit 7, a
	jr nz, jr_36de

	ld hl, $4b19
	ld de, $8800
	ld bc, $0400
	ld a, $04
	jp CopyBytesFarDouble

jr_36de:
	ld de, $4b19
	ld hl, $8800
	ld bc, $0480
	jp CopyVideoDataDouble

LoadTextBoxTilePatterns::
	ldh a, [rLCDC]
	bit 7, a
	jr nz, jr_36fe

	ld hl, $52f1
	ld de, $9600
	ld bc, $0200
	ld a, $04
	jp CopyBytesFar2

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
	jp CopyBytesFar2

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
	ld hl, wTilemap
	ld de, wcd7c
	ld bc, SCREEN_WIDTH * SCREEN_HEIGHT
	jp CopyBytes

Func_374a:
	call Func_3752
	ld a, $01
	ldh [hBGMapMode], a
	ret

Func_3752:
	xor a
	ldh [hBGMapMode], a
	ld hl, wcd7c
	ld de, wTilemap
	ld bc, SCREEN_WIDTH * SCREEN_HEIGHT
	jp CopyBytes

Func_3761:
	ld hl, wTilemap
	ld de, wTilemap + $168
	ld bc, SCREEN_WIDTH * SCREEN_HEIGHT
	jp CopyBytes

Func_376d:
	xor a
	ldh [hBGMapMode], a
	ld hl, wTilemap + $168
	ld de, wTilemap
	ld bc, SCREEN_WIDTH * SCREEN_HEIGHT
	call CopyBytes
	ld a, $01
	ldh [hBGMapMode], a
	ret
