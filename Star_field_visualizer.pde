float speed=0;
Star []stars=new Star[300];
void setup() {
  size(600, 600);
  for (int i=0; i<stars.length; i++) {
    stars[i]=new Star();
  }
}
void draw() {
  background(0);
  speed=map(mouseX,0,width,0,50);
  background(0);
  translate(width/2,height/2);
  for(int i=0;i<stars.length;i++){
    stars[i].update();
    stars[i].display();
  }
}
