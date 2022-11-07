GetRowColAddressBGMap::
; Store the address of a row and column of the VRAM background map in hl
; INPUT: h - row, l - column
;        b - high byte of background tile map address in VRAM
	xor a
	srl h
	rr a
	srl h
	rr a
	srl h
	rr a
	or l
	ld l, a
	ld a, b
	or h
	ld h, a
	ret

ClearBGMap::
; Clears a VRAM background map with blank space tiles
; INPUT: h - high byte of background tile map address in VRAM
	ld a, $7f
	jr .next
	ld a, l
.next
	ld de, $400
	ld l, e
.loop
	ld [hli], a
	dec e
	jr nz, .loop
	dec d
	jr nz, .loop
	ret

RedrawRowOrColumn:
; This function redraws a BG row of height 2 or a BG column of width 2.
; One of its main uses is redrawing the row or column that will be exposed upon
; scrolling the BG when the player takes a step. Redrawing only the exposed
; row or column is more efficient than redrawing the entire screen.
; However, this function is also called repeatedly to redraw the whole screen
; when necessary. It is also used in trade animation and elevator code.
	ldh a, [hffd0]
	and a
	ret z
	ld b, a
	xor a
	ldh [hffd0], a
	dec b
	jr nz, .redrawRow

; redrawColumn
	ld hl, wcbfc
	ldh a, [hffd1]
	ld e, a
	ldh a, [hffd2]
	ld d, a
	ld c, 18

.asm_07ae:
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	ld a, $1f
	add e
	ld e, a
	jr nc, .asm_07ba
	inc d

.asm_07ba:
	ld a, d
	and $03
	or $98
	ld d, a
	dec c
	jr nz, .asm_07ae
	xor a
	ldh [hffd0], a
	ret

.redrawRow:
	ld hl, wcbfc
	ldh a, [hffd1]
	ld e, a
	ldh a, [hffd2]
	ld d, a
	push de
	call Call_07d9
	pop de
	ld a, $20
	add e
	ld e, a

Call_07d9:
	ld c, 20 / 2
.asm_07db:
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	ld a, e
	inc a
	and $1f
	ld b, a
	ld a, e
	and $e0
	or b
	ld e, a
	dec c
	jr nz, .asm_07db
	ret

AutoBGMapTransfer:
; This function automatically transfers tile number data from the tile map at
; wTileMap to VRAM during V-blank. Note that it only transfers one third of the
; background per V-blank. It cycles through which third it draws.
; This transfer is turned off when walking around the map, but is turned
; on when talking to sprites, battling, using menus, etc. This is because
; the above function, RedrawRowOrColumn, is used when walking to
; improve efficiency.
	ldh a, [hffba]
	and a
	ret z

	ld hl, sp + 0
	ld a, h
	ldh [hffbf], a
	ld a, l
	ldh [hffc0], a
	ldh a, [hffbb]
	and a
	jr z, .asm_0815
	dec a
	jr z, .asm_0825

	ld hl, wc490
	ld sp, hl
	ld a, [hffbd]
	ld h, a
	ld a, [hffbc]
	ld l, a
	ld de, $0180
	add hl, de
	xor a
	jr .asm_0837

.asm_0815:
	ld hl, wc3a0
	ld sp, hl
	ld a, [hffbd]
	ld h, a
	ld a, [hffbc]
	ld l, a
	ld a, $01
	jr .asm_0837

.asm_0825:
	ld hl, wc418
	ld sp, hl
	ld a, [hffbd]
	ld h, a
	ld a, [hffbc]
	ld l, a
	ld de, $00c0
	add hl, de
	ld a, $02
.asm_0837:
	ldh [hffbb], a
	ld b, $06

TransferBgRows:
	pop de
	ld [hl], e
	inc l
	ld [hl], d
	inc l
	pop de
	ld [hl], e
	inc l
	ld [hl], d
	inc l
	pop de
	ld [hl], e
	inc l
	ld [hl], d
	inc l
	pop de
	ld [hl], e
	inc l
	ld [hl], d
	inc l
	pop de
	ld [hl], e
	inc l
	ld [hl], d
	inc l
	pop de
	ld [hl], e
	inc l
	ld [hl], d
	inc l
	pop de
	ld [hl], e
	inc l
	ld [hl], d
	inc l
	pop de
	ld [hl], e
	inc l
	ld [hl], d
	inc l
	pop de
	ld [hl], e
	inc l
	ld [hl], d
	inc l
	pop de
	ld [hl], e
	inc l
	ld [hl], d
	ld a, 13
	add l
	ld l, a
	jr nc, .asm_0873
	inc h
.asm_0873:
	dec b
	jr nz, TransferBgRows

	ldh a, [hffbf]
	ld h, a
	ldh a, [hffc0]
	ld l, a
	ld sp, hl
	ret

VBlankCopyBGMap:
; Copies [hVBlankCopyBGNumRows] rows from hVBlankCopyBGSource to hVBlankCopyBGDest.
; If hVBlankCopyBGSource is XX00, the transfer is disabled.
	ldh a, [hffc1]
	and a
	ret z

	ld hl, sp + 0
	ld a, h
	ldh [hffbf], a
	ld a, l
	ldh [hffc0], a
	ldh a, [hffc1]
	ld l, a
	ldh a, [hffc2]
	ld h, a
	ld sp, hl
	ldh a, [hffc3]
	ld l, a
	ldh a, [hffc4]
	ld h, a
	ldh a, [hffc5]
	ld b, a
	xor a
	ldh [hffc1], a
	jr TransferBgRows

