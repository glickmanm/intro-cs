void setup(){
size(500,500);
background(#0d573f);
beginShape();
vertex(151, 403);
vertex(298, 404);
vertex(152, 270);
vertex(291, 267);
vertex(155, 157);
vertex(287, 151);
vertex(227, 72);
vertex(224, 401);



endShape();
}

void draw() {
}

void mousePressed() {
  println(mouseX, mouseY);
  strokeWeight(5);
  point(mouseX, mouseY);
}
