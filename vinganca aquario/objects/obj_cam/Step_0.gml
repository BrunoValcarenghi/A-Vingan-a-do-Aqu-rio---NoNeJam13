if (flw != noone)
{
	
	if flw.x > 320 and flw.x <  960 xt = flw.x
	if flw.y > 180 and flw.y < 1420 yt = flw.y

}

x += (xt - x)/25
y += (yt - y)/25

//camera_set_view_pos(view_camera[0], x-(camw/2), y-(camh/2))

var _shake_x = 0;
var _shake_y = 0;

if (variable_global_exists("shake_amount") && global.shake_amount > 0) {
	
    _shake_x = random_range(-global.shake_amount, global.shake_amount);
    _shake_y = random_range(-global.shake_amount, global.shake_amount);
    
    global.shake_amount *= 0.85;
    
    if (global.shake_amount <= 0.2) {
        global.shake_amount = 0;
    }
}

camera_set_view_pos(view_camera[0], (x - (camw / 2)) + _shake_x, (y - (camh / 2)) + _shake_y);

