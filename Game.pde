// add game over reading feature


void blankboard() {
  imageMode(CORNER);
  background(0);
  for (int i=0; i<8; i++) {
    for (int j=0; j<8; j++)
    {
      image(blanktile, i*height/8+width/2-height/2, j*height/8, height/8, height/8);
    }

    for (int j=1; j<65; j++)
    {
      //println(tile[i]);
    }
  }
  flipping(1, 1);
  flipping(9, 2);
  flipping(17, 3);
  flipping(25, 4);
  flipping(33, 5);
  flipping(41, 6);
  flipping(49, 7);
  flipping(57, 8);
  //Bluetoothphone.write(nextChar); //sending signals to phone
}

void flipping(int firstno, int rowno)
{
  for (int i=firstno; i<firstno+8; i++) 
  {
    if (tileflip[i]==true)
    {
      image(tiles[tile[i]], (i-firstno)*height/8+width/2-height/2, (rowno-1)*height/8, height/8, height/8);
    }
    //if (placetile<2 && mousePressed && 
    //  mouseX > width/2-height/2+height/8*(i-firstno) && 
    //  mouseX < width/2-height/2+height/8*(i-firstno+1) &&
    //  mouseY > (rowno-1)*height/8 &&
    //  mouseY < rowno*height/8) {
    //  tileflip[i]=true;
    //  nextChar = char(alphabet + tile[i]);
    //  println(nextChar);
    //  placetile++;
    //} else 
    //nextChar = char(alphabet + tile[i]);
    //println("PC sending: "+nextChar);
    //Bluetoothphone.write(nextChar); //sending signals to phone
    if (tile[i]==3 && tileflip[i]==true)
    {
      tile[i]=0;
    }
  }
}
void flippingclick(int firstno, int rowno)
{
  for (int i=firstno; i<firstno+8; i++) 
  {
    if (
      mouseX > width/2-height/2+height/8*(i-firstno) && 
      mouseX < width/2-height/2+height/8*(i-firstno+1) &&
      mouseY > (rowno-1)*height/8 &&
      mouseY < rowno*height/8) {
      tileflip[i]=true;
    }
  }
}
