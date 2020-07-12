// fading in and out screen
if (!fadeout) alpha = max(alpha-0.005, 0.25);
else alpha = min(alpha+0.005, 1);

// brings player to the next level once the screen has faded out
if (alpha == 1) && (fadeout == 1) 
{
	audio_stop_all();
	SlideTransition(TRANS_MODE.GOTO, rTitleScreen);
}

#region controlling the flow of text
letter += spd;
print = string_copy(str, 1, letter);

/* once reached the end of the line of text, process no more text
 * until the user had pressed enter */
if (letter > string_length(str) + 25) 
{
	spd = 0;
	if (keyboard_check(vk_anykey)) && (animation_ended)
	{
		if ((next < array_length_1d(strings) - 1))
		{
			letter = 0;
			spd = 0.5;
			next++;
		}
		else
		{
			fadeout = 1;
		}
	}
}
/* if the player has not reached the end of the text, and they are
 * holding the enter key, speed up the text.*/
else if (keyboard_check(vk_enter))
{
	spd = 1;
}
else
{
	spd = spd_start;	
}


// continues to the next string of next when the 'next' index has changed
str = strings[next];

// will start the process of skipping cutscene
if (next == array_length_1d(strings) - 1) || (keyboard_check(vk_backspace))
{
	holdback++;	
}
else
{
	holdback = 0;
}

// if the player has held back long enough, the cutscene will end
if (holdback > 80)
{
	fadeout = 1;	
}
#endregion

#region animations and voices
switch (next)
{
	case 0:
	{
		if (letter == 0) audio_play_sound(snGrandFanfare,10,false);
		animation_ended = true;
	} break;
	default: animation_ened = true; break;
}
#endregion 