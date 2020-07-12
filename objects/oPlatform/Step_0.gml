/// @description become flat smoothly when no sushi near
if (phy_rotation != 0)
{
	phy_rotation = phy_rotation - (sign(phy_rotation)) * 0.5;
}

if (collision_circle(x,y,180,oBall,false,false)) && (!oFinishLine.reached)
{
	phy_rotation = ((mouse_x - oCamera.x)^1.1 / (mouse_x)) / 3; // really ugly, but it works
	if (phy_rotation >= 50) phy_rotation = 50; // +-50 degrees is max angle
	if (phy_rotation <= -50) phy_rotation = -50;
}