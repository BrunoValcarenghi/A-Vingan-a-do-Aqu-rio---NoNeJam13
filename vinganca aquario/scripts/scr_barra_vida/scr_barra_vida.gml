function barra_vida(_x, _y, _largura, _altura, _atual, _max, _cor = global.red){

    var _p = clamp(_atual / max(_max, 1), 0, 1);

    draw_set_colour(_cor);
    draw_rectangle(_x, _y, _x + _largura * _p, _y + _altura, 0);

}