x = oPlayerA.x+95;
y = oPlayerA.y+15;

image_angle = point_direction(x,y,x,y);

cooldown = cooldown - 1;
recoil = max(0,recoil - 1);
if (mouse_check_button(mb_left)) && (cooldown < 0)
{
	recoil = 4;
	cooldown = 6;
	with (instance_create_layer(x,y,"Bullets",oPlayerbullet))
	{
		speed = 40;
		direction = other.image_angle + random_range(-3,3);
		image_angle = direction;
	}
}


x = x - lengthdir_x(recoil,image_angle);
y = y - lengthdir_y(recoil,image_angle);