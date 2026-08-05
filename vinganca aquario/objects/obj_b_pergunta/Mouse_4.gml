play_audio_random(sfx_shoot, .7, 1.5)
instance_destroy(obj_b_pergunta)
instance_destroy(obj_dialogo)
obj_player.trava = false
instance_create_layer(obj_cam.x, obj_cam.y, "ui", obj_b_resultado, {flag: f, resultado: r, validar: t})