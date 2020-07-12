draw_set_color(c_black);
draw_rectangle(0, 0, room_width, 140, false);
draw_rectangle(0, room_height, room_width, room_height-140, false);

draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(fCutscene);
draw_text(200, room_height-120, print);

if (holdback > 0)
{
	draw_set_halign(fa_right);
	draw_set_valign(fa_top);
	draw_set_alpha(holdback/80);
	draw_text(room_width-50,50,"Hold backspace to skip...");
	draw_set_alpha(1);
}

draw_set_alpha(alpha);
draw_set_color(c_black);
draw_rectangle(0, 0, room_width, room_height, false);
draw_set_alpha(1);