int Ppx = 0;
int Ppy = 0;
int Fe = 0;
boolean R1e = false;
boolean R2e = false;
boolean R3e = false;
boolean R4e = false;
boolean R5e = false;
boolean C1 = false;
boolean C2 = false;
boolean C3 = false;
boolean C4 = false;
boolean C5 = false;

void setup () {
  size(800, 1050);
}

void draw () {
  background(255);
  board(); //has the fruits
  lines(); //makes it easier to find coords
  player(); //the player character
}

void player() {
  translate(Ppx, Ppy); //moves the player
  fill(0, 0, 255);
  rect(0, 0, 100, 100); //player
}

void mousePressed() { //has player movement, fruit counter, reset button etc.
  int x = mouseX;
  int y = mouseY;

  if (x>350 && x<450 && y>850 && y<950) { //moves player 100 up if not at top already
    if (Ppy > 0) Ppy = Ppy - 100;
    else if (Ppy == 0) Ppy = 0;
  }
  if (x>350 && x<450 && y>950 && y<1050) { //moves player 100 down if not at bottom already
    if (Ppy < 700) Ppy = Ppy + 100;
    else if (Ppy == 700) Ppy = 700;
  }
  if (x>250 && x<350 && y>950 && y<1050) { //moves player 100 left if not already full left
    if (Ppx > 0) Ppx = Ppx - 100;
    else if (Ppx == 0) Ppx = 0;
  }
  if (x>450 && x<550 && y>950 && y<1050) { //moves player 100 right if not already full right
    if (Ppx < 700) Ppx = Ppx + 100;
    else if (Ppx == 700) Ppx = 700;
  }
  
  if (x>100 && x<250 && y>850 && y<925) { //resets the game
    Ppx = 0;
    Ppy = 0;
    Fe = 0;
    R1e = false;
    R2e = false;
    R3e = false;
    R4e = false;
    R5e = false;
    C1 = false;
    C2 = false;
    C3 = false;
    C4 = false;
    C5 = false;
  }
}

void board() { //whole board except lines, interactive functions, and player
  noFill(); //RESET button
  rect(100,850,150,75);
  fill(0);
  text("RESET",127,900);
  
  noFill(); //fruit counter
  rect(510,850,250,75);
  fill(0);
  text("Fruits Eaten:",525,900);
  text(Fe,725,900);
  
  if(R1e == true && C1 == false) {//increases Fruits Eaten counter
    Fe = Fe+1;
    C1 = true;
  }
  if(R2e == true && C2 == false) {
    Fe = Fe+1;
    C2 = true;
  }
  if(R3e == true && C3 == false) {
    Fe = Fe+1;
    C3 = true;
  }
  if(R4e == true && C4 == false) {
    Fe = Fe+1;
    C4 = true;
  }
  if(R5e == true && C5 == false) {
    Fe = Fe+1;
    C5 = true;
  }

  if (R1e == false) {
    fill(255, 0, 0);
    if (Ppx == 200 && Ppy == 300) {
      noFill();
      R1e = true;
    }
    rect(200, 300, 100, 100); //rect 1
  }

  if (R2e == false) {
    fill(255, 0, 0);
    if (Ppx == 100 && Ppy == 600) {
      noFill();
      R2e = true;
    }
    rect(100, 600, 100, 100); //rect 2
  }

  if (R3e == false) {
    fill(255, 0, 0);
    if (Ppx == 600 && Ppy == 400) {
      noFill();
      R3e = true;
    }
    rect(600, 400, 100, 100); //rect 3
  }

  if (R4e == false) {
    fill(255, 0, 0);
    if (Ppx == 400 && Ppy == 500) {
      noFill();
      R4e = true;
    }
    rect(400, 500, 100, 100); //rect 4
  }

  if (R5e == false) {
    fill(255, 0, 0);
    if (Ppx == 400 && Ppy == 100) {
      noFill();
      R5e = true;
    }
    rect(400, 100, 100, 100); //rect 5
  }

  noFill(); //buttons
  strokeWeight(4);
  rect(350, 850, 100, 100); //UP button
  rect(350, 950, 100, 100); //DOWN button
  rect(250, 950, 100, 100); //LEFT button
  rect(450, 950, 100, 100); //RIGHT button

  fill(0); //buttons text
  textSize(40);
  text("UP", 375, 915); //UP button
  textSize(35);
  text("DOWN", 352.5, 1015); //DOWN button
  text("LEFT", 265, 1015); //LEFT button
  text("RIGHT", 455, 1015); //RIGHT button
}

void lines() { //makes it easier to find coords
  /*line(100, 0, 100, 800); //vert
  line(200, 0, 200, 800);
  line(300, 0, 300, 800);
  line(400, 0, 400, 800);
  line(500, 0, 500, 800);
  line(600, 0, 600, 800);
  line(700, 0, 700, 800);
  line(800, 0, 800, 800);

  line(0, 100, 800, 100); //hori lines
  line(0, 200, 800, 200);
  line(0, 300, 800, 300);
  line(0, 400, 800, 400);
  line(0, 500, 800, 500);
  line(0, 600, 800, 600);
  line(0, 700, 800, 700);*/
  line(0, 800, 800, 800);
}
