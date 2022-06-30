float x = 25;
float y = 25;
float speedX= 3;
float speedY= 3;


void setup() {
  size(500, 500);
}

void draw () {
  background (#eff5bf);
  fill(255);
  circle(x, y, 20);
  
  if (y <= 480 && x <= 20) {
    y = y + 3;
  }else if (y >= 480 && x <= 20);
  if (y > 40 && x > 400) {
    x = x + 3;

  }
  
}
}
