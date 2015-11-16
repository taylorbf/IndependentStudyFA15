Star wholeStar[] = new Star[200];
void setup() {
    size(1000, 1000);
      for (int i=0;i < wholeStar.length;i++){
         wholeStar[i] = new Star();
         wholeStar[i].x = random(width);
         wholeStar[i].y = random(height);
         wholeStar[i].size = random(0.2);
         wholeStar[i].col = color (0,100,random(200));
    }  
  }

 
void draw() {
    background(10,0,10);
     for (int i=0; i< wholeStar.length;i++) {
         wholeStar[i].update();
    }
 } 

class Star{
    float size;
    float x;  
    float y;
    float col; 
    
    Star() {
    
    }
  
  
 void update (){
      pushMatrix();
      translate(x,y);
      scale(size,size);
      stroke(col);
    beginShape(LINES);
        stroke(255,random(100));
        vertex(40, 5);
        vertex(40,120);
        stroke(255, random(100));
        vertex(0,55);
        vertex(90, 55);
        stroke(255,random(100));
        vertex(0, 20);
        vertex(80, 90);
        stroke(255, random(100));
        vertex(80,20);
        vertex(0, 90); 
    endShape();

  popMatrix();
 }
}

