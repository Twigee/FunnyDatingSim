//vars
cur_story = 0;
char = 0;
text_speed = 1;
choices = 2;

story[0] = "You are in a forest, and see a lake. What do you do?";
//choice[0,0] = "Dive in.";
//choice[0,1] = "Run away.";
path[0,0] = 1;
path[0,1] = 10;

story[1] = "You dive in the cave, and you see an underwater castle. What do you do?";
story[1] = "";
choice[1,0] = "Go into the castle.";
choice[1,1] = "Go behind the castle.";
path[1,0] = 2;
path[1,1] = 11;

story[2] = "You go into the castle, the guards catch you and throw you out of the water.";
choice[2, 0] = "Restart Chapter.";
choice[2, 1] = "Next Chapter.";
path[2, 0] = -1;
path[2, 1] = -2;

story[10] = "You run away.";
choice[10, 0] = "Restart Chapter.";
choice[10, 1] = "Next Chapter.";
path[10, 0] = -1;
path[10, 1] = -2;

story[11] = "You go behind the castle. There is a shark there, and it chases you out of the water.";
choice[11, 0] = "Restart Chapter.";
choice[11, 1] = "Next Chapter.";
path[11, 0] = -1;
path[11, 1] = -2;

question=false

c_wht=make_color_rgb(255,231,214)
//show_debug_overlay(true)