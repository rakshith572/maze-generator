class Star {
  float x=0;
  float y=0;
  float z=0;
  float pz=0;
  boolean firstOccur=true;
  Star() {
    x=random(-width/2, width/2);
    y=random(-height/2, height/2);
    z=random(width/2);
    pz=z;
  }
  void update() {
    z-=speed;
    if (z<1) {
      z=width/2;
      x=random(-width/2, width/2);
      y=random(-height/2, height/2);
      pz=z;
    }
  }
  void display() {
    fill(255);
    noStroke();
    float sx=map(x/z, 0, 1, 0, width/2);
    float sy=map(y/z, 0, 1, 0, height/2);
    float size=map(z, 0, width/2, 16, 0);
    ellipse(sx, sy, size, size);
    float prevx=map(x/pz, 0, 1, 0, width/2);
    float prevy=map(y/pz, 0, 1, 0, height/2);
    pz=z;
    stroke(255);
    line(prevx,prevy,sx,sy);
  }
}
