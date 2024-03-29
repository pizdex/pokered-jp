SECTION "HRAM", HRAM

hff8a:: ds 1 ; ff8a

UNION
hROMBankTemp::
hff8b:: ds 1 ; ff8b
hff8c:: ds 1 ; ff8c
hff8d:: ds 1 ; ff8d

NEXTU
hItemPrice:: ds 3 ; ff8b[3] (BCD number)
ENDU

hff8e:: ds 1 ; ff8e
hff8f:: ds 1 ; ff8f
hff90:: ds 1 ; ff90
hSpriteScreenX:: ds 1 ; ff91
hSpriteScreenY:: ds 1 ; ff92
hTilePlayerStandingOn:: ds 1 ; ff93
hff94:: ds 1 ; ff94
hff95:: ds 1 ; ff95
hff96:: ds 1 ; ff96
hff97:: ds 1 ; ff97
hff98:: ds 1 ; ff98
hff99:: ds 1 ; ff99
hff9a:: ds 1 ; ff9a
hff9b:: ds 1 ; ff9b
hff9c:: ds 1 ; ff9c
hff9d:: ds 1 ; ff9d
hff9e:: ds 1 ; ff9e
hff9f:: ds 1 ; ff9f
hffa0:: ds 1 ; ffa0
hffa1:: ds 1 ; ffa1
hffa2:: ds 1 ; ffa2
hffa3:: ds 1 ; ffa3
hffa4:: ds 1 ; ffa4
hffa5:: ds 1 ; ffa5
hffa6:: ds 1 ; ffa6
hffa7:: ds 1 ; ffa7
hffa8:: ds 1 ; ffa8
hffa9:: ds 1 ; ffa9
hffaa:: ds 1 ; ffaa
hffab:: ds 1 ; ffab
hffac:: ds 1 ; ffac
hffad:: ds 1 ; ffad

; these values are copied to rSCX, rSCY, and rWY during V-blank
hSCX:: ds 1 ; ffae
hSCY:: ds 1 ; ffaf
hWY::  ds 1 ; ffb0

hffb1:: ds 1 ; ffb1
hffb2:: ds 1 ; ffb2
hJoyPressed:: ds 1 ; ffb3
hJoyHeld::    ds 1 ; ffb4
hffb5:: ds 1 ; ffb5
hffb6:: ds 1 ; ffb6
hffb7:: ds 1 ; ffb7

hLoadedROMBank:: ds 1 ; ffb8
hSavedROMBank::  ds 1 ; ffb9

hBGMapMode:: ds 1 ; ffba
hffbb:: ds 1 ; ffbb
hffbc:: ds 1 ; ffbc
hffbd:: ds 1 ; ffbd
hffbe:: ds 1 ; ffbe
hffbf:: ds 1 ; ffbf
hffc0:: ds 1 ; ffc0
hVBlankCopyBGSrc:: ds 2 ; ffc1
hVBlankCopyBGDest:: ds 2 ; ffc3
hVBlankCopyBGNumRows:: ds 1 ; ffc5

hVBlankCopySize:: ds 1 ; ffc6
hVBlankCopySrc:: ds 2 ; ffc7
hVBlankCopyDest:: ds 2 ; ffc9

hVBlankCopySize2:: ds 1 ; ffcb
hVBlankCopySrc2:: ds 2 ; ffcc
hVBlankCopyDest2:: ds 2 ; ffce

hffd0:: ds 1 ; ffd0
hffd1:: ds 1 ; ffd1
hffd2:: ds 1 ; ffd2
hffd3:: ds 1 ; ffd3
hffd4:: ds 1 ; ffd4
hFrameCounter:: ds 1 ; ffd5
hffd6:: ds 1 ; ffd6
hffd7:: ds 1 ; ffd7
hffd8:: ds 1 ; ffd8
hffd9:: ds 1 ; ffd9
hCurrentSpriteOffset:: ds 1 ; ffda
hffdb:: ds 1 ; ffdb
hffdc:: ds 1 ; ffdc
hffdd:: ds 1 ; ffdd
hffde:: ds 1 ; ffde
hffdf:: ds 1 ; ffdf
hffe0:: ds 1 ; ffe0
hffe1:: ds 1 ; ffe1
hffe2:: ds 1 ; ffe2
hffe3:: ds 1 ; ffe3
hffe4:: ds 1 ; ffe4
hffe5:: ds 1 ; ffe5
hffe6:: ds 1 ; ffe6
hffe7:: ds 1 ; ffe7
hffe8:: ds 1 ; ffe8
hffe9:: ds 1 ; ffe9
hffea:: ds 1 ; ffea
hffeb:: ds 1 ; ffeb
hffec:: ds 1 ; ffec
hffed:: ds 1 ; ffed
hffee:: ds 1 ; ffee
hffef:: ds 1 ; ffef
hfff0:: ds 1 ; fff0
hfff1:: ds 1 ; fff1
hfff2:: ds 1 ; fff2
hfff3:: ds 1 ; fff3
hfff4:: ds 1 ; fff4
hfff5:: ds 1 ; fff5
hfff6:: ds 1 ; fff6
hfff7:: ds 1 ; fff7
hfff8:: ds 1 ; fff8
hfff9:: ds 1 ; fff9
hfffa:: ds 1 ; fffa
hfffb:: ds 1 ; fffb
hfffc:: ds 1 ; fffc
hfffd:: ds 1 ; fffd
hfffe:: ds 1 ; fffe
