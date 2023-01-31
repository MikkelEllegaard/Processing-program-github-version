int lengde =51;
int retning = 1;

void setup() {
  size (600,600);
}

void draw() {
  background(195);
  println(frameCount);
  
  translate(lengde,300);
  circle(0,0,100);
  if(retning>0){
    lengde=lengde-1;
  } else if (retning<=0){
    lengde = lengde+1;
  }
  
  if (lengde>=width|| lengde <=-1){
    retning = retning*-1;
  }
  
  
  translate (lengde,300);
  
    
  if(lengde >=50+width){
    lengde = 50;
  }
}
