int HeadX = 200;
int HeadY = 200;
int tick = 20;
boolean up = false, down = false, right = true, left = false;
ArrayList<Integer> TailX = new ArrayList<Integer>();

void setup() {
  size(800,800);
}

void draw() {
  
  println(HeadX);
  println(HeadY);
  background(240);
  head();
  move();
  tail();
  tailMove();
}

void head() {
  fill(0, 240, 0);
  rect(HeadX, HeadY, 100, 100);
  noFill();
}

void move() {
  if (HeadX < 600 && right == true) {
    if (millis()%tick == 0) HeadX = HeadX + 100;
    println("right = true");
  }
  if (HeadX >= 600 && right == true) {
    right = false;
    down = true;
  }
  
  if (HeadY < 600 && down == true) {
    if (millis()%tick == 0) HeadY = HeadY + 100;
    println("down = true");
  }
  if (HeadY >= 600 && down == true) {
    down = false;
    left = true;
  }
  
  if (HeadX > 100 && left == true) {
    if (millis()%tick == 0) HeadX = HeadX - 100;
    println("left = true");
  }
  if (HeadX <= 100 && left == true) {
    left = false;
    up = true;
  }
  
  if (HeadY > 200 && up == true) {
    if (millis()%tick == 0) HeadY = HeadY - 100;
    println("up = true");
  }
  if (HeadY <= 200 && up == true) {
    up = false;
    right = true;
  }
}
