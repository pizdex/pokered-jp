CopyFarBytes::
; Copy bc bytes from a:hl to de.
	ld [wcee4], a
	ldh a, [hLoadedROMBank]
	push af
	ld a, [wcee4]
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	call CopyBytes
	pop af
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	ret

CopyBytes::
; Copy bc bytes from hl to de.
	ld a, [hli]
	ld [de], a
	inc de
	dec bc
	ld a, c
	or b
	jr nz, CopyBytes
	ret
