class ObjetSize extends Scale
{
  
  ObjetSize()
  {
    label = "size";
    min = 10;
    max = 1500; 
  }
  
  void SendValue(Objet o)
  {
    o.size = AdjustedValue();
    scales.scalesList.get(6).SetValue(AdjustedValue());
  }
  
}
