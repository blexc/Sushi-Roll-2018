/// @description give points and grow sushi
// note: still need to implement growth affecting movement
if (place_meeting(x,y,oBall))
{
	// increase size of the ball by rice
	with (oBall) 
	{
		image_xscale = image_xscale + 0.05;
		image_yscale = image_xscale;
		
		fix = physics_fixture_create();
		physics_fixture_set_circle_shape(fix, sprite_xoffset-2);
		physics_fixture_set_density(fix,1);
		physics_fixture_set_restitution(fix,0);
		physics_fixture_set_collision_group(fix,1);
		physics_fixture_set_linear_damping(fix,0);
		physics_fixture_set_angular_damping(fix,0.5);
		physics_fixture_set_friction(fix,1);
		my_fix = physics_fixture_bind(fix,self);
		
		physics_mass_properties(the_mass, 0, 0, the_inertia);
		physics_fixture_delete(fix);
		
		ricecount++;
	}
	instance_destroy();
}