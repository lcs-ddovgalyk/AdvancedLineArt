//sets up the image and //<>// //<>//
import processing.pdf.*;
PImage bitmapImage;
PGraphics vectorImage;



// this runs once
void setup() {
  //  WIDTH  HEIGHT
  size(700, 700); // size of canvas matches bitmapImage image


  strokeWeight(2);
  background(255);

  // load the image
  bitmapImage = loadImage("van.JPG");

  // we want to manipulate the pixels of this image directly
  bitmapImage.loadPixels();

  // create the empty output PDF
  vectorImage = createGraphics(width, height, PDF, "output.pdf");

  // start drawing to the output PDF file
  vectorImage.beginDraw();
  //set's no filling for the vector image
  vectorImage.noFill();
  // Make a loop that lets us look at all pixels
  // From 0 to 423,999 (800 x 530)
  // set's up the 

  int position = 0;  // make a simple variable that starts at 0
  // loop so long as position is less than or equal to 423,999
  while (position < 490000) {

    // Get the brightness
    float b = 255 - brightness(bitmapImage.pixels[position]);  // 0 to 255
    float diameter = map(b, 0, 255, 2, 5);         // 1 to 8
    float d = 5;
    //degrees = k
    float k = 10.0 / 360.0;
    float c = diameter;
    //diameter 

    float a = 10;

    float priorX = 0;
    float priorY = c;

    for (int x = 0; x <= 10; x += 1) {
      float y = a * sin( degreesToRadians( (x - d) / k )  ) + c;

      priorX = x;
      priorY = y;
    }

    // Where to draw the ellipse?
    int x = position % width;
    int y = position / width;

    // Draw an ellipse for every 100th pixel
    //   CONDITION1   AND  CONDITION2
    if ( (x > 0) && (x % 7 == 0) && (y > 0) && (y % 7 == 0) ) {

      rect(x, y, diameter, diameter);

      // draw the circle to the PDF
      vectorImage.rect(x, y, diameter, diameter); // draw circle at (x, y) with given diameter
    }

    // Increment the position
    position += 1;
  }

  // Stop drawing to the PDF
  vectorImage.endDraw();
  vectorImage.dispose();
  vectorImage = null;
}

// this runs repeatedly until we tell it to stop
void draw() {
}

// func degreesToRadians(degrees : Double) -> Double
float degreesToRadians(float degrees) {

  return degrees * PI / 180;
}
