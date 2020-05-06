class ObjetSaturation extends Scale
{ 
  ObjetSaturation()
  {
    label = "saturation";
    min = 0;
    max = 100;
  }
  
  void SendValue(Objet o)
  {
    o.saturation = int(AdjustedValue());
  }
}
