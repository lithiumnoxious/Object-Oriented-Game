class Wall {
  float x;
  float y;
  float w;
  float h;

  Wall(float X, float Y, float W, float H) {
    x = X;
    y = Y;
    w = W;
    h = H;
  }

  void display() {
    fill(100);
    rect(x, y, w, h);
  }
}
