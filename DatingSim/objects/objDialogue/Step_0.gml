//get input
var input = -1;
for(var i=0; i<choices; i++){
    if (keyboard_check_pressed(ord(string(i+1)))){
        input = i;
        break;
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