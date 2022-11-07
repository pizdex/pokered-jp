; subtracts the amount the player paid from their money
; OUTPUT: carry = 0(success) or 1(fail because there is not enough money)
SubtractAmountPaidFromMoney::
	ld b, $01
	ld hl, $6abc
	jp Bankswitch

; adds the amount the player sold to their money
AddAmountSoldToMoney::
	ld de, wd2cd
	ld hl, $ffa1
	ld c, $03
	ld a, $0b
	call Predef
	ld a, $13
	ld [wTextBoxID], a
	call DisplayTextBoxID
	ld a, $b2
	call PlaySoundWaitForCurrent
	jp WaitForSoundToFinish

; function to remove an item (in varying quantities) from the player's bag or PC box
; INPUT:
; HL = address of inventory (either wNumBagItems or wNumBoxItems)
; [wWhichPokemon] = index (within the inventory) of the item to remove
; [wItemQuantity] = quantity to remove
RemoveItemFromInventory::
	ldh a, [hLoadedROMBank]
	push af
	ld a, $03
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	call $4652
	pop af
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	ret

; function to add an item (in varying quantities) to the player's bag or PC box
; INPUT:
; HL = address of inventory (either wNumBagItems or wNumBoxItems)
; [wcf91] = item ID
; [wItemQuantity] = item quantity
; sets carry flag if successful, unsets carry flag if unsuccessful
AddItemToInventory::
	push bc
	ldh a, [hLoadedROMBank]
	push af
	ld a, $03
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	call $45e2
	pop bc
	ld a, b
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	pop bc
	ret
