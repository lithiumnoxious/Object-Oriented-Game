Ball[] ball = new Ball[4];
Speed s = new Speed();
Wall[] wall = new Wall[2];
boolean mouseHold = false;
float count;
boolean Win1x = false;
boolean Win1y = false;

boolean Win2 = false;
boolean Win3 = false;
boolean Win4 = false;

void setup() {
  size(800, 900);

  //constructors
  for (int i = 0; i < wall.length; i++) {
    wall[0] = new Wall(width/2-10, 0, 20, 800);
    wall[1] = new Wall(0, 400-10, 800, 20);
  }
  
  
  // ball = new Ball(100,100);
  for (int i = 0; i < ball.length; i++) {
    ball[0] = new Ball(100, 100);
    ball[1] = new Ball(700, 100);
    ball[2] = new Ball(100, 700);
    ball[3] = new Ball(700, 700);
  }
  
  
}

void draw() {
  
  background(55, 150, 70);
  noStroke();
    fill(0);
    
    //Top left hole
    ellipse(360,360,30,30);
//used to read if the ball x and y postition are within the 340 -  380 area
//if they are then win1 = true
if ((ball[0].position.x >340)&&(ball[0].position.x < 380)) {
      Win1x = true;
    }  else{
      Win1x = false;
    }
    if ((ball[0].position.y > 340)&&(ball[0].position.y < 380)) {
     // 
      Win1y = true;
       }  else{
      Win1y = false;
    }
    //both parts of win1 needs to be true in order for the fall to fall in
if ((Win1x && Win1y)== true){
    text("You Win",20,20);
}
  
  for (int i = 0; i < ball.length; i++) {
    ball[i].display();
    ball[i].update();
  }

  //borders to seperate the different golf fields
  stroke(0);
  strokeWeight(10);
  noFill();
  rect(0, 800, width, 100);
  rectMode(CENTER);
  rect(width/2, height/2, width, height); //border
  line(width/2, 0, width/2, width); //horizontal middle line
  line(0, width/2, height, width/2); //vertical middle line
  
  //background bar
  rectMode(CORNER);
  noStroke();
  fill(100, 100, 100);
  rect(0, 800, 900, 100);

  //PowerBar
  fill(40+s.speed*6, s.speed*2, 0);
  rect(200, 800, 10+s.speed*11.7, 100);
    // bottom bar
  stroke(0);
  strokeWeight(10);
  noFill();
  rect(0, width, width, 100);
  line(width/4, width, width/4, 900);
  
  //while mouse is being held the speed value increase and decay when not held
  if (mouseHold == true && s.speed <= 50) {
    s.speed++;
  } else if (mouseHold==false && s.speed >= 0) {
    s.speed--;
  }
  
    for (int i = 0; i < wall.length; i++) {
    wall[i].display();
    
    //IT WAS THAT EASY???!!!
        // trapping the top left ball
      if (ball[0].position.x > width/2) {
      ball[0].position.x = width/2;       // push object back into valid area
      ball[0].velocity.x *= -0.9;   // bounce only the x component
    }    //there probally is a easier solution but this works
    if (ball[0].position.y > (height-100)/2) {
      ball[0].position.y = (height-100)/2; 
      ball[0].velocity.y *= -0.9;   
    }
    // trapping the top right ball
      if (ball[1].position.x < width/2) {
      ball[1].position.x = width/2;       // push object back into valid area
      ball[1].velocity.x *= -0.9;   // bounce only the x component
    }    //there probally is a easier solution but this works
    if (ball[1].position.y > (height-100)/2) {
      ball[1].position.y = (height-100)/2; 
      ball[1].velocity.y *= -0.9;   
    } 
        // trapping the bottom left ball
      if (ball[2].position.x > width/2) {
      ball[2].position.x = width/2;       // push object back into valid area
      ball[2].velocity.x *= -0.9;   // bounce only the x component
    }    //there probally is a easier solution but this works
    if (ball[2].position.y < (height-100)/2) {
      ball[2].position.y = (height-100)/2; 
      ball[2].velocity.y *= -0.9;   
    } 
        // trapping the bottom left ball
      if (ball[3].position.x < width/2) {
      ball[3].position.x = width/2;       // push object back into valid area
      ball[3].velocity.x *= -0.9;   // bounce only the x component
    }    //there probally is a easier solution but this works
    if (ball[3].position.y < (height-100)/2) {
      ball[3].position.y = (height-100)/2; 
      ball[3].velocity.y *= -0.9;   
    } 
    
    
  }


}
void mousePressed() {
  mouseHold = true;
}

void mouseReleased() {
  //prints the strike count used
  count ++;
  println(int (count));
  
  mouseHold = false;
  for (int i = 0; i < ball.length; i++) {
    ball[i].roll(mouseX, mouseY);
  }
}
