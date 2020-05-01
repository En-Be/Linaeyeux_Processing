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
    //opacity = constrain(opacity, 0, 255);
    Display();
  }
  
  void Display()
  {
    fill(0, opacity);
    rect(0, 0, width, height);
  }
 
  // ----
  
  void Up()
  {
    opacity--;
  }
  
  void Down()
  {
    opacity++;
  }
  
  void ConvertToScale(int percentage)
  {
    float range = (max - min) / 100.0;
    //print("range = " + range);
    int convertedValue = int((percentage * range) + min);
    //print("converted value = " + convertedValue);
    opacity = convertedValue;
  }
}
