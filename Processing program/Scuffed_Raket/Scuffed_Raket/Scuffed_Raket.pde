Raket[] batteri = new Raket[100];

int forsvinder = 255;

void setup() {

//Angiver værdierne
int bang;
float lunte;
color farver;
float xpos, ypos;
float xDirection;
float ySpeed;

  size(1000, 800);

  for (int i = 0; i < batteri.length; i++) {
    //Giv hver raket en værdi, hos nogle værdier skal det være tilfældigt
    bang = 50;
    lunte = random(3, 5)*14;
    farver = color(random(100, 255), random(100, 255), random(100, 255), forsvinder);
    xpos = width/2;
    ypos = height;
    xDirection = random(-6, 6);
    ySpeed = (40);
    
    batteri[i] = new Raket(bang, lunte, farver, xpos, ypos, xDirection, ySpeed);
  }
}

void draw() {
  background(200); //Så raketterne fra forrige frames fjernes
  for (int i = 0; i < batteri.length; i++) { //Gør dette for hver raket
    batteri[i].exploderRaket();
    batteri[i].visRaket();
    batteri[i].flytRaket();
  }
}
