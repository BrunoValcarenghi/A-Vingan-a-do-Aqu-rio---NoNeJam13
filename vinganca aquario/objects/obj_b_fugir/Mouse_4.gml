if ativo{
	
	
	if global.inimigos[0].fugir != 0{
		
		back = true
		transition(global.sala_anterior, sq_fade_out, sq_fade_in)
		play_audio_random(sfx_dialogo, 1, 1.5, .5)
	
	}
	else{
		
		global.vez ++
		play_audio_random(sfx_shoot, 1, 1.5, .5)
		
	}
	
}