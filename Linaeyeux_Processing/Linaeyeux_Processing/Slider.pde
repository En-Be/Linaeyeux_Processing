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
  
  void CheckIfTouching()
  {
    button.CheckIfTouching();
  }
  
  void StopTouching()
  {
    button.isBeingTouched = false;
  }
  
  void Update()
  {
    button.Update();
  }
  
  void Display()
  {
    stroke(255);
    strokeWeight(5);
    line(width/2, top, width/2, bottom);
    button.Display(); 
  }
}
