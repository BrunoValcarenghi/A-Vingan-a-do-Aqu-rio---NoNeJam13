draw_self()

if image_xscale < 1
image_xscale += .03

draw_set_font(f_nicopups)
draw_set_colour(global.brown)
draw_set_valign(0)
draw_set_halign(0)

if i > 1 draw_text(x - 100, y - 50 , txt1)
if i > 3 draw_text(x + 3, y - 50 , txt2)


draw_set_halign(1)
draw_set_font(f_nicopaint)

if i > 0 draw_text(x - 48, y - 65 , "Vitória")
if i > 2 draw_text(x + 48, y - 65 , "Ganhou:")
