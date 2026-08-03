camw = 640
camh = 360

if instance_exists(obj_player) flw = obj_player
else flw = noone

if flw != noone{

	if flw.x > 320 and flw.x <  960 x = flw.x
	if flw.y > 180 and flw.y < 1420 y = flw.y

}

xt = x
yt = y