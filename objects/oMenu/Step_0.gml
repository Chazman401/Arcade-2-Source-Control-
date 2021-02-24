menu_x += (menu_x_target - menu_x) / menu_speed;

if (menu_control)
{
	if (keyboard_check_pressed(ord("W")))
	{
		menu_cursor++;
		if (menu_cursor >= menu_items) menu_cursor = 0;
	}
	if (keyboard_check_pressed(ord("S")))
	{
		menu_cursor--;
		if (menu_cursor < 0) menu_cursor = menu_items-1;
	}
	
	if (keyboard_check_pressed(vk_space))
	{
		menu_x_target = gui_width+300;
		menu_committed = menu_cursor;
	}
	if (mouse_check_button_pressed(mb_left))
	{
		menu_x_target = gui_width+300;
		menu_committed = menu_cursor;
	}
}

if (menu_x > gui_width+150) && (menu_committed != -1)
{ 
	switch (menu_committed)
	{
		case 2: default: slidetrans(trans_mode.next); break;
		case 1: slidetrans(trans_mode.goto,helpscreen); break;
		case 0: game_end(); break;
	}
}