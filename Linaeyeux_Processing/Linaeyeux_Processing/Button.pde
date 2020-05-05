
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
      CheckIncrement();
    }
    else
    {
      position.y = restPosition.y;
    }
  }
  
  void Display()
  {
    stroke(255);
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
  
  void CheckIncrement()
  {
    if(position.y < restPosition.y)
    {
      print("incremented up");
      scales.Up();
    }
    else
    {
      print("incremented down");
      scales.Down();
    }
  }
}
