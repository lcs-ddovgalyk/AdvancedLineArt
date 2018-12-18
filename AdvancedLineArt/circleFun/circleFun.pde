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
  //removes the stroke from the circles
  noStroke();
  //fills the color. Depends where the mouse is the color will change
  fill(mouseX%256,255,255,100);
  //creates ellipses that follow the mouse
  ellipse(mouseX,mouseY,10,10); 
  //creates ellipses that mirror the mouse at different locations
  ellipse(500-mouseY,mouseX,10,10); 
  ellipse(mouseY,500-mouseX,10,10); 
  ellipse(500-mouseX,500-mouseY,10,10); 
  
}
