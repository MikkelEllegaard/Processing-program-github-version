void setup() {
size(800,800);
}

void draw() {
background(255);
translate(400,400);
rotate(frameCount/4);
noFill();
strokeWeight(12);
arc(0,0,400,400,0,PI,CHORD);
arc(0,0,400,400,PI,PI*2,CHORD);
arc(0,0,400,400,PI/2,PI*1.5,CHORD);
}

/* forsøg 1
void setup(){
size(800,800);
}

void draw() {
  background(220);
  drawCircle();
  drawCenterRect();
  drawMiddleLines();

}

void drawMiddleLines() {
 strokeWeight(16);
 line(-(width),-(670),width,-(670));
}

void drawCircle() {
  translate(width/2,height/2);
  strokeWeight(12);
  noFill();
  circle(0,0,width/2);
}

void drawCenterRect() {
  fill(10);
  rect(-190,-5,380,5);
}
*/
