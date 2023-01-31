boolean key11 = false;
boolean key12 = false;
boolean key13 = false;
boolean gOpen1 = false;

void map1() {
  if (Map1 == true) {
    if (DevMode == true) {
      fill(0, 0, 255);
      rect(700, 700, 100, 100);
      fill(0);
      textSize(50);
      text("SKIP", 700, 770);
      noFill();
    }

    if (key11 == false) { //key 1
      fill(255, 128, 0);
      if (Ppx > 175 && Ppx < 325 && Ppy < 125) {
        noFill();
        key11 = true;
      }
      rect(275, 75, 50, 50);
    }

    if (key12 == false) { //key 2
      fill(255, 128, 0);
      if (Ppx > 575 && Ppx < 725 && Ppy > 175 && Ppy < 325) {
        noFill();
        key12 = true;
      }
      rect(675, 275, 50, 50);
    }

    if (key13 == false) { //key 3
      fill(255, 128, 0);
      if (Ppx > 375 && Ppx < 525 && Ppy > 575 && Ppy < 725) {
        noFill();
        key13 = true;
      }
      rect(475, 675, 50, 50);
    }

    fill(0); //walls
    rect(0, 395, 200, 10); //hori
    rect(200, 195, 200, 10);
    rect(400, 395, 400, 10);
    rect(200, 595, 200, 10);

    rect(395, 0, 10, 205); //vert
    rect(595, 200, 10, 400);
    rect(200, 600, 10, 200);

    if (key11 == true && key12 == true && key13 == true) {
      fill(255, 200, 200);
      gOpen1 = true;
    } else fill(255, 0, 0);
    rect(0, 595, 200, 10);

    fill(0, 0, 255); //Exit
    rect(0, 605, 5, 195);

    if (Map1 == true && Ppy > 505 && Ppy < 800 && Ppx < 5) {
      Map1 = false;
      Map2 = true;
      HTPm2 = true;
    }
  }
}
