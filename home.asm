INCLUDE "constants.asm"

SECTION "NULL", ROM0
NULL::

INCLUDE "home/header.asm"

SECTION "Home", ROM0

_Start:
	jp Init

Call_000_0153:
	ldh a, [hLoadedROMBank]
	push af
	ld a, $03
	ldh [hLoadedROMBank], a
	ld [$2000], a
	call $4000
	pop af
	ldh [hLoadedROMBank], a
	ld [$2000], a
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

Call_000_13f1:
	ldh a, [hLoadedROMBank]
	push af
	ld b, $01
	ld hl, $724b
	call Bankswitch
	ld hl, wcf0c
	bit 0, [hl]
	res 0, [hl]
	jr nz, jr_000_140b

	ld a, [wd2dd]
	call Call_000_2ccd

jr_000_140b:
	ld a, $1e
	ld [$ffd5], a
	ld hl, wd2eb
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld d, $00
	ldh a, [$8c]
	ld [wcf0e], a
	and a
	jp z, Jump_000_15de

	cp $d3
	jp z, Jump_000_156f

	cp $d0
	jp z, Jump_000_157a

	cp $d1
	jp z, Jump_000_1590

	cp $d2
	jp z, Jump_000_15c6

	ld a, [wd460]
	ld e, a
	ldh a, [$8c]
	cp e
	jr z, jr_000_1440

	jr nc, jr_000_145c

jr_000_1440:
	push hl
	push de
	push bc
	ld b, $04
	ld hl, $5ad7
	call Bankswitch
	pop bc
	pop de
	ld hl, wd463
	ldh a, [$8c]
	dec a
	add a
	add l
	ld l, a
	jr nc, jr_000_1459

	inc h

jr_000_1459:
	inc hl
	ld a, [hl]
	pop hl

jr_000_145c:
	dec a
	ld e, a
	sla e
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, [hl]
	cp $fe
	jp z, Jump_000_1500

	cp $ff
	jp z, Jump_000_1551

	cp $fc
	jp z, Jump_000_34aa

	cp $fd
	jp z, Jump_000_34b4

	cp $f9
	jp z, Jump_000_34c9

	cp $f5
	jr nz, jr_000_148c

	ld b, $1d
	ld hl, $4e36
	call Bankswitch
	jr jr_000_14a8

jr_000_148c:
	cp $f7
	jp z, Jump_000_34be

	cp $f6
	jr nz, jr_000_149f

	ld hl, $736b
	ld b, $01
	call Bankswitch
	jr jr_000_14a8

jr_000_149f:
	call Call_000_3c89
	ld a, [wcc3c]
	and a
	jr nz, jr_000_14b1

Jump_000_14a8:
jr_000_14a8:
	ld a, [wcc47]
	and a
	jr nz, jr_000_14b1

	call Call_000_38ae

Jump_000_14b1:
jr_000_14b1:
	call Call_000_0153
	ldh a, [$b4]
	bit 0, a
	jr nz, jr_000_14b1

Jump_000_14ba:
	ld a, [wd2dd]
	call Call_000_2ccd
	ld a, $90
	ldh [$b0], a
	call DelayFrame
	call LoadGBPal
	xor a
	ldh [$ba], a
	ld hl, $c219
	ld c, $0f
	ld de, $0010

jr_000_14d5:
	ld a, [hl]
	dec h
	ld [hl], a
	inc h
	add hl, de
	dec c
	jr nz, jr_000_14d5

	ld a, $05
	ldh [hLoadedROMBank], a
	ld [$2000], a
	call $7840
	ld hl, wcfab
	res 0, [hl]
	ld a, [wd6b1]
	bit 3, a
	call z, Call_000_23ae
	call Call_000_26bb
	pop af
	ldh [hLoadedROMBank], a
	ld [$2000], a
	jp UpdateSprites


Jump_000_1500:
	push hl
	ld hl, $1527
	call Call_000_3c79
	pop hl
	inc hl
	call Call_000_1539
	ld a, $02
	ld [wcf7b], a
	ldh a, [hLoadedROMBank]
	push af
	ld a, $01
	ldh [hLoadedROMBank], a
	ld [$2000], a
	call $6bbb
	pop af
	ldh [hLoadedROMBank], a
	ld [$2000], a
	jp Jump_000_14a8


	db $00, $d6, $b3, $ba, $bf, $e7, $4e, $b5, $bb, $26, $bc, $d3, $c9, $33, $bd, $b6
	db $e6, $57

Call_000_1539:
	ld a, $01
	ld [wcfb2], a
	ld a, h
	ld [wd0ed], a
	ld a, l
	ld [wd0ee], a
	ld de, wcf62

jr_000_1549:
	ld a, [hli]
	ld [de], a
	inc de
	cp $ff
	jr nz, jr_000_1549

	ret


Jump_000_1551:
	xor a
	ldh [$8b], a
	ldh [$8c], a
	ldh [$8d], a
	inc hl
	ldh a, [hLoadedROMBank]
	push af
	ld a, $01
	ldh [hLoadedROMBank], a
	ld [$2000], a
	call $7121
	pop af
	ldh [hLoadedROMBank], a
	ld [$2000], a
	jp Jump_000_14a8


Jump_000_156f:
	ld hl, $7a99
	ld b, $07
	call Bankswitch
	jp Jump_000_14a8


Jump_000_157a:
	ld hl, $1583
	call Call_000_3c79
	jp Jump_000_14a8


	db $01, $68, $cd, $00, $ca, $7f, $c1, $b6, $d7, $c2, $b7, $c0, $57

Jump_000_1590:
	ld hl, $1599
	call Call_000_3c79
	jp Jump_000_14b1


	db $00, $52, $c9, $7f, $c3, $d3, $c4, $c6, $ca, $4f, $c0, $c0, $b6, $b4, $d9, $54
	db $26, $7f, $d3, $b3, $b2, $c5, $b2, $e7, $51, $52, $ca, $4f, $d2, $c9, $cf, $b4
	db $26, $7f, $cf, $df, $b8, $d7, $c6, $7f, $c5, $df, $c0, $e7, $58

Jump_000_15c6:
	ld hl, $15cf
	call Call_000_3c79
	jp Jump_000_14a8


	nop
	adc h
	ld b, d
	and a
	db $e3
	ret


	ld a, a
	cp d
	or e
	or [hl]
	ld h, $b7
	jp c, $57c0

Jump_000_15de:
	ld a, $04
	ldh [hLoadedROMBank], a
	ld [$2000], a
	ld a, [wd67f]
	ld [wd0df], a
	ld a, $8f
	call PlaySound
	ld b, $01
	ld hl, $72c0
	call Bankswitch
	ld b, $03
	ld hl, $4b75
	call Bankswitch
	call UpdateSprites

jr_000_1603:
	call Call_000_3b08
	ld b, a
	bit 6, a
	jr z, jr_000_1629

	ld a, [wcc26]
	and a
	jr nz, jr_000_1603

	ld a, [wcc2a]
	and a
	jr nz, jr_000_1603

	ld a, [wd6ca]
	bit 5, a
	ld a, $06
	jr nz, jr_000_1621

	dec a

jr_000_1621:
	ld [wcc26], a
	call Call_000_3c29
	jr jr_000_1603

jr_000_1629:
	bit 7, a
	jr z, jr_000_1646

	ld a, [wd6ca]
	bit 5, a
	ld a, [wcc26]
	ld c, $07
	jr nz, jr_000_163a

	dec c

jr_000_163a:
	cp c
	jr nz, jr_000_1603

	xor a
	ld [wcc26], a
	call Call_000_3c29
	jr jr_000_1603

jr_000_1646:
	call Call_000_3c1c
	ld a, [wcc26]
	ld [wcc2d], a
	ld a, b
	and $0a
	jp nz, Jump_000_1681

	call Call_000_373e
	ld a, [wd6ca]
	bit 5, a
	ld a, [wcc26]
	jr nz, jr_000_1663

	inc a

jr_000_1663:
	cp $00
	jp z, $5af8

	cp $01
	jp z, $5b0c

	cp $02
	jp z, $5de6

	cp $03
	jp z, $5f60

	cp $04
	jp z, $60e6

	cp $05
	jp z, $60f9

Jump_000_1681:
jr_000_1681:
	call Call_000_0153
	ldh a, [$b3]
	bit 0, a
	jr nz, jr_000_1681

	call Call_000_36ea
	jp Jump_000_14ba


	ld c, $00

jr_000_1692:
	ld a, [hli]
	ld e, a
	ld d, $08

jr_000_1696:
	srl e
	ld a, $00
	adc c
	ld c, a
	dec d
	jr nz, jr_000_1696

	dec b
	jr nz, jr_000_1692

	ld a, c
	ld [wd0e3], a
	ret


	ld b, $01
	ld hl, $6abc
	jp Jump_000_3620


	ld de, wd2cd
	ld hl, $ffa1
	ld c, $03
	ld a, $0b
	call Predef
	ld a, $13
	ld [wd0ea], a
	call Call_000_3130
	ld a, $b2
	call Call_000_3788
	jp WaitForSoundToFinish


	ldh a, [hLoadedROMBank]
	push af
	ld a, $03
	ldh [hLoadedROMBank], a
	ld [$2000], a
	call $4652
	pop af
	ldh [hLoadedROMBank], a
	ld [$2000], a
	ret


Call_000_16e0:
	push bc
	ldh a, [hLoadedROMBank]
	push af
	ld a, $03
	ldh [hLoadedROMBank], a
	ld [$2000], a
	call $45e2
	pop bc
	ld a, b
	ldh [hLoadedROMBank], a
	ld [$2000], a
	pop bc
	ret


	xor a
	ldh [$ba], a
	ld a, $01
	ld [$ffb7], a
	ld a, [wd037]
	and a
	jr nz, jr_000_1709

	ld a, $01
	jr jr_000_170b

jr_000_1709:
	ld a, $0f

jr_000_170b:
	call Call_000_3606
	ld hl, wd6af
	set 6, [hl]
	xor a
	ld [wcc35], a
	ld [wd0ef], a
	ld a, [wcf72]
	ld l, a
	ld a, [wcf73]
	ld h, a
	ld a, [hl]
	ld [wd0ef], a
	ld a, $0d
	ld [wd0ea], a
	call Call_000_3130
	call UpdateSprites
	ld hl, wc3cc
	ld de, $090e
	ld a, [wcf7b]
	and a
	jr nz, jr_000_1740

	call UpdateSprites

jr_000_1740:
	ld a, $01
	ld [wcc37], a
	ld a, [wd0ef]
	cp $02
	jr c, jr_000_174e

	ld a, $02

jr_000_174e:
	ld [wcc28], a
	ld a, $04
	ld [wcc24], a
	ld a, $05
	ld [wcc25], a
	ld a, $07
	ld [wcc29], a
	ld c, $0a
	call DelayFrames

Jump_000_1765:
	xor a
	ldh [$ba], a
	call Call_000_1968
	ld a, $01
	ldh [$ba], a
	call Call_000_3e07
	ld a, [wd037]
	and a
	jr z, jr_000_1793

	ld a, $ed
	ld [wc3f5], a
	ld c, $50
	call DelayFrames
	xor a
	ld [wcc26], a
	ld hl, wc3f5
	ld a, l
	ld [wcc30], a
	ld a, h
	ld [wcc31], a
	jr jr_000_17a3

jr_000_1793:
	call LoadGBPal
	call Call_000_3b08
	push af
	call Call_000_3bc6
	pop af
	bit 0, a
	jp z, Jump_000_1840

jr_000_17a3:
	ld a, [wcc26]
	call Call_000_3c1c
	ld a, $01
	ld [wd0f3], a
	ld [wd0f2], a
	xor a
	ld [wcc37], a
	ld a, [wcc26]
	ld c, a
	ld a, [wcc36]
	add c
	ld c, a
	ld a, [wd0ef]
	and a
	jp z, Jump_000_194c

	dec a
	cp c
	jp c, Jump_000_194c

	ld a, c
	ld [wcf79], a
	ld a, [wcf7b]
	cp $03
	jr nz, jr_000_17d7

	sla c

jr_000_17d7:
	ld a, [wcf72]
	ld l, a
	ld a, [wcf73]
	ld h, a
	inc hl
	ld b, $00
	add hl, bc
	ld a, [hl]
	ld [wcf78], a
	ld a, [wcf7b]
	and a
	jr z, jr_000_180e

	push hl
	call Call_000_3827
	pop hl
	ld a, [wcf7b]
	cp $03
	jr nz, jr_000_17fe

	inc hl
	ld a, [hl]
	ld [wcf7e], a

jr_000_17fe:
	ld a, [wcf78]
	ld [wd092], a
	ld a, $01
	ld [wd094], a
	call Call_000_37b3
	jr jr_000_1823

jr_000_180e:
	ld hl, wd123
	ld a, [wcf72]
	cp l
	ld hl, wd257
	jr z, jr_000_181d

	ld hl, wde64

jr_000_181d:
	ld a, [wcf79]
	call Call_000_2fb1

jr_000_1823:
	ld de, wcd68
	call Call_000_386e
	ld a, $01
	ld [wd0f3], a
	ld a, [wcc26]
	ld [wd0f2], a
	xor a
	ld [$ffb7], a
	ld hl, wd6af
	res 6, [hl]
	jp Jump_000_3617


Jump_000_1840:
	bit 1, a
	jp nz, Jump_000_194c

	bit 2, a
	jp nz, $6adf

	ld b, a
	bit 7, b
	ld hl, wcc36
	jr z, jr_000_1861

	ld a, [hl]
	add $03
	ld b, a
	ld a, [wd0ef]
	cp b
	jp c, Jump_000_1765

	inc [hl]
	jp Jump_000_1765


jr_000_1861:
	ld a, [hl]
	and a
	jp z, Jump_000_1765

	dec [hl]
	jp Jump_000_1765


	ld hl, wc463
	ld b, $01
	ld c, $03
	ld a, [wcf7b]
	cp $02
	jr nz, jr_000_187f

	ld hl, wc45b
	ld b, $01
	ld c, $0b

jr_000_187f:
	call TextBoxBorder
	ld hl, wc478
	ld a, [wcf7b]
	cp $02
	jr nz, jr_000_1894

	ld a, $f0
	ld [wc47a], a
	ld hl, wc470

jr_000_1894:
	ld de, $1941
	call PlaceString
	xor a
	ld [wcf7d], a
	jp Jump_000_18ba


Jump_000_18a1:
jr_000_18a1:
	call Call_000_3879
	ldh a, [$b3]
	bit 0, a
	jp nz, Jump_000_193c

	bit 1, a
	jp nz, Jump_000_193e

	bit 6, a
	jr nz, jr_000_18ba

	bit 7, a
	jr nz, jr_000_18cc

	jr jr_000_18a1

Jump_000_18ba:
jr_000_18ba:
	ld a, [wcf7e]
	inc a
	ld b, a
	ld hl, wcf7d
	inc [hl]
	ld a, [hl]
	cp b
	jr nz, jr_000_18d6

	ld a, $01
	ld [hl], a
	jr jr_000_18d6

jr_000_18cc:
	ld hl, wcf7d
	dec [hl]
	jr nz, jr_000_18d6

	ld a, [wcf7e]
	ld [hl], a

jr_000_18d6:
	ld hl, wc479
	ld a, [wcf7b]
	cp $02
	jr nz, jr_000_1930

	ld c, $03
	ld a, [wcf7d]
	ld b, a
	ld hl, $ff9f
	xor a
	ld [hli], a
	ld [hli], a
	ld [hl], a

jr_000_18ed:
	ld de, $ffa1
	ld hl, $ff8d
	push bc
	ld a, $0b
	call Predef
	pop bc
	dec b
	jr nz, jr_000_18ed

	ldh a, [$8e]
	and a
	jr z, jr_000_191c

	xor a
	ldh [$a2], a
	ldh [$a3], a
	ld a, $02
	ldh [$a4], a
	ld a, $0d
	call Predef
	ldh a, [$a2]
	ldh [$9f], a
	ldh a, [$a3]
	ldh [$a0], a
	ldh a, [$a4]
	ldh [$a1], a

jr_000_191c:
	ld hl, wc474
	ld de, $1945
	call PlaceString
	ld de, $ff9f
	ld c, $83
	call Call_000_2fc4
	ld hl, wc471

