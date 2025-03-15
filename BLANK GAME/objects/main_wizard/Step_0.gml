if (instance_number(shadow_wizard) < 1) 
{
	total_hp -=1;
	var loc_index = irandom_range(0,5); // generating random index of spawn_locs
	instance_create_layer(spawn_locs[loc_index][0],spawn_locs[loc_index][1],"Instances",shadow_wizard); // spawning shadow
	
}