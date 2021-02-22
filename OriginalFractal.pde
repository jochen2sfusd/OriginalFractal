public void setup () {
  size(1200, 700);
  background(250);
  noFill();
  strokeWeight(3);
}

void mousePressed() {
  int x = mouseX;
  int y = mouseY;
  stroke(0,0,255);
  strokeWeight(3);
  ripple(x, y, 20, m);
}

public void ripple(int x, int y, int size, int m) {
  circle(x, y, size);
  if(size < 900) {
    ripple(x, y, size+80, m);
  }
}
