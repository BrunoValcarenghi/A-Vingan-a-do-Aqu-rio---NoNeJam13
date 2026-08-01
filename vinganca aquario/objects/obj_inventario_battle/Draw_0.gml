draw_set_halign(1)
draw_set_valign(1)

if array_length(global.inventario) = 0{

	draw_set_font(f_nicoclean)
	draw_set_colour(global.brown)

	draw_text(464, y + 32, "Vazio")

}
else{

	draw_set_font(f_nicopups)
	draw_set_colour(global.brown)

	for(var i = 0; i < array_length(global.inventario); i++){
	
		draw_text(32 + x + i * 48, y + 52, string_concat(global.inventario[i].quantidade, "x"))
	
	}
	
}