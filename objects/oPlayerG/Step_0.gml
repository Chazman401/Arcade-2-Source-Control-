if (hascontrol)
{
	key_left = keyboard_check(ord("A")) or keyboard_check(vk_left);
	key_right = keyboard_check(ord("D")) or keyboard_check(vk_right);
	key_jump = keyboard_check_pressed(vk_space) or keyboard_check(ord("W"));
}
else
{
	key_left = 0;
	key_right = 0;
	key_jump = 0;
}

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


/*switch (state)
{
	case PLAYERSTATE.FREE: playerstate_free(); break;
	case PLAYERSTATE.ATTACK_SLASH: playerstate_attack_slash(); break;
	case PLAYERSTATE.ATTACK_COMBO: playerstate_attack_combo(); break;
}