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
//Creation of a fireball instance 
speed = 2;
direction = point_direction(x, y, ex, ey);

