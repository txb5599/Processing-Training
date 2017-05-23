//Taylor Bui

int x = 250;
int y = 250;

void setup(){
  size (500, 500);
  smooth();

}
void draw(){
  background(255);
  float mx = constrain(mouseX, x-25, x-15);
  float mx2 = constrain(mouseX, x+15, x+25);
  float my = constrain(mouseY, y-30, y-20);
  ellipseMode(CENTER);
  fill(255, 192, 203); // pink
  ellipse(x, y, 200, 200); // body
  ellipse(x-37, y-57, 40, 40); // left ear
  ellipse(x+37, y-57, 40, 40); // right ear
  fill(255, 182, 193); // light pink
  ellipse(x, y, 135, 135); // head
  fill(255, 192, 203); //pink
  triangle(x-60, y+80, x-30, y+95, x-55, y+120); //left foot
  triangle(x+60, y+80, x+30, y+95, x+55, y+120); // right foot
  ellipse(x, y+20, 70, 40); // snout
  fill(255); // white
  ellipse(x-20, y-25, 20, 30); // left eye
  ellipse(x+20, y-25, 20, 30); // right eye
  fill(0); // black
  ellipse(mx, my, 10, 10); // left pupil 
  ellipse(mx2, my, 10, 10); // right pupil
  ellipse(x -35/2+7, y+20, 10, 20); // left nostril
  ellipse(x +35 - 35/2 - 7, y+20, 10, 20);// right nostril
  if (keyPressed && (key == CODED)) {  // If it’s a coded key
  if (keyCode == LEFT) {
    x--;
  }  else if (keyCode == RIGHT){
    x++;
    }  else if (keyCode == UP){
      y--;
    }  else if (keyCode == DOWN){
      y++;
    }  else if (keyCode == SHIFT){
      fill(255, 182, 193);
      ellipse(x-20, y-25, 20, 30); // left eye
      ellipse(x+20, y-25, 20, 30); // right eye
    }
  }
}