//Melanie Liu
//2-1
//Feb 18, 2026

int x;
int y;
int a;

void setup() {
  size(300, 300);
  y = 150;
  a = 1;
}

void draw() {
  background(255);
  fill(0);
  circle(x, y, 100);
  fill(x, y, x+y);
  circle(x, y, 80);
  y = y + a;
  if (y > 180) {
    a = -1;
  }
  if (y < 120) {
    a = 1;
  }
  x = x + 1; 
  if (x >350) {
    x = -50;
  }
}
