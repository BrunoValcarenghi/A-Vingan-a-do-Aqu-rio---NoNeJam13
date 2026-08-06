//Fullscreen

ini_open("save.sav")
if keyboard_check_pressed(vk_f11)
{
    if window_get_fullscreen()
    { 
		global.display = 0
        ini_write_real("game", "display", global.display)
		window_set_fullscreen(false);
    }
    else
    {	
		global.display = 1
		ini_write_real("game", "display", global.display)
        window_set_fullscreen(true);
    }
}
ini_close()
