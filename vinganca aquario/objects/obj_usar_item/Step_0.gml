if array_length(global.inventario) > 0{
	
	image_alpha = 1
	i = struct_get(global.itens, global.inventario[global.item_id_atual].item_id);
	
}
else{

	image_alpha = 0

}