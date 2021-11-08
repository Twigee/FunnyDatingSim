// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function set_neutral_dialogue(){

story[ 0] = "It's a rainy afternoon";
path[  0,0] = 1;
speak[ 0]=""
port[  0]=-2

story[ 1] = "You're so tired that you feel like you're melting.\nFortunately you don't.";
path[  1,0] = 2;
speak[ 1]=""
port[  1]=-2

story[ 2] = "But you have a feeling that your heart will be melting for love...  ...but nothing has happened today...";
path[  2,0] = 3;
speak[ 2]=""
port[  2]=-2

story[ 3] = "It's getting late, and you could just walk away right now.\nWell I guess you still want that coffee cup you ordered...\n...I guess you'll have to wait.";
path[  3,0] = 4;
speak[ 3]=""
port[  3]=-2

story[ 4] = "You really want to head out and sleep, right after you hear the door opening.";
path[  4,0] = 5;
speak[ 4]=""
port[  4]=-2

story[ 5] = "...except that you see someone walking towards you.";
path[  5,0] = 6;
speak[ 5]=""
port[  5]=-2

story[ 6] = "Hey.\nIs it ok if I sit with you?";
path[  6,0] = 7;
speak[ 6]="???"
port[  6]=-1

story[ 7] = "";
port[  7]=-1
choice[7,0] = "Sure!";
choice[7,1] = "Whatever...";
path[  7,0] = 8;
path[  7,1] = 8;
res[   7,0]=5;
res[   7,1]=4;

story[ 8] = "Thanks.";
path[  8,0] = 7;
speak[ 8]="???"
port[  8]=0

}