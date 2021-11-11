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
#region what do you want?
story[ 30] = "No I don't!\nI just want to have a nice conversation here.\nI'm having a terrible day and I just need someone to talk to.";
path[  30,0] = 31;
speak[ 30]="Holly"
port[  30]=12

story[ 31] = "And guess what? It's getting worse!";
path[  31,0] = 32;
speak[ 31]="Holly"
port[  31]=7

story[ 32] = "You know what? I don't care...";
path[  32,0] =38;
speak[ 32]="Holly"
port[  32]=6
#endregion
#region tell her
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
#endregion
story[ 38] = "";
port[  38]=22
choice[38,0] = "What about\nyou?";
choice[38,1] = "So you're\nhomeless?";
path[  38,0] = 39;
path[  38,1] = 52;
res[   38,0]=3;
res[   38,1]=6;

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
path[  40,1] = 60;
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
path[  49,0] = 59;
speak[ 49]="Holly"
port[  49]=20
#endregion
#region Yeah it's a blast!
story[ 50] = "Wait, you like it?";
path[  50,0] = 51;
speak[ 50]="Holly"
port[  50]=8

story[ 51] = "Wow! Thanks!";
path[  51,0] = 59;
speak[ 51]="Holly"
port[  51]=1
#endregion
#endregion
#region so you're homeless?
story[ 52] = "What is wrong with you?\nYou're such a jerk!";
path[  52,0] = 53;
speak[ 52]="Holly"
port[  52]=12

story[ 53] = "For your information. I DO have a proper job.";
path[  53,0] = 54;
speak[ 53]="Holly"
port[  53]=16

story[ 54] = "I work at Neosoft.";
path[  54,0] = 55;
speak[ 54]="Holly"
port[  54]=12

story[ 55] = "...";
path[  55,0] = 56;
speak[ 55]="Holly"
port[  55]=14

story[ 56] = "Alright fine. There's some financial issues in my department, and they might fire me.";
path[  56,0] = 57;
speak[ 56]="Holly"
port[  56]=15

story[ 57] = "But I heard they need more people in tech support, so at least I could try moving there.";
path[  57,0] = 58;
speak[ 57]="Holly"
port[  57]=12

story[ 58] = "...";
path[  58,0] = 59;
speak[ 58]="Holly"
port[  58]=15

story[ 59] = "Who am I kidding?\nI'll be helping grandmas turn on their computers all day long...\n...if they even know how to make a phone call...";
path[  59,0] = 63
speak[ 59]="Holly"
port[  59]=16
#endregion

story[ 60] = "I said software programmer not tech support...";
path[  60,0] = 61;
speak[ 60]="Holly"
port[  60]=14

story[ 61] = "And believe me, I wouldn't spend the entire day explaining you how to turn on your darn printer.";
path[  61,0] = 62;
speak[ 61]="Holly"
port[  61]=15

story[ 62] = "Even if I wanted, I don't think I'm very good fixing problems without being able to control everything.";
path[  62,0] = 63;
speak[ 62]="Holly"
port[  62]=22

story[ 63] = "So, what brings you here?";
path[  63,0] = 64;
speak[ 63]="Holly"
port[  63]=2

story[ 64] = "";
port[  64]=0
choice[64,0] = "I come here\ndaily";
choice[64,1] = "What?\nCan't I have a cup of\ncoffee?";
path[  64,0] = 39;
path[  64,1] = 65;
res[   64,0]=3;
res[   64,1]=6;

story[ 65] = "I ran out of conversation ideas, outside of airplane food but that's too...   ...you know...";
path[  65,0] = 66;
speak[ 65]="Holly"
port[  65]=7

story[ 66] = "I have no idea if you have ever been in one of those.";
path[  66,0] = 67;
speak[ 66]="Holly"
port[  66]=21

story[ 67] = "Damn all this airplane food talk got me hungry.";
path[  67,0] = 68;
speak[ 67]="Holly"
port[  67]=22

story[ 68] = "Hey, do you have any food suggestions in here?";
path[  68,0] = 70;
speak[ 68]="Holly"
port[  68]=0

