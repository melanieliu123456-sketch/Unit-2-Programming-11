//Melanie Liu
//2-1
//Mar, 3, 2026

int a = 0;

int rectYdown1 = -300;
int rectYdown2 = 0;
int rectYdown3 = 300;

int rectYup1 = 600;
int rectYup2 = 300;
int rectYup3 = 0;

void setup() {
  size(600, 600);
  textSize(16);
}

void draw() {
  background(200);
  fill(0);
  rect(300, 0, 300, 600);
  
  quizdown(50, rectYdown1, 0);
  quizdown(50, rectYdown2, 1);
  quizdown(50, rectYdown3, 2);
  quizup(350, rectYup1, 0);
  quizup(350, rectYup2, 1);
  quizup(350, rectYup3, 2);
  
  rectYdown1 += 2;
  if (rectYdown1 > 600) {
    rectYdown1 = -300;
  }
  rectYdown2 += 2;
  if (rectYdown2 > 600) {
    rectYdown2 = -300;
  }
  rectYdown3 += 2;
  if (rectYdown3 > 600) {
    rectYdown3 = -300;
  } 
  rectYup1 -= 2;
  if (rectYup1 < -300) {
    rectYup1 = 600;
  }
  rectYup2 -= 2;
  if (rectYup2 < -300) {
    rectYup2 = 600;
  }
  rectYup3 -= 2;
  if (rectYup3 < -300) {
    rectYup3 = 600;
  }
}

void quizdown(int x, int y, int a) { //good future
  pushMatrix();
  fill(255);
  rect(x, y, 200, 290);
  fill(0);
  textSize(20);
  if (a == 0) {
    text("12/12", x+20, y+40);
  }
  if (a == 1) {
    text("20/20", x+20, y+40);
  }
  if (a == 2) {
    text("10/10", x+20, y+40);
  }
  text("100% :D", x+20, y+70);
  fill(180);
  noStroke();
  rect(x+20, y+90, 160, 8);
  rect(x+20, y+105, 100, 8);
  rect(x+20, y+130, 120, 8);
  rect(x+20, y+145, 160, 8);
  rect(x+20, y+160, 80, 8);
  rect(x+20, y+185, 150, 8);
  rect(x+20, y+200, 140, 8);
  rect(x+20, y+225, 160, 8);
  rect(x+20, y+240, 160, 8);
  rect(x+20, y+255, 40, 8);
  checkMark(x+100, y+100);
  checkMark(x+165, y+155);
  checkMark(x+145, y+200);
  checkMark(x+165, y+245);
  noStroke();
  popMatrix();
}

void quizup(int x, int y, int a) { //bad future
  pushMatrix();
  fill(255);
  rect(x, y, 200, 290);
  fill(0);
  noStroke();
  rect(x+20, y+90, 160, 8);
  rect(x+20, y+105, 100, 8);
  rect(x+20, y+130, 120, 8);
  rect(x+20, y+145, 160, 8);
  rect(x+20, y+160, 80, 8);
  rect(x+20, y+185, 150, 8);
  rect(x+20, y+200, 140, 8);
  rect(x+20, y+225, 160, 8);
  rect(x+20, y+240, 160, 8);
  rect(x+20, y+255, 40, 8);
  checkMark(x+100, y+100);
  crossMark(x+165, y+155);
  checkMark(x+155, y+210);
  crossMark(x+165, y+245);
  noStroke();
  textSize(20);
  if (a == 0) {
    text("7/12", x+20, y+40);
  }
  if (a == 1) {
    text("11/20", x+20, y+40);
  }
  if (a == 2) {
    text("5/10", x+20, y+40);
  }
  text("58% :(", x+20, y+70);
  popMatrix();
}

void checkMark(int x, int y){
  pushMatrix();
  stroke(#D63434);
  strokeWeight(5);
  line(x, y, x+10, y+15);
  line(x+10, y+15, x+30, y-20);
  popMatrix();
}

void crossMark(int x, int y){
  pushMatrix();
  stroke(#D63434);
  strokeWeight(5);
  line(x, y, x+30, y+30);
  line(x+30, y, x, y+30);
  popMatrix();
}
