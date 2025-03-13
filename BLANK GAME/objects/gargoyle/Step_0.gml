var move_speed = 2; // setting movement speed, change this later based on map size etc
var dodge_speed = 5; // speed when a dodge is being used
var can_dodge = true;
var dodged = false; 


if (keyboard_check_pressed(ord("Q")) && can_dodge == true)
{
can_dodge = false;
x += dodge_speed = 5;


}


if (dodged == false)
{
var move = keyboard_check(ord("D")) - keyboard_check(ord("A"));


x += move * move_speed; // incrementing x position based on whether or not D or A is being pressed

} 
else 
{
var dodge = keyboard_check(ord("Q")) - keyboard_check(ord("E"));
x += dodge * dodge_speed;
}