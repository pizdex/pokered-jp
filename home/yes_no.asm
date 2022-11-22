YesNoChoice::
	call Func_3761
	call Func_3649
	jr DisplayYesNoChoice

TwoOptionMenu::
	ld a, $14
	ld [wTextBoxID], a
	call Func_3649
	jp DisplayTextBoxID

Func_3649:
	xor a
	ld [wd0f1], a
	ld hl, $c43a
	ld bc, $080f
	ret

Func_3654:
	call Func_3761
	ld a, $06
	ld [wd0f1], a
	ld hl, $c425
	ld bc, $080e
	jr DisplayYesNoChoice

WideYesNoChoice::
	call Func_3761
	ld a, $03
	ld [wd0f1], a
	ld hl, wTilemap + $98
	ld bc, $080d

DisplayYesNoChoice:
	ld a, $14
	ld [wTextBoxID], a
	call DisplayTextBoxID
	jp Func_376d
