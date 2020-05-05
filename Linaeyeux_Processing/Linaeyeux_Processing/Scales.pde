class Scales
{
  int leftValue;
  int rightValue;
  
  ObjetSize objetSize;
  ObjetPersistence objetPersistence;
  
  int activeScale;
  
  Scales()
  {
    objetPersistence = new ObjetPersistence();
    objetSize = new ObjetSize();
    
    activeScale = 0;
    leftValue = 50;
    rightValue = 50;
  }
  
  void Update()
  {
    objetPersistence.Update();
    objetSize.Update();
  }
  
  void Up()
  {
    switch(activeScale) 
    {
      case 0: 
        objetPersistence.Up();
        break;
      case 1: 
        objetSize.Up();
        break;
    }
  }
  
  void Down()
  {
    switch(activeScale) 
    {
      case 0: 
        objetPersistence.Down();
        break;
      case 1: 
        objetSize.Down();
        break;
    }
  }
  
  void RandomUp()
  {
    switch(activeScale) 
    {
      case 0: 
        objetPersistence.RandomUp();
        break;
      case 1: 
        objetSize.RandomUp();
        break;
    }
  }
  
  void RandomDown()
  {
    switch(activeScale) 
    {
      case 0: 
        objetPersistence.RandomDown();
        break;
      case 1: 
        objetSize.RandomDown();
        break;
    }
  }
  
  void SetActive(int s)
  {
    activeScale = s;
  }
  
  String Active()
  {
    switch(activeScale) 
    {
      case 0: 
        return("persistence");
      case 1: 
        return("size");
      default:
        return("-");
    }
  }
}
