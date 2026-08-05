vez = 0  //defnido ao entrar na batalha
spd = 1 //spd movimento na tela

spd_char = 0 //spd dos stats

atacou = false
defendeu = false
morto = false

pisca_timer = .04 //ao selecionar ataque ou item

if x = 200{bom = true}
else bom = false

hit = 0;

desenhar_hit = function() {
    if (hit > 0) {
        gpu_set_fog(true, c_white, 0, 1);
		draw_self();
        gpu_set_fog(false, c_white, 0, 1);
		if bom x-=2
		else x+=2
        hit--;

    } else {
        draw_self();
    }
}
