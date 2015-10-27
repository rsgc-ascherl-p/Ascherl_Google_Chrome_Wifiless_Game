class Cactus {
//global variables for cactus
float x1;  //tracks horizontal position of the first cactus
float a1;  //tracks acceleration for the first cactus
float s1;  //tracks the speed of thr first cactus

//constructor (like setup runs once)
Cactus(float x_, float a_, float s_) {
  x1 = x_;
  a1 = a_;
  s1 = s_;
}

//update: draws things related to cactus
void update(float g) {

  //change the horizontal speed (speed is changed by acceleration)
  s1 = s1 + a1;

  //create the appearance of moving by changing the x position
  x1 = x1 + s1;
}
}