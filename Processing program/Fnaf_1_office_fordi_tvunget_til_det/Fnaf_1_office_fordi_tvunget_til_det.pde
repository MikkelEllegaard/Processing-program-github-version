//positionerne og storrelserne ser forkerte ud, men fandt dem via et billede at fnaf 1 kontoret
//Lavet af Mikkel
boolean lLight = false;
boolean lDoor = false;
boolean rLight = false;
boolean rDoor = false;

void setup() {
  size(1600, 900);
}

void draw() {
  background(192);
  strokeWeight(4);
  windows();
  doors();
  buttons();
  lines();
}

void lines() {
  line(width/2, 0, width/2, height); //mid v

  line(width/4, 0, width/4, height); //1/4wid v
  line(width*3/4, 0, width*3/4, height); //3/4wid v

  line(width/8, 0, width/8, height); //1/8wid v
  line(width*7/8, 0, width*7/8, height); //7/8wid v

  line(0, height/2, width, height/2); //mid h
}

void windows() {
  if (lLight == true) fill(255, 255, 153);
  if (lLight == false) noFill();
  rect(width/8+120, height/3, width/8, height/3); //win l
  noFill();
  
  if (rLight == true) fill(255, 255, 153);
  if (rLight == false) noFill();
  rect(width*7/8-120-width/8, height/3, width/8, height/3); //win r
  noFill();
}

void doors() {
  if (lLight == true && lDoor == false) fill(255, 255, 204);
  if (lLight == false && lDoor == false) noFill();
  if (lDoor == true) fill(128);
  rect(70, height/3, width/8, height*2/3); //door l
  noFill();
  
  if (rLight == true && rDoor == false) fill(255, 255, 204);
  if (rLight == false && rDoor == false) noFill();
  if (rDoor == true) fill(128);
  rect(width-width/8-70, height/3, width/8, height*2/3); //door r
  noFill();
}

void buttons() {
  if (lDoor == true) fill(255, 51, 51);
  if (lDoor == false) noFill();
  rect(10, height/2, 50, 50); //but do l
  noFill();
  
  if (lLight == true) fill(255, 255, 153);
  if (lLight == false) noFill();
  rect(10, height/2+60, 50, 50); //but li l
  noFill();
  
  if (rDoor == true) fill(255, 51, 51);
  if (rDoor == false) noFill();
  rect(width-60, height/2, 50, 50); //but do r
  noFill();
  
  if (rLight == true) fill(255, 255, 153);
  if (rLight == false) noFill();
  rect(width-60, height/2+60, 50, 50); //but li r
  noFill();
}

void mousePressed() {
  int x = mouseX;
  int y = mouseY;
  
  if (x > 10 && x < 60 && y > height/2 && y < height/2+50) { //do l
    if (lDoor == false) {
      lDoor = true;
      println("lDoor = true");
    }
    else if (lDoor == true) {
      lDoor = false;
      println("lDoor = false");
    }
  }
  
  if (x > 10 && x < 60 && y > height/2+60 && y < height/2+110) { //li l
    if (lLight == false) {
      lLight = true;
      println("lLight = true");
    }
    else if (lLight == true) {
      lLight = false;
      println("lLight = false");
    }
  }
  
  if (x > width-60 && x < width-10 && y > height/2 && y < height/2+50) { //do r
    if (rDoor == false) {
      rDoor = true;
      println("rDoor = true");
    }
    else if (rDoor == true) {
      rDoor = false;
      println("rDoor = false");
    }
  }
  
  if (x > width-60 && x < width-10 && y > height/2+60 && y < height/2+110) { //li r
    if (rLight == false) {
      rLight = true;
      println("rLight = true");
    }
    else if (rLight == true) {
      rLight = false;
      println("rLight = false");
    }
  }
}
