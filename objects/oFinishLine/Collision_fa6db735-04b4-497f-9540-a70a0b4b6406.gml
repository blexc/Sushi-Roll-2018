/// @description oi

reached = true;

if (LevelMusicIsPlaying())
{
	audio_stop_all();
	alarm[0] = 60;
}

// disallow platforming control and stop ball
with (oBall) 
{
	phy_position_x = other.x;
	phy_position_y = other.bbox_top;
	canjump = -1;
}

with (oTimer) instance_destroy(id,true);

if (!scoremade) 
{
	instance_create_layer(x,y,"Highest",oScore);
	scoremade = true;
}

// stop following the ball
with (oCamera) follow = noone;