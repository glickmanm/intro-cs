void setup() {
size(500, 500);
}

void draw() {
background(0);
dualBuddy();
dualEnemy();
line(0, 250, 500, 250);
}

void dualBuddy () {
fill(#76e8d7);
square(width/2, 465, 30);

stroke(255);
strokeWeight(2);
circle(240, 490, 10);
circle(240, 480, 10);
circle(240, 470, 10);
circle(290, 490, 10);
circle(290, 480, 10);
circle(290, 470, 10);
}

void dualEnemy () {
fill(#cf0415);
square(width/2, 5, 30);

stroke(255);
strokeWeight(2);
circle(240, 30, 10);
circle(240, 20, 10);
circle(240, 10, 10);
circle(290, 30, 10);
circle(290, 20, 10);
circle(290, 10, 10);


}
