/// @description set macro variables

#macro SAVEFILE "Save.sav"
#macro RES_W 1024
#macro RES_H 768
display_set_gui_size(RES_W,RES_H);

cursor_sprite = sCursor;
window_set_cursor(cr_none);

defaulttime = 300;
global.deathcount = 5;