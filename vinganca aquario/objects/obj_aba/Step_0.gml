if global.pause_state = state {
	
	if image_yscale < 1 image_yscale += .1
	depth = 399
}
else {
	
	if image_yscale > .6 image_yscale -= .1
	depth = 500
}
