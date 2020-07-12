/// @description
if (instance_exists(oTimer))
{
	// origionally: onesecond = get_timer()/1000000;
	y = ystart + amp * sin(oTimer.seconds);
}