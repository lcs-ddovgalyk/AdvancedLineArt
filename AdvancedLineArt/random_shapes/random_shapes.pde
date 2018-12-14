void setup() {
  size(500, 500);
  background(255);
  noFill();
}
void draw() {
  // clear from last loop
  fill(255);
  rect(0, 0, 500, 500);
  
  // draw new sine wave
  drawline();
}

void drawline() {
  float a = 0.0;
  float inc = TWO_PI/25.0;
  float priorX = 0;
  float priorY = 50;
  for (int i = 0; i <= 200; i=i+4) {
    // Change amplitude based on mouseY
    float amplitude = map(mouseY, 0, 500, 0, 40);
    
    // Draw a line from one point to the next
    line(priorX, priorY, i, 50+sin(a)*amplitude);

    // Save current X and current Y position for next loop
    priorX = i;
    priorY = 50+sin(a)*40.0;
    
    //line(i, 50, i, 50+sin(a)*40.0);
    a = a + inc;
    
  }
}

void keyPressed() {
  if (key == 's') {
    saveFrame("output-####.png");
  }
}
