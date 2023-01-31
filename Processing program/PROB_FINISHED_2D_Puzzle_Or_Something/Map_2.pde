// 2 = not picked up, 0 = picked up, 1 = pull lever
int key21 = 2;
int key22 = 2;
int key23 = 2;
boolean lever1 = false;
boolean gOpen2 = false;

void map2() {  
  if (Map2 == true) {

    if (Ppx > 500 && Ppy >= 695) {
    Ppx = 0;
    Ppy = 0;
    Map1 = false;
    Map2 = false;
    noClip = false;
    Homescreen = true;
    Controls = false;
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
    
    if (key21 == 2) { //key 1
      fill(255, 128, 0);
      if (Ppx > 375 && Ppx < 525 && Ppy < 125) {
        key21 = 0;
        if (lever1 == false) {
          key22 = 1;
          key23 = 1;
        }
      }
    } else if (key21 == 1) fill(255, 204, 153);
    if (key21 == 2 || key21 == 1) rect(475, 75, 50, 50);

    if (key22 == 2) { //key 2
      fill(255, 128, 0);
      if (Ppx > 575 && Ppx < 725 && Ppy > 175 && Ppy < 325 && key22 == 2) {
        key22 = 0;
        if (lever1 == false) {
          key21 = 1;
          key23 = 1;
        }
      }
    } else if (key22 == 1) fill(255, 204, 153);
    if (key22 == 2 || key22 == 1) rect(675, 275, 50, 50);

    if (key23 == 2) { //key 3
      fill(255, 128, 0);
      if (Ppx > 175 && Ppx < 325 && Ppy > 575 && Ppy < 725 && key23 == 2) {
        key23 = 0;
        if (lever1 == false) {
          key21 = 1;
          key22 = 1;
        }
      }
    } else if (key23 == 1) fill(255, 204, 153);
    if (key23 == 2 || key23 == 1) rect(275, 675, 50, 50);

    if (lever1 == false) { //lever
      fill(128, 128, 128);
      if (Ppx <= 125 && Ppy >= 175 && Ppy <= 325 && (key21 == 0 || key22 == 0 || key23 == 0)) {
        fill(0);
        textSize(20);
        text("Press e", Ppx+100, Ppy);
        fill(192, 192, 192);
      }
      rect(75, 275, 50, 50);
    }

    if (lever1 == true && key21 == 0 && key22 == 0 && key23 == 0) {
      fill(255, 200, 200);
      gOpen2 = true;
    } else fill(255, 0, 0);
    rect(605, 595, 205, 10);

    fill(0, 0, 255);
    rect(605, 795, 195, 5);

    fill(0);
    rect(0, 195, 200, 10); //h walls
    rect(400, 195, 205, 10);
    rect(0, 395, 200, 10);
    rect(400, 595, 205, 10);

    rect(395, 0, 10, 400); //v walls
    rect(595, 200, 10, 200);
    rect(195, 600, 10, 200);
    rect(595, 600, 10, 200);
  }
}
