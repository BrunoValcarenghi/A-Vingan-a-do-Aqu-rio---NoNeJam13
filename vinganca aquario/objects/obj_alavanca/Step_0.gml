if obj_player.y < y depth = obj_player.depth - 1
else depth = obj_player.depth + 1

if distance_to_object(obj_player) < 30 and !d{
	
	d = true
	instance_create_layer(-999, -999, "ui", obj_dialogo, {f: falas, chose: escolha})
	
}

if global.flag_regador and image_speed != 1 image_speed = 1