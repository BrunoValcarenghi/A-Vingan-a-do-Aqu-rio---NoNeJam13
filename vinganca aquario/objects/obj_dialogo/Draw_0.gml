draw_self()
if !e{
	
	draw_set_font(f_nicoclean)
	draw_set_colour(global.bege)
	draw_set_halign(0)
	draw_set_valign(1)

	//draw_sprite(spr_slot, 0, x - 300, y - 30)
	
	var l = string_length(f[i].quem)
	
	draw_sprite_stretched(spr_slot, 0, x- 300, y-46, l * 10 + 20, 24)

	draw_text(x - 290, y - 34, f[i].quem)

	draw_set_colour(global.brown)

	draw_text(x - 290, y - 12, f[i].falou)

}
else{	

	draw_set_font(f_nicoclean)
	draw_set_halign(0)
	draw_set_valign(1)
	draw_set_colour(global.brown)

	draw_text(x - 290, y - 20, chose.pergunta)

}

