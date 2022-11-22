CopyDataUntil:
	ld a, [hli]
	ld [de], a
	inc de
	ld a, h
	cp b
	jr nz, CopyDataUntil

	ld a, l
	cp c
	jr nz, CopyDataUntil
	ret

RemovePokemon::
	jpfar _RemovePokemon

AddPartyMon::
	push hl
	push de
	push bc
	ld b, $03
	ld hl, $7617
	call Bankswitch
	pop bc
	pop de
	pop hl
	ret

CalcStats::
	ld c, 0
.loop
	inc c
	call CalcStat
	ldh a, [hff97]
	ld [de], a
	inc de
	ldh a, [hff98]
	ld [de], a
	inc de
	ld a, c
	cp 5
	jr nz, .loop
	ret

CalcStat:
	push hl
	push de
	push bc
	ld a, b
	ld d, a
	push hl
	ld hl, wd095
	ld b, $00
	add hl, bc
	ld a, [hl]
	ld e, a
	pop hl
	push hl
	sla c
	ld a, d
	and a
	jr z, jr_39c9

	add hl, bc

jr_39ab:
	xor a
	ldh [hff96], a
	ldh [hff97], a
	inc b
	ld a, b
	cp $ff
	jr z, jr_39c9

	ldh [hff98], a
	ldh [hff99], a
	call Multiply
	ld a, [hld]
	ld d, a
	ldh a, [hff98]
	sub d
	ld a, [hli]
	ld d, a
	ldh a, [hff97]
	sbc d
	jr c, jr_39ab

jr_39c9:
	srl c
	pop hl
	push bc
	ld bc, $000b
	add hl, bc
	pop bc
	ld a, c
	cp $02
	jr z, jr_3a09

	cp $03
	jr z, jr_3a10

	cp $04
	jr z, jr_3a15

	cp $05
	jr z, jr_3a1d

	push bc
	ld a, [hl]
	swap a
	and $01
	sla a
	sla a
	sla a
	ld b, a
	ld a, [hli]
	and $01
	sla a
	sla a
	add b
	ld b, a
	ld a, [hl]
	swap a
	and $01
	sla a
	add b
	ld b, a
	ld a, [hl]
	and $01
	add b
	pop bc
	jr jr_3a21

jr_3a09:
	ld a, [hl]
	swap a
	and $0f
	jr jr_3a21

jr_3a10:
	ld a, [hl]
	and $0f
	jr jr_3a21

jr_3a15:
	inc hl
	ld a, [hl]
	swap a
	and $0f
	jr jr_3a21

jr_3a1d:
	inc hl
	ld a, [hl]
	and $0f

jr_3a21:
	ld d, $00
	add e
	ld e, a
	jr nc, jr_3a28

	inc d

jr_3a28:
	sla e
	rl d
	srl b
	srl b
	ld a, b
	add e
	jr nc, jr_3a35

	inc d

jr_3a35:
	ldh [hff98], a
	ld a, d
	ldh [hff97], a
	xor a
	ldh [hff96], a
	ld a, [wd0ec]
	ldh [hff99], a
	call Multiply
	ldh a, [hff96]
	ldh [hff95], a
	ldh a, [hff97]
	ldh [hff96], a
	ldh a, [hff98]
	ldh [hff97], a
	ld a, $64
	ldh [hff99], a
	ld a, $03
	ld b, a
	call Divide
	ld a, c
	cp $01
	ld a, $05
	jr nz, jr_3a74

	ld a, [wd0ec]
	ld b, a
	ldh a, [hff98]
	add b
	ldh [hff98], a
	jr nc, jr_3a72

	ldh a, [hff97]
	inc a
	ldh [hff97], a

jr_3a72:
	ld a, $0a

jr_3a74:
	ld b, a
	ldh a, [hff98]
	add b
	ldh [hff98], a
	jr nc, jr_3a81

	ldh a, [hff97]
	inc a
	ldh [hff97], a

jr_3a81:
	ldh a, [hff97]
	cp $04
	jr nc, jr_3a91

	cp $03
	jr c, jr_3a99

	ldh a, [hff98]
	cp $e8
	jr c, jr_3a99

jr_3a91:
	ld a, $03
	ldh [hff97], a
	ld a, $e7
	ldh [hff98], a

jr_3a99:
	pop bc
	pop de
	pop hl
	ret

AddEnemyMonToPlayerParty::
	homecall_sf _AddEnemyMonToPlayerParty
	ret

MoveMon::
	homecall_sf _MoveMon
	ret
