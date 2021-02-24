w = display_get_gui_width() + 3356;
h = display_get_gui_height() + 1472;
h_half = h * 0.5
enum trans_mode
{
	off,
	next,
	goto,
	restart,
	intro
}
mode = trans_mode.intro
percent = 1;
target = room;