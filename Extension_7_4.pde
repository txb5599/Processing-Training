//Taylor Bui; April 9, 2017
int radius = 40;
float x = -radius;
float speed = 2;

void setup() {
  size(240, 120);
  smooth();
  ellipseMode(RADIUS);
}

void draw() {
  background (0);
  x += speed; // increasing the value of x
  if (x > width+radius) {
    x = -radius;
  }
  arc(x, 60, radius, radius, .52, 5.76);
}