/// @description oi

// Inherit the parent event
event_inherited();

strings[0] = "You've completed the story!~\n";
strings[1] = "Level select is now available.\n";

global.storycompleted = true;

if (audio_is_playing(snPatience)) audio_stop_sound(snPatience);
audio_play_sound(snGrandFanfare,3,false);