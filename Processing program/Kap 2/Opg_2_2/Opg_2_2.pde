int strækning=-250;

void setup() {
size(800,800);
}

void draw() {
background(255);
translate(strækning,400);
if(strækning<width+250) {
  strækning = strækning+2;}
  else if (strækning>=width) {
    strækning = -250;
  }

rotate(0-frameCount/4);
noFill();
strokeWeight(12);
arc(0,0,400,400,0,PI,CHORD);
arc(0,0,400,400,PI,PI*2,CHORD);
arc(0,0,400,400,PI/2,PI*1.5,CHORD);
fill(200);
}
