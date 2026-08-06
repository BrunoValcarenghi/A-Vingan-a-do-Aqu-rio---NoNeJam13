draw_set_halign(1)
draw_set_valign(1)
draw_set_font(f_nicopaintx2)

text_border(x, y, "A VINGANÇA DO AQUÁRIO", global.brown, global.red, 2)

draw_set_colour(global.brown)

draw_text(192, 148, "JOGO")
draw_text(448, 148, "CONTROLES")

draw_set_font(f_nicopaint)

draw_set_colour(global.bege)
draw_sprite(spr_slot_2, 0, 384, 192)
draw_text(384, 192, "W")
draw_sprite(spr_slot_2, 0, 352, 224)
draw_text(352, 224, "A")
draw_sprite(spr_slot_2, 0, 384, 224)
draw_text(384, 224, "S")
draw_sprite(spr_slot_2, 0, 416, 224)
draw_text(416, 224, "D")
draw_set_halign(1)
draw_set_colour(global.lightbrown)
draw_text(384, 250, "ANDAR")

draw_set_colour(global.bege)
draw_sprite_stretched(spr_slot_2, 0, 342, 265, 80, 32)
draw_text(384, 283, "Ctrl")
draw_set_halign(1)
draw_set_colour(global.lightbrown)
draw_text(384, 305, "CORRER")

draw_set_colour(global.bege)
draw_sprite(spr_slot_2, 0, 512, 208)
draw_text(512, 208, "F11")
draw_set_halign(1)
draw_set_colour(global.lightbrown)
draw_text(512, 234, "TELA CHEIA")

draw_set_colour(global.bege)
draw_sprite(spr_slot_2, 0, 512, 265)
draw_text(512, 265, "E")
draw_set_halign(1)
draw_set_colour(global.lightbrown)
draw_text(512, 290, "DIALOGO")


draw_set_halign(0)
draw_set_valign(0)
text_border(450, 340, "Autor: Valcarenghi", global.brown, global.bege, 1)


