class UIOpacity extends Scale
{
  UIOpacity()
  {
    label = "UI opacity";
    value = 100;
  }
  
  void Update()
  {
    Constraints();
    ui.opacity = value;
  }
}
