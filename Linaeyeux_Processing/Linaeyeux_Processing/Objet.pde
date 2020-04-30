class Objet
{
  PVector position;
  PVector velocity;
  PVector acceleration;
  
  boolean colourChosen = false;
  color c;
  int size = 5;
  boolean randomTarget;
  
  Objet(int x, int y)
  {
    position = new PVector(x, y);
    velocity = new PVector(0,0);
    acceleration = new PVector(0,0);
    randomTarget = true;
  }
  
  void Update()
  {
    PVector mouse = new PVector(mouseX, mouseY);
    mouse.sub(position);
    mouse.setMag(0.5);
    
    if(!randomTarget)
    {
      acceleration = mouse;
      if(!colourChosen)
      {
        c = color(random(255),random(255),random(255));
        fill(c);
        colourChosen = true;
      }
      else
      {
        fill(c);
      }
      if(size <= 1000)
      {
        size += 1;
      }
    }
    else
    {
      acceleration = PVector.random2D();
      colourChosen = false;
      fill(0);
      if(size >= 5)
      {
        size -= 10;
      }

    }
    
    velocity.add(acceleration);
    velocity.limit(10);
    position.add(velocity);
    
    constrain(size, 5, 1000);
    
    Edges();
    Display();
  }
  
  void Edges()
  {
    if(position.x > width) position.x = 0;
    if(position.x < 0) position.x = width;
    if(position.y > height) position.y = 0;
    if(position.y < 0) position.y = height;
  }
  
  void Display()
  {
    noStroke();
    ellipse(position.x, position.y, size, size);
  }
  
}
