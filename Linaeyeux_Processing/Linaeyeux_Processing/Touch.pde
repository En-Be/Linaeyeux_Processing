class Touch
{
  int time;
  
  Touch()
  {
    
  }
  
  void Update()
  {
    time++;
    print("been touching for " + time + " frames");
    UpdateTarget();
  }
  
  void UpdateTarget()
  {
    if(touches.length == 1 && time > 15)
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
