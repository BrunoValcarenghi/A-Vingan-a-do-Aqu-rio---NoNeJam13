if !ganhou{

	if global.vez >= array_length(global.batalha)
	global.vez = 0

	if global.batalha[global.vez].bom {
		global.seu_turno = true
	}
	else {
		global.seu_turno = false
	}

	ataque()
	defesa()
	item()

	vitoria_derrota()
	
}
else obj_battle_buttons.ativo = false