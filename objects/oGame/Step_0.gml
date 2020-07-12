/// @description oi
if (InLevel()) || (InCutscene())
{
	// will start the process of exiting level
	if (keyboard_check(vk_escape)) holdescape++;	
	else holdescape = 0;

	// if the player has held back long enough, will be sent to menu screen
	if (holdescape > 80)
	{
		if (LevelMusicIsPlaying()) audio_stop_all();
		SlideTransition(TRANS_MODE.GOTO, rMenu);
	}
}