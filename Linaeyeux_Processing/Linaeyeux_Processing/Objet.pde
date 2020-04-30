class Objet
{
  PVector position;
  PVector velocity;
  PVector acceleration;
  
  boolean colourChosen = false;
  color c;
  int minSize = 20;
  int maxSize = 1000;
  int size = 20;
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
      followTarget(mouse);
    }
    else
    {
      wander();
    }
    
    velocity.add(acceleration);
    velocity.limit(10);
    position.add(velocity); 
    size = constrain(size, minSize, maxSize);

    Edges();
    Display();
    
  }
  
  void followTarget(PVector mouse)
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
    size += 1;
  }
  
  void wander()
  {
    acceleration = PVector.random2D();
    colourChosen = false;
    fill(255);
    size -= 10;
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
