if (Ehealth <= 0)
{
	with (instance_create_layer(x,y,layer,oEnemyAMD))
	{
		direction = other.hitfrom;
		hsp = lengthdir_x(3,direction);
		vsp = lengthdir_y(3,direction)-2;
		if (sign(hsp) !=0) image_xscale = sign(hsp);
		global.Score = global.Score + 40;
		
	}
	instance_destroy();
}

if (image_angle > 90) && (image_angle < 270)
{
	image_yscale = -1;
}
else
{
	image_xscale = -1;
	image_yscale = 1;
}