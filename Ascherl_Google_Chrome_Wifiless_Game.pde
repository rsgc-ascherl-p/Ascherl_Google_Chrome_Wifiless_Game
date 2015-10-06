//global variables (can be used everywhere below)
int x;  //tracks horizontal position of the first cactus

//runs on once
void setup() {
  size(800, 200);
  
  //set the initial position of teh cactus
  x = 900;  //position it off-screen on the right
  
}
void draw() {
  //background clear each time as program loops
  background(0);

  //draw a circle at the bottom right corner of the screen
  fill(211, 17, 20);
  ellipse(x, 175, 50, 50);
  
  //create the appearance of moving by changing the x position
  x = x - 7;
  
  //put the obstacle back on the right edge if it goes past the left edge
  
  if (x < -50) {
   x = 900; //place off screen on right 
  }
}