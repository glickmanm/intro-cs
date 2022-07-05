float x = 0;
void setup() {
  size(500, 500);
  // for (int x = 0; x <= 300; x+=50) {
  //square(x, height/2, 50);
  for (float x = 80; x<= width-80; x+=(width-160)/6) {
    circle(x, 200, 30);
  }
}
