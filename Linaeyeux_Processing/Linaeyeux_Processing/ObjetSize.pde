class ObjetSize
{
  int size;
  int min = 20;
  int max = 1000;
  
  ObjetSize()
  {
    size = 30;
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
    float range = (max - min) / 100.0;
    int convertedValue = int((percentage * range) + min);
    size = convertedValue;
  }
  
  int Value()
  {
    int range = max - min;
    float position;
    
    position = size - min;

    int value = int((position/range) * 100);
    //value = 100 - value; // Flip top and bottom
    return value;
  }
}
