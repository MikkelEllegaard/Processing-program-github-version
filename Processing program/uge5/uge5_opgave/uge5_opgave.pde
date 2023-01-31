import controlP5.*;

ControlP5 op5;
Knob red;
Knob green;
Knob blue;

int redC;
int greenC;
int blueC;

void setup() {
  size(800,800);
  op5 = new ControlP5(this);
  
  textSize(50);
  op5.addTextfield("text")
      .setPosition(100, 200)
      .setSize(500,100)
      .setColor(0)
      
      ;
  
  red = op5.addKnob("red")
            .setRange(0, 255)
            .setValue(100)
            .setPosition(width/3, height/2)
            .setRadius(width/6)
            .setDragDirection(Knob.HORIZONTAL)
            ;
  
  green = op5.addKnob("green")
              .setRange(0, 255)
              .setValue(100)
              .setPosition(0, height/2)
              .setRadius(width/6)
              .setDragDirection(Knob.HORIZONTAL)
              ;
  
  blue = op5.addKnob("blue")
              .setRange(0, 255)
              .setValue(100)
              .setPosition((width/3)+(width/3), height/2)
              .setRadius(width/6)
              .setDragDirection(Knob.HORIZONTAL)
              ;
}

void draw() {
  background(red.getValue(), green.getValue(), blue.getValue());
}
