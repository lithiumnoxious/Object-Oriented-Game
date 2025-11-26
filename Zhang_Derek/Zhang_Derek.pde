

void setup(){
 size(800,1000); 
 background(55,150,70);
 
 //borders to seperate the different golf fields
 stroke(0);
 strokeWeight(20);
 noFill();
  rectMode(CORNER);
 rect(0,800,width,200);
   rectMode(CENTER);
 rect(width/2,height/2,width,height);
   line(width/2,0,width/2,width);
   line(0,width/2,height,width/2);

}

void draw(){
  
}
