/// LevelMusicIsPlaying()
/// @description checks if any one of the level themes are playing and returns a boolean

if (audio_is_playing(snLevel1)) || (audio_is_playing(snLevel2)) || (audio_is_playing(snLevel3))
{
	return true;
}
else 
{
	return false;
}