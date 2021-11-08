//vars
global.LoveMeter=2.5
lmdraw=global.LoveMeter
global.RealMeter=global.LoveMeter
cur_story = 0;
char = 0;
text_speed = 1;
choices = 2;

var i;
for (i = 0; i < 1024; i += 1)
{
	port[i]=0
	speak[i]=""
	res[i,0]=0
	res[i,1]=0
}
/*
story[ 0] = "Hi I'm a random girl lol";
path[  0,0] = 1;
speak[ 0]="Random girl"

story[ 1] = "";
choice[1,0] = "Be nice";
choice[1,1] = "Be a jerk";
path[  1,0] = 2;
path[  1,1] = 3;
res[   1,0]=1;
res[   1,1]=2;

story[ 2] = "Oh wow you're very nice :smirk:";
path[  2,0] = 1;
port[  2]=2
speak[ 2]="Random girl"

story[ 3] = "What a fucking jerk!";
path[  3,0] = 4;
port[  3]=12
speak[ 3]="Random girl"

story[ 4] = "Let's get married!";
path[  4,0] = 1;
port[  4]=2
speak[ 4]="Your wife lmfao"
*/
//3 12 2

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

por_alpha=0
pos1=45
pos2=-45