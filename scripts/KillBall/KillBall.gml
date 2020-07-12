/// @description KillBall();

if (global.deathcount > 0) global.deathcount -= 1;
SlideTransition(TRANS_MODE.GOTO, room);