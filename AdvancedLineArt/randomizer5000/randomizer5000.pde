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
  size(500, 500);
  //give the veriables Y,G,W a random number up to 50;
  y = random(50);
  g = random(50);
  w = random(50);
}
//runs forever
void draw() {
  //if the veriable l will equal to less than 5, it will start to run this code
  //when l is less than 5 it will give out a rectangle output
  //if(l < 5){
  //removes stroke from the shapes
  noStroke();
  //creates a loop that adds 1 to i every time it runs
  // i = the position X where the rectangle will be
  for (int i=0; i<500; i = i + 1) {
    //creates a new loop that adds 1 to j every time it runs
    // j = the position Y where the rectangle will be
    for (int j=0; j<500; j = j + 1) {
      //when y is less than 10 it will make x (color) equal to j
      if (y<10) {
        x = j;
      } else if (y<20) {
        //when y is less than 20 it will make x (color) equal to i + i
        x = i + i;
      } else if (y<30) {
        //when y is less than 30 it will make x (color) equal to i + j
        x = i + j;
      } else if (y<40) {
        //when y is less than 40 it will make x (color) equal to j + j
        x = j + j;
        //when y is less than 50 it will make x (color) equal to i
      } else {
        x = i;
      }
      //randomfly fills the colors
      if (randomFill<10) {
        fill(random(x), random(i), random(j));
      } else if (randomFill<20) {
        fill(random(i), random(x), random(j));
      } else if (randomFill<30) {
        fill(random(i), random(j), random(x));
      } else {
        fill(random(255), random(255), random(255));
      }
      //creates recrangle 
      rect(i,j,1,1);
    }
  }
  //}
}
