class Dinosaur {
  //Global Variables for dino 
  float dx;  //tracks horizontal position of the dino
  float dy;  //tracks vertical position of dino
  float ds;  //tracks the speed of the dino
  float da;  //tracks the acceleration of the dino
  float dr;  //tracks radius of the dino

  //constructor (like setup; runs once)
  Dinosaur(float dy_, float ds_, float da_) {
    dx = 50;
    dy = dy_;
    ds = ds_;
    da = da_;
    dr = 30;
  }

  //update: draws things relating to the dino
  void update(float g) {

    //draw dino
    fill(255, 30, 30);
    ellipse(dx, dy, dr*2, dr*2);


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

    //status updates (CHANGE COLOUR TO WHITE TO VIEW IN GAME)
    fill(255);
    textSize(30);
    text("dy is " + dy, 250, 25);
    text("ds is " + ds, 250, 50);
    text("da is " + da, 250, 75);
    //text("distance is " + d1, 250, 100); (will make this work later)
  }

  //getY

  //Purpose: an accessor method; lets us find where dino is (vertically)
  float getY() {
    return dy;
  }

  //setA

  //Purpose: a mutator method; lets the acceleration for the dino be set from outside the class
  void setA(float newA_) {
    da = newA_;
  }

  //isTouching
  //Purpose: uses information about cactus position dn determines if it is touching cactus
  boolean isTouching(Cactus c) {

    // determine distance between the objects
    //    dino - cactus
    float a = dy - c.getY();
    float b = dx - c.getX();
    float distance = sqrt(a*a + b*b);

    // decide whether dino is touching this cactus
    //          dino radius     cactus radius
    if (distance < (dr + c.getR()*.75 ) ) {
      return true; // exit the method and say "yes" (is touching!) or "true"
    }

    // when dino is not touching, say "no" (not touching) or "false"
    return false;
  }
}