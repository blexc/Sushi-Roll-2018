/// @description oi
draw_set_color(c_black);
draw_rectangle(0, 0, room_width, 140, false);
draw_rectangle(0, room_height, room_width, room_height-140, false);

draw_set_color(c_white);
draw_set_halign(fa_middle);
draw_set_valign(fa_middle);
draw_set_font(fCutscene);
draw_text(room_width/2, room_height/2, print);

draw_set_alpha(alpha);
draw_set_color(c_black);
draw_rectangle(0, 0, room_width, room_height, false);
draw_set_alpha(1);