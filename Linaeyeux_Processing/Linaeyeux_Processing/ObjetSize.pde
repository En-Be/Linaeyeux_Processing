class ObjetSize extends Scale
{
  
  ObjetSize()
  {
    min = 20;
    max = 1000; 
  }
  
  void SendValue(Objet o)
  {
    o.size = int(AdjustedValue());
  }
}
