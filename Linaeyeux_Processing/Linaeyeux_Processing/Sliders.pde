class Sliders
{ 
  int top;
  int bottom;
  int leftPos = width/4;
  int rightPos = width - width/4;
  Button buttonLeft = new Button(leftPos);
  Button buttonRight = new Button(rightPos);
  
  ObjetSize objetSize = new ObjetSize();
  
  Sliders()
  {
    top = 200;
    bottom = height - 200;
  }
  
  // ----
  
  void Update()
  {
    buttonLeft.Update();
    buttonRight.Update();
    ObjetSizeLink();
    ObjetPersistenceLink();
  }
  
  void Display()
  {
    stroke(255);
    strokeWeight(5);
    line(leftPos, top, leftPos, bottom);
    line(rightPos, top, rightPos, bottom);

    buttonLeft.Display();
    buttonRight.Display();
  }
  
  
  // ---- SCALE LINKS
  
  void ObjetPersistenceLink()
  {
    objetPersistence.ConvertToScale(Value('L'));
    objetPersistence.Update();
  }
  void ObjetSizeLink()
  {
    objetSize.ConvertToScale(Value('R'));
    objetSize.Update();
  }
  
  // ----
  
  
  boolean CheckIfTouching()
  {
    if(buttonLeft.CheckIfTouching() || buttonRight.CheckIfTouching())
    {
      return true; 
    }
    else
    {
      return false; 
    }
  }
  
  void StopTouching()
  {
    buttonLeft.isBeingTouched = false;
    buttonRight.isBeingTouched = false;
  }
  
  int Value(char LorR)
  {
    int range = bottom - top;
    float position;
    
    if(LorR == 'L')
    {
      position = buttonLeft.position.y - 200;
    }
    else
    {
      position = buttonRight.position.y - 200;
    }
    
    int value = int((position/range) * 100);
    value = 100 - value; // Flip top and bottom
    return value; 
  }
}
