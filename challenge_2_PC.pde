import processing.serial.*;

Serial Bluetoothphone;
String myString =null;
int readphone = 100;
int bluetooth = 0;
char alphabet = 'A';
char nextChar;
int lf = 10;

String string;
PImage[] tiles = new PImage[13];
PImage[] button = new PImage [4];
PImage[] buttonno = new PImage[8];
PImage blanktile;
PImage icon;
PFont title;
PFont subtitle;
PFont small;
String[] tilestring = new String[65];
int[] tile = {0, 11, 0, 6, 4, 5, 7, 0, 11, 0, 7, 0, 8, 3, 0, 4, 2, 5, 8, 0, 8, 0, 10, 0, 6, 8, 2, 6, 0, 7, 0, 4, 0, 4, 9, 0, 0, 5, 0, 8, 5, 6, 1, 3, 8, 0, 6, 0, 0, 0, 4, 5, 0, 0, 2, 0, 7, 11, 0, 0, 7, 0, 0, 0, 11};
boolean[] tileflip = new boolean[65]; //determines if the tile is already fliped
int debug = 0; //the code skips screens sometimes. set this to 1 for screen debugging
int debugprinting = 0;
int placetile=0;

// We display the correct screen according to the value of this variable. 
// See "Screens" tab for individual screen functions. 

int gameScreen = 0; //change this to 7 to skip game settings


void setup()
{
  fullScreen();
  noStroke();
  fill(0);
  background(0);
  textAlign(CENTER, CENTER);
  icon = loadImage("logo.png");
  title = createFont("SpecialElite-Regular.ttf", 400);
  subtitle = createFont("SpecialElite-Regular.ttf", 230);
  small = createFont("SpecialElite-Regular.ttf", 100);
  for (int i=0; i<tiles.length; i++) {
    tiles[i]=loadImage(str(i) + ".png");
  }
  for (int i=0; i<button.length; i++) {
    button[i]=loadImage("buttons/" + str(i) + ".png");
  }
    for (int i=0; i<5; i++) {
    buttonno[i]=loadImage("Boards" + str(i) + ".png");
  }
  for (int i=5; i<buttonno.length; ++i)
  {
        buttonno[i]=loadImage("Boards" + str(i) + ".PNG");
  }
  blanktile = loadImage("blanktile.png");

  for (int i=0; i<tileflip.length; i++) {
    tileflip[i]=false; //set this to true to see all the tiles flipped
  }
  //String phoneWrite =Serial.list()[0]; //use printArray(Serial.list()) to find out which COM to use
  //Bluetoothphone = new Serial(this, phoneWrite, 9600); //phone is writing to PC
  //  Bluetoothphone.clear();
  //// Throw out the first reading, in case we started reading 
  //// in the middle of a string from the sender.
  //myString = Bluetoothphone.readStringUntil(lf);
  //myString = null;
}

//********* DRAW CONTENTS *********

void draw()
{
  background(0);
  if (gameScreen == 0) {
    initScreen();
  } 
  if (gameScreen == 1) {
    setupScreen();
  } 
  if (gameScreen == 2) {// code skips sometimes, need to debug why
    modeScreen();
  } 
  if (gameScreen == 3) {
    teamNoScreen();
  } 
  if (gameScreen == 4) {
  } 
  if (gameScreen == 5) {
    countryScreen();
  } 
  if (gameScreen == 6) {
    difficultyScreen();
  } 
  if (gameScreen == 7) {
    waitingScreen();
  } 
  if (gameScreen == 8) {
    blankboard();
  }
    if (gameScreen == 9) {
    gameoverScreen();
  }
}
