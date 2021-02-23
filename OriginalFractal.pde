public void setup () {
  size(1200, 700);
  background(0);
  noFill();
  strokeWeight(3);
}

void draw() {
}

void mousePressed() {
  int x = mouseX;
  int y = mouseY;
  stroke(#0000FF, 100f);
  strokeWeight(3);
  int m = millis();
  ripple(x, y, 20, m);
}

public void ripple(int x, int y, int size, int m) {
  ellipse(x, y, size, size);
  float alpha = 1000f/size+25;
  if(size < 800) {
    stroke(#0000FF, alpha);
    while(millis()-m<500) {
    }
    ripple(x, y, size+80, m);
  }
}
