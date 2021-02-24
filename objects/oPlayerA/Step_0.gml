XAxis = keyboard_check(ord("D")) - keyboard_check(ord("A"));
YAxis = keyboard_check(ord("S")) - keyboard_check(ord("W"));


if (hascontrol)
{
	Speed = 40;
}
else
{
	Speed = 0;
}


var _direction = point_direction(0,0, XAxis,YAxis);
var _length = Speed * (XAxis != 0 || YAxis != 0);

XAxis = lengthdir_x(_length, _direction);
YAxis = lengthdir_y(_length, _direction);

if (place_meeting(x+XAxis, y, oWall))
{
	while (!place_meeting(x+sign(XAxis), y, oWall))
	{
		x += sign(XAxis);
	}
	XAxis = 0;
}
if (place_meeting(x+XAxis, y, oWallActivator))
{
	while (!place_meeting(x+sign(XAxis), y, oWallActivator))
	{
		x += sign(XAxis);
	}
	XAxis = 0;
}

x += XAxis;

if (place_meeting(x, y+YAxis, oWall))
{
	while (!place_meeting(x, y+sign(YAxis), oWall))
	{
		y += sign(YAxis);
	}

	YAxis = 0;
}
if (place_meeting(x, y+YAxis, oWallActivator))
{
	while (!place_meeting(x, y+sign(YAxis), oWallActivator))
	{
		y += sign(YAxis);
	}

	YAxis = 0;
}

y += YAxis;



