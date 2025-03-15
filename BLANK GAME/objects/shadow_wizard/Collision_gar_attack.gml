if (kb)
{
	shadow_hp -= other.damage;
	// set sprite here to "hit" once i make that
	kb_x = sign(x - other.x); // direction wizard will be knocked back
	kb = true;
	alarm[1] = 20;
}