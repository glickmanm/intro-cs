/*
Maya Glickman
 6/24/2022
 Variable Demo
 Created for into to cs summer 2022
 */

String welcome = "Hello, world!"; //Global vairable
boolean swith1 = false;
int diameter = 120;

void setup() {
  size(500, 500);
  
}

void draw() {
  background(0);
  diameter = diameter /2; //incrementation 
  noStroke();
  fill(255);
  circle (width/2, height/2, diameter);
  fill(200, 200, 0);
  
  
  
  textSize(50);
  text(welcome, width/2, height/2);
}


void mousePressed() {
  println(welcome);
  
  welcome = "Goodbye.";
}
