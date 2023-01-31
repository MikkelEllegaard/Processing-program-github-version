int length=-250;
int height=600;
int direction=1;
boolean loopDone = false;

void setup() {
  size(800, 800);
}

void draw() {
  background(255);
  translate(length, height);

  if (loopDone == false) {
    if (length<width-200 && direction == 1) { //Gulv, frem
      length = length+4;
    } else if (length>=width-200) {
      length = width-200;
    }
    if (height>200 && length == width-200 && direction == 1) { //Op
      height = height-4;
    } else if (height==200) {
      height = 200;
      direction = -1;
    }
    if (direction == -1 && length>200) { //Top, tilbage
      length = length-4;
    } else if (length==200) {
      length = 200;
      direction = 0;
    }
    if (direction == 0 && height<600) { //Ned
      height = height + 4;
    } else if (height==600 && direction == 0) {
      height = 600;
      direction = 1;
      loopDone = true;
    }
  }

  if (loopDone == true && length == 200) {
    length = length+4;
  } else if (length==700 && loopDone == true) {
    length = 200;
    loopDone = false;
  }

  rotate(0-frameCount/4);
  noFill();
  strokeWeight(12);
  arc(0, 0, 400, 400, 0, PI, CHORD);
  arc(0, 0, 400, 400, PI, PI*2, CHORD);
  arc(0, 0, 400, 400, PI/2, PI*1.5, CHORD);
  fill(200);
}
