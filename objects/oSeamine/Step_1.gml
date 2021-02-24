if (Ehealth <= 0)
{
	hsp = lengthdir_x(3,direction);
	vsp = lengthdir_y(3,direction)-2;
	if (sign(hsp) !=0) image_xscale = sign(hsp);
	with (instance_create_layer(x,y,"Bullets",oEnemybullet))
	{
		speed = 8;
		direction = other.image_angle + random_range(-360,360);
		image_angle = direction;
	}
		with (instance_create_layer(x,y,"Bullets",oEnemybullet))
	{
		speed = 8;
		direction = other.image_angle + random_range(-360,360);
		image_angle = direction;
	}
		with (instance_create_layer(x,y,"Bullets",oEnemybullet))
	{
		speed = 8;
		direction = other.image_angle + random_range(-360,360);
		image_angle = direction;
	}
		with (instance_create_layer(x,y,"Bullets",oEnemybullet))
	{
		speed = 8;
		direction = other.image_angle + random_range(-360,360);
		image_angle = direction;
	}
	instance_destroy();
	global.Score = global.Score + 10;
}