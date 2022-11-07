GetMonName::
	push hl
	ldh a, [hLoadedROMBank]
	push af
	ld a, $0e
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	ld a, [wd0e3]
	dec a
	ld hl, $5068
	ld e, a
	ld d, $00
	add hl, de
	add hl, de
	add hl, de
	add hl, de
	add hl, de
	ld de, wcd68
	push de
	ld bc, $0005
	call CopyBytes
	ld hl, wcd68 + 5
	ld [hl], "@"
	pop de
	pop af
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	pop hl
	ret

GetItemName::
	push hl
	push bc
	ld a, [wd0e3]
	cp HM01
	jr nc, jr_1af8

	ld [wd092], a
	ld a, ITEM_NAME
	ld [wNameListType], a
	ld a, $01
	ld [wPredefBank], a
	call GetName
	jr jr_1afb

jr_1af8:
	call GetMachineName

jr_1afb:
	ld de, wcd68
	pop bc
	pop hl
	ret

GetMachineName:
	push hl
	push de
	push bc
	ld a, [wd0e3]
	push af
	cp $c9
	jr nc, jr_1b19

	add $05
	ld [wd0e3], a
	ld hl, $1b4f
	ld bc, $0006
	jr jr_1b1f

jr_1b19:
	ld hl, $1b4a
	ld bc, $0005

jr_1b1f:
	ld de, wcd68
	call CopyBytes

; now get the machine number and convert it to text
	ld a, [wd0e3]
	sub TM01 - 1
	ld b, "０"
.FirstDigit
	sub 10
	jr c, .SecondDigit
	inc b
	jr .FirstDigit

.SecondDigit
	add 10
	push af
	ld a, b
	ld [de], a
	inc de
	pop af
	ld b, "０"
	add b
	ld [de], a
	inc de
	ld a, "@"
	ld [de], a
	pop af
	ld [wd0e3], a
	pop bc
	pop de
	pop hl
	ret

TechnicalPrefix::
	db "わざマシン"

HiddenPrefix::
	db "ひでんマシン"

; sets carry if item is HM, clears carry if item is not HM
; Input: a = item ID
IsItemHM::
	cp HM01
	jr c, .notHM
	cp TM01
	ret
.notHM
	and a
	ret

; sets carry if move is an HM, clears carry if move is not an HM
; Input: a = move ID
IsMoveHM::
	ld hl, HMMoves
	ld de, 1
	jp IsInArray

HMMoves::
	rrca
	inc de
	add hl, sp
	ld b, [hl]
	sub h
	rst $38

GetMoveName:
	push hl
	ld a, $02
	ld [wNameListType], a
	ld a, [wd0e3]
	ld [wd092], a
	ld a, $04
	ld [wPredefBank], a
	call GetName
	ld de, wcd68
	pop hl
	ret
