function shadow(){

	w = sprite_get_width(sprite_index)/2 - 3
	h = sprite_get_height(sprite_index)/2 + 3


	draw_set_colour(global.black)
	draw_set_alpha(.2)
	draw_ellipse(x + w, y + h, x - w, y + 5, 0)
	draw_set_alpha(1)
	draw_self()

}