class Touch
{
  int time;
  boolean oneFinger;
  
  PVector middle = new PVector();
  float startMiddle;
  
  float touchDistance;
  float startDistance;
  
  int distanceInterval;
  
  Touch()
  {
    oneFinger = true;
    startMiddle = 0;
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
    middle.x = (touches[0].x + touches[1].x)/2;
    middle.y = (touches[0].y + touches[1].y)/2;
  }
  
  void UpdateDistance()
  {
    float newDistance = CalculateDistance();
    if(newDistance > touchDistance + distanceInterval)
    {
      touchDistance = newDistance;
      print("distance has stepped up one");
    }
    else if(newDistance < touchDistance - distanceInterval)
    {
      touchDistance = newDistance;
      print("distance has stepped down one");
    }
  }
  
  float CalculateDistance()
  {
    PVector first = new PVector(touches[0].x,touches[0].y);
    PVector second = new PVector(touches[1].x,touches[1].y);
    return first.dist(second);
  }
  
}