jr_000_1930:
	ld de, wcf7d
	ld bc, $8102
	call Call_000_3c8f
	jp Jump_000_18a1


Jump_000_193c:
	xor a
	ret


Jump_000_193e:
	ld a, $ff
	ret


	db $f1, $f6, $f7, $50, $7f, $7f, $7f, $7f, $7f, $7f, $50

Jump_000_194c:
	ld a, [wcc26]
	ld [wd0f2], a
	ld a, $02
	ld [wd0f3], a
	ld [wcc37], a
	xor a
	ld [$ffb7], a
	ld hl, wd6af
	res 6, [hl]
	call Call_000_3617
	scf
	ret


Call_000_1968:
	ld hl, wc3e1
	ld b, $09
	ld c, $0e
	call ClearScreenArea
	ld a, [wcf72]
	ld e, a
	ld a, [wcf73]
	ld d, a
	inc de
	ld a, [wcc36]
	ld c, a
	ld a, [wcf7b]
	cp $03
	ld a, c
	jr nz, jr_000_198b

	sla a
	sla c

jr_000_198b:
	add e
	ld e, a
	jr nc, jr_000_1990

	inc d

jr_000_1990:
	ld hl, wc3f6
	ld b, $04

Jump_000_1995:
	ld a, b
	ld [wcf79], a
	ld a, [de]
	ld [wd0e3], a
	cp $ff
	jp z, Jump_000_1aa1

	push bc
	push de
	push hl
	push hl
	push de
	ld a, [wcf7b]
	and a
	jr z, jr_000_19b6

	cp $01
	jr z, jr_000_19d8

	call Call_000_1add
	jr jr_000_19db

jr_000_19b6:
	push hl
	ld hl, wd123
	ld a, [wcf72]
	cp l
	ld hl, wd257
	jr z, jr_000_19c6

	ld hl, wde64

jr_000_19c6:
	ld a, [wcf79]
	ld b, a
	ld a, $04
	sub b
	ld b, a
	ld a, [wcc36]
	add b
	call Call_000_2fb1
	pop hl
	jr jr_000_19db

jr_000_19d8:
	call Call_000_1b6d

jr_000_19db:
	call PlaceString
	pop de
	pop hl
	ld a, [wcf7a]
	and a
	jr z, jr_000_19fd

	push hl
	ld a, [de]
	ld de, $421c
	ld [wcf78], a
	call Call_000_3827
	pop hl
	ld bc, $0006
	add hl, bc
	ld c, $83
	call Call_000_2fc4
	ld [hl], $f0

jr_000_19fd:
	ld a, [wcf7b]
	and a
	jr nz, jr_000_1a41

	ld a, [wd0e3]
	push af
	push hl
	ld hl, wd123
	ld a, [wcf72]
	cp l
	ld a, $00
	jr z, jr_000_1a15

	ld a, $02

jr_000_1a15:
	ld [wcc49], a
	ld hl, wcf79
	ld a, [hl]
	ld b, a
	ld a, $04
	sub b
	ld b, a
	ld a, [wcc36]
	add b
	ld [hl], a
	call Call_000_2d68
	ld a, [wcc49]
	and a
	jr z, jr_000_1a35

	ld a, [wcf82]
	ld [wcfa0], a

jr_000_1a35:
	pop hl
	ld bc, $0006
	add hl, bc
	call Call_000_2f02
	pop af
	ld [wd0e3], a

jr_000_1a41:
	pop hl
	pop de
	inc de
	ld a, [wcf7b]
	cp $03
	jr nz, jr_000_1a8f

	ld a, [wd0e3]
	ld [wcf78], a
	call Call_000_3121
	ld a, [wd0e9]
	and a
	jr nz, jr_000_1a7b

	push hl
	ld bc, $0009
	add hl, bc
	ld a, $f1
	ld [hli], a
	ld a, [wd0e3]
	push af
	ld a, [de]
	ld [wcf7e], a
	push de
	ld de, wd0e3
	ld [de], a
	ld bc, $0102
	call Call_000_3c8f
	pop de
	pop af
	ld [wd0e3], a
	pop hl

jr_000_1a7b:
	inc de
	pop bc
	inc c
	push bc
	inc c
	ld a, [wcc35]
	and a
	jr z, jr_000_1a8f

	sla a
	cp c
	jr nz, jr_000_1a8f

	dec hl
	ld a, $ec
	ld [hli], a

jr_000_1a8f:
	ld bc, $0028
	add hl, bc
	pop bc
	inc c
	dec b
	jp nz, Jump_000_1995

	ld bc, $fff8
	add hl, bc
	ld a, $ee
	ld [hl], a
	ret


Jump_000_1aa1:
	ld de, $1aa7
	jp PlaceString


	db $d4, $d2, $d9, $50

Call_000_1aab:
	push hl
	ldh a, [hLoadedROMBank]
	push af
	ld a, $0e
	ldh [hLoadedROMBank], a
	ld [$2000], a
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
	ld hl, wcd6d
	ld [hl], $50
	pop de
	pop af
	ldh [hLoadedROMBank], a
	ld [$2000], a
	pop hl
	ret


Call_000_1add:
	push hl
	push bc
	ld a, [wd0e3]
	cp $c4
	jr nc, jr_000_1af8

	ld [wd092], a
	ld a, $04
	ld [wd093], a
	ld a, $01
	ld [wd094], a
	call Call_000_37b3
	jr jr_000_1afb

jr_000_1af8:
	call Call_000_1b01

jr_000_1afb:
	ld de, wcd68
	pop bc
	pop hl
	ret


Call_000_1b01:
Jump_000_1b01:
	push hl
	push de
	push bc
	ld a, [wd0e3]
	push af
	cp $c9
	jr nc, jr_000_1b19

	add $05
	ld [wd0e3], a
	ld hl, $1b4f
	ld bc, $0006
	jr jr_000_1b1f

jr_000_1b19:
	ld hl, $1b4a
	ld bc, $0005

jr_000_1b1f:
	ld de, wcd68
	call CopyBytes
	ld a, [wd0e3]
	sub $c8
	ld b, $f6

jr_000_1b2c:
	sub $0a
	jr c, jr_000_1b33

	inc b
	jr jr_000_1b2c

jr_000_1b33:
	add $0a
	push af
	ld a, b
	ld [de], a
	inc de
	pop af
	ld b, $f6
	add b
	ld [de], a
	inc de
	ld a, $50
	ld [de], a
	pop af
	ld [wd0e3], a
	pop bc
	pop de
	pop hl
	ret


	call c, $9d2b
	adc e
	xor e
	swap e
	sbc $9d
	adc e
	xor e

	cp $c4
	jr c, jr_000_1b5c

	cp $c9
	ret


jr_000_1b5c:
	and a
	ret


	ld hl, $1b67
	ld de, $0001
	jp Jump_000_3ddb


	rrca
	inc de
	add hl, sp
	ld b, [hl]
	sub h
	rst $38

Call_000_1b6d:
	push hl
	ld a, $02
	ld [wd093], a
	ld a, [wd0e3]
	ld [wd092], a
	ld a, $04
	ld [wd094], a
	call Call_000_37b3
	ld de, wcd68
	pop hl
	ret


	ldh a, [hLoadedROMBank]
	push af
	ld a, [wd2dd]
	call Call_000_2ccd
	call DisableLCD
	call Call_000_36ea
	call Call_000_26bb
	call Call_000_23ff
	call EnableLCD
	pop af
	ldh [hLoadedROMBank], a
	ld [$2000], a
	ret


	ldh a, [hLoadedROMBank]
	push af
	ld a, [wd2dd]
	call Call_000_2ccd
	call DisableLCD
	call Call_000_23ff
	call EnableLCD
	pop af
	ldh [hLoadedROMBank], a
	ld [$2000], a
	ret


	ld hl, wd6ad
	res 4, [hl]
	ld b, $1c
	ld hl, $54fe
	jp Jump_000_3620


	db $a1, $42, $57, $43

	ld d, h
	ld b, l
	ld c, [hl]
	ld b, a
	inc l
	ld b, b
	sbc b
	ld c, c
	nop
	ld b, b
	and a
	ld c, e
	ld l, [hl]
	ld b, b
	ld e, $49
	and h
	ld c, c
	and h
	ld c, c

	db $31, $41, $20, $40

	ld b, $42
	or b
	ld b, e
	and c
	ld b, l
	inc e
	ld b, b
	ld b, b
	ld b, b
	ld c, c
	ld b, c
	and [hl]
	ld b, [hl]
	ldh a, [rSCY]
	jp c, $8944

	ld b, [hl]
	inc l
	ld c, b
	cp c
	ld c, c
	ld c, b
	ld c, c
	or $4a
	ld b, b
	ld c, e
	ld d, h
	ld c, h
	sbc b
	ld c, [hl]
	pop af
	ld b, b
	rra
	ld d, b
	nop
	ld b, b
	ccf
	ld b, e
	add d
	ld b, [hl]
	sbc e
	ld b, a

	db $72, $41, $a4, $40, $71, $6e, $40, $45, $ce, $45, $fe, $55

	ld [hl], b
	ld d, a
	sbc $57
	call nc, $2f40
	ld l, d
	ld a, b
	ld l, a
	sbc d
	ld l, d
	inc h
	ld [hl], b

	db $ed, $70, $28, $59

	db $eb
	ld b, b
	dec h
	ld b, l
	ld [hl], a
	ld b, [hl]
	or b
	ld e, b
	scf
	ld c, c
	ld l, l
	ld e, c
	inc d
	ld c, h
	ret nz

	ld [hl], b
	and a
	ld h, a
	xor l
	ld [hl], l
	jr jr_000_1ca3

	ld e, l
	ld e, e
	inc b
	ld c, l
	ld [$e14e], sp
	ld e, e
	adc d
	ld d, d
	ld a, e
	ld h, h
	jr jr_000_1cb1

	jr jr_000_1cc4

	adc l
	ld [hl], c
	ld c, c
	ld [hl], d
	rst $10
	ld l, h
	db $d3
	ld [hl], c
	db $d3
	ld [hl], c
	sbc d
	ld l, l
	ld a, [hli]
	ld [hl], d
	adc l
	ld [hl], d
	ld h, c
	ld l, [hl]
	inc hl
	ld l, a
	ld a, [hld]
	ld h, [hl]
	jr nz, jr_000_1cba

	adc b
	ld l, a
	jp nc, $8066

	ld [hl], d
	adc b
	ld h, a
	rrca
	ld l, c
	ld h, d
	ld [hl], l
	inc e
	ld d, l
	ld b, e
	ld l, e
	ret z

	ld d, l
	and l
	ld d, [hl]
	ld e, h
	ld h, h
	dec de
	ld h, l
	cp h
	ld e, h
	ld [hl], b
	ld e, [hl]
	inc c
	ld c, a
	adc [hl]
	ld h, d
	ld c, $63
	ldh a, [$64]
	daa
	ld h, a
	sub e
	ld l, c
	inc de
	ld l, l
	ld a, [bc]
	ld [hl], c
	inc a
	ld a, b
	inc a
	ld a, b
	inc a
	ld a, b

jr_000_1ca3:
	ld hl, sp+$76
	inc a
	ld a, b
	inc a
	ld a, b
	inc a
	ld a, b
	inc a
	ld a, b
	inc a
	ld a, b
	inc a
	ld a, b

jr_000_1cb1:
	inc a
	ld a, b
	inc a
	ld a, b
	inc a
	ld a, b
	cp e
	ld a, e
	sbc c

jr_000_1cba:
	ld [hl], h
	db $76
	ld l, a
	cp l
	ld [hl], h
	ld d, a
	ld d, [hl]
	pop hl
	ld l, a
	ld a, [bc]

jr_000_1cc4:
	ld b, e
	jp hl


	ld b, l
	add hl, de
	ld b, a
	jr c, jr_000_1d16

	call z, wd54b
	ld c, h
	scf
	ld c, l
	jr c, jr_000_1d22

	nop
	ld h, a
	sub c
	ld c, a
	ccf
	ld d, b
	pop de
	ld d, [hl]
	db $f4
	ld e, [hl]
	rla
	ld h, b
	bit 4, b
	or [hl]
	ld h, d
	sub l
	ld h, e
	ld b, e
	ld d, e
	jr nz, jr_000_1d2d

	add l
	ld b, l
	and $48
	cp a
	ld c, d
	ld [hl], d
	ld c, h
	ld d, $4f
	ccf
	ld d, d
	and l
	ld e, [hl]
	db $eb
	ld d, e
	ld l, l
	ld h, c
	and h
	ld h, a
	add d
	ld c, a
	ld [hl], h
	ld d, b
	add hl, sp
	ld d, c
	jr jr_000_1d59

	ld d, c
	ld e, b
	ld [hld], a
	ld e, a
	inc c
	ld [hl], d
	ld c, b
	ld [hl], e
	add h
	ld [hl], h
	sub b
	db $76
	add h
	ld l, [hl]
	call z, $9170

jr_000_1d16:
	ld b, [hl]
	inc d
	ld h, b
	rra
	ld l, b
	jr z, jr_000_1d86

	cp [hl]
	ld l, c
	or e
	ld l, e
	ld c, c

jr_000_1d22:
	ld l, l
	ld hl, $216e
	ld l, [hl]
	ld l, d
	ld [hl], b
	and [hl]
	ld l, [hl]
	add a
	ld e, h

jr_000_1d2d:
	ld h, l
	ld e, a
	ld d, b
	ld h, h
	ld c, h
	ld l, b
	dec l
	ld l, l
	jp wd36d


	ld l, [hl]
	ld c, l
	ld l, c
	ld [bc], a
	ld l, e
	ld [hl], d
	ld l, e
	ld l, c
	ld l, h
	ld hl, $f66e
	ld [hl], d
	cp a
	ld [hl], l
	ld a, [$376e]
	ld [hl], b
	cp l
	ld c, l
	dec c
	ld [hl], h
	ld a, [$8363]
	ld l, c
	ld hl, $e170
	ld [hl], h
	adc c
	ld c, a

jr_000_1d59:
	cp [hl]
	ld d, d
	db $f4
	ld d, l
	ld a, [hld]
	ld e, d
	ld [de], a
	ld e, l
	ld c, [hl]
	ld h, c
	ld c, [hl]
	ld h, c
	ld c, [hl]
	ld h, c
	ld c, [hl]
	ld h, c
	ret nc

	ld l, a
	or l
	ld [hl], e
	or e
	ld [hl], c
	sub d
	ld [hl], h
	call nz, $c378
	ld l, b
	ld c, h
	ld [hl], a
	ld c, h
	ld [hl], c
	jr z, jr_000_1def

	sub h
	db $76
	or l
	ld h, d
	dec sp
	ld h, h
	dec e
	ld a, h
	add sp, $66
	ld d, [hl]

jr_000_1d86:
	ld l, b
	inc h
	ld a, [hl]
	ret z

	ld l, b
	add c
	ld l, c
	ld [hli], a
	ld l, d
	ld de, $f66b
	ld l, e
	db $ec
	ld c, c
	ld c, c
	ld h, d
	jp hl


	ld c, d
	ld l, c
	ld l, h
	ld a, [c]
	ld l, h
	ret z

	ld [hl], e
	ld b, e
	db $76
	ld l, l
	db $76
	ld a, [bc]
	ld h, d
	ret nc

	ld l, a
	ret nc

	ld l, a
	inc b
	ld a, l
	ld l, a
	ld a, l
	ret nc

	ld l, a
	ret nc

	ld l, a
	ret nc

	ld l, a
	ret nc

	ld l, a
	ld l, h
	ld [hl], l
	cp h
	ld [hl], a
	db $e4
	ld a, c

Call_000_1dbb:
	ld b, $1c
	ld hl, $4dea
	jp Jump_000_3620


Jump_000_1dc3:
	ld a, $ff
	ld [wcd66], a
	call Call_000_2c52
	ld b, $03
	ld hl, $497b
	call Bankswitch
	ld hl, wd6ab
	bit 0, [hl]
	jr z, jr_000_1ddf

	ld a, $03
	ld [wd101], a

jr_000_1ddf:
	ld hl, wd6ad
	bit 5, [hl]
	res 5, [hl]
	call z, Call_000_2cf8
	call nz, Call_000_2336
	ld hl, wd6b1

