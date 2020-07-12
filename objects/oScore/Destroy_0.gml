/// @description overwrite file

if (file_exists(SAVEFILE)) file_delete(SAVEFILE);

var file
file = file_text_open_write(SAVEFILE);

file_text_write_real(file, global.storycompleted);

switch (room)
{	
	#region Level 1
	case rLevel1:
	{
		// if the current score is greater than the best score saved...
		if (thescore > global.bestscore[1]) 
		{
			file_text_write_real(file,thescore);
		}
		else 
		{
			file_text_write_real(file,global.bestscore[1]);
		}
		
		// if the current time is less than the best time saved...
		if (global.thetime < global.besttime[1])
		{
			file_text_write_real(file,global.thetime);	
		}
		else
		{
			file_text_write_real(file,global.besttime[1]);
		}
		
		// set these values back to what it was originally
		file_text_write_real(file,global.bestscore[2]);
		file_text_write_real(file,global.besttime[2]);
		file_text_write_real(file,global.bestscore[3]);
		file_text_write_real(file,global.besttime[3]);
	}		
	break;	
	#endregion
	#region Level 2
	case rLevel2:
	{
		file_text_write_real(file,global.bestscore[1]);
		file_text_write_real(file,global.besttime[1]);
		
		if (thescore > global.bestscore[2]) 
		{
			file_text_write_real(file,thescore);
		}
		else 
		{
			file_text_write_real(file,global.bestscore[2]);
		}
		
		if (global.thetime < global.besttime[2])
		{
			file_text_write_real(file,global.thetime);	
		}
		else
		{
			file_text_write_real(file,global.besttime[2]);
		}
		
		file_text_write_real(file,global.bestscore[3]);
		file_text_write_real(file,global.besttime[3]);
	}
	break;	
	#endregion
	#region Level 3
	case rLevel3:
	{
		file_text_write_real(file,global.bestscore[1]);
		file_text_write_real(file,global.besttime[1]);
		file_text_write_real(file,global.bestscore[2]);	
		file_text_write_real(file,global.besttime[2]);
		
		if (thescore > global.bestscore[3]) 
		{
			file_text_write_real(file,thescore);
		}
		else 
		{
			file_text_write_real(file,global.bestscore[3]);
		}
		
		if (global.thetime < global.besttime[3])
		{
			file_text_write_real(file,global.thetime);	
		}
		else
		{
			file_text_write_real(file,global.besttime[3]);
		}
	}
	break;
	#endregion
}
file_text_close(file);

// set updated scores, times
var file = file_text_open_read(SAVEFILE);
global.bestscore[0] = 0;
global.besttime[0] = 0;

global.storycompleted = file_text_read_real(file);

global.bestscore[1] = file_text_read_real(file);
global.besttime[1] = file_text_read_real(file);

global.bestscore[2] = file_text_read_real(file);
global.besttime[2] = file_text_read_real(file);

global.bestscore[3] = file_text_read_real(file);
global.besttime[3] = file_text_read_real(file);
file_text_close(file);