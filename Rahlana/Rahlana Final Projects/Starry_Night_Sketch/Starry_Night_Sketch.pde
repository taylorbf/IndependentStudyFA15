//http://www.openprocessing.org/sketch/49075
//https://processing.org/examples/tree.html
//http://www.openprocessing.org/sketch/172393
Star wholeStar[] = new Star[200];
float theta;
float x3=0;
int x = 0;
float y = 0;
float [] x1 = new float [50];
float [] y1 = new float [50];
int num = 400;
float[] x2 = new float[num];
float[] y2 = new float[num];

void setup() {
    size(1000, 1000);
    for (int i = 0; i < num; i++) {
    x2[i] = random(width);
    y2[i] = random(height);
    stroke(255);
  }
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
    strokeWeight(1);
    background(10,0,10);
    noStroke();
    for (int i=0; i< wholeStar.length;i++) {
         wholeStar[i].update();
     }
    float b = brightness(8) / 255.0;
    float speed = pow(b, 2) + .05;
    for (int i = 0; i < num; i++) {
        x2[i] += speed;
    if (x2[i] > width) {
        x2[i] = 0;
        y2[i] = random(height);
    }
    if (speed>0.5) {
    float d=sin(speed)*4;
        ellipse(x2[i], y2[i], d,d);
    }
    point(x2[i], y2[i]);
    }
       //ground
    fill(0,30,20);
    noStroke();
    rect(0,580,width,800);
    if (mouseY> 580){
    fill(0,50,20);
    rect(0,580,width,800);
    }
      x = x + 1;
      y = y + .2;
      
    for (int i=0; i<49; i++) {
        x1[i] = x1 [i+1];
        y1[i] = y1 [i+1];
    fill(i*2);
    ellipse(x1[i], y1[i],random(10),random(10));
        x1[49] = mouseX;
        y1[49] = mouseY;
     }
        
//moon rotation
    fill(190);
    ellipse(200,100,100,100);
    fill(10,0,10);
    ellipse(x3,100,120,120);
         x3 = x3 + .05;
    if (x3 > 300){
         x3 = 0;
    }
    stroke(50,20,0);
             
// Let's pick an angle 0 to 90 degrees based on the mouse position
    float a = (mouseX / (float) width) * 50f;
// Convert it to radians
        theta = radians(a);
// Start the tree from the bottom of the screen
    translate(width/2,700);
// Draw a line 120 pixels
    line(0,0,0,-10);
// Move to the end of that line
     translate(0,-10);
// Start the recursive branching!
         branch(400);
         theta = radians(a);
// Start the tree fr;
     translate(400,700);
// Draw a line 120 pixels
     line(40,40,0,-10);
// Move to the end of that line
     translate(0,-10);
  // Start the recursive branching!
         branch(100);
//float across sky
    if (mousePressed == true){
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
    else if (mousePressed == false){
        x=0;
        y=0;
  
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
   void branch(float h) {
    
 // Each branch will be 2/3rds the size of the previous one
      h *= 0.55;
  
// All recursive functions must have an exit condition!!!!
  // Here, ours is when the length of the branch is 2 pixels or less
  if (h > 2) {
  pushMatrix();    // Save the current state of transformation (i.e. where are we now)
      strokeWeight(4);
      rotate(theta-100);   // Rotate by theta
      line(0, 0, 0, -h);  // Draw the branch
      translate(0, -h); // Move to the end of the branch
      branch(h);       // Ok, now call myself to draw two new branches!!
  popMatrix();     // Whenever we get back here, we "pop" in order to restore the previous matrix state
    
    // Repeat the same thing, only branch off to the "left" this time!
  pushMatrix();
    rotate(-theta);
    line(0, 0, 0, -h);
    translate(0, -h);
    branch(h);
  popMatrix();
    }
   }