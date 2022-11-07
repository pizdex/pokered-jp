unk_0f_4000:
	dr $3c000, $3f204

InitBattle::
	dr $3f204, $3f3c5

CopyUncompressedPicToHL::
	dr $3f3c5, $40000
