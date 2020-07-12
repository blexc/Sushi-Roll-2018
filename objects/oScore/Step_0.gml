// ease menu in and go to next level
tally_x += (tally_x_target - tally_x) / tally_speed;
if (tally_x <= tally_x_target + gui_margin)
{
	points_x += (points_x_target - points_x) / points_speed;
	if (keyboard_check_pressed(vk_anykey))
	{
		global.deathcount = 5;
		if (global.levelselected) target = rLevelSelect;
		else target = oFinishLine.target;
		SlideTransition(TRANS_MODE.GOTO,target);
		instance_destroy();
	}
}