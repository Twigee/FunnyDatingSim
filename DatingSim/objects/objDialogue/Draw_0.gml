draw_sprite(sprTextbox,0,16,128)

//properties
draw_set_font(fMain)
var margin = 21;
var width = room_width-margin*2;

var choice_pos = room_height*0.7;

//draw story
var text_draw = string_copy(story[cur_story], 1, char);

if question=false
{
	draw_set_color(c_wht)
	draw_text_ext(margin, 133, text_draw, -1, width);
	draw_text_ext(margin, 133, text_draw, -1, width);
}

//draw choices
var str_len = string_length(story[cur_story]);
if (char>=str_len) and story[cur_story]==""{
	var prev_height = 0;
	for(var i=0; i<choices; i++){
	 //text
	 var text = "("+string(i+1)+") " + choice[cur_story, i];
	 draw_set_color(c_wht)
	 draw_text_ext(margin, choice_pos + prev_height, text, -1, width);
	 draw_text_ext(margin, choice_pos + prev_height, text, -1, width);
	 //choices height
	 prev_height += string_height_ext(text, -1, width)+8;}
}
else {char += text_speed;}