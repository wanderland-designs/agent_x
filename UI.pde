void mouseReleased()
{
    if (gameScreen==8)
  {
  flippingclick(1, 1);
  flippingclick(9, 2);
  flippingclick(17, 3);
  flippingclick(25, 4);
  flippingclick(33, 5);
  flippingclick(41, 6);
  flippingclick(49, 7);
  flippingclick(57, 8);
  }
    if (gameScreen==0) 
  {
    gameScreen=1;
  }
    else if (gameScreen==1 && 
    mouseX > width/2-300 && 
    mouseX < width/2+300 &&
    mouseY > height/2-200 &&
    mouseY < height/2+200) {
    gameScreen=2;
  }
    else if (gameScreen==2) {
    gameScreen=3;
  }
    else if (gameScreen==3) {
    gameScreen=5;
  }
  //else if (gameScreen==4 && bluetooth == 1){
  // gameScreen=5; 
  //} 
  else if (gameScreen==5 && 
    mouseX > width/2-350 && 
    mouseX < width/2+350 &&
    mouseY > height/2-200 &&
    mouseY < height/2+200) {
    gameScreen=6;
  }
    else if (gameScreen==6 && 
    mouseX > width/2-350 && 
    mouseX < width/2+350 &&
    mouseY > height/2-200 &&
    mouseY < height/2+200) {
    gameScreen=8;
  }

}
