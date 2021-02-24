x = oPlayerA.x;
y = oPlayerA.y;

image_angle = point_direction(x,y,x,y);

cooldown = cooldown - 1;
recoil = max(0,recoil - 1);
if (mouse_check_button(mb_left)) && (cooldown < 0)
{
	recoil = 20;
	cooldown = 0;
	with (instance_create_layer(x,y,"Bullets",oFireBullet))
	{
		speed = 5;
		direction = other.image_angle + random_range(-9,9);
		image_angle = direction;
	}
	with (instance_create_layer(x,y,"Bullets",oFireBullet))
	{
		speed = 5;
		direction = other.image_angle + random_range(-9,9);
		image_angle = direction;
	}
	with (instance_create_layer(x,y,"Bullets",oFireBullet))
	{
		speed = 5;
		direction = other.image_angle + random_range(-9,9);
		image_angle = direction;
	}
}

x = x - lengthdir_x(recoil,image_angle);
y = y - lengthdir_y(recoil,image_angle);

