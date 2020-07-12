if (holdescape > 0)
{
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_color(c_white);
	draw_set_font(fScore);
	draw_set_alpha(holdescape/80);
	draw_text(30,25,"Quitting...");
	draw_set_alpha(1);
}