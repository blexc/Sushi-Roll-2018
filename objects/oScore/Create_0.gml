// calculates scores
ricescore = oBall.ricecount * 50;
sushiscore = oBall.sushicount * 1000;
if (global.thetime < global.fasttime)
{
	timescore = 1000;
}
else timescore = 0;
deathscore = global.deathcount * 200; //works differently from rice/sushi count

thescore = ricescore + sushiscore + timescore + deathscore;

// sets gui stuff up for endlevel score tally
gui_width = display_get_gui_width();
gui_height = display_get_gui_height();
gui_margin = 64;
gui_w_half = gui_width/2;
gui_h_half = gui_height/2;

tally_x = gui_width + 200;
tally_y = gui_height - gui_margin;
tally_x_target = gui_margin;
tally_speed = 25; //lower is faster
tally_font = fScore;
tally_itemheight = font_get_size(fScore);
tally[5] = "Rice:" 
tally[4] = "Special Sushi:"
tally[3] = "Time Bonus:" 
tally[2] = "No Death Bonus!:"
tally[1] = "_________________________________________________________"
tally[0] = "Total Score: "
tally_items = array_length_1d(tally);

points_x = gui_width + 800;
points_y = gui_height - gui_margin;
points_x_target = gui_width - gui_margin;
points_speed = 25; //lower is faster
points_font = fScore;
points_itemheight = font_get_size(fScore);
points[5] = string(ricescore);
points[4] = string(sushiscore);
points[3] = string(timescore);
points[2] = string(deathscore);
points[1] = "";
points[0] = string(thescore);
points_items = array_length_1d(points);