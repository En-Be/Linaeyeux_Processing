class ObjetSize extends Scale
{
  
  ObjetSize()
  {
    label = "size";
    min = 10;
    max = 1000; 
  }
  
  void SendValue(Objet o)
  {
    o.size = AdjustedValue();
  }
  
}
