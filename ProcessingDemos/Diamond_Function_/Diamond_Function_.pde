
void setup() {
  size(500, 500); //outputs to the GUi: draws something

  circle(100, 100, 100);

  diamond(100, 100);
  diamond(0, 100);
  diamond(random(0, width), random(0, height));
  diamond(200, 100);
  diamond(400, 100);
  diamond(500, 100);
  fill(100, 255, 0);  //does not output
  textSize(40);

  //int is another function that outputs to the code
  int x = int(random(0, 10)); /*you don't have any control of the output
   it doesn't directly output to the Gui
   doesn't output, "returns" a value*/

  abs(-5);
}

void diamond (float xOffset, float yOffset) {
  push();
  rectMode(CENTER);
  translate(xOffset, yOffset);
  rotate(radians(45));
  square(0, 0, 100);
  pop();
}
