if mouse_x > x image_xscale = 1
else image_xscale = -1

if trava {
	spd = 0
}
else {
	spd = 1.5
}

scr_get_input()
scr_move_col()
scr_pause()
