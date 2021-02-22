public void setup () {
  size(1200, 700);
  background(250);
  noFill();
  strokeWeight(3);
}

void draw() {
}

void mousePressed() {
  int x = mouseX;
  int y = mouseY;
  stroke(0,0,255, 100f);
  strokeWeight(3);
  int m = millis();
  ripple(x, y, 20, m);
}

public void ripple(int x, int y, int size, int m) {
  circle(x, y, size);
  float alpha = 1000f/size+25;
  if(size < 800) {
    while(millis()-m < 300) {
    }
    stroke(0,0,255, alpha);
    ripple(x, y, size+80, m);
  }
}
