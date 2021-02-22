farcall: MACRO
	ld b, BANK(\1)
	ld hl, \1
	call Bankswitch
ENDM

callfar: MACRO
	ld hl, \1
	ld b, BANK(\1)
	call Bankswitch
ENDM

farjp: MACRO
	ld b, BANK(\1)
	ld hl, \1
	jp Bankswitch
ENDM

jpfar: MACRO
	ld hl, \1
	ld b, BANK(\1)
	jp Bankswitch
ENDM

homecall: MACRO
	ldh a, [ldh a, [$b8]]
	push af
	ld a, BANK(\1)
	ldh [ldh a, [$b8]], a
	ld [MBC1RomBank], a
	call \1
	pop af
	ldh [ldh a, [$b8]], a
	ld [MBC1RomBank], a
ENDM

homecall_sf: MACRO ; homecall but save flags by popping into bc instead of af
	ldh a, [ldh a, [$b8]]
	push af
	ld a, BANK(\1)
	ldh [ldh a, [$b8]], a
	ld [MBC1RomBank], a
	call \1
	pop bc
	ld a, b
	ldh [ldh a, [$b8]], a
	ld [MBC1RomBank], a
ENDM
