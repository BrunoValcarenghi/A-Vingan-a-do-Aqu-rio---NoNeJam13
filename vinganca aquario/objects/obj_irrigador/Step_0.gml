if obj_player.y < y depth = obj_player.depth - 1
else depth = obj_player.depth + 1

if (global.flag_regador && agua == noone) {
    agua = part_system_create(ef_regador);
}

if (agua != noone && part_system_exists(agua)) {
    part_system_position(agua, x, y);
}