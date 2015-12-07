//http://www.openprocessing.org/sketch/49075
Star wholeStar[] = new Star[200];
int x = 0;
float y = 0;
float [] x1 = new float [50];
float [] y1 = new float [50];
void setup() {
    size(1000, 1000);
    for (int i = 0; i<50; i++) {
    x1[i] = 0;
    y1[i] = 0;
    
    }
    for (int i=0;i < wholeStar.length;i++){
         wholeStar[i] = new Star();
         wholeStar[i].x = random(width);
         wholeStar[i].y = random(height);
         wholeStar[i].size = random(0.1);
         wholeStar[i].col = color (0,100,random(200));
    }  
   }

 
void draw() {
     background(10,0,10);
     for (int i=0; i< wholeStar.length;i++) {
         wholeStar[i].update();
     }
       //ground
       fill(0,30,20);
       noStroke();
       rect(0,580,width,800);
      
        x = x + 1;
        y = y + .2;
        translate(x,50);
        translate(0,y);
        for (int i=0; i<49; i++) {
        x1[i] = x1 [i+1];
        y1[i] = y1 [i+1];
        fill(i*2);
        ellipse(x1[i]+0, y1[i]+10,random(10),random(10));
        x1[49] = x + 1;
        y1[49] = y + 1;
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
        stroke(255,random(100,200));
        vertex(40, 5);
        vertex(40,120);
        stroke(255, random(100,200));
        vertex(0,55);
        vertex(90, 55);
        stroke(255,random(100,200));
        vertex(0, 20);
        vertex(80, 90);
        stroke(255, random(100,200));
        vertex(80,20);
        vertex(0, 90); 
    endShape();
        popMatrix();
   }
  }