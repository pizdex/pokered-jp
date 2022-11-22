GiveItem::
; Give player quantity c of item b
	ld a, b
	ld [wd0e3], a
	ld [wcf78], a
	ld a, c
	ld [wcf7d], a
	ld hl, wd2a1
	call AddItemToInventory
	ret nc

	call GetItemName
	call CopyToStringBuffer
	scf
	ret

GivePokemon::
; Give the player monster b at level c.
	ld a, b
	ld [wcf78], a
	ld a, c
	ld [wd0ec], a
	xor a
	ld [wcc49], a
	farjp _GivePokemon
