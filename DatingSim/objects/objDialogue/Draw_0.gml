if port[cur_story]!=-2 and port[cur_story]!=-1
{
	draw_sprite(sprPortraits,port[cur_story],160,128)
	pos2+=(0-pos2)*0.25
}
if port[cur_story]=-1 por_alpha+=(1-por_alpha)*0.25
else por_alpha+=(0-por_alpha)*0.25

draw_set_alpha(por_alpha)
draw_sprite(sprDarkportrait,0,160,128)
draw_set_alpha(1)

if speak[cur_story]!=""
{
	draw_set_font(fName)
	
	var str=speak[cur_story]
	
	var i;
	for (i = 0; i < string_width(str); i += 1)
	{
		draw_sprite_part(sprNamebox,0,4,0,1,13,20+i,115)
	}
	draw_sprite_part(sprNamebox,0,0,0,4,13,16,115)
	draw_sprite_part(sprNamebox,0,5,0,4,13,20+string_width(str),115)
	
	draw_set_color(c_cy2)
	draw_text(20,115,str)
	
	draw_set_color(c_cyn)
	draw_text(20,114,str)
}
draw_sprite(sprTextbox2,0,0,128+pos1)

//properties
draw_set_font(fMain)
var margin = 21;
var width = room_width-margin*2;

//draw story
var text_draw = string_copy(story[cur_story], 1, char);

if question=false
{
	draw_set_halign(fa_left)
	draw_set_valign(fa_top)
	draw_set_font(fMS)
	
	draw_set_color(c_pnk)
	draw_text_ext(16, 138, text_draw, -1, width);
	
	draw_set_color(c_wht)
	draw_text_ext(16, 136, text_draw, -1, width);
}

//draw choices
var str_len = string_length(story[cur_story]);
if (char>=str_len) and story[cur_story]==""{
	draw_set_color(c_wht)
	draw_set_halign(fa_middle)
	draw_set_valign(fa_center)
	draw_set_font(fOptions)
	
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
else if pos1==0 {char += text_speed;}

if keyboard_check_pressed(vk_f1)
{
	var num=get_string("Go to:",0,)
	cur_story=num
}

pos1+=(0-pos1)*0.25