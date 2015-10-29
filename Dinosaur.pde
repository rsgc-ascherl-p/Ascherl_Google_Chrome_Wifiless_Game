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
    
  //status updates (CHANGE COLOUR TO WHITE TO VIEW IN GAME)
  fill(255);
  textSize(30);
  text("dy is " + dy, 250, 25);
  text("ds is " + ds, 250, 50);
  text("da is " + da, 250, 75);
  text("distance is " + d1, 250, 100);

    //stop the dino if it hits the ground
    if (dy > 170) { // bottom of the screen (200) minus the radius of (30)
      dy = 170;
      ds = 0;
      da = 0;
    }
  }
}