//creates different veriables that the code will need to run
float x;
float y; 
float g;
float w;
float l;
//set's the color mode randomly to RGB or HSB;
float randomColor;
// set's the fill to a random color
float randomFill;

void setup() {
  //set's the randomFill a random number up to 40
  randomFill = random(40);
  //set's the radomColor a random numer up to 40 to decide when it is RGB or HSB
  randomColor = random(10);
  if (randomColor<5) { //if the randomColor = to less than 5, it will give you RGB color mode
    colorMode(RGB);
  } else { // if randomColor is bigger than 5, it will give you HSB color mode
    colorMode(HSB);
  }
  //give the veriable L a random number up to 10;
  l = random(10);
  //set's up how big the canvas will be
  size(500,500);
  //give the veriables Y,G,W a random number up to 50;
  y = random(50);
  g = random(50);
  w = random(50);
}
