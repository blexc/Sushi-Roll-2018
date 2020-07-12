/// @description level startup
if (InLevel()) && (!readytogo)
{
	// level begin screen
	draw_set_color(c_black);
	draw_set_alpha(screenalpha);
	draw_rectangle(0,0,room_width,room_height,false);
	
	draw_set_color(c_white);
	draw_set_alpha(1);
	draw_circle(oCamera.x,oCamera.y,10,false);
	
	// start game if mouse in center
	if (mouse_x < oCamera.x+10) && (mouse_x >= oCamera.x-10) && 
		(mouse_y < oCamera.y+10) && (mouse_y >= oCamera.y-10)
	{
		alarm[0] = 60;
		display_guide = false;
		
		draw_set_font(fScore);
		draw_set_color(c_white);
		draw_set_halign(fa_middle);
		draw_set_valign(fa_bottom);
		draw_text(oCamera.x,oCamera.y-30,"Ready?");
		screenalpha -= 0.02;
		if (screenalpha <= 0.1) 
		{
			readytogo = true;
			
			with (instance_create_layer(95, 127,"Ball",oBall)) // note: must fix magic numbers
			{
				switch (room)
				{
					case rLevel1: sprite_index = sCaliRoll; break;	
					case rLevel2: sprite_index = sMeatball; break;	
					case rLevel3: sprite_index = sTofuRoll; break;
				}
			}
			instance_create_layer(x,y,"Highest",oTimer);
			// 2870,242 for end
			// 95, 127 for beginning coordinates
		}
	}
	else
	{
		screenalpha = 0.9;
		if (display_guide)
		{
			draw_sprite_ext(sJumpTutorial,1,oCamera.x+100,oCamera.y+100,1,1,0,c_white,0.5);
			draw_sprite_ext(sResetTutorial,1,oCamera.x-100,oCamera.y+100,1,1,0,c_white,0.5);
			draw_sprite_ext(sTiltTutorial,1,oCamera.x,oCamera.y-125,1,1,0,c_white,0.5);
			
			draw_set_alpha(1);
			draw_set_font(fScore);
			draw_set_color(c_white);
			draw_set_halign(fa_middle);
			draw_set_valign(fa_bottom);
			draw_text(oCamera.x,oCamera.y-30,"Place mouse in the center to begin");	
		}
	}
}