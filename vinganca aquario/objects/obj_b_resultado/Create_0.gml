image_xscale = .1

d = false
i = 0
alarm[0] = 180
fim = false

if validar play_audio_random(sfx_item, 1.5, 2)
else play_audio_random(sfx_death, .7, 1.2)

switch flag{

	case "cachorro":
		
		global.flag_dog = validar
		if global.flag_dog {
			array_push(global.personagens, global.Cachorro)
			instance_destroy(obj_cachorro)
		}
		break;
		
	case "esmola":
		global.flag_esmola = validar
		break;
		
	case "regador":
		global.flag_regador = validar
		if instance_exists(obj_escudo) instance_destroy(obj_escudo)
		layer_set_visible("tl_lama", 1)
		break;
		
	case "vela":
		global.flag_vela = validar
		break;
		
	case "abelha":
		global.flag_abelha = validar
		if global.flag_abelha {
			if instance_exists(obj_ladrao) instance_destroy(obj_ladrao)
			if instance_exists(obj_colmeia) instance_destroy(obj_colmeia)
		}
		break;
		
	case "esmola2":
		if validar adicionar_item("med_kit", 1)
		break;
		
	case "mago":
		global.flag_mago = validar
		if global.flag_mago {
			array_push(global.personagens, global.Mago)
			instance_destroy(obj_mago)
		}
		break;
		
	case "fonte":
		global.flag_sabao = validar
		if global.flag_sabao{
			global.arquimago.hp /= 2
			global.arquimago_f.hp  /= 2
			global.arquimago_f.hp  /= 2
			global.elfo.hp  /= 2
			global.elfo_guarda.hp  /= 2
			global.elfo_mago.hp  /= 2
		}
		else{
		
			for(var j = 0; j < array_length(global.personagens); j++){
			
				global.personagens[j].hp = global.personagens[j].vida
			
			}
		
		}
		break;
		
	case "comida":
		global.flag_banquete = validar
		if global.flag_banquete {
			if instance_exists(obj_elfo_guarda) instance_destroy(obj_elfo_guarda)
			if instance_exists(obj_elfo) instance_destroy(obj_elfo)
			if instance_exists(obj_elfo_mago) instance_destroy(obj_elfo_mago)
		}
		break;
		
	default: break;


}