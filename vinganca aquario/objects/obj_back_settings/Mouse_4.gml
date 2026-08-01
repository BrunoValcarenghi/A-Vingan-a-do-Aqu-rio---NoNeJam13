if room = Room_settings{
// load language and display mode
// carga idioma e modo de visualización
// carrega idioma e modo de exibição
ini_open("save.sav")

global.language = ini_read_real("game", "language", 0)
global.display = ini_read_real("game", "display", 0)

ini_close()

// set display mode
// aplica modo de visualización
// aplica modo de exibição
if global.display = 1 window_set_fullscreen(true);
else window_set_fullscreen(false);
}

// go to previous room
// ir a la room anterior
// vai para a sala anterior
room_goto_previous()

