int y = 100;
float y2 = 0;
int d = 1;

void setup() {
size(500, 500);

tearDrop(0, 0);


}

void draw() {
background(255);
tearDrop(100, y);
tearDrop(50, y2) ;
y++;
y2 = y2+2;
if(y > height) {
  y = 0;
}
if(y2 > height) {
y2 = 0;
}
}


void tearDrop(float x, float y, float d) {
push();
rectMode(CENTER);
translate(x, y);
fill(0);
triangle(271, 150, 300, 50, 328, 150);
circle(300, 150, 57);
pop();
}
