function ataque(){
	
	if global.atacando{
		//clicou
		if mouse_check_button_pressed(mb_left) {
	
			//no inimigo
			if collision_point(mouse_x, mouse_y, obj_char, true, false){
		
				//inimigo fulano de tal
				_id_inimigo = instance_nearest(mouse_x, mouse_y, obj_char)
				shake(4)
				_id_inimigo.hit = 10;
				
				//realiza o ataque no inimigo fulano de tal
				if global.batalha[_id_inimigo.vez].vida > 0{
					dano = floor(power(global.batalha[global.vez].atk, 2) / (global.batalha[global.vez].atk + global.batalha[_id_inimigo.vez].def));
					if dano < 1 dano = 1
					global.batalha[_id_inimigo.vez].vida -= dano
					if global.batalha[_id_inimigo.vez].vida > 0 {
						play_audio_random(sfx_damage)
						part_system_position(part_system_create(ef_hit), _id_inimigo.x, _id_inimigo.y)
					}
					else{
						play_audio_random(sfx_death)
						part_system_position(part_system_create(ef_death), _id_inimigo.x, _id_inimigo.y)
					}
				}
				//atacando inimigo morto
				else{
					play_audio_random(sfx_damage)
					//show_message("Acertou o inimigo morto, tu é burro!")
				}
			
				global.atacando = false;
				global.vez ++;
				
			}
		}
	}
}