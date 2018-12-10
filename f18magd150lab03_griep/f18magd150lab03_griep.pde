
void setup()
{
  size(750, 750);
}

void draw()
{
  //info -> console
    println(
      "Mouse Coords: \n" + 
      "  X: " + mouseX + 
      "\n  Prev X: " + pmouseX + 
      "\n  Y: " + mouseY +
      "\n  Prev Y: " + pmouseY);
  println("Away from center: " + dist(mouseX, mouseY, width/2, height/2));
  println("Frames: " + frameCount);
  println(
    "Screen size:" +
    "\n  Height: " + height +
    "\n  Width: " + width +
    "\n  half-height: " + (height/2.0) +
    "\n  half-width: " + (width/2.0) );
    println("Max test: " + max(mouseX, 350));
    println("=========================");
    
    background(0);
    float i = map(mouseY%750, 0, 750, 0, 255);
    
    if(mouseX < width/3) fill(0, 0, i);
    else if(mouseX > (width/3)*2) fill(i, 0, 0);
    else fill(0, i, 0);
    
    ellipseMode(CENTER);
    ellipse(mouseX, mouseY, 50, 50);
    ellipse(mouseX/2, mouseY/2, 30, 30);
    ellipse(mouseX/2, mouseY, 30, 30);
    ellipse(mouseX, mouseY/2, 30, 30);
    ellipse(pmouseX, pmouseY, 25, 25);
    
    
  
}
