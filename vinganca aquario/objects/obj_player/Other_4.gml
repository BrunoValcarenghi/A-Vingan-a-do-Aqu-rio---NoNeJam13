if instance_exists(obj_player) obj_player.trava = false

if room != Room_battle mask_index = spr_col_player
else mask_index = spr_player

if !instance_exists(obj_player_col) instance_create_layer(x,y,"Instances", obj_player_col)