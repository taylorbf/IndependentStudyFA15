Square squares[] = new Square[100];

void setup() {
  size(400,600);
  noStroke();
  for (int i=0; i<squares.length; i++) {
    squares[i] = new Square(); //<>//
    squares[i].x = random(width);
    squares[i].y = random(height);
    squares[i].size = random(0.5);
    squares[i].col = color(0,100,random(255));
  }
}

void draw() {
  background(0);
  for (int i=0; i<squares.length; i++) {
    squares[i].update();
  }
}


class Square{
  
  float x;
  float y;
  float size;
  color col;
    
  Square() {
  
  }
 
  void update(){
    
    pushMatrix();
    
    translate(x,y);
    scale(size,size);
    
    fill(col);
    beginShape();
      vertex(0,0);
      vertex(0,50);
      vertex(50,50);
      vertex(50,0);
      vertex(0,0);
    endShape();
    
    popMatrix();
    
  }
  
}