int diameter = 100;
boolean growing = true;

void setup() {
  size(500, 500);
}


void draw () {
  background(0);
  fill(200, 200, 0);
  circle(width/2, height/2, diameter);
  if (growing) {
    diameter = diameter + 3; //can also do diam++ (also works with subtraction diam--)
    noStroke();
    fill (255);
    if (diameter >= width) {
      growing  = false;
    }
  } else {
    diameter--;
    if (diameter <= 0) {
      growing = true;
    }
  }
  println(diameter);
}

/* if (diameter > 500) {
 diameter = 0;}*/
 
