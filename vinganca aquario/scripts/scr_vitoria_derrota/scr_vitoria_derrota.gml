function vitoria_derrota(){
	
	//checa vitoria
	var _inimigos_validos = []
	for (var i = 0; i < array_length(global.batalha); i++) {
	    if (!global.batalha[i].bom && global.batalha[i].vida > 0) {
	        array_push(_inimigos_validos, i);
	    }
	}
	//venceu a batalha
	if (array_length(_inimigos_validos) <= 0) {vitoria()}
	
	
	//checa derrota
	var _alvos_validos = [];

	for (var i = 0; i < array_length(global.batalha); i++) {
	    if (global.batalha[i].bom && global.batalha[i].vida > 0) {
	        array_push(_alvos_validos, i);
	    }
	}

	if (array_length(_alvos_validos) <= 0) and global.seu_turno{

		derrota();

	}

}

function vitoria(){
	
	level_up();
	show_message("venceu!")
	room_goto(global.sala_anterior)

}

function derrota(){
	
	show_message("perdeu!")
	game_restart()
	
}