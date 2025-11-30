Ball[] ball = new Ball[4];

void setup(){
 size(800,900); 

 
 //constructors
 
// ball = new Ball(100,100);
  for (int i = 0; i < ball.length; i++) {
    ball[0] = new Ball(random(width), random(height));
    ball[1] = new Ball(random(width), random(height));
    ball[2] = new Ball(random(width), random(height));
    ball[3] = new Ball(random(width), random(height));
  }

}

void draw(){
    background(55,150,70);
    for (int i = 0; i < ball.length; i++) {  
   ball[i].display();
   ball[i].update();
    }
    
  //borders to seperate the different golf fields
 stroke(0);
 strokeWeight(20);
 noFill();
 rect(0,800,width,100);
   rectMode(CENTER);
 rect(width/2,height/2,width,height);
   line(width/2,0,width/2,width);
   line(0,width/2,height,width/2);
   
 // bottom bar
 rectMode(CORNER);
 fill(160,230,170);
 rect(0,width,width,100);
 rect(0,width,width,100);
 line(width/4,width,width/4,900);
    
   }



 void mouseReleased() {
       for (int i = 0; i < ball.length; i++) {  
ball[i].roll(mouseX,mouseY);

 }
 }
 
 
