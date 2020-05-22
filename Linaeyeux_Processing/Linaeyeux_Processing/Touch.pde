class Touch
{
  int time;
  int mostFingers;
  
  PVector startMiddle = new PVector();
  
  float touchDistance;
  float startDistance;
  
  int distanceInterval;
  
  Touch()
  {
    mostFingers = 1;
    distanceInterval = 200;
  }
  
  void Update()
  {
    time++;
    
    if(mostFingers == 1 && touches.length == 1 && time > 25)
    {
      UpdateTarget();
    }
    
    if(touches.length > mostFingers)
    {
      touchDistance = CalculateDistance();
      startMiddle = CalculateMiddle();
      mostFingers = touches.length;
    }
    else if(touches.length == mostFingers && mostFingers > 1)
    {
      UpdateMiddle();
      UpdateDistance();
    }

  }
  
  void UpdateTarget()
  {
    PVector target = new PVector(mouseX, mouseY);
    input.target = target;
    for(Objet o : objets)
    {
      o.target = target;
    }
  }
  
  void UpdateMiddle()
  {
    scales.ChangeValue(IncrementAmount(CalculateMiddle()));
  }
  
  PVector CalculateMiddle()
  {
    PVector newMiddle = new PVector();
    newMiddle.x = (touches[0].x + touches[1].x)/2;
    newMiddle.y = (touches[0].y + touches[1].y)/2;
    return newMiddle;
  }
  
  void UpdateDistance()
  {
    float newDistance = CalculateDistance();
    if(newDistance > touchDistance + distanceInterval)
    {
      touchDistance = newDistance;
      scales.Up();
    }
    else if(newDistance < touchDistance - distanceInterval)
    {
      touchDistance = newDistance;
      scales.Down();
    }
  }
  
  float CalculateDistance()
  {
    PVector first = new PVector(touches[0].x,touches[0].y);
    PVector second = new PVector(touches[1].x,touches[1].y);
    return first.dist(second);
  }
 
  float IncrementAmount(PVector newMiddle)
  {
    float f = newMiddle.y - startMiddle.y;
    
    boolean madePositive = false;
    
    f = norm(f, 0, height/2);
    
    if(f < 0)
    {
      madePositive = true;
      f *= -1;
    }
    
    if(f > 0.95)
    {
      f = 100;
    }
    else if(f > 0.7)
    {
      f = 50;
    }
    else if(f > 0.4)
    {
      f = 10;
    }
    else if(f > 0.2)
    {
      f = 1;
    }
    else if(f > 0.1)
    {
      f = 0.1;
    }
    else if(f > 0.025)
    {
      f = 0.01;
    }
    else
    {
      f = 0; 
    }
    
    if(!madePositive)
    {
      f *= -1;
    }
    
    return f; 
  }
  
}
