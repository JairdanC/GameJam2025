//Need a way of getting the proper player x and y

//Locate player
var ex, ey;
for (var i = 0; i < 3; ++i;) 
{
	if (instance_find(gargoyle, i).gargoyle_num == active_gargoyle)
	{
		ex = instance_find(gargoyle, i).x;
		ey = instance_find(gargoyle, i).y;
	}
}
speed = 2;
direction = point_direction(x, y, ex, ey);


show_debug_message(ex);
show_debug_message(ey);
show_debug_message(direction);
//Creation of a fireball instance 

