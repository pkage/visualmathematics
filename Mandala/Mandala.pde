void setup() {
  size(600,600);
  draw();
}
void draw() {
  background(0);
  ellipse(width/2, height/2, width, height);
  stroke(100,100,100);
  float step = 10;
  for (float x = width/2; x <= width; x += step ) {
    randStroke();
    float y = (width/2) + sqrt(pow((width/2),2) - pow(x - (width/2), 2));
    line(width - ( x - (width/2) ), height/2, x, y);
    line(height/2, width - ( x - (width/2) ),  y, x);
    float y2 = (width/2) - sqrt(pow((width/2),2) - pow(x - (width/2), 2));
    line(width - ( x - (width/2) ), height/2, x, y2);
    line(height/2, width - ( x - (width/2) ),  y2, x);
  }
  for (float x = 0; x <= width/2; x += step) {
    randStroke();
    float y = (width/2) + sqrt(pow((width/2),2) - pow(x - (width/2), 2));
    line(width/2 - x, height/2, x, y);
    line(height/2, width/2 - x, y, x);
    float y2 = (width/2) - sqrt(pow((width/2),2) - pow(x - (width/2), 2));
    line(width/2 - x, height/2, x, y2);
    line(height/2, width/2 - x, y2, x);
  }
}

void randStroke() {
  //stroke( sin(millis() % PI) * 256, (100 + sin(millis() % PI) * 256) % 256, (200 + sin(millis() % PI) * 256) % 256 );
  float n = 256 * sin(millis() / 100);
  float n1 = 256 * cos(millis() / 100);
  float n2 = 256 * tan(millis() / 100);
  stroke(n - randomGaussian(100),n1 - randomGaussian(100),n2 - randomGaussian(100));
}
