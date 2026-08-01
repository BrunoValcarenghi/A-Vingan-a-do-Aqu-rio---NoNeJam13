////draw_self()
//draw_set_colour(c_black)
//draw_set_halign(1)
//draw_set_valign(1)
//draw_set_font(f_nicopaint)

//if global.seu_turno {txt = "Seu Turno"}
//else {txt = "Turno Inimigo"}
//draw_text(window_get_width()/2, 30, txt)

//draw_set_halign(0)

//var _t = 3
//if array_length(global.personagens) < 3 _t = array_length(global.personagens)

//for(i = 0; i < _t; i++){
	
//	draw_set_colour(c_black)
//	draw_text(
//		20, 
//		i*80+30, 
//		string_concat(global.personagens[i].nome, ": ", global.personagens[i].vida)
//	)
	
//	draw_set_colour(c_red)
//	var _tamanho = (global.personagens[i].vida/global.personagens[i].hp) * 100
//	draw_rectangle(
//		20, 
//		i*80+50, 
//		20 + _tamanho,
//		i*80+60, 
//		0
//	)
	
//}

//draw_set_halign(2)
//for(i = 0; i < array_length(global.inimigos); i++){
	
//	draw_set_colour(c_black)
//	draw_text(	
//		window_get_width()-20, 
//		i*80+30, 
//		string_concat(global.inimigos[i].nome, ": ", global.inimigos[i].vida)
//	)
	
//	draw_set_colour(c_red)
//	var _tamanho = (global.inimigos[i].vida/global.inimigos[i].hp) * 100
//	draw_rectangle(
//		window_get_width()-20,
//		i*80+50,
//		window_get_width()-20 - _tamanho, 
//		i*80+60, 
//		0
//	)
	
//}

