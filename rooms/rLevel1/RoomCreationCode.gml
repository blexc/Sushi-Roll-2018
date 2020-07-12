global.fasttime = 30; //seconds
if (!LevelMusicIsPlaying()) && (!oFinishLine.reached)
{
	audio_stop_all();
	audio_play_sound(snLevel1,10,true);
}