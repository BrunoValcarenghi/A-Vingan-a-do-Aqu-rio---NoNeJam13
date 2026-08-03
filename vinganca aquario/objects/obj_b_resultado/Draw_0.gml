draw_self()
draw_set_colour(global.brown)
draw_set_halign(1)
draw_set_valign(1)
draw_set_font(f_nicoclean)
draw_set_alpha(i)
if d {
	draw_text(x, y, resultado)
	if i < 1 i += .03	
}
draw_set_alpha(1)