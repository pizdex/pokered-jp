Serial:
	push af
	push bc
	push de
	push hl
	ldh a, [hffaa]
	inc a
	jr z, .asm_0bc4

	ldh a, [rSB]
	ldh [hffad], a
	ldh a, [hffac]
	ldh [rSB], a
	ldh a, [hffaa]
	cp $02
	jr z, .asm_0be4

	ld a, $80
	ldh [rSC], a
	jr .asm_0be4

.asm_0bc4:
	ldh a, [rSB]
	ldh [hffad], a
	ldh [hffaa], a
	cp $02
	jr z, .asm_0be1

	xor a
	ldh [rSB], a
	ld a, $03
	ldh [rDIV], a

.asm_0bd5:
	ldh a, [rDIV]
	bit 7, a
	jr nz, .asm_0bd5

	ld a, $80
	ldh [rSC], a
	jr .asm_0be4

.asm_0be1:
	xor a
	ldh [rSB], a

.asm_0be4:
	ld a, $01
	ldh [hffa9], a
	ld a, $fe
	ldh [hffac], a
	pop hl
	pop de
	pop bc
	pop af
	reti

; hl = send data
; de = receive data
; bc = length of data
Serial_ExchangeBytes::
	ld a, $01
	ldh [hffab], a
.asm_0bf5:
	ld a, [hl]
	ldh [hffac], a
	call Call_0caa
	push bc
	ld b, a
	inc hl
	ld a, $30
.asm_0c00
	dec a
	jr nz, .asm_0c00

	ldh a, [hffab]
	and a
	ld a, b
	pop bc
	jr z, .asm_0c14
	dec hl
	cp $fd
	jr nz, .asm_0bf5
	xor a
	ldh [hffab], a
	jr .asm_0bf5

.asm_0c14:
	push af
	ld a, [wd0f0]
	cp $05
	jr nz, .asm_0c25

	ldh a, [hffaa]
	cp $02
	jr nz, .asm_0c25

	ld de, wcd68

.asm_0c25:
	pop af
	ld [de], a
	inc de
	dec bc
	ld a, b
	or c
	jr nz, .asm_0bf5
	ret

Function_0c2e:
	ld hl, wcc42
	ld de, wcc3d
	ld c, $02
	ld a, $01
	ldh [hffab], a

.asm_0c3a:
	call DelayFrame
	ld a, [hl]
	ldh [hffac], a
	call Call_0caa
	ld b, a
	inc hl
	ldh a, [hffab]
	and a
	ld a, $00
	ldh [hffab], a
	jr nz, .asm_0c3a

	ld a, b
	ld [de], a
	inc de
	dec c
	jr nz, .asm_0c3a
	ret

Function_0c55:
	call Call_3761
	ld hl, $49ed
	ld b, $01
	call Bankswitch
	call Call_0c66
	jp Jump_376d

Call_0c66:
	ld a, $ff
	ld [wcc3e], a

.asm_0c6b:
	call Serial_ExchangeNybble
	call DelayFrame
	call Call_0d47
	jr z, .asm_0c87

	push hl
	ld hl, wcc48
	dec [hl]
	jr nz, .asm_0c86

	dec hl
	dec [hl]
	jr nz, .asm_0c86

	pop hl
	xor a
	jp Jump_0d4f

.asm_0c86:
	pop hl

.asm_0c87:
	ld a, [wcc3e]
	inc a
	jr z, .asm_0c6b

	ld b, 10
.asm_0c8f:
	call DelayFrame
	call Serial_ExchangeNybble
	dec b
	jr nz, .asm_0c8f

	ld b, 10
.asm_0c9a:
	call DelayFrame
	call Serial_SendZeroByte
	dec b
	jr nz, .asm_0c9a
	ld a, [wcc3e]
	ld [wcc3d], a
	ret


Call_0caa:
Jump_0caa:
	xor a
	ldh [hffa9], a
	ldh a, [hffaa]
	cp $02
	jr nz, jr_0cb7

	ld a, $81
	ldh [rSC], a

jr_0cb7:
	ldh a, [hffa9]
	and a
	jr nz, jr_0d01

	ldh a, [hffaa]
	cp $01
	jr nz, jr_0cdc

	call Call_0d47
	jr z, jr_0cdc

	call Call_0d41
	push hl
	ld hl, wcc48
	inc [hl]
	jr nz, jr_0cd3

	dec hl
	inc [hl]

jr_0cd3:
	pop hl
	call Call_0d47
	jr nz, jr_0cb7

	jp Jump_0d4f


jr_0cdc:
	ldh a, [rIE]
	and $0f
	cp $08
	jr nz, jr_0cb7

	ld a, [wd051]
	dec a
	ld [wd051], a
	jr nz, jr_0cb7

	ld a, [wd052]
	dec a
	ld [wd052], a
	jr nz, jr_0cb7

	ldh a, [hffaa]
	cp $01
	jr z, jr_0d01

	ld a, $ff

jr_0cfe:
	dec a
	jr nz, jr_0cfe

jr_0d01:
	xor a
	ldh [hffa9], a
	ldh a, [rIE]
	and $0f
	sub $08
	jr nz, jr_0d14

	ld [wd051], a
	ld a, $50
	ld [wd052], a

jr_0d14:
	ldh a, [hffad]
	cp $fe
	ret nz

	call Call_0d47
	jr z, jr_0d2f

	push hl
	ld hl, wcc48
	ld a, [hl]
	dec a
	ld [hld], a
	inc a
	jr nz, jr_0d29

	dec [hl]

jr_0d29:
	pop hl
	call Call_0d47
	jr z, jr_0d4f

jr_0d2f:
	ldh a, [rIE]
	and $0f
	cp $08
	ld a, $fe
	ret z

	ld a, [hl]
	ldh [hffac], a
	call DelayFrame
	jp Jump_0caa


Call_0d41:
	ld a, $0f

jr_0d43:
	dec a
	jr nz, jr_0d43

	ret


Call_0d47:
	push hl
	ld hl, wEnteringCableClub
	ld a, [hli]
	or [hl]
	pop hl
	ret


Jump_0d4f:
jr_0d4f:
	dec a
	ld [wEnteringCableClub], a
	ld [wcc48], a
	ret


Serial_ExchangeNybble:
	call .doExchange
	ld a, [wcc42]
	add $60
	ldh [hffac], a
	ldh a, [hffaa]
	cp $02
	jr nz, .doExchange
	ld a, $81
	ldh [rSC], a
.doExchange
	ldh a, [hffad]
	ld [wcc3d], a
	and $f0
	cp $60
	ret nz

	xor a
	ldh [hffad], a
	ld a, [wcc3d]
	and $0f
	ld [wcc3e], a
	ret

Serial_SendZeroByte:
	xor a
	ldh [hffac], a
	ldh a, [hffaa]
	cp $02
	ret nz
	ld a, $81
	ldh [rSC], a
	ret

Serial_TryEstablishingExternallyClockedConnection::
	ld a, $02
	ldh [rSB], a
	xor a
	ldh [hffad], a
	ld a, $80
	ldh [rSC], a
	ret
