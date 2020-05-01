class ObjetSize
{
  int value;
  int minSize = 20;
  int maxSize = 1000;
  
  ObjetSize()
  {
    
  }
  
  void Update()
  {

  }
  
  int ConvertToScale(int percentage)
  {
    float range = (maxSize - minSize) / 100.0;
    print("range = " + range);
    int convertedValue = int((percentage * range) + minSize);
    print("converted value = " + convertedValue);
    return 0;
  }
}
