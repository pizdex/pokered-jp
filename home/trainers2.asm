GetTrainerInformation::
	call GetTrainerName
	ld a, [wd0f0]
	and a
	jr nz, .linkBattle

	ld a, $0e
	call PushBank
	ld a, [wd018]
	dec a
	ld hl, $5c31
	ld bc, $05
	call AddNTimes
	ld de, wd01a
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	ld de, wd025
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	jp PopBank

.linkBattle
	ld hl, wd01a
	ld de, $5941
	ld [hl], e
	inc hl
	ld [hl], d
	ret

GetTrainerName:
	ld b, $04
	ld hl, $7fb3
	jp Bankswitch

CheckMoney::
	ld de, wd2cb
	ld hl, hff9f
	ld c, $03
	jp StringCmp

CheckCoins::
	ld de, wd523
	ld hl, hffa0
	ld c, $02
	jp StringCmp
