if ativo{
	
	if room = Room_battle{
		instance_create_layer(x, y, "buttons", obj_item_battle_cursor)
		global.item = true
		obj_item.ativo = false
	}
	global.item_id_atual = id_item
	play_audio_random(sfx_shoot, .7, 1.5, .5)
	
}