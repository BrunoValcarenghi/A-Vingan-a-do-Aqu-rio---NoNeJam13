// write text from the language
// escribir texto desde el idioma
// escreve texto apartir do idioma
draw_self()

draw_set_halign(fa_center)
draw_set_valign(fa_middle)

draw_set_font(f_nicoclean)
draw_set_colour(c_white)

switch global.language{

	case 1: 
		if global.display = 1{text1 = "pantalla completa"}
		else{text1 = "modo ventana"}
		text2 =  "modo de visualización"; 
		break;
	case 2: 
		if global.display = 1{text1 = "tela cheia"}
		else{text1 = "modo janela"}
		text2 =  "modo de tela"; 
		break;
	default: 
		if global.display = 1{text1 = "fullscreen"}
		else{text1 = "windowed mode"}
		text2 = "display mode"; 
		break;

}

draw_text(x,y, text1)

draw_set_font(f_nicoclean)

draw_text(x,y-32, text2)
