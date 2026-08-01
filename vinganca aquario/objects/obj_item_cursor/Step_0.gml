if array_length(global.inventario) > 0 and global.pause_state = 2{
	x = 88 + global.item_id_atual * 44
	y = 208
	image_alpha = 1
}
else image_alpha = 0