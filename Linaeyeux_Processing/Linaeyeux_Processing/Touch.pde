class Touch
{
  int time;
  boolean oneFinger;
  
  PVector startMiddle = new PVector();
  
  float touchDistance;
  float startDistance;
  
  int distanceInterval;
  
  Touch()
  {
    oneFinger = true;
    distanceInterval = 200;
  }
  
  void Update()
  {
    time++;
    //print("been touching for " + time + " frames");
    UpdateTarget();
    
    if(touches.length > 1)
    {
      if(oneFinger)
      {
        touchDistance = CalculateDistance();
        startMiddle = CalculateMiddle();
      }
      oneFinger = false;
      UpdateMiddle();
      UpdateDistance();
    }

  }
  
  void UpdateTarget()
  {
    if(oneFinger && time > 15)
    {
      PVector target = new PVector(mouseX, mouseY);
      input.target = target;
      for(Objet o : objets)
      {
        o.target = target;
      }
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
