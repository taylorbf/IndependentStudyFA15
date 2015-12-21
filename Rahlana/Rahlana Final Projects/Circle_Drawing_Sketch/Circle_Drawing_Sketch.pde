//http://www.openprocessing.org/sketch/43221
Circle circleShape[] = new Circle[4];
int shrinkOrGrow = 1;
int y1 = 0;
void setup(){
    size(800,800);
    background(255);
    for (int i=0;i < circleShape.length;i++){
         circleShape[i] = new Circle(200,100,10);
    }  
   }

void draw(){
    
    for (int i=0; i< circleShape.length;i++) {
    for (int j=0; j< 4 ;j++){   
          circleShape[i].circle(i*80,80*j);
    
   }
  }
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
if (mousePressed == true){
    noStroke();
    pushMatrix();
    translate(mouseX,mouseY);
    rotate(radians(frameCount));
    ellipseMode(RADIUS); 
    fill(163, 163, 204, 40);  
    ellipse(x1, y1,random(20), random(20));  

    ellipseMode(CENTER);  
    fill(204, 204, 255, 40);  
    ellipse(-x1, -y1, random(50), random(50));  
    popMatrix();
}else
    if (keyPressed) {
    if (key=='1') filter (BLUR,1); 
    if (key=='2') filter (GRAY);
    if (key=='3') {
    noStroke();
    pushMatrix();
    translate(mouseX,mouseY);
    rotate(radians(frameCount));
    ellipseMode(RADIUS); 
    fill(90,10,2, 40);  
    ellipse(x1, y1,random(20), random(20));  

    ellipseMode(CENTER);  
    fill(100,100,90, 40);  
    ellipse(-x1, -y1, random(50), random(50));  
    popMatrix();
         }
   if (key=='4') {
        noStroke();
    pushMatrix();
    translate(mouseX,mouseY);
    rotate(radians(frameCount));
    ellipseMode(RADIUS); 
    fill(0,100,200, 40);  
    ellipse(x1, y1,random(20), random(20));  

    ellipseMode(CENTER);  
    fill(0,100,100, 40);  
    ellipse(-x1, -y1, random(50), random(50));  
    popMatrix();
   }
  }
 } 
}