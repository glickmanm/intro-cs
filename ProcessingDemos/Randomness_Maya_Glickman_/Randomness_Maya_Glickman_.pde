int r;
String rps = "";

void setup () {
  size(500, 500);
  textAlign(CENTER, CENTER);


}

void draw() {
  background(255);
  text(rps, width/2, height/2);
  textSize(50);
}
//random(lo, hi) generates a random float value between lo and hi
// println(random(0-10));


//we can generate random colors
// fill(random(255), random(255), random(255));
//circle(width/2, height/2, 300);

//we can gernerate a random size
//circle(width/2, height/2, random(100, 200));

//circle(x,y,30);
//x += xSpeed;
//y += ySpeed;

void mousePressed() {
  fill(random(0, 255),
    random(0, 255),
    random(0, 255));
  r = int (random(0, 3));
  if (r ==0) {
    rps = "ROCK";
  } else if (r ==1) {
    rps = "PAPER";
  }
}
