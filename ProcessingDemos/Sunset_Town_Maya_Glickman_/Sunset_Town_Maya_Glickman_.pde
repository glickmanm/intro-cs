float r;
float g;
float b;


void setup() {
  size(500, 500);


  for (int x = 0; x < height; x++) {
    r=map(x, 0, height-1, 242, 245);
    g=map(x, 0, height-1, 232, 108);
    b=map(x, 0, height-1, 39, 66);

    stroke(r, g, b);
    line(0, x, width, x);
  }
    
  


    
  }


void draw() {
  hut(width/2, 300, 50, false);
  hut(350, 400, 80, true);

  shop(100, 100, 50, 1);
  shop(100, 300, 70, 2);
}


void hut(float x, float y, float size, boolean chimney) {
  
  
  rectMode(CENTER);

  strokeWeight(1);
  stroke(0);
  if (chimney) {
    fill(#834845);
    rect(x+size*0.4, y - size*0.8, size*0.2, size*0.5);
  }
  fill(#D3CBA9);
  rect(x, y, size, size*1.2);
  fill(#554D2E);
  triangle(x, y - size*1.3, x-size*0.7, y-size*0.6, x+size*0.7, y-size*0.6);
  fill(#4D5F59);
  circle(x - size*0.25, y - size*0.3, size*0.25);
  fill(#D8A9A6);
  rect(x, y+size*0.4, size*0.25, size*0.4);
}

void shop(float x, float y, float size, int option) {
  rectMode(CENTER);
  strokeWeight(1);
  stroke(0);

  fill(#D3CBA9);
  rect(x, y, size, size*1.2);
  fill(#554D2E);
  triangle(x, y - size*1, x-size*0.7, y-size*0.6, x+size*0.7, y-size*0.6);
  fill(#D8A9A6);
  rect(x+size/4, y+size*0.4, size*0.25, size*0.4);
  fill(#4D5F59);
  rect(x - size*0.17, y + size*0.35, size*0.4, size*0.25);
  fill(#5D4C2B);
  rect(x, y-size*0.16, size*0.8, size*0.2, 5);
  fill(255);
  textSize(10);
  textAlign(CENTER, CENTER);
  if (option == 1) {
    text("Maya", x, y - size*0.16);
  } else if (option == 2) {
    text("Coffee Shop", x, y - size*0.16);
  } else if (option == 3) {
    text("MARKET", x, y - size*0.16);
  }
}
