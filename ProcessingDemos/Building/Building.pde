void setup() {
size(500, 500);

rect(100, 250, 120, 250);

square(110, 270, 35);
square(170, 270, 35);
square(110, 330, 35);
square(170, 330, 35);
square(110, 390, 35);
square(170, 390, 35);

rect();
}

void building(float x, float y, float w, float h){
push();
rectMode(CENTER);
fill(255);
rect(x, y, w, h);
fill(0);
square (x, y, w);
pop();
}
