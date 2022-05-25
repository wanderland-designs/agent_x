//void bluetoothScreen()
//{
//  beginingScreensetup();
//  textFont(subtitle);
//  text("Board status", 0, height/2);
//  Bluetoothphone.write('B'); //sending signals to phone
//  while (Bluetoothphone.available() > 0) {
//    readphone = Bluetoothphone.read();
//    println(readphone);
//    if (readphone == 120)
//    {
//      bluetooth = 1;
//    }
//  }
//}

//void bluetoothConfirmedScreen()
//{
//  resetMatrix();
//  beginingScreensetup();
//  textFont(subtitle);
//  text("Status confirmed", 0, height/2);
//  textFont(small);
//  text("Press anywhere to continue", 0, 3*height/4);
//} 
