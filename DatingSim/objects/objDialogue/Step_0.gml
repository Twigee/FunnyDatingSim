//get input
var input = -1;

for(var i=0; i<choices; i++){
    if story[cur_story]==""
	{
		var strin=string(choice[cur_story,0])
		if (point_in_rectangle(mouse_x,mouse_y,88-string_width(strin),152-string_height(strin),88+string_width(strin),152+string_height(strin)) and device_mouse_check_button_pressed(0,mb_left)) or keyboard_check_pressed(vk_left)
		{
			input=0
			break;
		}
		var strin=string(choice[cur_story,1])
		if (point_in_rectangle(mouse_x,mouse_y,232-string_width(strin),152-string_height(strin),232+string_width(strin),152+string_height(strin)) and device_mouse_check_button_pressed(0,mb_left)) or keyboard_check_pressed(vk_right)
		{
			input=1
			break;
		}
	}
	else
	{
		if keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_left) or keyboard_check_pressed(vk_right) or (point_in_rectangle(mouse_x,mouse_y,16,128,304,176) and device_mouse_check_button_pressed(0,mb_left)) input=0
	}
}
//set story
var str_len = string_length(story[cur_story]);
if (input!=-1 && char>=str_len){
    
	#region option result
	if res[cur_story,input]=1
	{
		global.LoveMeter+=0.5
		global.RealMeter+=0.5
	}
	if res[cur_story,input]=2
	{
		global.LoveMeter-=0.5
		global.RealMeter-=0.5
	}
	if res[cur_story,input]=3
	{
		global.LoveMeter+=0.25
		global.RealMeter+=0.25
	}
	if res[cur_story,input]=4
	{
		global.LoveMeter-=0.25
		global.RealMeter-=0.25
	}
	if res[cur_story,input]=5
	{
		global.LoveMeter+=1
		global.RealMeter+=1
	}
	if res[cur_story,input]=6
	{
		global.LoveMeter-=1
		global.RealMeter-=1
	}
	#endregion
	
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
if keyboard_check(vk_shift) text_speed=4
else text_speed=1

if keyboard_check_pressed(ord("R"))
{
	if keyboard_check(vk_shift) game_restart()
	else room_restart()
}

if global.LoveMeter<0 global.LoveMeter=0
if global.LoveMeter>4 global.LoveMeter=4

if global.RealMeter<0 global.RealMeter=0
if global.RealMeter>4 global.RealMeter=4