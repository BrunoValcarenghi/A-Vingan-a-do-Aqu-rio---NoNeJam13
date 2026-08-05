ativo = true

if global.flag_esmola{

	instance_create_layer(416, 992, "Instances", obj_suspeito_2)

}

if global.flag_vela{

	instance_create_layer(1120, 544, "inimigos", obj_boss_espirito)

}

if global.flag_rato and global.flag_regador{

	instance_create_layer(544, 1472, "inimigos", obj_boss_rato)

}