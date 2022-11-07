PrintLetterDelay:
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
	jr z, jr_393c

	ld a, [wd2d4]
	and $0f
	ldh [hFrameCounter], a
	jr jr_3940

jr_393c:
	ld a, $01
	ldh [hFrameCounter], a

jr_3940:
	call Joypad
	ldh a, [hJoyHeld]
	bit 0, a
	jr z, jr_394b

	jr jr_394f

jr_394b:
	bit 1, a
	jr z, jr_3954

jr_394f:
	call DelayFrame
	jr jr_3959

jr_3954:
	ldh a, [hFrameCounter]
	and a
	jr nz, jr_3940

jr_3959:
	pop bc
	pop de
	pop hl
	ret