jr_000_1def:
	ld a, [hl]
	and $18
	jr z, jr_000_1e01

	res 3, [hl]
	ld b, $1c
	ld hl, $4a61
	call Bankswitch
	call UpdateSprites

jr_000_1e01:
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

Jump_000_1e1c:
	call DelayFrame

Jump_000_1e1f:
	call DelayFrame
	call LoadGBPal
	ld a, [wd6b5]
	bit 6, a
	call nz, Call_000_1dbb
	ld a, [wcfac]
	and a
	jp nz, Jump_000_1fcc

	call Call_000_295e
	ld b, $07
	ld hl, $7a34
	call Bankswitch
	ld a, [wd982]
	and a
	jp nz, Jump_000_2153

	ld hl, wd6ac
	bit 3, [hl]
	res 3, [hl]
	jp nz, Jump_000_2153

	ld a, [wd6b1]
	and $18
	jp nz, Jump_000_237c

	ld a, [wd036]
	and a
	jp nz, Jump_000_2043

	ld a, [wd6af]
	bit 7, a
	jr z, jr_000_1e6a

	ldh a, [$b4]
	jr jr_000_1e6c

jr_000_1e6a:
	ldh a, [$b3]

jr_000_1e6c:
	bit 3, a
	jr z, jr_000_1e76

	xor a
	ldh [$8c], a
	jp Jump_000_1e9a


jr_000_1e76:
	bit 0, a
	jp z, Jump_000_1f02

	ld a, [wd6af]
	bit 2, a
	jp nz, Jump_000_1ee4

	call Call_000_3145
	jr nz, jr_000_1eda

	call Call_000_3ee5
	ldh a, [$eb]
	and a
	jp z, Jump_000_1e1c

	call Call_000_253a
	ldh a, [$8c]
	and a
	jp z, Jump_000_1e1c

Jump_000_1e9a:
	ld a, $35
	call Predef
	call UpdateSprites
	ld a, [wcd5b]
	bit 2, a
	jr nz, jr_000_1eda

	bit 0, a
	jr nz, jr_000_1eda

	call Call_000_13f1
	ld a, [wcc47]
	and a
	jr z, jr_000_1eda

	dec a
	ld a, $00
	ld [wcc47], a
	jr z, jr_000_1ed7

	ld a, $52
	call Predef
	ld a, [wd2dd]
	ld [wd699], a
	call $6260
	ld a, [wd2dd]
	call Call_000_2ccd
	ld hl, wd2e6
	set 7, [hl]

jr_000_1ed7:
	jp Jump_000_1dc3


jr_000_1eda:
	ld a, [wd036]
	and a
	jp nz, Jump_000_2043

	jp Jump_000_1e1c


Jump_000_1ee4:
jr_000_1ee4:
	ld hl, wcd5b
	res 2, [hl]
	call UpdateSprites
	ld a, $01
	ld [wcc4b], a
	ld a, [wd4a7]
	and a
	jp z, Jump_000_1e1c

	ld [wd4a8], a
	xor a
	ld [wd4a7], a
	jp Jump_000_1e1c


Jump_000_1f02:
	ldh a, [$b4]
	bit 7, a
	jr z, jr_000_1f11

	ld a, $01
	ld [$c103], a
	ld a, $04
	jr jr_000_1f34

jr_000_1f11:
	bit 6, a
	jr z, jr_000_1f1e

	ld a, $ff
	ld [$c103], a
	ld a, $08
	jr jr_000_1f34

jr_000_1f1e:
	bit 5, a
	jr z, jr_000_1f2b

	ld a, $ff
	ld [$c105], a
	ld a, $02
	jr jr_000_1f34

jr_000_1f2b:
	bit 4, a
	jr z, jr_000_1ee4

	ld a, $01
	ld [$c105], a

jr_000_1f34:
	ld [wd4a9], a
	ld a, [wd6af]
	bit 7, a
	jr nz, jr_000_1f95

	ld a, [wcc4b]
	and a
	jr z, jr_000_1f95

	ld a, [wd4a9]
	ld b, a
	ld a, [wd4a8]
	cp b
	jr z, jr_000_1f95

	swap a
	or b
	cp $48
	jr nz, jr_000_1f5c

	ld a, $02
	ld [wd4a7], a
	jr jr_000_1f7b

jr_000_1f5c:
	cp $84
	jr nz, jr_000_1f67

	ld a, $01
	ld [wd4a7], a
	jr jr_000_1f7b

jr_000_1f67:
	cp $12
	jr nz, jr_000_1f72

	ld a, $04
	ld [wd4a7], a
	jr jr_000_1f7b

jr_000_1f72:
	cp $21
	jr nz, jr_000_1f7b

	ld a, $08
	ld [wd4a7], a

jr_000_1f7b:
	ld hl, wcd5b
	set 2, [hl]
	ld hl, wcc4b
	dec [hl]
	jr nz, jr_000_1f7b

	ld a, [wd4a9]
	ld [wd4a7], a
	call Call_000_209a
	jp c, Jump_000_204e

	jp Jump_000_1e1c


jr_000_1f95:
	ld a, [wd4a9]
	ld [wd4a7], a
	call UpdateSprites
	ld a, [wd67f]
	cp $02
	jr z, jr_000_1fbf

	call Call_000_25e8
	jr nc, jr_000_1fc5

	push hl
	ld hl, wd6b5
	bit 2, [hl]
	pop hl
	jp z, Jump_000_1e1c

	push hl
	call Call_000_2300
	pop hl
	jp c, Jump_000_211d

	jp Jump_000_1e1c


jr_000_1fbf:
	call Call_000_29c8
	jp c, Jump_000_1e1c

jr_000_1fc5:
	ld a, $08
	ld [wcfac], a
	jr jr_000_1fde

Jump_000_1fcc:
	ld a, [wd6b5]
	bit 7, a
	jr z, jr_000_1fdb

	ld b, $11
	ld hl, $57b0
	call Bankswitch

jr_000_1fdb:
	call UpdateSprites

jr_000_1fde:
	ld hl, wcd5b
	res 2, [hl]
	ld a, [wd67f]
	dec a
	jr nz, jr_000_1ff3

	ld a, [wd6b5]
	bit 6, a
	jr nz, jr_000_1ff3

	call Call_000_20b7

jr_000_1ff3:
	call Call_000_2738
	ld a, [wcfac]
	and a
	jp nz, Jump_000_21d1

	ld a, [wd6af]
	bit 7, a
	jr nz, jr_000_201a

	ld hl, wd100
	dec [hl]
	ld a, [wd6ab]
	bit 0, a
	jr z, jr_000_201a

	ld hl, wd101
	dec [hl]
	jr nz, jr_000_201a

	ld hl, wd6ab
	res 0, [hl]

jr_000_201a:
	ld a, [wd70f]
	bit 7, a
	jr z, jr_000_2030

	ld b, $07
	ld hl, $7a43
	call Bankswitch
	ld a, [wd982]
	and a
	jp nz, Jump_000_2153

jr_000_2030:
	ld a, [wd034]
	and a
	jp nz, Jump_000_20cb

	ld a, $13
	call Predef
	ld a, [wd0f2]
	and a
	jp nz, Jump_000_2348

Jump_000_2043:
	call Call_000_209a
	ld hl, wd6b5
	res 2, [hl]
	jp nc, Jump_000_20cb

Jump_000_204e:
	ld hl, wd6ac
	res 6, [hl]
	ld hl, wd6b2
	res 3, [hl]
	ld hl, wd0eb
	set 5, [hl]
	set 6, [hl]
	xor a
	ldh [$b4], a
	ld a, [wd2dd]
	cp $a6
	jr nz, jr_000_206e

	ld hl, wd71a
	set 7, [hl]

jr_000_206e:
	ld hl, wd6ad
	set 5, [hl]
	ld a, [wd2dd]
	cp $28
	jp z, Jump_000_2087

	ld hl, $4ba3
	ld b, $0f
	call Bankswitch
	ld a, d
	and a
	jr z, jr_000_208f

Jump_000_2087:
	ld c, $0a
	call DelayFrames
	jp Jump_000_1dc3


jr_000_208f:
	ld a, $ff
	ld [wd034], a
	call Call_000_2a2c
	jp Jump_000_2348


Call_000_209a:
	ld a, [wd6ac]
	bit 4, a
	jr nz, jr_000_20b5

	call Call_000_3145
	jr nz, jr_000_20b5

	ld a, [wd6ad]
	bit 4, a
	jr nz, jr_000_20b5

	ld b, $0f
	ld hl, $7204
	jp Jump_000_3620


jr_000_20b5:
	and a
	ret


Call_000_20b7:
	ld a, [wcc57]
	and a
	ret nz

	ld a, [wd2dd]
	cp $1c
	jr nz, jr_000_20c8

	ldh a, [$b4]
	and $70
	ret nz

jr_000_20c8:
	jp Jump_000_2738


Jump_000_20cb:
	ld a, [wd32d]
	and a
	jp z, Jump_000_21d1

	ld a, [wd32d]
	ld b, $00
	ld c, a
	ld a, [wd2e0]
	ld d, a
	ld a, [wd2e1]
	ld e, a
	ld hl, wd32e

Jump_000_20e3:
	ld a, [hli]
	cp d
	jr nz, jr_000_2146

	ld a, [hli]
	cp e
	jr nz, jr_000_2147

	push hl
	push bc
	ld hl, wd6b5
	set 2, [hl]
	ld b, $03
	ld hl, $4ae3
	call Bankswitch
	pop bc
	pop hl
	jr c, jr_000_214c

	push hl
	push bc
	call Call_000_2300
	pop bc
	pop hl
	jr nc, jr_000_2147

	ld a, [wd6b2]
	bit 2, a
	jr nz, jr_000_214c

	push de
	push bc
	call Call_000_0153
	pop bc
	pop de
	ldh a, [$b4]
	and $f0
	jr z, jr_000_2147

	jr jr_000_214c

Jump_000_211d:
	ld a, [wd32d]
	ld c, a
	ld hl, wd32e

jr_000_2124:
	ld a, [hli]
	ld b, a
	ld a, [wd2e0]
	cp b
	jr nz, jr_000_213d

	ld a, [hli]
	ld b, a
	ld a, [wd2e1]
	cp b
	jr nz, jr_000_213e

	ld a, [hli]
	ld [wd3ae], a
	ld a, [hl]
	ldh [$8b], a
	jr jr_000_2153

jr_000_213d:
	inc hl

jr_000_213e:
	inc hl
	inc hl
	dec c
	jr nz, jr_000_2124

	jp Jump_000_1e1c


jr_000_2146:
	inc hl

jr_000_2147:
	inc hl
	inc hl
	jp Jump_000_21cc


jr_000_214c:
	ld a, [hli]
	ld [wd3ae], a
	ld a, [hli]
	ldh [$8b], a

Jump_000_2153:
jr_000_2153:
	ld a, [wd32d]
	sub c
	ld [wd6ba], a
	ld a, [wd2dd]
	ld [wd6bb], a
	call Call_000_22f8
	jr nz, jr_000_2187

	ld a, [wd2dd]
	ld [wd2e4], a
	ld a, [wd2e8]
	ld [wd2e5], a
	ldh a, [$8b]
	ld [wd2dd], a
	cp $52
	jr nz, jr_000_2182

	ld a, $06
	ld [wMapPalOffset], a
	call GBFadeOutToBlack

jr_000_2182:
	call Call_000_22e0
	jr jr_000_21c1

jr_000_2187:
	ldh a, [$8b]
	cp $ff
	jr z, jr_000_21b4

	ld [wd2dd], a
	ld b, $1c
	ld hl, $4cd8
	call Bankswitch
	ld a, [wcd51]
	dec a
	jr nz, jr_000_21a8

	ld hl, wd6b1
	set 3, [hl]
	call Call_000_23a6
	jr jr_000_21ab

jr_000_21a8:
	call Call_000_22e0

jr_000_21ab:
	ld hl, wd6b5
	res 0, [hl]
	res 1, [hl]
	jr jr_000_21c1

jr_000_21b4:
	ld a, [wd2e4]
	ld [wd2dd], a
	call Call_000_22e0
	xor a
	ld [wMapPalOffset], a

jr_000_21c1:
	ld hl, wd6b5
	set 0, [hl]
	call Call_000_2ceb
	jp Jump_000_1dc3


Jump_000_21cc:
	inc b
	dec c
	jp nz, Jump_000_20e3

Jump_000_21d1:
	ld a, [wd2e1]
	cp $ff
	jr nz, jr_000_2215

	ld a, [wd306]
	ld [wd2dd], a
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
	jr z, jr_000_220a

jr_000_21fc:
	ld a, [wd30c]
	add $06
	ld e, a
	ld d, $00
	ld b, $00
	add hl, de
	dec c
	jr nz, jr_000_21fc

jr_000_220a:
	ld a, l
	ld [wd2de], a
	ld a, h
	ld [wd2df], a
	jp Jump_000_22c4


jr_000_2215:
	ld b, a
	ld a, [wd4a4]
	cp b
	jr nz, jr_000_2259

	ld a, [wd311]
	ld [wd2dd], a
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
	jr z, jr_000_224e

jr_000_2240:
	ld a, [wd317]
	add $06
	ld e, a
	ld d, $00
	ld b, $00
	add hl, de
	dec c
	jr nz, jr_000_2240

jr_000_224e:
	ld a, l
	ld [wd2de], a
	ld a, h
	ld [wd2df], a
	jp Jump_000_22c4


jr_000_2259:
	ld a, [wd2e0]
	cp $ff
	jr nz, jr_000_2290

	ld a, [wd2f0]
	ld [wd2dd], a
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
	jp Jump_000_22c4


jr_000_2290:
	ld b, a
	ld a, [wd4a3]
	cp b
	jr nz, jr_000_22dd

	ld a, [wd2fb]
	ld [wd2dd], a
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

Jump_000_22c4:
	call Call_000_2a8d
	call PlayDefaultMusicFadeOutCurrent
	ld b, $09
	call Call_000_3e1f
	ld b, $05
	ld hl, $7840
	call Bankswitch
	call Call_000_2413
	jp Jump_000_1e1f


jr_000_22dd:
	jp Jump_000_1e1c


Call_000_22e0:
	ld a, [wc448]
	cp $0b
	jr nz, jr_000_22eb

	ld a, $ad
	jr jr_000_22ed

jr_000_22eb:
	ld a, $b5

jr_000_22ed:
	call PlaySound
	ld a, [wMapPalOffset]
	and a
	ret nz

	jp GBFadeOutToBlack


Call_000_22f8:
	ld a, [wd2e6]
	and a
	ret z

	cp $17
	ret


Call_000_2300:
	ld a, [wd2dd]
	cp $61
	jr z, jr_000_2329

	cp $c7
	jr z, jr_000_232e

	cp $c8
	jr z, jr_000_232e

	cp $ca
	jr z, jr_000_232e

	cp $52
	jr z, jr_000_232e

	ld a, [wd2e6]
	and a
	jr z, jr_000_232e

	cp $0d
	jr z, jr_000_232e

	cp $0e
	jr z, jr_000_232e

	cp $17
	jr z, jr_000_232e

jr_000_2329:
	ld hl, $4a45
	jr jr_000_2331

jr_000_232e:
	ld hl, $4a94

jr_000_2331:
	ld b, $03
	jp Jump_000_3620


Call_000_2336:
	ld b, $03
	ld hl, $49a5
	call Bankswitch
	ld a, [wMapPalOffset]
	and a
	jp z, GBFadeInFromWhite

	jp LoadGBPal


Jump_000_2348:
	call GBFadeOutToBlack
	ld a, $08
	call Call_000_2368
	ld hl, wd6ad
	res 5, [hl]
	ld a, $01
	ldh [hLoadedROMBank], a
	ld [$2000], a
	call $755f
	call $6260
	call PlayDefaultMusicFadeOutCurrent
	jp $5bb6


Call_000_2368:
	ld [wAudioFadeOutControl], a
	ld a, $ff
	ld [wNewSoundID], a
	call PlaySound

jr_000_2373:
	ld a, [wAudioFadeOutControl]
	and a
	jr nz, jr_000_2373

	jp StopAllSounds


