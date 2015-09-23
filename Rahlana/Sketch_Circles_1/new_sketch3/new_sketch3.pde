Circle circleShape[] = new Circle[100];
int shrinkOrGrow = 1;
int y1 = 0;
void setup(){
    size(800,800);
    background(255,200,0);
    for (int i=0;i < circleShape.length;i++){
         circleShape[i] = new Circle(200,100,10);
    }
  }

void draw(){
    for (int i=0; i< circleShape.length;i++) {
    for (int j=0; j< 10 ;j++){   
          circleShape[i].circle(i*80,100*j);
    
    }
  }
  if (y1 > 1500 ){  
       shrinkOrGrow = 0;
     
     
    } else if (y1 <= 0) {
        shrinkOrGrow = 1;
       
    }
     if (shrinkOrGrow == 1) {//grow
        y1 += 4;
           
    } else if (shrinkOrGrow == 0) {
        y1 -= 4; 
    
        
    }
    fill(255,200,0, 20);   
    ellipse(width/2, height/4, y1, y1);
}

class Circle{
    int circleX = 0;
    int circleY = 0;
    int circleSize = 100;
    
    Circle(int r, int g, int b){
    float crcRed= r;  
    float crcGreen= g;
    float crcBlue= b;
  } 
  

void circle (int x1, int y1){

   noStroke();
   pushMatrix();
    translate(width/2,height/4);
    rotate(radians(frameCount));
    ellipseMode(RADIUS); 
    fill(200,0,0, 40);  
    ellipse(x1+30, y1+40,random(20), random(20));  

    ellipseMode(CENTER);  
    fill(0,0,200, 40);  
    ellipse(-x1, -y1-40, random(50), random(50));  
   popMatrix();
  
    } 
}
