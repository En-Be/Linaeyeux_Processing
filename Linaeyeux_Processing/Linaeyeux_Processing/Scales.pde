class Scales
{

  ArrayList<Scale> scalesList = new ArrayList<Scale>();
  int activeScale;
  
  Scales()
  {
    scalesList.add(new ObjetPersistence());
    scalesList.add(new ObjetSize());
    scalesList.add(new ObjetSaturation());
    scalesList.add(new ObjetHue());
    
    activeScale = 0;
  }
  
  void Update()
  { 
    for(Scale s : scalesList)
    {
      s.Update();
    }
  }
  
  void SetActive(int s)
  {
    activeScale = s;
  }
  
  void Up()
  {
    if (scalesList.size() >= (activeScale + 1))
    {
      scalesList.get(activeScale).Up();
    }
  }
  
  void Down()
  {
    if (scalesList.size() >= (activeScale + 1))
    {
      scalesList.get(activeScale).Down();
    }
  }
  
  void RandomUp()
  {
    if (scalesList.size() >= (activeScale + 1))
    {
      scalesList.get(activeScale).RandomUp();
    }
  }
  
  void RandomDown()
  {
    if (scalesList.size() >= (activeScale + 1))
    {
      scalesList.get(activeScale).RandomDown();
    }
  }
  
  String Active()
  {
    if (scalesList.size() >= (activeScale + 1))
    {
      return scalesList.get(activeScale).label;
    }
    else
    {
      return "-"; 
    }
  }
  
  int ActiveValue()
  {
    if (scalesList.size() >= (activeScale + 1))
    {
      return scalesList.get(activeScale).value;
    }
    else
    {
      return 0;
    }
  }
  
  int ActiveValueRandomness()
  {
    if (scalesList.size() >= (activeScale + 1))
    {
      return scalesList.get(activeScale).randomness;
    }
    else
    {
      return 0;
    }
  }
}
