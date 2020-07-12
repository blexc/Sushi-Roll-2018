// set font
draw_set_font(fScore);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_text(oCamera.x, oCamera.y+25-RES_H/2, "Time " + strtime);

// draw black dot in screen
draw_set_color(c_black);	
draw_set_halign(fa_middle);
draw_set_valign(fa_middle);
draw_circle(oCamera.x,oCamera.y,7,false);