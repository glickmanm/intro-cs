String screen = "Start Page";
float dualEnemy = 3;
boolean dual = false;
float BuddySpeedX = 0;
float BuddySpeedY = 0;
float dualBuddyX = 100;
float dualBuddyY = 100;
float dualBuddy;

boolean upKey = false;
boolean downKey = false;
boolean leftKey = false;
boolean rightKey = false;

void setup() {
  size(500, 500);
  noLoop();
}

void draw() {
  background(0);
  //from Processing Refrence
  if (screen == "Start Page") {
    startScreen ();
  } if (screen == "ingame") {
    gameScreen();
  } if (screen == "gameOver") {
    gameOverScreen ();
  }
//Multiple Screens Demo
dualBuddy();
dualEnemy();
line(80, 100, 430, 100);
line(80, 400, 430, 400);
door();
coin();
coin();
coin();
coin();
coin();
coin();

text("Coins:", 10, 20);
println(10, "Coins:", 20);

movePlayer();
}

void movePlayer() {
 BuddySpeedX = 0;
  BuddySpeedY = 0;
  
  if(upKey) BuddySpeedY -= dualBuddy;
  if(downKey) BuddySpeedY += dualBuddy;
  if(rightKey) BuddySpeedX += dualBuddy;
  if(leftKey) BuddySpeedX -= dualBuddy;
  
  if(BuddySpeedX != 0 && BuddySpeedY != 0) {
    BuddySpeedX = BuddySpeedX/sqrt(2);
    BuddySpeedY = BuddySpeedY/sqrt(2);
  }
  dualBuddyX += BuddySpeedX;
  dualBuddyY += BuddySpeedY;
  //From ArrowKeyControlDemo
}


void keyPressed() {
  if(keyCode == UP) {
    upKey = true;
  } else if(keyCode == DOWN) {
    downKey = true;
  } else if(keyCode == LEFT) {
    leftKey = true;
  } else if(keyCode == RIGHT) {
    rightKey = true;
  }
    
}

void keyReleased() {
  if(keyCode == UP) {
    upKey = false;
  } else if(keyCode == DOWN) {
    downKey = false;
  } else if(keyCode == LEFT) {
    leftKey = false;
  } else if(keyCode == RIGHT) {
    rightKey = false;
  }
}

void dualBuddy () {
  fill(#76e8d7);

  stroke(255);
  strokeWeight(2);
  square(width/2, 465, 30);
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

void door() {
  fill(255);
  rect(0, 220, 10, 60);
}

void coin() {
  fill(#deb71b);
  circle(random(5, 495), random(105, 390), random(10, 20));
}

void mousePressed() {
  if (mousePressed) {
    screen = "ingame";
  } else if (screen == "gameOver") {
    resetGame();
  }
}
//Multiple Screens Demo
void startScreen() {

}
//Multiple Screens Demo
void gameScreen () {
}
//Multiple Screens Demo
void gameOverScreen() {
  fill(255);
   text("gameover", 140, 240);
  println(140, "gameover", 240);
}
//Multiple Screens Demo
void resetGame() {
}
//Multiple Screens Demo
