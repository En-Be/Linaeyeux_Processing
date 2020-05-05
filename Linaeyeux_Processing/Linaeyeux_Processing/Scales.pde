class Scales
{

  ObjetSize objetSize;
  ObjetPersistence objetPersistence;
  ObjetSaturation objetSaturation;
  ObjetHue objetHue;
  
  int activeScale;
  
  Scales()
  {
    objetPersistence = new ObjetPersistence();
    objetSize = new ObjetSize();
    objetSaturation = new ObjetSaturation();
    objetHue = new ObjetHue();
    
    activeScale = 0;
  }
  
  void Update()
  {
    objetPersistence.Update();
    objetSize.Update();
    objetSaturation.Update();
    objetHue.Update();
  }
  
  void SetActive(int s)
  {
    activeScale = s;
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
      case 2:
        objetSaturation.Up();
        break;
      case 3:
        objetHue.Up();
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
      case 2:
        objetSaturation.Down();
        break;
      case 3:
        objetHue.Down();
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
      case 2:
        objetSaturation.RandomUp();
        break;    
      case 3:
        objetHue.RandomUp();
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
      case 2:
        objetSaturation.RandomDown();
        break;    
      case 3:
        objetHue.RandomDown();
        break;
      }
  }
  
  String Active()
  {
    switch(activeScale) 
    {
      case 0: 
        return("persistence");
      case 1: 
        return("size");
      case 2:
        return("saturation");
      case 3:
        return("hue");
      default:
        return("-");
    }
  }
  
  int ActiveValue()
  {
    switch(activeScale) 
    {
      case 0: 
        return(objetPersistence.opacity);
      case 1: 
        return(objetSize.size);
      case 2:
        return(objetSaturation.value);
      case 3:
        return int(objetHue.value);
      default:
        return(0);
    }
  }
  
  int ActiveValueRandomness()
  {
    switch(activeScale) 
    {
      case 0: 
        return(objetPersistence.randomness);
      case 1: 
        return(objetSize.randomness);
      case 2:
        return(objetSaturation.randomness);
      case 3:
        return(objetHue.randomness);
      default:
        return(0);
    }
  }
}
