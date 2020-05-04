class ToggleGrid
{
  int xCount;
  int yCount;
  int iconSize;
  int space;
  
  ArrayList<Toggle> toggles = new ArrayList<Toggle>();

  ToggleGrid()
  {
    xCount = 8;
    yCount = 3;
    iconSize = 80;
    space = 100;
    MakeGrid();
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
        print(toggles.indexOf(t));
        return true; 
      }
    }
    return false;
  }
}
