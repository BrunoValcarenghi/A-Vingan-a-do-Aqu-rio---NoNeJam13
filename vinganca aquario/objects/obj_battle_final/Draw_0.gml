draw_self()

draw_sprite(spr_page1, 0, x, y)
draw_sprite(spr_page2, 0, x, y)

draw_set_font(f_nicopups)
draw_set_colour(global.brown)
draw_set_valign(0)
draw_set_halign(0)

draw_text(x - 100, y - 50 , txt1)
draw_text(x + 3, y - 50 , txt2)

draw_set_halign(1)
draw_set_font(f_nicopaint)
draw_text(x - 48, y - 65 , "Vitória")
draw_text(x + 48, y - 65 , "Ganhou:")