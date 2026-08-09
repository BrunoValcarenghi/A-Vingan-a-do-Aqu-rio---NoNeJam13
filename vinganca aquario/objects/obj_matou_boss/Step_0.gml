if place_meeting(x, y, obj_player) and !instance_exists(obj_boss) and !instance_exists(obj_transicao_ato){

    instance_create_layer(x, y, "Instances", obj_transicao_ato)

}