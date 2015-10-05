//http://www.openprocessing.org/sketch/157036

void setup() {
  size(640, 640);
  stroke(255);
}
 
void draw() {
  background(0);
  translate(width/2, height/2);
  for (int i = 0; i < 360; i+=6) {
    for (int q = 0; q < 360; q+=500) {
      float x = map(sin(radians(q+i+frameCount))*i, -200, random(200), i, -i);
      float y = map(cos(radians(q+i+frameCount))*i, -200, random(200), -i, i);
       
      float x2 = map(sin(radians(q+i+2+frameCount))*(i+2), -200, random(200), i+2, -(i+2));
      float y2 = map(cos(radians(q+i+2+frameCount))*(i+2), -200, random(200), -(i+2), i+2);
      
      stroke(0,150,200);
      line(x, y, x2, y2);
      line(-x, -y, -x2, -y2);
      
      stroke(0,200,100); 
      line(y, x, y2, x2);
      line(-y, -x, -y2, -x2);
      
      stroke(0,150,200); 
      line(x, -y, x2, -y2);
      line(-x, y, -x2, y2);
      
      stroke(0,200,100);  
      line(y, -x, y2, -x2);
      line(-y, x, -y2, x2);
    }
  }
}

