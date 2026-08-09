var _c  = view_camera[0]
var _vx = camera_get_view_x(_c)
var _vy = camera_get_view_y(_c)
var _vw = camera_get_view_width(_c)
var _vh = camera_get_view_height(_c)

draw_sprite_ext(spr_transicao, 0,
                _vx + _vw/2, _vy + _vh/2,
                1, 1, 0, c_white, alpha)