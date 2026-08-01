switch state{
	
	case 1: text = "EQUIPE"; break
	case 2: text = "BOLSA"; break
	case 3: text = "SISTEMA"; break
	default: text = ""; break;

}

draw_self()

draw_set_halign(1)
draw_set_valign(0)

draw_set_font(f_nicoclean)
draw_set_colour(global.brown)

draw_text(x, y - 24 * image_yscale, text)