
class Button
{
  PVector position;
  int size;
  boolean isBeingTouched = false;
  
  Button()
  {
    position = new PVector(width/2, height/2);
    size = 200;
  }
  
  void CheckIfTouching()
  {
    if(overCircle(int(position.x), int(position.y), size))
    {
      isBeingTouched = true;
    }
    else
    {
      isBeingTouched = false;
    }
  }
  
  void Update()
  {
    if(isBeingTouched)
    {
      for(Objet o : objets)
      {
        o.randomTarget = false;
      }
      
      position.y = mouseY;
    }
    else
    {
      for(Objet o : objets)
      {
        o.randomTarget = true;
      }
    }
    position.y = constrain(position.y, 200, height - 200);
  }
  
  void Display()
  {
    stroke(255);
    strokeWeight(5);
    fill(0);
    circle(position.x, position.y, size);
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
