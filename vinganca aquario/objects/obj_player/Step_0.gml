if mouse_x > x image_xscale = 1
else image_xscale = -1

scr_get_input()

if !trava {
	scr_move_col()
}

scr_pause()

if (hsp != 0 or vsp != 0) and !trava sprite_index = spr_player_run
else sprite_index = spr_player