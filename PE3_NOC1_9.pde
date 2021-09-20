Mover mover;
 
void setup() {
  size(640,360);
  mover = new Mover();
}
 
void draw() {
  background(255);
 
  mover.update();
  mover.checkEdges();
  mover.display();
}
 
class Mover {
 
  PVector location;
  PVector velocity;
  PVector acceleration;
  float topspeed;
 
  Mover() {
    location = new PVector(width/2,height/2);
    velocity = new PVector(0,0);
    acceleration = new PVector(-0.001,0.01);
    topspeed = 10;
  }
 
  void update() {
 
    acceleration = PVector.random2D();
    acceleration.mult(random(2));
    velocity.add(acceleration);
    velocity.limit(topspeed);
    location.add(velocity);
  }

 
  void display() {}
  void checkEdges() {}
}
