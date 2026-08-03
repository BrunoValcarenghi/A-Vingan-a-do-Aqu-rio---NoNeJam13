if image_alpha = 1{

	if ativo{

		ativo = false
		saida = layer_sequence_create(
			"transition", 
			camera_get_view_x(view_camera[0]),
			camera_get_view_y(view_camera[0]), 
			sq_fade_out
		);

	}

}