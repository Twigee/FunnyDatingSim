//vars
global.LoveMeter=2.5
lmdraw=global.LoveMeter
global.RealMeter=global.LoveMeter
cur_story = 0;
char = 0;
text_speed = 0.5;
choices = 2;

global.bgm=true

music=-1
lastpos=0

var i;
for (i = 0; i < 1024; i += 1)
{
	port[i]=0
	speak[i]=""
	res[i,0]=0
	res[i,1]=0
}

path=0

set_neutral_dialogue()

question=false

c_wht=make_color_rgb(255,231,214)
c_ylo=make_color_rgb(255,224,126)
c_pnk=make_color_rgb(171, 86,117)
c_cyn=make_color_rgb(184,255,200)
c_cy2=make_color_rgb( 83,196,186)

var mapstr="!#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]_abcdefghijklmnopqrstuvwxyz{|}~"
fMS=font_add_sprite_ext(sprMSFont,mapstr,true,1)
//show_debug_overlay(true)

audio_play_sound(bgmRain,1,true)
audio_sound_gain(bgmDating,0,1)

por_alpha=0
pos1=45
pos2=-45

draw_stuff=true

glitch=false
gtime=0

intended_error=false