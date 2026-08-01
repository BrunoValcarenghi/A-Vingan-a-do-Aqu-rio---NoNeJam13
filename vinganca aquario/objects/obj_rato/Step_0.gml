 if place_meeting(x, y, obj_player){
	
	global.sala_anterior = room;
	instance_destroy()
	global.inimigos = [
		variable_clone(global.rato),
		variable_clone(global.rato),
	]
	room_goto(Room_battle)

}