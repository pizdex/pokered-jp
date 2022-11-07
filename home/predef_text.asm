PrintPredefTextID::
	ldh [hff8c], a
	ld hl, $3f52
	call SetMapTextPointer
	ld hl, wTextPredefFlag
	set 0, [hl]
	call DisplayTextID

RestoreMapTextPointer::
	ld hl, wMapTextPtr
	ldh a, [hffec]
	ld [hli], a
	ldh a, [hffed]
	ld [hl], a
	ret

SetMapTextPointer:
	ld a, [wMapTextPtr]
	ldh [hffec], a
	ld a, [wd2ec]
	ldh [hffed], a
	ld a, l
	ld [wMapTextPtr], a
	ld a, h
	ld [wd2ec], a
	ret

	dr $3f52, $4000
