class ObjetFill extends Scale
{
  
  ObjetFill()
  {
    label = "fill";
    min = 0;
    max = 100;
    value = 100;
  }
  
  void SendValue(Objet o)
  {
    o.opacity = AdjustedValue();
  }
  
}
