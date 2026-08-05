if ativo{
	
	play_audio_random(sfx_shoot, 1, 1.5, .5)
	obj_battle_buttons.ativo = false
	global.battle_inventaro = true
	global.item = false
	instance_create_layer(320, 208, "buttons", obj_inventario_battle)
	
}