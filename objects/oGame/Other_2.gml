/// @description load best scores, times

// set to nothing for room alignment purposes
global.bestscore[0] = 0;
global.besttime[0] = 0;

if (file_exists(SAVEFILE))
{
	// load
	var file = file_text_open_read(SAVEFILE);
	global.storycompleted = file_text_read_real(file); //boolean, tech.
	
	global.bestscore[1] = file_text_read_real(file);
	global.besttime[1] = file_text_read_real(file);

	global.bestscore[2] = file_text_read_real(file);
	global.besttime[2] = file_text_read_real(file);

	global.bestscore[3] = file_text_read_real(file);
	global.besttime[3] = file_text_read_real(file);
	
	file_text_close(file);
}
else
{
	// ...or set to default values
	SetScoresToDefault();
}