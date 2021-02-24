if (Ehealth <= 0)
{
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