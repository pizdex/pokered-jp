Serial:
	push af
	push bc
	push de
	push hl
	ldh a, [$aa]
	inc a
	jr z, .asm_0bc4

	ldh a, [rSB]
	ldh [$ad], a
	ldh a, [$ac]
	ldh [rSB], a
	ldh a, [$aa]
	cp $02
	jr z, .asm_0be4

	ld a, $80
	ldh [rSC], a
	jr .asm_0be4

.asm_0bc4:
	ldh a, [rSB]
	ldh [$ad], a
	ldh [$aa], a
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
	ldh [$a9], a
	ld a, $fe
	ldh [$ac], a
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
	ldh [$ab], a
.asm_0bf5:
	ld a, [hl]
	ldh [$ac], a
	call Call_000_0caa
	push bc
	ld b, a
	inc hl
	ld a, $30
.asm_0c00
	dec a
	jr nz, .asm_0c00

	ldh a, [$ab]
	and a
	ld a, b
	pop bc
	jr z, .asm_0c14
	dec hl
	cp $fd
	jr nz, .asm_0bf5
	xor a
	ldh [$ab], a
	jr .asm_0bf5

.asm_0c14:
	push af
	ld a, [wd0f0]
	cp $05
	jr nz, .asm_0c25

	ldh a, [$aa]
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
	ldh [$ab], a

.asm_0c3a:
	call DelayFrame
	ld a, [hl]
	ldh [$ac], a
	call Call_000_0caa
	ld b, a
	inc hl
	ldh a, [$ab]
	and a
	ld a, $00
	ldh [$ab], a
	jr nz, .asm_0c3a

	ld a, b
	ld [de], a
	inc de
	dec c
	jr nz, .asm_0c3a
	ret

Function_0c55:
	call Call_000_3761
	ld hl, $49ed
	ld b, $01
	call Bankswitch
	call Call_000_0c66
	jp Jump_000_376d

Call_000_0c66:
	ld a, $ff
	ld [wcc3e], a

.asm_0c6b:
	call Serial_ExchangeNybble
	call DelayFrame
	call Call_000_0d47
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
	jp Jump_000_0d4f

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


Call_000_0caa:
Jump_000_0caa:
	xor a
	ldh [$a9], a
	ldh a, [$aa]
	cp $02
	jr nz, jr_000_0cb7

	ld a, $81
	ldh [rSC], a

jr_000_0cb7:
	ldh a, [$a9]
	and a
	jr nz, jr_000_0d01

	ldh a, [$aa]
	cp $01
	jr nz, jr_000_0cdc

	call Call_000_0d47
	jr z, jr_000_0cdc

	call Call_000_0d41
	push hl
	ld hl, wcc48
	inc [hl]
	jr nz, jr_000_0cd3

	dec hl
	inc [hl]

jr_000_0cd3:
	pop hl
	call Call_000_0d47
	jr nz, jr_000_0cb7

	jp Jump_000_0d4f


jr_000_0cdc:
	ldh a, [rIE]
	and $0f
	cp $08
	jr nz, jr_000_0cb7

	ld a, [wd051]
	dec a
	ld [wd051], a
	jr nz, jr_000_0cb7

	ld a, [wd052]
	dec a
	ld [wd052], a
	jr nz, jr_000_0cb7

	ldh a, [$aa]
	cp $01
	jr z, jr_000_0d01

	ld a, $ff

jr_000_0cfe:
	dec a
	jr nz, jr_000_0cfe

jr_000_0d01:
	xor a
	ldh [$a9], a
	ldh a, [rIE]
	and $0f
	sub $08
	jr nz, jr_000_0d14

	ld [wd051], a
	ld a, $50
	ld [wd052], a

jr_000_0d14:
	ldh a, [$ad]
	cp $fe
	ret nz

	call Call_000_0d47
	jr z, jr_000_0d2f

	push hl
	ld hl, wcc48
	ld a, [hl]
	dec a
	ld [hld], a
	inc a
	jr nz, jr_000_0d29

	dec [hl]

jr_000_0d29:
	pop hl
	call Call_000_0d47
	jr z, jr_000_0d4f

jr_000_0d2f:
	ldh a, [rIE]
	and $0f
	cp $08
	ld a, $fe
	ret z

	ld a, [hl]
	ldh [$ac], a
	call DelayFrame
	jp Jump_000_0caa


Call_000_0d41:
	ld a, $0f

jr_000_0d43:
	dec a
	jr nz, jr_000_0d43

	ret


Call_000_0d47:
	push hl
	ld hl, wEnteringCableClub
	ld a, [hli]
	or [hl]
	pop hl
	ret


Jump_000_0d4f:
jr_000_0d4f:
	dec a
	ld [wEnteringCableClub], a
	ld [wcc48], a
	ret


Serial_ExchangeNybble:
	call .doExchange
	ld a, [wcc42]
	add $60
	ldh [$ac], a
	ldh a, [$aa]
	cp $02
	jr nz, .doExchange
	ld a, $81
	ldh [rSC], a
.doExchange
	ldh a, [$ad]
	ld [wcc3d], a
	and $f0
	cp $60
	ret nz

	xor a
	ldh [$ad], a
	ld a, [wcc3d]
	and $0f
	ld [wcc3e], a
	ret

Serial_SendZeroByte:
	xor a
	ldh [$ac], a
	ldh a, [$aa]
	cp $02
	ret nz
	ld a, $81
	ldh [rSC], a
	ret

Serial_TryEstablishingExternallyClockedConnection::
	ld a, $02
	ldh [rSB], a
	xor a
	ldh [$ad], a
	ld a, $80
	ldh [rSC], a
	ret
