var img=port[cur_story]
draw_sprite(sprPortraits,img,160,127)

draw_sprite(sprTextbox,0,16,128)

//properties
draw_set_font(fMain)
var margin = 21;
var width = room_width-margin*2;

//draw story
var text_draw = string_copy(story[cur_story], 1, char);

if question=false
{
	draw_set_color(c_wht)
	draw_set_halign(fa_left)
	draw_set_valign(fa_top)
	draw_text_ext(margin, 133, text_draw, -1, width);
}

//draw choices
var str_len = string_length(story[cur_story]);
if (char>=str_len) and story[cur_story]==""{
	draw_set_color(c_wht)
	draw_set_halign(fa_middle)
	draw_set_valign(fa_center)
	
	var strin=string(choice[cur_story,0])
	if point_in_rectangle(mouse_x,mouse_y,88-string_width(strin)+8,152-string_width(strin)+8,88+string_width(strin)+8,152+string_width(strin)+8) draw_set_color(c_ylo)
	else draw_set_color(c_wht)
	draw_text_ext(88, 152, string(choice[cur_story,0]), -1, width);
	
	var strin=string(choice[cur_story,1])
	if point_in_rectangle(mouse_x,mouse_y,232-string_width(strin)+8,152-string_width(strin)+8,232+string_width(strin)+8,152+string_width(strin)+8) draw_set_color(c_ylo)
	else draw_set_color(c_wht)
	draw_text_ext(232,152, string(choice[cur_story,1]), -1, width);
	
	draw_set_color(c_wht)
	draw_set_halign(fa_left)
	draw_set_valign(fa_top)
}
else {char += text_speed;}