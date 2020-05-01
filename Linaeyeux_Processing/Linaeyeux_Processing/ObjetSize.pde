class ObjetSize
{
  int size;
  int minSize = 20;
  int maxSize = 1000;
  
  ObjetSize()
  {
    
  }
  
  void Update()
  {
    for(Objet o : objets)
    {
      o.size = size;
    }
  }
  
  void ConvertToScale(int percentage)
  {
    float range = (maxSize - minSize) / 100.0;
    print("range = " + range);
    int convertedValue = int((percentage * range) + minSize);
    print("converted value = " + convertedValue);
    size = convertedValue;
  }
}
