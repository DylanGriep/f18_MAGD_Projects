class DisplayManager
{
  int index;
  int xUp, yUp, xDown, yDown;
  PFont font, font2;
  String[] lines;
  
  DisplayManager()
  {
    index = 0;
    lines = loadStrings("textfiles/movies.txt");
    font = createFont("Georgia", 32);
    font2 = createFont("Serif", 28);
    textFont(font);
    textAlign(CENTER, CENTER);
  }
  
  DisplayManager(int index)
  {
    this.index = index;
  }
  
  public void display()
  {
    background(0);
    manageButton();
    fill(255);
    text(lines[index], width/2, height/2);
    
    fill(55);
    rect(width/2 - 25, 50, 50, 50);
    rect(width/2 - 25, height-100, 50, 50);
  }
  
  public void manageButton()
  {
      
    if(index < 0)
      index = lines.length-1;
      
    if(index >= lines.length)
      index = 0;
  }
  
  boolean upArrow()
  {
    if(mouseX > width/2 - 25 && mouseX < width/2+25 && mouseY > 50 && mouseY < 100)
    {
      println(index);
      textFont( round(random(0, 2)) == 0 ? font : font2);
      return true;
    }
    return false;
  }
  
  boolean downArrow()
  {
    if(mouseX > width/2 - 25 && mouseX < width/2+25 && mouseY > height-100 && mouseY < height-50)
    {
      println(index);
      textFont( round(random(0, 2)) == 0 ? font : font2);
      return true;
    }
    return false;
  }
  
  void setIndex(int i)
  {
    index = i;
  }
  
  int getIndex()
  {
    return index;
  }
}
