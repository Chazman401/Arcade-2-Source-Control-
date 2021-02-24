if (cannon = true)
{
	instance_destroy(oCannonG)
	instance_create_layer(x,y,"Instances",oMeleeG)
	cannon = false
}
else
{
	instance_destroy(oMeleeG)
	instance_create_layer(x,y,"Instances",oCannonG)
	cannon = true
}