class obstacles{
  float x;
  float y;
  float w;
  float h;

  obstacles(float X, float Y, float W, float H) {
    x = X;
    y = Y;
    w = W;
    h = H;
  }

  void display() {
    noStroke();
    fill(40,125,40);
    rect(x, y, w, h);
  } 


}
