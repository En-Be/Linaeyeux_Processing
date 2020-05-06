class ObjetHue extends Scale
{

  ObjetHue()
  {
    min = 0;
    max = 100;
  }
  
  void SendValue(Objet o)
  {
    o.hue = int(AdjustedValue());
  }
}
