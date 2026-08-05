function game_start(){

	ini_open("save.sav")

	global.language = ini_read_real("game", "language", 0)
	global.display = ini_read_real("game", "display", 1)

	ini_close()

	if global.display = 1 window_set_fullscreen(true);
	else window_set_fullscreen(false);

	//funcoes ao criar jogo
	criando_personagens()
	criar_itens()

	//variaveis globais
		//pause
	global.pausa = false;
	global.pause_state = 1;
	global.sala_anterior = Room_main;
	global.id_char = 0
	global.item_id_atual = 0

		//batalha
	global.seu_turno = true;
	global.batalha = []
	global.vez = 0
	global.battle_inventaro = false

		//inicial
	global.personagens = [
		global.Juquinha, 
		//global.Mago, 
		//global.Cachorro
	]
	global.inventario = [
		{item_id: "potion_p", quantidade: 2},
		//{item_id: "potion_g", quantidade: 2},
		//{item_id: "bomb", quantidade: 2},
		//{item_id: "poison", quantidade: 2},
		//{item_id: "med_kit", quantidade: 2},
	]

		//setings
	global.volume = .5

		//cores
	global.black = #090a14
	global.red = #cf573c
	global.brown = #341C27
	global.bege = #D7B594
	global.lightbrown = #7A4841
	
		//efeito borboleta
	global.flag_dog = false
	global.flag_esmola = false
	global.flag_regador = false
	global.flag_vela = false
	global.flag_abelha = false
	global.flag_rato = false
	
	global.flag_mago = false
	global.flag_sabao = false
	global.flag_banquete = false
	global.flag_feitico = false
	
}