/// @description control the ball

// jump
key_jump = keyboard_check_pressed(vk_space);
canjump -= 1;
if (key_jump) && (canjump > 0)
{	
	audio_sound_pitch(snIndexChange, 0.5);
	audio_play_sound(snIndexChange,3,false);
	canjump = 0;
	physics_apply_impulse(x, y, 0, -2);	
}

// adds buffer to jump (twenty frame gap to jump from falling)
if (place_meeting(x,y+2,oPlatform)) || (collision_ellipse(bbox_left+3, bbox_top+3,
	bbox_right+3, bbox_bottom+3, oPlatformNoControl, false, false))
{
	canjump = 20;	
}

// kills ball if touched by knife
if (place_meeting(x,y,oKnife)) 
{
	audio_play_sound(snSlice,3,false);
	instance_change(oBallDead,true);
}
	