class ObjetHue extends Scale
{

  ObjetHue()
  {
    label = "hue";
    min = 0;
    max = 100;
  }
  
  void SendValue(Objet o)
  {
    o.hue = int(AdjustedValue());
  }
}
