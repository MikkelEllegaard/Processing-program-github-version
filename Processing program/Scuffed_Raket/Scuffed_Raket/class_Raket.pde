class Raket {
  //Attributter / Tilstand (variabler)
  int bang;
  float lunte;
  color farver;
  float xpos, ypos;
  float xDirection;
  float ySpeed;

  //Konstruktør
  Raket(int tempBang, float tempLunte, color tempFarver, float tempXpos, float tempYpos, float tempXdirection, float tempYspeed) {
    bang = tempBang;
    lunte = tempLunte;
    farver = tempFarver;
    xpos = tempXpos;
    ypos = tempYpos;
    xDirection = tempXdirection;
    ySpeed = tempYspeed;
  }

  void visRaket() {
    if (lunte > 0) strokeWeight(1);
    else if (lunte <= 0) strokeWeight(0);
    if (lunte > 0) fill(255);
    else if (lunte <= 0) fill(farver);
    if (bang < 100) circle(xpos, ypos, bang);
    forsvinder++;
  }

  void flytRaket() {
    if (lunte > 0) {
    xpos = xpos - xDirection;
    ypos = ypos - ySpeed;
    ySpeed--;
    }
    lunte--;
    println(lunte);
  }
  
  void exploderRaket() { 
    if (lunte <= 0) {
      bang++;
    }
  }
}
