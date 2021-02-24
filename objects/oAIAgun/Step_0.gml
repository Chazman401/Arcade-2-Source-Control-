x = oPlayerA.x;
y = oPlayerA.y;

if (point_in_circle(oBunkercannon.x,oBunkercannon.y,x,y,2048))
{
	image_angle = point_direction(x,y,oBunkercannon.x,oBunkercannon.y);
	if (cooldown <= 0)
	{
		cooldown = 6;
		with (instance_create_layer(x,y,"Bullets",oAIbullet))
		{
			speed = 20;
			direction = other.image_angle + random_range(-6,6);
			image_angle = direction;
		}
	}
}
else if (point_in_circle(oGroundgun.x,oGroundgun.y,x,y,2048))
{
	image_angle = point_direction(x,y,oGroundgun.x,oGroundgun.y);
	if (cooldown <= 0)
	{
		cooldown = 6;
		with (instance_create_layer(x,y,"Bullets",oAIbullet))
		{
			speed = 20;
			direction = other.image_angle + random_range(-6,6);
			image_angle = direction;
		}
	}
}
else if (point_in_circle(oSeamine.x,oSeamine.y,x,y,2048))
{
	image_angle = point_direction(x,y,oSeamine.x,oSeamine.y);
	if (cooldown <= 0)
	{
		cooldown = 6;
		with (instance_create_layer(x,y,"Bullets",oAIbullet))
		{
			speed = 20;
			direction = other.image_angle + random_range(-6,6);
			image_angle = direction;
		}
	}
}
else if (point_in_circle(oEnemyAM.x,oEnemyAM.y,x,y,2048))
{
	image_angle = point_direction(x,y,oEnemyAM.x,oEnemyAM.y);
	if (cooldown <= 0)
	{
		cooldown = 6;
		with (instance_create_layer(x,y,"Bullets",oAIbullet))
		{
			speed = 20;
			direction = other.image_angle + random_range(-6,6);
			image_angle = direction;
		}
	}
}
cooldown = cooldown - 1;