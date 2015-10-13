//global variables (can be used everywhere below)
float x1;  //tracks horizontal position of the first cactus
float x2;  //tracks horizontal position of the second cactus
float dy;  //tracks position of dino
float ds;  //tracks the speed of the dino
float da;  //tracks the acceleration of the dino
float g;   //tracks gravity
float a1;  //tracks acceleration for the first cactus
float a2;  //tracks acceleration for the second cactus
float s1;  //tracks the speed of thr first cactus
float s2;  //tracks the speed of the second cactus

//runs on once
void setup() {
  size(800, 200);

  //set the initial position of the cactus
  x1 = 900;  //position it off-screen on the right
  x2 = 1100; //position of cactus 2 off screen on the right

  //initial horizontal acceleration for cactus
  a1 = -.01;
  a2 = -.01;

  //initial horzontal speed for cactus 
  s1 = -10;
  s2 = -10;

  //set dino initial vertical position
  dy = 170;

  //set dion's initial speed
  ds = 0;

  //dino's initial acceleration
  da = 0;

  //set gravity
  g = 0.05;
}
void draw() {
  //background clear each time as program loops
  background(0);

  //draw a circle at the bottom right corner of the screen
  fill(211, 17, 20);
  ellipse(x1, 175, 50, 50);

  fill(211, 17, 20);
  ellipse(x2, 175, 50, 50);

  //change the horizontal speed (speed is changed by acceleration)
  s1 = s1 + a1;
  s2 = s2 + a2;

  //create the appearance of moving by changing the x position
  x1 = x1 + s1;
  x2 = x2 + s2;

  //put the obstacle back on the right edge if it goes past the left edge

  if (x1 < -50) {
    x1 = 900; //place off screen on right 
    s1 = -1; //reset the speed
  }
  if (x2 < -150) {
    x2 = 1100;
  }
  //dino stuff

  //status updates
  fill(255);
  text("dy is " + dy, 150, 25);
  text("ds is " + ds, 150, 50);
  text("da is " + da, 150, 75);

  //move dino
  da = da + g;
  ds = ds + da;  //change speed base on speed
  dy = dy + ds;  //change speed based on acceleration

  //sop the dino if it hits the ground
  if (dy > 170) { // bottom of the screen (200) minus the radius of (30)
    dy = 170;
    ds = 0;
    da = 0;
  }

  //draw dino
  ellipse(50, dy, 60, 60);
}

//respond to keypress
void keyPressed() {
  dy = 70;
  da = -1;
}