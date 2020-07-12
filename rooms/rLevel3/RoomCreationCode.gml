global.fasttime = 45;
if (!LevelMusicIsPlaying()) && (!oFinishLine.reached)
{
	audio_stop_all();
	audio_play_sound(snLevel3,10,true);
}