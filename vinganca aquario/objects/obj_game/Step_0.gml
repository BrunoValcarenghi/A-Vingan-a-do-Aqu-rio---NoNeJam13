if room = Room_settings and 
(keyboard_check_pressed(vk_escape) or 
mouse_check_button_pressed(mb_right)){

	room_goto_previous()

}

//Fullscreen

ini_open("save.sav")
if keyboard_check_pressed(ord("F"))
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
