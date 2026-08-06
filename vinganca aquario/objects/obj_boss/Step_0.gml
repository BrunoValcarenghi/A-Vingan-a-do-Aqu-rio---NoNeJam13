 if ativo{
	
	
	if distance_to_object(obj_player) < 50 and !d{
	
		d = true
		instance_create_layer(-999, -999, "ui", obj_dialogo, {f: falas, chose: escolha})
		global.music_battle = msc_boss
		
	}
	if d and !instance_exists(obj_dialogo){
		ativo = false
		global.sala_anterior = room;
		global.inimigos = inimigos
		alarm[0] = 91
		transition(Room_battle, saida, entrada)
	}

	
}

if alarm[1] < 1 alarm[1] = irandom_range(100,160)

mp_potential_step_object(dirx, diry, spd, obj_col);

if obj_player.y < y depth = obj_player.depth - 1
else depth = obj_player.depth + 1

