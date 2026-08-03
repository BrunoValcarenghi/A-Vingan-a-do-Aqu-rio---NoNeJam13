function level_up(){
	
	var _t = 3
	if array_length(global.personagens) < 3 _t = array_length(global.personagens)
	for(var i = 0; i < _t; i++){
		
		global.personagens[i].xp += xp
		//show_message(global.personagens[i].xp)
		
	}
	
	var _txt = ""
	
	for(var i = 0; i < _t; i++){
		
		_xp_necessario = 50 * (power(global.personagens[i].lvl, 2)) + 100 * global.personagens[i].lvl
		
		while (global.personagens[i].xp >= _xp_necessario) {
			
			global.personagens[i].xp -= _xp_necessario
			
			//var mul = (power(1.1, global.personagens[i].lvl));
			var mul = 1.225
			global.personagens[i].lvl ++
			//show_message(mul)
			
			global.personagens[i].hp  = floor(global.personagens[i].hp *mul)
			global.personagens[i].atk = floor(global.personagens[i].atk*mul)
			global.personagens[i].def = floor(global.personagens[i].def*mul)
			global.personagens[i].spd = floor(global.personagens[i].spd*mul)
			
			_xp_necessario = 50 * (power(global.personagens[i].lvl, 2)) + 100 * global.personagens[i].lvl;
			
			_txt = string_concat(_txt, " ", global.personagens[i].nome, " subiu \npara o nivel ", global.personagens[i].lvl, "!\n" )
			
		}
	}
	
	return _txt

}