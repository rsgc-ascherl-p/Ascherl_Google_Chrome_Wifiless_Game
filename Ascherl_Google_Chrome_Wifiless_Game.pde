//global variables (can be used everywhere below)
float dy;  //tracks position of dino
float ds;  //tracks the speed of the dino
float da;  //tracks the acceleration of the dino
float g;   //tracks gravity
float d1;  //tracks distance between dion and cactus 1
float d2;  //tracks distance between dino and cactus 2

Cactus c1;
Dinosaur dino1;

//runs on once
void setup() {

  size(800, 200);

  //m creates and initializes the dino objectd
  dino1 = new Dinosaur(0, 170, 0);

  c1 = new Cactus(900, -0.01, -10);


  ////set the initial position of the cactus
  //x2 = 1100; //position of cactus 2 off screen on the right

  ////initial horizontal acceleration for cactus
  //a2 = -.01;

  ////initial horzontal speed for cactus 
  //s2 = -10;

  //set gravity
  g = .075;
}

void draw() {
  //background clear each time as program loops
  background(0);

  //update dino on screen
  dino1.update(g);

  // update the cactus
  c1.update(g);


  //fill(211, 17, 20);
  //ellipse(x2, 175, 50, 50);

  //put the obstacle back on the right edge if it goes past the left edge

  //if (x2 < -150) {
  //  x2 = 1100;
  //  s2 = -10; //reset the speed
  //}

  //dino stuff

  ////dertimine whether there is a hit with cactus 1
  ////        dino - cactus
  //float a1 = dy - 175;
  //float b1 = 50 - x1;
  //d1 = sqrt(pow(a1, 2) + pow(b1, 2));

  ////If there is a hit between dino and cactus 1 stop everything
  //if (d1 < 55) {
  // fill(255);
  // text("HIT", 100, 100);
  // noLoop();
  //}
  ////determinte whether there is a hit with cactus 2
  //float a2 = dy - 175;
  //float b2 = dy - 175;
  //d1 = sqrt(pow(a2, 2) + pow(b2, 2));

  //if (d2 < 55) {
  // fill(255);
  // text("HIT", 100, 100);
  // noLoop();
  //}
}

//respond to keypress
void keyPressed() {
  if (dino1.getY() == 170) {
    dino1.setA(-1);
  }
}