Jump_000_237c:
	call UpdateSprites
	call Call_000_3e07
	xor a
	ld [wcf06], a
	ld [wd67f], a
	ld [wd034], a
	ld [wMapPalOffset], a
	ld hl, wd6b1
	set 2, [hl]
	res 5, [hl]
	call Call_000_23a6
	ld a, $01
	ldh [hLoadedROMBank], a
	ld [$2000], a
	call $6260
	jp $5bb6


Call_000_23a6:
	ld b, $1c
	ld hl, $4b0b
	jp Jump_000_3620


Call_000_23ae:
	ld a, [wd67f]
	dec a
	jr z, jr_000_23bb

	ldh a, [$d7]
	and a
	jr nz, jr_000_23ca

	jr jr_000_23c0

jr_000_23bb:
	call Call_000_23dc
	jr c, jr_000_23ca

jr_000_23c0:
	xor a
	ld [wd67f], a
	ld [wd0df], a
	jp Jump_000_2a5e


jr_000_23ca:
	ld a, [wd67f]
	and a
	jp z, Jump_000_2a5e

	dec a
	jp z, Jump_000_2a6e

	dec a
	jp z, Jump_000_2a66

	jp Jump_000_2a5e


Call_000_23dc:
	ld a, [wd2dd]
	cp $22
	jr z, jr_000_23f7

	cp $09
	jr z, jr_000_23f7

	ld a, [wd2e6]
	ld b, a
	ld hl, $23f9

jr_000_23ee:
	ld a, [hli]
	cp b
	jr z, jr_000_23f7

	inc a
	jr nz, jr_000_23ee

	and a
	ret


jr_000_23f7:
	scf
	ret


	nop
	inc bc
	dec bc
	ld c, $11
	rst $38

Call_000_23ff:
	ld a, [wd4ad]
	ld l, a
	ld a, [wd4ae]
	ld h, a
	ld de, $9000
	ld bc, $0600
	ld a, [wd4aa]
	jp CopyFarBytes2


Call_000_2413:
	ld hl, wc6e8
	ld a, [wd32c]
	ld d, a
	ld bc, $0514

jr_000_241d:
	ld a, d
	ld [hli], a
	dec bc
	ld a, c
	or b
	jr nz, jr_000_241d

	ld hl, wc6e8
	ld a, [wd2e8]
	ldh [$8c], a
	add $06
	ldh [$8b], a
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

jr_000_2445:
	push hl
	ldh a, [$8c]
	ld c, a

jr_000_2449:
	ld a, [de]
	inc de
	ld [hli], a
	dec c
	jr nz, jr_000_2449

	pop hl
	ldh a, [$8b]
	add l
	ld l, a
	jr nc, jr_000_2457

	inc h

jr_000_2457:
	dec b
	jr nz, jr_000_2445

	ld a, [wd2f0]
	cp $ff
	jr z, jr_000_2481

	call Call_000_2ccd
	ld a, [wd2f1]
	ld l, a
	ld a, [wd2f2]
	ld h, a
	ld a, [wd2f3]
	ld e, a
	ld a, [wd2f4]
	ld d, a
	ld a, [wd2f5]
	ldh [$8b], a
	ld a, [wd2f6]
	ldh [$8c], a
	call Call_000_24f5

jr_000_2481:
	ld a, [wd2fb]
	cp $ff
	jr z, jr_000_24a8

	call Call_000_2ccd
	ld a, [wd2fc]
	ld l, a
	ld a, [wd2fd]
	ld h, a
	ld a, [wd2fe]
	ld e, a
	ld a, [wd2ff]
	ld d, a
	ld a, [wd300]
	ldh [$8b], a
	ld a, [wd301]
	ldh [$8c], a
	call Call_000_24f5

jr_000_24a8:
	ld a, [wd306]
	cp $ff
	jr z, jr_000_24ce

	call Call_000_2ccd
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
	ldh [$8b], a
	call Call_000_2519

jr_000_24ce:
	ld a, [wd311]
	cp $ff
	jr z, jr_000_24f4

	call Call_000_2ccd
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
	ldh [$8b], a
	call Call_000_2519

jr_000_24f4:
	ret


Call_000_24f5:
	ld c, $03

jr_000_24f7:
	push de
	push hl
	ldh a, [$8b]
	ld b, a

jr_000_24fc:
	ld a, [hli]
	ld [de], a
	inc de
	dec b
	jr nz, jr_000_24fc

	pop hl
	pop de
	ldh a, [$8c]
	add l
	ld l, a
	jr nc, jr_000_250b

	inc h

jr_000_250b:
	ld a, [wd2e8]
	add $06
	add e
	ld e, a
	jr nc, jr_000_2515

	inc d

jr_000_2515:
	dec c
	jr nz, jr_000_24f7

	ret


Call_000_2519:
jr_000_2519:
	push hl
	push de
	ld c, $03

jr_000_251d:
	ld a, [hli]
	ld [de], a
	inc de
	dec c
	jr nz, jr_000_251d

	pop de
	pop hl
	ldh a, [$8b]
	add l
	ld l, a
	jr nc, jr_000_252c

	inc h

jr_000_252c:
	ld a, [wd2e8]
	add $06
	add e
	ld e, a
	jr nc, jr_000_2536

	inc d

jr_000_2536:
	dec b
	jr nz, jr_000_2519

	ret


Call_000_253a:
	xor a
	ldh [$8c], a
	ld a, [wd42f]
	and a
	jr z, jr_000_256f

	ld a, $35
	call Predef
	ld hl, wd430
	ld a, [wd42f]
	ld b, a
	ld c, $00

jr_000_2551:
	inc c
	ld a, [hli]
	cp d
	jr z, jr_000_2559

	inc hl
	jr jr_000_256c

jr_000_2559:
	ld a, [hli]
	cp e
	jr nz, jr_000_256c

	push hl
	push bc
	ld hl, wd450
	ld b, $00
	dec c
	add hl, bc
	ld a, [hl]
	ldh [$8c], a
	pop bc
	pop hl
	ret


jr_000_256c:
	dec b
	jr nz, jr_000_2551

jr_000_256f:
	ld a, $35
	call Predef
	ld hl, wd4b1
	ld b, $03
	ld d, $20

jr_000_257b:
	ld a, [hli]
	cp c
	jr z, jr_000_2584

	dec b
	jr nz, jr_000_257b

Call_000_2582:
	ld d, $10

jr_000_2584:
	ld bc, $3c40
	ld a, [$c109]
	cp $04
	jr nz, jr_000_2595

	ld a, b
	sub d
	ld b, a
	ld a, $08
	jr jr_000_25b0

jr_000_2595:
	cp $00
	jr nz, jr_000_25a0

	ld a, b
	add d
	ld b, a
	ld a, $04
	jr jr_000_25b0

jr_000_25a0:
	cp $0c
	jr nz, jr_000_25ab

	ld a, c
	add d
	ld c, a
	ld a, $01
	jr jr_000_25b0

jr_000_25ab:
	ld a, c
	sub d
	ld c, a
	ld a, $02

jr_000_25b0:
	ld [wd4a9], a
	ld a, [wd460]
	and a
	ret z

	ld hl, $c110
	ld d, a
	ld e, $01

jr_000_25be:
	push hl
	ld a, [hli]
	and a
	jr z, jr_000_25d2

	inc l
	ld a, [hli]
	inc a
	jr z, jr_000_25d2

	inc l
	ld a, [hli]
	cp b
	jr nz, jr_000_25d2

	inc l
	ld a, [hl]
	cp c
	jr z, jr_000_25dc

jr_000_25d2:
	pop hl
	ld a, l
	add $10
	ld l, a
	inc e
	dec d
	jr nz, jr_000_25be

	ret


jr_000_25dc:
	pop hl
	ld a, l
	and $f0
	inc a
	ld l, a
	set 7, [hl]
	ld a, e
	ldh [$8c], a
	ret


Call_000_25e8:
	ld a, [wd6b5]
	bit 6, a
	jr nz, jr_000_2625

	ld a, [wcd38]
	and a
	jr nz, jr_000_2625

	ld a, [wd4a9]
	ld d, a
	ld a, [$c10c]
	and d
	jr nz, jr_000_2617

	xor a
	ldh [$8c], a
	call Call_000_2582
	ldh a, [$8c]
	and a
	jr nz, jr_000_2617

	ld hl, $268f
	call Call_000_2641
	jr c, jr_000_2617

	call Call_000_2627
	jr nc, jr_000_2625

jr_000_2617:
	ld a, [wc02a]
	cp $b4
	jr z, jr_000_2623

	ld a, $b4
	call PlaySound

jr_000_2623:
	scf
	ret


jr_000_2625:
	and a
	ret


Call_000_2627:
	ld a, $35
	call Predef
	ld a, [wcfad]
	ld c, a
	ld hl, wd4af
	ld a, [hli]
	ld h, [hl]
	ld l, a

jr_000_2636:
	ld a, [hli]
	cp $ff
	jr z, jr_000_263f

	cp c
	ret z

	jr jr_000_2636

jr_000_263f:
	scf
	ret


Call_000_2641:
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

jr_000_265f:
	ld a, [wd2e6]
	ld b, a
	ld a, [hli]
	cp $ff
	jr z, jr_000_268d

	cp b
	jr z, jr_000_266f

	inc hl

jr_000_266c:
	inc hl
	jr jr_000_265f

jr_000_266f:
	ld a, [wc45c]
	ld b, a
	ld a, [hl]
	cp b
	jr z, jr_000_267e

	inc hl
	ld a, [hl]
	cp b
	jr z, jr_000_2685

	jr jr_000_266c

jr_000_267e:
	inc hl
	ld a, [hl]
	cp c
	jr z, jr_000_268b

	jr jr_000_265f

jr_000_2685:
	dec hl
	ld a, [hli]
	cp c
	inc hl
	jr nz, jr_000_265f

jr_000_268b:
	scf
	ret


jr_000_268d:
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

Call_000_26bb:
	ldh a, [hLoadedROMBank]
	push af
	ld a, [wd4aa]
	ldh [hLoadedROMBank], a
	ld [$2000], a
	ld a, [wd2de]
	ld e, a
	ld a, [wd2df]
	ld d, a
	ld hl, wc508
	ld b, $05

jr_000_26d3:
	push hl
	push de
	ld c, $06

jr_000_26d7:
	push bc
	push de
	push hl
	ld a, [de]
	ld c, a
	call Call_000_292e
	pop hl
	pop de
	pop bc
	inc hl
	inc hl
	inc hl
	inc hl
	inc de
	dec c
	jr nz, jr_000_26d7

	pop de
	ld a, [wd2e8]
	add $06
	add e
	ld e, a
	jr nc, jr_000_26f5

	inc d

jr_000_26f5:
	pop hl
	ld a, $60
	add l
	ld l, a
	jr nc, jr_000_26fd

	inc h

jr_000_26fd:
	dec b
	jr nz, jr_000_26d3

	ld hl, wc508
	ld bc, $0000
	ld a, [wd2e2]
	and a
	jr z, jr_000_2710

	ld bc, $0030
	add hl, bc

jr_000_2710:
	ld a, [wd2e3]
	and a
	jr z, jr_000_271a

	ld bc, $0002
	add hl, bc

jr_000_271a:
	ld de, wc3a0
	ld b, $12

jr_000_271f:
	ld c, $14

jr_000_2721:
	ld a, [hli]
	ld [de], a
	inc de
	dec c
	jr nz, jr_000_2721

	ld a, $04
	add l
	ld l, a
	jr nc, jr_000_272e

	db $24

jr_000_272e:
	dec b
	jr nz, jr_000_271f

	pop af
	ldh [hLoadedROMBank], a
	ld [$2000], a
	ret


Call_000_2738:
Jump_000_2738:
	ld a, [$c103]
	ld b, a
	ld a, [$c105]
	ld c, a
	ld hl, wcfac
	dec [hl]
	jr nz, jr_000_2754

	ld a, [wd2e0]
	add b
	ld [wd2e0], a
	ld a, [wd2e1]
	add c
	ld [wd2e1], a

jr_000_2754:
	ld a, [wcfac]
	cp $07
	jp nz, Jump_000_2847

	ld a, c
	cp $01
	jr nz, jr_000_2773

	ld a, [wd4a5]
	ld e, a
	and $e0
	ld d, a
	ld a, e
	add $02
	and $1f
	or d
	ld [wd4a5], a
	jr jr_000_27be

jr_000_2773:
	cp $ff
	jr nz, jr_000_2789

	ld a, [wd4a5]
	ld e, a
	and $e0
	ld d, a
	ld a, e
	sub $02
	and $1f
	or d
	ld [wd4a5], a
	jr jr_000_27be

jr_000_2789:
	ld a, b
	cp $01
	jr nz, jr_000_27a5

	ld a, [wd4a5]
	add $40
	ld [wd4a5], a
	jr nc, jr_000_27be

	ld a, [wd4a6]
	inc a
	and $03
	or $98
	ld [wd4a6], a
	jr jr_000_27be

jr_000_27a5:
	cp $ff
	jr nz, jr_000_27be

	ld a, [wd4a5]
	sub $40
	ld [wd4a5], a
	jr nc, jr_000_27be

	ld a, [wd4a6]
	dec a
	and $03
	or $98
	ld [wd4a6], a

jr_000_27be:
	ld a, c
	and a
	jr z, jr_000_27c2

jr_000_27c2:
	ld hl, wd2e3
	ld a, [hl]
	add c
	ld [hl], a
	cp $02
	jr nz, jr_000_27da

	xor a
	ld [hl], a
	ld hl, wd462
	inc [hl]
	ld de, wd2de
	call Call_000_2876
	jr jr_000_281c

jr_000_27da:
	cp $ff
	jr nz, jr_000_27ed

	ld a, $01
	ld [hl], a
	ld hl, wd462
	dec [hl]
	ld de, wd2de
	call Call_000_2880
	jr jr_000_281c

jr_000_27ed:
	ld hl, wd2e2
	ld a, [hl]
	add b
	ld [hl], a
	cp $02
	jr nz, jr_000_2808

	xor a
	ld [hl], a
	ld hl, wd461
	inc [hl]
	ld de, wd2de
	ld a, [wd2e8]
	call Call_000_288a
	jr jr_000_281c

jr_000_2808:
	cp $ff
	jr nz, jr_000_281c

	ld a, $01
	ld [hl], a
	ld hl, wd461
	dec [hl]
	ld de, wd2de
	ld a, [wd2e8]
	call Call_000_2896

jr_000_281c:
	call Call_000_26bb
	ld a, [$c103]
	cp $01
	jr nz, jr_000_282b

	call Call_000_28c3
	jr jr_000_2847

jr_000_282b:
	cp $ff
	jr nz, jr_000_2834

	call Call_000_28a2
	jr jr_000_2847

jr_000_2834:
	ld a, [$c105]
	cp $01
	jr nz, jr_000_2840

	call Call_000_28e4
	jr jr_000_2847

jr_000_2840:
	cp $ff
	jr nz, jr_000_2847

	call Call_000_2919

Jump_000_2847:
jr_000_2847:
	ld a, [$c103]
	ld b, a
	ld a, [$c105]
	ld c, a
	sla b
	sla c
	ldh a, [$af]
	add b
	ldh [$af], a
	ldh a, [$ae]
	add c
	ldh [$ae], a
	ld hl, $c114
	ld a, [wd460]
	and a
	jr z, jr_000_2875

	ld e, a

jr_000_2867:
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
	jr nz, jr_000_2867

jr_000_2875:
	ret


Call_000_2876:
	ld a, [de]
	add $01
	ld [de], a
	ret nc

	inc de
	ld a, [de]
	inc a
	ld [de], a
	ret


Call_000_2880:
	ld a, [de]
	sub $01
	ld [de], a
	ret nc

	inc de
	ld a, [de]
	dec a
	ld [de], a
	ret


Call_000_288a:
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


Call_000_2896:
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


Call_000_28a2:
	ld hl, wc3a0
	call Call_000_28b7
	ld a, [wd4a5]
	ldh [$d1], a
	ld a, [wd4a6]
	ldh [$d2], a
	ld a, $02
	ldh [$d0], a
	ret


Call_000_28b7:
	ld de, wcbfc
	ld c, $28

jr_000_28bc:
	ld a, [hli]
	ld [de], a
	inc de
	dec c
	jr nz, jr_000_28bc

	ret


