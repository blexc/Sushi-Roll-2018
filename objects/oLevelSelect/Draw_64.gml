/// @description draw level select

// draws Sushi Specials Text
draw_set_font(fMenu);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
var xx = gui_width/2;
var yy = 150;
var offset = 2;
draw_set_color(c_black);
draw_text(xx,yy-offset,txtCenter);
draw_text(xx,yy+offset,txtCenter);
draw_text(xx-offset,yy,txtCenter);
draw_text(xx+offset,yy,txtCenter);
draw_set_color(c_white);
draw_text(xx,yy,txtCenter);

// draws the options
draw_set_font(level_font);
draw_set_halign(fa_left);
draw_set_valign(fa_bottom);

for (var i=0; i<level_items; i++)
{
	var offset = 2;
	var txt = level[i];
	if (level_cursor == i)
	{
		txt = string_insert("> ",txt,0);	
		var col = c_white;
	}
	else
	{
		var col = c_gray;	
	}
	var xx = level_x;
	var yy = level_y - (level_itemheight * (i * 1.5));
	draw_set_color(c_black);
	draw_text(xx,yy-offset,txt);
	draw_text(xx,yy+offset,txt);
	draw_text(xx-offset,yy,txt);
	draw_text(xx+offset,yy,txt);
	draw_set_color(col);
	draw_text(xx,yy,txt);
}

// draw black box to prevent text overlap
draw_set_color(c_black);
draw_rectangle(-400,gui_height-600,0,gui_height,false);