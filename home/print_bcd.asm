PrintBCDNumber:
	ld b, c
	res 7, c
	res 6, c
.asm_2fc9
	ld a, [de]
	swap a
	call PrintBCDDigit
	ld a, [de]
	call PrintBCDDigit
	inc de
	dec c
	jr nz, .asm_2fc9
	bit 7, b
	jr z, .ret
	bit 6, b
	jr nz, .asm_2fe0
	dec hl

.asm_2fe0
	ld [hl], $f6
	call PrintLetterDelay
	inc hl
.ret
	ret

PrintBCDDigit:
	and $0f
	and a
	jr z, .asm_2ff4
	res 7, b

.asm_2fee
	add $f6
	ld [hli], a
	jp PrintLetterDelay

.asm_2ff4
	bit 7, b
	jr z, .asm_2fee
	bit 6, b
	ret nz

	inc hl
	ret
