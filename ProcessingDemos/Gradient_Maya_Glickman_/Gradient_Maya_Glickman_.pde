float r;
float g;
float b;


void setup() {
  size(500, 500);

  gradient(255, 118, 242, 255, 175, 54);


  void gradient(float r1, float g1, float b1, float r2, float g2, float b2) {
    for (int x = 0; x < height; x++) {
      r= map(x, 0, height-1, 255, 255);
      g= map(x, 0, height-1, 118, 175);
      b= map(x, 0, height-1, 242, 54);

      stroke(r, g, b);
      line(0, x, width, x);
    }
  }
