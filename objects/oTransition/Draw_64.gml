/// @description draw black bars
if (mode != TRANS_MODE.OFF)
{
	draw_set_color(c_black);
	draw_set_alpha(1);
	draw_rectangle(0,0,w*percent,h,false);
}