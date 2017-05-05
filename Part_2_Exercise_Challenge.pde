//Taylor Bui May 4

void setup(){
  size (500, 500);
  background (255);
  smooth();
}
void draw(){
  ellipseMode(CENTER);
  fill(255, 192, 203); // pink
  ellipse(250, 250, 200, 200); // body
  ellipse(213, 193, 40, 40); // left ear
  ellipse(287, 193, 40, 40);
  fill(255, 182, 193); // light pink
  ellipse(250, 250, 135, 135); // head
  fill(255, 192, 203); //pink
  triangle(190, 330, 220, 345, 195, 370); //left foot
  triangle(310, 330, 280, 345, 305, 370); // right foot
  ellipse(250, 270, 70, 40); // snout
  fill(255);
  ellipse(230, 225, 20, 30); // left eye
  ellipse(270, 225, 20, 30); // right eye
  fill(0);
  ellipse(235, 225, 10, 10); // left pupil 
  ellipse(265, 225, 10, 10); // right pupil
  ellipse(250-35/2+7, 270, 10, 20); // left nostril
  ellipse( 250+35 - 35/2 - 7, 270, 10, 20);// right nostril
}
  