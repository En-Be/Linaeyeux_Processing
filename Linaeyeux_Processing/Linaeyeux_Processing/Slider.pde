class Slider
{
  Button button = new Button();
  int top;
  int bottom;
  
  Slider()
  {
    top = 200;
    bottom = height - 200;
  }
  
  // ----
  
  void Update()
  {
    button.Update();
    Value();
  }
  
  void Display()
  {
    stroke(255);
    strokeWeight(5);
    line(width/2, top, width/2, bottom);
    button.Display(); 
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
    print("slider value = " + value);
    return value; 
  }
}
