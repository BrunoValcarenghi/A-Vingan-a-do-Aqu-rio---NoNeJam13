if (flw != noone)
{
	
	if flw.x > 320 and flw.x <  960 xt = flw.x
	if flw.y > 180 and flw.y < 1420 yt = flw.y

}



x += (xt - x)/25
y += (yt - y)/25

camera_set_view_pos(view_camera[0], x-(camw/2), y-(camh/2))