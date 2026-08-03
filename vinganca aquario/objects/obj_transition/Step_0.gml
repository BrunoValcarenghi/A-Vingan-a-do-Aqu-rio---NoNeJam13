if ativo{

	ativo = false
	saida = layer_sequence_create(
		"transition", 
		camera_get_view_x(view_camera[0]),
		camera_get_view_y(view_camera[0]), 
		global.transition_saida
	);
	if instance_exists(obj_player) obj_player.trava = true

}

if saida != -1 and layer_sequence_is_finished(saida) {
	
	room_goto(global.transition_room)
	layer_sequence_destroy(saida);
	
}

if entrada != -1 and layer_sequence_is_finished(entrada) {
	
	layer_sequence_destroy(entrada);
	entrada = -1
	
}