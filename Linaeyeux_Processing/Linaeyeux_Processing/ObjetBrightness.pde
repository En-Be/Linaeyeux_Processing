class ObjetBrightness extends Scale
{
  ObjetBrightness()
  {
    label = "brightness";
    min = 0;
    max = 100;
    value = 100;
  }
  
  void SendValue(Objet o)
  {
    o.brightness = AdjustedValue();
  }
}
