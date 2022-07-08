String screen = "Start Page";
float dualEnemy = 3;
boolean dual = false;
float BuddySpeedX = 3;
float BuddySpeedY = 3;
float dualBuddyX = 0;
float dualBuddyY = 0;
float buddySpeed = 5;

float EnemySpeedX = 3;
float EnemySpeedY = 3;
float dualEnemyX = 0;
float dualEnemyY = 0;
float EnemySpeed = 10;


boolean upKey = false;
boolean downKey = false;
boolean leftKey = false;
boolean rightKey = false;

int r = 0;
int g = 0;
int b = 0;

float coin1X = random(5, 495);
float coin1Y= random(105, 390);
float coin1Z = random(10, 20);

float coin2X = random(5, 495);
float coin2Y= random(105, 390);
float coin2Z = random(10, 20);

int coinCounter = 0;

void setup() {
  size(500, 500);
  // noLoop();
}

void draw() {
  background(r, g, b);
  movePlayer();
  moveEnemy();
  //from Processing Refrence
  println("draw", screen);
  if (screen == "Start Page") {
    startScreen ();
  }
  if (screen == "ingame") {
    gameScreen();
  }
  if (screen == "gameOver") {
    gameOverScreen ();
  }
  //Multiple Screens Demo
}

void moveEnemy () {
  EnemySpeedX = 0;
  EnemySpeedY = 0;
  int direction = floor (random(1, 8));
  println("Direction: ", direction);
  if (direction == 1 || upKey)
  {
    EnemySpeedY -= EnemySpeed;
  } else if (direction > 5 || downKey) {
    EnemySpeedY += EnemySpeed;
  } else if (direction == 3 || rightKey) {
    EnemySpeedX += EnemySpeed;
  } else {
    EnemySpeedX -= EnemySpeed;
  }
  if (EnemySpeedX != 0 && EnemySpeedY != 0) {
    EnemySpeedX = EnemySpeedX/sqrt(2);
    EnemySpeedY = EnemySpeedY/sqrt(2);
  }
  println ("MoveEnemy", dualEnemyY, EnemySpeedY, dualEnemyX);
  if (dualEnemyY <= 395 && dualEnemyY > 375 && dualEnemyX > -200 && dualEnemyX < 200) {
    println("belowLine", dualEnemyY, EnemySpeedY);
    dualEnemyY += EnemySpeedY + 15;
  } else if (dualEnemyY > 354 && dualEnemyY < 375 && dualEnemyX > -200 && dualEnemyX < 200) {
    println("aboveLine", dualEnemyY, EnemySpeedY);
    dualEnemyY += EnemySpeedY - 15;
  } else if (dualEnemyY > 464) {
    dualEnemyY += EnemySpeedY - 15;
  } else if (dualEnemyY < 2 ) {
    dualEnemyY += EnemySpeedY + 15;
  } else {
    println("Line", dualEnemyY, EnemySpeedY);
    //  if(dualEnemyY > -65) { // && dualEnemyX > -220) {
    dualEnemyY += EnemySpeedY;
    // }else{
    // dualEnemyY += EnemySpeedY + 5;
  }

  if (dualEnemyX > 205) {
    dualEnemyX += EnemySpeedX - 15;
  } else if (dualEnemyX < -240) {
    dualEnemyX += EnemySpeedX + 15;
  } else {
    dualEnemyX += EnemySpeedX;
  }
}
void movePlayer() {
  BuddySpeedX = 0;
  BuddySpeedY = 0;

  if (upKey) BuddySpeedY -= buddySpeed;
  if (downKey) BuddySpeedY += buddySpeed;
  if (rightKey) BuddySpeedX += buddySpeed;
  if (leftKey) BuddySpeedX -= buddySpeed;

  if (BuddySpeedX != 0 && BuddySpeedY != 0) {
    BuddySpeedX = BuddySpeedX/sqrt(2);
    BuddySpeedY = BuddySpeedY/sqrt(2);
  }
  println ("MovePlayer", dualBuddyY, BuddySpeedY, dualBuddyX);
  if (dualBuddyY <= -65 && dualBuddyY > -85 && dualBuddyX > -200 && dualBuddyX < 200) {
    println("belowLine", dualBuddyY, BuddySpeedY);
    dualBuddyY += BuddySpeedY + 5;
  } else if (dualBuddyY > -106 && dualBuddyY < -85 && dualBuddyX > -200 && dualBuddyX < 200) {
    println("aboveLine", dualBuddyY, BuddySpeedY);
    dualBuddyY += BuddySpeedY - 5;
  } else if (dualBuddyY > 4) {
    dualBuddyY += BuddySpeedY - 5;
  } else if (dualBuddyY < -458 ) {
    dualBuddyY += BuddySpeedY + 5;
  } else {
    println("Line", dualBuddyY, BuddySpeedY);
    //  if(dualBuddyY > -65) { // && dualBuddyX > -220) {
    dualBuddyY += BuddySpeedY;
    // }else{
    // dualBuddyY += BuddySpeedY + 5;
  }

  if (dualBuddyX > 205) {
    dualBuddyX += BuddySpeedX - 5;
  } else if (dualBuddyX < -240) {
    dualBuddyX += BuddySpeedX + 5;
  } else {
    dualBuddyX += BuddySpeedX;
    //From ArrowKeyControlDemo
  }
  if (dualBuddyX <= -237 && dualBuddyY < -220 && dualBuddyY > -230) {
    screen = "gameOver";
  }
}


