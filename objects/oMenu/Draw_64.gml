/// @description draw menu

// draw menu items
draw_set_font(menu_font);
draw_set_alpha(1);
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);
for (var i=0; i<menu_items; i++)
{
	var offset = 2;
	var txt = menu[i];
	if (menu_cursor == i)
	{
		txt = string_insert("> ",txt,0);
		if (menu_cursor == 2) && (!global.storycompleted)
		{
			var col = c_gray;	
		}
		else
		{
			var col = c_white;
		}
	}
	else
	{
		var col = c_gray;	
	}
	var xx = menu_x;
	var yy = menu_y - (menu_itemheight * (i * 1.5));
	draw_set_color(c_black);
	draw_text(xx,yy-offset,txt);
	draw_text(xx,yy+offset,txt);
	draw_text(xx-offset,yy,txt);
	draw_text(xx+offset,yy,txt);
	draw_set_color(col);
	draw_text(xx,yy,txt);
}

// draw star if completed the story
if (global.storycompleted) draw_sprite(sStar,0,10,10);

// draw black box to prevent text overlap
draw_set_color(c_black);
draw_rectangle(gui_width,0,gui_width+900,gui_height,false);