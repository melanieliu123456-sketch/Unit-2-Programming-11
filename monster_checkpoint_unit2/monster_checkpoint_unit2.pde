//Melanie Liu
//2-1
//Feb 20, 2026
 
void setup() {//start of setup ------------------------------
  size (600, 600, P2D);
  textSize(16);
  
}//end of setup ---------------------------------------------

void draw() {//start of draw --------------------------------
  background(255);
  monster(300, 250, 1); 
  monster(100, 100, 0.5);
  int mx = mouseX - 300;
  int my = mouseY - 250;
  fill(0);
  text("(" + mx + ", " + my + ")", 10, 25);
}//end of draw ----------------------------------------------

void monster(int x, int y, float s) {//start of monster---------------
  pushMatrix();
  translate(x, y);
  scale(s);
  noStroke();
  
  //horn
  fill(230);
  triangle(-85, -125, 50, 100, 40, -50);
  triangle(85, -125, -50, 100, -40, -50);
  
  //body
  fill(#9DC965);
  ellipse(0, 15, 220, 200);
  ellipse(0, 0, 180, 230);
  strokeWeight(15);
  stroke(#9DC965);
  line(-103, 32, -118, 198);
  line(103, 32, 118, 198);//arm
  strokeWeight(20);
  line(-46, 97, -56, 162);
  line(-56, 162, -50, 221);
  line(45, 101, 55, 222);//leg
  strokeWeight(30);
  line(-118, 198, -110, 203);
  line(118, 198, 110, 203);
  line(-87, 225, -38, 220);
  line(45, 221, 104, 230);//feet
  noStroke();
  
  //mouth
  fill(#8C9D67);
  arc(0, -20, 150, 200, 0, PI);
  fill(#9DC965);
  ellipse(0, -30, 160, 150);
  
  //eye
  fill(255);
  ellipse(0, -50, 130, 100);
  fill(#43A580);
  circle(-20, -50, 50);
  fill(#1D5540);
  circle(-20, -50, 30);
  fill(255);
  circle(-10, -60, 5);
  
  popMatrix();
}//end of monster --------------------------------------------
