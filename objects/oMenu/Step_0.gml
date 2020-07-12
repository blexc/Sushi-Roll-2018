/// @description control menu

// ease menu in
menu_x += (menu_x_target - menu_x) / menu_speed;

// control menu now
if (menu_control)
{
	if(keyboard_check_pressed(vk_up))
	{
		audio_sound_pitch(snIndexChange, 1);
		audio_play_sound(snIndexChange,3,false);
		menu_cursor++;
		if (menu_cursor >= menu_items) menu_cursor = 0;
	}
	if(keyboard_check_pressed(vk_down))
	{
		audio_sound_pitch(snIndexChange, 1);
		audio_play_sound(snIndexChange,3,false);
		menu_cursor--;
		if (menu_cursor < 0) menu_cursor = menu_items - 1;
	}
	if(keyboard_check_pressed(vk_enter))
	{
		audio_sound_pitch(snIndexChange, 1.5);
		audio_play_sound(snIndexChange,3,false);
		if (!global.storycompleted) && (menu_cursor == 2)
		{
			// temporary message
			show_message("You have to beat all the levels first!");
		}
		else if (menu_cursor == 1)
		{
			show_message("How to play:\n" +
						 "Move mouse left and right to control the platforms.\n" +
					     "Press spacebar to jump.\n" +
					     "Don't let the sushi touch the floor!\n" +
						 "If you're having trouble, try moving slowly!\n\n" +
						 "Start is for the main game.\n" + 
						 "Level Select is to master each level.\n" +
						 "CTRL+F for fullscreen.\n" +
						 "ESC in-game to go back to Title Screen.");
		}
		else
		{
			menu_x_target = gui_width + 600; // move menu back to edge?
			menu_committed = menu_cursor;
			menu_control = false;
		}
	}
}

if (menu_x > gui_width+150) && (menu_committed != -1)
{
	switch (menu_committed)
	{
		case 3: 
		{
			SlideTransition(TRANS_MODE.GOTO, rCutscene1);
			global.levelselected = false;
			break;
		}
		case 2: 
		{
			SlideTransition(TRANS_MODE.GOTO, rLevelSelect); 
			global.levelselected = true; /* now will be brought back to level 
									      * select page after completion */
			break;
		}
		case 0: game_end(); break;
	}
}

