TextScriptEndingText::
	text_end

TextScriptEnd:
	ld hl, TextScriptEndingText
	ret

ExclamationText::
	text "！"
	done

GroundRoseText::
	text "どこかで じめんがもりあがった！"
	done

BoulderText::
	text "「かいりき」 で うごかせるかも<……>"
	done

MartSignText::
	text "# グッズが いっぱい！"
	line "フレンドりィショップ"
	done

PokeCenterSignText::
	text "#の たいりょく かいふく！"
	line "#センター"
	done

PickUpItemText::
	text_asm
	ld a, $5c
	call Predef
	jp TextScriptEnd
