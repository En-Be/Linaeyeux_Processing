class Objet
{
  PVector position;
  PVector velocity;
  PVector acceleration;
  PVector target;
  
  //boolean colourChosen = false;
  //color colour;
  float hue = 0;
  float saturation = 0;
  float brightness = 100;
  
  int size = 20;
  boolean randomTarget;
  
  Objet(int x, int y, PVector t)
  {
    position = new PVector(x, y);
    velocity = new PVector(0,0);
    acceleration = new PVector(0,0);
    target = new PVector(t.x, t.y);
    randomTarget = true;
  }
  
  // ----
  
  void Update()
  {
    if(!randomTarget)
    {
      //PVector targetPos = new PVector(target.x, target.y);
      //targetPos.sub(position);
      //targetPos.setMag(0.5);
      //followTarget(targetPos);
    }
    else
    {
      wander();
    }
    
    velocity.add(acceleration);
    velocity.limit(10);
    position.add(velocity); 

    Edges();
    Display();
    
  }
  
  void Display()
  {
    noStroke();
    fill(hue,saturation,brightness);
    ellipse(position.x, position.y, size, size);
  }
  
  // ----
  
  //void followTarget(PVector targetPos)
  //{
  //  acceleration = targetPos;
  //  if(!colourChosen)
  //  {
  //    colour = color(random(255),random(255),random(255));
  //    fill(colour);
  //    colourChosen = true;
  //  }
  //  else
  //  {
  //    fill(hue, saturation, brightness);
  //  }
  //}
  
  void wander()
  {
    acceleration = PVector.random2D();
    //colourChosen = false;
    fill(255);
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
  
  void Destroy()
  {
    objets.remove(this);
  }
}