VBlankCopyDouble:
; Copy [hVBlankCopyDoubleSize] 1bpp tiles
; from hVBlankCopyDoubleSource to hVBlankCopyDoubleDest.

; While we're here, convert to 2bpp.
; The process is straightforward:
; copy each byte twice.
	ldh a, [hffcb]
	and a
	ret z

	ld hl, sp + 0
	ld a, h
	ldh [hffbf], a
	ld a, l
	ldh [hffc0], a
	ldh a, [hffcc]
	ld l, a
	ldh a, [hffcd]
	ld h, a
	ld sp, hl
	ldh a, [hffce]
	ld l, a
	ldh a, [hffcf]
	ld h, a
	ldh a, [hffcb]
	ld b, a
	xor a
	ldh [hffcb], a

.asm_08be:
	pop de
	ld [hl], e
	inc l
	ld [hl], e
	inc l
	ld [hl], d
	inc l
	ld [hl], d
	inc l
	pop de
	ld [hl], e
	inc l
	ld [hl], e
	inc l
	ld [hl], d
	inc l
	ld [hl], d
	inc l
	pop de
	ld [hl], e
	inc l
	ld [hl], e
	inc l
	ld [hl], d
	inc l
	ld [hl], d
	inc l
	pop de
	ld [hl], e
	inc l
	ld [hl], e
	inc l
	ld [hl], d
	inc l
	ld [hl], d
	inc hl
	dec b
	jr nz, .asm_08be

	ld a, l
	ldh [hffce], a
	ld a, h
	ldh [hffcf], a

	ld hl, sp + 0
	ld a, l
	ldh [hffcc], a
	ld a, h
	ldh [hffcd], a

	ldh a, [hffbf]
	ld h, a
	ldh a, [hffc0]
	ld l, a
	ld sp, hl
	ret

VBlankCopy:
; Copy [hVBlankCopySize] 2bpp tiles (or 16 * [hVBlankCopySize] tile map entries)
; from hVBlankCopySource to hVBlankCopyDest.

; Source and destination addresses are updated,
; so transfer can continue in subsequent calls.
	ldh a, [hffc6]
	and a
	ret z

	ld hl, sp + 0
	ld a, h
	ldh [hffbf], a
	ld a, l
	ldh [hffc0], a

	ldh a, [hffc7]
	ld l, a
	ldh a, [hffc7 + 1]
	ld h, a
	ld sp, hl

	ldh a, [hffc9]
	ld l, a
	ldh a, [hffc9 + 1]
	ld h, a

	ldh a, [hffc6]
	ld b, a
	xor a ; transferred
	ldh [hffc6], a

.asm_091a:
	pop de
	ld [hl], e
	inc l
	ld [hl], d
	inc l
	pop de
	ld [hl], e
	inc l
	ld [hl], d
	inc l
	pop de
	ld [hl], e
	inc l
	ld [hl], d
	inc l
	pop de
	ld [hl], e
	inc l
	ld [hl], d
	inc l
	pop de
	ld [hl], e
	inc l
	ld [hl], d
	inc l
	pop de
	ld [hl], e
	inc l
	ld [hl], d
	inc l
	pop de
	ld [hl], e
	inc l
	ld [hl], d
	inc l
	pop de
	ld [hl], e
	inc l
	ld [hl], d
	inc hl
	dec b
	jr nz, .asm_091a

	ld a, l
	ldh [hffc9], a
	ld a, h
	ldh [hffca], a

	ld hl, sp + 0
	ld a, l
	ldh [hffc7], a
	ld a, h
	ldh [hffc8], a

	ldh a, [hffbf]
	ld h, a
	ldh a, [hffc0]
	ld l, a
	ld sp, hl
	ret

UpdateMovingBGTiles:
; Animate water and flower
; tiles in the overworld.
	ldh a, [hffd7]
	and a
	ret z ; no animations if indoors (or if a menu set this to 0)

	ldh a, [hffd8]
	inc a
	ldh [hffd8], a
	cp 20
	ret c
	cp 21
	jr z, .flower

; water
	ld hl, $9140
	ld c, $10

	ld a, [wMovingBGTilesCounter2]
	inc a
	and 7
	ld [wMovingBGTilesCounter2], a

	and 4
	jr nz, .left

.right
	ld a, [hl]
	rrca
	ld [hli], a
	dec c
	jr nz, .right

	jr .done

.left
	ld a, [hl]
	rlca
	ld [hli], a
	dec c
	jr nz, .left

.done
	ldh a, [hffd7]
	rrca
	ret nc
; if in a cave, no flower animations
	xor a
	ldh [hffd8], a
	ret

.flower
	xor a
	ldh [hffd8], a

	ld a, [wMovingBGTilesCounter2]
	and 1
	ld hl, FlowerTile1
	jr z, .copy
	ld hl, FlowerTile2
.copy:
	ld de, $9030
	ld c, $10
.loop
	ld a, [hli]
	ld [de], a
	inc de
	dec c
	jr nz, .loop
	ret

FlowerTile1: INCBIN "gfx/tilesets/flower/flower1.2bpp"
FlowerTile2: INCBIN "gfx/tilesets/flower/flower2.2bpp"
