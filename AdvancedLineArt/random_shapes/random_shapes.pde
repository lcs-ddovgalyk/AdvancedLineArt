void setup() {

  size(500, 500);
  background(255);

  float d = 5;
  //degrees = k
  float k = 10.0 / 360.0;
  float c = 200; //<>//
  float a = 10;

  float priorX = 0;
  float priorY = c;
  
  for (int x = 0; x <= 10; x += 1) {
    float y = a * sin( degreesToRadians( (x - d) / k )  ) + c;
    point(x, y); //<>//
  }
} //<>//
float degreesToRadians(float degrees) {

  return degrees * PI / 180;
}
