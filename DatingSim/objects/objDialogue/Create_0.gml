//vars
cur_story = 0;
char = 0;
text_speed = 1;
choices = 2;

var i;
for (i = 0; i < 1024; i += 1)
{
	port[i]=0
}

story[0] = "Hi I'm a random girl lol";
path[ 0,0] = 1;

story[ 1] = "";
choice[1,0] = "Be nice";
choice[1,1] = "Be a jerk";
path[  1,0] = 2;
path[  1,1] = 3;

story[ 2] = "Oh wow you're very nice :smirk:";
path[  2,0] = 1;
port[  2]=2

story[ 3] = "What a fucking jerk!";
path[  3,0] = 4;
port[  3]=12

story[ 4] = "Let's get married!";
path[  4,0] = 1;
port[  4]=2

//3 12 2

question=false

c_wht=make_color_rgb(255,231,214)
c_ylo=make_color_rgb(255,224,126)
//show_debug_overlay(true)