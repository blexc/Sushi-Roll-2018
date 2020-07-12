global.fasttime = 30;
if (!LevelMusicIsPlaying()) && (!oFinishLine.reached)
{
	audio_stop_all();
	audio_play_sound(snLevel2,10,true);
}