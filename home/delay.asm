DelayFrames:
	call DelayFrame
	dec c
	jr nz, DelayFrames
	ret

PlaySoundWaitForCurrent:
	push af
	call WaitForSoundToFinish
	pop af
	jp PlaySound

WaitForSoundToFinish::
	ld a, [wd060]
	and $80
	ret nz

	push hl

jr_3797:
	ld hl, wc02a
	xor a
	or [hl]
	inc hl
	or [hl]
	inc hl
	inc hl
	or [hl]
	jr nz, jr_3797

	pop hl
	ret
