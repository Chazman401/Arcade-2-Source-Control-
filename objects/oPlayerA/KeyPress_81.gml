if (cannon = true)
{
	instance_destroy(oGunA)
	instance_create_layer(x,y,"Instances",oRocketA)
	cannon = false
}
else
{
	instance_destroy(oRocketA)
	instance_create_layer(x,y,"Instances",oGunA)
	cannon = true
}