void keyPressed() {
  if (keyCode == UP) {
    upKey = true;
  } else if (keyCode == DOWN) {
    downKey = true;
  } else if (keyCode == LEFT) {
    leftKey = true;
  } else if (keyCode == RIGHT) {
    rightKey = true;
  }
}

void keyReleased() {
  if (keyCode == UP) {
    upKey = false;
  } else if (keyCode == DOWN) {
    downKey = false;
  } else if (keyCode == LEFT) {
    leftKey = false;
  } else if (keyCode == RIGHT) {
    rightKey = false;
  }
}

boolean rectangleRectangleCollisionCheck(float x1, float y1, float w1, float h1,
  float x2, float y2, float w2, float h2) {
  //println(x1, x2, y1, y2, w1, w2, h1, h2);
  return ((x1 <= x2 + w2) &&
    (x1 + w1 >= x2) &&
    (y1 <= y2 + h2) &&
    (y1 + h1 >= y2));
}

void dualBuddy () {
  fill(#76e8d7);

  println("dualBuddy", 465 + dualBuddyY);
  //if(465 + dualBuddyY == 400) {
  //return;
  //}

  stroke(255);
  strokeWeight(2);
  square(width/2+dualBuddyX, 465 + dualBuddyY, 30);
  circle(240 +dualBuddyX, 490+ dualBuddyY, 10);
  circle(240 +dualBuddyX, 480+ dualBuddyY, 10);
  circle(240+dualBuddyX, 470+ dualBuddyY, 10);
  circle(290+dualBuddyX, 490+ dualBuddyY, 10);
  circle(290+dualBuddyX, 480+ dualBuddyY, 10);
  circle(290+dualBuddyX, 470+ dualBuddyY, 10);

  //if (coin1X == dualBuddyX + 240 && coin1Y == dualBuddyY + 490) {
  if (rectangleRectangleCollisionCheck(coin1X, coin1Y, 50, 50,
    dualBuddyX + 240, dualBuddyY + 490, 50, 50)&& coin1Z != 0) {

    coin1Z = 0;
    coinCounter += 1;
  }
  if (rectangleRectangleCollisionCheck(coin2X, coin2Y, 50, 50,
    dualBuddyX + 240, dualBuddyY + 490, 50, 50)&& coin2Z != 0) {

    coin2Z = 0;
    coinCounter += 1;
  }

  if (rectangleRectangleCollisionCheck(dualEnemyX + 240, dualEnemyY + 30, 50, 50,
    dualBuddyX + 240, dualBuddyY + 490, 50, 50)) {

    screen ="gameOver";
  }
}
void dualEnemy () {
  fill(#cf0415);
  square(width/2 + dualEnemyX, 5 + dualEnemyY, 30);

  stroke(255);
  strokeWeight(2);
  circle(240 + dualEnemyX, 30+ dualEnemyY, 10);
  circle(240+ dualEnemyX, 20+ dualEnemyY, 10);
  circle(240+ dualEnemyX, 10+ dualEnemyY, 10);
  circle(290+ dualEnemyX, 30+ dualEnemyY, 10);
  circle(290+ dualEnemyX, 20+ dualEnemyY, 10);
  circle(290+ dualEnemyX, 10+ dualEnemyY, 10);
}

void door() {
  fill(255);
  rect(0, 220, 10, 60);
}

void coin(float x, float y, float z) {
  fill(#deb71b);
  circle(x, y, z);
}

void mousePressed() {
  println("MousePressed");
  if (mousePressed) {
    if (screen == "gameOver") {
      resetGame();
    } else
      screen = "ingame";
  }

  println("MousePressed", screen);
}
//Multiple Screens Demo
void startScreen() {
  r = 0;
  g = 0;
  b = 0;
  background(r, g, b);

  textSize(18);
  text("Start", 240, 250);
  println(250, "StartScreen", 250);
  //if (gameScreen != startScreen) {
  // return true;

  //} else  {
  // return false;
  // }
}

//Multiple Screens Demo
void gameScreen () {
  println(250, "GameScreen", 250);
  dualBuddy();
  dualEnemy();
  line(80, 100, 430, 100);
  line(80, 400, 430, 400);
  door();
  coin(coin1X, coin1Y, coin1Z);
  coin(coin2X, coin2Y, coin2Z);
  coin(0, 0, 0);
  coin(0, 0, 0);
  coin(0, 0, 0);
  coin(0, 0, 0);

  textSize(18);
  text("Coins:", 10, 20);
  text(coinCounter, 60, 20);
}
//Multiple Screens Demo
void gameOverScreen() {
  fill(255);

  text("GAME OVER", 210, 200);
  text("Score:", 220, 300);
  text(coinCounter, 270, 300);
}
//Multiple Screens Demo
void resetGame() {
  println("Reset Game");
  screen = "Start Page";


  coin1X = random(5, 495);
  coin1Y= random(105, 390);
  coin1Z = random(10, 20);

  coin2X = random(5, 495);
  coin2Y= random(105, 390);
  coin2Z = random(10, 20);

  coinCounter = 0;

  BuddySpeedX = 3;
  BuddySpeedY = 3;
  dualBuddyX = 0;
  dualBuddyY = 0;
  buddySpeed = 5;

  EnemySpeedX = 3;
  EnemySpeedY = 3;
  dualEnemyX = 0;
  dualEnemyY = 0;
  EnemySpeed = 10;
}
//Multiple Screens Demo
