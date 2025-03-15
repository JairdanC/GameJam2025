//Gargoyle activation
globalvar active_gargoyle;
active_gargoyle = 1;
for (var i = 0; i < 3; ++i;) 
{
	if (instance_find(gargoyle, i).gargoyle_num == active_gargoyle)
	{
		instance_find(gargoyle, i).active = true;
	}
}

