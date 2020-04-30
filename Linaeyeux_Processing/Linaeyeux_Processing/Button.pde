
class Button
{
  PVector position;
  int size;
  
  Button()
  {
    position = new PVector(width/2, height/2 + 100);
    size = 100;
  }
  
  void Update()
  {
    if(overCircle(int(position.x), int(position.y), size))
    {
      print("over button");
      for(Objet o : objets)
      {
        o.randomTarget = false;
      }
    }
    
  }
  
  void Display()
  {
    stroke(10);
    fill(0, 255, 255);
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
