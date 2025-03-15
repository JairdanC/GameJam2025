var layer_id = layer_get_id("Walls");
var map_id = layer_tilemap_get_id(layer_id);

if active
{

	//Movement input block
	var move = keyboard_check(ord("D")) - keyboard_check(ord("A"));
	var dodge = keyboard_check(ord("E")) - keyboard_check(ord("Q"));

	if (move > 0) 
	{
		facing = 1; // facing right (moving right, D being pressed)
	}
	else if (move < 0)
	{
		facing = -1;	
	}
	


	if (can_dodge && dodge != 0) 
	{
		if (x + dodge*dodge_distance > 50 && x + dodge*dodge_distance < 320) {
			
			x += dodge * dodge_distance;
			can_dodge = false;
			dodging = true;
			alarm[0] = game_get_speed(gamespeed_fps) * 1; //Cooldown timer
			alarm[2] = 20; //Invinciblity frames timer, play test this
		}
	} else
	{	
		if (x + move * move_speed > 50 && x + move * move_speed < 320 ) {
			x += move * move_speed; // incrementing x position based on whether or not D or A is being pressed
		}
	}
	

	if (keyboard_check_pressed(vk_space)) // checking if player attacked
	{
		if (facing > 0) // if player facing right
		{
			var _inst = instance_create_depth(x+30,y, depth, gar_attack);	// attack object spawns mirrored on their right
			_inst.image_xscale = -1;
		}
		else // otherwise player facing left
		{
			var _inst = instance_create_depth(x,y,depth, gar_attack); // attack object spawns on their left	
		}
	
	}

	if (alarm[1] >= 0) { // player getting knocked back if hit
		x += kb_x;
	}
}