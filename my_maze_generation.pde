
// raksith

// creating a ArrayList that contain grid
ArrayList<cell>grid=new ArrayList<cell>();

// creating Stack that contain all previous grid that are visited by curr cell to recursively all possible
ArrayList<cell>stack=new ArrayList<cell>();

int rows;
int w=20;
int columns;

// current cell
cell current;

void setup(){
  // creating a canvas of size (600,600)
  size(600,600);
// calulating rows   
  rows=floor(height/w);
  // calculating columns
  columns=floor(width/w);
  
  
// creatin a new grid that all are added to grid ArrayList  
  for(int i=0;i<rows;i++){
    for(int j=0;j<columns;j++){
      cell gi=new cell(j,i);
      grid.add(gi);
    }
  }
  
  //frameRate(5);
// all it start from origin i.e (0,0)
  current=grid.get(0);
}
void draw(){
// background gray color  
  background(51);
  
// you have to display all grid or box in grid ArrayList
  for(int i=0;i<grid.size();i++){
    grid.get(i).show();
  }
  
// marking current cell as true 
  current.visited=true;
  
// getting either top, bottom , right , left to open a gate i.e line  
  cell next=current.checkNeighbour();
  
// check if next is null  
  if(next!=null){
// let mark visited gird as pink color    
    current.highLight();
    
 // adding all element to stack to get back recursive
  stack.add(current);
  
// now  I have to remove waal i.e neighbour(next)  
    removeWalls(current,next);
 
// updateing current to next    
    current=next;
  }else if(stack.size()>0){
// we have to trace back the visited grid in order to check neighbour    
    current=stack.remove(stack.size()-1);
  }
  
}
// remove waals
void removeWalls(cell a,cell b){
  int j=a.j-b.j;
  if(j==1){
     a.left=false;
     b.right=false;
  }else if(j==-1){
    a.right=false;
    b.left=false;
  }
  int i=a.i-b.i;
  if(i==1){
    a.top=false;
    b.bottom=false;
  }else if(i==-1){
    a.bottom=false;
    b.top=false;
  }
}
