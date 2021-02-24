if (hsp =! 0) image_xscale = sign(hsp); 

if (attack = true)
{
	if (global.fly = true)
	{
		var dir=point_direction(x,y,oPlayerA.x,oPlayerA.y);
		
		if (instance_exists(oPlayerA)) && (cooldown <= 0)
		{
			cooldown = 400;
			with (instance_create_layer(x,y,"Bullets",oEnemybullet))
			{
				speed = 10;
				direction = other.image_angle + random_range(-20,20)
				image_angle = direction;
			}
			with (instance_create_layer(x,y,"Bullets",oEnemybullet))
			{
				speed = 10;
				direction = other.image_angle + random_range(-20,20)
				image_angle = direction;
			}
			with (instance_create_layer(x,y,"Bullets",oEnemybullet))
			{
				speed = 10;
				direction = other.image_angle + random_range(-20,20)
				image_angle = direction;
			}
			with (instance_create_layer(x,y,"Bullets",oEnemybullet))
			{
				speed = 10;
				direction = other.image_angle + random_range(-20,20)
				image_angle = direction;
			}
			with (instance_create_layer(x,y,"Bullets",oEnemybullet))
			{
				speed = 10;
				direction = other.image_angle + random_range(-20,20)
				image_angle = direction;
			}
		}
		else if (instance_exists(oPlayerA)) && (cooldownship <= 0)
		{
			cooldownship = 200;
			(instance_create_layer(x,y,"Instances",oEnemyASS))
		}
	}
	else
	{
		var dir=point_direction(x,y,oPlayerG.x,oPlayerG.y);
		image_angle = point_direction(x,y,oPlayerG.x,oPlayerG.y);
		if (instance_exists(oPlayerG)) && (cooldown <= 0)
		{
			cooldown = 5;
			with (instance_create_layer(x,y,"Bullets",oEnemybullet))
			{
				speed = 10;
				direction = other.image_angle + random_range(-6,6);
				image_angle = direction;
			}
		}
	}

	hsp=lengthdir_x(Speed,dir);
	vsp=lengthdir_y(Speed,dir);

	cooldown = cooldown - 1;
	cooldownship = cooldownship - 1;
}

else
{
	hsp = -4;
}

x += hsp;
y += vsp;