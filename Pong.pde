//ball variables
float xBall, yBall; //starting
float xBallSpeed = 8;
float yBallSpeed = 8;
int radius = 20;
int xBallDirection = 1;
int yBallDirection = 1;

//paddle variables
float xPaddle;
int yPaddle = 600;
int paddleHeight = 15;
int paddleWidth = 90;
float paddleColor;
//points
int score = 0;
PFont scoreFont;

//timer
int start;

void setup(){
  size (800, 600);
  smooth();
  background (255);
  ellipseMode(RADIUS);
  xBall = width/2;
  yBall = height/2;
}

void draw (){
  background (255);
  rectMode(CENTER); //paddle
  float targetX = mouseX;
  xPaddle += (targetX - xPaddle);
  fill(paddleColor-40, paddleColor+20, 250);
  rect(xPaddle, yPaddle, paddleWidth, paddleHeight);
  yPaddle = constrain(yPaddle, 100, 550);
  
  //ball moving
  xBall = xBall + (xBallSpeed*xBallDirection);
  yBall = yBall + (yBallSpeed*yBallDirection);
  
  //ball hitting the walls
  if (yBall > height-radius || yBall < radius) {
    yBallDirection *= -1;
  }
  if (xBall > width-radius || xBall < radius){
    xBallDirection *= -1;
  }
  
  //ball bouncing off paddle
  if (yBall >= yPaddle-20 && xBall <= xPaddle+45 && xBall >= xPaddle-45){
    yBallDirection *= -1;
    score += 1;
    xBallSpeed += .75;
    yBallSpeed += .75;
    paddleColor = random(0,225); 
  }
  
  //game over
  if (yBall >= yPaddle+20){
    background(0);
    xBallSpeed *= 0;
    yBallSpeed *= 0;
    fill(255);
    text("Game Over :/", 325, 300);
    fill(0);
    text(score, 375, 100);
    
    
  }
  scoreFont = loadFont("HiraginoSans-W3-48.vlw");
    textFont(scoreFont);
    textSize(32);
    text("Score:", 100, 100);
    text(score, 225, 100);
    text(millis()/1000, 635, 100);
    text("Timer:", 515, 100);
  fill(0);
  ellipse(xBall, yBall, radius, radius);
}