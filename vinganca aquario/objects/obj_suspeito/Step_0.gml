if obj_player.y < y depth = obj_player.depth - 1
else depth = obj_player.depth + 1

if (x - obj_player.x < 10) and !d{
	
	d = true
	instance_create_layer(-999, -999, "ui", obj_dialogo, {f: falas, chose: escolha})
	
}