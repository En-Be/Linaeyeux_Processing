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
    print(activeScale + " = " + leftValue);
    objetPersistence.Update();
    Switch();
  }
  
  void Switch()
  {
    switch(activeScale) 
    {
      case 0: 
        println("first scale active");
        objetPersistence.ConvertToScale(leftValue);
        objetPersistence.Update();
        break;
      case 1: 
        println("second scale active");
        objetSize.ConvertToScale(leftValue);
        objetSize.Update();
        break;
    }
  }
  
  void SetLeftValue(int v)
  {
    leftValue = v;
  }
  
  void SetRightValue(int v)
  {
    rightValue = v;
  }
}
