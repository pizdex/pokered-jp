CopyToStringBuffer:
	ld hl, wStringBuffer

CopyString::
	ld a, [de]
	inc de
	ld [hli], a
	cp "@"
	jr nz, CopyString
	ret
