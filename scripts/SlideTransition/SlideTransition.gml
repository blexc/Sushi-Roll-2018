/// @description SlideTransition(mode, targetroom)
/// @arg Mode sets transition to either the next room, selected room, or resets game
/// @arg Targetroom selects specific room under the condition the transition it set to GOTO

with (oTransition)
{
	mode = argument[0];
	if (argument_count > 1) target = argument[1];
}