class Objet
{
  PVector position;
  PVector velocity;
  PVector acceleration;
  PVector target;
  
  boolean colourChosen = false;
  color c;
  int minSize = 20;
  int maxSize = 1000;
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
    //print("target x:y = " + target.x + ":" + target.y);
    if(!randomTarget)
    {
      //print("this.target.x = " + target.x);
      PVector targetPos = new PVector(target.x, target.y);
      targetPos.sub(position);
      targetPos.setMag(0.5);
      followTarget(targetPos);
    }
    else
    {
      wander();
    }
    
    size = constrain(size, minSize, maxSize);

    velocity.add(acceleration);
    velocity.limit(10);
    position.add(velocity); 

    Edges();
    Display();
    
  }
  
  void Display()
  {
    noStroke();
    ellipse(position.x, position.y, size, size);
  }
  
  // ----
  
  void followTarget(PVector targetPos)
  {
    acceleration = targetPos;
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
  }
  
  void wander()
  {
    acceleration = PVector.random2D();
    colourChosen = false;
    fill(255);
  }
  
  void Edges()
  {
    if(position.x > width) position.x = 0;
    if(position.x < 0) position.x = width;
    if(position.y > height) position.y = 0;
    if(position.y < 0) position.y = height;
  }
}
