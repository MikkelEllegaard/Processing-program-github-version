int headX = 0, headY = 400;
int[] tailX = new int[2], tailY = new int[2];

void playerExample() {
  tailX[0] = width/4;
  tailX[1] = width/2;
  tailY[0] = height/2;
  tailY[1] = height/2;
  
  fill(255, 128, 0);
  rect(headX, headY, width/cells, height/cells); //player head
  rect(tailX[0], tailY[0], width/cells, height/cells); //player tail 1
  rect(tailX[1], tailY[1], width/cells, height/cells); //player tail 2
  noFill();
}
