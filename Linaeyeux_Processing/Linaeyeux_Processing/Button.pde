
class Button
{
  PVector position;
  int size;
  
  Button()
  {
    position = new PVector(width/2, height/2 + 100);
    size = 200;
  }
  
  void Update()
  {
    if(overCircle(int(position.x), int(position.y), size))
    {
      for(Objet o : objets)
      {
        o.randomTarget = false;
      }
    }
  }
  
  void Display()
  {
    stroke(0);
    strokeWeight(10);
    noFill();
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
