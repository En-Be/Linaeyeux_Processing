class ObjetPersistence
{
  int opacity = 255;
  
  int min = 0;
  int max = 100;
  
  ObjetPersistence()
  {
    
  }
  
  
  // ----
  
    
  void Update()
  {
    Display();
    print(opacity);
  }
  
  void Display()
  {
    fill(0, opacity);
    rect(0, 0, width, height);
  }
 
 
  // ----
  
  
  void ConvertToScale(int percentage)
  {
    float range = (max - min) / 100.0;
    //print("range = " + range);
    int convertedValue = int((percentage * range) + min);
    //print("converted value = " + convertedValue);
    opacity = convertedValue;
  }
}
