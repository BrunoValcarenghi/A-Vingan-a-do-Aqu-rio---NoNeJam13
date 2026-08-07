draw_self()
draw_set_colour(global.black)
draw_set_halign(1)
draw_set_valign(1)
draw_set_font(f_nicopaint)

if global.seu_turno {txt = "Seu Turno"}
else {txt = "Turno Inimigo"}
if !ganhou text_border(320, 34, txt, global.black, global.red, 1)

draw_set_font(f_nicopups)

draw_set_halign(0)
var _t = 3
if array_length(global.personagens) < 3 _t = array_length(global.personagens)
for(i = 0; i < _t; i++){

	draw_sprite_ext(spr_slot, 0, 84, i*60+38, 5, 1.5, 0, c_white, 1)
	draw_sprite_ext(spr_header, 0, 84, i*60+48, 2, 1, 0, c_white, 1)
	draw_set_colour(global.bege)
	draw_text(
		20, 
		i*60+30, 
		string_concat(global.personagens[i].nome, ": HP ", global.personagens[i].vida, "/", global.personagens[i].hp)
	)
	barra_vida(24, i*60 + 43, 120, 8, global.personagens[i].vida, global.personagens[i].hp)
	
}

draw_set_halign(2)
for(i = 0; i < array_length(global.inimigos); i++){
	
	
	draw_sprite_ext(spr_slot, 0, 556, i*60+38, 5, 1.5, 0, c_white, 1)
	draw_sprite_ext(spr_header, 0, 556, i*60+48, 2, 1, 0, c_white, 1)
	draw_set_colour(global.bege)
	draw_text(	
		620, 
		i*60+30, 
		string_concat(global.inimigos[i].nome, ": HP ", global.inimigos[i].vida, "/", global.inimigos[i].hp)
	)
	
	barra_vida(617, i*60 + 43, -122, 8, global.inimigos[i].vida, global.inimigos[i].hp)
	
}
if efeito_timer > 0{
    efeito_timer--;
    draw_set_halign(1);
    draw_set_font(f_nicoclean);
    draw_set_colour(global.bege);
    for(var i = 0; i < array_length(efeitos); i++){
        draw_text(320, 180 + i*16, efeitos[i]);
    }
    draw_set_halign(0);
}