function vitoria_derrota(){
	
	//checa vitoria
	var _inimigos_validos = []
	for (var i = 0; i < array_length(global.batalha); i++) {
	    if (!global.batalha[i].bom && global.batalha[i].vida > 0) {
	        array_push(_inimigos_validos, i);
	    }
	}
	//venceu a batalha
	if (array_length(_inimigos_validos) <= 0) and !ganhou{
		ganhou = vitoria()
	}
	
	
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
	
	var _txt1 = level_up();
	var _txt2 = ""
	
	drop = irandom(3)
	if drop = 0 {
		_txt2 = string_concat(_txt2, " Ganhou poção \npequena!\n")
		adicionar_item("potion_p", 1)
	}
	
	drop = irandom(8)
	if drop = 0 {
		_txt2 = string_concat(_txt2, " Ganhou poção \ngrande!\n")
		adicionar_item("potion_g", 1)
	}
	
	drop = irandom(10)
	if drop = 0 {
		_txt2 = string_concat(_txt2, " Ganhou veneno!\n")
		adicionar_item("poison", 1)
	}
	
	drop = irandom(20)
	if drop = 0{
		_txt2 = string_concat(_txt2, " Ganhou kit \nmédico!\n")
		adicionar_item("med_kit", 1)
	}
	
	drop = irandom(20)
	if drop = 0 {
		_txt2 = string_concat(_txt2, " Ganhou bomba!\n")
		adicionar_item("bomb", 1)
	}
	
	if _txt1 = "" _txt1 = " Ninguém subiu \nde nivel"
	if _txt2 = "" _txt2 = " Não ganhou \nnada"
	instance_create_layer(320, 150, "Instances", obj_battle_final,{txt1: _txt1, txt2: _txt2})
	instance_create_layer(320, 280, "Instances", obj_battle_venceu)
	
	//show_message("venceu!")
	//room_goto(global.sala_anterior)
	return true;
	
}

function derrota(){
	
	show_message("perdeu!")
	game_restart()
	
}