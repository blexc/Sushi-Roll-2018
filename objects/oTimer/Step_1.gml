/// @description increase time

seconds += 1/room_speed;
strtime = string(seconds);

/*
if (seconds < 60) and (seconds > 59.9)
{
	seconds = 0;
	minutes += 1;
}
if (minutes >= 60)
{
	SlideTransition(TRANS_MODE.GOTO,room);
}

if (minutes < 10) and (seconds < 10)
{
	strtime = "0" + string(minutes) + ":0" + string(seconds);
}
if (minutes >= 10) and (seconds < 10)
{
	strtime = string(minutes) + ":0" + string(seconds);
}
if (minutes < 10) and (seconds >= 10)
{
	strtime = "0" + string(minutes) + ":" + string(seconds);
}
if (minutes >= 10) and (seconds >= 10)
{
	strtime = string(minutes) + ":" + string(seconds);
}*/

