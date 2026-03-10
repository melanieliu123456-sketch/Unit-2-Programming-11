//Melanie Liu
//2-1
//Mar, 3, 2026


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
  
  quiz(50, rectYdown1);
  quiz(50, rectYdown2);
  quiz(50, rectYdown3);
  quiz(350, rectYup1);
  quiz(350, rectYup2);
  quiz(350, rectYup3);
  
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

void quiz(int x, int y) {
  pushMatrix();
  fill(255);
  rect(x, y, 200, 290);
  popMatrix();
}
