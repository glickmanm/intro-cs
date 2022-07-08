/*
 Maya Glickman
 7/8/2022
 This game is primarily about two robots, one you can control
 and the other a bot that is trying to hunt you down.
 You are trying to collect as many coins as you can before
 the bot touches your robot. Once you have collected all your
 coins you want to go through the door, which allows you to win.
 If the bot touches your robot the game is over. Furthermore,
 with more time I would've added another boundary at the top so 
 that the dualEnemy would also be closed in. Moreover, I called 
 it dual since it was inspired by the mobile game dual. Though I 
 couldn't replicate the game the characters look the same and so 
 are the colors. 
 */




String screen = "Start Page"; //to manage the different screens
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

float coin3X = random(5, 495);
float coin3Y= random(105, 390);
float coin3Z = random(10, 20);

float coin4X = random(5, 495);
float coin4Y= random(105, 390);
float coin4Z = random(10, 20);

float coin5X = random(5, 495);
float coin5Y= random(105, 390);
float coin5Z = random(10, 20);

float coin6X = random(5, 495);
float coin6Y= random(105, 390);
float coin6Z = random(10, 20);

float coin7X = random(5, 495);
float coin7Y= random(105, 390);
float coin7Z = random(10, 20);

float coin8X = random(5, 495);
float coin8Y= random(105, 390);
float coin8Z = random(10, 20);

float coin9X = random(5, 495);
float coin9Y= random(105, 390);
float coin9Z = random(10, 20);

float coin10X = random(5, 495);
float coin10Y= random(105, 390);
float coin10Z = random(10, 20);

float [] coinX = new float [10];
float [] coinY = new float [10];
float [] coinZ = new float [10];
//from teardrop falling demo

int coinCounter = 0;

void setup() {
  size(500, 500);

  for (int i = 0; i < coinX.length; i++) {
    coinX[i] = random(5, 495);
    coinY[i] = random(105, 390);
    coinZ[i] = random(10, 20);
  }//from teardrop falling demo
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
  if (screen == "YOU WIN :)") {
    winGame ();
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
  println("Direction: ", direction); //to randomize the dualEnemy's direction
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
  /* a little too random so I also corrensponed
   the dualEnemy with the arrow keys */
  if (EnemySpeedX != 0 && EnemySpeedY != 0) {
    EnemySpeedX = EnemySpeedX/sqrt(2);
    EnemySpeedY = EnemySpeedY/sqrt(2);
  }
  println ("MoveEnemy", dualEnemyY, EnemySpeedY, dualEnemyX);
  if (dualEnemyY <= 395 && dualEnemyY > 375 && dualEnemyX > -200 && dualEnemyX < 200) {
    println("belowLine", dualEnemyY, EnemySpeedY);
    dualEnemyY += EnemySpeedY + 15;//to bounce back
  } else if (dualEnemyY > 354 && dualEnemyY < 375 && dualEnemyX > -200 && dualEnemyX < 200) {
    println("aboveLine", dualEnemyY, EnemySpeedY);
    dualEnemyY += EnemySpeedY - 15;//to bounce back
  } else if (dualEnemyY > 464) {
    dualEnemyY += EnemySpeedY - 15;//to bounce back
  } else if (dualEnemyY < 2 ) {
    dualEnemyY += EnemySpeedY + 15; //to bounce back
  } else {
    println("Line", dualEnemyY, EnemySpeedY);

    dualEnemyY += EnemySpeedY;
  }

  if (dualEnemyX > 205) {
    dualEnemyX += EnemySpeedX - 15;//to bounce back
  } else if (dualEnemyX < -240) {
    dualEnemyX += EnemySpeedX + 15; //to bounce back
  } else {
    dualEnemyX += EnemySpeedX;
  }
  if (coinCounter >= 3) {
    EnemySpeed = 13;

    if (coinCounter == 5) {
      EnemySpeed = 15;
    } else if (coinCounter == 7) {
      EnemySpeed = 17;
    } else {

      EnemySpeed = 10;
    }//to make dualEnemy faster once you get more coins
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
  }//creating boundaries
  println ("MovePlayer", dualBuddyY, BuddySpeedY, dualBuddyX);
  if (dualBuddyY <= -65 && dualBuddyY > -85 && dualBuddyX > -200 && dualBuddyX < 200) {
    println("belowLine", dualBuddyY, BuddySpeedY);
    dualBuddyY += BuddySpeedY + 5;//to bounce back
  } else if (dualBuddyY > -106 && dualBuddyY < -85 && dualBuddyX > -200 && dualBuddyX < 200) {
    println("aboveLine", dualBuddyY, BuddySpeedY);
    dualBuddyY += BuddySpeedY - 5;//to bounce back
  } else if (dualBuddyY > 4) {
    dualBuddyY += BuddySpeedY - 5;//to bounce back
  } else if (dualBuddyY < -458 ) {
    dualBuddyY += BuddySpeedY + 5; //to bounce back
  } else {
    println("Line", dualBuddyY, BuddySpeedY);

    dualBuddyY += BuddySpeedY;
  }

  if (dualBuddyX > 205) {
    dualBuddyX += BuddySpeedX - 5;//to bounce back
  } else if (dualBuddyX < -240) {
    dualBuddyX += BuddySpeedX + 5;//to bounce back
  } else {
    dualBuddyX += BuddySpeedX;
    //From ArrowKeyControlDemo
  }

  if (dualBuddyX <= -212 && dualBuddyY < -230 && dualBuddyY > -270) {
    screen = "YOU WIN :)";
    /*when the dualBuddy touches the door
     the dualBuddy wins */
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
  }//to control dualBuddy
}//from arrowkeycontrol demo

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
}//to control
//from arrowkeycontrol demo

