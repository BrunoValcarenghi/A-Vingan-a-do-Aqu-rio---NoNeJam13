 if place_meeting(x, y, obj_player_col) and ativo{
	
	ativo = false
	
	global.sala_anterior = room;

	global.inimigos = inimigos
	
	
	
	alarm[0] = 30
	transition(Room_battle, saida, entrada)

	
}

if alarm[1] < 1 alarm[1] = irandom_range(100,160)

mp_potential_step_object(dirx, diry, spd, obj_col);

if obj_player.y < y depth = obj_player.depth - 1
else depth = obj_player.depth + 1