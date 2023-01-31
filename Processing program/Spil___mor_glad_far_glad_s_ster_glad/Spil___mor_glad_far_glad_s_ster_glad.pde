boolean Mom = false;
boolean Dad = false;
boolean Sister = false;
boolean Flower = false;
boolean Beer = false;
boolean Money = false;
boolean CleanUp = false;
boolean Lawn = false;
boolean Clothes = false;

int Fr = 255;
int Fg = 0;
int Br = 255;
int Bg = 0;
int Mr = 255;
int Mg = 0;
int CUr = 255;
int CUg = 0;
int Lr = 255;
int Lg = 0;
int Cr = 255;
int Cg = 0;
int Mor = 255;
int Mog = 0;
int Dar = 255;
int Dag = 0;
int Sir = 255;
int Sig = 0;

void setup() {
  size(400,400);
}

void draw() {
  background(255);
  lines();
  farvBaggrund();
  text();
}

void lines() {
  strokeWeight(2);
  line(100, 0, 100, 300); //vert lines
  line(200, 0, 200, 300);
  line(300, 0, 300, 300);

  line(0, 100, 400, 100); //hori lines
  line(0, 200, 400, 200);
  line(0, 300, 400, 300);
}

void text() {
  textSize(40);
  fill(0);
  text("Mom", 10, 60); //Personer
  text("Dad", 15, 165);
  textSize(30);
  text("Sister", 15, 260);

  text("Flower", 110, 60); //Ting 1
  textSize(40);
  text("Beer", 110, 165);
  textSize(30);
  text("Money", 110, 260);

  textSize(25); //Ting 2
  text("Clean up", 205, 60);
  textSize(40);
  text("Lawn", 205, 165);
  textSize(25);
  text("Clothes", 210, 260);
  fill(255);
}


void farvBaggrund() {
  if (!Flower) {
    fill(Fr, Fg, 0); //Flower
    rect(100, 0, 100, 100);
  }

  if (!Beer) {
  fill(Br, Bg, 0); //Beer
  rect(100,100,100,100);
  }

  if (!Money) {
  fill(Mr, Mg, 0); //Money
  rect(100,200,100,100);
  }

  if (!CleanUp) {
  fill(CUr, CUg, 0); //Clean up
  rect(200,0,100,100);
  }

  if (!Lawn) {
  fill(Lr, Lg, 0); //Lawn
  rect(200,100,100,100);
  }

  if (!Clothes) {
  fill(Cr, Cg, 0); //Clothes
  rect(200,200,100,100);
  }
  
  if (Flower) {
    fill(Fr, Fg, 0); //Flower
    rect(100, 0, 100, 100);
  }

  if (Beer) {
  fill(Br, Bg, 0); //Beer
  rect(100,100,100,100);
  }

  if (Money) {
  fill(Mr, Mg, 0); //Money
  rect(100,200,100,100);
  }

  if (CleanUp) {
  fill(CUr, CUg, 0); //Clean up
  rect(200,0,100,100);
  }

  if (Lawn) {
  fill(Lr, Lg, 0); //Lawn
  rect(200,100,100,100);
  }

  if (Clothes) {
  fill(Cr, Cg, 0); //Clothes
  rect(200,200,100,100);
  }
  
  if (!Mom) {
  fill(Mor,Mog,0); //Mom
  rect(0,0,100,100);
  fill(255);
  circle(325,35,20);
  circle(375,35,20);
  arc(350,80,50,60,PI,2*PI,CHORD);
  }
  
  if (!Dad) {
  fill(Dar, Dag, 0); //Dad
  rect(0,100,100,100);
  fill(255);
  circle(325,135,20);
  circle(375,135,20);
  arc(350,180,50,60,PI,2*PI,CHORD);
  }
  
  if (!Sister) {
  fill(Sir, Sig, 0); //Sister
  rect(0,200,100,100);
  fill(255);
  circle(325,235,20);
  circle(375,235,20);
  arc(350,280,50,60,PI,2*PI,CHORD);
  }
  
  if (Mom) {
  fill(Mor,Mog,0); //Mom
  rect(0,0,100,100);
  fill(255);
  circle(325,35,20);
  circle(375,35,20);
  arc(350,60,50,60,0,PI,CHORD);
  fill(0);
  textSize(50);
  text("All Done :D!",90,370);
  }
  
  if (Dad) {
  fill(Dar, Dag, 0); //Dad
  rect(0,100,100,100);
  fill(255);
  circle(325,135,20);
  circle(375,135,20);
  arc(350,160,50,60,0,PI,CHORD);
  }
  
  if (Sister) {
  fill(Sir, Sig, 0); //Sister
  rect(0,200,100,100);
  fill(255);
  circle(325,235,20);
  circle(375,235,20);
  arc(350,260,50,60,0,PI,CHORD);
  }
}

void mouseClicked() {
  float x = mouseX;
  float y = mouseY;



  if ((x>100 && x<200) && (y>0 && y<100)) { //Flower knap
    Flower = true;
    Fr = 0;
    Fg = 255;
  }
  if ((x>100 && x<200) && (y>100 && y<200)) {//Beer knap
    Beer = true;
    Br = 0;
    Bg = 255;
  }
  if ((x>100 && x<200) && (y>200 && y<300)) {//Money knap
    Money = true;
    Mr = 0;
    Mg = 255;
  }
  if ((x>200 && x<300) && (y>0 && y<100)) {//Clean up knap
    CleanUp = true;
    CUr = 0;
    CUg = 255;
  }
  if ((x>200 && x<300) && (y>100 && y<200)) {//Lawn knap
    Lawn = true;
    Lr = 0;
    Lg = 255;
  }
  if ((x>200 && x<300) && (y>200 && y<300)) {//Clothes knap
    Clothes = true;
    Cr = 0;
    Cg = 255;
  }
  
  if (Money || Clothes) { //Sister status
    Sister = true;
    Sir = 0;
    Sig = 255;
  }
  
  if (Beer && Lawn && Sister) { //Dad status
    Dad = true;
    Dar = 0;
    Dag = 255;
  }
  
  if (Flower && CleanUp && Dad) { //Mom status
    Mom = true;
    Mor = 0;
    Mog = 255;
  }
}
