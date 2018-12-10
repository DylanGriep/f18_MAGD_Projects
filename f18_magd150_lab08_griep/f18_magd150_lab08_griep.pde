import processing.pdf.*;


//Author: Dylan Griep
//Theme: Movie posters
//Description: 

DisplayManager displayManager;
boolean recording; 


void setup()
{
  size(750 , 750);
  background(0);
  recording = false;
  displayManager = new DisplayManager();
}

void draw()
{
  displayManager.display();
}

//Detects if user released the spacebar. When the spacebar is pressed, it toggles between recording and not. If this is done recording, the screenshot will be saved into a pdf within the "recordings" folder
//(Will never overwrite recordings due to naming it the day month year minute second millisecond . pdf)
void keyReleased()
  {
    if(key == ' ')
    {
      if(recording) endRecord();
      else beginRecord(PDF, "recordings/" + day() + "-" + month() + "-" + year() + "-" + minute() +second()+ "-" +millis() + ".pdf");
      
      recording = !recording;
      
      println( recording ? "[Recorder] Started Recording" : "[Recorder] Recording has stopped. Saving...");
    }
  }
  
  
  //detects if buttons are pressed. if so, index changes.
void mouseClicked()
{
  if( displayManager.upArrow() ) //up arrow
      displayManager.setIndex(displayManager.getIndex()-1);
  else if( displayManager.downArrow() ) //down arrow
      displayManager.setIndex(displayManager.getIndex()+1);
}
