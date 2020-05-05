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
    //print(activeScale + " = " + leftValue);
    
    Switch();

    objetPersistence.Update();
    objetSize.Update();

  }
  
  void Switch()
  {
    switch(activeScale) 
    {
      case 0: 
        println("first scale active");
        objetPersistence.ConvertToScale(leftValue);

        break;
      case 1: 
        println("second scale active");
        objetSize.ConvertToScale(leftValue);
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
  
  void SetActive(int s)
  {
    activeScale = s;
  }
  
  int GetButtonPos(int s)
  {
    switch(s)
    {
      case 0:
        return objetPersistence.Value();
      case 1:
        return objetSize.Value();
      default:
         return 50;
    }
  }
}
