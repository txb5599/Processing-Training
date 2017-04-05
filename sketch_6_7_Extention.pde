// Taylor Bui; April 4, 2017

PFont font1;
PFont font2;
void setup(){
  size(490,120);
  smooth();
  font1 = loadFont("PingFangHK-Ultralight-48.vlw");
  font2 = loadFont("SnellRoundhand-48.vlw");

}
void draw(){
  background(102);
  textSize(36);
  fill(0,255,255);
  textFont(font1);
  text("Taylor Bui", 25, 60);
  textSize(11);
  fill(255,0,255);
  textFont(font2);
  text("Taylor Bui", 40, 75);
}

  