/* Color
Theme: Space/Planets
*/

void setup()
{
  size(750, 500); // (width, height)
  background(0);
}

void draw() 
{
  
  //background (Sun lighting)
  noStroke();
  ellipseMode(CORNERS);
    //Light "rings" outter - inner
  fill(20);
  ellipse(0, 0, 750, 500);
  fill(50);
  ellipse(50, 15, 650, 470);
  fill(70);
  ellipse(100, 25, 590, 450);
  
  //sun rays(Hair)
  colorMode(HSB, 360, 100, 100, 100);
  fill(60, 100, 100, 25);
  triangle(150, 50, 290, 50, 270, 120);
  triangle(150, 100, 290, 100, 270, 240);
  
  //sun(Face)
  colorMode(RGB);
  fill(#FFFF00);
  ellipse(150, 50, 500, 400);
  
  //planet anti-earth(Eye 1)
  colorMode(RGB, 255, 255, 255);
  fill(100, 0, 0);
  ellipse(250, 50, 350, 150);
  //moon
  fill(244, 244, 244);
  ellipse(270, 45, 320, 85);
  //planet earth(Eye 2)
  fill(0, 100, 0);
  ellipse(400, 70, 500, 170);
  //moon
  fill(255, 255, 255);
  ellipse(420, 65, 470, 105);
  
  //ringed planet(Mouth)
  fill(0, 40, 0);
  ellipse(350, 300, 450, 400);
  fill(0, 0, 90);
  quad(400, 350, 350, 350, 400, 300, 440, 380);
  fill(#FF00FF);
  arc(350, 300, 470, 380, radians(45), PI, CHORD);
  
}
