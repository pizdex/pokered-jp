unk_04_4000:
	dr $10000, $10419

PokemonLogoGraphics: INCBIN "gfx/title/pokemon_logo.2bpp"

unk_04_4b19:
	dr $10b19, $11ad7

UpdateSpriteFacingOffsetAndDelayMovement::
	dr $11ad7, $11af8

StartMenu_Pokedex::
	dr $11af8, $11b0c

StartMenu_Pokemon::
	dr $11b0c, $11de6

StartMenu_Item::
	dr $11de6, $11f60

StartMenu_TrainerInfo::
	dr $11f60, $120e6

StartMenu_SaveReset::
	dr $120e6, $120f9

StartMenu_Option::
	dr $120f9, $13fb3

_GetTrainerName::
	dr $13fb3, $13fea

_Random::
; Generate a random 16-bit value.
	ldh a, [rDIV]
	ld b, a
	ldh a, [hffd3]
	adc b
	ldh [hffd3], a
	ldh a, [rDIV]
	ld b, a
	ldh a, [hffd4]
	sbc b
	ldh [hffd4], a
	ret

	db $00, $0d, $35, $41
