draw_self()

c = global.personagens[global.id_char]

draw_set_halign(1)
draw_set_valign(1)

draw_set_font(f_nicoclean)
draw_set_colour(global.brown)

draw_text(x, y , "EQUIPE")

draw_set_font(f_nicopaintx2)
draw_text(466, 144 , c.nome)

var _hp = string_concat(

	"HP: ",
	c.vida,
	"/",
	c.hp,
	
)

var _xp = string_concat(

	"XP: ",
	c.xp,
	"/",
	50 * (power(c.lvl, 2)) + 100 * c.lvl,
	
)

draw_set_font(f_nicoclean)
draw_set_halign(0)
		  
draw_text(336, y + 48, string_concat("Level: ", c.lvl,))
draw_text(336, y + 64, _xp)
draw_text(336, y + 80, _hp)
draw_text(336, y + 96, string_concat("Atk: ", c.atk))
draw_text(336, y + 112, string_concat("Def: ", c.def))
draw_text(336, y + 128, string_concat("Spd: ", c.spd))

