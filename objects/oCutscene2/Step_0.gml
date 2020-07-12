/// @description oi

// Inherit the parent event
event_inherited();

#region animations and voices
switch (next)
{
	case 2:
	{
		layer_sprite_xscale(chad, -1);
		layer_sprite_x(chad, max(-250, chad_x));
		chad_x -= 5;
		if (chad_x <= -250) animation_ended = true;
		else animation_ended = false;
	} break;
	case 4:
	{
		layer_sprite_x(fran, min(250, fran_x));
		fran_x += 3;
		if (fran_x >= 250) animation_ended = true;
		else animation_ended = false;
	} break;
	case 10:
	{
		layer_background_change(food_layer,sMeatball1);
		animation_ended = true;
	}
	default: animation_ended = true; break;
}
#endregion