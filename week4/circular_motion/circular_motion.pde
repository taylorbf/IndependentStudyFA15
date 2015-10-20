float counter = 0;

void setup() {
  
}

void draw() {
  
  background(0);
  
  counter = counter + 0.1;
  
  float x = sin(counter) * 20 + 50;
  float y = cos(counter) * 20 + 50;
  
  ellipse(x,y,20,20);
  
}
