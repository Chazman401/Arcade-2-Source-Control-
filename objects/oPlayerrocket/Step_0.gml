if (instance_exists(oEnemyAM))
{
	var dir=point_direction(x,y,oEnemyAM.x,oEnemyAM.y);
	image_angle = point_direction(x,y,oEnemyAM.x,oEnemyAM.y);
	
	hsp=lengthdir_x(Speed,dir);
	vsp=lengthdir_y(Speed,dir);
	x += hsp;
	y += vsp;
}
else
{
	y += 0.2;
}
if (place_meeting(x,y,oWall)) instance_destroy();
if (place_meeting(x,y,oWallActivator)) instance_destroy();