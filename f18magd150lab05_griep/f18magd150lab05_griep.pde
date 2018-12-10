int rBttnX, rBttnY, rBttnWidth, rBttnHeight;
int cBttnX, cBttnY, cBttnDiameter;
float ballX, ballY, ballDiameter, speed, gravity;
boolean upY, rightX;
int index;
boolean on;

void setup()
{
  size(1000, 750);
  
  //rectangle button
  rBttnX = 800;
  rBttnY = 700;
  rBttnWidth = 150;
  rBttnHeight = 100;
  
  //ellipse button
  cBttnX = 850;
  cBttnY = 400;
  cBttnDiameter = 100;
  
  //tv variables
  index = 0;
  on = false;
  
  //ball variables
  ballReset();
  speed = 0.8;
  rightX = false;
  upY = false;
  ballDiameter = 20;
  gravity = 0.5;
}
void draw()
{
  colorMode(RGB, 255, 255, 255);
  background(0, 0, 0);
  if(!on)
  {
    fill(200, 200, 200);
    rect(30, 30, 700, 700);
     fill(255, 255, 255);
  }
  else rect(30, 30, 700, 700);
  
  //buttons
  rect(rBttnX, rBttnY, rBttnWidth, rBttnHeight);
  ellipseMode(RADIUS);
  ellipse(cBttnX, cBttnY, cBttnDiameter, cBttnDiameter);
  fill(0, 0, 0);  
  text("Change channel", cBttnX, cBttnY);
  text("On/Off switch", rBttnX+20, rBttnY+20);
  fill(255, 255, 255);
  //stuff
  if(on)
  {
    fill(255, 0, 0);
    ellipse(ballX, ballY, ballDiameter, ballDiameter);
    fill(255, 255, 255);
        
    switch(index)
    {
      case 0: //bubble bounce
        bubbleManager();
        break;
      case 1: //gravity
        gravityManager();
      break;
    }
  }
  
}

void mouseClicked()
{
  if(mouseX > rBttnX && mouseX < rBttnX + rBttnWidth && mouseY > rBttnY && mouseY < mouseY + rBttnHeight) 
  { 
    println("click");
    on = !on;
    ballReset();
  } //rectangle button
  else if( sqrt( sq(cBttnX - mouseX) + sq(cBttnY - mouseY)) < cBttnDiameter/2 ) 
  { 
    println("clicky"); 
    changeIndex();
  }
}

void changeIndex()
{
  index++;
  if(index > 1) index = 0; //expandable "slides"
  ballReset();
}

void ballReset()
{
  ballX = 700/2;
  ballY = 700/2;
  rightX = false;
  upY = false;
}

//managers
void bubbleManager()
{
  if(ballX > 30 && ballX+ballDiameter < 730) 
  {
    if(rightX) ballX++; 
    else ballX--;
  }
  else 
  {
    if(rightX) ballX--;
    else ballX++;
    rightX = !rightX;
  }
  
  if(ballY > 30 && ballY+ballDiameter < 730) 
  {
    if(upY) ballY--;
    else ballY++;
  }
  else 
  {
    if(upY) ballY++;
    else ballY--;
    upY = !upY;
  }
}

void gravityManager()
{
  if(ballY > 30 && ballY+ballDiameter < 730) 
  {
    ballY++;
  }
}
