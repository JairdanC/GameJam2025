//Seconds alarm
time_sec += 1;

if (time_sec = 60)
{
	time_sec = 0;
}

alarm_set(0, 60) //Set to fps