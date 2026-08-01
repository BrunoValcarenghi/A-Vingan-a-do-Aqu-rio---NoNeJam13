// save language
// guarda idioma
// salva o idioma
ini_open("save.sav")

ini_write_real("game", "language", global.language)
ini_write_real("game", "display", global.display)

ini_close()



// go to previous room
// ir a la room anterior
// vai para a sala anterior
room_goto_previous()