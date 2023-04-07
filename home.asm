INCLUDE "constants.asm"

INCLUDE "home/header.asm"

SECTION "Home", ROM0

_Start::
	jp Init

INCLUDE "home/joypad.asm"
INCLUDE "home/lcd.asm"
INCLUDE "home/clear_sprites.asm"
INCLUDE "home/copy.asm"

INCLUDE "data/tilesets/collision_tile_ids.asm"

INCLUDE "home/copy2.asm"
INCLUDE "home/text.asm"
INCLUDE "home/vcopy.asm"
INCLUDE "home/init.asm"
INCLUDE "home/vblank.asm"
INCLUDE "home/fade.asm"
INCLUDE "home/serial.asm"
INCLUDE "home/timer.asm"
INCLUDE "home/audio.asm"
INCLUDE "home/update_sprites.asm"

INCLUDE "data/items/marts.asm"

INCLUDE "home/overworld_text.asm"
INCLUDE "home/decompress.asm"
INCLUDE "home/reset_player_sprite.asm"
INCLUDE "home/fade_audio.asm"
INCLUDE "home/text_script.asm"
INCLUDE "home/start_menu.asm"
INCLUDE "home/count_set_bits.asm"
INCLUDE "home/inventory.asm"
INCLUDE "home/list_menu.asm"
INCLUDE "home/names.asm"
INCLUDE "home/reload_tiles.asm"

INCLUDE "data/maps/map_header_pointers.asm"

INCLUDE "home/overworld.asm"
INCLUDE "home/pokemon.asm"
INCLUDE "home/print_bcd.asm"
INCLUDE "home/pics.asm"
INCLUDE "home/item.asm"
INCLUDE "home/npc_movement.asm"
INCLUDE "home/trainers.asm"
INCLUDE "home/map_objects.asm"
INCLUDE "home/trainers2.asm"
INCLUDE "home/bankswitch.asm"
INCLUDE "home/yes_no.asm"
INCLUDE "home/pathfinding.asm"
INCLUDE "home/load_font.asm"
INCLUDE "home/delay.asm"
INCLUDE "home/names2.asm"
INCLUDE "home/item_price.asm"
INCLUDE "home/copy_string.asm"
INCLUDE "home/joypad2.asm"
INCLUDE "home/mul_div.asm"
INCLUDE "home/print_text.asm"
INCLUDE "home/move_mon.asm"
INCLUDE "home/array.asm"
INCLUDE "home/oam.asm"
INCLUDE "home/window.asm"
INCLUDE "home/print_num.asm"
INCLUDE "home/palettes.asm"
INCLUDE "home/give.asm"
INCLUDE "home/random.asm"
INCLUDE "home/predef.asm"
INCLUDE "home/hidden_objects.asm"
INCLUDE "home/predef_text.asm"

unk_3f52:
	db $5f, $7a, $7d, $7a, $0b, $79, $df, $78, $b8, $79, $f1, $79, $0f, $7a, $27, $7f
	db $6a, $79, $25, $79, $91, $79, $5b, $7c, $75, $7c, $a1, $7f, $e0, $7c, $06, $7d
	db $3b, $7d, $65, $7d, $22, $7e, $74, $7e, $7a, $7f, $97, $7e, $d8, $7e, $15, $7f
	db $90, $7d, $bc, $7d, $de, $7d, $ed, $7d, $ff, $7d, $98, $7f, $cf, $7f, $dc, $7d
	db $5d, $7b, $45, $45, $5e, $45, $48, $7e, $8e, $7e, $cf, $7d, $da, $7f, $ab, $7f
	db $c7, $7f, $e2, $7f, $52, $7f, $6c, $7f, $01, $7e, $19, $7e, $58, $7e, $74, $7d
	db $f9, $7a, $f2, $7f, $e2, $7f, $f9, $79, $84, $7d, $bf, $7f, $9d, $7f, $ad, $7f
	db $a0, $79, $f9, $7e, $b0, $7e, $09, $7f, $4e, $7f, $8e, $7f, $90, $7f, $50, $7f
	db $82, $7f, $c9, $7f, $a0, $79, $f9, $7e, $b0, $7e, $09, $7f, $4e, $7f, $8e, $7f
	db $90, $7f, $50, $7f, $82, $7f, $c9, $7f, $a5, $b7, $67, $e3, $77, $bb, $fd, $c9
	db $fb, $85, $e7, $53, $c9, $81, $a3, $c7, $3f, $85, $33, $4d, $15, $00
