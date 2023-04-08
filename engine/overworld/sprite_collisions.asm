_UpdateSprites::
	dr $4a1c, $4a44

UpdateNonPlayerSprite:
	dec a
	swap a
	ldh [hTilePlayerStandingOn], a  ; $10 * sprite#
	ld a, [wcf12] ; some sprite offset?
	ld b, a
	ldh a, [hCurrentSpriteOffset]
	cp b
	jr nz, .unequal
	jp DoScriptedNPCMovement

.unequal
	jp UpdateNPCSprite

DetectCollisionBetweenSprites:
	dr $4a58, $4b58

SetSpriteCollisionValues:
	and a
	ld b, 0
	ld c, 0
	jr z, .done
	ld c, 9
	cp -1
	jr z, .ok
	ld c, 7
	ld a, 0
.ok
	ld b, a
.done
	ret

SpriteCollisionBitTable:
	db %00000000,%00000001
	db %00000000,%00000010
	db %00000000,%00000100
	db %00000000,%00001000
	db %00000000,%00010000
	db %00000000,%00100000
	db %00000000,%01000000
	db %00000000,%10000000
	db %00000001,%00000000
	db %00000010,%00000000
	db %00000100,%00000000
	db %00001000,%00000000
	db %00010000,%00000000
	db %00100000,%00000000
	db %01000000,%00000000
	db %10000000,%00000000
