//morte
if global.batalha[vez].vida <= 0 and !morto{
	global.batalha[vez].vida = 0
	//array_delete(global.batalha, vez, 1)
	morto = true;
	//instance_destroy()
	
}
		
//se tiver vivo
if !morto{

	if bom{
	
		//posicao amigo
		if global.vez = vez and x < 220{x += spd}
		else if global.vez != vez and x > 200{x-=spd}
	}
	else{
		
		//posicao inimigo
		if global.vez = vez and x >= 420{x -= spd}
		else if global.vez != vez and x <= 440{x+=spd}
	
		//acao do inimigo
		if global.vez = vez and !atacou{
		
			atacou = true
			alarm[0] = 60
		
		}
	
	}

	if global.atacando or global.item {
		pisca(.2, 1)
		image_xscale += pisca_timer/7
		image_yscale += pisca_timer/7
		}
	else {
		image_alpha = 1
		image_xscale = 1
		image_yscale = 1
	}
	
}
//morto
else{
	
	if global.batalha[vez].vida > 0 global.batalha[vez].vida = 0
	
	image_speed  = 0
	image_alpha = 0.3
	
		//acao morto, pula o turno
		if global.vez = vez{
			
			global.vez++
	
		}

}

//perder a defesa
if defendeu and !global.defendendo and vez = global.vez{
	
	perdeu_defesa(vez)
	
}