#region 69
/*
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMOOOZZ$$$ZZMMMMMOOZOOMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMZZ$8888O$$$$$$$OOO88$$$$$ZZOMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMOZZ$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ZZMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMOOZZ$$$$$$$$$$$OO$$$$$OO$$$$$$$$$$$$$$$OMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMO$$$$$$$$$O$$$$$$$$$$$$$$$OOZZ$$$$$$$$$$$ZZMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMZZ$$$$$Z$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$OOMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ZZ$$$$$$$$$$$$ZMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMZ$$$$Z$$$$$$$$$$$$$$$$$$$$$$$$$ZZ$$$$$$$$$$$$$$$$$$OOMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMOO$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$Z$$$$$$$ZZ$$$$$$$$$$$$$ZZMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMZZ$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$8MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMOO$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ZMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMZZZZ$$$$
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMZZ88$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ZZ$$$$$$$$$$$$$ZZMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMZZZZ$$$$
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMO$$$$$$$ZZ$$$$$$$$OO$$$$$$$$$$$$$$$$$$$$$$$$$$ZZ$$$$$$$$$$$$$$$88MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMZZZZ$$$$
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMOO$$$$$$OO$$$$$$$$$$ZZ$$$$$$$$$$$$$$$$$$$$$OO$$OOO$$$$$$$$$$$$$$$ZZMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMZZZZ$$$$
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMOO$$$$$$OO$$$$$$$$$$ZZ$$$$$$$$$$$$$$$$$$$$$OO$$OOO$$$$$$$$$$$$$$$ZZMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMOOOOZZZZ$$$$$$$$
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMZZ$$$$$$ZZ$$$$$$$$OO$$$$$$$$$$$$$$$$$$$$$$:$$88?~~??$$$$$$$$$$$$$$$8MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMOOOOZZZZ$$$$$$$$
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMOO$$O$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$,,$$$,,,,,~~Z$$$$$$$$$$$$$$ZMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMOOOOZZZZ$$$$$$$$
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMZZ$$$$$$$Z$$$$$$$$$Z$$$$$$$$$$$$$$$$$$$O~~$$$,,,,,,,,,NZZ$$$$$$$$$$OO$OOMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMOOOOZZZZ$$$$$$$$
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMO$$ZZ$$$$$$$$$$$$$$$O$$$$$$$$$$$$$$$$$OO:$$88~,,,,,,,,,,$$$$$$$$$$$$$$$ZZMMMMMMMMMMMMMMMMMMMMMMMOOOOZZZZ$$$$$$$$$$$$$$$$
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMZ$$$$$$$ZZ$$$$$$$$$$O$$$$$$$$$$$$$$$~~OO$~~,,,,,,,,,,,,,~~$$$$$ZZ$$$$$$$$88MMMMMMMMMMMMMMMMMMMMMOOOOZZZZ$$$$$$$$$$$$$$$$
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMOO$$$$$$$$$$$$$$$$$$ZZ$$$$$$$$$$$$$??,$$$$~,,,,,,,,,,,,,,,,,NN$$$$$$$$$$Z$$OOMMMMMMMMMMMMMMMMMMMMMOOOOZZZZ$$$$$$$$$$$$$$$$
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMZZ$$$$$$OO$$$$$$$$$$ZZ$$$$$$$$$$$OO$$~,,,,,,I~,O8~,,,,,,,,,,==Z$$$$$$$$$$$$ZZMMMMMMMMMMMMMMMMMMMMMOOOOZZZZ$$$$$$$$$$$$$$$$
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMOO$$$$$$$$ZZ$$$$$$$$ZZ$$O$$$$$$$$$O~~,,,,,,,,,,,,,,,,,N,,,,,,,OOO$$$$Z$$$$$$$$$8MMMMMMMMMMMMMMMMOOOO$$$$$$$$$$$$$$$$$$$$OOOO
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM$$$$$$$$$$OOOO$$$$$7~$OOOZZOO?~~,,,,,,,,,,,,,,,,,,,,,,,,,$,,,,,,$ZZ$$$$$$$$ZZ$$OMMMMMMMMMMMMMMMMOOOO$$$$$$$$$$$$$$$$$$$$OOOO
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMZZ$$$$$$$$$$$$$$~$$8OO$$?~~,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,8$$$$$ZZ$$$$$$$ZMMMMMMMMMMMMMMMMOOOO$$$$$$$$$$$$$$$$$$$$OOOO
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMOO$$$OO$$O$$$$ZOO$$O??,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,=$$ZZ$OO$$$$$$$ZMMMMMMMMMMMMMMMMOOOO$$$$$$$$$$$$$$$$$$$$OOOO
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMOO$$$OO$$O$$$$$OOOO~,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,OOZZ$$$ZZ$$$$$$OOMMMMMMMMMMZZZZ$$$$$$$$$$$$ZZZZ$$$$$$$$$$$$
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMOO$$$$$$$OOO???$$:::,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,$OO$$$$$$$$$$OO$ZZMMMMMMMMMMZZZZ$$$$$$$$$$$$ZZZZ$$$$$$$$$$$$
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMZZ$$$$$$$O??~~$????:,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,O$$$$$$$$$Z$$$$$OOMMMMMMMMMMZZZZ$$$$$$$$$$$$ZZZZ$$$$$$$$$$$$
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM$$$$O$$$$$~~$$=,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,$$$$?$$OO$$$$$$$$OOMMMMMMMMZZZZ$$$$$$$$$$$$ZZZZ$$$$$$$$$$$$
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM$$$$O$$$$$~~$$=,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,~,,,,,,,,,,,,,,,$$$$?$$OO$$$$$$$$OOMMMM$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM$$$$O$$$$O$$OO,,,,,,,,,,,~,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,OO~~:??OO8$$$$$$$OOMMMM$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM$$$$$88$$O,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,:8NNNNNNNN88Z,,,,,,,,,::,??$$8ZZ$$$$$ZZMMMM$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMO$$$$$$$~~?,,,,,,ON~NNNNNNN8NN~,,,,,,,,,,,,,,,=NZNNNNZ887,OI,,,,,,~~II,II$$O$$$$$$$$$ZMMM$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM8$$$$$$$~~?,,,,,:88N888NNNNN88,,,,,,,,,,,,,,,,,:78NNN77IZ,O,,,,,,:????,OO$$$OOOOZ$$$$ZZZZ$$$$$$$$ZZZZ$$$$$$$$$$$$$$$$$$$$$$$$
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMZ$$$$$$$,,?,,,,,,O,,,Z$NNNN7Z$,,,,,,,,,,,,,,,,N7=7====7,,,O,,,,,,:????,OO$$$OO$$$$$$$OZZZ$$$$$$$$ZZZZ$$$$$$$$$$$$$$$$$$$$$$$$
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM$88$$$$$,,?$$,,,,Z,,,$7==8===,,,,,,,,,,,,,,,,,,O==~:~==:,,,,,,,,,~??==,OO$$ZOONN$$$$$ZZZZ$$$$$$$$ZZZZ$$$$$$$$$$$$$$$$$$$$$$$$
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMOO$88$$$OO~~I~~,,,,::,,$==~~~===,,,,,,,,,,,,,,,,,,,ZNN87,,,,,,,,,,,???~~:OOZZNOOOOO$$$$$OOZ$$$$$$$$ZZZZ$$$$$$$$$$$$$$$$$$$$$$$$
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMZZ$88OO$OO??~,,::,,,,,,,7=~~IZ~,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,I,,,,OOOOO888OOOZZ$$$ZZ$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM$$$OOOO$OOOO~::??,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,==,==OOOOOOOONNOOOOO$$$$$OO$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM$$$OOOO$OOOOO~~??,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,~OOOOOOOOOOOOOOOOO$$$$$ZZ$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM$$8OOOO$OOOOOOO~~O,,,,,,,,,,,,,,,,,,,,,,,~,,,,,,,,,,,,,,,,,,,,,==OOOOOOOOOOOOOOOOOOOO$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMOO$$O88OO$OOOOOOOOO:,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,OOOOOOOOOOOOOOOOOOOOOO$$$$$$$O$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMZZ$$OOOOOZ88OOOOOOOO??,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,=OOOOOOOOOOOOOOOOOOO8OOZZ$$$$$Z$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMOO$$OOOOOZOOOOOOOOOOOO,,,,,,,,,,,,,,,,,==========,,,,,,,,,,,,,,,OOOOOOOOOOOOOOOOOOOOONNOO$$$ZZ$ZZ$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMM$$$$$OOOZZOOOOOOOOOOONN~~,,,,,,,,,,,,,,===========,,,,,,,,,,,,,~~OOOOOOOOOOOOOOOOOOOOO88ZZ$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMM$$$$$OOOZZOOOOOOOOOOONN~~,,,,,,,,,,,,,,$=~~~:::~~~,,,,,,,,,,,,,~~OOOOOOOOOOOOOOOOOOOOO88ZZ$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMM$$$$$OOOZZOOOOOOOOOOOOOOO,,,,,,,,,,,,,,,:::::::::,,,,,,,,,,,,~~88OOOOOOOOOOOOOOOOOOOOOOOOO$$$$$$$$OO$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
MMMMMMMMMMMMMMMMMMMMMMMMMMMMZZ$$$$$OOO$$OOOOOOOOOOOOO887::,,,,,,,,,,,,,::~::~~,,,,,,,,,,,,,OOOOOOOOOOOOOOOOOOOOOOOOOOOOO$$$$$$$$ZZ$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
MMMMMMMMMMMMMMMMMMMMMMMMMMOO$$$$$ZZ8OO$$OOOOOOOOOOOOOOOOOO~~,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,=OOOOOOOOOOOOOOOOOOOOOOOOOOOOO$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
MMMMMMMMMMMMMMMMMMMMMMMMMMZZ$$$$$OO8OO$$OOOOOOOOOOOOOOOOOOOO=,,,,,,,,,,,,,,,,,,,,,,,,,,,~~=NNOOOOOOOOOOOOOOOOOOOOOOOOOOO$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
MMMMMMMMMMMMMMMMMMMMMMMMMOOO$$$$$OOOOOZZOOOOOOOOOOOOOOOOOOOOOOO::,,,,,,,,,,,,,,,,,,,,:=====88OOOOOOOOOOOOOOOOOOOOOOOOOOO$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
MMMMMMMMMMMMMMMMMMMMMMMMMZ$$$$$$$88O88OOOOOOOOOOOOOOOOOOOOOOOOOOO=,,,,,,,,,,,,,,,,,~~======NNOOOOOOOOOOOOOOOOOOOOOOOOOOO$$$$$$$$$$O$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
MMMMMMMMMMMMMMMMMMMMMMMMMO$$$$$$$OOOZZOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO==,,,,,,,,,,,==========NNOOOOOOOOOOOOOOOOOOOOOOOOO88$$$$$$$$$$N$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
MMMMMMMMMMMMMMMMMMMMMMMMMO$$ZZ$$$88OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO=~~::,::~~===========8888OOOOOOOOOOOOOOOOOOOOOOONN$$$$$Z$$OO8Z$$$$$$$$$$$$$$$$$$$$OOOO$$$$
MMMMMMMMMMMMMMMMMMMMMMMNNO$$OO$$$$$Z88OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO=====================NN88OOOOOOOOOOOOOOOOOOOOOOOZZ$$$$$Z$$88NZ$$$$$$$$$$$$$$$$$$$$OOOO$$$$
MMMMMMMMMMMMMMMMMMMMMMM88OOO$$$$$$$OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO=====================88OOOOOOOOOOOOONNNNOZZOOOOO$$$$$$$O$$OOZZ$$$$$$$$$$$$$$$$$$$$OOOO$$$$
MMMMMMMMMMMMMMMMMMMMMMMNNO88$$$$$$$8OOOOO88OOOOOOOOOOOOOOOOOOOOOOOOOOO7====================88NNOOO88MMM88OOOOO8$$OOZOO$$$$$$$O88$$ZZ$$$$$$$$$$$$$$$$$$$$OOOO$$$$
MMMMMMMMMMMMMMMMMMMMMMMMM8OOZZ$$$$$ZOO88ZOOZZOOOOOOOOOOOOOOOOOOOO8MM887====================8888NMMMMMMMMOOZZ$$$$$$$O$$$$$$$$$8OO$$$$$$$$$$$$$$$$$$$$$$$$ZZZZ$$$$
MMMMMMMMMMMMMMMMMMMMMMMMMNOOOO$$$$$$$$$$$$$OOOOO88N88OO8NNOOO8888M8888N===================~88888NNMMMMMMOOOO$$O88$$$$$$$$$$$$NOO$$$$$$$$$$$$$$$$$$$$$$$$ZZZZ$$$$
MMMMMMMMMMMMMMMMMMMMMMMMMM88OO8OOZZ$$$$$O$$88888NN8NNMMM8888MNNMM888888=================~~:NN8888888NMMMOOOO$$$$$$$$$$$$8NNOOOOO$$$$$$$$$$$$$$$$$$$$$$$$ZZZZ$$$$
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMOOOMMN88OOMMMMMMMMMMMMMMMMMMMMMNN88N88888===============~~:::,,8888888888NNOOO$$$$$$$$$$$$$$$$OOOO$$$$$$$$$$$$$$$$$$$$$$$$ZZZZ$$$$
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNN888NNNNN88888NN88888?~~==========~~:::,,,,,::88888888888NN$$$$$$$$$$$$$$$$ZZZZ$$$$$$$$$$$$$$$$$$$$OOOO$$$$$$$$
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNN888NNNNN88888NN88888?~~==========~~:::,,,,,::88888888888NN$$$$$$$$$$$$$$$$ZZZZ$$$$$$$$$$$$$$$$$$$$OOOO$$$$$$$$
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM888888888N8888888888NN~~:::~~======~~:::,,,,,,,,,888OOO8888OOONN88888O$$OOO$$$ZZZZ$$$$$$$$$$$$$$$$$$$$OOOO$$$$$$$$
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNNO88888NN88888OOOOONN,,,,,,:::::~~~~:::,,,,,,,,,,,,8OOOOOOOOOO$$$$$$$$$$$$$$$OO$ZZZZ$$$$$$$$$$$$$$$$$$$$OOOO$$$$$$$$
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM$$$$OOONN8OOOOOOOOO8,,,,,,,,,,,,,,:::::,,,,,,,,,,,,,,,OOOOOOOO$$$$$$$$$$$$$$$$$88888$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMN$$$$$$$OOOOOOOOOOOO,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,OOOOO$$$$$$$$$$$$$$$$$$88OOOOON$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMO$$$$$$$OO$OOOOOOOOO,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,OOO$$$$$$$$$$$$$$$OO$88$$$$$$$OOO$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMO$$$$$$$OO$$$$$OOO88,,,,,:,,,,,,,,,,,,,,,,,,,,,,,,:,,,,O$$$$$$$$$$$$$$$88$$$$$$$$$$$$OOO88$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM88$$O$$$$$$$$$$$$$$$OOOO,,,,,,,,,,,,,,,,,,,,,,,,,:::,,,,,OOO$$$$$$$$$$$$$$$$$$$$$$$$$$$$$OOOOO$$$$$$$$$$$$$$ZZZZ$$$$$$$$$$$$
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM$$$$$OO$$$OO$$$$$$$$$$~~,,,,,,,,,,:,,,,,,,,,:,,,,,,,,,,,,OO$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$OOOOO$$$$$$$$$$$$$$ZZZZ$$$$$$$$$$$$
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM$$$$$$$$OO$88$$$$$$$$$$,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$OOOOO8$$$$$$$$$$$$$ZZZZ$$$$$$$$$$$$
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM$$$$$$$$OO$NN$$$$$$$$$$,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,~~$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$OOOOON$$$$$$$$$$$$$ZZZZ$$$$$$$$$$$$
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNN$$$$$$$$$$NOO$$$$$$$$$$,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,OO$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$OOOOO8$$$$$$$$$$$$$OOOO$$$$$$$$$$$$
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM$$$$$$$$$$$$O$$$$$$$$$O$$$$,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,$$$$$$$$$$$$$$O$$$$$$$$$$$$$$$$$$$OOOOOO$$$$$$$$$$$$$OOOO$$$$$$$$$$$$
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM$$$$$$$$$$$$O$$$$$$$OO$$$$$=,,,,,,,,,,,,,,,,,,,,,,,,,,,,,N$$$$$$$$$$$$OO$$$$$$$$$$$$$$$$$$OOOOONNO88$$$$$$$$$$$OOOO$$$$$$$$$$$$
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNN$$O$$$$$$$$$$88$$$$$$$$$$$$$==,,,,,,,,,,,,,,,,,,,,,,,,,NNO$$$$$OO$$$OO$$$$$$$$$$$$$$$$$$$$OOOOOOOONN$$$$$$$$$$$OOOO$$$$$$$$$$$$
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNN$$$$$$$$$$$$$OONN$$$$$$$$$$=::==$,,,,,,,,,,,,,,,,,,,=$$$$$$$$$$$$$$N$$$$$$$$$$$$$$$$$$$$$$OOOOOOOONN$$$$$$$$$$$OOOO$$$$$$$$$$$$
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNN$$$$$$$$$$$$$OONN$$$$$$$$$$=::==$,,,,,,,,,,,,,,,,,,,=$$$$$$$$$$$$$$N$$$$$$$$$$$$$$$$$$$$$$OOOOOOOONN$$$$$$$$$$$OOOO$$$$$$$$$$$$
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMOO$$$88$$$$$$$$$$NN$$$$$$$$$$=:::::==,,,,,,,,,,,,,~~$$$==ZZ$$$$$$$$OON$$$$$$$$$$$$$$$$$$$$OOOOOOOOOO88$$$$$$$$$$$OOOO$$$$$$$$$$$$
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM$$$$$88$$$$$$$$$$OOO$$$$$$$ZZ:~~:::::::=,,,,,,,,,===$$:==$$$$$$$$$$88$$$$$$$$$$$$$$$$$$$$N$$OOOOOOOO88$$$$$$$$$$$OOOO$$$$$$$$$$$$
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM$$$$$OO$$$$$$$$$$NNO$$$$$$$==:::::::::::::==,::=====~~:::OO$$$$$$NNNNO$$$$$$$$$$$$$$$$$OO$OOOOOOOOOO$$$$$$$$$ZZZZ$$$$$$$$$$$$$$$$
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMOO$$$$$OO$$$$$$OOOOO$$$$$$$:::::::~:::::::~~========:::::OO$$$$$OOO888$$$$$$$$$$$$$$$$$$$$OOOOOOOOOO$$$$$$$$$ZZZZ$$$$$$$$$$$$$$$$
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMOO$$$$$88$$$$$$NN$$O$$$$$$$:::::::::::::::::=====~:::::::$$$$$$$NOOOOO$$$$$$$$$$$$$$$$$$$$OOOOOOOOOO$$$$$$$$$ZZZZ$$$$$$$$$$$$$$$$
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNOOOO$$$$$$$$$$$OO$$O$$$$$$$::::::::~~:::::::===~~::::::::::$$$$$O$$OO$$$$$$$$$$$$$$$$$$$$OOOOOOOOOOO$$$$$$$$$ZZZZ$$$$$$$$$$$$$$$$
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMM8OOOO$$$$$$$$$$$$$$$O$$$$$$$:::::::::::::::~~===::::::::::::$$$OOO$$$$$$$$$$$$$$$$$$$$$$$$OOOOOOOOOOO$$$$$$$$$ZZZZ$$$$$$$$$$$$$$$$
NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN
NN,,,NNNNNNNNN,,,NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN,,,NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN,,,NNNNN,,,,,,NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN,,NNNNNNNNNNNN,,,NNN
NN,,,,,,NNNNNN,,,NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN,,,NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN,,,NNNNNNNNNNNNNN,,,NNNNNNNNNNNNNNNNNNNNNNNNNNNNN,,NNNNNNNNNNNNNNNNNN
NN,,,NNN,,,NNN,,,NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN,,,NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN,,,NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN,,NNNNNN,,,NNNNNNNNN
NN,,,NNN,,,NNN,,,NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN,,,NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN,,,NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN,,NNNNNN,,,NNNNNNNNN
NN,,,NNNNNN,,,,,,NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN,,,NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN,,,NNNNNNNNNNNNNN,,,NNNNNNNNNNNNNNNNNNNNNNNNNNNNN,,NNNNNNNNNNNNNNNNNN
NN,,,NNNNNNNNN,,,NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN,,,NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN,,,,,,NNNNN,,,NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN,,NNNNNNNNNNNN,,,NNN
NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN
*/
#endregion
}