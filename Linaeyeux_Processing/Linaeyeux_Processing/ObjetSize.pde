class ObjetSize extends Scale
{
  
  ObjetSize()
  {
    label = "size";
    min = 20;
    max = 1000; 
  }
  
  void SendValue(Objet o)
  {
    o.size = int(AdjustedValue());
  }
}
