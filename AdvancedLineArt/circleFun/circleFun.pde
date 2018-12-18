//set's up the canvas

void setup(){
  size(500,500);
  background(255);
 
}

void draw(){
  
}
//When mouse is moved creates ellipses behind it
void mouseMoved(){
  noFill();
  //creates ellipses where the mouse is 
  ellipse(mouseX,mouseY,10,10);
}
