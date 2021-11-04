//get input
var input = -1;
for(var i=0; i<choices; i++){
    if story[cur_story]==""
	{
		var strin=string(choice[cur_story,0])
		if point_in_rectangle(mouse_x,mouse_y,88-string_width(strin)+8,152-string_width(strin)+8,88+string_width(strin)+8,152+string_width(strin)+8) and device_mouse_check_button_pressed(0,mb_left)
		{
			input=0
			break;
		}
		var strin=string(choice[cur_story,1])
		if point_in_rectangle(mouse_x,mouse_y,232-string_width(strin)+8,152-string_width(strin)+8,232+string_width(strin)+8,152+string_width(strin)+8) and device_mouse_check_button_pressed(0,mb_left)
		{
			input=1
			global.LoveMeter-=1
			show_debug_message(global.LoveMeter)
			break;
		}
	}
	else
	{
		if keyboard_check_pressed(vk_space) or (point_in_rectangle(mouse_x,mouse_y,16,128,304,176) and device_mouse_check_button_pressed(0,mb_left)) input=0
	}
}
//set story
var str_len = string_length(story[cur_story]);
if (input!=-1 && char>=str_len){
    //move to next story
    cur_story = path[cur_story, input];
    char = 0; 
    //restart chapter
    if (cur_story==-1){
        cur_story = 0;
    }
    //next chapter
    if (cur_story==-2){ 
        if (room_exists(room_next(room))) room_goto_next();
        else room_restart();
    }
}

if keyboard_check_pressed(ord("R"))
{
	if keyboard_check(vk_shift) game_restart()
	else room_restart()
}