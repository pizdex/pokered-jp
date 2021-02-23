SECTION "HRAM", HRAM

hFF80:: db

	ds $a

UNION
hItemPrice:: ds 3 ; BCD number

NEXTU
	ds 1
hSpriteIndexOrTextID:: db
ENDU

	ds $20

; these values are copied to rSCX, rSCY, and rWY during V-blank
hSCX:: db
hSCY:: db
hWY::  db

hJoyLast::     db
hJoyReleased:: db
hJoyPressed::  db
hJoyHeld::     db
hJoy5::        db
hJoy6::        db
hJoy7::        db

hLoadedROMBank:: db
hSavedROMBank::  db

; is automatic background transfer during V-blank enabled?
; if nonzero, yes
; if zero, no
hAutoBGTransferEnabled:: db

	ds $1a

hFrameCounter:: db
