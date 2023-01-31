int strækning=-250;
int retning=1;

void setup() {
  size(800,800);
}

void draw() {
background(255);
translate(strækning,400);
if(retning>0) {
  strækning = strækning+2;}
  else if (strækning>=width) {
    retning=-1;
  }
 if(retning<0) {
   strækning = strækning*-1;}

rotate(0-frameCount/4);
noFill();
strokeWeight(12);
arc(0,0,400,400,0,PI,CHORD);
arc(0,0,400,400,PI,PI*2,CHORD);
arc(0,0,400,400,PI/2,PI*1.5,CHORD);
fill(200);
}
