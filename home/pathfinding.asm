abs_ab::
	sub b
	ret nc

	cpl
	add $01
	scf
	ret

MoveSprite::
	call Call_358b
MoveSprite_::
	push hl
	push bc
	call Call_3598
	xor a
	ld [hl], a

	ld hl, wcc5b
	ld c, $00
.loop
	ld a, [de]
	ld [hli], a
	inc de
	inc c
	cp $ff
	jr nz, .loop

	ld a, c
	ld [wcf0a], a
	pop bc
	ld hl, wd6af
	set 0, [hl]
	pop hl
	xor a
	ld [wcd3b], a
	ld [wccd3], a
	dec a
	ld [wcd66], a
	ld [wcd3a], a
	ret

DivideBytes::
	push hl
	ld hl, hffe7
	xor a
	ld [hld], a
	ld a, [hld]
	and a
	jr z, .done

	ld a, [hli]
.loop
	sub [hl]
	jr c, .done
	inc hl
	inc [hl]
	dec hl
	jr .loop

.done
	pop hl
	ret
