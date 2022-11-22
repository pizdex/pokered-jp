Random::
; Returns a random number in a.
	push hl
	push de
	push bc
	farcall _Random
	ldh a, [hffd3]
	pop bc
	pop de
	pop hl
	ret
