x = obj_cam.x
y = obj_cam.y + 130

obj_player.trava = true

if obj_player.key_interactive or alarm[0] = 0 or mouse_check_button_pressed(mb_left){
	alarm[0] = 400
	play_audio_random(sfx_dialogo)
	i++
}

if i >= array_length(f) {
	
	if chose.pergunta != ""{
		
		if !e{
			instance_create_layer(x - 80, y+15, "ui", obj_b_pergunta, {
				depth: other.depth -1,
				txt: chose.o1,
				t: true,
				f: chose.f,
				r: chose.r1,
			})
			instance_create_layer(x + 80, y+15, "ui", obj_b_pergunta, {
				depth: other.depth -1,
				txt: chose.o2,
				t: false,
				f: chose.f,
				r: chose.r2,
			})
		}
		
		e = true
	}
	else{
		obj_player.trava = false
		instance_destroy()
	}
	
}