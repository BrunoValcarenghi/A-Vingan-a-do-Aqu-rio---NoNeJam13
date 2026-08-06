draw_self()

c = global.personagens[id_char]

draw_set_colour(global.brown)

if image_alpha = 1
{
	draw_sprite(c.sprite, 0, x, y)
	draw_sprite_ext(spr_slot, 0, x, y + 40, 2, .5, 0, c_white, 1)

	barra_vida(x - 29, y + 35, 57, 9, c.vida, c.hp)
}