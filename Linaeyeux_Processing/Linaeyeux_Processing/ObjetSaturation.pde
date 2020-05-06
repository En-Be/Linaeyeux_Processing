class ObjetSaturation extends Scale
{ 
  ObjetSaturation()
  {
    min = 0;
    max = 100;
  }
  
  void SendValue(Objet o)
  {
    o.saturation = int(AdjustedValue());
  }
}
