/// @description physics setup

ricecount = 0;
sushicount = 0;
controlled_platform = noone;
canjump = 0;

// sets physics properties
fix = physics_fixture_create();
physics_fixture_set_circle_shape(fix, sprite_xoffset-2);
physics_fixture_set_density(fix,1);
physics_fixture_set_restitution(fix,0);
physics_fixture_set_collision_group(fix,1);
physics_fixture_set_linear_damping(fix,0);
physics_fixture_set_angular_damping(fix,0.5);
physics_fixture_set_friction(fix,1);
my_fix = physics_fixture_bind(fix,self);

// setting specific mass and inertia allows me to change these in the future
the_mass = phy_mass;
the_inertia = phy_inertia;
physics_mass_properties(the_mass, 0, 0, the_inertia);
physics_fixture_delete(fix);