// 0: Initial Screen
// 1: Setup Screen
// 2: Mode Screen
// 3: Teams no. Screen
// 4: Bluetooth Screen
// 5: Country Selection Screen
// 6: difficulty Screen
// 7: select starting point Screen
// 7: Game start Screen
// 8: Game Screen
// 9: Game Over Screen

//********* SCREEN CONTENTS *********

void beginingScreensetup()
{
  imageMode(CENTER);
  background(0);
  translate(width/2, 50);
  image(icon, 0, height/5);
  fill(255);
  textFont(title);
}

void initScreen()
{
  beginingScreensetup();
  fill(#00FF00);
  text("Agent X", 0, height/2);
  textFont(small);
  text("Press anywhere to start", 0, 3*height/4);
  //while (Bluetoothphone.available() > 0) {
  //  readphone = Bluetoothphone.read();
  //  println(readphone);
  //}
}

void setupScreen()
{
  beginingScreensetup();
  textFont(subtitle);
  //text("BOARD Setup", 0, height/4);
  image(buttonno[1], 0, height/2);
  textFont(small);
  text("Select the number of boards", 0, 3*height/4);
  resetMatrix();
}

void modeScreen()
{
  beginingScreensetup();
  textFont(subtitle);
  //text("Select GAMEMODE", 0, height/4);
  image(button[1], -400, height/2);
  image(button[2], +400, height/2);
  textFont(small);
  text("Select gamemode", 0, 3*height/4);
  resetMatrix();
}

void teamNoScreen()
{
  beginingScreensetup();
  //textFont(subtitle);
  //text("Select No. PLAYERS", 0, height/4);
  image(buttonno[2], 0, height/2);
  textFont(small);
  text("Select no of teams", 0, 3*height/4);
  resetMatrix();
}

void countryScreen()
{
  beginingScreensetup();
  //textFont(subtitle);
  //text("Select your country", 0, height/4);
  image(button[3], 0, height/2);
  textFont(small);
  text("Select infiltration location", 0, 3*height/4);
  //Bluetoothphone.write('X'); //sending signals to phone
}

void difficultyScreen()
{
  beginingScreensetup();
  textFont(small);
  text("Select your difficulty", 0, 3*height/4);
  image(buttonno[0], 0, height/2);
}

void waitingScreen()
{
  imageMode(CORNER);
  background(0);
  for (int i=0; i<8; i++) {
    for (int j=0; j<8; j++)
    {
      image(blanktile, i*height/8+width/2-height/2, j*height/8, height/8, height/8);
    }
  }
  textFont(small);
  text("Follow instructions on the phone", width/2, height/2);
  //Bluetoothphone.write('Z'); //sending signals to phone
  //while (Bluetoothphone.available() > 0) {
  //  readphone = Bluetoothphone.read();
  //  println(readphone);
  //  if (readphone == 69)
  //  {
  //    gameScreen=8;
  //  }
  //}
}


void gameoverScreen()
{
  imageMode(CORNER);
  background(0);
  for (int i=0; i<8; i++) {
    for (int j=0; j<8; j++)
    {
      image(blanktile, i*height/8+width/2-height/2, j*height/8, height/8, height/8);
    }
  }
  textFont(subtitle);
  text("GAME OVER", width/2, height/2);
  //Bluetoothphone.write('Z'); //fix this
  //while (Bluetoothphone.available() > 0) {
  //  readphone = Bluetoothphone.read();
  //  println(readphone);
  //  if (readphone == 69) //fix this
  //  {
  //    gameScreen=8;
  //  }
  //}
}
