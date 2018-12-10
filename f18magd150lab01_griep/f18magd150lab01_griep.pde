/* First project - Static Composition
    Theme: Buildings */
  
void setup()
{
  size(750,500); //size(width, height)
  background(120); //Sky Color
}

void draw()
{
  //ground
  noStroke();
  fill(100);
  rect(0, 400, 750, 100);
  
  //ground-line
  fill(250);
  stroke(10);
  line(0, 400, 750, 400);
  
  //moon
  noStroke();
  ellipseMode(CORNER);
  ellipse(40,56, 50, 50);
  fill(120);
  ellipse(55, 60, 50, 50);
  
  //buildings left - right
    //frame 1
  fill(0);
  rect(40, 250, 100, 200, 0, 100, 0, 0);
    //Windows top - bottom
  fill(30);
  rect(40, 290, 100, 50);
  rect(40, 350, 100, 50);
  
    //frame 2
  fill(0);
  rect(150, 250, 100, 200);
  //Windows top - bottom
  fill(30);
  rect(150, 290, 100, 50);
  rect(150, 350, 100, 50);
  
    //frame 3
  fill(0);
  rect(260, 230, 100, 220);
    //Windows top - bottom
  fill(30);
  rect(260, 250, 100, 50);
  rect(260, 310, 100, 50);
  rect(260, 370, 100, 50);
    //attenna
  stroke(1);
  line(305, 230, 305, 220);
  strokeWeight(10);
  point(305, 220);
  strokeWeight(0);
  noStroke();
  
    //frame 4
  fill(0);
  rect(390, 230, 100, 220);
    //Windows top - bottom
  fill(30);
  rect(390, 250, 100, 50);
  rect(390, 310, 100, 50);
  rect(390, 370, 100, 50);
    //attenna
  stroke(1);
  line(455, 230, 455, 220);
  strokeWeight(10);
  point(455, 220);
  strokeWeight(0);
  noStroke();
  
    //frame 5
  fill(0);
  rect(500, 250, 100, 200);
    //Windows top - bottom
  fill(30);
  rect(500, 290, 100, 50);
  rect(500, 350, 100, 50);
  
    //frame 6
  fill(0);
  rect(610, 250, 100, 200, 100, 0, 0, 0);
    //Windows top - bottom
  fill(30);
  rect(610, 290, 100, 50);
  rect(610, 350, 100, 50);
}
