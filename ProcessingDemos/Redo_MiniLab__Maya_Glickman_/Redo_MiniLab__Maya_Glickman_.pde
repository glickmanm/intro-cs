float x = 0;
void setup() {
  size(500, 500);

  for (int x = 60; x<= width-60; x+=(width-100)/1) { //copied from loop practice problems
    TeardropCard();
  }
  for (int x = 40; x<= width-40; x+=(width-60)/1) {
  DiamondCard();
  }
  for (int x = 40; x<= width-40; x+=(width-60)/1) {
    CircleCard ();
  } 
   for (int x = 40; x<= width-40; x+=(width-60)/1)
   SquareCard();
}


void TeardropCard() {
  rect(50, 250, 70, 100);
  teardrop(85, 305, 30);
}

void DiamondCard(){
rect(50, 20, 70, 100);
diamond(80, 50, 30);
}

void CircleCard() {
rect(400, 20, 70, 100);
circle(435, 70, 40);
}

void SquareCard() {
rect(400, 250, 70, 100);
square(418, 280, 30);
}

void teardrop(float x, float y, float w) {
  triangle(x-w/2, y, x, y-1.5*w, x+w/2, y);
  arc(x, y, w, w, radians(-3), radians(183), OPEN);
  //copied from teardrop_and_diamond
}

void diamond(float x, float y, float w) {
  push();
  translate(x, y);
  rotate(radians(45));
  square(0, 0, w);
  pop();
  //copied from teardrop_and_diamond
}
