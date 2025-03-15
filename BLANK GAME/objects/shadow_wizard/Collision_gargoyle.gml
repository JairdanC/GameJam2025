if (!kb && can_attack) 
{
	//Add switching sides here later
	var _inst = instance_create_depth(x-15,y-30,depth, wiz_attack); // attack object spawns on their lef
	
	alarm[0] = 50;
	can_attack = false;
}

// gonna have to tweak this when we figure out wizard moving towards gargoyle within certain horizon -- need wizard facing value to correctly place his melee
