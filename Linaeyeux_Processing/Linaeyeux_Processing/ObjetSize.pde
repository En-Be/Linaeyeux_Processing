class ObjetSize extends Scale
{
  int shapeIndex;
  
  ObjetSize()
  {
    label = "size";
    min = 0;
    max = 1500; 
    value = 5;
    shapeIndex = 6;
    randomnessMax = max;
  }
  
  void SendValue(Objet o)
  {
    o.size = AdjustedValue();
  }
  
}
