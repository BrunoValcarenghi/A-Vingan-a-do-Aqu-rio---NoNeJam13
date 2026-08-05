if !global.flag_abelha{
	dirx = irandom_range(xx - 30, xx + 30)
	diry = irandom_range(yy - 30, yy + 30)
}
else{
	dirx = irandom_range(672, 736)
	diry = irandom_range(345, 384)
}

if dirx > x image_xscale = -1
else image_xscale = 1