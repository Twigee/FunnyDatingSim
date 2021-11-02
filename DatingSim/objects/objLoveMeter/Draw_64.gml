lmdraw+=(global.LoveMeter-lmdraw)*0.5
draw_sprite(sprLoveMeterMarker,global.LoveMeter,120+(lmdraw*16),4)
draw_sprite(sprLoveMeter,0,104,4)
if point_in_rectangle(mouse_x,mouse_y,104,4,104+18,20) and mouse_check_button_pressed(mb_left) and global.LoveMeter>0 global.LoveMeter-=1
if point_in_rectangle(mouse_x,mouse_y,198,4,198+18,20) and mouse_check_button_pressed(mb_left) and global.LoveMeter<4 global.LoveMeter+=1