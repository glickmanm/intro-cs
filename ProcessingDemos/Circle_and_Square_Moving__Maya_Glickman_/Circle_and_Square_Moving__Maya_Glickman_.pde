/*
Maya Glickman
 6/25/2022
 Variable Demo
 Created for into to cs summer 2022
 */
int diameter = 120;

void setup() {
  size(600, 600);
}

void draw() {
  diameter = 100;
  width = width + 3;
  height= height - 3;
  background (#aaaacc);
  noStroke();
  fill(255);
  circle (width/10, height/2, diameter );
  square (width/2, height/10, diameter );
  fill(200, 200, 0);
  
 
  
  
  
}
