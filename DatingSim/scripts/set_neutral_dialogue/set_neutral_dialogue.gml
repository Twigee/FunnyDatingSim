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

story[ 3] = "It's getting late, and you could just walk away right now.\nWell, you still want that coffee cup you ordered...\n...I guess you'll have to wait.";
path[  3,0] = 4;
speak[ 3]=""
port[  3]=-2

story[ 4] = "You want to walk away, as you take a look at someone entering the coffee shop going through the door.";
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
path[  8,0] = 9;
speak[ 8]="???"
port[  8]=0

story[ 9] = "You're looking at the void...\n...it's getting a bit awkward somehow.";
path[  9,0] = 10;
speak[ 9]=""
port[  9]=20

story[ 10] = "...";
path[  10,0] = 11;
speak[ 10]="???"
port[  10]=21

story[ 11] = "Not much of a talker, are you?";
path[  11,0] = 12;
speak[ 11]="???"
port[  11]=0

story[ 12] = "";
port[  12]=0
choice[12,0] = "Sorry!\nI'm just a bit\ndistracted";
choice[12,1] = "Yeah and?";
path[  12,0] = 14;
path[  12,1] = 13;
res[   12,0]=3;
res[   12,1]=4;

story[ 13] = "No need to be rude...";
path[  13,0] = 18;
speak[ 13]="???"
port[  13]=5

story[ 14] = "Oh, sorry!";
path[  14,0] = 15;
speak[ 14]="???"
port[  14]=3

story[ 15] = "I just needed someone to talk to...";
path[  15,0] = 16;
speak[ 15]="???"
port[  15]=20

story[ 16] = "That's probably why I came here.";
path[  16,0] = 17;
speak[ 16]="???"
port[  16]=21

story[ 17] = "I'm Holly. Nice to meet you.";
path[  17,0] = 19;
speak[ 17]="Holly"
port[  17]=1

story[ 18] = "I'm Holly.";
path[  18,0] = 19;
speak[ 18]="Holly"
port[  18]=0

story[ 19] = "";
port[  19]=0
choice[19,0] = "(Say your name)";
choice[19,1] = "...cool";
path[  19,0] = 20;
path[  19,1] = 21;
res[   19,0]=3;
res[   19,1]=4;

story[ 20] = "Oh, what a pretty name!";
path[  20,0] = 22;
speak[ 20]="Holly"
port[  20]=2

story[ 21] = "...";
path[  21,0] = 22;
speak[ 21]="Holly"
port[  21]=22

story[ 22] = "Aren't you going to tell me your name?";
path[  22,0] = 23;
speak[ 22]="Holly"
port[  22]=0

randomize()
var famous_person=string(choose("Andy","Addison","Blake","Cassidy","Jesse","Kennedy","Noel","Taylor","Wesley")+" "+choose("Berry","Wood","Green","Lee","Walker","Hayes","Thompson","Roberts","Parker"))
var day;
switch(current_weekday)
{
	case 0: day = "Sunday"; break;
	case 1: day = "Monday"; break;
	case 2: day = "Tuesday"; break;
	case 3: day = "Wednesday"; break;
	case 4: day = "Thursday"; break;
	case 5: day = "Friday"; break;
	case 6: day = "Saturday"; break;
}

story[ 23] = "";
port[  23]=0
choice[23,0] = "(Say your real name)";
choice[23,1] = "I'm\n"+famous_person;
path[  23,0] = 20;
path[  23,1] = 24;
res[   23,0]=3;
res[   23,1]=4;

story[ 24] = "Sure...\n..."+string(famous_person)+" would totally come to this coffee shop every "+string(day)+" after acting in a movie.";
path[  24,0] = 23;
speak[ 24]="Holly"
port[  24]=0

}