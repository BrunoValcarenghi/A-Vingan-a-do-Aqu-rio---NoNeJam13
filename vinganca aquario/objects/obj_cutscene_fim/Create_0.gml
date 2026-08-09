image_xscale = 0
image_yscale = 1.2
play_audio_random(sfx_dialogo)

if global.flag_esmola i = 0
else i = 1

alarm[0] = 120


t = true

layer_background_index(layer_background_get_id("Background"), i);