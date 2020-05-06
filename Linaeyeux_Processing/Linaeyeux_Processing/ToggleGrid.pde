class ToggleGrid
{
  int xCount;
  int yCount;
  int iconSize;
  int space;
  
  ArrayList<Toggle> toggles = new ArrayList<Toggle>();
  
  int activeToggle;
  
  ToggleGrid()
  {
    xCount = 4;
    yCount = 2;
    iconSize = 80;
    space = 100;
    MakeGrid();
    StartingToggle();
  }
  
  void Update()
  {
    Display();
  }
  
  void Display()
  {
           
    for(Toggle t : toggles)
    {
      t.Update();
    }
    
  }
  
  
  // ----
  
  
  void MakeGrid()
  {
    PVector position = new PVector(StartXPosition(), StartYPosition());
    
    for(int x = 0; x < xCount; x++)
    {
      position.y = StartYPosition();
      
      for(int y = 0; y < yCount; y++)
      {
        toggles.add(new Toggle(position, iconSize));
                        
        position.y -= space;

      }
      
      position.x += space;

    }
  }
  
  int StartXPosition()
  {
    return (width/2 - (xCount * (space / 2) - space / 2));
  }
  
  int StartYPosition()
  {
    return height - 200;
  }
  
  void StartingToggle()
  {
    Toggle t = toggles.get(0);
    t.TurnOn();
  }
  
  boolean CheckIfTouching()
  {
    for(Toggle t : toggles)
    {
      if(t.CheckIfTouching())
      {
        for(Toggle other : toggles)
        {
          other.TurnOff();
        }
        
        t.TurnOn();
        
        scales.SetActive(toggles.indexOf(t)); // add these to a queue to happen after draw in update?
        
        return true; 
      }
    }
    return false;
  }
}
