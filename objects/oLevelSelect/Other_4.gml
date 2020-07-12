/// @description load and setup
// setup gui
gui_width = display_get_gui_width();
gui_height = display_get_gui_height();
gui_margin = 32;

level_x = -600;
level_y = gui_height - gui_margin;
level_x_target = gui_margin;
alarm[0] = 30;
level_speed = 1000; /* lower is faster;
					 * set to very slow initially to
					 * prevent transition screen overlap */
level_font = fLevelSelect;
level_itemheight = font_get_size(fMenu);
level_committed = -1;
level_control = true;

txtCenter = "Sushi Specials"

level[4] = "SCORE RESET";
level[3] = "California Roll ... " + string(global.bestscore[1]) + 
	" ... " + string(global.besttime[1]);
level[2] = "Meatball Madness ... " + string(global.bestscore[2]) + 
	" ... " + string(global.besttime[2]);
level[1] = "Stroganina Rush ... " + string(global.bestscore[3]) + 
	" ... " + string(global.besttime[3]);
level[0] = "Back";

level_items = array_length_1d(level);
level_cursor = 3;

tempstorycomplete = 0; //for saving flag after score reset