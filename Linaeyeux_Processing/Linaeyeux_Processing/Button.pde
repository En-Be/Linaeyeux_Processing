
class Button
{
  PVector pFrPosition;
  PVector position;
  PVector restPosition;
  int size;
  boolean isBeingTouched = false;
  
  int min = 200;
  int max = height - 200;
  
  Button(int xPos)
  {
    restPosition = new PVector(xPos, height/2);
    position = restPosition.copy();
    pFrPosition = position.copy();
    size = 150;
  }
  
  // ----
  
  void Update()
  {
    
    if(isBeingTouched)
    {
      position.y = constrain(mouseY, min, max);
      SendIncrement(IncrementAmount());
    }
    else
    {
      position.y = restPosition.y;
    }
  }
  
  void Display()
  {
    stroke(0,0,100,100);
    strokeWeight(5);
    noFill();
    circle(position.x, position.y, size);
    circle(position.x, position.y, size);

  }
  
  // ----
  
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
  
  void SendIncrement(float inc)
  {
    if(!IsRandomness())
    {
      scales.ChangeValue(inc);
    }
    else
    {
      scales.ChangeValueRandomness(inc);
    }
  }
  
  float IncrementAmount()
  {
    float f = position.y - restPosition.y;
    float u = restPosition.y - min;
    
    boolean madePositive = false;
    
    f = norm(f, 0, u);
    
    if(f < 0)
    {
      madePositive = true;
      f *= -1;
    }
    
    if(f > 0.95)
    {
      f = 100;
    }
    else if(f > 0.7)
    {
      f = 50;
    }
    else if(f > 0.4)
    {
      f = 10;
    }
    else if(f > 0.2)
    {
      f = 1;
    }
    else if(f > 0.1)
    {
      f = 0.1;
    }
    else if(f > 0.025)
    {
      f = 0.01;
    }
    else
    {
      f = 0; 
    }
    
    if(!madePositive)
    {
      f *= -1;
    }
    
    return f; 
  }
  
  boolean IsRandomness()
  {
    if(position.x < width/2)
    {
      return false;
    }
    else
    {
      return true; 
    }
  }
  
}
