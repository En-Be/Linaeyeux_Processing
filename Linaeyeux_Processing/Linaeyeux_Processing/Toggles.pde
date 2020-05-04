class ToggleGrid
{
  int xCount;
  int yCount;
  int iconSize;
  
  ArrayList<Toggle> toggles = new ArrayList<Toggle>();

  ToggleGrid()
  {
    xCount = 4;
    yCount = 3;
    iconSize = 80;
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
  
  int StartXPosition()
  {
    return (width/2 - xCount * iconSize) + iconSize;
  }
  
  int StartYPosition()
  {
    return height - 200 - iconSize;
  }
  
  void MakeGrid()
  {
    PVector position = new PVector(StartXPosition(), StartYPosition());
    
    for(int x = 0; x < xCount; x++)
    {
      position.y = StartYPosition();
      
      for(int y = 0; y < yCount; y++)
      {
        toggles.add(new Toggle(position, iconSize));
                        
        position.y -= iconSize * 2;

      }
      
      position.x += iconSize * 2;

    }
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
        return true; 
      }
    }
    return false;
  }
}
