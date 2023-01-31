void setup (){
  size(800,800);
}

int value = 1000;

void draw (){
 drawCirc();
 drawSqua();
}

void drawCirc() {
  background(225);
  fill(255,0,0);
  circle(200,200,400);
}

void drawSqua() {
  fill(0,0,255);
  square(300,300,500);
}