boolean rectangleRectangleCollisionCheck(float x1, float y1, float w1, float h1,
  float x2, float y2, float w2, float h2) {
  //println(x1, x2, y1, y2, w1, w2, h1, h2);
  return ((x1 <= x2 + w2) &&
    (x1 + w1 >= x2) &&
    (y1 <= y2 + h2) &&
    (y1 + h1 >= y2));
}//from collision function demo

void dualBuddy () {
  fill(#76e8d7);

  println("dualBuddy", 465 + dualBuddyY);


  stroke(255);
  strokeWeight(2);
  //to create dualBuddy
  square(width/2+dualBuddyX, 465 + dualBuddyY, 30);
  circle(240 +dualBuddyX, 490+ dualBuddyY, 10);
  circle(240 +dualBuddyX, 480+ dualBuddyY, 10);
  circle(240+dualBuddyX, 470+ dualBuddyY, 10);
  circle(290+dualBuddyX, 490+ dualBuddyY, 10);
  circle(290+dualBuddyX, 480+ dualBuddyY, 10);
  circle(290+dualBuddyX, 470+ dualBuddyY, 10);

  //allow the dualBuddy to eat coins
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
  if (rectangleRectangleCollisionCheck(coin3X, coin3Y, 50, 50,
    dualBuddyX + 240, dualBuddyY + 490, 50, 50)&& coin3Z != 0) {

    coin3Z = 0;
    coinCounter += 1;
  }
  if (rectangleRectangleCollisionCheck(coin4X, coin4Y, 50, 50,
    dualBuddyX + 240, dualBuddyY + 490, 50, 50)&& coin4Z != 0) {

    coin4Z = 0;
    coinCounter += 1;
  }
  if (rectangleRectangleCollisionCheck(coin5X, coin5Y, 50, 50,
    dualBuddyX + 240, dualBuddyY + 490, 50, 50)&& coin5Z != 0) {

    coin5Z = 0;
    coinCounter += 1;
  }
  if (rectangleRectangleCollisionCheck(coin6X, coin6Y, 50, 50,
    dualBuddyX + 240, dualBuddyY + 490, 50, 50)&& coin6Z != 0) {

    coin6Z = 0;
    coinCounter += 1;
  }
  if (rectangleRectangleCollisionCheck(coin7X, coin7Y, 50, 50,
    dualBuddyX + 240, dualBuddyY + 490, 50, 50)&& coin7Z != 0) {

    coin7Z = 0;
    coinCounter += 1;
  }
  if (rectangleRectangleCollisionCheck(coin8X, coin8Y, 50, 50,
    dualBuddyX + 240, dualBuddyY + 490, 50, 50)&& coin8Z != 0) {

    coin8Z = 0;
    coinCounter += 1;
  }
  if (rectangleRectangleCollisionCheck(coin9X, coin9Y, 50, 50,
    dualBuddyX + 240, dualBuddyY + 490, 50, 50)&& coin9Z != 0) {

    coin9Z = 0;
    coinCounter += 1;
  }
  if (rectangleRectangleCollisionCheck(coin10X, coin10Y, 50, 50,
    dualBuddyX + 240, dualBuddyY + 490, 50, 50)&& coin10Z != 0) {

    coin10Z = 0;
    coinCounter += 1;
  }
  if (rectangleRectangleCollisionCheck(dualEnemyX + 240, dualEnemyY + 30, 50, 50,
    dualBuddyX + 240, dualBuddyY + 490, 50, 50)) {
    //got from collision function demo but changed it
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
  //to create the dualEnemy
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
    } else if (screen == "YOU WIN :)") {
      resetGame();
    } else {
      screen = "ingame";
    }
  }

  println("MousePressed", screen);
}

