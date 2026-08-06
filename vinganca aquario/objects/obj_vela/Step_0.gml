if obj_player.y < y depth = obj_player.depth - 1
else depth = obj_player.depth + 1

if distance_to_object(obj_player) < 30 and !d{
	
	d = true
	instance_create_layer(-999, -999, "ui", obj_dialogo, {f: falas, chose: escolha})
	
}

if (!global.flag_vela && fogo == noone) {
    fogo = part_system_create(ef_vela);
}

if (global.flag_vela and fogo != noone) {
	part_system_destroy(fogo);
    fogo = noone;
}


if (fogo != noone && part_system_exists(fogo)) {
    part_system_position(fogo, x, y);
}