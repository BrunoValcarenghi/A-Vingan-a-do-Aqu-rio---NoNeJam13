x = obj_cam.x
y = obj_cam.y + 130

if image_xscale < 1.4 image_xscale += 0.1

if i >= array_length(f) - 1{
	if keyboard_check_pressed(ord("E")) or alarm[0] = 0 or mouse_check_button_pressed(mb_left){
		transition(Room1, sq_fade_out, sq_fade_in)
	}
}
else if keyboard_check_pressed(ord("E")) or alarm[0] = 0 or mouse_check_button_pressed(mb_left){
	alarm[0] = 800
	play_audio_random(sfx_dialogo)
	i++
	layer_background_index(layer_background_get_id("Background"), i);
	image_xscale = 0
}

