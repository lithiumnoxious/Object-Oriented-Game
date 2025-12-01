class Ball {
  PVector position;
  PVector velocity;
  PVector swing;
  float traction = 0.9;
  //float speed = 50;
  

  Ball(float x, float y) {
    position = new PVector (x, y);
    velocity = new PVector (0, 0);
    swing = position.copy();
  }

  void display() {
    strokeWeight(3);
    stroke(200);
    fill(position.x/4, position.y/4, position.x+position.y/8);
    ellipse(position.x, position.y, 20, 20);
  }
  void update() {

    // Move the ball
    position.add(velocity);

    // Apply friction (slows down)
    velocity.mult(traction);

    // Stop completely when speed is almost zero
    if (velocity.mag() < 0.1) {
      velocity.set(0, 0);  // fully stop
    }
    //left wall
    if (position.x < 0){
    velocity.mult(-0.9);
  }
  //right wall
    if (position.x > 800){
    velocity.mult(-0.9);
  }
  //bottom wall
    if (position.y > 800){
    velocity.mult(-0.9);
  }
  //top wall
    if (position.y < 0){
    velocity.mult(-0.9);
  }
  
  //  if (position.y >= height/2){
  //  velocity.mult(-0.9);
  //}
  }

  void roll(float tx, float ty) {
    // Direction to target
    PVector target = new PVector(tx, ty);
    PVector direction = PVector.sub(target, position);
    direction.normalize();
    //added for smoother movement and so speed can be multiplied easier

    // Give initial speed
    velocity = direction.mult(s.speed);
  }
}
