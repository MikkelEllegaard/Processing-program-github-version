size(400,600);
arc(width/2,height/1.8,300,325,0,PI*2); //face test
square(width*0.33,height/2.4,50); //l eye
square(width*0.545,height/2.4,50); //r eye
arc(width/2,height/1.8,width*0.25,width*0.27,0,PI*2); //nose
arc(width/2,height/1.5,150,150,0,PI,CHORD); //mout
fill(0,0,0); //t hat col
square(width*0.33,height*0.1,width/3); //t hat
fill(0,0,0); //l hat col
strokeWeight(12);
line(width*0.125,height*0.32,width*0.875,height*0.32); //l hat
strokeWeight(1);
line(0,height/1.8,height,height/1.8); //hori
line(width/2,0,width/2,height); //vert
