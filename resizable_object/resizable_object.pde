void setup() {
  size(400,600);
  noStroke();
}

void draw() {
  background(0);
  
  fill(0,100,250);
  
  pushMatrix();
  
  translate(100,100);
  scale(2,2);
  
  beginShape();
    vertex(0,0);
    vertex(0,50);
    vertex(50,50);
    vertex(50,0);
    vertex(0,0);
  endShape();
  
  popMatrix();
  
}