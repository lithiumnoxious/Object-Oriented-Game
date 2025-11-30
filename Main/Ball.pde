class Ball{
  PVector position;
  PVector velocity;
  PVector swing;
  float traction = 0.9;
  float speed = 50;

  Ball(float x, float y){
   position = new PVector (x,y);
   velocity = new PVector (0,0);
   swing = position.copy();
  }
  
  void display(){
    noStroke();
    fill(230,230,235);
    ellipse(position.x,position.y, 50,50);
  }
  void update(){
      
      // Move the ball
  position.add(velocity);

  // Apply friction (slows down)
  velocity.mult(traction);

  // Stop completely when speed is almost zero
  if (velocity.mag() < 0.1) {
    velocity.set(0, 0);  // fully stop
  }
  }
 
   void roll(float tx, float ty) {
    // Direction to target
    PVector target = new PVector(tx, ty);
    PVector direction = PVector.sub(target, position);
    direction.normalize();
    //added for smoother movement and so speed can be multiplied easier

    // Give initial speed
    velocity = direction.mult(speed);
  }
  }
  
