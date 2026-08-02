global.transition_room = -1
global.transition_saida = -1
global.transition_entrada= -1

function transition(_room, _saida, _entrada){

	global.transition_room = _room
	global.transition_saida = _saida
	global.transition_entrada= _entrada
	
	obj_transition.ativo = true

}