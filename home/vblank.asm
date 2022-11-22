VBlank::
	push af
	push bc
	push de
	push hl

	ldh a, [hLoadedROMBank]
	ld [wd0e7], a

	ldh a, [hSCX]
	ldh [rSCX], a
	ldh a, [hSCY]
	ldh [rSCY], a

	ld a, [wd07d]
	and a
	jr nz, .asm_0ac7
	ldh a, [hWY]
	ldh [rWY], a

.asm_0ac7
	call UpdateBGMap
	call VBlankCopyBGMap
	call RedrawRowOrColumn
	call VBlankCopy
	call VBlankCopyDouble
	call UpdateMovingBGTiles
	call hDMARoutine
	ld a, BANK(PrepareOAMData)
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	call PrepareOAMData

	; VBlank-sensitive operations end here.
	call Random

	ldh a, [hffd6]
	and a
	jr z, .asm_0af1
	xor a
	ldh [hffd6], a

.asm_0af1
	ldh a, [hFrameCounter]
	and a
	jr z, .asm_0af9
	dec a
	ldh [hFrameCounter], a

.asm_0af9
	call FadeOutAudio

	ld a, [wAudioROMBank]
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
; checkForAudio1
	cp BANK(Audio1_UpdateMusic)
	jr nz, .asm_0b0d
; audio1
	call Audio1_UpdateMusic
	jr .asm_0b1c

.asm_0b0d:
	cp BANK(Audio2_UpdateMusic)
	jr nz, .asm_0b19
; audio2
	call Music_DoLowHealthAlarm
	call Audio2_UpdateMusic
	jr .asm_0b1c

.asm_0b19:
	call Audio3_UpdateMusic

.asm_0b1c:
	farcall TrackPlayTime

	ld a, [wd0e7]
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a

	pop hl
	pop de
	pop bc
	pop af
	reti

NOT_VBLANKED EQU 1

DelayFrame::
; Wait for the next vblank interrupt.
; As a bonus, this saves battery.
	ld a, NOT_VBLANKED
	ldh [hffd6], a
.halt
	halt
	ldh a, [hffd6]
	and a
	jr nz, .halt
	ret
