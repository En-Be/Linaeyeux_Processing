class Sliders
{ 
  int top;
  int bottom;
  int leftPos = width/8;
  int rightPos = width - width/8;
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
    scales.SetLeftValue(Value('L'));
    scales.SetRightValue(Value('L'));
    Display();
  }
  
  void Display()
  {
    stroke(255);
    strokeWeight(5);
    
    line(leftPos, top, leftPos, buttonLeft.position.y - buttonLeft.size/2);
    line(leftPos, buttonLeft.position.y + buttonLeft.size/2, leftPos, bottom);

    
    line(rightPos, top, rightPos, buttonRight.position.y - buttonRight.size/2);
    line(rightPos, buttonRight.position.y + buttonRight.size/2, rightPos, bottom);


    buttonLeft.Display();
    buttonRight.Display();
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
    //value = 100 - value; // Flip top and bottom
    return value; 
  }
  
  void ChangeActiveScale(int s)
  {
    buttonLeft.ConvertToScale(scales.GetButtonPos(s));
  }
}
