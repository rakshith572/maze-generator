class Star {
// x value for star  
  float x=0;
// y position for starr  
  float y=0;
// z is for reference which control the speed  prbably like z position in 3d  
  float z=0;
  
//  these variable is to keep reference to draw a line
  float pz=0;
  
  boolean firstOccur=true;
// constructor  
  Star() {
// chossing random x position     
    x=random(-width/2, width/2);
// choosing random y position    
    y=random(-height/2, height/2);
// choosing randon value for z    
    z=random(width/2);
    pz=z;
  }
// udate the value of x and y position of start  
  void update() {
// helps give vizulize to come towards you    
    z-=speed;
    if (z<1) {
      z=width/2;
      x=random(-width/2, width/2);
      y=random(-height/2, height/2);
      pz=z;
    }
  }
// display the start position and draw line  
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