Call_000_28c3:
	ld hl, wc4e0
	call Call_000_28b7
	ld a, [wd4a5]
	ld l, a
	ld a, [wd4a6]
	ld h, a
	ld bc, $0200
	add hl, bc
	ld a, h
	and $03
	or $98
	ldh [$d2], a
	ld a, l
	ldh [$d1], a
	ld a, $02
	ldh [$d0], a
	ret


Call_000_28e4:
	ld hl, wc3b2
	call Call_000_2903
	ld a, [wd4a5]
	ld c, a
	and $e0
	ld b, a
	ld a, c
	add $12
	and $1f
	or b
	ldh [$d1], a
	ld a, [wd4a6]
	ldh [$d2], a
	ld a, $01
	ldh [$d0], a
	ret


Call_000_2903:
	ld de, wcbfc
	ld c, $12

jr_000_2908:
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hl]
	ld [de], a
	inc de
	ld a, $13
	add l
	ld l, a
	jr nc, jr_000_2915

	inc h

jr_000_2915:
	dec c
	jr nz, jr_000_2908

	ret


Call_000_2919:
	ld hl, wc3a0
	call Call_000_2903
	ld a, [wd4a5]
	ldh [$d1], a
	ld a, [wd4a6]
	ldh [$d2], a
	ld a, $01
	ldh [$d0], a
	ret


Call_000_292e:
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

jr_000_2948:
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
	jr nz, jr_000_2948

	ret


Call_000_295e:
	xor a
	ld [$c103], a
	ld [$c105], a
	call Call_000_2a2c
	call Call_000_0153
	ld a, [wd6b2]
	bit 3, a
	jr nz, jr_000_2983

	ld a, [wd2dd]
	cp $1c
	jr nz, jr_000_2983

	ldh a, [$b4]
	and $f3
	jr nz, jr_000_2983

	ld a, $80
	ldh [$b4], a

jr_000_2983:
	ld a, [wd6af]
	bit 7, a
	ret z

	ldh a, [$b4]
	ld b, a
	ld a, [wcd3b]
	and b
	ret nz

	ld hl, wcd38
	dec [hl]
	ld a, [hl]
	cp $ff
	jr z, jr_000_29ac

	ld hl, wccd3
	add l
	ld l, a
	jr nc, jr_000_29a2

	inc h

jr_000_29a2:
	ld a, [hl]
	ldh [$b4], a
	and a
	ret nz

	ldh [$b3], a
	ldh [$b2], a
	ret


jr_000_29ac:
	xor a
	ld [wcd3a], a
	ld [wcd38], a
	ld [wccd3], a
	ld [wcd66], a
	ldh [$b4], a
	ld hl, wd6b5
	ld a, [hl]
	and $f8
	ld [hl], a
	ld hl, wd6af
	res 7, [hl]
	ret


Call_000_29c8:
	ld a, [wd6af]
	bit 7, a
	jp nz, Jump_000_2a15

	ld a, [wd4a9]
	ld d, a
	ld a, [$c10c]
	and d
	jr nz, jr_000_29f6

	ld hl, $26b1
	call Call_000_2641
	jr c, jr_000_2a06

	ld a, $35
	call Predef
	ld a, [wcfad]
	cp $14
	jr z, jr_000_2a15

	cp $32
	jr z, jr_000_2a23

	cp $48
	jr z, jr_000_2a15

jr_000_29f6:
	ld hl, wd4af
	ld a, [hli]
	ld h, [hl]
	ld l, a

jr_000_29fc:
	ld a, [hli]
	cp $ff
	jr z, jr_000_2a06

	cp c
	jr z, jr_000_2a17

	jr jr_000_29fc

jr_000_2a06:
	ld a, [wc02a]
	cp $b4
	jr z, jr_000_2a12

	ld a, $b4
	call PlaySound

jr_000_2a12:
	scf
	jr jr_000_2a16

Jump_000_2a15:
jr_000_2a15:
	and a

jr_000_2a16:
	ret


jr_000_2a17:
	xor a
	ld [wd67f], a
	call Call_000_23ae
	call PlayDefaultMusic
	jr jr_000_2a15

jr_000_2a23:
	ld a, [wd2e6]
	cp $0e
	jr nz, jr_000_2a15

	jr jr_000_2a17

Call_000_2a2c:
	push hl
	push de
	push bc
	ld b, $03
	ld hl, $7557
	call Bankswitch
	ld a, [wcd5b]
	bit 1, a
	jr z, jr_000_2a46

	ld b, $03
	ld hl, $75e7
	call Bankswitch

jr_000_2a46:
	pop bc
	pop de
	pop hl
	call Call_000_3156
	ld a, [wd2dd]
	call Call_000_2ccd
	ld hl, wd2ed
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld de, $2a5d
	push de
	jp hl


	ret


Jump_000_2a5e:
	ld de, $4180
	ld hl, $8000
	jr jr_000_2a74

Jump_000_2a66:
	ld de, $76c0
	ld hl, $8000
	jr jr_000_2a74

Jump_000_2a6e:
	ld de, $4000
	ld hl, $8000

jr_000_2a74:
	push de
	push hl
	ld bc, $050c
	call CopyVideoData
	pop hl
	pop de
	ld a, $c0
	add e
	ld e, a
	jr nc, jr_000_2a85

	inc d

jr_000_2a85:
	set 3, h
	ld bc, $050c
	jp CopyVideoData


Call_000_2a8d:
	ld b, $03
	ld hl, $7445
	call Bankswitch
	ld a, [wd2e6]
	ld [wd0de], a
	ld a, [wd2dd]
	call Call_000_2ccd
	ld a, [wd2e6]
	ld b, a
	res 7, a
	ld [wd2e6], a
	ldh [$8b], a
	bit 7, b
	ret nz

	ld hl, $1bcb
	ld a, [wd2dd]
	sla a
	jr nc, jr_000_2aba

	inc h

jr_000_2aba:
	add l
	ld l, a
	jr nc, jr_000_2abf

	inc h

jr_000_2abf:
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld de, wd2e6
	ld c, $0a

jr_000_2ac7:
	ld a, [hli]
	ld [de], a
	inc de
	dec c
	jr nz, jr_000_2ac7

	ld a, $ff
	ld [wd2f0], a
	ld [wd2fb], a
	ld [wd306], a
	ld [wd311], a
	ld a, [wd2ef]
	ld b, a
	bit 3, b
	jr z, jr_000_2ae9

	ld de, wd2f0
	call Call_000_2c49

jr_000_2ae9:
	bit 2, b
	jr z, jr_000_2af3

	ld de, wd2fb
	call Call_000_2c49

jr_000_2af3:
	bit 1, b
	jr z, jr_000_2afd

	ld de, wd306
	call Call_000_2c49

jr_000_2afd:
	bit 0, b
	jr z, jr_000_2b07

	ld de, wd311
	call Call_000_2c49

jr_000_2b07:
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
	jr z, jr_000_2b33

	ld c, a
	ld de, wd32e

jr_000_2b28:
	ld b, $04

jr_000_2b2a:
	ld a, [hli]
	ld [de], a
	inc de
	dec b
	jr nz, jr_000_2b2a

	dec c
	jr nz, jr_000_2b28

jr_000_2b33:
	ld a, [hli]
	ld [wd42f], a
	and a
	jr z, jr_000_2b61

	ld c, a
	ld de, wd450
	ld a, d
	ldh [$95], a
	ld a, e
	ldh [$96], a
	ld de, wd430

jr_000_2b47:
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	inc de
	push de
	ldh a, [$95]
	ld d, a
	ldh a, [$96]
	ld e, a
	ld a, [hli]
	ld [de], a
	inc de
	ld a, d
	ldh [$95], a
	ld a, e
	ldh [$96], a
	pop de
	dec c
	jr nz, jr_000_2b47

jr_000_2b61:
	ld a, [wd6ad]
	bit 5, a
	jp nz, Jump_000_2c09

	ld a, [hli]
	ld [wd460], a
	push hl
	ld hl, $c110
	ld de, $c210
	xor a
	ld b, $f0

jr_000_2b77:
	ld [hli], a
	ld [de], a
	inc e
	dec b
	jr nz, jr_000_2b77

	ld hl, $c112
	ld de, $0010
	ld c, $0f

jr_000_2b85:
	ld [hl], $ff
	add hl, de
	dec c
	jr nz, jr_000_2b85

	pop hl
	ld de, $c110
	ld a, [wd460]
	and a
	jp z, Jump_000_2c09

	ld b, a
	ld c, $00

Jump_000_2b99:
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
	ldh [$8d], a
	ld a, [hli]
	ldh [$8e], a
	push bc
	push hl
	ld b, $00
	ld hl, wd463
	add hl, bc
	ldh a, [$8d]
	ld [hli], a
	ldh a, [$8e]
	ld [hl], a
	ldh a, [$8e]
	ldh [$8d], a
	and $3f
	ld [hl], a
	pop hl
	ldh a, [$8d]
	bit 6, a
	jr nz, jr_000_2bd0

	bit 7, a
	jr nz, jr_000_2be4

	jr jr_000_2bf4

jr_000_2bd0:
	ld a, [hli]
	ldh [$8d], a
	ld a, [hli]
	ldh [$8e], a
	push hl
	ld hl, wd483
	add hl, bc
	ldh a, [$8d]
	ld [hli], a
	ldh a, [$8e]
	ld [hl], a
	pop hl
	jr jr_000_2bfd

jr_000_2be4:
	ld a, [hli]
	ldh [$8d], a
	push hl
	ld hl, wd483
	add hl, bc
	ldh a, [$8d]
	ld [hli], a
	xor a
	ld [hl], a
	pop hl
	jr jr_000_2bfd

jr_000_2bf4:
	push hl
	ld hl, wd483
	add hl, bc
	xor a
	ld [hli], a
	ld [hl], a
	pop hl

jr_000_2bfd:
	pop bc
	dec d
	ld a, $0a
	add e
	ld e, a
	inc c
	inc c
	dec b
	jp nz, Jump_000_2b99

Jump_000_2c09:
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
	ld a, [wd2dd]
	ld c, a
	ld b, $00
	ldh a, [hLoadedROMBank]
	push af
	ld a, $03
	ldh [hLoadedROMBank], a
	ld [$2000], a
	ld hl, $4693
	add hl, bc
	add hl, bc
	ld a, [hli]
	ld [wd2da], a
	ld a, [hl]
	ld [wd2db], a
	pop af
	ldh [hLoadedROMBank], a
	ld [$2000], a
	ret


Call_000_2c49:
	ld c, $0b

jr_000_2c4b:
	ld a, [hli]
	ld [de], a
	inc de
	dec c
	jr nz, jr_000_2c4b

	ret


Call_000_2c52:
	ldh a, [hLoadedROMBank]
	push af
	call DisableLCD
	ld a, $98
	ld [wd4a6], a
	xor a
	ld [wd4a5], a
	ldh [$af], a
	ldh [$ae], a
	ld [wcfac], a
	ld [wd0de], a
	ld [wd0df], a
	ld [wd327], a
	call Call_000_36ea
	call Call_000_2a8d
	ld b, $05
	ld hl, $7840
	call Bankswitch
	call Call_000_2413
	call Call_000_23ff
	call Call_000_26bb
	ld hl, wc3a0
	ld de, $9800
	ld b, $12

jr_000_2c90:
	ld c, $14

jr_000_2c92:
	ld a, [hli]
	ld [de], a
	inc e
	dec c
	jr nz, jr_000_2c92

	ld a, $0c
	add e
	ld e, a
	jr nc, jr_000_2c9f

	inc d

jr_000_2c9f:
	dec b
	jr nz, jr_000_2c90

	ld a, $01
	ld [wcfb2], a
	call EnableLCD
	ld b, $09
	call Call_000_3e1f
	call Call_000_23ae
	ld a, [wd6b1]
	and $18
	jr nz, jr_000_2cc6

	ld a, [wd6b2]
	bit 1, a
	jr nz, jr_000_2cc6

	call UpdateMusic6Times
	call PlayDefaultMusicFadeOutCurrent

jr_000_2cc6:
	pop af
	ldh [hLoadedROMBank], a
	ld [$2000], a
	ret


Call_000_2ccd:
	push hl
	push bc
	ld c, a
	ld b, $00
	ld a, $03
	call Call_000_3606
	ld hl, $4883
	add hl, bc
	ld a, [hl]
	ldh [$e8], a
	call Call_000_3617
	ldh a, [$e8]
	ldh [hLoadedROMBank], a
	ld [$2000], a
	pop bc
	pop hl
	ret


Call_000_2ceb:
	ld a, $1e
	ld [wd0ff], a
	ld hl, wd6af
	ld a, [hl]
	or $26
	ld [hl], a
	ret


Call_000_2cf8:
	ld hl, wd6a7
	res 0, [hl]
	ret


	ld b, $05
	ld hl, $23ae
	call Bankswitch
	jp PlayDefaultMusic


	ld b, a
	ldh a, [hLoadedROMBank]
	push af
	ld a, [wcf0d]
	ldh [hLoadedROMBank], a
	ld [$2000], a
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
	ld [$2000], a
	ret

DrawHPBar::
	push hl
	push de
	push bc
	ld a, $71
	ld [hli], a
	ld a, $62
	ld [hli], a
	push hl
	ld a, $63

jr_000_2d38:
	ld [hli], a
	dec d
	jr nz, jr_000_2d38

	ld a, [wcf7b]
	dec a
	ld a, $6d
	jr z, jr_000_2d45

	dec a

jr_000_2d45:
	ld [hl], a
	pop hl
	ld a, e
	and a
	jr nz, jr_000_2d51

	ld a, c
	and a
	jr z, jr_000_2d64

	ld e, $01

jr_000_2d51:
	ld a, e
	sub $08
	jr c, jr_000_2d60

	ld e, a
	ld a, $6b
	ld [hli], a
	ld a, e
	and a
	jr z, jr_000_2d64

	jr jr_000_2d51

jr_000_2d60:
	ld a, $63
	add e
	ld [hl], a

jr_000_2d64:
	pop bc
	pop de
	pop hl
	ret


Call_000_2d68:
	ld hl, $75c1
	ld b, $01
	jp Jump_000_3620

OverwriteMoves::
	ld hl, wd0b9
	ld e, b
	ld d, $00
	add hl, de
	ld a, c
	ld [hl], a
	ret


	ld a, $01
	ld [wSpriteFlipped], a
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
	jr z, jr_000_2d9d

	cp $98
	jr c, jr_000_2da3

jr_000_2d9d:
	ld a, $01
	ld [wcf78], a
	ret


jr_000_2da3:
	push hl
	ld de, $9000
	call Call_000_3034
	pop hl
	ldh a, [hLoadedROMBank]
	push af
	ld a, $0f
	ldh [hLoadedROMBank], a
	ld [$2000], a
	xor a
	ld [$ffe1], a
	call $73c5
	xor a
	ld [wSpriteFlipped], a
	pop af
	ldh [hLoadedROMBank], a
	ld [$2000], a
	ret


PlayCry::
	call GetCryData
	call PlaySound
	jp WaitForSoundToFinish

GetCryData::
	dec a
	ld c, a
	ld b, $00
	ld hl, $541e
	add hl, bc
	add hl, bc
	add hl, bc
	ld a, $0e
	call Call_000_3606
	ld a, [hli]
	ld b, a
	ld a, [hli]
	ld [wc0f1], a
	ld a, [hl]
	ld [wc0f2], a
	call Call_000_3617
	ld a, b
	ld c, $14
	rlca
	add b
	add c
	ret


	ldh a, [$d7]
	push af
	xor a
	ldh [$d7], a
	call Call_000_3e04
	call ClearSprites
	call Call_000_2e17
	call Call_000_2ecb
	jp Jump_000_2e51


	ldh a, [$d7]
	push af
	xor a
	ldh [$d7], a
	call Call_000_2e17
	call Call_000_2ed0
	jp Jump_000_2e51


Call_000_2e17:
	ld a, $01
	call Call_000_3606
	call Call_000_370a
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
	jr z, jr_000_2e3f

	dec a

jr_000_2e3f:
	ld [hli], a
	ld a, [wd0e4]
	and a
	ld a, $03
	jr z, jr_000_2e4d

	xor a
	ld [wd0e4], a
	inc a

jr_000_2e4d:
	ld [hli], a
	pop af
	ld [hl], a
	ret


