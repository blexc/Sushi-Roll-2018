/// @description oi

// Inherit the parent event
event_inherited();

// brings player to the next level once the screen has faded out
if (alpha == 1) && (fadeout == 1) 
{
	if (global.storycompleted) SlideTransition(TRANS_MODE.GOTO, rTitleScreen);
	else SlideTransition(TRANS_MODE.NEXT);
}

#region animations and voices
switch (next)
{
	case 1:
	{
		layer_sprite_change(oleg,sOlegHappy);
		animation_ended = true;
	} break;
	case 3:
	{
		layer_sprite_change(oleg,sOleg);
		animation_ended = true;
	} break;
	case 6:
	{
		layer_sprite_change(oleg,sOlegHappy);
		layer_sprite_xscale(oleg, -1);
		layer_sprite_x(oleg, max(-250, oleg_x));
		oleg_x -= 3;
		if (oleg_x <= -250) animation_ended = true;
		else animation_ended = false;
		animation_ended = true;
	} break;
	default: animation_ended = true; break;
}
#endregion