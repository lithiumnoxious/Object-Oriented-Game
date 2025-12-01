Ball[] ball = new Ball[4];
Speed s = new Speed();
boolean mouseHold = false;
float count;

void setup() {
  size(800, 900);


  //constructors

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
  
  if (mouseHold == true && s.speed <= 50) {
    s.speed++;
  } else if (mouseHold==false && s.speed >= 0) {
    s.speed--;
  }
  
  
}

void mousePressed() {
  mouseHold = true;
}

void mouseReleased() {
  count ++;
  println(int (count));
  mouseHold = false;
  for (int i = 0; i < ball.length; i++) {
    ball[i].roll(mouseX, mouseY);
  }
}
