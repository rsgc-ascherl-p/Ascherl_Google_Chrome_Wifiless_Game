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
  background(170);

  //draw a circle at the bottom right corner of the screen
  ellipse(x, 175, 50, 50);
  
  //create teh appearance of moving by changing the x position
  x = x - 5;
}