Jump_000_2e51:
jr_000_2e51:
	ld a, $01
	ld [wcc4a], a
	ld a, $40
	ld [wd078], a
	call Call_000_3b0c
	call Call_000_3c1c
	ld b, a
	xor a
	ld [wd078], a
	ld a, [wcc26]
	ld [wcc2b], a
	ld hl, wd6af
	res 6, [hl]
	ld a, [wcc35]
	and a
	jp nz, Jump_000_2ea3

	pop af
	ldh [$d7], a
	bit 1, b
	jr nz, jr_000_2e9e

	ld a, [wd123]
	and a
	jr z, jr_000_2e9e

	ld a, [wcc26]
	ld [wcf79], a
	ld hl, wd124
	ld b, $00
	ld c, a
	add hl, bc
	ld a, [hl]
	ld [wcf78], a
	ld [wcfc0], a
	call Call_000_3617
	and a
	ret


jr_000_2e9e:
	call Call_000_3617
	scf
	ret


Jump_000_2ea3:
	bit 1, b
	jr z, jr_000_2ebb

	ld b, $04
	ld hl, $5dd1
	call Bankswitch
	xor a
	ld [wcc35], a
	ld [wd05a], a
	call Call_000_2ed0
	jr jr_000_2e51

jr_000_2ebb:
	ld a, [wcc26]
	ld [wcf79], a
	ld b, $04
	ld hl, $6116
	call Bankswitch
	jr jr_000_2e51

Call_000_2ecb:
	ld hl, $7a0c
	jr jr_000_2ed3

Call_000_2ed0:
	ld hl, $7a1d

jr_000_2ed3:
	ld b, $04
	jp Jump_000_3620


	push de
	dec de
	dec de
	ld a, [de]
	ld b, a
	dec de
	ld a, [de]
	or b
	pop de
	jr nz, jr_000_2eed

	ld a, $cb
	ld [hli], a
	ld a, $de
	ld [hli], a
	ld [hl], $bc
	and a
	ret


jr_000_2eed:
	ldh a, [hLoadedROMBank]
	push af
	ld a, $1e
	ldh [hLoadedROMBank], a
	ld [$2000], a
	call $4000
	pop bc
	ld a, b
	ldh [hLoadedROMBank], a
	ld [$2000], a
	ret


Call_000_2f02:
	ld a, $6e
	ld [hli], a
	ld c, $02
	ld a, [wcfa0]
	cp $64
	jr c, jr_000_2f1a

	dec hl
	inc c
	jr jr_000_2f1a

	ld a, $6e
	ld [hli], a
	ld c, $03
	ld a, [wcfa0]

jr_000_2f1a:
	ld [wd0e3], a
	ld de, wd0e3
	ld b, $41
	jp Jump_000_3c8f


	ld hl, wd0b9
	ld c, a
	ld b, $00
	add hl, bc
	ld a, [hl]
	ret


	ldh a, [hLoadedROMBank]
	push af
	ld a, $0e
	ldh [hLoadedROMBank], a
	ld [$2000], a
	push bc
	push de
	push hl
	ld a, [wd0e3]
	push af
	ld a, [wd092]
	ld [wd0e3], a
	ld de, $64c7
	ld b, $66
	cp $b6
	jr z, jr_000_2f7f

	ld de, $67ad
	cp $b8
	jr z, jr_000_2f7f

	ld de, $6624
	ld b, $77
	cp $b7
	jr z, jr_000_2f7f

	cp $15
	jr z, jr_000_2f89

	ld a, $3a
	call Predef
	ld a, [wd0e3]
	dec a
	ld bc, $001c
	ld hl, $4000
	call Call_000_3ad1
	ld de, wd095
	ld bc, $001c
	call CopyBytes
	jr jr_000_2f97

jr_000_2f7f:
	ld hl, wd09f
	ld [hl], b
	inc hl
	ld [hl], e
	inc hl
	ld [hl], d
	jr jr_000_2f97

jr_000_2f89:
	ld hl, $4200
	ld de, wd095
	ld bc, $001c
	ld a, $01
	call CopyFarBytes

jr_000_2f97:
	ld a, [wd092]
	ld [wd095], a
	pop af
	ld [wd0e3], a
	pop hl
	pop de
	pop bc
	pop af
	ldh [hLoadedROMBank], a
	ld [$2000], a
	ret


	ld a, [wcf79]
	ld hl, wd257

Call_000_2fb1:
	push hl
	push bc
	call Call_000_3ac7
	ld de, wcd68
	push de
	ld bc, $0006
	call CopyBytes
	pop de
	pop bc
	pop hl
	ret


Call_000_2fc4:
	ld b, c
	res 7, c
	res 6, c

jr_000_2fc9:
	ld a, [de]
	swap a
	call Call_000_2fe7
	ld a, [de]
	call Call_000_2fe7
	inc de
	dec c
	jr nz, jr_000_2fc9

	bit 7, b
	jr z, jr_000_2fe6

	bit 6, b
	jr nz, jr_000_2fe0

	dec hl

jr_000_2fe0:
	ld [hl], $f6
	call Call_000_391d
	inc hl

jr_000_2fe6:
	ret


Call_000_2fe7:
	and $0f
	and a
	jr z, jr_000_2ff4

	res 7, b

jr_000_2fee:
	add $f6
	ld [hli], a
	jp Jump_000_391d


jr_000_2ff4:
	bit 7, b
	jr z, jr_000_2fee

	bit 6, b
	ret nz

	inc hl
	ret


Call_000_2ffd:
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
	jr z, jr_000_3031

	ld a, b
	cp $1f
	ld a, $09
	jr c, jr_000_3031

	ld a, b
	cp $4a
	ld a, $0a
	jr c, jr_000_3031

	ld a, b
	cp $75
	ld a, $0b
	jr c, jr_000_3031

	ld a, b
	cp $9a
	ld a, $0c
	jr c, jr_000_3031

	ld a, $0d

jr_000_3031:
	jp DecompressSpriteData


Call_000_3034:
	push de
	ld hl, $000b
	call Call_000_2ffd
	ld hl, wd09f
	ld a, [hli]
	ld c, a
	pop de
	push de
	and $0f
	ldh [$8b], a
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
	ldh [$8d], a
	ld a, c
	swap a
	and $0f
	ld b, a
	add a
	add a
	add a
	ldh [$8c], a
	ld a, $07
	sub b
	ld b, a
	ldh a, [$8d]
	add b
	add a
	add a
	add a
	ldh [$8d], a
	xor a
	ld [$4000], a
	ld hl, $a000
	call Call_000_30ae
	ld de, $a188
	ld hl, $a000
	call Call_000_3091
	ld hl, $a188
	call Call_000_30ae
	ld de, $a310
	ld hl, $a188
	call Call_000_3091
	pop de
	jp Jump_000_30b9


Call_000_3091:
	ldh a, [$8d]
	ld b, $00
	ld c, a
	add hl, bc
	ldh a, [$8b]

jr_000_3099:
	push af
	push hl
	ldh a, [$8c]
	ld c, a

jr_000_309e:
	ld a, [de]
	inc de
	ld [hli], a
	dec c
	jr nz, jr_000_309e

	pop hl
	ld bc, $0038
	add hl, bc
	pop af
	dec a
	jr nz, jr_000_3099

	ret


Call_000_30ae:
	ld bc, $0188

jr_000_30b1:
	xor a
	ld [hli], a
	dec bc
	ld a, b
	or c
	jr nz, jr_000_30b1

	ret


Jump_000_30b9:
	xor a
	ld [$4000], a
	push de
	ld hl, $a497
	ld de, $a30f
	ld bc, $a187
	ld a, $c4
	ldh [$8b], a

jr_000_30cb:
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
	ldh a, [$8b]
	dec a
	ldh [$8b], a
	jr nz, jr_000_30cb

	ld a, [wSpriteFlipped]
	and a
	jr z, jr_000_30f2

	ld bc, $0310
	ld hl, $a188

jr_000_30ea:
	swap [hl]
	inc hl
	dec bc
	ld a, b
	or c
	jr nz, jr_000_30ea

jr_000_30f2:
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
	jp Jump_000_3620


	ldh a, [hLoadedROMBank]
	push af
	ld a, $03
	ldh [hLoadedROMBank], a
	ld [$2000], a
	call $69c4
	pop de
	ld a, d
	ldh [hLoadedROMBank], a
	ld [$2000], a
	ret


Call_000_3121:
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


Call_000_3130:
Jump_000_3130:
	ldh a, [hLoadedROMBank]
	push af
	ld a, $01
	ldh [hLoadedROMBank], a
	ld [$2000], a
	call $766c
	pop bc
	ld a, b
	ldh [hLoadedROMBank], a
	ld [$2000], a
	ret


Call_000_3145:
	ld a, [wcc57]
	and a
	ret nz

	ld a, [wd6b5]
	bit 1, a
	ret nz

	ld a, [wd6af]
	and $80
	ret


Call_000_3156:
	ld hl, wd6b5
	bit 0, [hl]
	res 0, [hl]
	jr nz, jr_000_318e

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
	ld [$2000], a
	ld a, [wcf0b]
	call Call_000_3dc7
	pop af
	ldh [hLoadedROMBank], a
	ld [$2000], a
	ret


	db $fa, $7c

	ret z

	ld a, l
	dec [hl]
	ld a, [hl]

jr_000_318e:
	ld b, $06
	ld hl, $7c98
	jp Jump_000_3620


	ld b, $06
	ld hl, $7cd5
	jp Jump_000_3620


	ret


Call_000_319f:
	ld a, h
	ld [wd973], a
	ld a, l
	ld [wd974], a
	ret


	push af
	push de
	call Call_000_319f
	pop hl
	pop af
	push hl
	ld hl, wd6b2
	bit 4, [hl]
	res 4, [hl]
	jr z, jr_000_31bc

	ld a, [wd97c]

jr_000_31bc:
	pop hl
	ld [wd97c], a
	call Call_000_3dc7
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


Call_000_31db:
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
	jr nz, jr_000_31f1

	ld a, [hl]
	ld [wcc55], a
	jr jr_000_320d

jr_000_31f1:
	cp $02
	jr z, jr_000_320a

	cp $04
	jr z, jr_000_320a

	cp $06
	jr z, jr_000_320a

	cp $08
	jr z, jr_000_320a

	cp $0a
	jr nz, jr_000_320d

	ld a, [hli]
	ld d, [hl]
	ld e, a
	jr jr_000_320d

jr_000_320a:
	ld a, [hli]
	ld h, [hl]
	ld l, a

jr_000_320d:
	pop de
	ret


Call_000_320f:
	ld a, $10
	jp Predef


	call Call_000_319f
	xor a
	call Call_000_31db
	ld a, $02
	call Call_000_31db
	ld a, [wcc55]
	ld c, a
	ld b, $02
	call Call_000_320f
	ld a, c
	and a
	jr z, jr_000_3235

	ld a, $06
	call Call_000_31db
	jp Jump_000_3c79


jr_000_3235:
	ld a, $04
	call Call_000_31db
	call Call_000_3c79

	ld a, $0a
	call Call_000_31db
	push de
	ld a, $08
	call Call_000_31db
	pop de
	call Call_000_339c
	ld hl, wd6b2
	set 4, [hl]
	ld hl, wcd5b
	bit 0, [hl]
	ret nz

	call Call_000_33b2
	ld hl, wd97c
	inc [hl]
	jp Jump_000_32a5


	call Call_000_334e
	ld a, [wcf0e]
	cp $ff
	jr nz, jr_000_3273

	xor a
	ld [wcf0e], a
	ld [wcc55], a
	ret


jr_000_3273:
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
	ldh [$b4], a
	call Call_000_3317
	ld hl, wd97c
	inc [hl]
	ret


	ld a, [wd6af]
	and $01
	ret nz

	ld [wcd66], a
	ld a, [wcf0e]
	ldh [$8c], a
	call Call_000_13f1

Jump_000_32a5:
	xor a
	ld [wcd66], a
	call Call_000_331f
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
	jp z, Jump_000_3309

	ld a, $02
	call Call_000_31db
	ld a, [wcc55]
	ld c, a
	ld b, $01
	call Call_000_320f
	ld a, [wd692]
	cp $c8
	jr nc, jr_000_3301

	ld hl, wd54d
	ld de, $0002
	ld a, [wcf0e]
	call Call_000_3ddb
	inc hl
	ld a, [hl]
	ld [wcc4d], a
	ld a, $11
	call Predef

jr_000_3301:
	ld hl, wd6af
	bit 4, [hl]
	res 4, [hl]
	ret nz

Jump_000_3309:
	xor a
	ld [wcd66], a
	ldh [$b4], a
	ldh [$b3], a
	ldh [$b2], a
	ld [wd97c], a
	ret


Call_000_3317:
	ld b, $15
	ld hl, $7e2b
	jp Jump_000_3620


Call_000_331f:
	ld a, [wcd2d]
	ld [wd036], a
	ld [wd692], a
	cp $c8
	ld a, [wcd2e]
	jr c, jr_000_3333

	ld [wd03a], a
	ret


jr_000_3333:
	ld [wd0ec], a
	ret


	ld hl, $7da3
	jr jr_000_3349

	ld hl, $7dc3
	jr jr_000_3349

	ld hl, $7de7
	jr jr_000_3349

	ld hl, $7e07

jr_000_3349:
	ld b, $15
	jp Jump_000_3620


Call_000_334e:
	xor a
	call Call_000_31db
	ld d, h
	ld e, l

jr_000_3354:
	call Call_000_319f
	ld a, [de]
	ld [wcf0e], a
	ld [wcc55], a
	cp $ff
	ret z

	ld a, $02
	call Call_000_31db
	ld b, $02
	ld a, [wcc55]
	ld c, a
	call Call_000_320f
	ld a, c
	and a
	jr nz, jr_000_3394

	push hl
	push de
	push hl
	xor a
	call Call_000_31db
	inc hl
	ld a, [hl]
	pop hl
	ld [wcd3e], a
	ld a, [wcf0e]
	swap a
	ld [wcd3d], a
	ld a, $39
	call Predef
	pop de
	pop hl
	ld a, [wcd3d]
	and a
	ret nz

jr_000_3394:
	ld hl, $000c
	add hl, de
	ld d, h
	ld e, l
	jr jr_000_3354

Call_000_339c:
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


Call_000_33b2:
	ld hl, wd483
	ld d, $00
	ld a, [wcf0e]
	dec a
	add a
	ld e, a
	add hl, de
	ld a, [hli]
	ld [wcd2d], a
	ld a, [hl]
	ld [wcd2e], a
	jp Jump_000_3432


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
	ld [$2000], a
	push hl
	ld b, $09
	ld hl, $7eb2
	call Bankswitch
	ld hl, $3417
	call Call_000_3c79
	pop hl
	pop af
	ldh [hLoadedROMBank], a
	ld [$2000], a
	ld b, $06
	ld hl, $7e9f
	call Bankswitch
	jp WaitForSoundToFinish


Call_000_33ff:
	ld a, [wcf06]
	and a
	jr nz, jr_000_340e

	ld a, [wd069]
	ld h, a
	ld a, [wd06a]
	ld l, a
	ret


jr_000_340e:
	ld a, [wd06b]
	ld h, a
	ld a, [wd06c]
	ld l, a
	ret


	db $01, $68, $cd, $00, $72, $50, $08

	call Call_000_33ff
	call Call_000_05f1
	jp TextScriptEnd


	ld a, [wcd5b]
	bit 0, a
	ret nz

	call Call_000_33b2
	xor a
	ret


Jump_000_3432:
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

jr_000_345b:
	ld a, [hli]
	cp $ff
	jr z, jr_000_3467

	cp b
	jr nz, jr_000_345b

	ld a, $f6
	jr jr_000_3478

jr_000_3467:
	ld hl, $347e

jr_000_346a:
	ld a, [hli]
	cp $ff
	jr z, jr_000_3476

	cp b
	jr nz, jr_000_346a

	ld a, $f9
	jr jr_000_3478

jr_000_3476:
	ld a, $fc

jr_000_3478:
	ld [wNewSoundID], a
	jp PlaySound


	db $cb, $ce, $da, $e8, $ff, $d5, $d9, $dc, $dd, $e3, $e4, $e5, $e6, $ff

