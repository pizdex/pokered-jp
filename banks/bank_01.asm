unk_01_4000:
	dr $4000, $4750

WriteDMACodeToHRAM::
	dr $4750, $476e

SetDefaultNamesBeforeTitlescreen::
	dr $476e, $6bbb

DisplayPokemartDialogue_::
	dr $6bbb, $7121

DisplayPokemonCenterDialogue_::
	dr $7121, $724b

DisplayTextIDInit::
	dr $724b, $72c0

DrawStartMenu::
	dr $72c0, $736b

CableClubNPC::
	dr $736b, $75c1

LoadMonData_::
	dr $75c1, $766c

DisplayTextBoxID_::
	dr $766c, $7f19

_RemovePokemon::
	dr $7f19, $8000
