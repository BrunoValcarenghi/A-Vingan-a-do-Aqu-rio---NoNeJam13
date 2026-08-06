function button_hover_1(){
	
	//cor
	if place_meeting(x, y, obj_cursor){
		
		if color != h_color and image_alpha = 1 audio_play_sound(sfx_button, 20, 0, global.volume/2)
		
		color = h_color
		b_color = hb_color
		
		image_xscale = scale + 0.1
		image_yscale = 1.1

	}
	else{
		
		color = i_color
		b_color = ib_color
		
		image_xscale = scale
		image_yscale = 1
		
	}

}
function button_hover_2(){
	
	//cor
	if place_meeting(x, y, obj_cursor){
		
		if color != h_color and image_alpha = 1 audio_play_sound(sfx_button, 20, 0, global.volume/2)
		
		color = h_color
		b_color = hb_color
		
		if tx < 5 tx += 0.3
		if x < 180 x += 2.5

	}
	else{
		
		color = i_color
		b_color = ib_color
		
		if tx > 0 tx -= 0.5
		if x > 160 x -= 3.3

	}

}

function button_next_previus_hover(){
	
	if place_meeting(x, y, obj_cursor){
		
		image_xscale = 1.1
		image_yscale = 1.1
		
	}
	else{
	
		image_xscale = 1
		image_yscale = 1
	
	}
	
}

function button_hover_battle(xscale = 1.8, yscale = 2){
	
	//cor
	if place_meeting(x, y, obj_cursor){
		
		if color != h_color and image_alpha = 1 audio_play_sound(sfx_button, 20, 0, global.volume/2)
		
		color = h_color
		b_color = hb_color
		
		image_xscale = xscale + .1
		image_yscale = yscale + .1

	}
	else{
		
		color = i_color
		b_color = ib_color
		
		image_xscale = xscale
		image_yscale = yscale
		
	}

}