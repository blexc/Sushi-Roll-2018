/// @description
if (place_meeting(x,y,oBall))
{
	//physics_world_gravity(0, -grv);
	if (instance_exists(oBall))
	{
		with (oBall) physics_apply_force(x, y+sprite_yoffset, other.strengthx, other.strengthy);
	}
}