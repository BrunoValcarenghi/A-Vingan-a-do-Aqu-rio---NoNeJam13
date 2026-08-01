for(var i = 0; i < array_length(global.inventario); i++){
	
	//instance_create_layer(32 + x + i * 32, y + 32, "buttons", obj_item_battle_cursor)
	instance_create_layer(32 + x + i * 48, y + 32, "buttons", obj_item, {id_item: i})
	
}

instance_create_layer(464, 304, "buttons", obj_b_cancelar, {image_xscale: 1.8, image_yscale: 2})
