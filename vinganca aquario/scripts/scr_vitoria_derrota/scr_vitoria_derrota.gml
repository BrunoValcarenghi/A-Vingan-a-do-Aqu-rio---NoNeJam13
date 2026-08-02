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
	
	drop = irandom(5)
	if drop = 5 {
		show_message("ganhou pocao p!")
		adicionar_item("potion_p", 1)
	}
	
	drop = irandom(20)
	if drop = 20 {
		show_message("ganhou pocao g!")
		adicionar_item("potion_g", 1)
	}
	
	drop = irandom(30)
	if drop = 30 {
		show_message("ganhou poison!")
		adicionar_item("poison", 1)
	}
	
	drop = irandom(50)
	if drop = 50 {
		show_message("ganhou med_kit!")
		adicionar_item("med_kit", 1)
	}
	
	drop = irandom(70)
	if drop = 70 {
		show_message("ganhou bomba!")
		adicionar_item("bomb", 1)
	}
	
	
	show_message("venceu!")
	room_goto(global.sala_anterior)

}

function derrota(){
	
	show_message("perdeu!")
	game_restart()
	
}