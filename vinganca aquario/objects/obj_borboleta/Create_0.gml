sys_borboletas = part_system_create();
part_borboleta = part_type_create();

part_type_sprite(part_borboleta, spr_borboleta, false, false, true); 


part_type_size(part_borboleta, 0.5, 1, -0.001, 0); 
part_type_speed(part_borboleta, 0.3, 0.8, 0, 0);
part_type_direction(part_borboleta, 0, 360, 1, 10);
part_type_life(part_borboleta, 180, 360);
part_type_alpha3(part_borboleta, 0, 0.8, 0);


gerando_efeito = false;