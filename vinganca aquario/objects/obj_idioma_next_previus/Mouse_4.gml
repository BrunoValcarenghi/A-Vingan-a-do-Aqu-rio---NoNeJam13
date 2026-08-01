variable = global.language

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

global.language = variable