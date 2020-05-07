class Objet
{
  PVector position;
  PVector velocity;
  float velocityLimit;
  PVector acceleration;
  PVector target;
  
  float hue = 0;
  float saturation = 0;
  float brightness = 100;
  
  float size = 20;
  
  Objet(int x, int y, PVector t)
  {
    position = new PVector(x, y);
    velocity = new PVector(0,0);
    acceleration = new PVector(0,0);
    target = new PVector(width/2, height/2);
  }
  
  // ----
  
  void Update()
  {
    Accelerate();
    Edges();
    Display();
    
  }
  
  void Display()
  {
    noStroke();
    fill(hue,saturation,brightness);
    ellipse(position.x, position.y, size, size);
  }
    
  void Accelerate()
  {
    velocity.add(acceleration);
    velocity.limit(velocityLimit);
    position.add(velocity); 
  }
  
  void Edges()
  {
    if(position.x > width) position.x = 0;
    if(position.x < 0) position.x = width;
    if(position.y > height) position.y = 0;
    if(position.y < 0) position.y = height;
  }
  
  boolean CheckIfTouching()
  {
    if(overCircle(int(position.x), int(position.y), int(size)))
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
  
  void Destroy()
  {
    objets.remove(this);
  }
}
