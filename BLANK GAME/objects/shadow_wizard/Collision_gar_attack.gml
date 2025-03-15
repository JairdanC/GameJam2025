if (alarm[1] < 0)
{
	shadow_hp -= other.damage;
	// set sprite here to "hit" once i make that
	kb_x = sign(x - other.x); // direction wizard will be knocked back
	alarm[1] = 20;
}