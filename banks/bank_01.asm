unk_01_4000:
	dr $4000, $4672

PrepareOAMData::
	dr $4672, $4750

WriteDMACodeToHRAM::
; Since no other memory is available during OAM DMA,
; DMARoutine is copied to HRAM and executed there.
	ld c, LOW(hDMARoutine)
	ld b, DMARoutineEnd - DMARoutine
	ld hl, DMARoutine
.copy
	ld a, [hli]
	ldh [c], a
	inc c
	dec b
	jr nz, .copy
	ret

DMARoutine:
LOAD "OAM DMA", HRAM[$ff80]
hDMARoutine::
	; initiate DMA
	ld a, $c3
	ldh [rDMA], a
	; wait for DMA to finish
	ld a, $28
.wait
	dec a
	jr nz, .wait
	ret
ENDL
DMARoutineEnd:

Func_01_4768:
	ld bc, $0006
	jp CopyBytes

SetDefaultNamesBeforeTitlescreen::
	dr $476e, $4a1c

_UpdateSprites::
	dr $4a1c, $5bb6

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
