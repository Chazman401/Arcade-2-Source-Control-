function playerstate_free() {
	var move = key_right - key_left;

	hsp = move * walksp;

	vsp = vsp + grv;

	if (place_meeting(x,y+1,oWall)) && (key_jump)
	{
			vsp = -15;
	}
	if (place_meeting(x,y+1,oWallMove)) && (key_jump)
	{
			vsp = -10;
	}

	if (place_meeting(x+hsp,y,oWall))
	{
		while (!place_meeting(x+sign(hsp),y,oWall))
		{
			x = x + sign(hsp);
		}
		hsp = 0;
	}
	if (place_meeting(x+hsp,y,oWallMove))
	{
		while (!place_meeting(x+sign(hsp),y,oWallMove))
		{
			x = x + sign(hsp);
		}
		hsp = -4;
	}


	x = x + hsp;

	if (place_meeting(x,y+vsp,oWall))
	{
		while (!place_meeting(x,y+sign(vsp),oWall))
		{
			y = y + sign(vsp);
		}
		vsp = 0;
	}
	if (place_meeting(x,y+vsp,oWallMove))
	{
		while (!place_meeting(x,y+sign(vsp),oWallMove))
		{
			y = y + sign(vsp);
		}
		vsp = 0;
	}

	y = y + vsp;

	/*if (instance_exists(oMeleeG)) && (mouse_check_button(mb_left)) 
	{
		state = PLAYERSTATE.ATTACK_SLASH;
	}

/* end playerstate_free */
}
