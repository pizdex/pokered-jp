PrintBCDNumber:
	ld b, c
	res 7, c
	res 6, c

jr_2fc9:
	ld a, [de]
	swap a
	call PrintBCDDigit
	ld a, [de]
	call PrintBCDDigit
	inc de
	dec c
	jr nz, jr_2fc9

	bit 7, b
	jr z, jr_2fe6

	bit 6, b
	jr nz, jr_2fe0

	dec hl

jr_2fe0:
	ld [hl], $f6
	call Call_391d
	inc hl

jr_2fe6:
	ret


PrintBCDDigit:
	and $0f
	and a
	jr z, jr_2ff4

	res 7, b

jr_2fee:
	add $f6
	ld [hli], a
	jp Jump_391d


jr_2ff4:
	bit 7, b
	jr z, jr_2fee

	bit 6, b
	ret nz

	inc hl
	ret
