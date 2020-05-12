class ObjetSize extends Scale
{
  
  ObjetSize()
  {
    label = "size";
    min = 10;
    max = 10500; 
  }
  
  void SendValue(Objet o)
  {
    o.size = AdjustedValue();
  }
  
}
