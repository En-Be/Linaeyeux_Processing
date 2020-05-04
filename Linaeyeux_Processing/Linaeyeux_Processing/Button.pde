
class Button
{
  PVector position;
  int size;
  boolean isBeingTouched = false;
  
  int min = 200;
  int max = height - 200;
  
  Button(int xPos)
  {
    position = new PVector(xPos, height/2);
    size = 150;
  }
  
  // ----
  
  void Update()
  {
    if(isBeingTouched)
    {
      //ObjetTargetRandom(false);
      position.y = constrain(mouseY, min, max);
    }
    else
    {
      //ObjetTargetRandom(true);
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
  
  void ConvertToScale(int percentage)
  {
    float range = (max - min) / 100.0;
    int convertedValue = int((percentage * range) + min);
    position.y = convertedValue;
  }
}
