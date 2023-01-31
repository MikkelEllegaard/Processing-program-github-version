void keyPressed() {

  if (Map2 == true && Ppx <= 125 && Ppy >= 175 && Ppy <= 325 && (key21 == 0 || key22 == 0 || key23 == 0)) {
    if (key == 'e') {
      lever1 = true;
      if (key21 == 0) {
        key22 = 2;
        key23 = 2;
      } else if (key22 == 0) {
        key21 = 2;
        key23 = 2;
      } else if (key23 == 0) {
        key21 = 2;
        key22 = 2;
      }
    }
  }

  if (key == 'm') DevMode = true;

  if (key == 'q') { //Goes back to main menu
    Ppx = 0;
    Ppy = 0;
    Map1 = false;
    Map2 = false;
    noClip = false;
    Homescreen = true;
    Controls = true;
    HowToPlay = false;
    About = false;
    Map1S = false;
    Map2S = false;
    key11 = false;
    key12 = false;
    key13 = false;
    gOpen1 = false;
    key21 = 2;
    key22 = 2;
    key23 = 2;
    lever1 = false;
    gOpen2 = false;
  }

  if (Controls == true && key == 'e') Controls = false;

  if (Homescreen == true) {
    if (key == 'w') Ppy = Ppy - 5;
    if (key == 'a') Ppx = Ppx - 5;
    if (key == 's') Ppy = Ppy + 5;
    if (key == 'd') Ppx = Ppx + 5;
  }

  if (noClip == true) {
    if (key == 'p') {
      noClip = false;
    }
    if (key == 'w') Ppy = Ppy - 10;
    if (key == 'a') Ppx = Ppx - 10;
    if (key == 's') Ppy = Ppy + 10;
    if (key == 'd') Ppx = Ppx + 10;
  } else if (noClip == false) {
    if (key == 'p') {
      noClip = true;
    }

    if (Map1 == true) {
      if (key == 'w') {
        if (!(Ppy == 0) &&
          !(Ppy == 405 && Ppx < 200) &&
          !(Ppy == 205 && Ppx > 100 && Ppx < 405) &&
          !(Ppy == 605 && Ppx > 100 && Ppx < 400) &&
          !(Ppy == 405 && Ppx > 300) &&
          !(Ppy == 600 && Ppx > 495 && Ppx < 605)) Ppy = Ppy - 5;
      }
      if (key == 'a') {
        if (!(Ppx == 0) &&
          !(Ppy < 205 && Ppx == 405) &&
          !(Ppy > 100 && Ppy < 600 && Ppx == 605) &&
          !(Ppy > 295 && Ppy < 405 && Ppx == 200) &&
          !(Ppy > 495 && Ppy < 605 && Ppx == 400) &&
          !(Ppy > 600 && Ppx == 210)) Ppx = Ppx - 5;
      }
      if (key == 's') {
        if (!(Ppy == 700) &&
          !(Ppy == 95 && Ppx > 200 && Ppx < 405) &&
          !(Ppy == 100 && Ppx > 595 && Ppx < 605) &&
          !(Ppy == 295 && Ppx < 200) &&
          !(Ppy == 295 && Ppx > 400) &&
          !(Ppy == 495 && Ppx > 200 && Ppx < 400) &&
          !(gOpen1 == false && Ppx < 100 && Ppy == 495)) Ppy = Ppy + 5;
      }
      if (key == 'd') {
        if (!(Ppx == 700) &&
          !(Ppx == 100 && Ppy > 95 && Ppy < 205) &&
          !(Ppx == 100 && Ppy > 495) &&
          !(Ppx == 295 && Ppy < 200) &&
          !(Ppx == 300 && Ppy > 295 && Ppy < 405) &&
          !(Ppx == 495 && Ppy > 100 && Ppy < 600)) Ppx = Ppx + 5;
      }
    }

    if (Map2 == true) {
      if (key == 'w') {
        if (!(Ppy == 0) &&
          !(Ppx < 200 && Ppy == 205) &&
          !(Ppx > 400 && Ppx < 500 && Ppy == 205) &&
          !(Ppx > 295 && Ppx < 405 && Ppy == 400) &&
          !(Ppx > 495 && Ppx < 605 && Ppy == 400) &&
          !(Ppx < 200 && Ppy == 405) &&
          !(Ppx > 300 && Ppx < 500 && Ppy == 605)) Ppy = Ppy - 5;
      }
      if (key == 'a') {
        if (!(Ppx == 0) &&
          !(Ppx == 200 && Ppy > 95 && Ppy < 205) &&
          !(Ppx == 200 && Ppy > 295 && Ppy < 405) &&
          !(Ppx == 205 && Ppy > 500) &&
          !(Ppx == 405 && Ppy < 400) &&
          !(Ppx == 605 && Ppy > 95 && Ppy < 400) &&
          !(Ppx == 605 && Ppy > 495)) Ppx = Ppx - 5;
      }
      if (key == 's') {
        if (!(Ppy == 700) &&
          !(Ppx < 200 && Ppy == 95) &&
          !(Ppx > 400 && Ppx < 605 && Ppy == 95) &&
          !(Ppx < 200 && Ppy == 295) &&
          !(Ppx > 95 && Ppx < 205 && Ppy == 500) &&
          !(Ppx > 300 && Ppx < 605 && Ppy == 495) &&
          !(gOpen2 == false && Ppx > 605 && Ppy == 495)) Ppy = Ppy + 5;
      }
      if (key == 'd') {
        if (!(Ppx == 700) &&
          !(Ppx == 95 && Ppy > 500) &&
          !(Ppx == 295 && Ppy < 400) &&
          !(Ppx == 300 && Ppy > 495 && Ppy < 605) &&
          !(Ppx == 495 && Ppy > 200 && Ppy < 400) &&
          !(Ppx == 495 && Ppy > 600)) Ppx = Ppx + 5;
      }
    }
  }
}
void mouseClicked() {
  int x = mouseX;
  int y = mouseY;

  if (Homescreen == true) { //Homescreen
    if (x > 150 && x < 650 && y > 50 && y < 250 && Controls == false) HowToPlay = true; //How To Play button
    if (x > 150 && x < 650 && y > 300 && y < 500 && Controls == false) { //Play button
      Map1 = true;
      Homescreen = false;
    }
  }
  if (x > 150 && x < 650 && y > 550 && y < 750 && Controls == false) About = true; //About button

  if (Map1 == true && DevMode == true) {
    if (x > 700 && y > 700 && y < 800) {
      Map1 = false;
      Map2 = true;
    }
  }
}
