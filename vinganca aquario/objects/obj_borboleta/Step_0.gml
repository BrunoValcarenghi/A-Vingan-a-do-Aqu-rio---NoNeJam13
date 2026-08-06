if (instance_exists(obj_b_resultado)) {
    if (irandom(15) == 0) {
        var _x = random_range(camera_get_view_x(view_camera[0]), camera_get_view_x(view_camera[0]) + 640)
        var _y = random_range(camera_get_view_y(view_camera[0]), camera_get_view_y(view_camera[0]) + 360)
        part_particles_create(sys_borboletas, _x, _y, part_borboleta, 1);
    }
}