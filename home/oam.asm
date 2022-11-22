WriteOAMBlock::
	ld h, $c3
	swap a
	ld l, a
	call Func_3afd
	push bc
	ld a, $08
	add c
	ld c, a
	call Func_3afd
	pop bc
	ld a, $08
	add b
	ld b, a
	call Func_3afd
	ld a, $08
	add c
	ld c, a

Func_3afd:
	ld [hl], b
	inc hl
	ld [hl], c
	inc hl
	ld a, [de]
	inc de
	ld [hli], a
	ld a, [de]
	inc de
	ld [hli], a
	ret
