if (flw != noone)
{

	xt = flw.x
	yt = flw.y

}



x += (xt - x)/25
y += (yt - y)/25

camera_set_view_pos(view_camera[0], x-(camw/2), y-(camh/2))