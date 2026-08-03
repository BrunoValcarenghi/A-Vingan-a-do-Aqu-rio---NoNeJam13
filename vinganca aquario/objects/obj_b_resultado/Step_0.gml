x = obj_cam.x
y = obj_cam.y - 150

if image_xscale < string_length(resultado)/20 and !fim image_xscale*=1.05
else d = true

if fim{

	image_alpha -= .015
	if image_xscale > .1 image_xscale -= .01
	i -= .18
	
	if image_alpha <= 0 instance_destroy()
	
}