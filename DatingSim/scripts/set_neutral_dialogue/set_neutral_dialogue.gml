// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function set_neutral_dialogue(){
#region introduction
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
#endregion

story[ 12] = "";
port[  12]=0
choice[12,0] = "Sorry!\nI'm just a bit\ndistracted";
choice[12,1] = "Yeah and?";
path[  12,0] = 14;
path[  12,1] = 13;
res[   12,0]=3;
res[   12,1]=4;

#region Yeah and?
story[ 13] = "No need to be rude...";
path[  13,0] = 18;
speak[ 13]="???"
port[  13]=5
#endregion

#region Sorry! I'm just a bit distracted
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
#endregion

story[ 19] = "";
port[  19]=0
choice[19,0] = "(Say your name)";
choice[19,1] = "...cool";
path[  19,0] = 20;
path[  19,1] = 21;
res[   19,0]=3;
res[   19,1]=4;

#region (Say your name)
story[ 20] = "Oh, what a pretty name!";
path[  20,0] = 27;
speak[ 20]="Holly"
port[  20]=2
#endregion
#region ...cool
story[ 21] = "...";
path[  21,0] = 22;
speak[ 21]="Holly"
port[  21]=21

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
path[  24,0] = 25;
speak[ 24]="Holly"
port[  24]=4

story[ 25] = "Perhaps we started with the wrong foot, I'll just ask something else...";
path[  25,0] = 26;
speak[ 25]="Holly"
port[  25]=22
#endregion

story[ 26] = "So, what's your profession?";
path[  26,0] = 29;
speak[ 26]="Holly"
port[  26]=0

story[ 27] = "Say, what's your profession?";
path[  27,0] = 28;
speak[ 27]="Holly"
port[  27]=1

story[ 28] = "I know it's a random question but...\nI just want to meet you.";
path[  28,0] = 29;
speak[ 28]="Holly"
port[  28]=2

story[ 29] = "";
port[  29]=22
choice[29,0] = "(Tell her)";
choice[29,1] = "What do you want?\nMy social\nsecurity number?";
path[  29,0] = 33;
path[  29,1] = 30;
res[   29,0]=3;
res[   29,1]=4;

story[ 30] = "No I don't!\nI just want to have a nice conversation here.\nI'm having a terrible day and I just need someone to talk to.";
path[  30,0] = 31;
speak[ 30]="Holly"
port[  30]=12

story[ 31] = "And guess what? It's getting worse!";
path[  31,0] = 32;
speak[ 31]="Holly"
port[  31]=7

story[ 32] = "You know what? I don't care...";
path[  32,0] = -1;
speak[ 32]="Holly"
port[  32]=6

story[ 33] = "Oh so you're a bank clerk?";
path[  33,0] = 34;
speak[ 33]="Holly"
port[  33]=3

story[ 34] = "That sounds interesting!";
path[  34,0] = 35;
speak[ 34]="Holly"
port[  34]=2

story[ 35] = "I bet that you meet new people every day!";
path[  35,0] = 36;
speak[ 35]="Holly"
port[  35]=1

story[ 36] = "...Even if you cancel some people's bank accounts...";
path[  36,0] = 37;
speak[ 36]="Holly"
port[  36]=11

story[ 37] = "You know what? Let's just forget it.";
path[  37,0] = 38;
speak[ 37]="Holly"
port[  37]=2

story[ 38] = "";
port[  38]=22
choice[38,0] = "Let's talk\nabout you";
choice[38,1] = "PLACEHOLDER";
path[  38,0] = 39;
path[  38,1] = 30;
res[   38,0]=3;
res[   38,1]=4;

#region let's talk about you
story[ 39] = "Oh me?\nWell I'm a software programmer.";
path[  39,0] = 40;
speak[ 39]="Holly"
port[  39]=2

story[ 40] = "";
port[  40]=1
choice[40,0] = "Oh so you can\nhack my\nworst enemy?";
choice[40,1] = "Finally\nsomebody can fix\nmy printer!";
path[  40,0] = 41;
path[  40,1] = 30;
res[   40,0]=3;
res[   40,1]=4;

story[ 41] = "Hahahahaha! Well I won't because that's illegal!";
path[  41,0] = 42;
speak[ 41]="Holly"
port[  41]=2

story[ 42] = "I never said I couldn't though...";
path[  42,0] = 43;
speak[ 42]="Holly"
port[  42]=11

story[ 43] = "Just kidding!";
path[  43,0] = 44;
speak[ 43]="Holly"
port[  43]=2

story[ 44] = "I work at Neosoft, doing some bugfixing, but sometimes I also make cool stuff.";
path[  44,0] = 45;
speak[ 44]="Holly"
port[  44]=1

story[ 45] = "Ever played the dragon minigame when you're offline and you want to use the web browser?";
path[  45,0] = 46;
speak[ 45]="Holly"
port[  45]=1

story[ 46] = "";
port[  46]=1
choice[46,0] = "Yeah\nIt's a blast!";
choice[46,1] = "The one that\nsucks?";
path[  46,0] = 50;
path[  46,1] = 47;
res[   46,0]=5;
res[   46,1]=6;

#region The one that sucks?
story[ 47] = "...yeah that one, it was made by a co-worker...";
path[  47,0] = 48;
speak[ 47]="Holly"
port[  47]=20

story[ 48] = "...";
path[  48,0] = 49;
speak[ 48]="Holly"
port[  48]=21

story[ 49] = "...";
path[  49,0] = -1;
speak[ 49]="Holly"
port[  49]=20
#endregion
#region Yeah it's a blast!
story[ 50] = "Wait, you like it?";
path[  50,0] = 51;
speak[ 50]="Holly"
port[  50]=8

story[ 51] = "Wow! Thanks!";
path[  51,0] = 52;
speak[ 51]="Holly"
port[  51]=1
#endregion
#endregion
}