//Melanie Liu
//2-1
//Mar, 3, 2026


int rectYdown1 = -350;
int rectYdown2 = 20;

int rectYup1 = 600;
int rectYup2 = 230;

void setup() {
  size(600, 600);
  textSize(16);
}

void draw() {
  background(200);
  
  quiz(20, rectYdown1);
  quiz(20, rectYdown2);
  quiz(300, rectYup1);
  quiz(300, rectYup2);
  
  rectYdown1 += 2;
  if (rectYdown1 > 600) {
    rectYdown1 = -350;
  }
  rectYdown2 += 2;
  if (rectYdown2 > 600) {
    rectYdown2 = -350;
  }
  rectYup1 -= 2;
  if (rectYup1 < -350) {
    rectYup1 = 600;
  }
  rectYup2 -= 2;
  if (rectYup2 < -350) {
    rectYup2 = 600;
  }
}

void quiz(int x, int y) {
  pushMatrix();
  rect(x, y, 250, 350);
  
  fill(255);
  popMatrix();
}
