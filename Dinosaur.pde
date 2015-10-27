class Dinosaur {
  //Global Variables for dino 
  float dy;  //tracks position of dino
  float ds;  //tracks the speed of the dino
  float da;  //tracks the acceleration of the dino

  //constructor (like setup; runs once)
  Dinosaur(float dy_, float ds_, float da_) {
    dy = dy_;
    ds = ds_;
    da = da_;
  }

  //update: draws things relating to the dino
  void update(float g) {

    //draw dino
    fill(255, 30, 30);
    ellipse(50, dy, 60, 60);


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
  }
}