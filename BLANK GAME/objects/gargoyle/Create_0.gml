hp = 3; 
can_dodge = true; //Dodge cooldown, reset in alarm 0
dodging = false; //This is set to true when the player is dodging, check this in the collisions that do damage, reset in alarm 1
move_speed = 2; // setting movement speed, change this later based on map size etc
dodge_distance = 60; // speed when a dodge is being used, change this later based on map size etc
facing = 0; // storing which direction player is facing
kb_x = 0; // knockback value
active = false;

sprite_index = gargoyle_inactive

