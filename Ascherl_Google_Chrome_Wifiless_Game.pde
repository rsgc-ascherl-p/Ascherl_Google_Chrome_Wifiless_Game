//global variables (can be used everywhere below)
int x1;  //tracks horizontal position of the first cactus
int x2;  //tracks horizontal position of the second cactus

//runs on once
void setup() {
  size(800, 200);
  
  //set the initial position of teh cactus
  x1 = 900;  //position it off-screen on the right
  x2 = 1100; //position of cactus 2 off screen on the right
  
}
void draw() {
  //background clear each time as program loops
  background(0);

  //draw a circle at the bottom right corner of the screen
  fill(211, 17, 20);
  ellipse(x1, 175, 50, 50);
  
  fill(211, 17, 20);
  ellipse(x2, 175, 50, 50);
  
  //create the appearance of moving by changing the x position
  x1 = x1 - 10;
  x2 = x2 - 10;
  
  //put the obstacle back on the right edge if it goes past the left edge
  
  if (x1 < -50) {
   x1 = 900; //place off screen on right 
  }
  if (x2 < -150) {
    x2 = 1100;
  }
}