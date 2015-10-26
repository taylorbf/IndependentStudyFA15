Star wholeStar[] = new Star[100];
void setup() {
    size(640, 640);
    for (int i=0;i < wholeStar.length;i++){
         wholeStar[i] = new Star(200,100,10);
         wholeStar[i].wid = 2345;
  }
}
 
void draw() {
    background(0);
    for (int i=0; i< wholeStar.length;i++) {
    for (int j=0; j< 10 ;j++){
         wholeStar[i].starShape(i*100,200*j);
    } 
  }
}


class Star{
    float starSize = 100;
    float starRed;
    float wid;
    Star (int r, int g, int b){
      wid = 0;
      println(r);
      starRed = r;  
      float starGreen= g;
      float starBlue= b;
  
  }
 
  
void starShape (float x1, float y1){
    println(wid);
    beginShape(LINES);
        stroke(255,random(100));
        vertex(x1 +40,y1 + 5);
        vertex(x1 +40, y1 +120);
        stroke(255, random(100));
        vertex(x1 +0, y1 +55);
        vertex(x1 +90, y1 +55);
        stroke(255,random(100));
        vertex(x1 +0, y1 +20);
        vertex(x1 +80, y1 +90);
        stroke(255, random(100));
        vertex(x1 +80, y1 +20);
        vertex(x1 +0, y1 +90); 
    endShape();

  }
}