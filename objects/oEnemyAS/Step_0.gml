if (hsp =! 0) image_xscale = sign(hsp); 

if (attack = true)
{
	if (global.fly = true)
	{
		var dir=point_direction(x,y,oPlayerA.x,oPlayerA.y);
		image_angle = point_direction(x,y,oPlayerA.x,oPlayerA.y);
		if (instance_exists(oPlayerA)) && (cooldown <= 0)
		{
			cooldown = 90;
			with (instance_create_layer(x,y,"Bullets",oEnemybullet))
			{
				speed = 20;
				direction = other.image_angle + random_range(-6,6);
				image_angle = direction;
			}
		}
	}
	else
	{
		var dir=point_direction(x,y,oPlayerG.x,oPlayerG.y);
		image_angle = point_direction(x,y,oPlayerG.x,oPlayerG.y);
		if (instance_exists(oPlayerG)) && (cooldown <= 0)
		{
			cooldown = 90;
			with (instance_create_layer(x,y,"Bullets",oEnemybullet))
			{
				speed = 20;
				direction = other.image_angle + random_range(-6,6);
				image_angle = direction;
			}
		}
	}

	hsp=lengthdir_x(Speed,dir);
	vsp=lengthdir_y(Speed,dir);

	cooldown = cooldown - 1;
	
if (place_meeting(x+hsp, y, oEnemyAM))
{
	while (!place_meeting(x+sign(hsp), y, oEnemyAM))
	{
		x += sign(hsp);
	}
	hsp = 0;
}
if (place_meeting(x+hsp, y, oPlayerA))
{
	while (!place_meeting(x+sign(hsp), y, oPlayerA))
	{
		x += sign(hsp);
	}
	hsp = 0;
}
if (place_meeting(x+hsp, y, oPlayerG))
{
	while (!place_meeting(x+sign(hsp), y, oPlayerG))
	{
		x += sign(hsp);
	}
	hsp = 0;
}



if (place_meeting(x, y+vsp, oEnemyAM))
{
	while (!place_meeting(x, y+sign(vsp), oEnemyAM))
	{
		y += sign(vsp);
	}

	vsp = 0;
}
if (place_meeting(x, y+vsp, oPlayerA))
{
	while (!place_meeting(x, y+sign(vsp), oPlayerA))
	{
		y += sign(vsp);
	}

	vsp = 0;
}
if (place_meeting(x, y+vsp, oPlayerG))
{
	while (!place_meeting(x, y+sign(vsp), oPlayerG))
	{
		y += sign(vsp);
	}

	vsp = 0;
}




}

else
{
	hsp = -4;
}

x += hsp;
y += vsp;