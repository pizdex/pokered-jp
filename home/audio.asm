PlayDefaultMusic::
	call WaitForSoundToFinish
	xor a
	ld c, a
	ld d, a
	ld [wcfb1], a
	jr PlayDefaultMusicCommon

PlayDefaultMusicFadeOutCurrent:
	ld c, $0a
	ld d, $00
	ld a, [wd6ad]
	bit 5, a
	jr z, PlayDefaultMusicCommon

	xor a
	ld [wcfb1], a
	ld c, $08
	ld d, c

PlayDefaultMusicCommon:
	ld a, [wd67f]
	and a
	jr z, jr_000_0dd7

	cp $02
	jr z, jr_000_0dc6

	ld a, $d2
	jr jr_000_0dc8

jr_000_0dc6:
	ld a, $d6

jr_000_0dc8:
	ld b, a
	ld a, d
	and a
	ld a, $1f
	jr nz, jr_000_0dd2

	ld [wAudioROMBank], a

jr_000_0dd2:
	ld [wAudioSavedROMBank], a
	jr jr_000_0de0

jr_000_0dd7:
	ld a, [wd2da]
	ld b, a
	call CompareMapMusicBankWithCurrentBank
	jr c, jr_000_0de5

jr_000_0de0:
	ld a, [wcfb1]
	cp b
	ret z

jr_000_0de5:
	ld a, c
	ld [wAudioFadeOutControl], a
	ld a, b
	ld [wcfb1], a
	ld [wNewSoundID], a
	jp PlaySound

UpdateMusic6Times::
	ld a, [wAudioROMBank]
	ld b, a
	cp $02
	jr nz, jr_000_0e00

	ld hl, $4000
	jr jr_000_0e0c

jr_000_0e00:
	cp $08
	jr nz, jr_000_0e09

	ld hl, $455f
	jr jr_000_0e0c

jr_000_0e09:
	ld hl, $4417

jr_000_0e0c:
	ld c, $06

jr_000_0e0e:
	push bc
	push hl
	call Bankswitch
	pop hl
	pop bc
	dec c
	jr nz, jr_000_0e0e
	ret

CompareMapMusicBankWithCurrentBank::
	ld a, [wd2db]
	ld e, a
	ld a, [wAudioROMBank]
	cp e
	jr nz, jr_000_0e28

	ld [wAudioSavedROMBank], a
	and a
	ret

jr_000_0e28:
	ld a, c
	and a
	ld a, e
	jr nz, jr_000_0e30

	ld [wAudioROMBank], a

jr_000_0e30:
	ld [wAudioSavedROMBank], a
	scf
	ret

PlayMusic::
	ld b, a
	ld [wNewSoundID], a
	xor a
	ld [wAudioFadeOutControl], a
	ld a, c
	ld [wAudioROMBank], a
	ld [wAudioSavedROMBank], a
	ld a, b

PlaySound::
	push hl
	push de
	push bc
	ld b, a
	ld a, [wNewSoundID]
	and a
	jr z, jr_000_0e5c

	xor a
	ld [wc02a], a
	ld [wc02b], a
	ld [wc02c], a
	ld [wc02d], a

jr_000_0e5c:
	ld a, [wAudioFadeOutControl]
	and a
	jr z, jr_000_0e77

	ld a, [wNewSoundID]
	and a
	jr z, jr_000_0eb9

	xor a
	ld [wNewSoundID], a
	ld a, [wcfb1]
	cp $ff
	jr nz, jr_000_0ea8

	xor a
	ld [wAudioFadeOutControl], a

jr_000_0e77:
	xor a
	ld [wNewSoundID], a
	ldh a, [hLoadedROMBank]
	ldh [$b9], a
	ld a, [wAudioROMBank]
	ldh [hLoadedROMBank], a
	ld [$2000], a
	cp $02
	jr nz, jr_000_0e91

	ld a, b
	call $4773
	jr jr_000_0e9f

jr_000_0e91:
	cp $08
	jr nz, jr_000_0e9b

	ld a, b
	call $4d1b
	jr jr_000_0e9f

jr_000_0e9b:
	ld a, b
	call $4b8a

jr_000_0e9f:
	ldh a, [hSavedROMBank]
	ldh [hLoadedROMBank], a
	ld [$2000], a
	jr jr_000_0eb9

jr_000_0ea8:
	ld a, b
	ld [wcfb1], a
	ld a, [wAudioFadeOutControl]
	ld [wAudioFadeOutCounterReloadValue], a
	ld [wAudioFadeOutCounter], a
	ld a, b
	ld [wAudioFadeOutControl], a

jr_000_0eb9:
	pop bc
	pop de
	pop hl
	ret
