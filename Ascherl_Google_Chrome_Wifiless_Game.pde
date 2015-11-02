//global variables (can be used everywhere below)
float dy;  //tracks position of dino
float ds;  //tracks the speed of the dino
float da;  //tracks the acceleration of the dino
float g;   //tracks gravity


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


  //check whther the cactus is touching the dino
  if (dino1.isTouching(c1)) {
    textSize(80);
    text("HIT", 100, 100);
    noLoop();  //stop the game
  }
}

  //respond to keypress
  void keyPressed() {
    if (dino1.getY() == 170) {
      dino1.setA(-1);
    }
  }