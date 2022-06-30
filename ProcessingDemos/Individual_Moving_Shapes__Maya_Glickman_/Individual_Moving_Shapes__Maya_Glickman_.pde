float pupilOffset = 0;
float pupilSpeed = 1;

float faceOffset = 0;
float faceSpeed = 0.1;

float scaleFactor = 1;
float scaleSpeed = -0.1;

void setup () {
size(500, 500);
}

void draw () {
background (0);

push();

//translate( 0, faceOffset);

fill(220, 200, 0);
circle(width/2, height/2, 200);
fill(82, 56, 16);
arc(width/2, height/2 + 20, 140, 100, radians(0), radians(180));
fill(255);
circle(width/2 - 40, height/2 - 20, 40);
circle(width/2 + 40, height/2 - 20, 40);

push();

scale (scaleFactor);

scaleFactor = scaleFactor + scaleSpeed;

translate(width/2, height/2);

scale(.5);

translate(-width/2, -width/2);

//translate(pupilOffset, 0);

fill(0);
circle(width/2 - 45, height/2 - 20, 15);
circle(width/2 + 35, height/2 - 20, 15);

pop();

pop();

pupilOffset = pupilOffset + pupilSpeed;
if (pupilOffset > 15) {
pupilSpeed = -abs(pupilSpeed);
}
if (pupilOffset < -5) {
pupilSpeed = abs(pupilSpeed);
}

faceOffset = faceOffset + faceSpeed;

pupilOffset = pupilOffset + pupilSpeed;
if (pupilOffset > 100) {
pupilSpeed = -abs(pupilSpeed);
}
if (pupilOffset < -100) {
pupilSpeed = abs(pupilSpeed);
}
}
