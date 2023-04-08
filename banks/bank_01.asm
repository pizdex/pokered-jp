INCLUDE "data/sprites/facings.asm"

MewPicFront:: INCBIN "gfx/pokemon/front/mew.pic"
MewPicBack::  INCBIN "gfx/pokemon/back/mewb.pic"

INCLUDE "data/pokemon/base_stats/mew.asm"
INCLUDE "data/items/prices.asm"
INCLUDE "data/items/names.asm"
INCLUDE "data/text/unused_names.asm"
INCLUDE "engine/gfx/sprite_oam.asm"
INCLUDE "engine/gfx/oam_dma.asm"
INCLUDE "engine/movie/title.asm"
INCLUDE "engine/link/print_waiting_text.asm"
INCLUDE "engine/overworld/sprite_collisions.asm"

DebugMenu:
	ret

TestBattle:
	dr $4b8c, $4bc7

PickUpItem:
	dr $4bc7, $4c0c

FoundItemText:
	text "<PLAYER>は"
	line "@"
	text_ram wStringBuffer
	text "を みつけた！@"
	sound_get_item_1
	text_end

NoMoreRoomForItemText:
	text "もちものが いっぱい！"
	done

UpdatePlayerSprite:
	dr $4c2c, $4ccc

UpdateNPCSprite:
	dr $4ccc, $5033

DoScriptedNPCMovement:
	dr $5033, $58de

CableClub_TextBoxBorder::
	dr $58de, $5bb6

SpecialEnterMap::
	dr $5bb6, $6260

SpecialWarpIn::
	dr $6260, $6abc

_SubtractAmountPaidFromMoney::
	dr $6abc, $6bbb

_DisplayPokemartDialogue::
	dr $6bbb, $7121

_DisplayPokemonCenterDialogue::
	dr $7121, $724b

DisplayTextIDInit::
	dr $724b, $72c0

DrawStartMenu::
	dr $72c0, $736b

CableClubNPC::
	dr $736b, $755f

Func_01_755f::
	dr $755f, $75c1

_LoadMonData::
	dr $75c1, $766c

_DisplayTextBoxID::
	dr $766c, $7f19

_RemovePokemon::
	dr $7f19, $8000
