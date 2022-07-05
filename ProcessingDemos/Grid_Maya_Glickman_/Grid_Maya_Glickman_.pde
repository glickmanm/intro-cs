int x = 0;
int y = 0;
int x1= 0;
int y1 = 0;


void setup() {
  background(0);
  size(500, 500);
  stroke(255);
  strokeWeight(1);
  
  for(int x = 0; x < width; x+=50 ) {
  line(x, 0, x, height);
  }
  for(int y = 0; y < height; y+=50){
  line(0, y, width, y);
  }
  
  for(int x1 = -width; x1 < width; x1+=50) {
  line(x1, 0, width, height-x1);
  }
  for(int y1 = height; y1 > -height; y1=y1-50) {
  line(0, height + y1, width, y1);
}
}
