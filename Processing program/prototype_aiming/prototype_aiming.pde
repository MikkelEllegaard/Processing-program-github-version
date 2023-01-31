void setup() {
  size(500, 500);
}

void draw() {
  background(255);
  player();
  aim();
}

void player() {
  fill(255, 0, 0);
  rect(200, 200, 100, 100);
  noFill();
}

void aim() {
  float aimAngle = atan2(mouseY - height/2, mouseX - width/2);
  translate(width/2, height/2);
  rotate(aimAngle);
  triangle(100, -25, 100, 25, 150, 0);
}