//Multiple Screens Demo
void startScreen() {
  float r;
  float g;
  float b;
  for (int x = 0; x < height; x++) {
    r= map(x, 0, height-1, 33, 57);
    g= map(x, 0, height-1, 56, 74);
    b= map(x, 0, height-1, 37, 67);
    //gradient for the start screen
    stroke(r, g, b);
    line(0, x, width, x);

    stroke(255);
    strokeWeight(2);
    fill(0);
    circle(200, 200, 100);
    circle(295, 295, 100);
    circle(250, 250, 150);
  }
  textSize(100);
  stroke(255);
  strokeWeight(1);
  fill(#cf0415);
  text("Dual", 150, 100);
  fill(#76e8d7);
  text("Dual", 150, 480);
  textSize(40);
  fill(255);
  text("Start", 210, 260);
  println(250, "StartScreen", 250);
}

//Multiple Screens Demo
void gameScreen () {
  println(250, "GameScreen", 250);
  dualBuddy();
  dualEnemy();
  //line(80, 100, 430, 100);
  line(80, 400, 430, 400);
  door();
  coin(coin1X, coin1Y, coin1Z);
  coin(coin2X, coin2Y, coin2Z);
  coin(coin3X, coin3Y, coin3Z);
  coin(coin4X, coin4Y, coin4Z);
  coin(coin5X, coin5Y, coin5Z);
  coin(coin6X, coin6Y, coin6Z);
  coin(coin7X, coin7Y, coin7Z);
  coin(coin8X, coin8Y, coin8Z);
  coin(coin9X, coin9Y, coin9Z);
  coin(coin10X, coin10Y, coin10Z);


  textSize(18);
  text("Coins:", 10, 20);
  text(coinCounter, 60, 20);
}
//Multiple Screens Demo
void gameOverScreen() {
  fill(255);

  float r;
  float g;
  float b;
  for (int x = 0; x < height; x++) {
    r= map(x, 0, height-1, 110, 59);
    g= map(x, 0, height-1, 18, 32);
    b= map(x, 0, height-1, 19, 32);
    //gradient for the gameOverScreen
    stroke(r, g, b);
    line(0, x, width, x);
    fill(0);
    ellipse(250, 240, 400, 240);
  }
  fill(255);
  textSize(50);
  text("GAME OVER", 140, 230);
  text("Score:", 170, 300);
  text(coinCounter, 330, 300);
}
//Multiple Screens Demo
void winGame() {
  float r;
  float g;
  float b;
  for (int x = 0; x < height; x++) {
    r= map(x, 0, height-1, 33, 57);
    g= map(x, 0, height-1, 56, 74);
    b= map(x, 0, height-1, 37, 67);
    stroke(r, g, b);
    line(0, x, width, x);
    //gradient for the winGame screen
    fill(0);
    ellipse(250, 240, 400, 240);
  }
  fill(255);
  textSize(50);
  text("YOU WON :)", 150, 250);
  textSize(40);
  text("Coins:", 175, 290);
  text(coinCounter, 300, 290);
}
void resetGame() {
  println("Reset Game");
  screen = "Start Page";


  coin1X = random(5, 495);
  coin1Y= random(105, 390);
  coin1Z = random(10, 20);

  coin2X = random(5, 495);
  coin2Y= random(105, 390);
  coin2Z = random(10, 20);

  coin3X = random(5, 495);
  coin3Y= random(105, 390);
  coin3Z = random(10, 20);

  coin4X = random(5, 495);
  coin4Y= random(105, 390);
  coin4Z = random(10, 20);

  coin5X = random(5, 495);
  coin5Y= random(105, 390);
  coin5Z = random(10, 20);

  coin6X = random(5, 495);
  coin6Y= random(105, 390);
  coin6Z = random(10, 20);

  coin7X = random(5, 495);
  coin7Y= random(105, 390);
  coin7Z = random(10, 20);

  coin8X = random(5, 495);
  coin8Y= random(105, 390);
  coin8Z = random(10, 20);

  coin9X = random(5, 495);
  coin9Y= random(105, 390);
  coin9Z = random(10, 20);

  coin10X = random(5, 495);
  coin10Y= random(105, 390);
  coin10Z = random(10, 20);
  //to make the coins reset
  coinCounter = 0;
  //to make the coin counter reset
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
  //to make the dualBuddy and dualEnemy reset places
}
//Multiple Screens Demo

//Peer Comments

/*add more coins- I did and changed it so that
 the more coins you obtain the faster dualEnemy goes */

/*change the screen colors- I changed the colors
 of the screens by using the gradient code */

/*My family also added suggestions
 on the movement of the dualBuddy and the
 alignment of the text */
