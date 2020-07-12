/// @description go to main menu
if (!keyboard_check_pressed(vk_escape))
{
	textalpha = 0;
	audio_sound_pitch(snIndexChange, 1.5);
	audio_play_sound(snIndexChange,3,false);
	SlideTransition(TRANS_MODE.GOTO, rMenu);
}