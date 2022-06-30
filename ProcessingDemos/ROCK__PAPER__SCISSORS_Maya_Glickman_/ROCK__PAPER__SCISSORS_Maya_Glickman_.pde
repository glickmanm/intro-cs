String tex = "";

void setup() {
size(500, 500);
}

void draw() {
background(0);
fill(255);
text(tex, width/2, height/2);
}

void mousePressed() {
if(tex == "ROCK") {
tex = "SCISSORS";
} else if(tex == "SCISSORS") {
tex = "PAPER";
} else {
  tex = "ROCK";
}
}