jr_000_348c:
	ld a, [hli]
	cp $ff
	ret z

	cp b
	jr nz, jr_000_34a5

	ld a, [hli]
	cp c
	jr nz, jr_000_34a6

	ld a, [hli]
	ld d, [hl]
	ld e, a
	ld hl, wccd3
	call Call_000_3556
	dec a
	ld [wcd38], a
	ret


jr_000_34a5:
	inc hl

jr_000_34a6:
	inc hl
	inc hl
	jr jr_000_348c

Jump_000_34aa:
	call Call_000_373e
	ld b, $01
	ld hl, $7bf8
	jr jr_000_34c3

Jump_000_34b4:
	call Call_000_373e
	ld b, $08
	ld hl, $40ef
	jr jr_000_34c3

Jump_000_34be:
	ld b, $14
	ld hl, $7ab3

jr_000_34c3:
	call Bankswitch
	jp Jump_000_14b1


Jump_000_34c9:
	ld b, $05
	ld hl, $7e34
	jr jr_000_34c3

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
	jp Jump_000_3620


	call Call_000_34f8
	ld c, $06
	jp Jump_000_3781


Call_000_34f8:
	ld a, $09
	ldh [$8b], a
	call Call_000_3546
	ldh a, [$8d]
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

Jump_000_3511:
	xor a
	ld [wcd3d], a

jr_000_3515:
	ld a, [hli]
	cp $ff
	jr z, jr_000_352c

	push hl
	ld hl, wcd3d
	inc [hl]
	pop hl
	cp b
	jr z, jr_000_3526

	inc hl
	jr jr_000_3515

jr_000_3526:
	ld a, [hli]
	cp c
	jr nz, jr_000_3515

	scf
	ret


jr_000_352c:
	and a
	ret


	push hl
	ld hl, $c204
	ldh a, [$8c]
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
	jp Jump_000_3511


Call_000_3546:
	ld h, $c1
	jr jr_000_354c

	ld h, $c2

jr_000_354c:
	ldh a, [$8b]
	ld b, a
	ldh a, [$8c]
	swap a
	add b
	ld l, a
	ret


Call_000_3556:
	xor a
	ld [wccd2], a

jr_000_355a:
	ld a, [de]
	cp $ff
	jr z, jr_000_3575

	ldh [$8b], a
	inc de
	ld a, [de]
	ld b, $00
	ld c, a
	ld a, [wccd2]
	add c
	ld [wccd2], a
	ldh a, [$8b]
	call ByteFill
	inc de
	jr jr_000_355a

jr_000_3575:
	ld a, $ff
	ld [hl], a
	ld a, [wccd2]
	inc a
	ret


	push hl
	call Call_000_3598
	ld [hl], $fe
	call Call_000_35a2
	ldh a, [$8d]
	ld [hl], a
	pop hl
	ret


Call_000_358b:
	push hl
	call Call_000_3598
	ld [hl], $ff
	call Call_000_35a2
	ld [hl], $ff
	pop hl
	ret


Call_000_3598:
	ld h, $c2
	ldh a, [$8c]
	swap a
	add $06
	ld l, a
	ret


Call_000_35a2:
	push de
	ld hl, wd463
	ldh a, [$8c]
	dec a
	add a
	ld d, $00
	ld e, a
	add hl, de
	pop de
	ret


	call Call_000_35e8
	ld a, [wd0f0]
	and a
	jr nz, jr_000_35de

	ld a, $0e
	call Call_000_3606
	ld a, [wd018]
	dec a
	ld hl, $5c31
	ld bc, $0005
	call Call_000_3ad1
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
	jp Jump_000_3617


jr_000_35de:
	ld hl, wd01a
	ld de, $5941
	ld [hl], e
	inc hl
	ld [hl], d
	ret


Call_000_35e8:
	ld b, $04
	ld hl, $7fb3
	jp Jump_000_3620


	ld de, wd2cb
	ld hl, $ff9f
	ld c, $03
	jp Jump_000_3ad8


	ld de, wd523
	ld hl, $ffa0
	ld c, $02
	jp Jump_000_3ad8


Call_000_3606:
	ld [wcf04], a
	ldh a, [hLoadedROMBank]
	ld [wcf03], a
	ld a, [wcf04]
	ldh [hLoadedROMBank], a
	ld [$2000], a
	ret


Call_000_3617:
Jump_000_3617:
	ld a, [wcf03]
	ldh [hLoadedROMBank], a
	ld [$2000], a
	ret


Bankswitch:
Jump_000_3620:
	ldh a, [hLoadedROMBank]
	push af
	ld a, b
	ldh [hLoadedROMBank], a
	ld [$2000], a
	ld bc, $362e
	push bc
	jp hl


	pop bc
	ld a, b
	ldh [hLoadedROMBank], a
	ld [$2000], a
	ret


	call Call_000_3761
	call Call_000_3649
	jr jr_000_3672

	ld a, $14
	ld [wd0ea], a
	call Call_000_3649
	jp Jump_000_3130


Call_000_3649:
	xor a
	ld [wd0f1], a
	ld hl, wc43a
	ld bc, $080f
	ret


	call Call_000_3761
	ld a, $06
	ld [wd0f1], a
	ld hl, wc425
	ld bc, $080e
	jr jr_000_3672

	call Call_000_3761
	ld a, $03
	ld [wd0f1], a
	ld hl, wc438
	ld bc, $080d

jr_000_3672:
	ld a, $14
	ld [wd0ea], a
	call Call_000_3130
	jp Jump_000_376d


	sub b
	ret nc

	cpl
	add $01
	scf
	ret


	call Call_000_358b
	push hl
	push bc
	call Call_000_3598
	xor a
	ld [hl], a
	ld hl, wcc5b
	ld c, $00

jr_000_3693:
	ld a, [de]
	ld [hli], a
	inc de
	inc c
	cp $ff
	jr nz, jr_000_3693

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
	jr z, jr_000_36c8

	ld a, [hli]

jr_000_36c0:
	sub [hl]
	jr c, jr_000_36c8

	inc hl
	inc [hl]
	dec hl
	jr jr_000_36c0

jr_000_36c8:
	pop hl
	ret


Call_000_36ca:
	ldh a, [rLCDC]
	bit 7, a
	jr nz, jr_000_36de

	ld hl, $4b19
	ld de, $8800
	ld bc, $0400
	ld a, $04
	jp CopyFarBytesDouble


jr_000_36de:
	ld de, $4b19
	ld hl, $8800
	ld bc, $0480
	jp CopyVideoDataDouble


Call_000_36ea:
	ldh a, [rLCDC]
	bit 7, a
	jr nz, jr_000_36fe

	ld hl, $52f1
	ld de, $9600
	ld bc, $0200
	ld a, $04
	jp CopyFarBytes2


jr_000_36fe:
	ld de, $52f1
	ld hl, $9600
	ld bc, $0420
	jp CopyVideoData


Call_000_370a:
	ldh a, [rLCDC]
	bit 7, a
	jr nz, jr_000_371e

	ld hl, $4f39
	ld de, $9620
	ld bc, $01e0
	ld a, $04
	jp CopyFarBytes2


jr_000_371e:
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


Call_000_373e:
	ld hl, wc3a0
	ld de, wcd7c
	ld bc, $0168
	jp CopyBytes


Call_000_374a:
	call Call_000_3752
	ld a, $01
	ldh [$ba], a
	ret


Call_000_3752:
	xor a
	ldh [$ba], a
	ld hl, wcd7c
	ld de, wc3a0
	ld bc, $0168
	jp CopyBytes


Call_000_3761:
	ld hl, wc3a0
	ld de, wc508
	ld bc, $0168
	jp CopyBytes


Jump_000_376d:
	xor a
	ldh [$ba], a
	ld hl, wc508
	ld de, wc3a0
	ld bc, $0168
	call CopyBytes
	ld a, $01
	ldh [$ba], a
	ret


DelayFrames:
Jump_000_3781:
jr_000_3781:
	call DelayFrame
	dec c
	jr nz, jr_000_3781

	ret


Call_000_3788:
	push af
	call WaitForSoundToFinish
	pop af
	jp PlaySound


WaitForSoundToFinish::
	ld a, [wd060]
	and $80
	ret nz

	push hl

jr_000_3797:
	ld hl, wc02a
	xor a
	or [hl]
	inc hl
	or [hl]
	inc hl
	inc hl
	or [hl]
	jr nz, jr_000_3797

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

Call_000_37b3:
	ld a, [wd092]
	ld [wd0e3], a
	cp $c4
	jp nc, Jump_000_1b01

	ldh a, [hLoadedROMBank]
	push af
	push hl
	push bc
	push de
	ld a, [wd093]
	dec a
	jr nz, jr_000_37d5

	call Call_000_1aab
	ld hl, $0006
	add hl, de
	ld e, l
	ld d, h
	jr jr_000_3815

jr_000_37d5:
	ld a, [wd094]
	ldh [hLoadedROMBank], a
	ld [$2000], a
	ld a, [wd093]
	dec a
	add a
	ld d, $00
	ld e, a
	jr nc, jr_000_37e8

	inc d

jr_000_37e8:
	ld hl, $37a5
	add hl, de
	ld a, [hli]
	ldh [$96], a
	ld a, [hl]
	ldh [$95], a
	ldh a, [$95]
	ld h, a
	ldh a, [$96]
	ld l, a
	ld a, [wd092]
	ld b, a
	ld c, $00

jr_000_37fe:
	ld d, h
	ld e, l

jr_000_3800:
	ld a, [hli]
	cp $50
	jr nz, jr_000_3800

	inc c
	ld a, b
	cp c
	jr nz, jr_000_37fe

	ld h, d
	ld l, e
	ld de, wcd68
	ld bc, $0014
	call CopyBytes

jr_000_3815:
	ld a, e
	ld [wcf74], a
	ld a, d
	ld [wcf75], a
	pop de
	pop bc
	pop hl
	pop af
	ldh [hLoadedROMBank], a
	ld [$2000], a
	ret


Call_000_3827:
	ldh a, [hLoadedROMBank]
	push af
	ld a, [wcf7b]
	cp $01
	ld a, $01
	jr nz, jr_000_3835

	ld a, $0f

jr_000_3835:
	ldh [hLoadedROMBank], a
	ld [$2000], a
	ld hl, wcf76
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, [wcf78]
	cp $c4
	jr nc, jr_000_385a

	ld bc, $0003

jr_000_384a:
	add hl, bc
	dec a
	jr nz, jr_000_384a

	dec hl
	ld a, [hld]
	ldh [$8d], a
	ld a, [hld]
	ldh [$8c], a
	ld a, [hl]
	ldh [$8b], a
	jr jr_000_3864

jr_000_385a:
	ld a, $1e
	ldh [hLoadedROMBank], a
	ld [$2000], a
	call $7fb2

jr_000_3864:
	ld de, $ff8b
	pop af
	ldh [hLoadedROMBank], a
	ld [$2000], a
	ret


Call_000_386e:
	ld hl, wcf45

jr_000_3871:
	ld a, [de]
	inc de
	ld [hli], a
	cp $50
	jr nz, jr_000_3871

	ret


Call_000_3879:
	call Call_000_0153
	ld a, [$ffb7]
	and a
	ldh a, [$b3]
	jr z, jr_000_3886

	ldh a, [$b4]

jr_000_3886:
	ldh [$b5], a
	ldh a, [$b3]
	and a
	jr z, jr_000_3892

	ld a, $1e
	ldh [$d5], a
	ret


jr_000_3892:
	ldh a, [$d5]
	and a
	jr z, jr_000_389b

	xor a
	ldh [$b5], a
	ret


jr_000_389b:
	ldh a, [$b4]
	and $03
	jr z, jr_000_38a9

	ldh a, [$b6]
	and a
	jr nz, jr_000_38a9

	xor a
	ldh [$b5], a

jr_000_38a9:
	ld a, $05
	ldh [$d5], a
	ret


Call_000_38ae:
	ldh a, [$8b]
	push af
	ldh a, [$8c]
	push af
	xor a
	ldh [$8b], a
	ld a, $06
	ldh [$8c], a

jr_000_38bb:
	push hl
	ld a, [wd078]
	and a
	jr z, jr_000_38c5

	call $5b8a

jr_000_38c5:
	ld hl, wc4f2
	call Call_000_3c34
	pop hl
	call Call_000_3879
	ld a, $2d
	call Predef
	ldh a, [$b5]
	and $03
	jr z, jr_000_38bb

	pop af
	ldh [$8c], a
	pop af
	ldh [$8b], a
	ret


Call_000_38e1:
	ld a, [wd0f0]
	cp $04
	jr z, jr_000_38f0

	call Call_000_38ae
	ld a, $90
	jp PlaySound


jr_000_38f0:
	ld c, $41
	jp Jump_000_3781


Call_000_38f5:
	push hl
	push bc
	ld hl, $7e73
	ld b, $0d
	call Bankswitch
	pop bc
	pop hl
	ret


Call_000_3902:
	push hl
	push de
	push bc
	ld a, [$ffb8]
	push af
	ld a, $0d
	ldh [hLoadedROMBank], a
	ld [$2000], a
	call $7ed7
	pop af
	ldh [hLoadedROMBank], a
	ld [$2000], a
	pop bc
	pop de
	pop hl
	ret


Call_000_391d:
Jump_000_391d:
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
	jr z, jr_000_393c

	ld a, [wd2d4]
	and $0f
	ldh [$d5], a
	jr jr_000_3940

jr_000_393c:
	ld a, $01
	ldh [$d5], a

jr_000_3940:
	call Call_000_0153
	ldh a, [$b4]
	bit 0, a
	jr z, jr_000_394b

	jr jr_000_394f

jr_000_394b:
	bit 1, a
	jr z, jr_000_3954

jr_000_394f:
	call DelayFrame
	jr jr_000_3959

jr_000_3954:
	ldh a, [$d5]
	and a
	jr nz, jr_000_3940

jr_000_3959:
	pop bc
	pop de
	pop hl
	ret


jr_000_395d:
	ld a, [hli]
	ld [de], a
	inc de
	ld a, h
	cp b
	jr nz, jr_000_395d

	ld a, l
	cp c
	jr nz, jr_000_395d

	ret


	ld hl, $7f19
	ld b, $01
	jp Jump_000_3620


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

jr_000_3982:
	inc c
	call Call_000_3994
	ldh a, [$97]
	ld [de], a
	inc de
	ldh a, [$98]
	ld [de], a
	inc de
	ld a, c
	cp $05
	jr nz, jr_000_3982

	ret


Call_000_3994:
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
	jr z, jr_000_39c9

	add hl, bc

jr_000_39ab:
	xor a
	ldh [$96], a
	ldh [$97], a
	inc b
	ld a, b
	cp $ff
	jr z, jr_000_39c9

	ldh [$98], a
	ldh [$99], a
	call Call_000_38f5
	ld a, [hld]
	ld d, a
	ldh a, [$98]
	sub d
	ld a, [hli]
	ld d, a
	ldh a, [$97]
	sbc d
	jr c, jr_000_39ab

jr_000_39c9:
	srl c
	pop hl
	push bc
	ld bc, $000b
	add hl, bc
	pop bc
	ld a, c
	cp $02
	jr z, jr_000_3a09

	cp $03
	jr z, jr_000_3a10

	cp $04
	jr z, jr_000_3a15

	cp $05
	jr z, jr_000_3a1d

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
	jr jr_000_3a21

jr_000_3a09:
	ld a, [hl]
	swap a
	and $0f
	jr jr_000_3a21

jr_000_3a10:
	ld a, [hl]
	and $0f
	jr jr_000_3a21

jr_000_3a15:
	inc hl
	ld a, [hl]
	swap a
	and $0f
	jr jr_000_3a21

jr_000_3a1d:
	inc hl
	ld a, [hl]
	and $0f

jr_000_3a21:
	ld d, $00
	add e
	ld e, a
	jr nc, jr_000_3a28

	inc d

jr_000_3a28:
	sla e
	rl d
	srl b
	srl b
	ld a, b
	add e
	jr nc, jr_000_3a35

	inc d

