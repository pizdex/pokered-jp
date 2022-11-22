JoypadLowSensitivity:
	call Joypad
	ld a, [hffb7]
	and a
	ldh a, [hJoyPressed]
	jr z, .asm_3886

	ldh a, [hJoyHeld]

.asm_3886
	ldh [hffb5], a
	ldh a, [hJoyPressed]
	and a
	jr z, .asm_3892

	ld a, $1e
	ldh [hFrameCounter], a
	ret

.asm_3892
	ldh a, [hFrameCounter]
	and a
	jr z, .asm_389b

	xor a
	ldh [hffb5], a
	ret

.asm_389b
	ldh a, [hJoyHeld]
	and $03
	jr z, .asm_38a9

	ldh a, [hffb6]
	and a
	jr nz, .asm_38a9

	xor a
	ldh [hffb5], a

.asm_38a9
	ld a, $05
	ldh [hFrameCounter], a
	ret

WaitForTextScrollButtonPress:
	ldh a, [hff8b]
	push af
	ldh a, [hff8c]
	push af
	xor a
	ldh [hff8b], a
	ld a, $06
	ldh [hff8c], a

.asm_38bb:
	push hl
	ld a, [wd078]
	and a
	jr z, .asm_38c5

	call Func_1c_5b8a

.asm_38c5:
	hlcoord 18, 16
	call Func_3c34
	pop hl
	call JoypadLowSensitivity
	ld a, $2d
	call Predef
	ldh a, [hffb5]
	and $03
	jr z, .asm_38bb

	pop af
	ldh [hff8c], a
	pop af
	ldh [hff8b], a
	ret

ManualTextScroll:
	ld a, [wd0f0]
	cp $04
	jr z, .asm_38f0

	call WaitForTextScrollButtonPress
	ld a, $90
	jp PlaySound

.asm_38f0
	ld c, $41
	jp DelayFrames
