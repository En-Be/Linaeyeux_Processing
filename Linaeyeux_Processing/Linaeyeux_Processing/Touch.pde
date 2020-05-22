class Touch
{
  int time;
  boolean oneFinger;
  
  PVector middle = new PVector();
  float midX;
  float midY;
  
  Touch()
  {
    oneFinger = true;
  }
  
  void Update()
  {
    time++;
    print("been touching for " + time + " frames");
    UpdateTarget();
    
    if(touches.length > 1)
    {
      oneFinger = false;
      middle.x = (touches[0].x + touches[1].x)/2;
      middle.y = (touches[0].y + touches[1].y)/2;
      print(middle.x + "," + middle.y);
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
  
}