jr_000_3a35:
	ldh [$98], a
	ld a, d
	ldh [$97], a
	xor a
	ldh [$96], a
	ld a, [wd0ec]
	ldh [$99], a
	call Call_000_38f5
	ldh a, [$96]
	ldh [$95], a
	ldh a, [$97]
	ldh [$96], a
	ldh a, [$98]
	ldh [$97], a
	ld a, $64
	ldh [$99], a
	ld a, $03
	ld b, a
	call Call_000_3902
	ld a, c
	cp $01
	ld a, $05
	jr nz, jr_000_3a74

	ld a, [wd0ec]
	ld b, a
	ldh a, [$98]
	add b
	ldh [$98], a
	jr nc, jr_000_3a72

	ldh a, [$97]
	inc a
	ldh [$97], a

jr_000_3a72:
	ld a, $0a

jr_000_3a74:
	ld b, a
	ldh a, [$98]
	add b
	ldh [$98], a
	jr nc, jr_000_3a81

	ldh a, [$97]
	inc a
	ldh [$97], a

jr_000_3a81:
	ldh a, [$97]
	cp $04
	jr nc, jr_000_3a91

	cp $03
	jr c, jr_000_3a99

	ldh a, [$98]
	cp $e8
	jr c, jr_000_3a99

jr_000_3a91:
	ld a, $03
	ldh [$97], a
	ld a, $e7
	ldh [$98], a

jr_000_3a99:
	pop bc
	pop de
	pop hl
	ret


	ldh a, [hLoadedROMBank]
	push af
	ld a, $03
	ldh [hLoadedROMBank], a
	ld [$2000], a
	call $77d3
	pop bc
	ld a, b
	ldh [hLoadedROMBank], a
	ld [$2000], a
	ret


	ldh a, [hLoadedROMBank]
	push af
	ld a, $03
	ldh [hLoadedROMBank], a
	ld [$2000], a
	call $7854
	pop bc
	ld a, b
	ldh [hLoadedROMBank], a
	ld [$2000], a
	ret


Call_000_3ac7:
	and a
	ret z

	ld bc, $0006

jr_000_3acc:
	add hl, bc
	dec a
	jr nz, jr_000_3acc

	ret


Call_000_3ad1:
	and a
	ret z

jr_000_3ad3:
	add hl, bc
	dec a
	jr nz, jr_000_3ad3

	ret


Jump_000_3ad8:
jr_000_3ad8:
	ld a, [de]
	cp [hl]
	ret nz

	inc de
	inc hl
	dec c
	jr nz, jr_000_3ad8

	ret


	ld h, $c3
	swap a
	ld l, a
	call Call_000_3afd
	push bc
	ld a, $08
	add c
	ld c, a
	call Call_000_3afd
	pop bc
	ld a, $08
	add b
	ld b, a
	call Call_000_3afd
	ld a, $08
	add c
	ld c, a

Call_000_3afd:
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


Call_000_3b08:
	xor a
	ld [wd078], a

Call_000_3b0c:
	ldh a, [$8b]
	push af
	ldh a, [$8c]
	push af
	xor a
	ldh [$8b], a
	ld a, $06
	ldh [$8c], a

Jump_000_3b19:
	xor a
	ld [wd068], a
	call Call_000_3bc6
	call Call_000_3e07

jr_000_3b23:
	push hl
	ld a, [wd078]
	and a
	jr z, jr_000_3b32

	ld b, $1c
	ld hl, $5bc3
	call Bankswitch

jr_000_3b32:
	pop hl
	call Call_000_3879
	ldh a, [$b5]
	and a
	jr nz, jr_000_3b56

	push hl
	ld hl, wc48e
	call Call_000_3c34
	pop hl
	ld a, [wcc34]
	dec a
	jr z, jr_000_3b4b

	jr jr_000_3b23

jr_000_3b4b:
	pop af
	ldh [$8c], a
	pop af
	ldh [$8b], a
	xor a
	ld [wcc4a], a
	ret


jr_000_3b56:
	xor a
	ld [wcc4b], a
	ldh a, [$b5]
	ld b, a
	bit 6, a
	jr z, jr_000_3b7b

	ld a, [wcc26]
	and a
	jr z, jr_000_3b6d

	dec a
	ld [wcc26], a
	jr jr_000_3b96

jr_000_3b6d:
	ld a, [wcc4a]
	and a
	jr z, jr_000_3bbe

	ld a, [wcc28]
	ld [wcc26], a
	jr jr_000_3b96

jr_000_3b7b:
	bit 7, a
	jr z, jr_000_3b96

	ld a, [wcc26]
	inc a
	ld c, a
	ld a, [wcc28]
	cp c
	jr nc, jr_000_3b92

	ld a, [wcc4a]
	and a
	jr z, jr_000_3bbe

	ld c, $00

jr_000_3b92:
	ld a, c
	ld [wcc26], a

jr_000_3b96:
	ld a, [wcc29]
	and b
	jp z, Jump_000_3b19

jr_000_3b9d:
	ldh a, [$b5]
	and $03
	jr z, jr_000_3bb1

	push hl
	ld hl, wcd5b
	bit 5, [hl]
	pop hl
	jr nz, jr_000_3bb1

	ld a, $90
	call PlaySound

jr_000_3bb1:
	pop af
	ldh [$8c], a
	pop af
	ldh [$8b], a
	xor a
	ld [wcc4a], a
	ldh a, [$b5]
	ret


jr_000_3bbe:
	ld a, [wcc37]
	and a
	jr z, jr_000_3b96

	jr jr_000_3b9d

Call_000_3bc6:
	ld a, [wcc24]
	and a
	jr z, jr_000_3bd6

	ld hl, wc3a0
	ld bc, $0014

jr_000_3bd2:
	add hl, bc
	dec a
	jr nz, jr_000_3bd2

jr_000_3bd6:
	ld a, [wcc25]
	ld b, $00
	ld c, a
	add hl, bc
	push hl
	ld a, [wcc2a]
	and a
	jr z, jr_000_3beb

	ld bc, $0028

jr_000_3be7:
	add hl, bc
	dec a
	jr nz, jr_000_3be7

jr_000_3beb:
	ld a, [hl]
	cp $ed
	jr nz, jr_000_3bf4

	ld a, [wcc27]
	ld [hl], a

jr_000_3bf4:
	pop hl
	ld a, [wcc26]
	and a
	jr z, jr_000_3c02

	ld bc, $0028

jr_000_3bfe:
	add hl, bc
	dec a
	jr nz, jr_000_3bfe

jr_000_3c02:
	ld a, [hl]
	cp $ed
	jr z, jr_000_3c0a

	ld [wcc27], a

jr_000_3c0a:
	ld a, $ed
	ld [hl], a
	ld a, l
	ld [wcc30], a
	ld a, h
	ld [wcc31], a
	ld a, [wcc26]
	ld [wcc2a], a
	ret


Call_000_3c1c:
	ld b, a
	ld a, [wcc30]
	ld l, a
	ld a, [wcc31]
	ld h, a
	ld [hl], $ec
	ld a, b
	ret


Call_000_3c29:
	ld a, [wcc30]
	ld l, a
	ld a, [wcc31]
	ld h, a
	ld [hl], $7f
	ret


Call_000_3c34:
	ld a, [hl]
	ld b, a
	ld a, $ee
	cp b
	jr nz, jr_000_3c53

	ldh a, [$8b]
	dec a
	ldh [$8b], a
	ret nz

	ldh a, [$8c]
	dec a
	ldh [$8c], a
	ret nz

	ld a, $7f
	ld [hl], a
	ld a, $ff
	ldh [$8b], a
	ld a, $06
	ldh [$8c], a
	ret


jr_000_3c53:
	ldh a, [$8b]
	and a
	ret z

	dec a
	ldh [$8b], a
	ret nz

	dec a
	ldh [$8b], a
	ldh a, [$8c]
	dec a
	ldh [$8c], a
	ret nz

	ld a, $06
	ldh [$8c], a
	ld a, $ee
	ld [hl], a
	ret


	xor a
	jr jr_000_3c71

	ld a, $01

jr_000_3c71:
	ld [wcf07], a
	xor a
	ld [wcc3c], a
	ret


Call_000_3c79:
Jump_000_3c79:
	push hl
	ld a, $01
	ld [wd0ea], a
	call Call_000_3130
	call UpdateSprites
	call Call_000_3e07
	pop hl

Call_000_3c89:
	ld bc, wc4b9
	jp Jump_000_05f1


Call_000_3c8f:
Jump_000_3c8f:
	push bc
	xor a
	ldh [$95], a
	ldh [$96], a
	ldh [$97], a
	ld a, b
	and $0f
	cp $01
	jr z, jr_000_3cb8

	cp $02
	jr z, jr_000_3caf

	ld a, [de]
	ldh [$96], a
	inc de
	ld a, [de]
	ldh [$97], a
	inc de
	ld a, [de]
	ldh [$98], a
	jr jr_000_3cbb

jr_000_3caf:
	ld a, [de]
	ldh [$97], a
	inc de
	ld a, [de]
	ldh [$98], a
	jr jr_000_3cbb

jr_000_3cb8:
	ld a, [de]
	ldh [$98], a

jr_000_3cbb:
	push de
	ld d, b
	ld a, c
	ld b, a
	xor a
	ld c, a
	ld a, b
	cp $02
	jr z, jr_000_3d2c

	cp $03
	jr z, jr_000_3d1c

	cp $04
	jr z, jr_000_3d0b

	cp $05
	jr z, jr_000_3cfa

	cp $06
	jr z, jr_000_3ce8

	ld a, $0f
	ldh [$99], a
	ld a, $42
	ldh [$9a], a
	ld a, $40
	ldh [$9b], a
	call Call_000_3d55
	call Call_000_3db9

jr_000_3ce8:
	ld a, $01
	ldh [$99], a
	ld a, $86
	ldh [$9a], a
	ld a, $a0
	ldh [$9b], a
	call Call_000_3d55
	call Call_000_3db9

jr_000_3cfa:
	xor a
	ldh [$99], a
	ld a, $27
	ldh [$9a], a
	ld a, $10
	ldh [$9b], a
	call Call_000_3d55
	call Call_000_3db9

jr_000_3d0b:
	xor a
	ldh [$99], a
	ld a, $03
	ldh [$9a], a
	ld a, $e8
	ldh [$9b], a
	call Call_000_3d55
	call Call_000_3db9

jr_000_3d1c:
	xor a
	ldh [$99], a
	xor a
	ldh [$9a], a
	ld a, $64
	ldh [$9b], a
	call Call_000_3d55
	call Call_000_3db9

jr_000_3d2c:
	ld c, $00
	ldh a, [$98]

jr_000_3d30:
	cp $0a
	jr c, jr_000_3d39

	sub $0a
	inc c
	jr jr_000_3d30

jr_000_3d39:
	ld b, a
	ldh a, [$95]
	or c
	ldh [$95], a
	jr nz, jr_000_3d46

	call Call_000_3db3
	jr jr_000_3d4a

jr_000_3d46:
	ld a, $f6
	add c
	ld [hl], a

jr_000_3d4a:
	call Call_000_3db9
	ld a, $f6
	add b
	ld [hli], a
	pop de
	dec de
	pop bc
	ret


Call_000_3d55:
	ld c, $00

jr_000_3d57:
	ldh a, [$99]
	ld b, a
	ldh a, [$96]
	ldh [$9c], a
	cp b
	jr c, jr_000_3da7

	sub b
	ldh [$96], a
	ldh a, [$9a]
	ld b, a
	ldh a, [$97]
	ldh [$9d], a
	cp b
	jr nc, jr_000_3d79

	ldh a, [$96]
	or $00
	jr z, jr_000_3da3

	dec a
	ldh [$96], a
	ldh a, [$97]

jr_000_3d79:
	sub b
	ldh [$97], a
	ldh a, [$9b]
	ld b, a
	ldh a, [$98]
	ldh [$9e], a
	cp b
	jr nc, jr_000_3d99

	ldh a, [$97]
	and a
	jr nz, jr_000_3d94

	ldh a, [$96]
	and a
	jr z, jr_000_3d9f

	dec a
	ldh [$96], a
	xor a

jr_000_3d94:
	dec a
	ldh [$97], a
	ldh a, [$98]

jr_000_3d99:
	sub b
	ldh [$98], a
	inc c
	jr jr_000_3d57

jr_000_3d9f:
	ldh a, [$9d]
	ldh [$97], a

jr_000_3da3:
	ldh a, [$9c]
	ldh [$96], a

jr_000_3da7:
	ldh a, [$95]
	or c
	jr z, jr_000_3db3

	ld a, $f6
	add c
	ld [hl], a
	ldh [$95], a
	ret


Call_000_3db3:
jr_000_3db3:
	bit 7, d
	ret z

	ld [hl], $f6
	ret


Call_000_3db9:
	bit 7, d
	jr nz, jr_000_3dc5

	bit 6, d
	jr z, jr_000_3dc5

	ldh a, [$95]
	and a
	ret z

jr_000_3dc5:
	inc hl
	ret


Call_000_3dc7:
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


Call_000_3ddb:
Jump_000_3ddb:
	ld b, $00
	ld c, a

jr_000_3dde:
	ld a, [hl]
	cp $ff
	jr z, jr_000_3dea

	cp c
	jr z, jr_000_3dec

	inc b
	add hl, de
	jr jr_000_3dde

jr_000_3dea:
	and a
	ret


jr_000_3dec:
	scf
	ret


	call ClearSprites
	ld a, $01
	ld [wcfb2], a
	call Call_000_3e38
	call Call_000_374a
	call Call_000_36ea
	call Call_000_3e1d
	jr jr_000_3e07

Call_000_3e04:
	call GBPalWhiteOut

Call_000_3e07:
Delay3:
jr_000_3e07:
	ld c, $03
	jp Jump_000_3781


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


Call_000_3e1d:
	ld b, $ff

Call_000_3e1f:
	ld a, [wcf15]
	and a
	ret z

	ld a, $45
	jp Predef


	ld a, e
	cp $1b
	ld d, $00
	jr nc, jr_000_3e36

	cp $0a
	inc d
	jr nc, jr_000_3e36

	inc d

jr_000_3e36:
	ld [hl], d
	ret


Call_000_3e38:
	ld hl, wcfab
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
	call Call_000_23ae
	call Call_000_36ca
	jp UpdateSprites


	ld a, b
	ld [wd0e3], a
	ld [wcf78], a
	ld a, c
	ld [wcf7d], a
	ld hl, wd2a1
	call Call_000_16e0
	ret nc

	call Call_000_1add
	call Call_000_386e
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
	jp Jump_000_3620


Random::
	push hl
	push de
	push bc
	ld b, $04
	ld hl, $7fea
	call Bankswitch
	ldh a, [$d3]
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
	ld [$2000], a
	call $7ea5
	ld a, [wd094]
	ldh [hLoadedROMBank], a
	ld [$2000], a
	ld de, .done
	push de
	jp hl

.done
	pop af
	ldh [hLoadedROMBank], a
	ld [$2000], a
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
	jp Jump_000_3620


Call_000_3ee5:
	ldh a, [hLoadedROMBank]
	push af
	ldh a, [$b4]
	bit 0, a
	jr z, jr_000_3f1a

	ld a, $11
	ld [$2000], a
	ldh [hLoadedROMBank], a
	call $78c5
	ldh a, [$ee]
	and a
	jr nz, jr_000_3f0d

	ld a, [wcd3e]
	ld [$2000], a
	ldh [hLoadedROMBank], a
	ld de, $3f0a
	push de
	jp hl


	xor a
	jr jr_000_3f1c

jr_000_3f0d:
	ld b, $03
	ld hl, $7e8a
	call Bankswitch
	ldh a, [$db]
	and a
	jr z, jr_000_3f1c

jr_000_3f1a:
	ld a, $ff

jr_000_3f1c:
	ldh [$eb], a
	pop af
	ld [$2000], a
	ldh [hLoadedROMBank], a
	ret


	ldh [$8c], a
	ld hl, $3f52
	call Call_000_3f3f
	ld hl, wcf0c
	set 0, [hl]
	call Call_000_13f1
	ld hl, wd2eb
	ldh a, [$ec]
	ld [hli], a
	ldh a, [$ed]
	ld [hl], a
	ret


Call_000_3f3f:
	ld a, [wd2eb]
	ldh [$ec], a
	ld a, [wd2ec]
	ldh [$ed], a
	ld a, l
	ld [wd2eb], a
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
	ldh [$7c], a
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
