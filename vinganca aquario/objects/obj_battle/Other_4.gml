if global.sala_anterior = Room2 layer_set_visible("Tiles_2", 1)

global.batalha = []
global.batalha_obj = []
global.vez = 0
global.atacando = false
global.defendendo = false
global.item = false
xp = 0
ganhou = false

efeitos = [];
efeito_timer = 240;

// só lista o que realmente afeta ESTA batalha
for(var i = 0; i < array_length(global.inimigos); i++){
    var _n = global.inimigos[i].nome;

    if _n == "Orc" and global.flag_regador
        array_push(efeitos, "O chão molhado tirou o escudo do Orc");

    if _n == "Golem" and global.flag_mago
        array_push(efeitos, "O Golem teme o mago que você libertou");

    if _n == "Arquimago" and global.flag_feitico
        array_push(efeitos, "Os grimórios fora de ordem sabotaram o feitiço");

    if string_pos("Elfo", _n) > 0 and global.flag_sabao
        array_push(efeitos, "A espuma na tubulação enfraqueceu os elfos");

    if _n == "Espírito" and global.flag_rato
        array_push(efeitos, "O espírito cobra os animais que você matou");

    if _n == "Cachorro" and !global.flag_dog
        array_push(efeitos, "O cão que você ignorou está do outro lado");
}

if array_length(efeitos) > 0 borboletas(320, 180, 25);

var _t = 3
if array_length(global.personagens) < 3 _t = array_length(global.personagens)

for(i = 0; i < _t; i++){

	//criar personagem na tela
	var _char = instance_create_layer(200, i * 36 + 80, "char", obj_char)
	
	_char.sprite_index = global.personagens[i].sprite
	//_char.image_xscale = -1
	_char.spd_char = global.personagens[i].spd
	
	array_push(global.batalha, global.personagens[i])
	array_push(global.batalha_obj, _char)

}
for(i = 0; i < array_length(global.inimigos); i++){
	
	//criar personagem na tela
	var _char = instance_create_layer(440, i * 36 + 80, "char_enemy", obj_char)
	
	_char.sprite_index = global.inimigos[i].sprite
	_char.spd_char = global.inimigos[i].spd
	
	xp += global.inimigos[i].xp
	
	array_push(global.batalha, global.inimigos[i])
	array_push(global.batalha_obj, _char)
	
	//orc
	if global.inimigos[i].nome = global.orc_e.nome {
		instance_create_layer(_char.x, y, "instances", obj_escudo)
	}

}
global.vez = 0

// Função de ordenação baseada na velocidade
var ordenar_por_spd = function(elemento1, elemento2) {
    return elemento2.spd - elemento1.spd;
}
var ordenar_por_spd_obj = function(elemento1, elemento2) {
    return elemento2.spd_char - elemento1.spd_char;
}

// Executa a ordenação
array_sort(global.batalha, ordenar_por_spd);
array_sort(global.batalha_obj, ordenar_por_spd_obj);

//define a vez BASEADO na velocidade
for(i = 0; i < array_length(global.batalha); i++){
	
	global.batalha_obj[i].vez = i
	//show_message(global.batalha_obj[i].spd_char)
	//show_message(global.batalha_obj[i].vez)
	
}

//show_message(global.batalha)