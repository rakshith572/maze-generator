

class cell {
// ith position  
  int i;
// jth position  
  int j;
  // here Basically cell that contain boottom, top , right ,left that are marked true in order to draw a line that form square we can remove waal by making either of wall false
// top  
  boolean top=true;
// left  
  boolean right=true;
// bottom  
  boolean bottom=true;
// left  
  boolean left=true;
// first it is marked as false  
  boolean visited=false;
  
  cell(int j, int i) {
    this.i=i;
    this.j=j;
  }
// high ligh that makes to pink because background is gray and highlighted cell blue when they mix pink is formed  
  void highLight(){
    int x=j*w;
    int y=i*w;
    fill(0, 0,255, 110);
    rect(x,y,w,w);
  }
// these function return neighour cell    
  cell checkNeighbour() {
    // here we are addinf all cell to arrayList neighbour and either one by randomly  
    ArrayList<cell>neighbour=new ArrayList<cell>();
    cell top=grid.get(index(j, i-1));
    cell right=grid.get(index(j+1, i));
    cell bottom=grid.get(index(j, i+1));
    cell left=grid.get(index(j-1, i));
    if (top!=null && top.visited==false) {
      neighbour.add(top);
    }
    if (right!=null &&right.visited==false) {
      neighbour.add(right);
    }
    if (bottom!=null && bottom.visited==false) {
      neighbour.add(bottom);
    }
    if (left!=null && left.visited==false) {
      neighbour.add(left);
    }
    if (neighbour.size()>0) {
      int index=floor(random(0, neighbour.size()));
      return neighbour.get(index);
    } else {
      return null;
    }
  }
// these gets the index   
  int index(int j, int i) {
    if (i>=rows || j>=columns || i<0 || j<0) {
      return 0;
    }
    return (i*columns)+j;
  }
  void show() {
    // ccalculating y position in canves
    int y=i*w;
    // ccalculating x position in canves
    int x=j*w;
    stroke(255);
    
  // drawing a line whose decleared variable is true  
    if (top) {
      line(x, y, x+w, y);
    }
    if (right) {
      line(x+w, y, x+w, y+w);
    }
    if (bottom) {
      line(x+w, y+w, x, y+w);
    }
    if (left) {
      line(x, y+w, x, y);
    }
    if (this.visited) {
      noStroke();
      fill(255, 0, 255, 100);
      rect(x, y, w, w);
    }
  }
}
