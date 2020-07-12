/// @description room re-setup
readytogo = false;	//player ready to start game?
screenalpha = 0.9;
holdescape = 0; //if escape held in-level, will exit level
display_guide = true;
if (InLevel()) alarm[0] = 300;
if (!InLevel()) && (!InCutscene()) 
{
	if (!audio_is_playing(snTheme)) audio_play_sound(snTheme,10,true);
}
else
{
	if (audio_is_playing(snTheme)) audio_stop_sound(snTheme);
}