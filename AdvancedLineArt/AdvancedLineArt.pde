int x;
int y;
int f;
int a;


void setup(){
  size(600,600);
}

void draw(){
  
}
void mouseClicked(){
  float x = random(600);
  float y = random(600);
  float f = random(100);
  float a = random(100);
  line(mouseX - a,mouseY - f,x,y);
  
}
