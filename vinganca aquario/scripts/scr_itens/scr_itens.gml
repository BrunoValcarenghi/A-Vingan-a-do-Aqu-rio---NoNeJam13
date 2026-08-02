function criar_itens(){

	global.itens = {
	
		"potion_p": {
		
			nome: "Poção Pequena",
			sprite: spr_potion_p,
	        descricao: "Cura 25 pontos de HP.",
	        tipo: "cura_hp",
	        valor: 25
		
		},
		
		"potion_g": {
		
			nome: "Poção Grande",
			sprite: spr_potion_g,
	        descricao: "Cura 75 pontos de HP.",
	        tipo: "cura_hp",
	        valor: 75
		
		},
		
		"poison": {
		
			nome: "Veneno",
			sprite: spr_poison,
	        descricao: "Causa 30 de dano.",
	        tipo: "cura_hp",
	        valor: -30
		
		},
		
		"bomb": {
		
			nome: "Bomba",
			sprite: spr_bomb,
	        descricao: "Causa 75 de dano.",
	        tipo: "cura_hp",
	        valor: -75
		
		},
		
		"med_kit": {
		
			nome: "Kit Médico",
			sprite: spr_medkit,
	        descricao: "Cura HP total.",
	        tipo: "cura_hp_total",
	        valor: 0
		
		}
	
	}

}

function adicionar_item(_item_id, _quantidade) {
	
    var _item_encontrado = false;

    //ver se o jogador já tem o item
    for (var i = 0; i <array_length(global.inventario); i++) {
        
        if (global.inventario[i].item_id == _item_id) {
			
            // Se achou, apenas aumenta a quantidade
            global.inventario[i].quantidade += _quantidade;
            _item_encontrado = true;
            break; // Para o loop
			
        }
    }

    if (_item_encontrado == false) {
        var _novo_item = {
            item_id: _item_id,
            quantidade: _quantidade
        };
        
        array_push(global.inventario, _novo_item);
    }
    
}