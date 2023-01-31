class Room {
  //klssens tilstand
  
  boolean light; //er lyset tændt eller slukket
  String name; // rummets navn
  float xPos, yPos; // x og y pos for rummets øverste venstre hjørne
  int height = 100; // konstant højden på rummet
  int width = 100; // konstant bredden på rummet

  //konstruktør
  Room(String n, boolean onOff, float x, float y) {
    name = n; 
    light = onOff;
    xPos = x;
    yPos = y;
  }

  // settters
  void setLight(boolean l) {
    light = l;
  }

  void setName(String n) {
    name = n;
  }

  // getters
  boolean isLightOn() {
    return light;
  }

  String getRoomName() {
    return name;
  }

  void drawRoom() {
    if (light)
      fill(205);
    else
      fill(100);
    //the upper-left corner, the third sets the width, and the fourth sets the height.
    rect(xPos, yPos, width, height);
    textSize(15);
    fill(250);
    text(name, xPos+10, yPos+30);
  }

  boolean isRoomClicked(float x, float y) {
    if ((x > xPos) && (x < xPos+width) && (y>yPos) && (y < yPos+height))
      return true;
    else 
    return false;
  }
  
  //Opg 5
  void drawRoof() {
    fill(50);
    triangle(50, 290, 250, 150, 450, 290);
  }
  
  //Opg 11
  //Alle funktionskald er erstattet med hvad de gør, da de ellers ikke virker
  void lightSwitch() {
    if ((mouseX > xPos) && (mouseX < xPos+width) && (mouseY>yPos) && (mouseY < yPos+height)) {
      if (light) {
        light = false;
        text("Turning off the light in "+name, 100, 700);
      } else {
        light = true;
        text("Turning on the light in "+name, 100, 700);
      }
    }

    else if (mouseX >= 500 && mouseX <= 600 && mouseY >= 600 && mouseY <= 700) {
      if (light) {
        light = false;
        text("Turning off light in house", 100, 700);
      } else {
        light = true;
        text("Turning on the light in house", 100, 700);
      }
    }
  }
}
