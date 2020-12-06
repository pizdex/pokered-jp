VBlank:
	push af
	push bc
	push de
	push hl

	ldh a, [$b8]
	ld [wd0e7], a

	ldh a, [$ae]
	ldh [rSCX], a
	ldh a, [$af]
	ldh [rSCY], a

	ld a, [wd07d]
	and a
	jr nz, .asm_0ac7
	ldh a, [$b0]
	ldh [rWY], a

.asm_0ac7
	call AutoBGMapTransfer
	call VBlankCopyBGMap
	call RedrawRowOrColumn
	call VBlankCopy
	call VBlankCopyDouble
	call UpdateMovingBGTiles
	call $ff80
	ld a, $01
	ldh [$b8], a
	ld [$2000], a
	call $4672

	; VBlank-sensitive operations end here.
	call Random

	ldh a, [$d6]
	and a
	jr z, .asm_0af1
	xor a
	ldh [$d6], a

.asm_0af1
	ldh a, [$d5]
	and a
	jr z, .asm_0af9
	dec a
	ldh [$d5], a

.asm_0af9
	call FadeOutAudio

	ld a, [wc0ef]
	ldh [$b8], a
	ld [$2000], a

; checkForAudio1
	cp $02
	jr nz, .asm_0b0d
; audio1
	call $4000
	jr .asm_0b1c

.asm_0b0d:
	cp $08
	jr nz, .asm_0b19
; audio2
	call $6c38
	call $455f
	jr .asm_0b1c

.asm_0b19:
	call $4417

.asm_0b1c:
	ld b, $06
	ld hl, $4dee
	call Bankswitch

	ld a, [wd0e7]
	ldh [$b8], a
	ld [$2000], a

	pop hl
	pop de
	pop bc
	pop af
	reti


NOT_VBLANKED EQU 1

DelayFrame::
; Wait for the next vblank interrupt.
; As a bonus, this saves battery.
	ld a, NOT_VBLANKED
	ldh [$d6], a
.halt
	halt
	ldh a, [$d6]
	and a
	jr nz, .halt
	ret
