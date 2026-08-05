global.transition_room = -1
global.transition_saida = -1
saida = -1

if global.transition_entrada = -1 and entrada != -1{

	layer_sequence_destroy(entrada);

}

if global.transition_entrada != -1{
	
	layer_depth("transition", -10000);
	
	entrada = layer_sequence_create(
		"transition", 
		obj_cam.x - 340,
		obj_cam.y - 180, 
		global.transition_entrada
	);
	global.transition_entrada = -1

}