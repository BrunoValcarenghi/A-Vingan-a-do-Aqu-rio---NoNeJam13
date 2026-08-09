var _cx = obj_cam.x
var _cy = obj_cam.y

draw_set_font(f_nicoclean)
draw_set_valign(fa_middle)
draw_set_halign(fa_center)
draw_set_alpha(alpha)

if estado == "fim"{

    // fundo preto cobrindo a tela toda
    draw_set_alpha(1)
    draw_rectangle_colour(_cx - 320, _cy - 180, _cx + 320, _cy + 180,
                          c_black, c_black, c_black, c_black, false)
    draw_set_alpha(alpha)

    draw_set_colour(global.bege)
    draw_text(_cx, _cy - 50, "EFEITO BORBOLETA")

    draw_set_colour(global.brown)
    draw_text(_cx, _cy + 10,
        "Nada do que você fez ficou para trás.\n" +
        "Outras escolhas levariam a outro caminho.")

    if alpha >= 1 draw_text(_cx, _cy + 90, "Clique para jogar de novo")
}
else{

    var _s = slides[atual]

    draw_sprite_ext(_s.spr, 0, 0, 0, 1, 1, 0, c_white, alpha)

    // faixa escura pro texto ficar legível sobre a arte
    draw_set_alpha(alpha * 0.7)
    draw_rectangle_colour(_cx - 320, _cy + 95, _cx + 320, _cy + 180,
                          c_black, c_black, c_black, c_black, false)
    draw_set_alpha(alpha)

    draw_set_colour(global.bege)
    draw_text(_cx, _cy + 132, _s.txt)

	if atual < n_escolhas{
        draw_set_colour(global.brown)
        draw_set_halign(fa_right)
        draw_text(_cx + 300, _cy + 172,
                  string(atual + 1) + " / " + string(n_escolhas))
    }
}

draw_set_alpha(1)
draw_set_halign(fa_left)
draw_set_valign(fa_top)