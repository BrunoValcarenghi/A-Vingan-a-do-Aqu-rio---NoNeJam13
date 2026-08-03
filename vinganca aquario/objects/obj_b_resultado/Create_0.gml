image_xscale = .1

d = false
i = 0
alarm[0] = 180
fim = false

switch flag{

	case "cachorro":
		
		global.flag_dog = validar
		if global.flag_dog {
			array_push(global.personagens, global.Cachorro)
			instance_destroy(obj_cachorro)
		}
		break;
		
	default: break;


}