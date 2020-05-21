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
  }
  
}
