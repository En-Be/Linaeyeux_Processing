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
  
}
