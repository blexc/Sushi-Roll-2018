/// SetScoresToDefault
/// @description resets the score and time from each level back as new	

var file = file_text_open_write(SAVEFILE);
var defaulttime = 300.00;

/* if this script is called in level select room, it
 * implies the player has completed the story */
if (room == rLevelSelect)
{
	file_text_write_real(file,1); 
}
else
{
	file_text_write_real(file,0);	
}

// set the rest to default values
file_text_write_real(file,0);
file_text_write_real(file,defaulttime);
file_text_write_real(file,0);
file_text_write_real(file,defaulttime);
file_text_write_real(file,0);
file_text_write_real(file,defaulttime);
file_text_close(file);

var file = file_text_open_read(SAVEFILE);
global.storycompleted = file_text_read_real(file);

global.bestscore[1] = file_text_read_real(file);
global.besttime[1] = file_text_read_real(file);

global.bestscore[2] = file_text_read_real(file);
global.besttime[2] = file_text_read_real(file);

global.bestscore[3] = file_text_read_real(file);
global.besttime[3] = file_text_read_real(file);

file_text_close(file);