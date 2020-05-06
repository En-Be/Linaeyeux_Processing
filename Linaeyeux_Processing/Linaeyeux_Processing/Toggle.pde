class Toggle
{
  
  PVector position = new PVector();
  int size;
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
      fill(0,0,100,100);
    }
    else
    {
      noFill();
    }
    stroke(0,0,100,100);
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
      return true;
    }
    else
    {
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
