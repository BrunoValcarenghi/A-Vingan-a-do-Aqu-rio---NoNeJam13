if instance_exists(obj_orc){
x += (obj_orc.x - x)/25
y += (obj_orc.y - y)/25
depth = obj_orc.depth - 1
}
else if instance_exists(obj_char){
x += (instance_nearest(x, y, obj_char).x - x)/25 
y += (instance_nearest(x, y, obj_char).y - y)/25
depth = obj_char.depth - 100
}
else{

	instance_destroy()

}