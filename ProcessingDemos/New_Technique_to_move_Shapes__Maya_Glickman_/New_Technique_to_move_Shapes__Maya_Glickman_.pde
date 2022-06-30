float circleY = 250;
float speedX = 1;
float speedY = 1;
float circleX = 250;


void setup() {
  size(500, 500);
  circleY = 500;
  speedY = 1;
  circleX = 250;
  speedX = 1;
}

void draw () {
  background (0);
  circle(circleX, circleY, 50);
  circleX = circleX + speedX;
  circleY = circleY + speedY;

  if (circleY > height) {
    speedY = -abs(speedY);
  }
  if (circleY < 0) {
    speedY = abs(speedY);
  }
  if (circleX > width) {
    speedX = -abs(speedX);

    if (circleY < 0) {
      speedX = abs(speedX);
    }
} 
}
