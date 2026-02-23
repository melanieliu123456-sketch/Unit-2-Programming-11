//Melanie Liu
//2-1
//Feb 20, 2026

void setup() {//start of setup ------------------------------
  size (600, 600);
  
}//end of setup ---------------------------------------------

void draw() {//start of draw --------------------------------
  monster(300, 250);
}//end of draw ----------------------------------------------

void monster(int x, int y) {//start of monster---------------
  translate(x, y);
  background(255);
  noStroke();
  fill(#9DC965);
  ellipse(0, 0, 200, 250);//body
  fill(#8C9D67);
  ellipse(-10, -20, 150, 200);//mouth
  fill(#9DC965);
  ellipse(-10, -30, 180, 160);//mouth
  fill(255);
  ellipse(10, -50, 130, 100);
  fill(#79B230);
  circle(0, -50, 50);
}//end of monster --------------------------------------------
