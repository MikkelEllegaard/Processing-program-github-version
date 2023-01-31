//lav et rum //<>// //<>// //<>//
Room[] house = new Room[6]; //Opg 6

void setup() {
  size(800, 800);
  background(205);

  //Opg 7
  house[0] = new Room("Room", false, 100, 300);
  house[1] = new Room("Kitchen", false, 100, 400);
  house[2] = new Room("Livingroom", false, 200, 300);
  house[3] = new Room("Toilet", false, 200, 400);
  house[4] = new Room("Bedroom", false, 300, 300);
  house[5] = new Room("Bathroom", false, 300, 400);
}

void draw() {

  // tegn taget
  //Opg 8
  for (int i = 0; i < house.length; i++) {
    house[i].drawRoof(); /* Opgave 5
     fill(50);
     triangle(50, 290, 250, 150, 450, 290); */

    // tegn rum
    house[i].drawRoom();
  }

  rect(width*0.6, height*0.7, 100, 100);
  rect((width*0.6)+100, height*0.7, 100, 100);
  fill(0);
  textSize(30);
  text("Light", width*0.62, height*0.78);
  text("Leave", (width*0.62)+100, height*0.78);
  textSize(20);
}

void checkHouse() {
  boolean found = false;
  
  for (int i = 0; i < house.length; i++) {
    if (house[i].isLightOn() == true) {
      println("WOW turn off the light in the " + house[i].getRoomName());
      found = true;
    }
  }
  if (!found) {
    println("All right! You're ready to go!");
  } else {
    println("you forgot something");
  }
}

void mouseClicked() {
  // lav baggrund
  background(205);
  fill(105);
  rect(80, 680, 300, 30);
  fill(250);

  // find ud af om vi tænder eller slukker lyset
  /*//Opg 8
  for (int i = 0; i < house.length; i++) {
    if (house[i].isRoomClicked(mouseX, mouseY)) {
      if (house[i].light) {
        house[i].setLight(false);
        text("Turning off the light in "+house[i].getRoomName(), 100, 700);
      } else {
        house[i].setLight(true);
        text("Turning on the light in "+house[i].getRoomName(), 100, 700);
      }
    }

    //Opg 9
    else if (mouseX >= 500 && mouseX <= 600 && mouseY >= 600 && mouseY <= 700) {
      if (house[i].light) {
        house[i].setLight(false);
        text("Turning off light in house", 100, 700);
      } else {
        house[i].setLight(true);
        text("Turning on the light in house", 100, 700);
      }
    }
  }*/
  
  //Opg 11
  for (int i = 0; i < house.length; i++) {
    house[i].lightSwitch();
  }
  
  //Opg 10
  if (mouseX >= 600 && mouseX <= 700 && mouseY >= 600 && mouseY <= 700) {
    checkHouse();
  }
}
