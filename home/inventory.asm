; subtracts the amount the player paid from their money
; OUTPUT: carry = 0(success) or 1(fail because there is not enough money)
SubtractAmountPaidFromMoney::
	farjp _SubtractAmountPaidFromMoney

; adds the amount the player sold to their money
AddAmountSoldToMoney::
	ld de, wd2cd
	ld hl, hffa1
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
	homecall _RemoveItemFromInventory
	ret

; function to add an item (in varying quantities) to the player's bag or PC box
; INPUT:
; HL = address of inventory (either wNumBagItems or wNumBoxItems)
; [wcf91] = item ID
; [wItemQuantity] = item quantity
; sets carry flag if successful, unsets carry flag if unsuccessful
AddItemToInventory::
	push bc
	homecall_sf _AddItemToInventory
	pop bc
	ret
