function defesa(){

	if global.defendendo{

		with (obj_char) {
		    if (vez == global.vez) {
		        defendeu = true
		        break;
		    }
		}
	
		//calculo defesa
		global.batalha[global.vez].def *= 2
	
		global.defendendo = false
		global.vez++
	
	}


}
function perdeu_defesa(turno){
	
	with (obj_char) {
		if (vez == turno and defendeu = true) {
			defendeu = false
			global.batalha[turno].def /= 2
			break;
		}
	}

}