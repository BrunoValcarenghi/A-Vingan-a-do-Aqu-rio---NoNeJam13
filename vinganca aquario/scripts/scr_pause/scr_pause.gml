function scr_pause(){

	if keyboard_check_pressed(vk_escape) and obj_transition.saida = -1{
	
		global.pausa=!global.pausa
	
	}
	
	if global.pausa and room != Room_pause{
	
		global.sala_anterior = room;
		room_goto(Room_pause)
		//transition(Room_pause, sq_fade_out, sq_fade_in)
		
	}
	else if !global.pausa and room = Room_pause{
	
		room_goto(global.sala_anterior)
		//transition(global.sala_anterior, sq_fade_out, sq_fade_in)
	
	}
	
}

function avanca_menu_pause(_next){
	
	global.menu_anterior = room;
	room_goto(_next);

}
function volta_menu_pause(){
	
	if keyboard_check_pressed(vk_escape) or mouse_check_button(mb_right){
	
		room_goto(global.menu_anterior);
	
	}

}

function renderizar_pause(){

	switch global.pause_state{
	
		case 1:{
			instance_activate_layer("equipe")
			instance_deactivate_layer("bolsa")
			instance_deactivate_layer("sistema")
			
			//desenhando menu da equipe
			
			for(var i = 0; i < array_length(global.personagens); i++){
			
				instance_create_layer(88 * (i+1), 208, "equipe", obj_avatar, {image_xscale: 2, image_yscale: 2, id_char: i})
			
			}
			
			break;
		}
		case 2:{ 
			instance_activate_layer("bolsa")
			instance_deactivate_layer("equipe")
			instance_deactivate_layer("sistema")
			
			for(var i = 0; i < array_length(global.inventario); i++){
				
			var _x = i
			if i >= 5 _x = i - 5
			var _y = 0
			if i >= 5 _y = 32
			
				instance_create_layer(88 + _x * 44, 208 + _y, "bolsa", obj_item, {id_item: i})
			
			}
			for(var i = 0; i < array_length(global.personagens); i++){

				instance_create_layer(392 + 72 * i, 264, "bolsa", obj_usar_item, {id_char: i})

			}
			
			break;
		}
		default: 
			instance_activate_layer("sistema")
			instance_deactivate_layer("bolsa")
			instance_deactivate_layer("equipe")
			break;

	}

}