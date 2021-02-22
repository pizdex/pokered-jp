UpdateSprites::
	ld a, [wcfb2]
	dec a
	ret nz
	ldh a, [hLoadedROMBank]
	push af
	ld a, $01
	ldh [hLoadedROMBank], a
	ld [$2000], a
	call $4a1c
	pop af
	ldh [hLoadedROMBank], a
	ld [$2000], a
	ret
