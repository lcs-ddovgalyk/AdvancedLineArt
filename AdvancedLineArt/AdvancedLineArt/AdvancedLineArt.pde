//sets up the image and //<>// //<>//
import processing.pdf.*;
PImage bitmapImage;
PGraphics vectorImage;



// this runs once
void setup() {
  //  WIDTH  HEIGHT
  size(700, 700); // size of canvas matches bitmapImage image


  strokeWeight(1);
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

    



    //horizontal
    int x = position % width;
    //vertical
    int y = position / width;

    // Draw a sin wave every 10th pixel
    //   CONDITION1   AND  CONDITION2
    if ( (x > 0) && (x % 10 == 0) && (y > 0) && (y % 10 == 0) ) {
      
      // Get the brightness
      float b = 255 - brightness(bitmapImage.pixels[position]);  // 0 to 255
      float diameter = map(b, 0, 255, 1, 9);
     
      // d = to horizontal length of the wave
      float d = x;
      //degrees = k
      float k = 10.0 / 360.0;
      //c = to vertical length of the wave
      float c = y;
      //diameter 
      float a = diameter;
      // set's PriorX to 0 and Prior Y to C
      float priorX = 0;
      float priorY = c;

      for (int sinx = x; sinx <= x + 10; sinx += 1) {
        float siny = a * sin( degreesToRadians( (sinx - d) / k )  ) + c;
        //print's the output
        line(priorX, priorY, sinx, siny);
        //print's the output to Acrobat Reader
        vectorImage.line(priorX, priorY, sinx, siny);
        //set's priorX to sinx and priory to siny
        priorX = sinx;
        priorY = siny;
      }
      
   

      // draw the circle to the PDF
      //vectorImage.line(x, yy, diameter, diameter); // draw circle at (x, y) with given diameter
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
