class ObjetPersistence
{
  int opacity = 50;
  
  int min = 0;
  int max = 100;
  
  ObjetPersistence()
  {
    
  }
  
  
  // ----
  
    
  void Update()
  {
    Display();
    //print("opacity = " + opacity);
  }
  
  void Display()
  {
    fill(0, opacity);
    rect(0, 0, width, height);
  }
 
 
  // ----
  
  
  void Up()
  {
    print("persistence up");
    opacity -= 10;
  }
  
  void Down()
  {
    print("persistence down");
    opacity += 10;

  }
  
  
  // ----
  
  
  void ConvertToScale(int percentage)
  {
    float range = (max - min) / 100.0;
    int convertedValue = int((percentage * range) + min);
    opacity = convertedValue;
  }
  
  int Value()
  {
    int range = max - min;
    float position;
    
    position = opacity - min;

    int value = int((position/range) * 100);
    //value = 100 - value; // Flip top and bottom
    return value;
  }
}
