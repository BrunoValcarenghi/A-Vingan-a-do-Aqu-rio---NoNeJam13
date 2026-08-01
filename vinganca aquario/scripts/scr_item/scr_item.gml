function item(){

	if global.item{
		//clicou
		if mouse_check_button_pressed(mb_left) {
	
			//no inimigo
			if collision_point(mouse_x, mouse_y, obj_char, true, false){
		
				//inimigo fulano de tal
				global.char_id_atual = instance_nearest(mouse_x, mouse_y, obj_char).vez
				
				use_item("batalha")
				
				cancela_item()
				
				global.item = false;
				global.vez ++;
				
			}
		}
	}

}

function cancela_item(){
	
	instance_destroy(obj_item)
	instance_destroy(obj_inventario_battle)
	instance_destroy(obj_item_battle_cursor)
	instance_destroy(obj_b_cancelar)
	global.item = false
	global.battle_inventaro = false

}