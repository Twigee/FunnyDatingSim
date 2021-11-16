display_set_gui_size(320,180)

lmdraw+=(floor(global.LoveMeter)-lmdraw)*0.5
draw_sprite(sprLoveMeterMarker,floor(global.LoveMeter),120+(lmdraw*16),4+pos2)
draw_sprite(sprLoveMeter,0,104,4+pos2)
if point_in_rectangle(mouse_x,mouse_y,104,4+pos2,104+18,20+pos2) and device_mouse_check_button_pressed(0,mb_left) and global.LoveMeter>0 global.LoveMeter=floor(global.LoveMeter)-1
if point_in_rectangle(mouse_x,mouse_y,198,4+pos2,198+18,20+pos2) and device_mouse_check_button_pressed(0,mb_left) and global.LoveMeter<4 global.LoveMeter=floor(global.LoveMeter)+1

var mx=display_mouse_get_x()-window_get_x()
var my=display_mouse_get_y()-window_get_y()
if window_get_fullscreen()
{
	mx=mouse_x
	my=mouse_y
}
if glitch==false draw_sprite(sprMouse,0,mx,my)
