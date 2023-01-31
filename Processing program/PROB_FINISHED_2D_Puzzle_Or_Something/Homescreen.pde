boolean HTPm2 = false;

void homescreen() {
  if (Homescreen == true) {
    fill(0);
    noFill();
    strokeWeight(4);
    textSize(20);
    if (Ppy > 700) text("That was intended :)", Ppx+100, Ppy);
    textSize(20);
    text("You Can Move", 300, 820);
    if (Controls == true) {
      rect(100, 150, 600, 500);
      textSize(50);
      rect(200, 300, 200, 200);
      rect(400, 300, 200, 200);
      textSize(40);
      text("Use WASD", 220, 400);
      text("To Move", 230, 450);
      textSize(75);
      text("Controls", 275, 250);
      textSize(45);
      text("Press 'e' To Continue", 200, 600);
      textSize(30);
      text("Press 'q'", 450, 380);
      text("To Go Back", 430, 410);
      text("To Homescreen", 405, 440);
    }
    if (HowToPlay == false && About == false && Controls == false) {
      fill(153, 255, 255);
      rect(150, 50, 500, 200);
      textSize(90);
      fill(0);
      text("How To Play", 160, 240);
      fill(153, 255, 255);
      rect(150, 300, 500, 200);
      textSize(200);
      fill(0);
      text("Play", 200, 480);
      fill(153, 255, 255);
      rect(150, 550, 500, 200);
      textSize(175);
      fill(0);
      text("About", 160, 740);
    }
    if (HowToPlay == true) { //How to play menu
      fill(153, 255, 255);
      rect(50, 50, 700, 700);
      fill(0);
      textSize(60);
      text("How To Play:", 240, 125);
      textSize(40);
      fill(255, 153, 0);
      rect(600, 175, 50, 50);
      fill(0);
      text("These are keys", 100, 250);
      if (HTPm2 == false) text("For more tips, reach more levels", 100, 400);
      else {
        fill(128);
        rect(600, 375, 50, 50);
        fill(0);
        text("These are levers. 1 key required", 100, 450);
      }
    }
    if (About == true) {
      fill(153, 255, 255);
      rect(50, 50, 700, 700);
      fill(0);
      textSize(60);
      text("About", 240, 125);
      textSize(40);
      text("Game was made as hobby, and to get", 100, 200);
      text("better at coding while waiting for", 100, 250);
      text("next coding lesson (2 weeks).", 100, 300);
      textSize(55);
      text("Made by: Mikkel Ellegaard", 100, 500);
      textSize(50);
      text("A College Student", 100, 600);
      text("Computer Science course", 100, 650);
    }
    strokeWeight(1);
  }
}
