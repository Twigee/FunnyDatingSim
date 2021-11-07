display_set_gui_size(320,180)
var mx=display_mouse_get_x()-window_get_x()
var my=display_mouse_get_y()-window_get_y()
if window_get_fullscreen()
{
	mx=mouse_x
	my=mouse_y
}
draw_sprite(sprMouse,0,mx,my)
