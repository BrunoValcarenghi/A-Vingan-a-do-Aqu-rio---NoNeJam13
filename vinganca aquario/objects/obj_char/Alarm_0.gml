_id_atacar = noone

// lista alvosc
var _alvos_validos = [];

for (i = 0; i < array_length(global.batalha); i++) {
    if (global.batalha[i].bom && global.batalha[i].vida > 0) {
        array_push(_alvos_validos, i); // Guarda a posição do aliado vivo
    }
}

// alvo random
if (array_length(_alvos_validos) > 0) {
    // Sorteia uma das posições da nossa lista de alvos
    var _indice_sorteado = irandom(array_length(_alvos_validos) - 1);
    _id_atacar = _alvos_validos[_indice_sorteado];
    
    // calculo dano
    var dano = floor(power(global.batalha[global.vez].atk, 2) / (global.batalha[global.vez].atk + global.batalha[_id_atacar].def));
	perdeu_defesa(_id_atacar)
    if (dano < 1) dano = 1;
    
    global.batalha[_id_atacar].vida -= dano;

}

global.vez++
atacou = false