Random::
	push hl
	push de
	push bc
	ld b, $04
	ld hl, $7fea
	call Bankswitch
	ldh a, [hffd3]
	pop bc
	pop de
	pop hl
	ret
