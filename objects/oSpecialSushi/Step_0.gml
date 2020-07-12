/// @description give points, destroy instance
//  note: still need to make the collection permanent
if (place_meeting(x,y,oBall))
{
	oBall.sushicount++;
	instance_destroy();	
}