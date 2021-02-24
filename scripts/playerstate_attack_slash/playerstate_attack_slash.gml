function playerstate_attack_slash() {
	/*hsp = 0;
	vsp = 0;

	if (sprite_index != sMeleeAttack)
	{
		sprite_index = sMeleeAttack;
		image_index = 0;
		ds_list_clear(hitByAttack);
	}

	mask_index = sMeleeAttackHB;
	var hitByAttackNow = ds_list_create();
	var hits = instance_place_list(x,y,oEnemyAM,hitByAttackNow,false);
	if (hits > 0)
	{
		for (var i = 0; i < hits; i++)
		{
			var hitID = hitByAttackNow[| i]; 
			if (ds_list_find_value(hitByAttack, hitID) == -1)
			{
				ds_list_add(hitByAttack, hitID);
				with (hitID)
				{
					EnemyHit(2)
				}
			}
		}
	}

/* end playerstate_attack_slash */
}
