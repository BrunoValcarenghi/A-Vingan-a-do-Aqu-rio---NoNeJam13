variable = global.display

if  image_xscale = -1 {
	
	if variable < limit{
		variable += 1
		
	}
	else{
		variable = 0
	}

}
else{

	if variable > 0{
		variable -= 1
	}
	else{
		variable = limit
	}


}

global.display = variable

// set display mode
// aplica modo de visualización
// aplica modo de exibição
if global.display = 1 window_set_fullscreen(true);
else window_set_fullscreen(false);
