draw_self()

c = global.personagens[id_char]

draw_set_colour(global.brown)

draw_sprite(c.sprite, 0, x, y)

draw_set_font(f_nicoclean)

draw_set_halign(1)
draw_set_valign(0)

draw_text(x, y + 32, c.nome)