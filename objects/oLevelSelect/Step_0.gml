/// @description controls
// ease level in
level_x += (level_x_target - level_x) / level_speed;

// control level now
if (level_control)
{
	if(keyboard_check_pressed(vk_up))
	{
		audio_sound_pitch(snIndexChange, 1);
		audio_play_sound(snIndexChange,3,false);
		level_cursor++;
		if (level_cursor >= level_items) level_cursor = 0;
	}
	if(keyboard_check_pressed(vk_down))
	{
		audio_sound_pitch(snIndexChange, 1);
		audio_play_sound(snIndexChange,3,false);
		level_cursor--;
		if (level_cursor < 0) level_cursor = level_items - 1;
	}
	if(keyboard_check_pressed(vk_enter))
	{
		audio_sound_pitch(snIndexChange, 1.5);
		audio_play_sound(snIndexChange,3,false);
		if (level_cursor == 4)
		{
			if (show_question("Are you sure?\n\n" +
				               "You will lose all of your scores and times."))
			{
				txtCenter = "";
				level_x_target = -600;
				level_committed = level_cursor;
				level_control = false;
			}
		}
		else
		{
			txtCenter = "";
			level_x_target = -600;
			level_committed = level_cursor;
			level_control = false;
		}
	}
}

if (level_x < -500) && (level_committed != -1)
{
	switch (level_committed)
	{
		case 4: 
		{
			// delete save file first, BUT SAVE STORY COMPLETION FLAG
			if (file_exists(SAVEFILE)) file_delete(SAVEFILE);
			// set file and ingame variables back to defaults...
			SetScoresToDefault();
			SlideTransition(TRANS_MODE.GOTO, rLevelSelect);
		}
		break;
		case 3: SlideTransition(TRANS_MODE.GOTO, rLevel1); break;
		case 2: SlideTransition(TRANS_MODE.GOTO, rLevel2); break;
		case 1: SlideTransition(TRANS_MODE.GOTO, rLevel3); break;
		case 0: SlideTransition(TRANS_MODE.GOTO, rMenu); break;
	}
}