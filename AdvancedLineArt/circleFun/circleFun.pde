//set's up the canvas

void setup() {
  size(500, 500);
  colorMode(HSB);
  //set's the background to black
  background(0);
}

void draw() {
}
//When mouse is moved creates ellipses behind it
void mouseMoved() {
  //fills the color. Depends where the mouse is the color will change
  fill(mouseX%256,255,255,100);

  //creates ellipses where the mouse is 
  ellipse(mouseX, mouseY, 10, 10);
  //Mirrors the same ellipses 
  ellipse(mouseY, mouseX, 10, 10);
}
