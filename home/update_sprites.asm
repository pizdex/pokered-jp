UpdateSprites::
	ld a, [wcfb2]
	dec a
	ret nz
	ldh a, [$b8]
	push af
	ld a, $01
	ldh [$b8], a
	ld [$2000], a
	call $4a1c
	pop af
	ldh [$b8], a
	ld [$2000], a
	ret
