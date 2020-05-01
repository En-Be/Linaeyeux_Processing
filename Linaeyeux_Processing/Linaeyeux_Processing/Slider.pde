class Slider
{
  Button button = new Button();
  int top;
  int bottom;
  
  ObjetSize objetSize = new ObjetSize();
  
  Slider()
  {
    top = 200;
    bottom = height - 200;
  }
  
  // ----
  
  void Update()
  {
    button.Update();
    ObjetSizeLink();
    ObjetPersistenceLink();
  }
  
  void Display()
  {
    stroke(255);
    strokeWeight(5);
    line(width/2, top, width/2, bottom);
    button.Display(); 
  }
  
  
  // ---- SCALE LINKS
  
  void ObjetPersistenceLink()
  {
    objetPersistence.ConvertToScale(Value());
    objetPersistence.Update();
  }
  void ObjetSizeLink()
  {
    objetSize.ConvertToScale(Value());
    objetSize.Update();
  }
  
  // ----
  
  
  void CheckIfTouching()
  {
    button.CheckIfTouching();
  }
  
  void StopTouching()
  {
    button.isBeingTouched = false;
  }
  
  int Value()
  {
    int range = bottom - top;
    float position = button.position.y - 200;
    int value = int((position/range) * 100);
    value = 100 - value; // Flip top and bottom
    //print("slider value = " + value);
    return value; 
  }
}
