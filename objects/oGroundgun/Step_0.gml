if (hsp =! 0) image_xscale = sign(hsp); 

if (attack = true)
{
	if (global.fly = true)
	{
		var dir=point_direction(x,y,oPlayerA.x,oPlayerA.y);
		image_angle = point_direction(x,y,oPlayerA.x,oPlayerA.y) +180;
		if (instance_exists(oPlayerA)) && (cooldown <= 0)
		{
			recoil = 4;
			cooldown = 60;
			with (instance_create_layer(x,y,"Bullets",oEnemybullet))
			{
				speed = 10;
				direction = other.image_angle + random_range(-186,-174);
				image_angle = direction;
			}
		}
	}
	else
	{
		var dir=point_direction(x,y,oPlayerG.x,oPlayerG.y);
		image_angle = point_direction(x,y,oPlayerG.x,oPlayerG.y) +180;
		if (instance_exists(oPlayerG)) && (cooldown <= 0)
		{
			recoil = 4;
			cooldown = 60;
			with (instance_create_layer(x,y,"Bullets",oEnemybullet))
			{
				speed = 10;
				direction = other.image_angle + random_range(-186,-174);
				image_angle = direction;
			}
		}
	}

	hsp=lengthdir_x(Speed,dir);
	vsp=lengthdir_y(Speed,dir);

	cooldown = cooldown - 1;
	recoil = max(0,recoil - 1);
	hsp = -4;
}

else
{
	hsp = -4;
}

x += hsp;
y += vsp;