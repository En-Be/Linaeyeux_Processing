class ObjetSize extends Scale
{
  
  ObjetSize()
  {
    label = "size";
    min = 0;
    max = 1500; 
    value = 5;
  }
  
  void SendValue(Objet o)
  {
    o.size = AdjustedValue();
    scales.scalesList.get(6).SetValue(AdjustedValue());
  }
  
}
