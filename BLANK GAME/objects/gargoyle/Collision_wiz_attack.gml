if (alarm[1] < 0) 
{
	hp -= other.damage;
	// set sprite here to "hit" when i make that
	kb_x = sign(x - other.x); // direction player gets knocked back
	alarm[1] = 20;
}