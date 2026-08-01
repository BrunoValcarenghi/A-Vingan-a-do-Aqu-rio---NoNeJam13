// write text from the language
// escribir texto desde el idioma
// escreve texto apartir do idioma
draw_self()

draw_set_halign(fa_center)
draw_set_valign(fa_middle)

draw_set_font(f_nicoclean)
draw_set_colour(c_white)

switch global.language{

	case 1: text1 = "español"; text2 = "idioma"; break;
	case 2: text1 = "português" text2 = "idioma"; break;
	default: text1 = "english"; text2 = "language"; break;

}

draw_text(x,y, text1)

draw_set_font(f_nicoclean)

draw_text(x,y-32, text2)





