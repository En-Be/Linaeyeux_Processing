class Toggle
{
  PVector position = new PVector();
  int size;
  boolean isBeingTouched = false;
  boolean on = false;
  
  Toggle(PVector pos, int s)
  {
    position = pos.copy();
    size = s;
  }
  
  
  // ----
  
  
  void Update()
  {
    Display();  
  }
  
  void Display()
  {
    if(on)
    {
      fill(255);
    }
    else
    {
      noFill();
    }
    stroke(255);
    strokeWeight(5);
    
    circle(position.x, position.y, size);
    circle(position.x, position.y, size);
  }
  
  
  // ----
  
  void TurnOn()
  {
    on = true;
  }
  
  void TurnOff()
  {
    on = false;
  }
  
  boolean CheckIfTouching()
  {
    if(overCircle(int(position.x), int(position.y), size))
    {
      isBeingTouched = true;
      return true;
    }
    else
    {
      isBeingTouched = false;
      return false;
    }
  }
  
  boolean overCircle(int x, int y, int diameter) 
  {
    float disX = x - mouseX;
    float disY = y - mouseY;
    if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) 
    {
      return true;
    }  
    else 
    {
      return false;
    }
  }
}
