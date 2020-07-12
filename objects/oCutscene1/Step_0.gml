// Inherit the parent event
event_inherited();

#region animations and voices
switch (next)
{
	case 0:
	{
		layer_sprite_x(toshi, max(607, toshi_x));
		toshi_x -= 3;
		if (toshi_x <= 607) animation_ended = true;
		else animation_ended = false;
	} break;
	case 1:
	{
		layer_sprite_x(chad, min(335, chad_x));
		chad_x += 4;
		if (chad_x >= 335) animation_ended = true;
		else animation_ended = false;
	} break;
	default: animation_ened = true; break;
}
#endregion