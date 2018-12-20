//creates different veriables that the code will need to run
float x;
float y; 
float g;
float w;
float l;
float p;
float z;
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
  if (l<5) {
    //removes stroke from the shapes
    noStroke();
    //creates a loop that adds 1 to i every time it runs
    // i = the position X where the rectangle will be
    for (int i=0; i<500; i+=1) {
      //creates a new loop that adds 1 to j every time it runs
      // j = the position Y where the rectangle will be
      for (int j=0; j<500; j+=1) {
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
        } else {
          //when y is less than 50 it will make x (color) equal to i
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
        rect(i, j, 1, 1);
      }
    }

    //when l is bigger than 5 it will create the same output but with triangles
  } else {
    //creates a new loop that adds 1 to u every time it runs
    // u = the position where the rectangle will be
    for (int u=0; u<500; u+=10) {
      //creates a new loop that adds 1 to h every time it runs
      // h = the position where the rectangle will be
      for (int h=0; h<500; h+=5) {
        // as before, when g is equal to a certain number, the code will give out a different 
        // output for z
        if (g<10) {
          z = h;
        } else if (g<20) {
          z = u + u;
        } else if (g<30) {
          z = u + h;
        } else if (g<40) {
          z = h + h;
        } else {
          z = u;
        }
        //creates random colors to fill the triangle 
        if (randomFill<10) {
          fill(random(z), random(u), random(h));
        } else if (randomFill<20) {
          fill(random(u), random(z), random(h));
        } else if (randomFill<30) {
          fill(random(u), random(h), random(z));
        } else {
          fill(random(255), random(255), random(255));
        }
        //creats a triangle
        //     1st point 2nd point 3rd point
        triangle(5+u, 0+h, 0+u, 5+h, 10+u, 5+h);
      }
    }
    for (int q=0; q<500; q+=10) {
      for (int a=0; a<500; a+=5) {
        if (w<10) {
          p = q;
        } else if (w<20) {
          p = a + a;
        } else if (w<30) {
          p = a + q;
        } else if (w<40) {
          p = q + q;
        } else {
          p = a;
        }
        if (randomFill<10) {
          fill(random(p), random(q), random(a));
        } else if (randomFill<20) {
          fill(random(q), random(p), random(a));
        } else if (randomFill<30) {
          fill(random(q), random(a), random(p));
        } else {
          fill(random(255), random(255), random(255));
        }
        triangle(5+q, 0+a, 15+q, 0+a, 10+q, 5+a);
      }
    }
  }
}
