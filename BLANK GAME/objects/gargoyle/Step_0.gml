

//Movement input block
var move = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var dodge = keyboard_check(ord("E")) - keyboard_check(ord("Q"));

if (can_dodge && dodge != 0) 
{
	x += dodge * dodge_distance;
	can_dodge = false;
	dodging = true;
	alarm[0] = game_get_speed(gamespeed_fps) * 1; //Cooldown timer
	alarm[1] = 20; //Invinciblity frames timer, play test this
} else
{
	x += move * move_speed; // incrementing x position based on whether or not D or A is being pressed
}

