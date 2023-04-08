CopyDebugName:
	ld bc, NAME_LENGTH
	jp CopyBytes

PrepareTitleScreen::
	dr $476e, $4794

DisplayTitleScreen:
	dr $4794, $48cc

TitleScreenPickNewMon:
	dr $48cc, $48f3

TitleScreenScrollInMon:
	ld d, 0 ; scroll in
	ld c, $14
	call TitleScroll
	xor a
	ldh [hWY], a
	ret

TitleScroll:
	dr $48fe, $4921

DrawPlayerCharacter:
	dr $4921, $495d

ClearBothBGMaps:
	ld hl, vBGMap0
	ld bc, $400 * 2
	ld a, " "
	jp ByteFill

LoadTitleMonSprite:
	ld [wcf78], a
	ld [wd092], a
	hlcoord 9, 10
	call GetMonHeader
	jp LoadFrontSpriteByMonIndex

TitleScreenCopyTileMapToVRAM:
	ld [hffbd], a
	jp Delay3

LoadCopyrightAndTextBoxTiles:
	xor a
	ldh [hWY], a
	call ClearScreen
	call LoadTextBoxTilePatterns

LoadCopyrightTiles:
	ld de, $5161
	ld hl, $9600
	ld bc, $0419
	call CopyVideoData
	ld hl, $c431
	ld de, $499b
	jp PlaceString

CopyrightTextString:
	db   $60, $61, $62, $63, $6d, $6e, $6f, $70, $71, $72                ; ©1995 Nintendo
	next $60, $61, $62, $63, $73, $74, $75, $76, $77, $78, $6b, $6c      ; ©1995 Creatures inc.
	next $60, $61, $62, $63, $64, $65, $66, $67, $68, $69, $6a, $6b, $6c ; ©1995 GAME FREAK inc.
	db   "@"

TitleMons:
	dr $49c1, $49d1

PrintGameVersionOnTitleScreen:
	hlcoord 7, 8
	ld de, VersionOnTitleScreenText
	jp PlaceString

VersionOnTitleScreenText:
	db $60, $61, $7f, $65, $66, $67, $68, $69, "@" ; "Red Version"

NintenText: db "やまぐち@"
SonyText:   db "いしはら@"
