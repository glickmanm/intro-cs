/*Maya Glickman
 6/29/22
 showing a sunrise and sunset in between mountains under clouds over the ocean
 showing it rising in the east and setting in the west
 */
float sunX = 250;
float sunY = 250;
boolean isSunrise = false; //to let the computer know what to do when isSunrise = true
float r = 232;
float g = 110;
float b = 53;
float cloudX = 0;
float speedCloud = 1;
float oceanY = 250;
//colors

void setup() {
  size(500, 500);
}


void draw () {
if (frameCount % 100 == 0) { //so the background doesn't flash quickly
  r = random(232, 255);
  g = random(110, 178);
  b = random(0, 53);
}
background(r, g, b); //to show the sunrise and sunset
noStroke();
fill(235, 245, 154);
circle( sunX, sunY, 100); //the sun
if ( sunY == 450) {
  isSunrise = true;
} else if ( sunY == 250) {
  isSunrise = false;
}
if ( isSunrise) {
  sunY = sunY - 1; //allowing the sun to go up
} else {
  sunY = sunY + 1; //allowing the sun to go down
}

fill(#496f8c);
rect(0, 400, 500, 400); //the ocean

if ( isSunrise) {
  oceanY = oceanY + 1;
} else {
  oceanY = oceanY - 1; 
  
fill(28, 28, 27);
noStroke(); 
strokeWeight(3);
//mountains
triangle(0, 500, 1, 120, 200, 500);
triangle(340, 500, 500, 200, 500, 500);
triangle(150, 500, 255, 300, 385, 500);

fill(255); //clouds
ellipse(80, 50, 100, 50);
circle(80, 30, 30);
circle(100, 30, 30);
circle(120, 35, 20);
circle(125, 50, 20);
circle(80, 30, 30);
circle(115, 57, 30);
circle(100, 65, 30);
circle(80, 65, 30);
circle(60, 65, 30);
circle(40, 55, 30);
circle(35, 40, 30);
circle(45, 30, 30);
circle(60, 30, 30);

ellipse(250, 70, 100, 50); //clouds
circle(250, 50, 30);
circle(230, 50, 30);
circle(210, 55, 20);
circle(200, 70, 20);
circle(210, 77, 30);
circle(220, 85, 30);
circle(240, 85, 30);
circle(260, 85, 30);
circle(280, 80, 30);
circle(230, 50, 30);
circle(270, 50, 30);
circle(285, 60, 30);

ellipse(450, 50, 100, 50); //clouds
circle(450, 30, 30);
circle(430, 30, 30);
circle(410, 35, 20);
circle(400, 50, 20);
circle(410, 57, 30);
circle(420, 65, 30);
circle(440, 65, 30);
circle(460, 65, 30);
circle(480, 60, 30);
circle(430, 30, 30);
circle(470, 30, 30);
circle(485, 40, 30);


}
/*peer feedback:shifting of the colors for the sunset and sunrise- 
I ended up doing this even though it took long I really like it! */

/*make the clouds move- 
I decided not to make the clouds move*/

/*make clouds bigger-
I decided not to make the clouds bigger 
because I would have to go through each one 
of the shapes to change the size */

/*add more comments-
I added some more comments*/

/*add another if statement-
I ended up making one more if statement 
and creating a new idea for my project */

/*If I had more time I might have tried to move the 
clouds since I initially wanted to do that but it 
would take to much time and I was focusing on adding
an "if" statement */
}
