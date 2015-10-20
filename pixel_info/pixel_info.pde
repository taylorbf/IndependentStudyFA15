
void draw() {
  background(255,100,100);
  
  // get the color information in the pixel 
  // at coordinate x: 1, y: 1 (top left of screen)?
  int firstpixel = get(1,1);
  
  // find out how much red is in that pixel
  float redness = red(firstpixel);
  
  // let's print that info to the console
  // so we can see it
  println(redness);
}
