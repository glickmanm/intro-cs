/*
Maya Glickman
6/23/2022
This is a demo of using color commmands in Processing
*/

void setup() {
 size (600, 600);

  background(#033b35); //pink background 
  
  fill(#38c98f);
  stroke(255);
  strokeWeight(8);
  
  circle(300, 440, 200);
   
   rect(260, 160, 80, 200, 250); 
   
   rect(200, 100, 200, 90, 100); 
   
   triangle(230, 95, 245, 50, 260, 95);
   //ears 
   triangle(340, 95, 355, 50, 370, 95);
   
   fill(#070d0c);
  stroke(255);
  strokeWeight(8);
  
   circle(350, 145, 50);
   //eyes
   circle(250, 145, 50);
   
   fill(#38c98f);
  stroke(255);
  strokeWeight(8);
   
   ellipse(250, 500, 20, 50);
   //left leg
   ellipse(350, 500, 20, 50);
   //right leg
   ellipse(210, 250, 90, 30);
   //arm arm
   ellipse(385, 250, 90, 30);
   //left arm
   ellipse(475, 440, 150, 30);
   //tail
   
   fill(#070d0c);
  stroke(255);
  strokeWeight(8);
  
   rect(250, 200, 100, 15, 8); //part of the collar
   
   fill(#38c98f);
  stroke(255);
  strokeWeight(8);
   
   circle(300, 210, 40); //part of the collar 
   
  fill(#709e96);
  stroke(255);
  strokeWeight(5); 
   //color for the pupils and subtracting the strokeWeight
   
   ellipse(250, 145, 18, 40);
   //pupils for the eyes 
   ellipse(350, 145, 18, 40);
   
   textSize(20);
   text("Maya Glickman", 70, 400);
   
   
   
   }
