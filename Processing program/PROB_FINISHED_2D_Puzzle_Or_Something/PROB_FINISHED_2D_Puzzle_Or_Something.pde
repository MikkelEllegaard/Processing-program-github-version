int Ppx = 0;
int Ppy = 0;
boolean Map1 = false;
boolean Map2 = false;
boolean noClip = false;
boolean Homescreen = true;
boolean Controls = true;
boolean HowToPlay = false;
boolean About = false;
boolean Map1S = false;
boolean Map2S = false;
boolean DevMode = false;

void setup () {
  size(800, 1050);
}

void draw() {
  background(250);
  map1();
  map2();
  devmode();
  player();
  homescreen();
  lines();
}

void devmode() {
  if (DevMode == true) {
    textSize(20);
    fill(0);
    text("Ppx:", 200, 820);
    text(Ppx, 250, 820);
    text("Ppy:", 430, 820);
    text(Ppy, 480, 820);

    if (noClip == false) text("noClip: false", 10, 850);
    else if (noClip == true) text("noClip: true", 10, 850);
    if (Controls == false) text("Controls: false", 10, 880);
    else if (Controls == true) text("Controls: true", 10, 880);
    if (Homescreen == false) text("Homescreen: false", 140, 880);
    else if (Homescreen == true) text("Homescreen: true", 140, 880);
    if (HowToPlay == false) text("HowToPlay: false", 10, 910);
    else if (HowToPlay == true) text("HowToPlay: true", 10, 910);
    if (About == false) text("About: false", 170, 910);
    else if (About == true) text("About: true", 170, 910);
    if (HTPm2 == false) text("HTPm2: false", 10, 940);
    else if (HTPm2 == true) text("HTPm2: true", 10, 940);

    if (Map1 == false) text("Map1: false", 300, 850);
    else if (Map1 == true) {
      text("Map1: true", 300, 850);
      text("Map1", 600, 850);
      if (gOpen1 == false) text("gOpen1: false", 600, 880);
      else if (gOpen1 == true) text("gOpen1: true", 600, 880);
      if (key11 == false) text("key11: false", 600, 910);
      else if (key11 == true) text("key11: true", 600, 910);
      if (key12 == false) text("key12: false", 600, 940);
      else if (key12 == true) text("key12: true", 600, 940);
      if (key13 == false) text("key13: false", 600, 970);
      else if (key13 == true) text("key13: true", 600, 970);
    }
    if (Map1S == false) text("Map1S: false", 400, 850);
    else if (Map1S == true) text("Map1S: true", 400, 850);
    if (Map2 == false) text("Map2: false", 300, 880);
    else if (Map2 == true) {
      text("Map2: true", 300, 880);
      text("Map2", 600, 850);
      //if (gOpen2 == false) text("gOpen2: false", 600, 880);
      //else if (gOpen2 == true) text("gOpen2: true", 600, 880);
      if (lever1 == false) text("lever1: false", 600, 910);
      else if (lever1 == true) text("lever1: true", 600, 910);
      if (key21 == 2) text("key21: 2", 600, 940);
      else if (key21 == 1) text("key21: 1", 600, 940);
      else if (key21 == 0) text("key21: 0", 600, 940);
      if (key22 == 2) text("key22: 2", 600, 970);
      else if (key22 == 1) text("key22: 1", 600, 970);
      else if (key22 == 0) text("key22: 0", 600, 970);
      if (key23 == 2) text("key23: 2", 600, 1000);
      else if (key23 == 1) text("key23: 1", 600, 1000);
      else if (key23 == 0) text("key23: 0", 600, 1000);
    }
    if (Map2S == false) text("Map2S: false", 400, 880);
    else if (Map2S == true) text("Map2S: true", 400, 880);

    noFill();
  }
}

void lines() {
  line(0, 100, 800, 100); //h
  line(0, 200, 800, 200);
  line(0, 300, 800, 300);
  line(0, 400, 800, 400);
  line(0, 500, 800, 500);
  line(0, 600, 800, 600);
  line(0, 700, 800, 700);
  line(0, 900, 800, 900);
  strokeWeight(4);
  line(0, 800, 800, 800);

  strokeWeight(1);
  line(100, 0, 100, 1050); //v
  line(200, 0, 200, 1050);
  line(300, 0, 300, 1050);
  line(400, 0, 400, 1050);
  line(500, 0, 500, 1050);
  line(600, 0, 600, 1050);
  line(700, 0, 700, 1050);
}

void player() {
  fill(0, 255, 0);
  if (Map1 == true && Map1S == false) {
    Ppx = 50;
    Ppy = 450;
    Map1S = true;
  }
  if (Map2 == true && Map2S == false) {
    Ppx = 50;
    Ppy = 50;
    Map2S = true;
  }
  rect(Ppx, Ppy, 100, 100);
}
