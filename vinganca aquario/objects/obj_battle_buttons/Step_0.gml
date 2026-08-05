if global.atacando or global.battle_inventaro{ativo = false;}
else if global.seu_turno {ativo = true;}
else {ativo = false;}

if ativo {

	image_alpha = 1
}
else {
	b_color = global.bege
	color = global.lightbrown
	image_alpha = .3
}