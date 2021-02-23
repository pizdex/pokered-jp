CopyFarBytes2::
; Identical to FarCopyData, but uses hROMBankTemp
; as temp space instead of wcee4.
	ldh [$8b], a
	ldh a, [hLoadedROMBank]
	push af
	ldh a, [$8b]
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	call CopyBytes
	pop af
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	ret

CopyFarBytes3::
; Copy bc bytes from a:de to hl.
	ldh [$8b], a
	ldh a, [hLoadedROMBank]
	push af
	ldh a, [$8b]
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	push hl
	push de
	push de
	ld d, h
	ld e, l
	pop hl
	call CopyBytes
	pop de
	pop hl
	pop af
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	ret

CopyFarBytesDouble::
; Expand bc bytes of 1bpp image data
; from a:hl to 2bpp data at de.
	ldh [$8b], a
	ldh a, [hLoadedROMBank]
	push af
	ldh a, [$8b]
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
.asm_02cc
	ld a, [hli]
	ld [de], a
	inc de
	ld [de], a
	inc de
	dec bc
	ld a, c
	or b
	jr nz, .asm_02cc
	pop af
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	ret

CopyVideoData::
; Wait for the next VBlank, then copy c 2bpp
; tiles from b:de to hl, 8 tiles at a time.
; This takes c/8 frames.

	ldh a, [$ba]
	push af
	xor a
	ldh [$ba], a

	ldh a, [hLoadedROMBank]
	ldh [$8b], a

	ld a, b
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a

	ld a, e
	ldh [$c7], a
	ld a, d
	ldh [$c8], a
	ld a, l
	ldh [$c9], a
	ld a, h
	ldh [$ca], a

.asm_02f9
	ld a, c
	cp 8
	jr nc, .keepgoing

	ldh [$c6], a
	call DelayFrame
	ldh a, [$8b]
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	pop af
	ldh [$ba], a
	ret

.keepgoing
	ld a, 8
	ldh [$c6], a
	call DelayFrame
	ld a, c
	sub 8
	ld c, a
	jr .asm_02f9

CopyVideoDataDouble:
	ldh a, [$ba]
	push af
	xor a
	ldh [$ba], a
	ldh a, [hLoadedROMBank]
	ldh [$8b], a

	ld a, b
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a

	ld a, e
	ldh [$cc], a
	ld a, d
	ldh [$cd], a
	ld a, l
	ldh [$ce], a
	ld a, h
	ldh [$cf], a

.asm_0337
	ld a, c
	cp $08
	jr nc, .asm_034c

	ldh [$cb], a
	call DelayFrame
	ldh a, [$8b]
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	pop af
	ldh [$ba], a
	ret

.asm_034c
	ld a, $08
	ldh [$cb], a
	call DelayFrame
	ld a, c
	sub $08
	ld c, a
	jr .asm_0337

Function_0359::
.asm_0359
	call DelayFrame
	push bc
	call Call_000_3879
	pop bc
	ldh a, [$b4]
	cp $46
	jr z, .asm_0372
	ldh a, [$b5]
	and $09
	jr nz, .asm_0372
	dec c
	jr nz, .asm_0359
	and a
	ret

.asm_0372
	scf
	ret

ClearScreenArea::
; Clear tilemap area c×b at hl.
	ld a, $7f
	ld de, 20
.y
	push hl
	push bc
.x
	ld [hli], a
	dec c
	jr nz, .x
	pop bc
	pop hl
	add hl, de
	dec b
	jr nz, .y
	ret

CopyScreenTileBufferToVRAM::
; Copy wTileMap to the BG Map starting at b * $100.
; This is done in thirds of 6 rows, so it takes 3 frames.
	ld c, 6
	ld hl, $600 * 0
	ld de, wc3a0
	call .setup
	call DelayFrame

	ld hl, $600 * 1
	ld de, wc418
	call .setup
	call DelayFrame

	ld hl, $600 * 2
	ld de, wc490
	call .setup
	jp DelayFrame

.setup
	ld a, d
	ldh [$c2], a
	call GetRowColAddressBGMap
	ld a, l
	ldh [$c3], a
	ld a, h
	ldh [$c4], a
	ld a, c
	ldh [$c5], a
	ld a, e
	ldh [$c1], a
	ret

ClearScreen::
; Clear wTileMap, then wait
; for the bg map to update.
	ld bc, $168
	inc b
	ld hl, wc3a0
	ld a, $7f
.loop
	ld [hli], a
	dec c
	jr nz, .loop
	dec b
	jr nz, .loop
	jp Delay3
