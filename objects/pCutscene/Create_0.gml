audio_play_sound(snPatience,10,true);

alpha = 1;
fadeout = 0;

str = ""; //current string of text to be processed
print = ""; //text that is printed

letter = 0; //current letter processing
next = 0; //points to next index of strings
spd_start = 0.5;
spd = spd_start; //letter per frame the letters will process

cursorblink = 0;
holdenter = 0; //if held, will speed up scrolling process
holdback = 0; //if backspace held, will skip cutscene
animation_ended = false;

strings[0] = "";