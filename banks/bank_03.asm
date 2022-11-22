_Joypad::
	dr $c000, $c5e2

_AddItemToInventory::
	dr $c5e2, $c652

_RemoveItemFromInventory::
	dr $c652, $c97b

unk_03_497b::
	dr $c97b, $cb75

PrintSafariZoneSteps::
	dr $cb75, $d63d

_UseItem::
	dr $d63d, $e9c4

_TossItem::
	dr $e9c4, $ea6f

_IsKeyItem::
	dr $ea6f, $f7d3

_AddEnemyMonToPlayerParty::
	dr $f7d3, $f854

_MoveMon::
	dr $f854, $fe8a

PrintBookshelfText::
	dr $fe8a, $10000
