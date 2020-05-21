class Touch
{
  int time;
  boolean oneFinger;
  
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
