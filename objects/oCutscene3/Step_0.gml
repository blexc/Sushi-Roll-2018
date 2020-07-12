/// @description oi

// Inherit the parent event
event_inherited();

#region animations and voices
switch (next)
{
	case 6:
	{
		layer_sprite_xscale(fran, -1);
		layer_sprite_x(fran, max(-250, fran_x));
		fran_x -= 5;
		if (fran_x <= -250) animation_ended = true;
		else animation_ended = false;
	} break;
	case 8:
	{
		audio_stop_all();
		layer_background_destroy(food_layer);
		layer_background_blend(color_layer,c_dkgray);
		layer_sprite_x(oleg, min(250, oleg_x));
		oleg_x += 3;
		if (oleg_x >= 250) animation_ended = true;
		else animation_ended = false;
	} break;
	case 9:
	{
		if (letter == 0) audio_play_sound(snOminous,10,true);
		layer_sprite_x(toshi,toshi_x+30);
		animation_ended = true;
	} break;
	default: animation_ended = true; break;
}
#endregion