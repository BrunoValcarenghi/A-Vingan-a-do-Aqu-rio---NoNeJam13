draw_self()

if image_xscale < 1
image_xscale += .03

draw_set_halign(1)
draw_set_font(f_nicopaint)

if image_xscale > 1 draw_text(x, y, "GAME OVER")

i += .008

draw_set_colour(global.black)
draw_set_alpha(i)
draw_rectangle(-100, -100, 700, 400, 0)
draw_set_alpha(1)