Ball ball;

void setup(){
 size(800,900); 
 background(55,150,70);
 //constructors
 ball = new Ball(100,100);
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

void draw(){
    ball.display();
}
