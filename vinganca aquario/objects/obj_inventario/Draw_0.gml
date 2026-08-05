draw_self()

draw_set_halign(1)
draw_set_valign(1)

draw_set_font(f_nicoclean)
draw_set_colour(global.brown)

draw_text(x, y , "INVENTARIO")

if array_length(global.inventario) > 0{

	i = struct_get(global.itens, global.inventario[global.item_id_atual].item_id);

	draw_set_font(f_nicopaintx2)
	draw_text(466, 144 , i.nome)

	draw_set_font(f_nicoclean)
	draw_set_halign(0)
	
	draw_text(336, y + 36, string_concat(
		"Quantidade: ",
		global.inventario[global.item_id_atual].quantidade)
	)
		  
	draw_text(336, y + 60, i.descricao)
	
	draw_set_font(f_nicoclean)
	draw_text(360, y + 80, "Usar em:")

}
else{

	draw_set_halign(1)
	draw_set_valign(1)

	draw_set_font(f_nicoclean)
	draw_set_colour(global.brown)

	draw_text(x, y + 64 , "Vazio")

}
