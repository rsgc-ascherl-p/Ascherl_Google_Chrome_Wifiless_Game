//global variables (can be used everywhere below)
float dy;  //tracks position of dino
float ds;  //tracks the speed of the dino
float da;  //tracks the acceleration of the dino
float g;   //tracks gravity
float d1;  //tracks distance between dion and cactus 1
float d2;  //tracks distance between dino and cactus 2

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
  g = .025;
}
void draw() {
  //background clear each time as program loops
  background(0);

  //draw a cactus at the bottom right corner of the screen
  fill(0, 0, 255);
  ellipse(x1, 175, 50, 50);

  fill(211, 17, 20);
  ellipse(x2, 175, 50, 50);

  //put the obstacle back on the right edge if it goes past the left edge

  if (x1 < -50) {
    x1 = 900; //place off screen on right 
    s1 = -10; //reset the speed
  }
  if (x2 < -150) {
    x2 = 1100;
    s2 = -10; //reset the speed
  }
  //dino stuff

  //status updates (CHANGE COLOUR TO WHITE TO VIEW IN GAME)
  fill(255);
  textSize(30);
  text("dy is " + dy, 250, 25);
  text("ds is " + ds, 250, 50);
  text("da is " + da, 250, 75);
  text("distance is " + d1, 250, 100);

  //dertimine whether there is a hit with cactus 1
  //        dino - cactus
  float a1 = dy - 175;
  float b1 = 50 - x1;
  d1 = sqrt(pow(a1, 2) + pow(b1, 2));

  //If there is a hit between dino and cactus 1 stop everything
  if (d1 < 55) {
    fill(255);
    text("HIT", 100, 100);
    noLoop();
  }
  //determinte whether there is a hit with cactus 2
  float a2 = dy - 175;
  float b2 = dy - 175;
  d1 = sqrt(pow(a2, 2) + pow(b2, 2));
  
  if (d2 < 55) {
    fill(255);
    text("HIT", 100, 100);
    noLoop();
  }

  //move dino
  da = da + g;   //change acceleration based on gravity
  ds = ds + da;  //change speed based on speed
  dy = dy + ds;  //change speed based on acceleration

  //stop the dino if it hits the ground
  if (dy > 170) { // bottom of the screen (200) minus the radius of (30)
    dy = 170;
    ds = 0;
    da = 0;
  }

  //draw dino
  fill(255, 30, 30);
  ellipse(50, dy, 60, 60);
}

//respond to keypress
void keyPressed() {
  if (dy >= 170) {
    da = -0.5;
  }

}