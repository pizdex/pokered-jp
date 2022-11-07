YesNoChoice::
	call Call_3761
	call Call_3649
	jr DisplayYesNoChoice

TwoOptionMenu::
	ld a, $14
	ld [wTextBoxID], a
	call Call_3649
	jp DisplayTextBoxID

Call_3649:
	xor a
	ld [wd0f1], a
	ld hl, wc43a
	ld bc, $080f
	ret


	call Call_3761
	ld a, $06
	ld [wd0f1], a
	ld hl, wc425
	ld bc, $080e
	jr DisplayYesNoChoice

WideYesNoChoice::
	call Call_3761
	ld a, $03
	ld [wd0f1], a
	ld hl, wc438
	ld bc, $080d

DisplayYesNoChoice:
	ld a, $14
	ld [wTextBoxID], a
	call DisplayTextBoxID
	jp Jump_376d
