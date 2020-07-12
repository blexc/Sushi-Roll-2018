// draw victory message
var txt = "Level Complete!";
var col = c_white;
var offset = 2;
var y_fromcenter = 150;
draw_set_color(c_black);
draw_set_font(fVictory);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_text(gui_w_half+offset,(gui_h_half)-y_fromcenter,txt);
draw_text(gui_w_half-offset,(gui_h_half)-y_fromcenter,txt);
draw_text(gui_w_half,(gui_h_half)-y_fromcenter+offset,txt);
draw_text(gui_w_half,(gui_h_half)-y_fromcenter-offset,txt);

draw_set_color(col);
draw_text(gui_w_half,(gui_h_half)-y_fromcenter,txt);

// draw score tally on the left
draw_set_font(tally_font);
draw_set_halign(fa_left);
draw_set_valign(fa_bottom);
	
for (var i=0; i<tally_items; i++)
{
	var offset = 2;
	var txt = tally[i];
	var col = c_white;
	var xx = tally_x;
	var yy = tally_y - (tally_itemheight * (i * 1.5));
	draw_set_color(c_black);
	draw_text(xx,yy-offset,txt);
	draw_text(xx,yy+offset,txt);
	draw_text(xx-offset,yy,txt);
	draw_text(xx+offset,yy,txt);
	draw_set_color(col);
	draw_text(xx,yy,txt);
}

// draw points on the right
draw_set_font(points_font);
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);
	
for (var i=0; i<points_items; i++)
{
	var offset = 2;
	var txt = points[i];
	var col = c_white;
	var xx = points_x;
	var yy = points_y - (points_itemheight * (i * 1.5));
	draw_set_color(c_black);
	draw_text(xx,yy-offset,txt);
	draw_text(xx,yy+offset,txt);
	draw_text(xx-offset,yy,txt);
	draw_text(xx+offset,yy,txt);
	draw_set_color(col);
	draw_text(xx,yy,txt);
}