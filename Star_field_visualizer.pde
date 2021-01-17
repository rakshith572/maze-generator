// Rakshith 


float speed=0;

// creating an array of stars
Star []stars=new Star[300];

void setup() {
  // creating canvas of size (600,600)
  size(600, 600);
// creating a stars  
  for (int i=0; i<stars.length; i++) {
    stars[i]=new Star();
  }
}
void draw() {
// bacground color black because space is black
  background(0);
// speed is mapped with width of mouse Location   
  speed=map(mouseX,0,width,0,50);
  
  //background(0);

// translating to orgin to width/2 and height/2 which makes the star coming towards you  
  translate(width/2,height/2);
// updating and display the elements of stars in array  
  for(int i=0;i<stars.length;i++){
    stars[i].update();
    stars[i].display();
  }
}
